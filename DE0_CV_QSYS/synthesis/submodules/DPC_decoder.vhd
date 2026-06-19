library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- DÃ©codeur de ParitÃ© CroisÃ©e 7x7 + paritÃ©s (matrice reÃ§ue 8x8)
-- Interface registres Avalon simple :
--   Addr = 0 : DPCStatus  (lecture)
--   Addr = 1 : DPCControl (lecture/Ã©criture)
--   Addr = 2 : DPCDataIn  (Ã©criture) / DPCDataOut (lecture)

entity DPC_decoder is
  port (
    Clk       : in  std_logic;
    Reset_n   : in  std_logic;

    D_in      : in  std_logic_vector(7 downto 0);
    Wr        : in  std_logic;
    Rd        : in  std_logic;
    Addr      : in  std_logic_vector(1 downto 0);
    D_out     : out std_logic_vector(7 downto 0);
    Irq_DPC_n : out std_logic
  );
end entity DPC_decoder;

architecture rtl of DPC_decoder is

  component FIFO_nMots_mBits is
    generic (
      DATA_WIDTH : integer := 8;
      FIFO_SIZE  : integer := 3
    );
    port (
      Horloge   : in  std_logic;
      initFifo  : in  std_logic;
      WrFifo    : in  std_logic;
      RdFifo    : in  std_logic;
      DataIn    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
      DataOut   : out std_logic_vector(DATA_WIDTH-1 downto 0);
      FifoLevel : out std_logic_vector(FIFO_SIZE downto 0);
      FifoEmpty : out std_logic;
      FifoFull  : out std_logic
    );
  end component;

  constant C_ADDR_STATUS  : std_logic_vector(1 downto 0) := "00";
  constant C_ADDR_CONTROL : std_logic_vector(1 downto 0) := "01";
  constant C_ADDR_DATA    : std_logic_vector(1 downto 0) := "10";

  -- Error/Corr/Done 
  constant C_STATUS_DONE  : integer := 5;
  constant C_STATUS_CORR  : integer := 6;
  constant C_STATUS_ERROR : integer := 7;
  constant C_CTRL_DECOD   : integer := 0;
  constant C_CTRL_IRQEN   : integer := 5;

  type t_state is (S_IDLE, S_LOAD_BUFFER, S_ANALYSE, S_CORR, S_LOAD_DATA, S_ERROR, S_DONE);
  signal state, next_state : t_state;

  type t_matrix is array (0 to 7) of std_logic_vector(7 downto 0);
  signal buffer_8x8 : t_matrix := (others => (others => '0'));

  signal dpc_control : std_logic_vector(7 downto 0) := (others => '0');
  signal dpc_status  : std_logic_vector(7 downto 0) := (others => '0');

  signal load_cnt  : integer range 0 to 8 := 0;
  signal write_cnt : integer range 0 to 7 := 0;

  -- FIFO d'entree
  signal in_fifo_dout  : std_logic_vector(7 downto 0);
  signal in_fifo_level : std_logic_vector(3 downto 0);
  signal in_fifo_empty : std_logic;
  signal in_fifo_full  : std_logic;
  signal in_fifo_wr    : std_logic;
  signal in_fifo_rd    : std_logic;
  signal in_fifo_init  : std_logic;

  -- FIFO de sortie
  signal out_fifo_din   : std_logic_vector(7 downto 0);
  signal out_fifo_dout  : std_logic_vector(7 downto 0);
  signal out_fifo_level : std_logic_vector(3 downto 0);
  signal out_fifo_empty : std_logic;
  signal out_fifo_full  : std_logic;
  signal out_fifo_wr    : std_logic;
  signal out_fifo_rd    : std_logic;
  signal out_fifo_init  : std_logic;

  -- Signaux combinatoires d'analyse
  signal vpl_r,   vpc_r   : std_logic_vector(6 downto 0);
  signal vpl_cal, vpc_cal : std_logic_vector(6 downto 0);
  signal err_l, err_c     : std_logic_vector(6 downto 0);
  signal plm_r, plm_cal   : std_logic;
  signal err_g            : std_logic;
  signal nb_err_l         : integer range 0 to 7;
  signal nb_err_c         : integer range 0 to 7;
  signal idx_l            : integer range 0 to 6;
  signal idx_c            : integer range 0 to 6;
  signal accept_raw       : std_logic;
  signal corr_en          : std_logic;
  signal err_en           : std_logic;

  function xor_reduce(v : std_logic_vector) return std_logic is
    variable r : std_logic := '0';
  begin
    for i in v'range loop
      r := r xor v(i);
    end loop;
    return r;
  end function;

  function count_ones(v : std_logic_vector) return integer is
    variable c : integer := 0;
  begin
    for i in v'range loop
      if v(i) = '1' then
        c := c + 1;
      end if;
    end loop;
    return c;
  end function;

  function first_one(v : std_logic_vector(6 downto 0)) return integer is
    variable p : integer range 0 to 6 := 0;
  begin
    for i in 0 to 6 loop
      if v(i) = '1' then
        p := i;
      end if;
    end loop;
    return p;
  end function;

begin

  ---------------------------------------------------------------------------
  -- FIFO entree : remplie par le processeur via DPCDataIn, lue par la FSM
  ---------------------------------------------------------------------------
  u_fifo_in : FIFO_nMots_mBits
    generic map (DATA_WIDTH => 8, FIFO_SIZE => 3)
    port map (
      Horloge   => Clk,
      initFifo  => in_fifo_init,
      WrFifo    => in_fifo_wr,
      RdFifo    => in_fifo_rd,
      DataIn    => D_in,
      DataOut   => in_fifo_dout,
      FifoLevel => in_fifo_level,
      FifoEmpty => in_fifo_empty,
      FifoFull  => in_fifo_full
    );

  ---------------------------------------------------------------------------
  -- FIFO sortie : remplie par la FSM apres decodage, lue par le processeur
  ---------------------------------------------------------------------------
  u_fifo_out : FIFO_nMots_mBits
    generic map (DATA_WIDTH => 8, FIFO_SIZE => 3)
    port map (
      Horloge   => Clk,
      initFifo  => out_fifo_init,
      WrFifo    => out_fifo_wr,
      RdFifo    => out_fifo_rd,
      DataIn    => out_fifo_din,
      DataOut   => out_fifo_dout,
      FifoLevel => out_fifo_level,
      FifoEmpty => out_fifo_empty,
      FifoFull  => out_fifo_full
    );

  -- Acces FIFO depuis Avalon
  in_fifo_wr  <= '1' when (Wr = '1' and Addr = C_ADDR_DATA and state = S_IDLE) else '0';
  out_fifo_rd <= '1' when (Rd = '1' and Addr = C_ADDR_DATA and out_fifo_empty = '0') else '0';

  ---------------------------------------------------------------------------
  -- Lecture registres
  ---------------------------------------------------------------------------
  process(Addr, dpc_status, dpc_control, out_fifo_dout)
  begin
    case Addr is
      when C_ADDR_STATUS  => D_out <= dpc_status;
      when C_ADDR_CONTROL => D_out <= dpc_control;
      when C_ADDR_DATA    => D_out <= out_fifo_dout;
      when others         => D_out <= (others => '0');
    end case;
  end process;

  Irq_DPC_n <= '0' when (dpc_control(C_CTRL_IRQEN) = '1' and dpc_status(C_STATUS_DONE) = '1') else '1';

  ---------------------------------------------------------------------------
  -- Analyse combinatoire : recalcul par XOR, comparaison, dÃ©cision
  ---------------------------------------------------------------------------
  process(buffer_8x8, vpl_r, vpc_r, vpl_cal, vpc_cal, err_l, err_c, plm_r, plm_cal, nb_err_l, nb_err_c, err_g)
    variable tmp_vpl : std_logic_vector(6 downto 0);
    variable tmp_vpc : std_logic_vector(6 downto 0);
    variable tmp_r_l : std_logic_vector(6 downto 0);
    variable tmp_r_c : std_logic_vector(6 downto 0);
  begin
    -- Bits de parite : derniere colonne et derniere ligne
    for i in 0 to 6 loop
      tmp_r_l(i) := buffer_8x8(i)(7);
      tmp_r_c(i) := buffer_8x8(7)(i);
    end loop;

    -- Parites recalculees sur les 7x7 bits utiles
    for i in 0 to 6 loop
      tmp_vpl(i) := xor_reduce(buffer_8x8(i)(6 downto 0));
    end loop;

    for j in 0 to 6 loop
      tmp_vpc(j) := buffer_8x8(0)(j) xor buffer_8x8(1)(j) xor buffer_8x8(2)(j) xor
                    buffer_8x8(3)(j) xor buffer_8x8(4)(j) xor buffer_8x8(5)(j) xor
                    buffer_8x8(6)(j);
    end loop;

    vpl_r   <= tmp_r_l;
    vpc_r   <= tmp_r_c;
    vpl_cal <= tmp_vpl;
    vpc_cal <= tmp_vpc;

    plm_r   <= buffer_8x8(7)(7);
    plm_cal <= xor_reduce(tmp_r_l & tmp_r_c);

    err_l <= tmp_vpl xor tmp_r_l;
    err_c <= tmp_vpc xor tmp_r_c;
    err_g <= xor_reduce(tmp_r_l & tmp_r_c) xor buffer_8x8(7)(7);

    nb_err_l <= count_ones(tmp_vpl xor tmp_r_l);
    nb_err_c <= count_ones(tmp_vpc xor tmp_r_c);
    idx_l    <= first_one(tmp_vpl xor tmp_r_l);
    idx_c    <= first_one(tmp_vpc xor tmp_r_c);

    accept_raw <= '0';
    corr_en    <= '0';
    err_en     <= '0';

    -- Cas 1 : aucune erreur detecte
    if ((count_ones(tmp_vpl xor tmp_r_l) = 0) and
        (count_ones(tmp_vpc xor tmp_r_c) = 0) and
        ((xor_reduce(tmp_r_l & tmp_r_c) xor buffer_8x8(7)(7)) = '0')) then
      accept_raw <= '1';

    -- Cas 2 : un bit utile faux, localise par une ligne et une colonne
    elsif ((count_ones(tmp_vpl xor tmp_r_l) = 1) and
           (count_ones(tmp_vpc xor tmp_r_c) = 1) and
           ((xor_reduce(tmp_r_l & tmp_r_c) xor buffer_8x8(7)(7)) = '0')) then
      corr_en <= '1';

    -- Cas 3 : erreur sur bit de parite uniquement, donnees utiles acceptes telles quelles
    elsif (((count_ones(tmp_vpl xor tmp_r_l) + count_ones(tmp_vpc xor tmp_r_c)) <= 1) and
           ((xor_reduce(tmp_r_l & tmp_r_c) xor buffer_8x8(7)(7)) = '1')) then
      accept_raw <= '1';

    -- Tous les autres cas : erreur non corrigeable
    else
      err_en <= '1';
    end if;
  end process;

  ---------------------------------------------------------------------------
  -- FSM sequentielle
  ---------------------------------------------------------------------------
  process(Clk, Reset_n)
  begin
    if Reset_n = '0' then
      state       <= S_IDLE;
      dpc_control <= (others => '0');
      dpc_status  <= (others => '0');
      buffer_8x8  <= (others => (others => '0'));
      load_cnt    <= 0;
      write_cnt   <= 0;

    elsif rising_edge(Clk) then
      state <= next_state;

      -- Ã‰criture du registre de cont?´le par Avalon
      if (Wr = '1' and Addr = C_ADDR_CONTROL) then
        dpc_control(C_CTRL_DECOD) <= D_in(C_CTRL_DECOD);
        dpc_control(C_CTRL_IRQEN) <= D_in(C_CTRL_IRQEN);
      end if;

      -- Lecture du status : effacement de Done/Corr/Error
      if (Rd = '1' and Addr = C_ADDR_STATUS) then
        dpc_status(C_STATUS_DONE)  <= '0';
        dpc_status(C_STATUS_CORR)  <= '0';
        dpc_status(C_STATUS_ERROR) <= '0';
      end if;

      case state is
        when S_IDLE =>
          load_cnt  <= 0;
          write_cnt <= 0;
          -- Nouveau traitement : on efface les anciens flags
          if (dpc_control(C_CTRL_DECOD) = '1' and in_fifo_full = '1') then
            dpc_status(C_STATUS_DONE)  <= '0';
            dpc_status(C_STATUS_CORR)  <= '0';
            dpc_status(C_STATUS_ERROR) <= '0';
          end if;

        when S_LOAD_BUFFER =>
          -- DataOut de la FIFO est toujours visible : on capture la tÃªte puis RdFifo dÃ©cale.
          if load_cnt < 8 then
            buffer_8x8(load_cnt) <= in_fifo_dout;
            load_cnt <= load_cnt + 1;
          end if;

        when S_ANALYSE =>
          null;

        when S_CORR =>
          -- Correction du bit utile a  l'intersection ligne/colonne erronÃ©e
          buffer_8x8(idx_l)(idx_c) <= not buffer_8x8(idx_l)(idx_c);
          dpc_status(C_STATUS_CORR) <= '1';

        when S_LOAD_DATA =>
          -- On ne renvoie que les 7 lignes de donnÃ©es utiles.
          if write_cnt < 7 then
            write_cnt <= write_cnt + 1;
          end if;

        when S_ERROR =>
          dpc_status(C_STATUS_ERROR) <= '1';

        when S_DONE =>
          dpc_status(C_STATUS_DONE) <= '1';
          dpc_control(C_CTRL_DECOD) <= '0'; -- fin de traitement : Decod remis Ã  0

        when others =>
          null;
      end case;
    end if;
  end process;

  ---------------------------------------------------------------------------
  -- FSM combinatoire + commandes FIFO
  ---------------------------------------------------------------------------
  process(state, dpc_control, in_fifo_full, load_cnt, write_cnt, accept_raw, corr_en, err_en,
          buffer_8x8, out_fifo_full)
  begin
    next_state    <= state;
    in_fifo_rd    <= '0';
    in_fifo_init  <= '0';
    out_fifo_wr   <= '0';
    out_fifo_init <= '0';
    out_fifo_din  <= (others => '0');

    case state is
      when S_IDLE =>
        -- On attend Decod=1 ET FIFO pleine (8 mots charges par l'utilisateur)
        if (dpc_control(C_CTRL_DECOD) = '1' and in_fifo_full = '1') then
          out_fifo_init <= '1'; -- on vide l'ancienne FIFO de sortie
          next_state    <= S_LOAD_BUFFER;
        end if;

      when S_LOAD_BUFFER =>
        in_fifo_rd <= '1';
        if load_cnt = 7 then
          next_state <= S_ANALYSE;
        end if;

      when S_ANALYSE =>
        if accept_raw = '1' then
          next_state <= S_LOAD_DATA;
        elsif corr_en = '1' then
          next_state <= S_CORR;
        elsif err_en = '1' then
          next_state <= S_ERROR;
        else
          next_state <= S_ERROR;
        end if;

      when S_CORR =>
        next_state <= S_LOAD_DATA;

      when S_LOAD_DATA =>
        if out_fifo_full = '0' then
          out_fifo_wr  <= '1';
          out_fifo_din <= buffer_8x8(write_cnt);
        end if;

        if write_cnt = 7 then
          next_state <= S_DONE;
        end if;

      when S_ERROR =>
        -- Erreur non corrigeable : aucune donnee n'est envoyee en sortie.
        out_fifo_init <= '1';
        next_state    <= S_DONE;

      when S_DONE =>
        -- La FIFO d'entrée a été vidée par les 8 lectures de LOAD_BUFFER.
        -- Retour IDLE ; Done reste à 1 jusqu'à lecture du status.us.
        next_state <= S_IDLE;

      when others =>
        next_state <= S_IDLE;
    end case;
  end process;

end architecture rtl;
