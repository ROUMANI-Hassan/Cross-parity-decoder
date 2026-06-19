# ================================================================
# test_DPC_extreme_errors.do
# Test ModelSim/Questa pour DPC_decoder.vhd + FIFO_nMots_mBits.vhd
# Objectif : tester les cas limites / erreurs :
#   - FIFO vide + Decod
#   - double erreur utile non corrigeable
#   - plusieurs erreurs
#   - erreur bit global p[7,7]
#   - lecture FIFO sortie vide apres erreur
# ================================================================

transcript on

# Nettoyage + compilation
if {[file exists work]} { vdel -lib work -all }
vlib work
vmap work work

vcom -2008 "FIFO_nMots_mBits.vhd"
vcom -2008 "DPC_decoder.vhd"

vsim -voptargs=+acc work.DPC_decoder

# ================================================================
# AFFICHAGE DES SIGNAUX AVEC DIVIDERS
# ================================================================
quietly WaveActivateNextPane {} 0

add wave -divider "===== INTERFACE AVALON / REGISTRES ====="
add wave -radix binary  sim:/DPC_decoder/Clk
add wave -radix binary  sim:/DPC_decoder/Reset_n
add wave -radix binary  sim:/DPC_decoder/Wr
add wave -radix binary  sim:/DPC_decoder/Rd
add wave -radix unsigned sim:/DPC_decoder/Addr
add wave -radix hex     sim:/DPC_decoder/D_in
add wave -radix hex     sim:/DPC_decoder/D_out
add wave -radix binary  sim:/DPC_decoder/Irq_DPC_n
add wave -radix binary  sim:/DPC_decoder/dpc_control
add wave -radix binary  sim:/DPC_decoder/dpc_status

add wave -divider "===== FSM / COMPTEURS ====="
add wave -radix symbolic sim:/DPC_decoder/state
add wave -radix symbolic sim:/DPC_decoder/next_state
add wave -radix unsigned sim:/DPC_decoder/load_cnt
add wave -radix unsigned sim:/DPC_decoder/write_cnt

add wave -divider "===== FIFO ENTREE ====="
add wave -radix hex      sim:/DPC_decoder/u_fifo_in/Fifo
add wave -radix hex      sim:/DPC_decoder/in_fifo_dout
add wave -radix unsigned sim:/DPC_decoder/in_fifo_level
add wave -radix binary   sim:/DPC_decoder/in_fifo_empty
add wave -radix binary   sim:/DPC_decoder/in_fifo_full
add wave -radix binary   sim:/DPC_decoder/in_fifo_wr
add wave -radix binary   sim:/DPC_decoder/in_fifo_rd
add wave -radix binary   sim:/DPC_decoder/in_fifo_init

add wave -divider "===== BUFFER 8x8 ====="
add wave -radix hex sim:/DPC_decoder/buffer_8x8
add wave -radix hex sim:/DPC_decoder/buffer_8x8(0)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(1)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(2)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(3)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(4)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(5)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(6)
add wave -radix hex sim:/DPC_decoder/buffer_8x8(7)

add wave -divider "===== ANALYSE PARITE ====="
add wave -radix binary   sim:/DPC_decoder/vpl_r
add wave -radix binary   sim:/DPC_decoder/vpl_cal
add wave -radix binary   sim:/DPC_decoder/vpc_r
add wave -radix binary   sim:/DPC_decoder/vpc_cal
add wave -radix binary   sim:/DPC_decoder/plm_r
add wave -radix binary   sim:/DPC_decoder/plm_cal
add wave -radix binary   sim:/DPC_decoder/err_l
add wave -radix binary   sim:/DPC_decoder/err_c
add wave -radix binary   sim:/DPC_decoder/err_g
add wave -radix unsigned sim:/DPC_decoder/nb_err_l
add wave -radix unsigned sim:/DPC_decoder/nb_err_c
add wave -radix unsigned sim:/DPC_decoder/idx_l
add wave -radix unsigned sim:/DPC_decoder/idx_c

add wave -divider "===== DECISION COMBINATOIRE ====="
add wave -radix binary sim:/DPC_decoder/accept_raw
add wave -radix binary sim:/DPC_decoder/corr_en
add wave -radix binary sim:/DPC_decoder/err_en

add wave -divider "===== FIFO SORTIE ====="
add wave -radix hex      sim:/DPC_decoder/out_fifo_din
add wave -radix hex      sim:/DPC_decoder/out_fifo_dout
add wave -radix unsigned sim:/DPC_decoder/out_fifo_level
add wave -radix binary   sim:/DPC_decoder/out_fifo_empty
add wave -radix binary   sim:/DPC_decoder/out_fifo_full
add wave -radix binary   sim:/DPC_decoder/out_fifo_wr
add wave -radix binary   sim:/DPC_decoder/out_fifo_rd
add wave -radix binary   sim:/DPC_decoder/out_fifo_init
add wave -radix hex      sim:/DPC_decoder/u_fifo_out/Fifo

configure wave -namecolwidth 260
configure wave -valuecolwidth 120
configure wave -justifyvalue left

# ================================================================
# HORLOGE + PROCEDURES
# ================================================================
force -freeze sim:/DPC_decoder/Clk 0 0 ns, 1 20 ns -repeat 40 ns

proc init_inputs {} {
    force sim:/DPC_decoder/Wr      0
    force sim:/DPC_decoder/Rd      0
    force sim:/DPC_decoder/Addr    00
    force sim:/DPC_decoder/D_in    16#00
}

proc reset_dut {} {
    echo "\n--- RESET DUT ---"
    force sim:/DPC_decoder/Reset_n 0
    init_inputs
    run 100 ns
    force sim:/DPC_decoder/Reset_n 1
    run 80 ns
}

proc write_reg {addr data comment} {
    echo [format "WRITE Addr=%s Data=0x%s  %s" $addr $data $comment]
    force sim:/DPC_decoder/Addr $addr
    force sim:/DPC_decoder/D_in 16#$data
    force sim:/DPC_decoder/Wr 1
    run 40 ns
    force sim:/DPC_decoder/Wr 0
    run 40 ns
}

proc read_reg {addr comment} {
    echo [format "READ  Addr=%s  %s" $addr $comment]
    force sim:/DPC_decoder/Addr $addr
    force sim:/DPC_decoder/Rd 1
    run 40 ns
    force sim:/DPC_decoder/Rd 0
    run 40 ns
}

proc write_matrix {m0 m1 m2 m3 m4 m5 m6 m7} {
    write_reg 10 $m0 "ligne 0"
    write_reg 10 $m1 "ligne 1"
    write_reg 10 $m2 "ligne 2"
    write_reg 10 $m3 "ligne 3"
    write_reg 10 $m4 "ligne 4"
    write_reg 10 $m5 "ligne 5"
    write_reg 10 $m6 "ligne 6"
    write_reg 10 $m7 "ligne 7 = parite colonnes + globale"
}

proc launch_decode {} {
    write_reg 01 21 "DPCControl : IrqEn=1, Decod=1"
    run 1000 ns
    read_reg 00 "lecture DPCStatus"
    run 120 ns
}

proc read_output_fifo_8 {} {
    echo "Lecture des 8 mots dans DPCDataOut"
    read_reg 10 "data out 0"
    read_reg 10 "data out 1"
    read_reg 10 "data out 2"
    read_reg 10 "data out 3"
    read_reg 10 "data out 4"
    read_reg 10 "data out 5"
    read_reg 10 "data out 6"
    read_reg 10 "data out 7"
    run 120 ns
}

# ================================================================
# MATRICE DE REFERENCE SANS ERREUR
# 55 33 71 8E CC AA 17 68
# ================================================================

# ------------------------------------------------
# TEST 1 : FIFO vide + Decod
# Attendu : FSM reste IDLE ou ne passe pas LOAD_BUFFER
# Status attendu : Error=0 Corr=0 Done=0
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 1 : FIFO VIDE + DECOD ====="
echo "\n================ TEST 1 : FIFO VIDE + DECOD ================"
launch_decode
read_reg 00 "Status attendu : 000000"

# ------------------------------------------------
# TEST 2 : double erreur utile non corrigeable
# 33 -> 32 et 71 -> 79
# Attendu : err_en=1, Error=1, Corr=0, Done=1
# FIFO sortie vide ou non remplie
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 2 : DOUBLE ERREUR UTILE NON CORRIGEABLE ====="
echo "\n================ TEST 2 : DOUBLE ERREUR UTILE ================"
write_matrix 55 32 79 8E CC AA 17 68
launch_decode
read_reg 10 "tentative lecture DPCDataOut : normalement FIFO sortie vide"

# ------------------------------------------------
# TEST 3 : plusieurs erreurs dans plusieurs lignes
# Attendu : err_en=1, Error=1, Corr=0, Done=1
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 3 : PLUSIEURS ERREURS ====="
echo "\n================ TEST 3 : PLUSIEURS ERREURS ================"
write_matrix 54 37 79 0E 4C 2A 17 68
launch_decode
read_reg 10 "tentative lecture DPCDataOut : erreur non corrigeable"

# ------------------------------------------------
# TEST 4 : erreur uniquement sur bit global p[7,7]
# 68 -> E8 ou 68 -> 69 selon position de ton bit global
# Ici on teste 68 xor 80 = E8
# Attendu selon ton analyse : accept_raw=1, Error=0, Corr=0, Done=1
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 4 : ERREUR BIT GLOBAL P[7,7] ====="
echo "\n================ TEST 4 : ERREUR BIT GLOBAL ================"
write_matrix 55 33 71 8E CC AA 17 E8
launch_decode
read_output_fifo_8

# ------------------------------------------------
# TEST 5 : erreur sur bit de parite ligne uniquement
# 8E -> 0E
# Attendu : accept_raw=1, Error=0, Corr=0, Done=1
# Les donnees sont envoyees.
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 5 : ERREUR BIT PARITE LIGNE ====="
echo "\n================ TEST 5 : ERREUR BIT PARITE LIGNE ================"
write_matrix 55 33 71 0E CC AA 17 68
launch_decode
read_output_fifo_8

# ------------------------------------------------
# TEST 6 : matrice totalement corrompue
# Attendu : err_en=1, Error=1, Corr=0, Done=1
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 6 : MATRICE TOTALEMENT CORROMPUE ====="
echo "\n================ TEST 6 : MATRICE TOTALEMENT CORROMPUE ================"
write_matrix FF FF FF FF FF FF FF FF
launch_decode
read_reg 10 "tentative lecture DPCDataOut : normalement rien de valide"

# ------------------------------------------------
# TEST 7 : cas correct final pour comparaison
# Attendu : accept_raw=1, Error=0, Corr=0, Done=1
# Sortie attendue : 55 33 71 8E CC AA 17 68
# ------------------------------------------------
reset_dut
add wave -divider "===== TEST 7 : MATRICE CORRECTE DE REFERENCE ====="
echo "\n================ TEST 7 : MATRICE CORRECTE ================"
write_matrix 55 33 71 8E CC AA 17 68
launch_decode
read_output_fifo_8

wave zoom full
run 200 ns

echo "\nFIN DES TESTS EXTREMES."
echo "A verifier :"
echo "TEST 1 : FSM reste IDLE, Status=000000"
echo "TEST 2 : Error=1 Corr=0 Done=1, pas de FIFO sortie valide"
echo "TEST 3 : Error=1 Corr=0 Done=1"
echo "TEST 4 : Error=0 Corr=0 Done=1"
echo "TEST 5 : Error=0 Corr=0 Done=1"
echo "TEST 6 : Error=1 Corr=0 Done=1"
echo "TEST 7 : Error=0 Corr=0 Done=1, sortie 55 33 71 8E CC AA 17 68"