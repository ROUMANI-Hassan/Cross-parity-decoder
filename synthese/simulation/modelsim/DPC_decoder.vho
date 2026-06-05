-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/05/2026 16:38:30"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DPC_decoder IS
    PORT (
	Clk : IN std_logic;
	Reset_n : IN std_logic;
	D_in : IN std_logic_vector(7 DOWNTO 0);
	Wr : IN std_logic;
	Rd : IN std_logic;
	Addr : IN std_logic_vector(1 DOWNTO 0);
	D_out : OUT std_logic_vector(7 DOWNTO 0);
	Irq_DPC_n : OUT std_logic
	);
END DPC_decoder;

-- Design Ports Information
-- D_out[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[3]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[5]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_out[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Irq_DPC_n	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_n	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rd	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DPC_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset_n : std_logic;
SIGNAL ww_D_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Wr : std_logic;
SIGNAL ww_Rd : std_logic;
SIGNAL ww_Addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Irq_DPC_n : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Addr[0]~input_o\ : std_logic;
SIGNAL \Addr[1]~input_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D_in[0]~input_o\ : std_logic;
SIGNAL \Reset_n~input_o\ : std_logic;
SIGNAL \state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \write_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \write_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \state.S_LOAD_BUFFER~q\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector61~2_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \state.S_ANALYSE~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][0]~feeder_combout\ : std_logic;
SIGNAL \Wr~input_o\ : std_logic;
SIGNAL \in_fifo_wr~0_combout\ : std_logic;
SIGNAL \u_fifo_in|adrFifo[1]~1_combout\ : std_logic;
SIGNAL \u_fifo_in|Mux64~0_combout\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \u_fifo_in|Mux67~0_combout\ : std_logic;
SIGNAL \u_fifo_in|adrFifo[2]~0_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][0]~7_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][3]~6_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][0]~5_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][1]~4_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][6]~3_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][6]~2_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][4]~1_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][0]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][4]~0_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][0]~q\ : std_logic;
SIGNAL \D_in[4]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][4]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][4]~q\ : std_logic;
SIGNAL \D_in[6]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][6]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][6]~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \buffer_8x8[7][6]~10_combout\ : std_logic;
SIGNAL \buffer_8x8[7][6]~q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \D_in[2]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][2]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][2]~q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state.S_CORR~DUPLICATE_q\ : std_logic;
SIGNAL \D_in[3]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][3]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][3]~q\ : std_logic;
SIGNAL \D_in[5]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][5]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][5]~q\ : std_logic;
SIGNAL \Decoder2~5_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \buffer_8x8[4][5]~q\ : std_logic;
SIGNAL \buffer_8x8[4][5]~43_combout\ : std_logic;
SIGNAL \buffer_8x8[4][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \buffer_8x8[6][5]~q\ : std_logic;
SIGNAL \buffer_8x8[6][5]~45_combout\ : std_logic;
SIGNAL \buffer_8x8[6][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][5]~q\ : std_logic;
SIGNAL \buffer_8x8[5][5]~44_combout\ : std_logic;
SIGNAL \buffer_8x8[5][5]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[7][5]~q\ : std_logic;
SIGNAL \load_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \buffer_8x8[1][5]~47_combout\ : std_logic;
SIGNAL \buffer_8x8[1][5]~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \buffer_8x8[0][5]~q\ : std_logic;
SIGNAL \buffer_8x8[0][5]~48_combout\ : std_logic;
SIGNAL \buffer_8x8[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][5]~46_combout\ : std_logic;
SIGNAL \buffer_8x8[3][5]~q\ : std_logic;
SIGNAL \buffer_8x8[2][5]~q\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][5]~42_combout\ : std_logic;
SIGNAL \buffer_8x8[2][5]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~12_combout\ : std_logic;
SIGNAL \process_1~13_combout\ : std_logic;
SIGNAL \buffer_8x8[7][3]~q\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \buffer_8x8[6][3]~q\ : std_logic;
SIGNAL \buffer_8x8[6][3]~31_combout\ : std_logic;
SIGNAL \buffer_8x8[6][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][3]~30_combout\ : std_logic;
SIGNAL \buffer_8x8[5][3]~q\ : std_logic;
SIGNAL \buffer_8x8[1][3]~q\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \buffer_8x8[1][3]~33_combout\ : std_logic;
SIGNAL \buffer_8x8[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][3]~q\ : std_logic;
SIGNAL \buffer_8x8[2][3]~28_combout\ : std_logic;
SIGNAL \buffer_8x8[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \buffer_8x8[0][3]~34_combout\ : std_logic;
SIGNAL \buffer_8x8[0][3]~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][3]~32_combout\ : std_logic;
SIGNAL \buffer_8x8[3][3]~q\ : std_logic;
SIGNAL \process_1~20_combout\ : std_logic;
SIGNAL \process_1~21_combout\ : std_logic;
SIGNAL \Decoder2~2_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \buffer_8x8[6][2]~24_combout\ : std_logic;
SIGNAL \buffer_8x8[6][2]~q\ : std_logic;
SIGNAL \buffer_8x8[7][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][2]~23_combout\ : std_logic;
SIGNAL \buffer_8x8[5][2]~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \buffer_8x8[4][2]~22_combout\ : std_logic;
SIGNAL \buffer_8x8[4][2]~q\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][2]~21_combout\ : std_logic;
SIGNAL \buffer_8x8[2][2]~q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \buffer_8x8[1][2]~26_combout\ : std_logic;
SIGNAL \buffer_8x8[1][2]~q\ : std_logic;
SIGNAL \buffer_8x8[0][2]~q\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \buffer_8x8[0][2]~27_combout\ : std_logic;
SIGNAL \buffer_8x8[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~18_combout\ : std_logic;
SIGNAL \process_1~19_combout\ : std_logic;
SIGNAL \D_in[1]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][1]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][1]~q\ : std_logic;
SIGNAL \Decoder2~1_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][1]~16_combout\ : std_logic;
SIGNAL \buffer_8x8[5][1]~q\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \buffer_8x8[6][1]~q\ : std_logic;
SIGNAL \buffer_8x8[6][1]~17_combout\ : std_logic;
SIGNAL \buffer_8x8[6][1]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[7][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \buffer_8x8[4][1]~q\ : std_logic;
SIGNAL \buffer_8x8[4][1]~15_combout\ : std_logic;
SIGNAL \buffer_8x8[4][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \buffer_8x8[1][1]~19_combout\ : std_logic;
SIGNAL \buffer_8x8[1][1]~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \buffer_8x8[0][1]~20_combout\ : std_logic;
SIGNAL \buffer_8x8[0][1]~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][1]~q\ : std_logic;
SIGNAL \buffer_8x8[3][1]~18_combout\ : std_logic;
SIGNAL \buffer_8x8[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][1]~14_combout\ : std_logic;
SIGNAL \buffer_8x8[2][1]~q\ : std_logic;
SIGNAL \process_1~16_combout\ : std_logic;
SIGNAL \process_1~17_combout\ : std_logic;
SIGNAL \idx_c[0]~1_combout\ : std_logic;
SIGNAL \Decoder2~3_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \buffer_8x8[4][3]~29_combout\ : std_logic;
SIGNAL \buffer_8x8[4][3]~q\ : std_logic;
SIGNAL \buffer_8x8[4][0]~q\ : std_logic;
SIGNAL \buffer_8x8[4][7]~DUPLICATE_q\ : std_logic;
SIGNAL \D_in[7]~input_o\ : std_logic;
SIGNAL \u_fifo_in|Fifo[7][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[6][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[5][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[4][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[3][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[2][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[1][7]~q\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_in|Fifo[0][7]~q\ : std_logic;
SIGNAL \buffer_8x8[4][7]~57_combout\ : std_logic;
SIGNAL \buffer_8x8[4][7]~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \buffer_8x8[4][4]~q\ : std_logic;
SIGNAL \buffer_8x8[4][4]~36_combout\ : std_logic;
SIGNAL \buffer_8x8[4][4]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[4][6]~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \idx_l[1]~0_combout\ : std_logic;
SIGNAL \idx_l[2]~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][2]~25_combout\ : std_logic;
SIGNAL \buffer_8x8[3][2]~q\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \buffer_8x8[3][0]~11_combout\ : std_logic;
SIGNAL \buffer_8x8[3][0]~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][4]~39_combout\ : std_logic;
SIGNAL \buffer_8x8[3][4]~q\ : std_logic;
SIGNAL \buffer_8x8[3][7]~60_combout\ : std_logic;
SIGNAL \buffer_8x8[3][7]~q\ : std_logic;
SIGNAL \buffer_8x8[3][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Decoder2~6_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \buffer_8x8[3][6]~53_combout\ : std_logic;
SIGNAL \buffer_8x8[3][6]~q\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \buffer_8x8[1][7]~61_combout\ : std_logic;
SIGNAL \buffer_8x8[1][7]~q\ : std_logic;
SIGNAL \buffer_8x8[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \buffer_8x8[1][4]~q\ : std_logic;
SIGNAL \buffer_8x8[1][4]~40_combout\ : std_logic;
SIGNAL \buffer_8x8[1][4]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[1][6]~q\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \buffer_8x8[1][6]~54_combout\ : std_logic;
SIGNAL \buffer_8x8[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~22_combout\ : std_logic;
SIGNAL \buffer_8x8[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \buffer_8x8[1][0]~12_combout\ : std_logic;
SIGNAL \buffer_8x8[1][0]~q\ : std_logic;
SIGNAL \process_1~23_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][4]~35_combout\ : std_logic;
SIGNAL \buffer_8x8[2][4]~q\ : std_logic;
SIGNAL \buffer_8x8[2][7]~56_combout\ : std_logic;
SIGNAL \buffer_8x8[2][7]~q\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \buffer_8x8[2][6]~49_combout\ : std_logic;
SIGNAL \buffer_8x8[2][6]~q\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \buffer_8x8[2][0]~q\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \buffer_8x8[2][0]~5_combout\ : std_logic;
SIGNAL \buffer_8x8[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \idx_l[0]~3_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \buffer_8x8[4][6]~50_combout\ : std_logic;
SIGNAL \buffer_8x8[4][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \buffer_8x8[6][6]~52_combout\ : std_logic;
SIGNAL \buffer_8x8[6][6]~q\ : std_logic;
SIGNAL \buffer_8x8[5][6]~q\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \buffer_8x8[5][6]~51_combout\ : std_logic;
SIGNAL \buffer_8x8[5][6]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \buffer_8x8[0][6]~55_combout\ : std_logic;
SIGNAL \buffer_8x8[0][6]~q\ : std_logic;
SIGNAL \process_1~14_combout\ : std_logic;
SIGNAL \process_1~15_combout\ : std_logic;
SIGNAL \idx_c[1]~2_combout\ : std_logic;
SIGNAL \Decoder2~4_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][4]~37_combout\ : std_logic;
SIGNAL \buffer_8x8[5][4]~q\ : std_logic;
SIGNAL \buffer_8x8[6][4]~q\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \buffer_8x8[6][4]~38_combout\ : std_logic;
SIGNAL \buffer_8x8[6][4]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[7][4]~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \buffer_8x8[0][4]~41_combout\ : std_logic;
SIGNAL \buffer_8x8[0][4]~q\ : std_logic;
SIGNAL \process_1~10_combout\ : std_logic;
SIGNAL \process_1~11_combout\ : std_logic;
SIGNAL \idx_c[2]~0_combout\ : std_logic;
SIGNAL \Decoder2~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \buffer_8x8[0][0]~13_combout\ : std_logic;
SIGNAL \buffer_8x8[0][0]~q\ : std_logic;
SIGNAL \buffer_8x8[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[0][7]~62_combout\ : std_logic;
SIGNAL \buffer_8x8[0][7]~q\ : std_logic;
SIGNAL \process_1~28_combout\ : std_logic;
SIGNAL \process_1~29_combout\ : std_logic;
SIGNAL \buffer_8x8[7][0]~q\ : std_logic;
SIGNAL \buffer_8x8[5][0]~DUPLICATE_q\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \buffer_8x8[6][0]~q\ : std_logic;
SIGNAL \buffer_8x8[6][0]~9_combout\ : std_logic;
SIGNAL \buffer_8x8[6][0]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~30_combout\ : std_logic;
SIGNAL \process_1~31_combout\ : std_logic;
SIGNAL \c~2_combout\ : std_logic;
SIGNAL \c~3_combout\ : std_logic;
SIGNAL \c~1_combout\ : std_logic;
SIGNAL \buffer_8x8[7][3]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[3][7]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~24_combout\ : std_logic;
SIGNAL \buffer_8x8[5][7]~58_combout\ : std_logic;
SIGNAL \buffer_8x8[5][7]~q\ : std_logic;
SIGNAL \buffer_8x8[7][7]~q\ : std_logic;
SIGNAL \process_1~25_combout\ : std_logic;
SIGNAL \process_1~26_combout\ : std_logic;
SIGNAL \process_1~27_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \c~6_combout\ : std_logic;
SIGNAL \Selector64~5_combout\ : std_logic;
SIGNAL \c~4_combout\ : std_logic;
SIGNAL \c~5_combout\ : std_logic;
SIGNAL \c~7_combout\ : std_logic;
SIGNAL \Selector64~2_combout\ : std_logic;
SIGNAL \Selector64~3_combout\ : std_logic;
SIGNAL \Selector64~6_combout\ : std_logic;
SIGNAL \Add12~13_sumout\ : std_logic;
SIGNAL \c~11_combout\ : std_logic;
SIGNAL \c~12_combout\ : std_logic;
SIGNAL \c~10_combout\ : std_logic;
SIGNAL \Add12~26_cout\ : std_logic;
SIGNAL \Add12~17_sumout\ : std_logic;
SIGNAL \Add12~9_sumout\ : std_logic;
SIGNAL \c~9_combout\ : std_logic;
SIGNAL \Add12~18\ : std_logic;
SIGNAL \Add12~21_sumout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add12~22\ : std_logic;
SIGNAL \Add12~5_sumout\ : std_logic;
SIGNAL \Selector64~1_combout\ : std_logic;
SIGNAL \Selector64~4_combout\ : std_logic;
SIGNAL \state.S_LOAD_DATA~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Selector63~1_combout\ : std_logic;
SIGNAL \state.S_DONE~q\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \process_1~32_combout\ : std_logic;
SIGNAL \Selector65~1_combout\ : std_logic;
SIGNAL \state.S_ERROR~q\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \state.S_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \dpc_control~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \state.S_IDLE~q\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Selector61~1_combout\ : std_logic;
SIGNAL \state.S_LOAD_BUFFER~DUPLICATE_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \load_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \load_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8[7][6]~6_combout\ : std_logic;
SIGNAL \buffer_8x8[6][7]~59_combout\ : std_logic;
SIGNAL \buffer_8x8[6][7]~q\ : std_logic;
SIGNAL \buffer_8x8[6][6]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \buffer_8x8[6][2]~DUPLICATE_q\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \idx_l[1]~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \buffer_8x8[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \buffer_8x8[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \buffer_8x8[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \buffer_8x8~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \buffer_8x8[5][4]~DUPLICATE_q\ : std_logic;
SIGNAL \buffer_8x8~1_combout\ : std_logic;
SIGNAL \buffer_8x8~2_combout\ : std_logic;
SIGNAL \buffer_8x8~63_combout\ : std_logic;
SIGNAL \buffer_8x8~3_combout\ : std_logic;
SIGNAL \buffer_8x8~4_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \buffer_8x8[5][0]~8_combout\ : std_logic;
SIGNAL \buffer_8x8[5][0]~q\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \c~8_combout\ : std_logic;
SIGNAL \Add12~6\ : std_logic;
SIGNAL \Add12~10\ : std_logic;
SIGNAL \Add12~14\ : std_logic;
SIGNAL \Add12~1_sumout\ : std_logic;
SIGNAL \Selector63~2_combout\ : std_logic;
SIGNAL \state.S_CORR~q\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \buffer_8x8[4][0]~7_combout\ : std_logic;
SIGNAL \buffer_8x8[4][0]~DUPLICATE_q\ : std_logic;
SIGNAL \out_fifo_din[0]~2_combout\ : std_logic;
SIGNAL \Rd~input_o\ : std_logic;
SIGNAL \out_fifo_rd~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~6_combout\ : std_logic;
SIGNAL \u_fifo_out|Equal0~0_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo[2]~4_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~3_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~1_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~0_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~2_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo~5_combout\ : std_logic;
SIGNAL \out_fifo_din[1]~0_combout\ : std_logic;
SIGNAL \out_fifo_din[1]~1_combout\ : std_logic;
SIGNAL \out_fifo_din[0]~3_combout\ : std_logic;
SIGNAL \out_fifo_din[0]~4_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][6]~20_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][4]~17_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][0]~18_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][0]~19_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][3]~14_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][0]~15_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][0]~16_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][2]~11_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][0]~12_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][0]~13_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][1]~8_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][0]~9_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][0]~10_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][7]~5_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][0]~6_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][0]~7_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][1]~2_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][0]~3_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][0]~4_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][0]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][0]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][5]~0_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][0]~1_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][0]~q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \buffer_8x8[7][1]~q\ : std_logic;
SIGNAL \out_fifo_din[1]~5_combout\ : std_logic;
SIGNAL \out_fifo_din[1]~6_combout\ : std_logic;
SIGNAL \out_fifo_din[1]~7_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][1]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][1]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][1]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \buffer_8x8[3][2]~DUPLICATE_q\ : std_logic;
SIGNAL \out_fifo_din[2]~9_combout\ : std_logic;
SIGNAL \buffer_8x8[7][2]~q\ : std_logic;
SIGNAL \out_fifo_din[2]~8_combout\ : std_logic;
SIGNAL \buffer_8x8[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \out_fifo_din[2]~10_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][2]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][2]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][2]~q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \out_fifo_din[3]~11_combout\ : std_logic;
SIGNAL \out_fifo_din[3]~12_combout\ : std_logic;
SIGNAL \out_fifo_din[3]~13_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][3]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][3]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][3]~q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \out_fifo_din[4]~15_combout\ : std_logic;
SIGNAL \out_fifo_din[4]~14_combout\ : std_logic;
SIGNAL \out_fifo_din[4]~16_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][4]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][4]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][4]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \out_fifo_din[5]~18_combout\ : std_logic;
SIGNAL \out_fifo_din[5]~17_combout\ : std_logic;
SIGNAL \out_fifo_din[5]~19_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][5]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][5]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][5]~q\ : std_logic;
SIGNAL \dpc_control[5]~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \out_fifo_din[6]~20_combout\ : std_logic;
SIGNAL \buffer_8x8[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \out_fifo_din[6]~21_combout\ : std_logic;
SIGNAL \out_fifo_din[6]~22_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][6]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][6]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][6]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \out_fifo_din[7]~24_combout\ : std_logic;
SIGNAL \out_fifo_din[7]~23_combout\ : std_logic;
SIGNAL \out_fifo_din[7]~25_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[7][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[6][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[5][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[4][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[3][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[2][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[1][7]~q\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][7]~feeder_combout\ : std_logic;
SIGNAL \u_fifo_out|Fifo[0][7]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Irq_DPC_n~0_combout\ : std_logic;
SIGNAL \u_fifo_out|adrFifo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL write_cnt : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_fifo_in|adrFifo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL dpc_control : std_logic_vector(7 DOWNTO 0);
SIGNAL dpc_status : std_logic_vector(7 DOWNTO 0);
SIGNAL load_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_process_1~21_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~20_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~19_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~18_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~17_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~16_combout\ : std_logic;
SIGNAL \ALT_INV_idx_c[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~15_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~14_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~13_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~12_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~11_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~10_combout\ : std_logic;
SIGNAL \ALT_INV_idx_l[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~9_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~8_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~6_combout\ : std_logic;
SIGNAL \ALT_INV_idx_l[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \ALT_INV_idx_l[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[7]~24_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][7]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[7]~23_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][7]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][7]~q\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_CORR~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[6]~21_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][6]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[6]~20_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][6]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][6]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[5]~18_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][5]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[5]~17_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][5]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][5]~q\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[4]~15_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][4]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[4]~14_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][4]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][4]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[3]~12_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][3]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[3]~11_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][3]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][3]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[2]~10_combout\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[2]~9_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][2]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[2]~8_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][2]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][2]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][1]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][1]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_Selector61~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_IDLE~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_adrFifo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.S_ERROR~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_out_fifo_rd~0_combout\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][0]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][0]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][0]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][0]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][0]~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][0]~q\ : std_logic;
SIGNAL \ALT_INV_out_fifo_din[1]~1_combout\ : std_logic;
SIGNAL ALT_INV_write_cnt : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_out_fifo_din[1]~0_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_adrFifo\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.S_LOAD_DATA~q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][0]~q\ : std_logic;
SIGNAL \ALT_INV_state.S_DONE~q\ : std_logic;
SIGNAL \ALT_INV_Irq_DPC_n~0_combout\ : std_logic;
SIGNAL ALT_INV_dpc_status : std_logic_vector(7 DOWNTO 5);
SIGNAL ALT_INV_dpc_control : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~63_combout\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[6][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[5][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[4][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[3][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[2][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[1][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][0]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][1]~q\ : std_logic;
SIGNAL \ALT_INV_Add12~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add12~1_sumout\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[0][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[1][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[0][0]~q\ : std_logic;
SIGNAL \ALT_INV_load_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_load_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_load_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_CORR~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[0][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[3][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[1][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[6][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[5][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[4][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_write_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_write_cnt[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[2][0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.S_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_D_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Rd~input_o\ : std_logic;
SIGNAL \ALT_INV_D_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Wr~input_o\ : std_logic;
SIGNAL \ALT_INV_Addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector64~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~5_combout\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][7]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][6]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][5]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][4]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][3]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][2]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][1]~q\ : std_logic;
SIGNAL \u_fifo_in|ALT_INV_Fifo[7][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][7]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][6]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][5]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][4]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][3]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][2]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][1]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[6][0]~18_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[7][0]~q\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[5][0]~15_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[4][0]~12_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[3][0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~12_combout\ : std_logic;
SIGNAL \ALT_INV_c~11_combout\ : std_logic;
SIGNAL \ALT_INV_c~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector62~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector61~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add5~0_combout\ : std_logic;
SIGNAL \ALT_INV_c~9_combout\ : std_logic;
SIGNAL \ALT_INV_c~8_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_Fifo[2][0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector31~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector52~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector45~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector38~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector53~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector47~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector55~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector49~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector28~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector57~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_in_fifo_wr~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector65~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~32_combout\ : std_logic;
SIGNAL \ALT_INV_Selector63~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector63~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector37~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector37~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector58~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector51~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector51~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8[7][6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector38~0_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_adrFifo~1_combout\ : std_logic;
SIGNAL \u_fifo_out|ALT_INV_adrFifo~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector59~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~2_combout\ : std_logic;
SIGNAL \ALT_INV_c~7_combout\ : std_logic;
SIGNAL \ALT_INV_c~6_combout\ : std_logic;
SIGNAL \ALT_INV_c~5_combout\ : std_logic;
SIGNAL \ALT_INV_c~4_combout\ : std_logic;
SIGNAL \ALT_INV_c~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~31_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~30_combout\ : std_logic;
SIGNAL \ALT_INV_c~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~29_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~28_combout\ : std_logic;
SIGNAL \ALT_INV_c~1_combout\ : std_logic;
SIGNAL \ALT_INV_c~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector64~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~27_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~26_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~25_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~24_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_ANALYSE~q\ : std_logic;
SIGNAL \ALT_INV_Selector64~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector30~1_combout\ : std_logic;
SIGNAL ALT_INV_load_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S_LOAD_BUFFER~q\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Decoder2~0_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~4_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~2_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~1_combout\ : std_logic;
SIGNAL \ALT_INV_buffer_8x8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_idx_l[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~23_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_idx_c[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_idx_c[0]~1_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Reset_n <= Reset_n;
ww_D_in <= D_in;
ww_Wr <= Wr;
ww_Rd <= Rd;
ww_Addr <= Addr;
D_out <= ww_D_out;
Irq_DPC_n <= ww_Irq_DPC_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_process_1~21_combout\ <= NOT \process_1~21_combout\;
\ALT_INV_process_1~20_combout\ <= NOT \process_1~20_combout\;
\ALT_INV_process_1~19_combout\ <= NOT \process_1~19_combout\;
\ALT_INV_process_1~18_combout\ <= NOT \process_1~18_combout\;
\ALT_INV_process_1~17_combout\ <= NOT \process_1~17_combout\;
\ALT_INV_process_1~16_combout\ <= NOT \process_1~16_combout\;
\ALT_INV_idx_c[2]~0_combout\ <= NOT \idx_c[2]~0_combout\;
\ALT_INV_process_1~15_combout\ <= NOT \process_1~15_combout\;
\ALT_INV_process_1~14_combout\ <= NOT \process_1~14_combout\;
\ALT_INV_process_1~13_combout\ <= NOT \process_1~13_combout\;
\ALT_INV_process_1~12_combout\ <= NOT \process_1~12_combout\;
\ALT_INV_process_1~11_combout\ <= NOT \process_1~11_combout\;
\ALT_INV_process_1~10_combout\ <= NOT \process_1~10_combout\;
\ALT_INV_idx_l[1]~2_combout\ <= NOT \idx_l[1]~2_combout\;
\ALT_INV_process_1~9_combout\ <= NOT \process_1~9_combout\;
\ALT_INV_process_1~8_combout\ <= NOT \process_1~8_combout\;
\ALT_INV_process_1~7_combout\ <= NOT \process_1~7_combout\;
\ALT_INV_process_1~6_combout\ <= NOT \process_1~6_combout\;
\ALT_INV_idx_l[2]~1_combout\ <= NOT \idx_l[2]~1_combout\;
\ALT_INV_process_1~5_combout\ <= NOT \process_1~5_combout\;
\ALT_INV_process_1~4_combout\ <= NOT \process_1~4_combout\;
\ALT_INV_idx_l[1]~0_combout\ <= NOT \idx_l[1]~0_combout\;
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;
\ALT_INV_process_1~2_combout\ <= NOT \process_1~2_combout\;
\ALT_INV_process_1~1_combout\ <= NOT \process_1~1_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\u_fifo_out|ALT_INV_Fifo[1][0]~3_combout\ <= NOT \u_fifo_out|Fifo[1][0]~3_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_out_fifo_din[7]~24_combout\ <= NOT \out_fifo_din[7]~24_combout\;
\ALT_INV_buffer_8x8[0][7]~q\ <= NOT \buffer_8x8[0][7]~q\;
\ALT_INV_buffer_8x8[1][7]~q\ <= NOT \buffer_8x8[1][7]~q\;
\ALT_INV_buffer_8x8[3][7]~q\ <= NOT \buffer_8x8[3][7]~q\;
\ALT_INV_out_fifo_din[7]~23_combout\ <= NOT \out_fifo_din[7]~23_combout\;
\ALT_INV_buffer_8x8[7][7]~q\ <= NOT \buffer_8x8[7][7]~q\;
\ALT_INV_buffer_8x8[6][7]~q\ <= NOT \buffer_8x8[6][7]~q\;
\ALT_INV_buffer_8x8[5][7]~q\ <= NOT \buffer_8x8[5][7]~q\;
\ALT_INV_buffer_8x8[4][7]~q\ <= NOT \buffer_8x8[4][7]~q\;
\ALT_INV_buffer_8x8[2][7]~q\ <= NOT \buffer_8x8[2][7]~q\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_state.S_CORR~q\ <= NOT \state.S_CORR~q\;
\ALT_INV_out_fifo_din[6]~21_combout\ <= NOT \out_fifo_din[6]~21_combout\;
\ALT_INV_buffer_8x8[0][6]~q\ <= NOT \buffer_8x8[0][6]~q\;
\ALT_INV_buffer_8x8[1][6]~q\ <= NOT \buffer_8x8[1][6]~q\;
\ALT_INV_buffer_8x8[3][6]~q\ <= NOT \buffer_8x8[3][6]~q\;
\ALT_INV_out_fifo_din[6]~20_combout\ <= NOT \out_fifo_din[6]~20_combout\;
\ALT_INV_buffer_8x8[7][6]~q\ <= NOT \buffer_8x8[7][6]~q\;
\ALT_INV_buffer_8x8[6][6]~q\ <= NOT \buffer_8x8[6][6]~q\;
\ALT_INV_buffer_8x8[5][6]~q\ <= NOT \buffer_8x8[5][6]~q\;
\ALT_INV_buffer_8x8[4][6]~q\ <= NOT \buffer_8x8[4][6]~q\;
\ALT_INV_buffer_8x8[2][6]~q\ <= NOT \buffer_8x8[2][6]~q\;
\ALT_INV_out_fifo_din[5]~18_combout\ <= NOT \out_fifo_din[5]~18_combout\;
\ALT_INV_buffer_8x8[0][5]~q\ <= NOT \buffer_8x8[0][5]~q\;
\ALT_INV_buffer_8x8[1][5]~q\ <= NOT \buffer_8x8[1][5]~q\;
\ALT_INV_buffer_8x8[3][5]~q\ <= NOT \buffer_8x8[3][5]~q\;
\ALT_INV_out_fifo_din[5]~17_combout\ <= NOT \out_fifo_din[5]~17_combout\;
\ALT_INV_buffer_8x8[7][5]~q\ <= NOT \buffer_8x8[7][5]~q\;
\ALT_INV_buffer_8x8[6][5]~q\ <= NOT \buffer_8x8[6][5]~q\;
\ALT_INV_buffer_8x8[5][5]~q\ <= NOT \buffer_8x8[5][5]~q\;
\ALT_INV_buffer_8x8[4][5]~q\ <= NOT \buffer_8x8[4][5]~q\;
\ALT_INV_buffer_8x8[2][5]~q\ <= NOT \buffer_8x8[2][5]~q\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_out_fifo_din[4]~15_combout\ <= NOT \out_fifo_din[4]~15_combout\;
\ALT_INV_buffer_8x8[0][4]~q\ <= NOT \buffer_8x8[0][4]~q\;
\ALT_INV_buffer_8x8[1][4]~q\ <= NOT \buffer_8x8[1][4]~q\;
\ALT_INV_buffer_8x8[3][4]~q\ <= NOT \buffer_8x8[3][4]~q\;
\ALT_INV_out_fifo_din[4]~14_combout\ <= NOT \out_fifo_din[4]~14_combout\;
\ALT_INV_buffer_8x8[7][4]~q\ <= NOT \buffer_8x8[7][4]~q\;
\ALT_INV_buffer_8x8[6][4]~q\ <= NOT \buffer_8x8[6][4]~q\;
\ALT_INV_buffer_8x8[5][4]~q\ <= NOT \buffer_8x8[5][4]~q\;
\ALT_INV_buffer_8x8[4][4]~q\ <= NOT \buffer_8x8[4][4]~q\;
\ALT_INV_buffer_8x8[2][4]~q\ <= NOT \buffer_8x8[2][4]~q\;
\ALT_INV_out_fifo_din[3]~12_combout\ <= NOT \out_fifo_din[3]~12_combout\;
\ALT_INV_buffer_8x8[0][3]~q\ <= NOT \buffer_8x8[0][3]~q\;
\ALT_INV_buffer_8x8[1][3]~q\ <= NOT \buffer_8x8[1][3]~q\;
\ALT_INV_buffer_8x8[3][3]~q\ <= NOT \buffer_8x8[3][3]~q\;
\ALT_INV_out_fifo_din[3]~11_combout\ <= NOT \out_fifo_din[3]~11_combout\;
\ALT_INV_buffer_8x8[7][3]~q\ <= NOT \buffer_8x8[7][3]~q\;
\ALT_INV_buffer_8x8[6][3]~q\ <= NOT \buffer_8x8[6][3]~q\;
\ALT_INV_buffer_8x8[5][3]~q\ <= NOT \buffer_8x8[5][3]~q\;
\ALT_INV_buffer_8x8[4][3]~q\ <= NOT \buffer_8x8[4][3]~q\;
\ALT_INV_buffer_8x8[2][3]~q\ <= NOT \buffer_8x8[2][3]~q\;
\ALT_INV_out_fifo_din[2]~10_combout\ <= NOT \out_fifo_din[2]~10_combout\;
\ALT_INV_out_fifo_din[2]~9_combout\ <= NOT \out_fifo_din[2]~9_combout\;
\ALT_INV_buffer_8x8[0][2]~q\ <= NOT \buffer_8x8[0][2]~q\;
\ALT_INV_buffer_8x8[1][2]~q\ <= NOT \buffer_8x8[1][2]~q\;
\ALT_INV_buffer_8x8[3][2]~q\ <= NOT \buffer_8x8[3][2]~q\;
\ALT_INV_out_fifo_din[2]~8_combout\ <= NOT \out_fifo_din[2]~8_combout\;
\ALT_INV_buffer_8x8[7][2]~q\ <= NOT \buffer_8x8[7][2]~q\;
\ALT_INV_buffer_8x8[6][2]~q\ <= NOT \buffer_8x8[6][2]~q\;
\ALT_INV_buffer_8x8[5][2]~q\ <= NOT \buffer_8x8[5][2]~q\;
\ALT_INV_buffer_8x8[4][2]~q\ <= NOT \buffer_8x8[4][2]~q\;
\ALT_INV_buffer_8x8[2][2]~q\ <= NOT \buffer_8x8[2][2]~q\;
\ALT_INV_out_fifo_din[1]~6_combout\ <= NOT \out_fifo_din[1]~6_combout\;
\ALT_INV_buffer_8x8[0][1]~q\ <= NOT \buffer_8x8[0][1]~q\;
\ALT_INV_buffer_8x8[1][1]~q\ <= NOT \buffer_8x8[1][1]~q\;
\ALT_INV_buffer_8x8[3][1]~q\ <= NOT \buffer_8x8[3][1]~q\;
\ALT_INV_out_fifo_din[1]~5_combout\ <= NOT \out_fifo_din[1]~5_combout\;
\ALT_INV_buffer_8x8[7][1]~q\ <= NOT \buffer_8x8[7][1]~q\;
\ALT_INV_buffer_8x8[6][1]~q\ <= NOT \buffer_8x8[6][1]~q\;
\ALT_INV_buffer_8x8[5][1]~q\ <= NOT \buffer_8x8[5][1]~q\;
\ALT_INV_buffer_8x8[4][1]~q\ <= NOT \buffer_8x8[4][1]~q\;
\ALT_INV_buffer_8x8[2][1]~q\ <= NOT \buffer_8x8[2][1]~q\;
\ALT_INV_Selector61~0_combout\ <= NOT \Selector61~0_combout\;
\ALT_INV_state.S_IDLE~q\ <= NOT \state.S_IDLE~q\;
\u_fifo_in|ALT_INV_adrFifo\(1) <= NOT \u_fifo_in|adrFifo\(1);
\u_fifo_in|ALT_INV_adrFifo\(0) <= NOT \u_fifo_in|adrFifo\(0);
\u_fifo_in|ALT_INV_adrFifo\(2) <= NOT \u_fifo_in|adrFifo\(2);
\u_fifo_in|ALT_INV_adrFifo\(3) <= NOT \u_fifo_in|adrFifo\(3);
\ALT_INV_state.S_ERROR~q\ <= NOT \state.S_ERROR~q\;
\u_fifo_out|ALT_INV_Equal0~0_combout\ <= NOT \u_fifo_out|Equal0~0_combout\;
\ALT_INV_out_fifo_rd~0_combout\ <= NOT \out_fifo_rd~0_combout\;
\ALT_INV_out_fifo_din[0]~3_combout\ <= NOT \out_fifo_din[0]~3_combout\;
\ALT_INV_buffer_8x8[0][0]~q\ <= NOT \buffer_8x8[0][0]~q\;
\ALT_INV_buffer_8x8[1][0]~q\ <= NOT \buffer_8x8[1][0]~q\;
\ALT_INV_buffer_8x8[3][0]~q\ <= NOT \buffer_8x8[3][0]~q\;
\ALT_INV_out_fifo_din[0]~2_combout\ <= NOT \out_fifo_din[0]~2_combout\;
\ALT_INV_buffer_8x8[7][0]~q\ <= NOT \buffer_8x8[7][0]~q\;
\ALT_INV_buffer_8x8[6][0]~q\ <= NOT \buffer_8x8[6][0]~q\;
\ALT_INV_buffer_8x8[5][0]~q\ <= NOT \buffer_8x8[5][0]~q\;
\ALT_INV_buffer_8x8[4][0]~q\ <= NOT \buffer_8x8[4][0]~q\;
\ALT_INV_out_fifo_din[1]~1_combout\ <= NOT \out_fifo_din[1]~1_combout\;
ALT_INV_write_cnt(1) <= NOT write_cnt(1);
ALT_INV_write_cnt(2) <= NOT write_cnt(2);
\ALT_INV_out_fifo_din[1]~0_combout\ <= NOT \out_fifo_din[1]~0_combout\;
\u_fifo_out|ALT_INV_adrFifo\(1) <= NOT \u_fifo_out|adrFifo\(1);
\u_fifo_out|ALT_INV_adrFifo\(0) <= NOT \u_fifo_out|adrFifo\(0);
\u_fifo_out|ALT_INV_adrFifo\(2) <= NOT \u_fifo_out|adrFifo\(2);
\u_fifo_out|ALT_INV_adrFifo\(3) <= NOT \u_fifo_out|adrFifo\(3);
\ALT_INV_state.S_LOAD_DATA~q\ <= NOT \state.S_LOAD_DATA~q\;
\ALT_INV_buffer_8x8[2][0]~q\ <= NOT \buffer_8x8[2][0]~q\;
\ALT_INV_state.S_DONE~q\ <= NOT \state.S_DONE~q\;
\ALT_INV_Irq_DPC_n~0_combout\ <= NOT \Irq_DPC_n~0_combout\;
ALT_INV_dpc_status(7) <= NOT dpc_status(7);
ALT_INV_dpc_status(6) <= NOT dpc_status(6);
ALT_INV_dpc_status(5) <= NOT dpc_status(5);
ALT_INV_dpc_control(5) <= NOT dpc_control(5);
ALT_INV_dpc_control(0) <= NOT dpc_control(0);
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_buffer_8x8~63_combout\ <= NOT \buffer_8x8~63_combout\;
\u_fifo_in|ALT_INV_Fifo[6][7]~q\ <= NOT \u_fifo_in|Fifo[6][7]~q\;
\u_fifo_in|ALT_INV_Fifo[6][6]~q\ <= NOT \u_fifo_in|Fifo[6][6]~q\;
\u_fifo_in|ALT_INV_Fifo[6][5]~q\ <= NOT \u_fifo_in|Fifo[6][5]~q\;
\u_fifo_in|ALT_INV_Fifo[6][4]~q\ <= NOT \u_fifo_in|Fifo[6][4]~q\;
\u_fifo_in|ALT_INV_Fifo[6][3]~q\ <= NOT \u_fifo_in|Fifo[6][3]~q\;
\u_fifo_in|ALT_INV_Fifo[6][2]~q\ <= NOT \u_fifo_in|Fifo[6][2]~q\;
\u_fifo_in|ALT_INV_Fifo[6][1]~q\ <= NOT \u_fifo_in|Fifo[6][1]~q\;
\u_fifo_in|ALT_INV_Fifo[6][0]~q\ <= NOT \u_fifo_in|Fifo[6][0]~q\;
\u_fifo_in|ALT_INV_Fifo[5][7]~q\ <= NOT \u_fifo_in|Fifo[5][7]~q\;
\u_fifo_in|ALT_INV_Fifo[5][6]~q\ <= NOT \u_fifo_in|Fifo[5][6]~q\;
\u_fifo_in|ALT_INV_Fifo[5][5]~q\ <= NOT \u_fifo_in|Fifo[5][5]~q\;
\u_fifo_in|ALT_INV_Fifo[5][4]~q\ <= NOT \u_fifo_in|Fifo[5][4]~q\;
\u_fifo_in|ALT_INV_Fifo[5][3]~q\ <= NOT \u_fifo_in|Fifo[5][3]~q\;
\u_fifo_in|ALT_INV_Fifo[5][2]~q\ <= NOT \u_fifo_in|Fifo[5][2]~q\;
\u_fifo_in|ALT_INV_Fifo[5][1]~q\ <= NOT \u_fifo_in|Fifo[5][1]~q\;
\u_fifo_in|ALT_INV_Fifo[5][0]~q\ <= NOT \u_fifo_in|Fifo[5][0]~q\;
\u_fifo_in|ALT_INV_Fifo[4][7]~q\ <= NOT \u_fifo_in|Fifo[4][7]~q\;
\u_fifo_out|ALT_INV_Fifo[6][7]~q\ <= NOT \u_fifo_out|Fifo[6][7]~q\;
\u_fifo_in|ALT_INV_Fifo[4][6]~q\ <= NOT \u_fifo_in|Fifo[4][6]~q\;
\u_fifo_out|ALT_INV_Fifo[6][6]~q\ <= NOT \u_fifo_out|Fifo[6][6]~q\;
\u_fifo_in|ALT_INV_Fifo[4][5]~q\ <= NOT \u_fifo_in|Fifo[4][5]~q\;
\u_fifo_out|ALT_INV_Fifo[6][5]~q\ <= NOT \u_fifo_out|Fifo[6][5]~q\;
\u_fifo_in|ALT_INV_Fifo[4][4]~q\ <= NOT \u_fifo_in|Fifo[4][4]~q\;
\u_fifo_out|ALT_INV_Fifo[6][4]~q\ <= NOT \u_fifo_out|Fifo[6][4]~q\;
\u_fifo_in|ALT_INV_Fifo[4][3]~q\ <= NOT \u_fifo_in|Fifo[4][3]~q\;
\u_fifo_out|ALT_INV_Fifo[6][3]~q\ <= NOT \u_fifo_out|Fifo[6][3]~q\;
\u_fifo_in|ALT_INV_Fifo[4][2]~q\ <= NOT \u_fifo_in|Fifo[4][2]~q\;
\u_fifo_out|ALT_INV_Fifo[6][2]~q\ <= NOT \u_fifo_out|Fifo[6][2]~q\;
\u_fifo_in|ALT_INV_Fifo[4][1]~q\ <= NOT \u_fifo_in|Fifo[4][1]~q\;
\u_fifo_out|ALT_INV_Fifo[6][1]~q\ <= NOT \u_fifo_out|Fifo[6][1]~q\;
\u_fifo_in|ALT_INV_Fifo[4][0]~q\ <= NOT \u_fifo_in|Fifo[4][0]~q\;
\u_fifo_out|ALT_INV_Fifo[6][0]~q\ <= NOT \u_fifo_out|Fifo[6][0]~q\;
\u_fifo_in|ALT_INV_Fifo[3][7]~q\ <= NOT \u_fifo_in|Fifo[3][7]~q\;
\u_fifo_out|ALT_INV_Fifo[5][7]~q\ <= NOT \u_fifo_out|Fifo[5][7]~q\;
\u_fifo_in|ALT_INV_Fifo[3][6]~q\ <= NOT \u_fifo_in|Fifo[3][6]~q\;
\u_fifo_out|ALT_INV_Fifo[5][6]~q\ <= NOT \u_fifo_out|Fifo[5][6]~q\;
\u_fifo_in|ALT_INV_Fifo[3][5]~q\ <= NOT \u_fifo_in|Fifo[3][5]~q\;
\u_fifo_out|ALT_INV_Fifo[5][5]~q\ <= NOT \u_fifo_out|Fifo[5][5]~q\;
\u_fifo_in|ALT_INV_Fifo[3][4]~q\ <= NOT \u_fifo_in|Fifo[3][4]~q\;
\u_fifo_out|ALT_INV_Fifo[5][4]~q\ <= NOT \u_fifo_out|Fifo[5][4]~q\;
\u_fifo_in|ALT_INV_Fifo[3][3]~q\ <= NOT \u_fifo_in|Fifo[3][3]~q\;
\u_fifo_out|ALT_INV_Fifo[5][3]~q\ <= NOT \u_fifo_out|Fifo[5][3]~q\;
\u_fifo_in|ALT_INV_Fifo[3][2]~q\ <= NOT \u_fifo_in|Fifo[3][2]~q\;
\u_fifo_out|ALT_INV_Fifo[5][2]~q\ <= NOT \u_fifo_out|Fifo[5][2]~q\;
\u_fifo_in|ALT_INV_Fifo[3][1]~q\ <= NOT \u_fifo_in|Fifo[3][1]~q\;
\u_fifo_out|ALT_INV_Fifo[5][1]~q\ <= NOT \u_fifo_out|Fifo[5][1]~q\;
\u_fifo_in|ALT_INV_Fifo[3][0]~q\ <= NOT \u_fifo_in|Fifo[3][0]~q\;
\u_fifo_out|ALT_INV_Fifo[5][0]~q\ <= NOT \u_fifo_out|Fifo[5][0]~q\;
\u_fifo_in|ALT_INV_Fifo[2][7]~q\ <= NOT \u_fifo_in|Fifo[2][7]~q\;
\u_fifo_out|ALT_INV_Fifo[4][7]~q\ <= NOT \u_fifo_out|Fifo[4][7]~q\;
\u_fifo_in|ALT_INV_Fifo[2][6]~q\ <= NOT \u_fifo_in|Fifo[2][6]~q\;
\u_fifo_out|ALT_INV_Fifo[4][6]~q\ <= NOT \u_fifo_out|Fifo[4][6]~q\;
\u_fifo_in|ALT_INV_Fifo[2][5]~q\ <= NOT \u_fifo_in|Fifo[2][5]~q\;
\u_fifo_out|ALT_INV_Fifo[4][5]~q\ <= NOT \u_fifo_out|Fifo[4][5]~q\;
\u_fifo_in|ALT_INV_Fifo[2][4]~q\ <= NOT \u_fifo_in|Fifo[2][4]~q\;
\u_fifo_out|ALT_INV_Fifo[4][4]~q\ <= NOT \u_fifo_out|Fifo[4][4]~q\;
\u_fifo_in|ALT_INV_Fifo[2][3]~q\ <= NOT \u_fifo_in|Fifo[2][3]~q\;
\u_fifo_out|ALT_INV_Fifo[4][3]~q\ <= NOT \u_fifo_out|Fifo[4][3]~q\;
\u_fifo_in|ALT_INV_Fifo[2][2]~q\ <= NOT \u_fifo_in|Fifo[2][2]~q\;
\u_fifo_out|ALT_INV_Fifo[4][2]~q\ <= NOT \u_fifo_out|Fifo[4][2]~q\;
\u_fifo_in|ALT_INV_Fifo[2][1]~q\ <= NOT \u_fifo_in|Fifo[2][1]~q\;
\u_fifo_out|ALT_INV_Fifo[4][1]~q\ <= NOT \u_fifo_out|Fifo[4][1]~q\;
\u_fifo_in|ALT_INV_Fifo[2][0]~q\ <= NOT \u_fifo_in|Fifo[2][0]~q\;
\u_fifo_out|ALT_INV_Fifo[4][0]~q\ <= NOT \u_fifo_out|Fifo[4][0]~q\;
\u_fifo_in|ALT_INV_Fifo[1][7]~q\ <= NOT \u_fifo_in|Fifo[1][7]~q\;
\u_fifo_out|ALT_INV_Fifo[3][7]~q\ <= NOT \u_fifo_out|Fifo[3][7]~q\;
\u_fifo_in|ALT_INV_Fifo[1][6]~q\ <= NOT \u_fifo_in|Fifo[1][6]~q\;
\u_fifo_out|ALT_INV_Fifo[3][6]~q\ <= NOT \u_fifo_out|Fifo[3][6]~q\;
\u_fifo_in|ALT_INV_Fifo[1][5]~q\ <= NOT \u_fifo_in|Fifo[1][5]~q\;
\u_fifo_out|ALT_INV_Fifo[3][5]~q\ <= NOT \u_fifo_out|Fifo[3][5]~q\;
\u_fifo_in|ALT_INV_Fifo[1][4]~q\ <= NOT \u_fifo_in|Fifo[1][4]~q\;
\u_fifo_out|ALT_INV_Fifo[3][4]~q\ <= NOT \u_fifo_out|Fifo[3][4]~q\;
\u_fifo_in|ALT_INV_Fifo[1][3]~q\ <= NOT \u_fifo_in|Fifo[1][3]~q\;
\u_fifo_out|ALT_INV_Fifo[3][3]~q\ <= NOT \u_fifo_out|Fifo[3][3]~q\;
\u_fifo_in|ALT_INV_Fifo[1][2]~q\ <= NOT \u_fifo_in|Fifo[1][2]~q\;
\u_fifo_out|ALT_INV_Fifo[3][2]~q\ <= NOT \u_fifo_out|Fifo[3][2]~q\;
\u_fifo_in|ALT_INV_Fifo[1][1]~q\ <= NOT \u_fifo_in|Fifo[1][1]~q\;
\u_fifo_out|ALT_INV_Fifo[3][1]~q\ <= NOT \u_fifo_out|Fifo[3][1]~q\;
\u_fifo_in|ALT_INV_Fifo[1][0]~q\ <= NOT \u_fifo_in|Fifo[1][0]~q\;
\u_fifo_out|ALT_INV_Fifo[3][0]~q\ <= NOT \u_fifo_out|Fifo[3][0]~q\;
\u_fifo_in|ALT_INV_Fifo[0][7]~q\ <= NOT \u_fifo_in|Fifo[0][7]~q\;
\u_fifo_out|ALT_INV_Fifo[2][7]~q\ <= NOT \u_fifo_out|Fifo[2][7]~q\;
\u_fifo_in|ALT_INV_Fifo[0][6]~q\ <= NOT \u_fifo_in|Fifo[0][6]~q\;
\u_fifo_out|ALT_INV_Fifo[2][6]~q\ <= NOT \u_fifo_out|Fifo[2][6]~q\;
\u_fifo_in|ALT_INV_Fifo[0][5]~q\ <= NOT \u_fifo_in|Fifo[0][5]~q\;
\u_fifo_out|ALT_INV_Fifo[2][5]~q\ <= NOT \u_fifo_out|Fifo[2][5]~q\;
\u_fifo_in|ALT_INV_Fifo[0][4]~q\ <= NOT \u_fifo_in|Fifo[0][4]~q\;
\u_fifo_out|ALT_INV_Fifo[2][4]~q\ <= NOT \u_fifo_out|Fifo[2][4]~q\;
\u_fifo_in|ALT_INV_Fifo[0][3]~q\ <= NOT \u_fifo_in|Fifo[0][3]~q\;
\u_fifo_out|ALT_INV_Fifo[2][3]~q\ <= NOT \u_fifo_out|Fifo[2][3]~q\;
\u_fifo_in|ALT_INV_Fifo[0][2]~q\ <= NOT \u_fifo_in|Fifo[0][2]~q\;
\u_fifo_out|ALT_INV_Fifo[2][2]~q\ <= NOT \u_fifo_out|Fifo[2][2]~q\;
\u_fifo_in|ALT_INV_Fifo[0][1]~q\ <= NOT \u_fifo_in|Fifo[0][1]~q\;
\u_fifo_out|ALT_INV_Fifo[2][1]~q\ <= NOT \u_fifo_out|Fifo[2][1]~q\;
\ALT_INV_Add12~21_sumout\ <= NOT \Add12~21_sumout\;
\ALT_INV_Add12~17_sumout\ <= NOT \Add12~17_sumout\;
\ALT_INV_Add12~13_sumout\ <= NOT \Add12~13_sumout\;
\ALT_INV_Add12~9_sumout\ <= NOT \Add12~9_sumout\;
\ALT_INV_Add12~5_sumout\ <= NOT \Add12~5_sumout\;
\ALT_INV_Add12~1_sumout\ <= NOT \Add12~1_sumout\;
\u_fifo_in|ALT_INV_Fifo[0][0]~q\ <= NOT \u_fifo_in|Fifo[0][0]~q\;
\u_fifo_out|ALT_INV_Fifo[2][0]~q\ <= NOT \u_fifo_out|Fifo[2][0]~q\;
\u_fifo_out|ALT_INV_Fifo[1][7]~q\ <= NOT \u_fifo_out|Fifo[1][7]~q\;
\u_fifo_out|ALT_INV_Fifo[1][6]~q\ <= NOT \u_fifo_out|Fifo[1][6]~q\;
\u_fifo_out|ALT_INV_Fifo[1][5]~q\ <= NOT \u_fifo_out|Fifo[1][5]~q\;
\u_fifo_out|ALT_INV_Fifo[1][4]~q\ <= NOT \u_fifo_out|Fifo[1][4]~q\;
\u_fifo_out|ALT_INV_Fifo[1][3]~q\ <= NOT \u_fifo_out|Fifo[1][3]~q\;
\u_fifo_out|ALT_INV_Fifo[1][2]~q\ <= NOT \u_fifo_out|Fifo[1][2]~q\;
\u_fifo_out|ALT_INV_Fifo[1][1]~q\ <= NOT \u_fifo_out|Fifo[1][1]~q\;
ALT_INV_write_cnt(0) <= NOT write_cnt(0);
\u_fifo_out|ALT_INV_Fifo[1][0]~q\ <= NOT \u_fifo_out|Fifo[1][0]~q\;
\u_fifo_out|ALT_INV_Fifo[0][7]~q\ <= NOT \u_fifo_out|Fifo[0][7]~q\;
\u_fifo_out|ALT_INV_Fifo[0][6]~q\ <= NOT \u_fifo_out|Fifo[0][6]~q\;
\u_fifo_out|ALT_INV_Fifo[0][5]~q\ <= NOT \u_fifo_out|Fifo[0][5]~q\;
\u_fifo_out|ALT_INV_Fifo[0][4]~q\ <= NOT \u_fifo_out|Fifo[0][4]~q\;
\u_fifo_out|ALT_INV_Fifo[0][3]~q\ <= NOT \u_fifo_out|Fifo[0][3]~q\;
\u_fifo_out|ALT_INV_Fifo[0][2]~q\ <= NOT \u_fifo_out|Fifo[0][2]~q\;
\u_fifo_out|ALT_INV_Fifo[0][1]~q\ <= NOT \u_fifo_out|Fifo[0][1]~q\;
\u_fifo_out|ALT_INV_Fifo[0][0]~q\ <= NOT \u_fifo_out|Fifo[0][0]~q\;
\ALT_INV_load_cnt[0]~DUPLICATE_q\ <= NOT \load_cnt[0]~DUPLICATE_q\;
\ALT_INV_load_cnt[1]~DUPLICATE_q\ <= NOT \load_cnt[1]~DUPLICATE_q\;
\ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\ <= NOT \state.S_LOAD_BUFFER~DUPLICATE_q\;
\ALT_INV_load_cnt[3]~DUPLICATE_q\ <= NOT \load_cnt[3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[3][7]~DUPLICATE_q\ <= NOT \buffer_8x8[3][7]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][7]~DUPLICATE_q\ <= NOT \buffer_8x8[4][7]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][7]~DUPLICATE_q\ <= NOT \buffer_8x8[2][7]~DUPLICATE_q\;
\ALT_INV_state.S_CORR~DUPLICATE_q\ <= NOT \state.S_CORR~DUPLICATE_q\;
\ALT_INV_buffer_8x8[0][6]~DUPLICATE_q\ <= NOT \buffer_8x8[0][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][6]~DUPLICATE_q\ <= NOT \buffer_8x8[1][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[3][6]~DUPLICATE_q\ <= NOT \buffer_8x8[3][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][6]~DUPLICATE_q\ <= NOT \buffer_8x8[6][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[5][6]~DUPLICATE_q\ <= NOT \buffer_8x8[5][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][6]~DUPLICATE_q\ <= NOT \buffer_8x8[4][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][6]~DUPLICATE_q\ <= NOT \buffer_8x8[2][6]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[0][5]~DUPLICATE_q\ <= NOT \buffer_8x8[0][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][5]~DUPLICATE_q\ <= NOT \buffer_8x8[1][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[3][5]~DUPLICATE_q\ <= NOT \buffer_8x8[3][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][5]~DUPLICATE_q\ <= NOT \buffer_8x8[6][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[5][5]~DUPLICATE_q\ <= NOT \buffer_8x8[5][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][5]~DUPLICATE_q\ <= NOT \buffer_8x8[4][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][5]~DUPLICATE_q\ <= NOT \buffer_8x8[2][5]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[0][4]~DUPLICATE_q\ <= NOT \buffer_8x8[0][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][4]~DUPLICATE_q\ <= NOT \buffer_8x8[1][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][4]~DUPLICATE_q\ <= NOT \buffer_8x8[6][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[5][4]~DUPLICATE_q\ <= NOT \buffer_8x8[5][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][4]~DUPLICATE_q\ <= NOT \buffer_8x8[4][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][4]~DUPLICATE_q\ <= NOT \buffer_8x8[2][4]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[0][3]~DUPLICATE_q\ <= NOT \buffer_8x8[0][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][3]~DUPLICATE_q\ <= NOT \buffer_8x8[1][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[7][3]~DUPLICATE_q\ <= NOT \buffer_8x8[7][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][3]~DUPLICATE_q\ <= NOT \buffer_8x8[6][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[5][3]~DUPLICATE_q\ <= NOT \buffer_8x8[5][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][3]~DUPLICATE_q\ <= NOT \buffer_8x8[2][3]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[0][2]~DUPLICATE_q\ <= NOT \buffer_8x8[0][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][2]~DUPLICATE_q\ <= NOT \buffer_8x8[1][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[3][2]~DUPLICATE_q\ <= NOT \buffer_8x8[3][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[7][2]~DUPLICATE_q\ <= NOT \buffer_8x8[7][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][2]~DUPLICATE_q\ <= NOT \buffer_8x8[6][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][2]~DUPLICATE_q\ <= NOT \buffer_8x8[2][2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][1]~DUPLICATE_q\ <= NOT \buffer_8x8[1][1]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[3][1]~DUPLICATE_q\ <= NOT \buffer_8x8[3][1]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[7][1]~DUPLICATE_q\ <= NOT \buffer_8x8[7][1]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][1]~DUPLICATE_q\ <= NOT \buffer_8x8[6][1]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][1]~DUPLICATE_q\ <= NOT \buffer_8x8[4][1]~DUPLICATE_q\;
\ALT_INV_state.S_IDLE~DUPLICATE_q\ <= NOT \state.S_IDLE~DUPLICATE_q\;
\ALT_INV_buffer_8x8[1][0]~DUPLICATE_q\ <= NOT \buffer_8x8[1][0]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[6][0]~DUPLICATE_q\ <= NOT \buffer_8x8[6][0]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[5][0]~DUPLICATE_q\ <= NOT \buffer_8x8[5][0]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[4][0]~DUPLICATE_q\ <= NOT \buffer_8x8[4][0]~DUPLICATE_q\;
\ALT_INV_write_cnt[1]~DUPLICATE_q\ <= NOT \write_cnt[1]~DUPLICATE_q\;
\ALT_INV_write_cnt[2]~DUPLICATE_q\ <= NOT \write_cnt[2]~DUPLICATE_q\;
\ALT_INV_buffer_8x8[2][0]~DUPLICATE_q\ <= NOT \buffer_8x8[2][0]~DUPLICATE_q\;
\ALT_INV_state.S_DONE~DUPLICATE_q\ <= NOT \state.S_DONE~DUPLICATE_q\;
\ALT_INV_D_in[4]~input_o\ <= NOT \D_in[4]~input_o\;
\ALT_INV_D_in[1]~input_o\ <= NOT \D_in[1]~input_o\;
\ALT_INV_D_in[5]~input_o\ <= NOT \D_in[5]~input_o\;
\ALT_INV_Rd~input_o\ <= NOT \Rd~input_o\;
\ALT_INV_D_in[0]~input_o\ <= NOT \D_in[0]~input_o\;
\ALT_INV_Wr~input_o\ <= NOT \Wr~input_o\;
\ALT_INV_Addr[1]~input_o\ <= NOT \Addr[1]~input_o\;
\ALT_INV_Addr[0]~input_o\ <= NOT \Addr[0]~input_o\;
\ALT_INV_Selector64~6_combout\ <= NOT \Selector64~6_combout\;
\ALT_INV_Selector64~5_combout\ <= NOT \Selector64~5_combout\;
\u_fifo_in|ALT_INV_Fifo[7][7]~q\ <= NOT \u_fifo_in|Fifo[7][7]~q\;
\u_fifo_in|ALT_INV_Fifo[7][6]~q\ <= NOT \u_fifo_in|Fifo[7][6]~q\;
\u_fifo_in|ALT_INV_Fifo[7][5]~q\ <= NOT \u_fifo_in|Fifo[7][5]~q\;
\u_fifo_in|ALT_INV_Fifo[7][4]~q\ <= NOT \u_fifo_in|Fifo[7][4]~q\;
\u_fifo_in|ALT_INV_Fifo[7][3]~q\ <= NOT \u_fifo_in|Fifo[7][3]~q\;
\u_fifo_in|ALT_INV_Fifo[7][2]~q\ <= NOT \u_fifo_in|Fifo[7][2]~q\;
\u_fifo_in|ALT_INV_Fifo[7][1]~q\ <= NOT \u_fifo_in|Fifo[7][1]~q\;
\u_fifo_in|ALT_INV_Fifo[7][0]~q\ <= NOT \u_fifo_in|Fifo[7][0]~q\;
\u_fifo_out|ALT_INV_Fifo[7][7]~q\ <= NOT \u_fifo_out|Fifo[7][7]~q\;
\u_fifo_out|ALT_INV_Fifo[7][6]~q\ <= NOT \u_fifo_out|Fifo[7][6]~q\;
\u_fifo_out|ALT_INV_Fifo[7][5]~q\ <= NOT \u_fifo_out|Fifo[7][5]~q\;
\u_fifo_out|ALT_INV_Fifo[7][4]~q\ <= NOT \u_fifo_out|Fifo[7][4]~q\;
\u_fifo_out|ALT_INV_Fifo[7][3]~q\ <= NOT \u_fifo_out|Fifo[7][3]~q\;
\u_fifo_out|ALT_INV_Fifo[7][2]~q\ <= NOT \u_fifo_out|Fifo[7][2]~q\;
\u_fifo_out|ALT_INV_Fifo[7][1]~q\ <= NOT \u_fifo_out|Fifo[7][1]~q\;
\u_fifo_out|ALT_INV_Fifo[6][0]~18_combout\ <= NOT \u_fifo_out|Fifo[6][0]~18_combout\;
\u_fifo_out|ALT_INV_Fifo[7][0]~q\ <= NOT \u_fifo_out|Fifo[7][0]~q\;
\u_fifo_out|ALT_INV_Fifo[5][0]~15_combout\ <= NOT \u_fifo_out|Fifo[5][0]~15_combout\;
\u_fifo_out|ALT_INV_Fifo[4][0]~12_combout\ <= NOT \u_fifo_out|Fifo[4][0]~12_combout\;
\u_fifo_out|ALT_INV_Fifo[3][0]~9_combout\ <= NOT \u_fifo_out|Fifo[3][0]~9_combout\;
\ALT_INV_c~12_combout\ <= NOT \c~12_combout\;
\ALT_INV_c~11_combout\ <= NOT \c~11_combout\;
\ALT_INV_c~10_combout\ <= NOT \c~10_combout\;
\ALT_INV_Selector62~0_combout\ <= NOT \Selector62~0_combout\;
\ALT_INV_Selector61~2_combout\ <= NOT \Selector61~2_combout\;
\ALT_INV_Add5~0_combout\ <= NOT \Add5~0_combout\;
\ALT_INV_c~9_combout\ <= NOT \c~9_combout\;
\ALT_INV_c~8_combout\ <= NOT \c~8_combout\;
\u_fifo_out|ALT_INV_Fifo[2][0]~6_combout\ <= NOT \u_fifo_out|Fifo[2][0]~6_combout\;
\ALT_INV_Selector10~2_combout\ <= NOT \Selector10~2_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector31~1_combout\ <= NOT \Selector31~1_combout\;
\ALT_INV_Selector52~1_combout\ <= NOT \Selector52~1_combout\;
\ALT_INV_Selector45~1_combout\ <= NOT \Selector45~1_combout\;
\ALT_INV_Selector38~1_combout\ <= NOT \Selector38~1_combout\;
\ALT_INV_Selector24~1_combout\ <= NOT \Selector24~1_combout\;
\ALT_INV_Decoder2~6_combout\ <= NOT \Decoder2~6_combout\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Selector32~0_combout\ <= NOT \Selector32~0_combout\;
\ALT_INV_Selector53~0_combout\ <= NOT \Selector53~0_combout\;
\ALT_INV_Selector46~0_combout\ <= NOT \Selector46~0_combout\;
\ALT_INV_Selector39~0_combout\ <= NOT \Selector39~0_combout\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_Decoder2~5_combout\ <= NOT \Decoder2~5_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Selector33~0_combout\ <= NOT \Selector33~0_combout\;
\ALT_INV_Selector54~0_combout\ <= NOT \Selector54~0_combout\;
\ALT_INV_Selector47~0_combout\ <= NOT \Selector47~0_combout\;
\ALT_INV_Selector40~0_combout\ <= NOT \Selector40~0_combout\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_Decoder2~4_combout\ <= NOT \Decoder2~4_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_Selector34~0_combout\ <= NOT \Selector34~0_combout\;
\ALT_INV_Selector55~0_combout\ <= NOT \Selector55~0_combout\;
\ALT_INV_Selector48~0_combout\ <= NOT \Selector48~0_combout\;
\ALT_INV_Selector41~0_combout\ <= NOT \Selector41~0_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Decoder2~3_combout\ <= NOT \Decoder2~3_combout\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector35~0_combout\ <= NOT \Selector35~0_combout\;
\ALT_INV_Selector56~0_combout\ <= NOT \Selector56~0_combout\;
\ALT_INV_Selector49~0_combout\ <= NOT \Selector49~0_combout\;
\ALT_INV_Selector42~0_combout\ <= NOT \Selector42~0_combout\;
\ALT_INV_Selector28~0_combout\ <= NOT \Selector28~0_combout\;
\ALT_INV_Decoder2~2_combout\ <= NOT \Decoder2~2_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
\ALT_INV_Selector36~0_combout\ <= NOT \Selector36~0_combout\;
\ALT_INV_Selector57~0_combout\ <= NOT \Selector57~0_combout\;
\ALT_INV_Selector50~0_combout\ <= NOT \Selector50~0_combout\;
\ALT_INV_Selector43~0_combout\ <= NOT \Selector43~0_combout\;
\ALT_INV_Selector29~0_combout\ <= NOT \Selector29~0_combout\;
\ALT_INV_Decoder2~1_combout\ <= NOT \Decoder2~1_combout\;
\ALT_INV_process_3~0_combout\ <= NOT \process_3~0_combout\;
\ALT_INV_in_fifo_wr~0_combout\ <= NOT \in_fifo_wr~0_combout\;
\ALT_INV_Selector65~0_combout\ <= NOT \Selector65~0_combout\;
\ALT_INV_process_1~32_combout\ <= NOT \process_1~32_combout\;
\ALT_INV_Selector63~1_combout\ <= NOT \Selector63~1_combout\;
\ALT_INV_Selector63~0_combout\ <= NOT \Selector63~0_combout\;
\ALT_INV_Selector16~1_combout\ <= NOT \Selector16~1_combout\;
\ALT_INV_Selector16~0_combout\ <= NOT \Selector16~0_combout\;
\ALT_INV_Selector10~1_combout\ <= NOT \Selector10~1_combout\;
\ALT_INV_Selector23~1_combout\ <= NOT \Selector23~1_combout\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector37~1_combout\ <= NOT \Selector37~1_combout\;
\ALT_INV_Selector37~0_combout\ <= NOT \Selector37~0_combout\;
\ALT_INV_Equal8~0_combout\ <= NOT \Equal8~0_combout\;
\ALT_INV_Selector31~0_combout\ <= NOT \Selector31~0_combout\;
\ALT_INV_Selector58~1_combout\ <= NOT \Selector58~1_combout\;
\ALT_INV_Selector58~0_combout\ <= NOT \Selector58~0_combout\;
\ALT_INV_Selector52~0_combout\ <= NOT \Selector52~0_combout\;
\ALT_INV_Selector51~1_combout\ <= NOT \Selector51~1_combout\;
\ALT_INV_Selector51~0_combout\ <= NOT \Selector51~0_combout\;
\ALT_INV_Selector45~0_combout\ <= NOT \Selector45~0_combout\;
\ALT_INV_Selector44~1_combout\ <= NOT \Selector44~1_combout\;
\ALT_INV_Selector44~0_combout\ <= NOT \Selector44~0_combout\;
\ALT_INV_buffer_8x8[7][6]~6_combout\ <= NOT \buffer_8x8[7][6]~6_combout\;
\ALT_INV_Selector38~0_combout\ <= NOT \Selector38~0_combout\;
\u_fifo_out|ALT_INV_adrFifo~1_combout\ <= NOT \u_fifo_out|adrFifo~1_combout\;
\u_fifo_out|ALT_INV_adrFifo~0_combout\ <= NOT \u_fifo_out|adrFifo~0_combout\;
\ALT_INV_Selector59~0_combout\ <= NOT \Selector59~0_combout\;
\ALT_INV_Selector64~3_combout\ <= NOT \Selector64~3_combout\;
\ALT_INV_Selector64~2_combout\ <= NOT \Selector64~2_combout\;
\ALT_INV_c~7_combout\ <= NOT \c~7_combout\;
\ALT_INV_c~6_combout\ <= NOT \c~6_combout\;
\ALT_INV_c~5_combout\ <= NOT \c~5_combout\;
\ALT_INV_c~4_combout\ <= NOT \c~4_combout\;
\ALT_INV_c~3_combout\ <= NOT \c~3_combout\;
\ALT_INV_process_1~31_combout\ <= NOT \process_1~31_combout\;
\ALT_INV_process_1~30_combout\ <= NOT \process_1~30_combout\;
\ALT_INV_c~2_combout\ <= NOT \c~2_combout\;
\ALT_INV_process_1~29_combout\ <= NOT \process_1~29_combout\;
\ALT_INV_process_1~28_combout\ <= NOT \process_1~28_combout\;
\ALT_INV_c~1_combout\ <= NOT \c~1_combout\;
\ALT_INV_c~0_combout\ <= NOT \c~0_combout\;
\ALT_INV_Selector64~1_combout\ <= NOT \Selector64~1_combout\;
\ALT_INV_process_1~27_combout\ <= NOT \process_1~27_combout\;
\ALT_INV_process_1~26_combout\ <= NOT \process_1~26_combout\;
\ALT_INV_process_1~25_combout\ <= NOT \process_1~25_combout\;
\ALT_INV_process_1~24_combout\ <= NOT \process_1~24_combout\;
\ALT_INV_state.S_ANALYSE~q\ <= NOT \state.S_ANALYSE~q\;
\ALT_INV_Selector64~0_combout\ <= NOT \Selector64~0_combout\;
\ALT_INV_Selector30~2_combout\ <= NOT \Selector30~2_combout\;
\ALT_INV_Selector30~1_combout\ <= NOT \Selector30~1_combout\;
ALT_INV_load_cnt(0) <= NOT load_cnt(0);
ALT_INV_load_cnt(1) <= NOT load_cnt(1);
\ALT_INV_Selector30~0_combout\ <= NOT \Selector30~0_combout\;
\ALT_INV_state.S_LOAD_BUFFER~q\ <= NOT \state.S_LOAD_BUFFER~q\;
ALT_INV_load_cnt(3) <= NOT load_cnt(3);
ALT_INV_load_cnt(2) <= NOT load_cnt(2);
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Decoder2~0_combout\ <= NOT \Decoder2~0_combout\;
\ALT_INV_buffer_8x8~4_combout\ <= NOT \buffer_8x8~4_combout\;
\ALT_INV_buffer_8x8~3_combout\ <= NOT \buffer_8x8~3_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_buffer_8x8~2_combout\ <= NOT \buffer_8x8~2_combout\;
\ALT_INV_buffer_8x8~1_combout\ <= NOT \buffer_8x8~1_combout\;
\ALT_INV_buffer_8x8~0_combout\ <= NOT \buffer_8x8~0_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux16~0_combout\ <= NOT \Mux16~0_combout\;
\ALT_INV_idx_l[0]~3_combout\ <= NOT \idx_l[0]~3_combout\;
\ALT_INV_process_1~23_combout\ <= NOT \process_1~23_combout\;
\ALT_INV_process_1~22_combout\ <= NOT \process_1~22_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\ALT_INV_idx_c[1]~2_combout\ <= NOT \idx_c[1]~2_combout\;
\ALT_INV_idx_c[0]~1_combout\ <= NOT \idx_c[0]~1_combout\;

-- Location: IOOBUF_X54_Y16_N39
\D_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(0));

-- Location: IOOBUF_X54_Y21_N22
\D_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(1));

-- Location: IOOBUF_X54_Y20_N56
\D_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(2));

-- Location: IOOBUF_X54_Y21_N5
\D_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(3));

-- Location: IOOBUF_X54_Y21_N56
\D_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(4));

-- Location: IOOBUF_X54_Y20_N39
\D_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(5));

-- Location: IOOBUF_X54_Y21_N39
\D_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(6));

-- Location: IOOBUF_X54_Y19_N56
\D_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_D_out(7));

-- Location: IOOBUF_X54_Y20_N22
\Irq_DPC_n~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Irq_DPC_n~0_combout\,
	devoe => ww_devoe,
	o => ww_Irq_DPC_n);

-- Location: IOIBUF_X54_Y19_N21
\Addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr(0),
	o => \Addr[0]~input_o\);

-- Location: IOIBUF_X54_Y19_N4
\Addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr(1),
	o => \Addr[1]~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G10
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y17_N38
\D_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(0),
	o => \D_in[0]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\Reset_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_n,
	o => \Reset_n~input_o\);

-- Location: FF_X48_Y18_N32
\write_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_cnt(2));

-- Location: FF_X50_Y19_N19
\state.S_IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector60~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_IDLE~DUPLICATE_q\);

-- Location: LABCELL_X48_Y18_N30
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( write_cnt(2) & ( \state.S_IDLE~DUPLICATE_q\ ) ) # ( !write_cnt(2) & ( \state.S_IDLE~DUPLICATE_q\ & ( (\state.S_LOAD_DATA~q\ & (\write_cnt[1]~DUPLICATE_q\ & write_cnt(0))) ) ) ) # ( write_cnt(2) & ( !\state.S_IDLE~DUPLICATE_q\ & ( 
-- \state.S_LOAD_DATA~q\ ) ) ) # ( !write_cnt(2) & ( !\state.S_IDLE~DUPLICATE_q\ & ( (\state.S_LOAD_DATA~q\ & (\write_cnt[1]~DUPLICATE_q\ & write_cnt(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101010101010100000001000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_DATA~q\,
	datab => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datac => ALT_INV_write_cnt(0),
	datae => ALT_INV_write_cnt(2),
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X48_Y18_N31
\write_cnt[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_cnt[2]~DUPLICATE_q\);

-- Location: FF_X49_Y17_N34
\write_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_cnt(1));

-- Location: MLABCELL_X49_Y17_N33
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( write_cnt(0) & ( (!\state.S_LOAD_DATA~q\ & (((\state.S_IDLE~DUPLICATE_q\ & write_cnt(1))))) # (\state.S_LOAD_DATA~q\ & (((!write_cnt(1))) # (\write_cnt[2]~DUPLICATE_q\))) ) ) # ( !write_cnt(0) & ( (write_cnt(1) & 
-- ((\state.S_LOAD_DATA~q\) # (\state.S_IDLE~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100001111001101010000111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datab => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datac => \ALT_INV_state.S_LOAD_DATA~q\,
	datad => ALT_INV_write_cnt(1),
	dataf => ALT_INV_write_cnt(0),
	combout => \Selector5~0_combout\);

-- Location: FF_X49_Y17_N35
\write_cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_cnt[1]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y17_N36
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \write_cnt[2]~DUPLICATE_q\ & ( (!\state.S_LOAD_DATA~q\ & ((\state.S_IDLE~DUPLICATE_q\))) # (\state.S_LOAD_DATA~q\ & (\write_cnt[1]~DUPLICATE_q\)) ) ) # ( !\write_cnt[2]~DUPLICATE_q\ & ( (\state.S_IDLE~DUPLICATE_q\ & 
-- !\state.S_LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datad => \ALT_INV_state.S_LOAD_DATA~q\,
	dataf => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	combout => \Selector6~1_combout\);

-- Location: FF_X49_Y17_N38
\write_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector6~1_combout\,
	asdata => \state.S_LOAD_DATA~q\,
	clrn => \Reset_n~input_o\,
	sload => ALT_INV_write_cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_cnt(0));

-- Location: LABCELL_X48_Y18_N39
\Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = ( \write_cnt[1]~DUPLICATE_q\ & ( write_cnt(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_write_cnt(2),
	dataf => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	combout => \Selector64~0_combout\);

-- Location: FF_X49_Y17_N14
\state.S_LOAD_BUFFER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector61~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LOAD_BUFFER~q\);

-- Location: MLABCELL_X49_Y17_N21
\Selector62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( (!\state.S_LOAD_BUFFER~q\ & !\state.S_LOAD_DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_LOAD_BUFFER~q\,
	datac => \ALT_INV_state.S_LOAD_DATA~q\,
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector62~0_combout\);

-- Location: FF_X49_Y17_N59
\load_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => load_cnt(3));

-- Location: MLABCELL_X49_Y17_N54
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( load_cnt(3) & ( (load_cnt(2) & ((\state.S_IDLE~DUPLICATE_q\) # (\state.S_LOAD_BUFFER~q\))) ) ) # ( !load_cnt(3) & ( (!\state.S_LOAD_BUFFER~q\ & (((\state.S_IDLE~DUPLICATE_q\ & load_cnt(2))))) # (\state.S_LOAD_BUFFER~q\ & 
-- (!\Equal8~0_combout\ $ (((!load_cnt(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100101110000100010010111000000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~0_combout\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~q\,
	datac => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datad => ALT_INV_load_cnt(2),
	dataf => ALT_INV_load_cnt(3),
	combout => \Selector1~0_combout\);

-- Location: FF_X49_Y17_N56
\load_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => load_cnt(2));

-- Location: MLABCELL_X49_Y17_N18
\Selector61~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~2_combout\ = ( !load_cnt(3) & ( (\state.S_LOAD_BUFFER~q\ & (load_cnt(2) & \Equal8~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_LOAD_BUFFER~q\,
	datac => ALT_INV_load_cnt(2),
	datad => \ALT_INV_Equal8~0_combout\,
	dataf => ALT_INV_load_cnt(3),
	combout => \Selector61~2_combout\);

-- Location: MLABCELL_X49_Y17_N45
\Selector62~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = ( \Selector6~0_combout\ & ( (!write_cnt(0) & (!\Selector62~0_combout\ & ((\state.S_ANALYSE~q\) # (\Selector61~2_combout\)))) ) ) # ( !\Selector6~0_combout\ & ( (!\Selector62~0_combout\ & ((\state.S_ANALYSE~q\) # 
-- (\Selector61~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_write_cnt(0),
	datab => \ALT_INV_Selector62~0_combout\,
	datac => \ALT_INV_Selector61~2_combout\,
	datad => \ALT_INV_state.S_ANALYSE~q\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector62~1_combout\);

-- Location: FF_X49_Y17_N46
\state.S_ANALYSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector62~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_ANALYSE~q\);

-- Location: LABCELL_X52_Y18_N48
\u_fifo_in|Fifo[7][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[7][0]~feeder_combout\ = ( \D_in[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_D_in[0]~input_o\,
	combout => \u_fifo_in|Fifo[7][0]~feeder_combout\);

-- Location: IOIBUF_X54_Y19_N38
\Wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Wr,
	o => \Wr~input_o\);

-- Location: LABCELL_X53_Y19_N12
\in_fifo_wr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_fifo_wr~0_combout\ = ( !\state.S_IDLE~DUPLICATE_q\ & ( (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \Wr~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Wr~input_o\,
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \in_fifo_wr~0_combout\);

-- Location: LABCELL_X50_Y19_N15
\u_fifo_in|adrFifo[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|adrFifo[1]~1_combout\ = ( \u_fifo_in|adrFifo\(1) & ( \u_fifo_in|adrFifo\(0) & ( (!\in_fifo_wr~0_combout\) # ((!\state.S_LOAD_BUFFER~DUPLICATE_q\ & \u_fifo_in|adrFifo\(3))) ) ) ) # ( !\u_fifo_in|adrFifo\(1) & ( \u_fifo_in|adrFifo\(0) & ( 
-- (\in_fifo_wr~0_combout\ & ((!\u_fifo_in|adrFifo\(3)) # (\state.S_LOAD_BUFFER~DUPLICATE_q\))) ) ) ) # ( \u_fifo_in|adrFifo\(1) & ( !\u_fifo_in|adrFifo\(0) & ( (!\state.S_LOAD_BUFFER~DUPLICATE_q\) # (\in_fifo_wr~0_combout\) ) ) ) # ( !\u_fifo_in|adrFifo\(1) 
-- & ( !\u_fifo_in|adrFifo\(0) & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (!\in_fifo_wr~0_combout\ & ((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100101110111011101100110011000100011100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \u_fifo_in|ALT_INV_adrFifo\(2),
	datad => \u_fifo_in|ALT_INV_adrFifo\(3),
	datae => \u_fifo_in|ALT_INV_adrFifo\(1),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(0),
	combout => \u_fifo_in|adrFifo[1]~1_combout\);

-- Location: FF_X50_Y19_N17
\u_fifo_in|adrFifo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|adrFifo[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|adrFifo\(1));

-- Location: LABCELL_X50_Y19_N51
\u_fifo_in|Mux64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Mux64~0_combout\ = ( \u_fifo_in|adrFifo\(3) & ( \u_fifo_in|adrFifo\(0) ) ) # ( !\u_fifo_in|adrFifo\(3) & ( \u_fifo_in|adrFifo\(0) & ( (!\state.S_LOAD_BUFFER~DUPLICATE_q\ & (\in_fifo_wr~0_combout\ & (\u_fifo_in|adrFifo\(1) & 
-- \u_fifo_in|adrFifo\(2)))) ) ) ) # ( \u_fifo_in|adrFifo\(3) & ( !\u_fifo_in|adrFifo\(0) & ( (!\state.S_LOAD_BUFFER~DUPLICATE_q\) # ((\u_fifo_in|adrFifo\(2)) # (\u_fifo_in|adrFifo\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111111111100000000000000101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \u_fifo_in|ALT_INV_adrFifo\(1),
	datad => \u_fifo_in|ALT_INV_adrFifo\(2),
	datae => \u_fifo_in|ALT_INV_adrFifo\(3),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(0),
	combout => \u_fifo_in|Mux64~0_combout\);

-- Location: FF_X50_Y19_N53
\u_fifo_in|adrFifo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Mux64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|adrFifo\(3));

-- Location: LABCELL_X50_Y19_N21
\process_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_3~0_combout\ = ( !\u_fifo_in|adrFifo\(0) & ( (!\u_fifo_in|adrFifo\(1) & !\u_fifo_in|adrFifo\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_adrFifo\(1),
	datad => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(0),
	combout => \process_3~0_combout\);

-- Location: LABCELL_X50_Y19_N6
\u_fifo_in|Mux67~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Mux67~0_combout\ = ( \process_3~0_combout\ & ( (!\u_fifo_in|adrFifo\(3) & (!\state.S_LOAD_BUFFER~DUPLICATE_q\ & (!\in_fifo_wr~0_combout\ $ (!\u_fifo_in|adrFifo\(0))))) # (\u_fifo_in|adrFifo\(3) & ((!\state.S_LOAD_BUFFER~DUPLICATE_q\ $ 
-- (!\u_fifo_in|adrFifo\(0))))) ) ) # ( !\process_3~0_combout\ & ( !\u_fifo_in|adrFifo\(0) $ (((!\state.S_LOAD_BUFFER~DUPLICATE_q\ & ((!\in_fifo_wr~0_combout\) # (\u_fifo_in|adrFifo\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111010000001011111101000000100101110100000010010111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(3),
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datad => \u_fifo_in|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_process_3~0_combout\,
	combout => \u_fifo_in|Mux67~0_combout\);

-- Location: FF_X50_Y19_N8
\u_fifo_in|adrFifo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Mux67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|adrFifo\(0));

-- Location: LABCELL_X52_Y19_N42
\u_fifo_in|adrFifo[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|adrFifo[2]~0_combout\ = ( \u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (!\u_fifo_in|adrFifo\(0) & ((\in_fifo_wr~0_combout\) # (\u_fifo_in|adrFifo\(1)))) # (\u_fifo_in|adrFifo\(0) & ((!\u_fifo_in|adrFifo\(1)) # 
-- (!\in_fifo_wr~0_combout\))) ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (!\u_fifo_in|adrFifo\(0) & (\u_fifo_in|adrFifo\(3) & (!\u_fifo_in|adrFifo\(1) & !\in_fifo_wr~0_combout\))) # (\u_fifo_in|adrFifo\(0) & 
-- (((\u_fifo_in|adrFifo\(1) & \in_fifo_wr~0_combout\)))) ) ) ) # ( \u_fifo_in|adrFifo\(2) & ( !\state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (!\u_fifo_in|adrFifo\(0)) # (((!\u_fifo_in|adrFifo\(1)) # (!\in_fifo_wr~0_combout\)) # (\u_fifo_in|adrFifo\(3))) ) ) ) # ( 
-- !\u_fifo_in|adrFifo\(2) & ( !\state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (\u_fifo_in|adrFifo\(0) & (!\u_fifo_in|adrFifo\(3) & (\u_fifo_in|adrFifo\(1) & \in_fifo_wr~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111111111101100100000000001010101111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(0),
	datab => \u_fifo_in|ALT_INV_adrFifo\(3),
	datac => \u_fifo_in|ALT_INV_adrFifo\(1),
	datad => \ALT_INV_in_fifo_wr~0_combout\,
	datae => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	combout => \u_fifo_in|adrFifo[2]~0_combout\);

-- Location: FF_X52_Y19_N44
\u_fifo_in|adrFifo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|adrFifo[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|adrFifo\(2));

-- Location: LABCELL_X52_Y19_N54
\u_fifo_in|Fifo[7][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[7][0]~7_combout\ = ( \u_fifo_in|adrFifo\(0) & ( \in_fifo_wr~0_combout\ & ( (\u_fifo_in|adrFifo\(2) & (\u_fifo_in|adrFifo\(1) & !\u_fifo_in|adrFifo\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_adrFifo\(2),
	datac => \u_fifo_in|ALT_INV_adrFifo\(1),
	datad => \u_fifo_in|ALT_INV_adrFifo\(3),
	datae => \u_fifo_in|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_in_fifo_wr~0_combout\,
	combout => \u_fifo_in|Fifo[7][0]~7_combout\);

-- Location: FF_X52_Y18_N49
\u_fifo_in|Fifo[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[7][0]~feeder_combout\,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][0]~q\);

-- Location: LABCELL_X53_Y18_N27
\u_fifo_in|Fifo[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][0]~feeder_combout\ = \u_fifo_in|Fifo[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[7][0]~q\,
	combout => \u_fifo_in|Fifo[6][0]~feeder_combout\);

-- Location: LABCELL_X50_Y19_N33
\u_fifo_in|Fifo[6][3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][3]~6_combout\ = ( \u_fifo_in|adrFifo\(2) & ( \in_fifo_wr~0_combout\ & ( ((\u_fifo_in|adrFifo\(1) & (!\u_fifo_in|adrFifo\(0) & !\u_fifo_in|adrFifo\(3)))) # (\state.S_LOAD_BUFFER~DUPLICATE_q\) ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( 
-- \in_fifo_wr~0_combout\ & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(0))) # (\u_fifo_in|adrFifo\(1)))) ) ) ) # ( \u_fifo_in|adrFifo\(2) & ( !\in_fifo_wr~0_combout\ & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # 
-- ( !\u_fifo_in|adrFifo\(2) & ( !\in_fifo_wr~0_combout\ & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(0))) # (\u_fifo_in|adrFifo\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010100010101010101010111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datab => \u_fifo_in|ALT_INV_adrFifo\(1),
	datac => \u_fifo_in|ALT_INV_adrFifo\(0),
	datad => \u_fifo_in|ALT_INV_adrFifo\(3),
	datae => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => \ALT_INV_in_fifo_wr~0_combout\,
	combout => \u_fifo_in|Fifo[6][3]~6_combout\);

-- Location: FF_X53_Y18_N29
\u_fifo_in|Fifo[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][0]~q\);

-- Location: LABCELL_X53_Y18_N21
\u_fifo_in|Fifo[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][0]~feeder_combout\ = \u_fifo_in|Fifo[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[6][0]~q\,
	combout => \u_fifo_in|Fifo[5][0]~feeder_combout\);

-- Location: LABCELL_X52_Y19_N12
\u_fifo_in|Fifo[5][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][0]~5_combout\ = ( \u_fifo_in|adrFifo\(2) & ( \u_fifo_in|adrFifo\(1) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( \u_fifo_in|adrFifo\(1) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( 
-- \u_fifo_in|adrFifo\(2) & ( !\u_fifo_in|adrFifo\(1) & ( ((\u_fifo_in|adrFifo\(0) & (\in_fifo_wr~0_combout\ & !\u_fifo_in|adrFifo\(3)))) # (\state.S_LOAD_BUFFER~DUPLICATE_q\) ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( !\u_fifo_in|adrFifo\(1) & ( 
-- (\state.S_LOAD_BUFFER~DUPLICATE_q\ & ((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000111110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(0),
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datad => \u_fifo_in|ALT_INV_adrFifo\(3),
	datae => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(1),
	combout => \u_fifo_in|Fifo[5][0]~5_combout\);

-- Location: FF_X53_Y18_N22
\u_fifo_in|Fifo[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][0]~q\);

-- Location: LABCELL_X53_Y18_N3
\u_fifo_in|Fifo[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][0]~feeder_combout\ = ( \u_fifo_in|Fifo[5][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[5][0]~q\,
	combout => \u_fifo_in|Fifo[4][0]~feeder_combout\);

-- Location: LABCELL_X52_Y19_N48
\u_fifo_in|Fifo[4][1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][1]~4_combout\ = ( \u_fifo_in|adrFifo\(2) & ( \u_fifo_in|adrFifo\(0) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( \u_fifo_in|adrFifo\(0) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( 
-- \u_fifo_in|adrFifo\(2) & ( !\u_fifo_in|adrFifo\(0) & ( ((!\u_fifo_in|adrFifo\(1) & (!\u_fifo_in|adrFifo\(3) & \in_fifo_wr~0_combout\))) # (\state.S_LOAD_BUFFER~DUPLICATE_q\) ) ) ) # ( !\u_fifo_in|adrFifo\(2) & ( !\u_fifo_in|adrFifo\(0) & ( 
-- (\state.S_LOAD_BUFFER~DUPLICATE_q\ & ((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000011111000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(1),
	datab => \u_fifo_in|ALT_INV_adrFifo\(3),
	datac => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datad => \ALT_INV_in_fifo_wr~0_combout\,
	datae => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(0),
	combout => \u_fifo_in|Fifo[4][1]~4_combout\);

-- Location: FF_X53_Y18_N4
\u_fifo_in|Fifo[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][0]~q\);

-- Location: LABCELL_X53_Y17_N24
\u_fifo_in|Fifo[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][0]~feeder_combout\ = \u_fifo_in|Fifo[4][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[4][0]~q\,
	combout => \u_fifo_in|Fifo[3][0]~feeder_combout\);

-- Location: LABCELL_X52_Y19_N15
\u_fifo_in|Fifo[3][6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][6]~3_combout\ = ( \u_fifo_in|adrFifo\(1) & ( \u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(1) & ( \u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( 
-- \u_fifo_in|adrFifo\(1) & ( !\u_fifo_in|adrFifo\(2) & ( ((\u_fifo_in|adrFifo\(0) & (\in_fifo_wr~0_combout\ & !\u_fifo_in|adrFifo\(3)))) # (\state.S_LOAD_BUFFER~DUPLICATE_q\) ) ) ) # ( !\u_fifo_in|adrFifo\(1) & ( !\u_fifo_in|adrFifo\(2) & ( 
-- (\state.S_LOAD_BUFFER~DUPLICATE_q\ & ((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000100001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(0),
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \u_fifo_in|ALT_INV_adrFifo\(3),
	datad => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datae => \u_fifo_in|ALT_INV_adrFifo\(1),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(2),
	combout => \u_fifo_in|Fifo[3][6]~3_combout\);

-- Location: FF_X53_Y17_N25
\u_fifo_in|Fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][0]~q\);

-- Location: LABCELL_X53_Y17_N51
\u_fifo_in|Fifo[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][0]~feeder_combout\ = ( \u_fifo_in|Fifo[3][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[3][0]~q\,
	combout => \u_fifo_in|Fifo[2][0]~feeder_combout\);

-- Location: LABCELL_X52_Y19_N18
\u_fifo_in|Fifo[2][6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][6]~2_combout\ = ( \u_fifo_in|adrFifo\(0) & ( \in_fifo_wr~0_combout\ & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(0) & ( \in_fifo_wr~0_combout\ & ( (!\u_fifo_in|adrFifo\(3) & ((!\u_fifo_in|adrFifo\(2) & 
-- (\u_fifo_in|adrFifo\(1))) # (\u_fifo_in|adrFifo\(2) & ((\state.S_LOAD_BUFFER~DUPLICATE_q\))))) # (\u_fifo_in|adrFifo\(3) & (((\state.S_LOAD_BUFFER~DUPLICATE_q\)))) ) ) ) # ( \u_fifo_in|adrFifo\(0) & ( !\in_fifo_wr~0_combout\ & ( 
-- \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(0) & ( !\in_fifo_wr~0_combout\ & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (((\u_fifo_in|adrFifo\(2)) # (\u_fifo_in|adrFifo\(3))) # (\u_fifo_in|adrFifo\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111101000111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(1),
	datab => \u_fifo_in|ALT_INV_adrFifo\(3),
	datac => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datad => \u_fifo_in|ALT_INV_adrFifo\(2),
	datae => \u_fifo_in|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_in_fifo_wr~0_combout\,
	combout => \u_fifo_in|Fifo[2][6]~2_combout\);

-- Location: FF_X53_Y17_N53
\u_fifo_in|Fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][0]~q\);

-- Location: LABCELL_X53_Y17_N0
\u_fifo_in|Fifo[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][0]~feeder_combout\ = \u_fifo_in|Fifo[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[2][0]~q\,
	combout => \u_fifo_in|Fifo[1][0]~feeder_combout\);

-- Location: LABCELL_X52_Y19_N51
\u_fifo_in|Fifo[1][4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][4]~1_combout\ = ( \u_fifo_in|adrFifo\(0) & ( \u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( !\u_fifo_in|adrFifo\(0) & ( \u_fifo_in|adrFifo\(2) & ( \state.S_LOAD_BUFFER~DUPLICATE_q\ ) ) ) # ( 
-- \u_fifo_in|adrFifo\(0) & ( !\u_fifo_in|adrFifo\(2) & ( ((!\u_fifo_in|adrFifo\(1) & (!\u_fifo_in|adrFifo\(3) & \in_fifo_wr~0_combout\))) # (\state.S_LOAD_BUFFER~DUPLICATE_q\) ) ) ) # ( !\u_fifo_in|adrFifo\(0) & ( !\u_fifo_in|adrFifo\(2) & ( 
-- (\state.S_LOAD_BUFFER~DUPLICATE_q\ & ((\u_fifo_in|adrFifo\(3)) # (\u_fifo_in|adrFifo\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000010001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(1),
	datab => \u_fifo_in|ALT_INV_adrFifo\(3),
	datac => \ALT_INV_in_fifo_wr~0_combout\,
	datad => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datae => \u_fifo_in|ALT_INV_adrFifo\(0),
	dataf => \u_fifo_in|ALT_INV_adrFifo\(2),
	combout => \u_fifo_in|Fifo[1][4]~1_combout\);

-- Location: FF_X53_Y17_N2
\u_fifo_in|Fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][0]~q\);

-- Location: LABCELL_X52_Y17_N51
\u_fifo_in|Fifo[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][0]~feeder_combout\ = \u_fifo_in|Fifo[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[1][0]~q\,
	combout => \u_fifo_in|Fifo[0][0]~feeder_combout\);

-- Location: LABCELL_X50_Y19_N9
\u_fifo_in|Fifo[0][4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][4]~0_combout\ = ( \state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (!\process_3~0_combout\) # (\u_fifo_in|adrFifo\(3)) ) ) # ( !\state.S_LOAD_BUFFER~DUPLICATE_q\ & ( (!\u_fifo_in|adrFifo\(3) & (\in_fifo_wr~0_combout\ & \process_3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_adrFifo\(3),
	datab => \ALT_INV_in_fifo_wr~0_combout\,
	datac => \ALT_INV_process_3~0_combout\,
	dataf => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	combout => \u_fifo_in|Fifo[0][4]~0_combout\);

-- Location: FF_X52_Y17_N53
\u_fifo_in|Fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][0]~feeder_combout\,
	asdata => \D_in[0]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][0]~q\);

-- Location: IOIBUF_X54_Y18_N78
\D_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(4),
	o => \D_in[4]~input_o\);

-- Location: LABCELL_X52_Y18_N9
\u_fifo_in|Fifo[7][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[7][4]~feeder_combout\ = ( \D_in[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_D_in[4]~input_o\,
	combout => \u_fifo_in|Fifo[7][4]~feeder_combout\);

-- Location: FF_X52_Y18_N10
\u_fifo_in|Fifo[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[7][4]~feeder_combout\,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][4]~q\);

-- Location: LABCELL_X53_Y18_N12
\u_fifo_in|Fifo[6][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][4]~feeder_combout\ = ( \u_fifo_in|Fifo[7][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[7][4]~q\,
	combout => \u_fifo_in|Fifo[6][4]~feeder_combout\);

-- Location: FF_X53_Y18_N14
\u_fifo_in|Fifo[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][4]~q\);

-- Location: LABCELL_X53_Y18_N54
\u_fifo_in|Fifo[5][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][4]~feeder_combout\ = \u_fifo_in|Fifo[6][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[6][4]~q\,
	combout => \u_fifo_in|Fifo[5][4]~feeder_combout\);

-- Location: FF_X53_Y18_N56
\u_fifo_in|Fifo[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][4]~q\);

-- Location: LABCELL_X53_Y18_N48
\u_fifo_in|Fifo[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][4]~feeder_combout\ = \u_fifo_in|Fifo[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][4]~q\,
	combout => \u_fifo_in|Fifo[4][4]~feeder_combout\);

-- Location: FF_X53_Y18_N49
\u_fifo_in|Fifo[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][4]~q\);

-- Location: LABCELL_X53_Y17_N12
\u_fifo_in|Fifo[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][4]~feeder_combout\ = \u_fifo_in|Fifo[4][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[4][4]~q\,
	combout => \u_fifo_in|Fifo[3][4]~feeder_combout\);

-- Location: FF_X53_Y17_N14
\u_fifo_in|Fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][4]~q\);

-- Location: LABCELL_X52_Y17_N30
\u_fifo_in|Fifo[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][4]~feeder_combout\ = ( \u_fifo_in|Fifo[3][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[3][4]~q\,
	combout => \u_fifo_in|Fifo[2][4]~feeder_combout\);

-- Location: FF_X52_Y17_N32
\u_fifo_in|Fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][4]~q\);

-- Location: LABCELL_X52_Y17_N24
\u_fifo_in|Fifo[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][4]~feeder_combout\ = \u_fifo_in|Fifo[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[2][4]~q\,
	combout => \u_fifo_in|Fifo[1][4]~feeder_combout\);

-- Location: FF_X52_Y17_N26
\u_fifo_in|Fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][4]~q\);

-- Location: LABCELL_X52_Y17_N48
\u_fifo_in|Fifo[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][4]~feeder_combout\ = \u_fifo_in|Fifo[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[1][4]~q\,
	combout => \u_fifo_in|Fifo[0][4]~feeder_combout\);

-- Location: FF_X52_Y17_N50
\u_fifo_in|Fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][4]~feeder_combout\,
	asdata => \D_in[4]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][4]~q\);

-- Location: IOIBUF_X54_Y17_N55
\D_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(6),
	o => \D_in[6]~input_o\);

-- Location: FF_X52_Y18_N22
\u_fifo_in|Fifo[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[6]~input_o\,
	sload => VCC,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][6]~q\);

-- Location: LABCELL_X53_Y18_N33
\u_fifo_in|Fifo[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][6]~feeder_combout\ = \u_fifo_in|Fifo[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[7][6]~q\,
	combout => \u_fifo_in|Fifo[6][6]~feeder_combout\);

-- Location: FF_X53_Y18_N35
\u_fifo_in|Fifo[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][6]~q\);

-- Location: LABCELL_X52_Y18_N24
\u_fifo_in|Fifo[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][6]~feeder_combout\ = ( \u_fifo_in|Fifo[6][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[6][6]~q\,
	combout => \u_fifo_in|Fifo[5][6]~feeder_combout\);

-- Location: FF_X52_Y18_N26
\u_fifo_in|Fifo[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][6]~q\);

-- Location: LABCELL_X52_Y18_N39
\u_fifo_in|Fifo[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][6]~feeder_combout\ = \u_fifo_in|Fifo[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[5][6]~q\,
	combout => \u_fifo_in|Fifo[4][6]~feeder_combout\);

-- Location: FF_X52_Y18_N40
\u_fifo_in|Fifo[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][6]~q\);

-- Location: LABCELL_X53_Y17_N54
\u_fifo_in|Fifo[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][6]~feeder_combout\ = \u_fifo_in|Fifo[4][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[4][6]~q\,
	combout => \u_fifo_in|Fifo[3][6]~feeder_combout\);

-- Location: FF_X53_Y17_N56
\u_fifo_in|Fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][6]~q\);

-- Location: LABCELL_X53_Y17_N48
\u_fifo_in|Fifo[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][6]~feeder_combout\ = \u_fifo_in|Fifo[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[3][6]~q\,
	combout => \u_fifo_in|Fifo[2][6]~feeder_combout\);

-- Location: FF_X53_Y17_N50
\u_fifo_in|Fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][6]~q\);

-- Location: LABCELL_X53_Y17_N42
\u_fifo_in|Fifo[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][6]~feeder_combout\ = \u_fifo_in|Fifo[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[2][6]~q\,
	combout => \u_fifo_in|Fifo[1][6]~feeder_combout\);

-- Location: FF_X53_Y17_N43
\u_fifo_in|Fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][6]~q\);

-- Location: LABCELL_X52_Y17_N42
\u_fifo_in|Fifo[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][6]~feeder_combout\ = ( \u_fifo_in|Fifo[1][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[1][6]~q\,
	combout => \u_fifo_in|Fifo[0][6]~feeder_combout\);

-- Location: FF_X52_Y17_N44
\u_fifo_in|Fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][6]~feeder_combout\,
	asdata => \D_in[6]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][6]~q\);

-- Location: FF_X48_Y13_N26
\load_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => load_cnt(0));

-- Location: LABCELL_X48_Y13_N30
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( !load_cnt(1) $ ((((!\state.S_LOAD_BUFFER~DUPLICATE_q\) # (!load_cnt(0))) # (\load_cnt[3]~DUPLICATE_q\))) ) ) # ( !\state.S_IDLE~DUPLICATE_q\ & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (!load_cnt(1) $ 
-- (((!load_cnt(0)) # (\load_cnt[3]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110001000000100011000100000010111111010000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datac => ALT_INV_load_cnt(0),
	datad => ALT_INV_load_cnt(1),
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X48_Y13_N32
\load_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => load_cnt(1));

-- Location: LABCELL_X48_Y13_N33
\buffer_8x8[7][6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[7][6]~10_combout\ = ( load_cnt(2) & ( (!\load_cnt[3]~DUPLICATE_q\ & (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (load_cnt(1) & \load_cnt[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datac => ALT_INV_load_cnt(1),
	datad => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	dataf => ALT_INV_load_cnt(2),
	combout => \buffer_8x8[7][6]~10_combout\);

-- Location: FF_X47_Y16_N5
\buffer_8x8[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][6]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][6]~q\);

-- Location: LABCELL_X48_Y13_N0
\Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\state.S_CORR~q\ & (!load_cnt(1) & (!load_cnt(0) & \buffer_8x8[7][6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => ALT_INV_load_cnt(1),
	datac => ALT_INV_load_cnt(0),
	datad => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	combout => \Selector44~0_combout\);

-- Location: IOIBUF_X54_Y17_N21
\D_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(2),
	o => \D_in[2]~input_o\);

-- Location: FF_X52_Y18_N13
\u_fifo_in|Fifo[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[2]~input_o\,
	sload => VCC,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][2]~q\);

-- Location: LABCELL_X53_Y18_N24
\u_fifo_in|Fifo[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][2]~feeder_combout\ = \u_fifo_in|Fifo[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[7][2]~q\,
	combout => \u_fifo_in|Fifo[6][2]~feeder_combout\);

-- Location: FF_X53_Y18_N26
\u_fifo_in|Fifo[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][2]~q\);

-- Location: LABCELL_X53_Y18_N18
\u_fifo_in|Fifo[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][2]~feeder_combout\ = \u_fifo_in|Fifo[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[6][2]~q\,
	combout => \u_fifo_in|Fifo[5][2]~feeder_combout\);

-- Location: FF_X53_Y18_N20
\u_fifo_in|Fifo[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][2]~q\);

-- Location: LABCELL_X53_Y18_N0
\u_fifo_in|Fifo[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][2]~feeder_combout\ = \u_fifo_in|Fifo[5][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][2]~q\,
	combout => \u_fifo_in|Fifo[4][2]~feeder_combout\);

-- Location: FF_X53_Y18_N1
\u_fifo_in|Fifo[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][2]~q\);

-- Location: LABCELL_X53_Y17_N36
\u_fifo_in|Fifo[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][2]~feeder_combout\ = ( \u_fifo_in|Fifo[4][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[4][2]~q\,
	combout => \u_fifo_in|Fifo[3][2]~feeder_combout\);

-- Location: FF_X53_Y17_N37
\u_fifo_in|Fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][2]~q\);

-- Location: LABCELL_X52_Y17_N21
\u_fifo_in|Fifo[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][2]~feeder_combout\ = ( \u_fifo_in|Fifo[3][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[3][2]~q\,
	combout => \u_fifo_in|Fifo[2][2]~feeder_combout\);

-- Location: FF_X52_Y17_N22
\u_fifo_in|Fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][2]~q\);

-- Location: LABCELL_X52_Y17_N39
\u_fifo_in|Fifo[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][2]~feeder_combout\ = ( \u_fifo_in|Fifo[2][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[2][2]~q\,
	combout => \u_fifo_in|Fifo[1][2]~feeder_combout\);

-- Location: FF_X52_Y17_N41
\u_fifo_in|Fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][2]~q\);

-- Location: LABCELL_X52_Y17_N57
\u_fifo_in|Fifo[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][2]~feeder_combout\ = \u_fifo_in|Fifo[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[1][2]~q\,
	combout => \u_fifo_in|Fifo[0][2]~feeder_combout\);

-- Location: FF_X52_Y17_N59
\u_fifo_in|Fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][2]~feeder_combout\,
	asdata => \D_in[2]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][2]~q\);

-- Location: LABCELL_X48_Y13_N42
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( !load_cnt(2) & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & !\load_cnt[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datac => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	dataf => ALT_INV_load_cnt(2),
	combout => \Selector30~0_combout\);

-- Location: MLABCELL_X49_Y17_N42
\Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = ( \Selector30~0_combout\ & ( (\Equal8~0_combout\ & !\state.S_CORR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal8~0_combout\,
	datad => \ALT_INV_state.S_CORR~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \Selector37~0_combout\);

-- Location: FF_X50_Y16_N32
\state.S_CORR~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector63~2_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CORR~DUPLICATE_q\);

-- Location: IOIBUF_X54_Y16_N4
\D_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(3),
	o => \D_in[3]~input_o\);

-- Location: FF_X53_Y16_N46
\u_fifo_in|Fifo[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[3]~input_o\,
	sload => VCC,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][3]~q\);

-- Location: LABCELL_X53_Y18_N45
\u_fifo_in|Fifo[6][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][3]~feeder_combout\ = ( \u_fifo_in|Fifo[7][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[7][3]~q\,
	combout => \u_fifo_in|Fifo[6][3]~feeder_combout\);

-- Location: FF_X53_Y18_N47
\u_fifo_in|Fifo[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][3]~q\);

-- Location: LABCELL_X53_Y18_N39
\u_fifo_in|Fifo[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][3]~feeder_combout\ = \u_fifo_in|Fifo[6][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[6][3]~q\,
	combout => \u_fifo_in|Fifo[5][3]~feeder_combout\);

-- Location: FF_X53_Y18_N41
\u_fifo_in|Fifo[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][3]~q\);

-- Location: LABCELL_X53_Y18_N9
\u_fifo_in|Fifo[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][3]~feeder_combout\ = \u_fifo_in|Fifo[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][3]~q\,
	combout => \u_fifo_in|Fifo[4][3]~feeder_combout\);

-- Location: FF_X53_Y18_N11
\u_fifo_in|Fifo[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][3]~q\);

-- Location: LABCELL_X53_Y17_N21
\u_fifo_in|Fifo[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][3]~feeder_combout\ = ( \u_fifo_in|Fifo[4][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[4][3]~q\,
	combout => \u_fifo_in|Fifo[3][3]~feeder_combout\);

-- Location: FF_X53_Y17_N23
\u_fifo_in|Fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][3]~q\);

-- Location: LABCELL_X52_Y17_N12
\u_fifo_in|Fifo[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][3]~feeder_combout\ = \u_fifo_in|Fifo[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[3][3]~q\,
	combout => \u_fifo_in|Fifo[2][3]~feeder_combout\);

-- Location: FF_X52_Y17_N14
\u_fifo_in|Fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][3]~q\);

-- Location: LABCELL_X52_Y17_N6
\u_fifo_in|Fifo[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][3]~feeder_combout\ = \u_fifo_in|Fifo[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[2][3]~q\,
	combout => \u_fifo_in|Fifo[1][3]~feeder_combout\);

-- Location: FF_X52_Y17_N8
\u_fifo_in|Fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][3]~q\);

-- Location: LABCELL_X52_Y17_N0
\u_fifo_in|Fifo[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][3]~feeder_combout\ = \u_fifo_in|Fifo[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[1][3]~q\,
	combout => \u_fifo_in|Fifo[0][3]~feeder_combout\);

-- Location: FF_X52_Y17_N2
\u_fifo_in|Fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][3]~feeder_combout\,
	asdata => \D_in[3]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][3]~q\);

-- Location: IOIBUF_X54_Y18_N44
\D_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(5),
	o => \D_in[5]~input_o\);

-- Location: LABCELL_X52_Y18_N3
\u_fifo_in|Fifo[7][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[7][5]~feeder_combout\ = ( \D_in[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \u_fifo_in|Fifo[7][5]~feeder_combout\);

-- Location: FF_X52_Y18_N4
\u_fifo_in|Fifo[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[7][5]~feeder_combout\,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][5]~q\);

-- Location: LABCELL_X53_Y18_N15
\u_fifo_in|Fifo[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][5]~feeder_combout\ = \u_fifo_in|Fifo[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[7][5]~q\,
	combout => \u_fifo_in|Fifo[6][5]~feeder_combout\);

-- Location: FF_X53_Y18_N17
\u_fifo_in|Fifo[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][5]~q\);

-- Location: LABCELL_X53_Y18_N57
\u_fifo_in|Fifo[5][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][5]~feeder_combout\ = \u_fifo_in|Fifo[6][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[6][5]~q\,
	combout => \u_fifo_in|Fifo[5][5]~feeder_combout\);

-- Location: FF_X53_Y18_N59
\u_fifo_in|Fifo[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][5]~q\);

-- Location: LABCELL_X53_Y18_N51
\u_fifo_in|Fifo[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][5]~feeder_combout\ = \u_fifo_in|Fifo[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][5]~q\,
	combout => \u_fifo_in|Fifo[4][5]~feeder_combout\);

-- Location: FF_X53_Y18_N52
\u_fifo_in|Fifo[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][5]~q\);

-- Location: LABCELL_X53_Y17_N15
\u_fifo_in|Fifo[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][5]~feeder_combout\ = \u_fifo_in|Fifo[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[4][5]~q\,
	combout => \u_fifo_in|Fifo[3][5]~feeder_combout\);

-- Location: FF_X53_Y17_N17
\u_fifo_in|Fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][5]~q\);

-- Location: LABCELL_X52_Y17_N15
\u_fifo_in|Fifo[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][5]~feeder_combout\ = \u_fifo_in|Fifo[3][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[3][5]~q\,
	combout => \u_fifo_in|Fifo[2][5]~feeder_combout\);

-- Location: FF_X52_Y17_N17
\u_fifo_in|Fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][5]~q\);

-- Location: LABCELL_X52_Y17_N9
\u_fifo_in|Fifo[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][5]~feeder_combout\ = \u_fifo_in|Fifo[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[2][5]~q\,
	combout => \u_fifo_in|Fifo[1][5]~feeder_combout\);

-- Location: FF_X52_Y17_N11
\u_fifo_in|Fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][5]~q\);

-- Location: LABCELL_X52_Y17_N3
\u_fifo_in|Fifo[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][5]~feeder_combout\ = \u_fifo_in|Fifo[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[1][5]~q\,
	combout => \u_fifo_in|Fifo[0][5]~feeder_combout\);

-- Location: FF_X52_Y17_N5
\u_fifo_in|Fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][5]~feeder_combout\,
	asdata => \D_in[5]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][5]~q\);

-- Location: LABCELL_X48_Y17_N30
\Decoder2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~5_combout\ = ( \idx_c[2]~0_combout\ & ( (\idx_c[0]~1_combout\ & !\idx_c[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_idx_c[0]~1_combout\,
	datac => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[2]~0_combout\,
	combout => \Decoder2~5_combout\);

-- Location: LABCELL_X47_Y14_N33
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \Decoder2~5_combout\ & ( (!\Selector44~0_combout\ & !\Selector38~0_combout\) ) ) # ( !\Decoder2~5_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector44~0_combout\,
	datad => \ALT_INV_Selector38~0_combout\,
	dataf => \ALT_INV_Decoder2~5_combout\,
	combout => \Selector39~0_combout\);

-- Location: FF_X47_Y15_N22
\buffer_8x8[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][5]~43_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][5]~q\);

-- Location: LABCELL_X47_Y15_N21
\buffer_8x8[4][5]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][5]~43_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector39~0_combout\) # (\buffer_8x8[4][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector39~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector39~0_combout\ & 
-- (((\buffer_8x8[4][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector39~0_combout\,
	datad => \ALT_INV_buffer_8x8[4][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][5]~43_combout\);

-- Location: FF_X47_Y15_N23
\buffer_8x8[4][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][5]~43_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][5]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N3
\Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = ( !load_cnt(0) & ( (!\state.S_CORR~q\ & (load_cnt(1) & \buffer_8x8[7][6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => ALT_INV_load_cnt(1),
	datad => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	dataf => ALT_INV_load_cnt(0),
	combout => \Selector58~0_combout\);

-- Location: LABCELL_X47_Y14_N27
\Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = ( !\idx_l[1]~2_combout\ & ( (\state.S_CORR~q\ & (!\idx_l[0]~3_combout\ & !\idx_l[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[2]~1_combout\,
	dataf => \ALT_INV_idx_l[1]~2_combout\,
	combout => \Selector52~0_combout\);

-- Location: LABCELL_X47_Y15_N45
\Selector53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = ( \Selector52~0_combout\ & ( (!\Selector58~0_combout\ & !\Decoder2~5_combout\) ) ) # ( !\Selector52~0_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector58~0_combout\,
	datad => \ALT_INV_Decoder2~5_combout\,
	dataf => \ALT_INV_Selector52~0_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X47_Y15_N58
\buffer_8x8[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][5]~45_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][5]~q\);

-- Location: LABCELL_X47_Y15_N57
\buffer_8x8[6][5]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][5]~45_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector53~0_combout\) # (\buffer_8x8[6][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector53~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector53~0_combout\ & 
-- (((\buffer_8x8[6][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector53~0_combout\,
	datad => \ALT_INV_buffer_8x8[6][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[6][5]~45_combout\);

-- Location: FF_X47_Y15_N59
\buffer_8x8[6][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][5]~45_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][5]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y14_N42
\Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = ( !\idx_l[2]~1_combout\ & ( (\state.S_CORR~q\ & (\idx_l[1]~2_combout\ & \idx_l[0]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datac => \ALT_INV_idx_l[1]~2_combout\,
	datad => \ALT_INV_idx_l[0]~3_combout\,
	dataf => \ALT_INV_idx_l[2]~1_combout\,
	combout => \Selector45~0_combout\);

-- Location: LABCELL_X48_Y13_N18
\Selector51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = ( load_cnt(0) & ( (!load_cnt(1) & (!\state.S_CORR~q\ & \buffer_8x8[7][6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_load_cnt(1),
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	dataf => ALT_INV_load_cnt(0),
	combout => \Selector51~0_combout\);

-- Location: LABCELL_X47_Y14_N24
\Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ( \Decoder2~5_combout\ & ( (!\Selector45~0_combout\ & !\Selector51~0_combout\) ) ) # ( !\Decoder2~5_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector45~0_combout\,
	datad => \ALT_INV_Selector51~0_combout\,
	dataf => \ALT_INV_Decoder2~5_combout\,
	combout => \Selector46~0_combout\);

-- Location: FF_X47_Y15_N25
\buffer_8x8[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][5]~44_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][5]~q\);

-- Location: LABCELL_X47_Y15_N24
\buffer_8x8[5][5]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][5]~44_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector46~0_combout\) # (\buffer_8x8[5][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector46~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector46~0_combout\ & 
-- (((\buffer_8x8[5][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector46~0_combout\,
	datad => \ALT_INV_buffer_8x8[5][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[5][5]~44_combout\);

-- Location: FF_X47_Y15_N26
\buffer_8x8[5][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][5]~44_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][5]~DUPLICATE_q\);

-- Location: FF_X47_Y15_N8
\buffer_8x8[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][5]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][5]~q\);

-- Location: FF_X48_Y13_N31
\load_cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N39
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \Selector30~0_combout\ & ( (!\load_cnt[1]~DUPLICATE_q\ & (\load_cnt[0]~DUPLICATE_q\ & !\state.S_CORR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datab => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_state.S_CORR~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \Selector23~0_combout\);

-- Location: LABCELL_X48_Y17_N33
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Selector10~0_combout\ & ( (\idx_l[0]~3_combout\ & \idx_l[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[1]~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X48_Y17_N12
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \Selector17~0_combout\ & ( (!\Selector23~0_combout\ & !\Decoder2~5_combout\) ) ) # ( !\Selector17~0_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector23~0_combout\,
	datac => \ALT_INV_Decoder2~5_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X47_Y15_N54
\buffer_8x8[1][5]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][5]~47_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector18~0_combout\) # (\buffer_8x8[1][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector18~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector18~0_combout\ & 
-- (((\buffer_8x8[1][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector18~0_combout\,
	datad => \ALT_INV_buffer_8x8[1][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[1][5]~47_combout\);

-- Location: FF_X47_Y15_N55
\buffer_8x8[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][5]~47_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][5]~q\);

-- Location: LABCELL_X48_Y13_N45
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( \Selector30~0_combout\ & ( (!load_cnt(0) & (!load_cnt(1) & !\state.S_CORR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_load_cnt(0),
	datac => ALT_INV_load_cnt(1),
	datad => \ALT_INV_state.S_CORR~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: LABCELL_X48_Y17_N48
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \Selector10~0_combout\ & ( (!\idx_l[0]~3_combout\ & \idx_l[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[1]~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector10~1_combout\);

-- Location: LABCELL_X48_Y17_N36
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \Selector10~1_combout\ & ( (!\Decoder2~5_combout\ & !\Selector16~0_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder2~5_combout\,
	datad => \ALT_INV_Selector16~0_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X47_Y15_N19
\buffer_8x8[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][5]~48_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][5]~q\);

-- Location: LABCELL_X47_Y15_N18
\buffer_8x8[0][5]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][5]~48_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector11~0_combout\) # (\buffer_8x8[0][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector11~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector11~0_combout\ & 
-- (((\buffer_8x8[0][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector11~0_combout\,
	datad => \ALT_INV_buffer_8x8[0][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[0][5]~48_combout\);

-- Location: FF_X47_Y15_N20
\buffer_8x8[0][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][5]~48_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][5]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N39
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \Selector31~0_combout\ & ( (!\Selector37~0_combout\ & !\Decoder2~5_combout\) ) ) # ( !\Selector31~0_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector37~0_combout\,
	datad => \ALT_INV_Decoder2~5_combout\,
	dataf => \ALT_INV_Selector31~0_combout\,
	combout => \Selector32~0_combout\);

-- Location: LABCELL_X47_Y15_N27
\buffer_8x8[3][5]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][5]~46_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector32~0_combout\) # (\buffer_8x8[3][5]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector32~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][5]~q\))) # (\Selector32~0_combout\ & 
-- (((\buffer_8x8[3][5]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datac => \ALT_INV_Selector32~0_combout\,
	datad => \ALT_INV_buffer_8x8[3][5]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[3][5]~46_combout\);

-- Location: FF_X47_Y15_N29
\buffer_8x8[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][5]~46_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][5]~q\);

-- Location: FF_X49_Y15_N29
\buffer_8x8[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][5]~42_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][5]~q\);

-- Location: LABCELL_X48_Y13_N36
\Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = ( \Selector30~0_combout\ & ( (\load_cnt[1]~DUPLICATE_q\ & (!load_cnt(0) & !\state.S_CORR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datac => ALT_INV_load_cnt(0),
	datad => \ALT_INV_state.S_CORR~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LABCELL_X48_Y17_N18
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \Selector10~0_combout\ & ( (!\idx_l[0]~3_combout\ & !\idx_l[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[1]~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X48_Y17_N3
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ( \Selector24~0_combout\ & ( (!\Selector30~1_combout\ & !\Decoder2~5_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector30~1_combout\,
	datac => \ALT_INV_Decoder2~5_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector25~0_combout\);

-- Location: MLABCELL_X49_Y15_N27
\buffer_8x8[2][5]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][5]~42_combout\ = ( \Selector25~0_combout\ & ( \buffer_8x8[2][5]~q\ ) ) # ( !\Selector25~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][5]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][5]~q\,
	datad => \ALT_INV_buffer_8x8[2][5]~q\,
	dataf => \ALT_INV_Selector25~0_combout\,
	combout => \buffer_8x8[2][5]~42_combout\);

-- Location: FF_X49_Y15_N28
\buffer_8x8[2][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][5]~42_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][5]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N48
\process_1~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~12_combout\ = ( \buffer_8x8[2][5]~DUPLICATE_q\ & ( !\buffer_8x8[1][5]~q\ $ (!\buffer_8x8[0][5]~DUPLICATE_q\ $ (!\buffer_8x8[3][5]~q\)) ) ) # ( !\buffer_8x8[2][5]~DUPLICATE_q\ & ( !\buffer_8x8[1][5]~q\ $ (!\buffer_8x8[0][5]~DUPLICATE_q\ $ 
-- (\buffer_8x8[3][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][5]~q\,
	datac => \ALT_INV_buffer_8x8[0][5]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[3][5]~q\,
	dataf => \ALT_INV_buffer_8x8[2][5]~DUPLICATE_q\,
	combout => \process_1~12_combout\);

-- Location: LABCELL_X47_Y15_N6
\process_1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~13_combout\ = ( \process_1~12_combout\ & ( !\buffer_8x8[4][5]~DUPLICATE_q\ $ (!\buffer_8x8[6][5]~DUPLICATE_q\ $ (!\buffer_8x8[5][5]~DUPLICATE_q\ $ (\buffer_8x8[7][5]~q\))) ) ) # ( !\process_1~12_combout\ & ( !\buffer_8x8[4][5]~DUPLICATE_q\ $ 
-- (!\buffer_8x8[6][5]~DUPLICATE_q\ $ (!\buffer_8x8[5][5]~DUPLICATE_q\ $ (!\buffer_8x8[7][5]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][5]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[6][5]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[5][5]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[7][5]~q\,
	dataf => \ALT_INV_process_1~12_combout\,
	combout => \process_1~13_combout\);

-- Location: FF_X47_Y17_N23
\buffer_8x8[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][3]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][3]~q\);

-- Location: LABCELL_X47_Y17_N27
\Selector55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = ( \Selector52~0_combout\ & ( (!\Selector58~0_combout\ & !\Decoder2~3_combout\) ) ) # ( !\Selector52~0_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector58~0_combout\,
	datad => \ALT_INV_Decoder2~3_combout\,
	dataf => \ALT_INV_Selector52~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X47_Y17_N16
\buffer_8x8[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][3]~31_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][3]~q\);

-- Location: LABCELL_X47_Y17_N15
\buffer_8x8[6][3]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][3]~31_combout\ = ( \buffer_8x8[6][3]~q\ & ( \buffer_8x8~4_combout\ ) ) # ( !\buffer_8x8[6][3]~q\ & ( \buffer_8x8~4_combout\ & ( !\Selector55~0_combout\ ) ) ) # ( \buffer_8x8[6][3]~q\ & ( !\buffer_8x8~4_combout\ & ( 
-- ((\u_fifo_in|Fifo[0][3]~q\ & !\state.S_CORR~DUPLICATE_q\)) # (\Selector55~0_combout\) ) ) ) # ( !\buffer_8x8[6][3]~q\ & ( !\buffer_8x8~4_combout\ & ( (\u_fifo_in|Fifo[0][3]~q\ & (!\state.S_CORR~DUPLICATE_q\ & !\Selector55~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datac => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datad => \ALT_INV_Selector55~0_combout\,
	datae => \ALT_INV_buffer_8x8[6][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[6][3]~31_combout\);

-- Location: FF_X47_Y17_N17
\buffer_8x8[6][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][3]~31_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][3]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y14_N12
\Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = ( \Selector45~0_combout\ & ( (!\Selector51~0_combout\ & !\Decoder2~3_combout\) ) ) # ( !\Selector45~0_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector51~0_combout\,
	datac => \ALT_INV_Decoder2~3_combout\,
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LABCELL_X47_Y17_N45
\buffer_8x8[5][3]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][3]~30_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector48~0_combout\) # (\buffer_8x8[5][3]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector48~0_combout\ & (!\state.S_CORR~DUPLICATE_q\ & (\u_fifo_in|Fifo[0][3]~q\))) # 
-- (\Selector48~0_combout\ & (((\buffer_8x8[5][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datac => \ALT_INV_Selector48~0_combout\,
	datad => \ALT_INV_buffer_8x8[5][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[5][3]~30_combout\);

-- Location: FF_X47_Y17_N47
\buffer_8x8[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][3]~30_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][3]~q\);

-- Location: FF_X47_Y17_N58
\buffer_8x8[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][3]~33_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][3]~q\);

-- Location: LABCELL_X47_Y17_N39
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( \Selector17~0_combout\ & ( (!\Selector23~0_combout\ & !\Decoder2~3_combout\) ) ) # ( !\Selector17~0_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Decoder2~3_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X47_Y17_N57
\buffer_8x8[1][3]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][3]~33_combout\ = ( \Selector20~0_combout\ & ( \buffer_8x8[1][3]~q\ ) ) # ( !\Selector20~0_combout\ & ( ((!\state.S_CORR~DUPLICATE_q\ & \u_fifo_in|Fifo[0][3]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datad => \ALT_INV_buffer_8x8[1][3]~q\,
	dataf => \ALT_INV_Selector20~0_combout\,
	combout => \buffer_8x8[1][3]~33_combout\);

-- Location: FF_X47_Y17_N59
\buffer_8x8[1][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][3]~33_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][3]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y17_N48
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \Selector24~0_combout\ & ( (!\Decoder2~3_combout\ & !\Selector30~1_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~3_combout\,
	datad => \ALT_INV_Selector30~1_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: FF_X47_Y17_N43
\buffer_8x8[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][3]~28_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][3]~q\);

-- Location: LABCELL_X47_Y17_N42
\buffer_8x8[2][3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][3]~28_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector27~0_combout\) # (\buffer_8x8[2][3]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector27~0_combout\ & (!\state.S_CORR~DUPLICATE_q\ & (\u_fifo_in|Fifo[0][3]~q\))) # 
-- (\Selector27~0_combout\ & (((\buffer_8x8[2][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datac => \ALT_INV_Selector27~0_combout\,
	datad => \ALT_INV_buffer_8x8[2][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[2][3]~28_combout\);

-- Location: FF_X47_Y17_N44
\buffer_8x8[2][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][3]~28_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][3]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y17_N30
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Selector10~1_combout\ & ( (!\Selector16~0_combout\ & !\Decoder2~3_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_Decoder2~3_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LABCELL_X47_Y17_N0
\buffer_8x8[0][3]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][3]~34_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector13~0_combout\) # (\buffer_8x8[0][3]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector13~0_combout\ & (\u_fifo_in|Fifo[0][3]~q\ & (!\state.S_CORR~DUPLICATE_q\))) # 
-- (\Selector13~0_combout\ & (((\buffer_8x8[0][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datab => \ALT_INV_Selector13~0_combout\,
	datac => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[0][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[0][3]~34_combout\);

-- Location: FF_X47_Y17_N2
\buffer_8x8[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][3]~34_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][3]~q\);

-- Location: LABCELL_X47_Y17_N3
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \Selector31~0_combout\ & ( (!\Selector37~0_combout\ & !\Decoder2~3_combout\) ) ) # ( !\Selector31~0_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector37~0_combout\,
	datad => \ALT_INV_Decoder2~3_combout\,
	dataf => \ALT_INV_Selector31~0_combout\,
	combout => \Selector34~0_combout\);

-- Location: LABCELL_X47_Y17_N33
\buffer_8x8[3][3]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][3]~32_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector34~0_combout\) # (\buffer_8x8[3][3]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector34~0_combout\ & (!\state.S_CORR~DUPLICATE_q\ & (\u_fifo_in|Fifo[0][3]~q\))) # 
-- (\Selector34~0_combout\ & (((\buffer_8x8[3][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector34~0_combout\,
	datab => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datad => \ALT_INV_buffer_8x8[3][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[3][3]~32_combout\);

-- Location: FF_X47_Y17_N35
\buffer_8x8[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][3]~32_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][3]~q\);

-- Location: LABCELL_X47_Y17_N9
\process_1~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~20_combout\ = ( \buffer_8x8[3][3]~q\ & ( !\buffer_8x8[1][3]~DUPLICATE_q\ $ (!\buffer_8x8[2][3]~DUPLICATE_q\ $ (!\buffer_8x8[0][3]~q\)) ) ) # ( !\buffer_8x8[3][3]~q\ & ( !\buffer_8x8[1][3]~DUPLICATE_q\ $ (!\buffer_8x8[2][3]~DUPLICATE_q\ $ 
-- (\buffer_8x8[0][3]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][3]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[2][3]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[0][3]~q\,
	dataf => \ALT_INV_buffer_8x8[3][3]~q\,
	combout => \process_1~20_combout\);

-- Location: LABCELL_X47_Y17_N51
\process_1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~21_combout\ = ( \process_1~20_combout\ & ( !\buffer_8x8[7][3]~q\ $ (!\buffer_8x8[6][3]~DUPLICATE_q\ $ (!\buffer_8x8[5][3]~q\ $ (\buffer_8x8[4][3]~q\))) ) ) # ( !\process_1~20_combout\ & ( !\buffer_8x8[7][3]~q\ $ (!\buffer_8x8[6][3]~DUPLICATE_q\ 
-- $ (!\buffer_8x8[5][3]~q\ $ (!\buffer_8x8[4][3]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][3]~q\,
	datab => \ALT_INV_buffer_8x8[6][3]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[5][3]~q\,
	datad => \ALT_INV_buffer_8x8[4][3]~q\,
	dataf => \ALT_INV_process_1~20_combout\,
	combout => \process_1~21_combout\);

-- Location: LABCELL_X47_Y14_N45
\Decoder2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~2_combout\ = ( !\idx_c[2]~0_combout\ & ( (\idx_c[1]~2_combout\ & !\idx_c[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_c[1]~2_combout\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	dataf => \ALT_INV_idx_c[2]~0_combout\,
	combout => \Decoder2~2_combout\);

-- Location: LABCELL_X47_Y14_N51
\Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = ( !\Selector58~0_combout\ & ( (!\Decoder2~2_combout\) # (!\Selector52~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~2_combout\,
	datad => \ALT_INV_Selector52~0_combout\,
	dataf => \ALT_INV_Selector58~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: LABCELL_X47_Y14_N9
\buffer_8x8[6][2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][2]~24_combout\ = ( \buffer_8x8[6][2]~q\ & ( \buffer_8x8~4_combout\ ) ) # ( !\buffer_8x8[6][2]~q\ & ( \buffer_8x8~4_combout\ & ( !\Selector56~0_combout\ ) ) ) # ( \buffer_8x8[6][2]~q\ & ( !\buffer_8x8~4_combout\ & ( ((!\state.S_CORR~q\ & 
-- \u_fifo_in|Fifo[0][2]~q\)) # (\Selector56~0_combout\) ) ) ) # ( !\buffer_8x8[6][2]~q\ & ( !\buffer_8x8~4_combout\ & ( (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][2]~q\ & !\Selector56~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010101111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datad => \ALT_INV_Selector56~0_combout\,
	datae => \ALT_INV_buffer_8x8[6][2]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[6][2]~24_combout\);

-- Location: FF_X47_Y14_N10
\buffer_8x8[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][2]~24_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][2]~q\);

-- Location: FF_X48_Y15_N47
\buffer_8x8[7][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][2]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][2]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y14_N39
\Selector49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = ( \Selector45~0_combout\ & ( (!\Selector51~0_combout\ & !\Decoder2~2_combout\) ) ) # ( !\Selector45~0_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector51~0_combout\,
	datac => \ALT_INV_Decoder2~2_combout\,
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \Selector49~0_combout\);

-- Location: LABCELL_X48_Y16_N33
\buffer_8x8[5][2]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][2]~23_combout\ = ( \Selector49~0_combout\ & ( \buffer_8x8[5][2]~q\ ) ) # ( !\Selector49~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][2]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datad => \ALT_INV_buffer_8x8[5][2]~q\,
	dataf => \ALT_INV_Selector49~0_combout\,
	combout => \buffer_8x8[5][2]~23_combout\);

-- Location: FF_X48_Y16_N35
\buffer_8x8[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][2]~23_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][2]~q\);

-- Location: LABCELL_X47_Y14_N15
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \Selector38~0_combout\ & ( (!\Decoder2~2_combout\ & !\Selector44~0_combout\) ) ) # ( !\Selector38~0_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~2_combout\,
	datad => \ALT_INV_Selector44~0_combout\,
	dataf => \ALT_INV_Selector38~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: LABCELL_X47_Y14_N54
\buffer_8x8[4][2]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][2]~22_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector42~0_combout\) # (\buffer_8x8[4][2]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector42~0_combout\ & (\u_fifo_in|Fifo[0][2]~q\ & (!\state.S_CORR~q\))) # (\Selector42~0_combout\ & 
-- (((\buffer_8x8[4][2]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datab => \ALT_INV_Selector42~0_combout\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_buffer_8x8[4][2]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][2]~22_combout\);

-- Location: FF_X47_Y14_N56
\buffer_8x8[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][2]~22_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][2]~q\);

-- Location: LABCELL_X48_Y17_N0
\Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = ( \Decoder2~2_combout\ & ( (!\Selector30~1_combout\ & !\Selector24~0_combout\) ) ) # ( !\Decoder2~2_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector30~1_combout\,
	datac => \ALT_INV_Selector24~0_combout\,
	dataf => \ALT_INV_Decoder2~2_combout\,
	combout => \Selector28~0_combout\);

-- Location: MLABCELL_X49_Y16_N45
\buffer_8x8[2][2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][2]~21_combout\ = ( \Selector28~0_combout\ & ( \buffer_8x8[2][2]~q\ ) ) # ( !\Selector28~0_combout\ & ( ((!\state.S_CORR~DUPLICATE_q\ & \u_fifo_in|Fifo[0][2]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datad => \ALT_INV_buffer_8x8[2][2]~q\,
	dataf => \ALT_INV_Selector28~0_combout\,
	combout => \buffer_8x8[2][2]~21_combout\);

-- Location: FF_X49_Y16_N46
\buffer_8x8[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][2]~21_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][2]~q\);

-- Location: LABCELL_X48_Y17_N15
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( \Decoder2~2_combout\ & ( (!\Selector17~0_combout\ & !\Selector23~0_combout\) ) ) # ( !\Decoder2~2_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~0_combout\,
	datab => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Decoder2~2_combout\,
	combout => \Selector21~0_combout\);

-- Location: MLABCELL_X49_Y16_N42
\buffer_8x8[1][2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][2]~26_combout\ = ( \Selector21~0_combout\ & ( \buffer_8x8[1][2]~q\ ) ) # ( !\Selector21~0_combout\ & ( ((!\state.S_CORR~DUPLICATE_q\ & \u_fifo_in|Fifo[0][2]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datad => \ALT_INV_buffer_8x8[1][2]~q\,
	dataf => \ALT_INV_Selector21~0_combout\,
	combout => \buffer_8x8[1][2]~26_combout\);

-- Location: FF_X49_Y16_N43
\buffer_8x8[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][2]~26_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][2]~q\);

-- Location: FF_X49_Y16_N32
\buffer_8x8[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][2]~27_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][2]~q\);

-- Location: LABCELL_X48_Y14_N54
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( \Selector10~1_combout\ & ( (!\Selector16~0_combout\ & !\Decoder2~2_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_Decoder2~2_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: MLABCELL_X49_Y16_N30
\buffer_8x8[0][2]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][2]~27_combout\ = ( \buffer_8x8[0][2]~q\ & ( \Selector14~0_combout\ ) ) # ( \buffer_8x8[0][2]~q\ & ( !\Selector14~0_combout\ & ( ((\u_fifo_in|Fifo[0][2]~q\ & !\state.S_CORR~DUPLICATE_q\)) # (\buffer_8x8~4_combout\) ) ) ) # ( 
-- !\buffer_8x8[0][2]~q\ & ( !\Selector14~0_combout\ & ( ((\u_fifo_in|Fifo[0][2]~q\ & !\state.S_CORR~DUPLICATE_q\)) # (\buffer_8x8~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datac => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8~4_combout\,
	datae => \ALT_INV_buffer_8x8[0][2]~q\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \buffer_8x8[0][2]~27_combout\);

-- Location: FF_X49_Y16_N31
\buffer_8x8[0][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][2]~27_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][2]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y15_N24
\process_1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~18_combout\ = ( \buffer_8x8[0][2]~DUPLICATE_q\ & ( !\buffer_8x8[3][2]~q\ $ (!\buffer_8x8[2][2]~q\ $ (!\buffer_8x8[1][2]~q\)) ) ) # ( !\buffer_8x8[0][2]~DUPLICATE_q\ & ( !\buffer_8x8[3][2]~q\ $ (!\buffer_8x8[2][2]~q\ $ (\buffer_8x8[1][2]~q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][2]~q\,
	datac => \ALT_INV_buffer_8x8[2][2]~q\,
	datad => \ALT_INV_buffer_8x8[1][2]~q\,
	dataf => \ALT_INV_buffer_8x8[0][2]~DUPLICATE_q\,
	combout => \process_1~18_combout\);

-- Location: LABCELL_X48_Y15_N6
\process_1~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~19_combout\ = ( \process_1~18_combout\ & ( !\buffer_8x8[6][2]~q\ $ (!\buffer_8x8[7][2]~DUPLICATE_q\ $ (!\buffer_8x8[5][2]~q\ $ (\buffer_8x8[4][2]~q\))) ) ) # ( !\process_1~18_combout\ & ( !\buffer_8x8[6][2]~q\ $ (!\buffer_8x8[7][2]~DUPLICATE_q\ 
-- $ (!\buffer_8x8[5][2]~q\ $ (!\buffer_8x8[4][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][2]~q\,
	datab => \ALT_INV_buffer_8x8[7][2]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[5][2]~q\,
	datad => \ALT_INV_buffer_8x8[4][2]~q\,
	dataf => \ALT_INV_process_1~18_combout\,
	combout => \process_1~19_combout\);

-- Location: IOIBUF_X54_Y17_N4
\D_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(1),
	o => \D_in[1]~input_o\);

-- Location: LABCELL_X52_Y18_N45
\u_fifo_in|Fifo[7][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[7][1]~feeder_combout\ = ( \D_in[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_D_in[1]~input_o\,
	combout => \u_fifo_in|Fifo[7][1]~feeder_combout\);

-- Location: FF_X52_Y18_N46
\u_fifo_in|Fifo[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[7][1]~feeder_combout\,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][1]~q\);

-- Location: LABCELL_X53_Y18_N42
\u_fifo_in|Fifo[6][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][1]~feeder_combout\ = ( \u_fifo_in|Fifo[7][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[7][1]~q\,
	combout => \u_fifo_in|Fifo[6][1]~feeder_combout\);

-- Location: FF_X53_Y18_N44
\u_fifo_in|Fifo[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][1]~q\);

-- Location: LABCELL_X53_Y18_N36
\u_fifo_in|Fifo[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][1]~feeder_combout\ = \u_fifo_in|Fifo[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_in|ALT_INV_Fifo[6][1]~q\,
	combout => \u_fifo_in|Fifo[5][1]~feeder_combout\);

-- Location: FF_X53_Y18_N38
\u_fifo_in|Fifo[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][1]~q\);

-- Location: LABCELL_X53_Y18_N6
\u_fifo_in|Fifo[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][1]~feeder_combout\ = \u_fifo_in|Fifo[5][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][1]~q\,
	combout => \u_fifo_in|Fifo[4][1]~feeder_combout\);

-- Location: FF_X53_Y18_N7
\u_fifo_in|Fifo[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][1]~q\);

-- Location: LABCELL_X53_Y17_N33
\u_fifo_in|Fifo[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][1]~feeder_combout\ = ( \u_fifo_in|Fifo[4][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[4][1]~q\,
	combout => \u_fifo_in|Fifo[3][1]~feeder_combout\);

-- Location: FF_X53_Y17_N35
\u_fifo_in|Fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][1]~q\);

-- Location: LABCELL_X53_Y17_N6
\u_fifo_in|Fifo[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][1]~feeder_combout\ = \u_fifo_in|Fifo[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[3][1]~q\,
	combout => \u_fifo_in|Fifo[2][1]~feeder_combout\);

-- Location: FF_X53_Y17_N8
\u_fifo_in|Fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][1]~q\);

-- Location: LABCELL_X53_Y17_N45
\u_fifo_in|Fifo[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][1]~feeder_combout\ = \u_fifo_in|Fifo[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[2][1]~q\,
	combout => \u_fifo_in|Fifo[1][1]~feeder_combout\);

-- Location: FF_X53_Y17_N47
\u_fifo_in|Fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][1]~q\);

-- Location: LABCELL_X52_Y17_N54
\u_fifo_in|Fifo[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][1]~feeder_combout\ = \u_fifo_in|Fifo[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[1][1]~q\,
	combout => \u_fifo_in|Fifo[0][1]~feeder_combout\);

-- Location: FF_X52_Y17_N56
\u_fifo_in|Fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][1]~feeder_combout\,
	asdata => \D_in[1]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][1]~q\);

-- Location: LABCELL_X47_Y14_N57
\Decoder2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~1_combout\ = ( !\idx_c[2]~0_combout\ & ( (\idx_c[0]~1_combout\ & !\idx_c[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_c[0]~1_combout\,
	datad => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[2]~0_combout\,
	combout => \Decoder2~1_combout\);

-- Location: MLABCELL_X49_Y14_N30
\Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = ( \Selector45~0_combout\ & ( (!\Selector51~0_combout\ & !\Decoder2~1_combout\) ) ) # ( !\Selector45~0_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector51~0_combout\,
	datad => \ALT_INV_Decoder2~1_combout\,
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: MLABCELL_X49_Y14_N33
\buffer_8x8[5][1]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][1]~16_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector50~0_combout\) # (\buffer_8x8[5][1]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector50~0_combout\ & (\u_fifo_in|Fifo[0][1]~q\ & (!\state.S_CORR~q\))) # (\Selector50~0_combout\ & 
-- (((\buffer_8x8[5][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \ALT_INV_Selector50~0_combout\,
	datad => \ALT_INV_buffer_8x8[5][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[5][1]~16_combout\);

-- Location: FF_X49_Y14_N35
\buffer_8x8[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][1]~16_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][1]~q\);

-- Location: LABCELL_X48_Y14_N57
\Selector57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = ( \Decoder2~1_combout\ & ( (!\Selector58~0_combout\ & !\Selector52~0_combout\) ) ) # ( !\Decoder2~1_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector58~0_combout\,
	datad => \ALT_INV_Selector52~0_combout\,
	dataf => \ALT_INV_Decoder2~1_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X48_Y14_N26
\buffer_8x8[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][1]~17_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][1]~q\);

-- Location: LABCELL_X48_Y14_N24
\buffer_8x8[6][1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][1]~17_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector57~0_combout\) # (\buffer_8x8[6][1]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector57~0_combout\ & (\u_fifo_in|Fifo[0][1]~q\ & (!\state.S_CORR~q\))) # (\Selector57~0_combout\ & 
-- (((\buffer_8x8[6][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datab => \ALT_INV_Selector57~0_combout\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_buffer_8x8[6][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[6][1]~17_combout\);

-- Location: FF_X48_Y14_N25
\buffer_8x8[6][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][1]~17_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][1]~DUPLICATE_q\);

-- Location: FF_X49_Y14_N2
\buffer_8x8[7][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][1]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][1]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y14_N27
\Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ( !\Selector44~0_combout\ & ( (!\Decoder2~1_combout\) # (!\Selector38~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~1_combout\,
	datad => \ALT_INV_Selector38~0_combout\,
	dataf => \ALT_INV_Selector44~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X49_Y14_N46
\buffer_8x8[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][1]~15_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][1]~q\);

-- Location: MLABCELL_X49_Y14_N45
\buffer_8x8[4][1]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][1]~15_combout\ = ( \buffer_8x8[4][1]~q\ & ( \buffer_8x8~4_combout\ ) ) # ( !\buffer_8x8[4][1]~q\ & ( \buffer_8x8~4_combout\ & ( !\Selector43~0_combout\ ) ) ) # ( \buffer_8x8[4][1]~q\ & ( !\buffer_8x8~4_combout\ & ( 
-- ((\u_fifo_in|Fifo[0][1]~q\ & !\state.S_CORR~q\)) # (\Selector43~0_combout\) ) ) ) # ( !\buffer_8x8[4][1]~q\ & ( !\buffer_8x8~4_combout\ & ( (\u_fifo_in|Fifo[0][1]~q\ & (!\state.S_CORR~q\ & !\Selector43~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_Selector43~0_combout\,
	datae => \ALT_INV_buffer_8x8[4][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][1]~15_combout\);

-- Location: FF_X49_Y14_N47
\buffer_8x8[4][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][1]~15_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][1]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y14_N42
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \Selector17~0_combout\ & ( (!\Selector23~0_combout\ & !\Decoder2~1_combout\) ) ) # ( !\Selector17~0_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_Decoder2~1_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X48_Y14_N18
\buffer_8x8[1][1]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][1]~19_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector22~0_combout\) # (\buffer_8x8[1][1]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector22~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][1]~q\))) # (\Selector22~0_combout\ & 
-- (((\buffer_8x8[1][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_Selector22~0_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datad => \ALT_INV_buffer_8x8[1][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[1][1]~19_combout\);

-- Location: FF_X48_Y14_N19
\buffer_8x8[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][1]~19_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][1]~q\);

-- Location: LABCELL_X48_Y14_N21
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \Selector10~1_combout\ & ( (!\Selector16~0_combout\ & !\Decoder2~1_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector16~0_combout\,
	datad => \ALT_INV_Decoder2~1_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector15~0_combout\);

-- Location: LABCELL_X48_Y14_N3
\buffer_8x8[0][1]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][1]~20_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector15~0_combout\) # (\buffer_8x8[0][1]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector15~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][1]~q\))) # (\Selector15~0_combout\ & 
-- (((\buffer_8x8[0][1]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_Selector15~0_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datad => \ALT_INV_buffer_8x8[0][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[0][1]~20_combout\);

-- Location: FF_X48_Y14_N4
\buffer_8x8[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][1]~20_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][1]~q\);

-- Location: MLABCELL_X49_Y14_N9
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \Selector31~0_combout\ & ( (!\Selector37~0_combout\ & !\Decoder2~1_combout\) ) ) # ( !\Selector31~0_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector37~0_combout\,
	datad => \ALT_INV_Decoder2~1_combout\,
	dataf => \ALT_INV_Selector31~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X49_Y14_N55
\buffer_8x8[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][1]~18_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][1]~q\);

-- Location: MLABCELL_X49_Y14_N54
\buffer_8x8[3][1]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][1]~18_combout\ = ( \buffer_8x8[3][1]~q\ & ( \buffer_8x8~4_combout\ ) ) # ( !\buffer_8x8[3][1]~q\ & ( \buffer_8x8~4_combout\ & ( !\Selector36~0_combout\ ) ) ) # ( \buffer_8x8[3][1]~q\ & ( !\buffer_8x8~4_combout\ & ( ((!\state.S_CORR~q\ & 
-- \u_fifo_in|Fifo[0][1]~q\)) # (\Selector36~0_combout\) ) ) ) # ( !\buffer_8x8[3][1]~q\ & ( !\buffer_8x8~4_combout\ & ( (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][1]~q\ & !\Selector36~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datad => \ALT_INV_Selector36~0_combout\,
	datae => \ALT_INV_buffer_8x8[3][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[3][1]~18_combout\);

-- Location: FF_X49_Y14_N56
\buffer_8x8[3][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][1]~18_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][1]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y14_N6
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( \Selector24~0_combout\ & ( (!\Selector30~1_combout\ & !\Decoder2~1_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector30~1_combout\,
	datad => \ALT_INV_Decoder2~1_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector29~0_combout\);

-- Location: LABCELL_X48_Y14_N51
\buffer_8x8[2][1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][1]~14_combout\ = ( \buffer_8x8[2][1]~q\ & ( \buffer_8x8~4_combout\ ) ) # ( !\buffer_8x8[2][1]~q\ & ( \buffer_8x8~4_combout\ & ( !\Selector29~0_combout\ ) ) ) # ( \buffer_8x8[2][1]~q\ & ( !\buffer_8x8~4_combout\ & ( ((!\state.S_CORR~q\ & 
-- \u_fifo_in|Fifo[0][1]~q\)) # (\Selector29~0_combout\) ) ) ) # ( !\buffer_8x8[2][1]~q\ & ( !\buffer_8x8~4_combout\ & ( (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][1]~q\ & !\Selector29~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001011110010111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][1]~q\,
	datac => \ALT_INV_Selector29~0_combout\,
	datae => \ALT_INV_buffer_8x8[2][1]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[2][1]~14_combout\);

-- Location: FF_X48_Y14_N52
\buffer_8x8[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][1]~14_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][1]~q\);

-- Location: MLABCELL_X49_Y14_N51
\process_1~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~16_combout\ = ( \buffer_8x8[2][1]~q\ & ( !\buffer_8x8[1][1]~q\ $ (!\buffer_8x8[0][1]~q\ $ (!\buffer_8x8[3][1]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[2][1]~q\ & ( !\buffer_8x8[1][1]~q\ $ (!\buffer_8x8[0][1]~q\ $ (\buffer_8x8[3][1]~DUPLICATE_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][1]~q\,
	datac => \ALT_INV_buffer_8x8[0][1]~q\,
	datad => \ALT_INV_buffer_8x8[3][1]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[2][1]~q\,
	combout => \process_1~16_combout\);

-- Location: MLABCELL_X49_Y14_N21
\process_1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~17_combout\ = ( \buffer_8x8[4][1]~DUPLICATE_q\ & ( \process_1~16_combout\ & ( !\buffer_8x8[5][1]~q\ $ (!\buffer_8x8[6][1]~DUPLICATE_q\ $ (\buffer_8x8[7][1]~DUPLICATE_q\)) ) ) ) # ( !\buffer_8x8[4][1]~DUPLICATE_q\ & ( \process_1~16_combout\ & ( 
-- !\buffer_8x8[5][1]~q\ $ (!\buffer_8x8[6][1]~DUPLICATE_q\ $ (!\buffer_8x8[7][1]~DUPLICATE_q\)) ) ) ) # ( \buffer_8x8[4][1]~DUPLICATE_q\ & ( !\process_1~16_combout\ & ( !\buffer_8x8[5][1]~q\ $ (!\buffer_8x8[6][1]~DUPLICATE_q\ $ 
-- (!\buffer_8x8[7][1]~DUPLICATE_q\)) ) ) ) # ( !\buffer_8x8[4][1]~DUPLICATE_q\ & ( !\process_1~16_combout\ & ( !\buffer_8x8[5][1]~q\ $ (!\buffer_8x8[6][1]~DUPLICATE_q\ $ (\buffer_8x8[7][1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010100101010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][1]~q\,
	datac => \ALT_INV_buffer_8x8[6][1]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[7][1]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[4][1]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~16_combout\,
	combout => \process_1~17_combout\);

-- Location: LABCELL_X48_Y15_N42
\idx_c[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_c[0]~1_combout\ = ( \process_1~11_combout\ & ( \process_1~17_combout\ & ( (\process_1~13_combout\ & !\process_1~15_combout\) ) ) ) # ( !\process_1~11_combout\ & ( \process_1~17_combout\ & ( (!\process_1~15_combout\ & (((!\process_1~19_combout\) # 
-- (\process_1~21_combout\)) # (\process_1~13_combout\))) ) ) ) # ( \process_1~11_combout\ & ( !\process_1~17_combout\ & ( (\process_1~13_combout\ & !\process_1~15_combout\) ) ) ) # ( !\process_1~11_combout\ & ( !\process_1~17_combout\ & ( 
-- (!\process_1~15_combout\ & ((\process_1~21_combout\) # (\process_1~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000010100000101000011110000011100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~13_combout\,
	datab => \ALT_INV_process_1~21_combout\,
	datac => \ALT_INV_process_1~15_combout\,
	datad => \ALT_INV_process_1~19_combout\,
	datae => \ALT_INV_process_1~11_combout\,
	dataf => \ALT_INV_process_1~17_combout\,
	combout => \idx_c[0]~1_combout\);

-- Location: LABCELL_X47_Y14_N48
\Decoder2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~3_combout\ = ( !\idx_c[2]~0_combout\ & ( (\idx_c[1]~2_combout\ & \idx_c[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_idx_c[1]~2_combout\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	dataf => \ALT_INV_idx_c[2]~0_combout\,
	combout => \Decoder2~3_combout\);

-- Location: LABCELL_X47_Y14_N36
\Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ( \Selector38~0_combout\ & ( (!\Decoder2~3_combout\ & !\Selector44~0_combout\) ) ) # ( !\Selector38~0_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder2~3_combout\,
	datac => \ALT_INV_Selector44~0_combout\,
	dataf => \ALT_INV_Selector38~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: LABCELL_X47_Y17_N36
\buffer_8x8[4][3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][3]~29_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector41~0_combout\) # (\buffer_8x8[4][3]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector41~0_combout\ & (\u_fifo_in|Fifo[0][3]~q\ & (!\state.S_CORR~DUPLICATE_q\))) # 
-- (\Selector41~0_combout\ & (((\buffer_8x8[4][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][3]~q\,
	datab => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datac => \ALT_INV_Selector41~0_combout\,
	datad => \ALT_INV_buffer_8x8[4][3]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][3]~29_combout\);

-- Location: FF_X47_Y17_N38
\buffer_8x8[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][3]~29_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][3]~q\);

-- Location: FF_X49_Y15_N20
\buffer_8x8[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][0]~7_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][0]~q\);

-- Location: FF_X48_Y15_N49
\buffer_8x8[4][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \buffer_8x8[4][7]~57_combout\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][7]~DUPLICATE_q\);

-- Location: IOIBUF_X54_Y16_N21
\D_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in(7),
	o => \D_in[7]~input_o\);

-- Location: FF_X53_Y16_N13
\u_fifo_in|Fifo[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \D_in[7]~input_o\,
	sload => VCC,
	ena => \u_fifo_in|Fifo[7][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[7][7]~q\);

-- Location: LABCELL_X53_Y18_N30
\u_fifo_in|Fifo[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[6][7]~feeder_combout\ = \u_fifo_in|Fifo[7][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[7][7]~q\,
	combout => \u_fifo_in|Fifo[6][7]~feeder_combout\);

-- Location: FF_X53_Y18_N32
\u_fifo_in|Fifo[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[6][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[6][3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[6][7]~q\);

-- Location: LABCELL_X52_Y18_N33
\u_fifo_in|Fifo[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[5][7]~feeder_combout\ = ( \u_fifo_in|Fifo[6][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[6][7]~q\,
	combout => \u_fifo_in|Fifo[5][7]~feeder_combout\);

-- Location: FF_X52_Y18_N35
\u_fifo_in|Fifo[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[5][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[5][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[5][7]~q\);

-- Location: LABCELL_X52_Y18_N54
\u_fifo_in|Fifo[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[4][7]~feeder_combout\ = \u_fifo_in|Fifo[5][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[5][7]~q\,
	combout => \u_fifo_in|Fifo[4][7]~feeder_combout\);

-- Location: FF_X52_Y18_N55
\u_fifo_in|Fifo[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[4][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[4][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[4][7]~q\);

-- Location: LABCELL_X53_Y17_N57
\u_fifo_in|Fifo[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[3][7]~feeder_combout\ = \u_fifo_in|Fifo[4][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[4][7]~q\,
	combout => \u_fifo_in|Fifo[3][7]~feeder_combout\);

-- Location: FF_X53_Y17_N58
\u_fifo_in|Fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[3][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[3][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[3][7]~q\);

-- Location: LABCELL_X53_Y17_N9
\u_fifo_in|Fifo[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[2][7]~feeder_combout\ = ( \u_fifo_in|Fifo[3][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_in|ALT_INV_Fifo[3][7]~q\,
	combout => \u_fifo_in|Fifo[2][7]~feeder_combout\);

-- Location: FF_X53_Y17_N11
\u_fifo_in|Fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[2][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[2][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[2][7]~q\);

-- Location: LABCELL_X53_Y17_N3
\u_fifo_in|Fifo[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[1][7]~feeder_combout\ = \u_fifo_in|Fifo[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_in|ALT_INV_Fifo[2][7]~q\,
	combout => \u_fifo_in|Fifo[1][7]~feeder_combout\);

-- Location: FF_X53_Y17_N4
\u_fifo_in|Fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[1][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[1][4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[1][7]~q\);

-- Location: LABCELL_X53_Y16_N51
\u_fifo_in|Fifo[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_in|Fifo[0][7]~feeder_combout\ = \u_fifo_in|Fifo[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[1][7]~q\,
	combout => \u_fifo_in|Fifo[0][7]~feeder_combout\);

-- Location: FF_X53_Y16_N53
\u_fifo_in|Fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_in|Fifo[0][7]~feeder_combout\,
	asdata => \D_in[7]~input_o\,
	sload => \in_fifo_wr~0_combout\,
	ena => \u_fifo_in|Fifo[0][4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_in|Fifo[0][7]~q\);

-- Location: LABCELL_X48_Y13_N54
\buffer_8x8[4][7]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][7]~57_combout\ = ( \u_fifo_in|Fifo[0][7]~q\ & ( ((!\load_cnt[1]~DUPLICATE_q\ & (!\load_cnt[0]~DUPLICATE_q\ & \buffer_8x8[7][6]~6_combout\))) # (\buffer_8x8[4][7]~DUPLICATE_q\) ) ) # ( !\u_fifo_in|Fifo[0][7]~q\ & ( 
-- (\buffer_8x8[4][7]~DUPLICATE_q\ & (((!\buffer_8x8[7][6]~6_combout\) # (\load_cnt[0]~DUPLICATE_q\)) # (\load_cnt[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000011110000011100001111100011110000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datab => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[4][7]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	dataf => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	combout => \buffer_8x8[4][7]~57_combout\);

-- Location: FF_X48_Y15_N50
\buffer_8x8[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \buffer_8x8[4][7]~57_combout\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][7]~q\);

-- Location: LABCELL_X48_Y14_N36
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( \Decoder2~4_combout\ & ( (!\Selector38~0_combout\ & !\Selector44~0_combout\) ) ) # ( !\Decoder2~4_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector38~0_combout\,
	datab => \ALT_INV_Selector44~0_combout\,
	dataf => \ALT_INV_Decoder2~4_combout\,
	combout => \Selector40~0_combout\);

-- Location: FF_X49_Y15_N55
\buffer_8x8[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][4]~36_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][4]~q\);

-- Location: MLABCELL_X49_Y15_N54
\buffer_8x8[4][4]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][4]~36_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector40~0_combout\) # (\buffer_8x8[4][4]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector40~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][4]~q\))) # (\Selector40~0_combout\ & 
-- (((\buffer_8x8[4][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datac => \ALT_INV_Selector40~0_combout\,
	datad => \ALT_INV_buffer_8x8[4][4]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][4]~36_combout\);

-- Location: FF_X49_Y15_N56
\buffer_8x8[4][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][4]~36_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][4]~DUPLICATE_q\);

-- Location: FF_X47_Y14_N4
\buffer_8x8[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][6]~50_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][6]~q\);

-- Location: LABCELL_X48_Y15_N33
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \buffer_8x8[4][6]~q\ & ( !\buffer_8x8[4][7]~q\ $ (!\buffer_8x8[4][4]~DUPLICATE_q\ $ (!\buffer_8x8[4][5]~q\)) ) ) # ( !\buffer_8x8[4][6]~q\ & ( !\buffer_8x8[4][7]~q\ $ (!\buffer_8x8[4][4]~DUPLICATE_q\ $ (\buffer_8x8[4][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][7]~q\,
	datac => \ALT_INV_buffer_8x8[4][4]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[4][5]~q\,
	dataf => \ALT_INV_buffer_8x8[4][6]~q\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X48_Y15_N0
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( \buffer_8x8[4][1]~q\ & ( !\buffer_8x8[4][3]~q\ $ (!\buffer_8x8[4][0]~q\ $ (!\process_1~0_combout\ $ (\buffer_8x8[4][2]~q\))) ) ) # ( !\buffer_8x8[4][1]~q\ & ( !\buffer_8x8[4][3]~q\ $ (!\buffer_8x8[4][0]~q\ $ 
-- (!\process_1~0_combout\ $ (!\buffer_8x8[4][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][3]~q\,
	datab => \ALT_INV_buffer_8x8[4][0]~q\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_buffer_8x8[4][2]~q\,
	dataf => \ALT_INV_buffer_8x8[4][1]~q\,
	combout => \process_1~1_combout\);

-- Location: LABCELL_X48_Y15_N9
\idx_l[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_l[1]~0_combout\ = ( !\process_1~3_combout\ & ( !\process_1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_process_1~3_combout\,
	combout => \idx_l[1]~0_combout\);

-- Location: LABCELL_X47_Y15_N33
\idx_l[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_l[2]~1_combout\ = ( \idx_l[1]~0_combout\ & ( !\process_1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1~5_combout\,
	dataf => \ALT_INV_idx_l[1]~0_combout\,
	combout => \idx_l[2]~1_combout\);

-- Location: LABCELL_X48_Y17_N39
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \idx_l[2]~1_combout\ & ( \state.S_CORR~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	dataf => \ALT_INV_idx_l[2]~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: LABCELL_X48_Y17_N45
\Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ( \Selector10~0_combout\ & ( (\idx_l[0]~3_combout\ & !\idx_l[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[1]~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: LABCELL_X48_Y17_N21
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \Decoder2~2_combout\ & ( (!\Selector37~0_combout\ & !\Selector31~0_combout\) ) ) # ( !\Decoder2~2_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector37~0_combout\,
	datad => \ALT_INV_Selector31~0_combout\,
	dataf => \ALT_INV_Decoder2~2_combout\,
	combout => \Selector35~0_combout\);

-- Location: MLABCELL_X49_Y15_N21
\buffer_8x8[3][2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][2]~25_combout\ = ( \Selector35~0_combout\ & ( \buffer_8x8[3][2]~q\ ) ) # ( !\Selector35~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][2]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][2]~q\,
	datad => \ALT_INV_buffer_8x8[3][2]~q\,
	dataf => \ALT_INV_Selector35~0_combout\,
	combout => \buffer_8x8[3][2]~25_combout\);

-- Location: FF_X49_Y15_N23
\buffer_8x8[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][2]~25_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][2]~q\);

-- Location: LABCELL_X47_Y15_N9
\Selector37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = ( \Selector31~0_combout\ & ( (!\Decoder2~0_combout\ & !\Selector37~0_combout\) ) ) # ( !\Selector31~0_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~0_combout\,
	datad => \ALT_INV_Selector37~0_combout\,
	dataf => \ALT_INV_Selector31~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: LABCELL_X47_Y15_N0
\buffer_8x8[3][0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][0]~11_combout\ = ( \Selector37~1_combout\ & ( \buffer_8x8[3][0]~q\ ) ) # ( !\Selector37~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[3][0]~q\,
	dataf => \ALT_INV_Selector37~1_combout\,
	combout => \buffer_8x8[3][0]~11_combout\);

-- Location: FF_X47_Y15_N1
\buffer_8x8[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][0]~11_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][0]~q\);

-- Location: LABCELL_X48_Y17_N42
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \Decoder2~4_combout\ & ( (!\Selector37~0_combout\ & !\Selector31~0_combout\) ) ) # ( !\Decoder2~4_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector37~0_combout\,
	datad => \ALT_INV_Selector31~0_combout\,
	dataf => \ALT_INV_Decoder2~4_combout\,
	combout => \Selector33~0_combout\);

-- Location: MLABCELL_X49_Y15_N36
\buffer_8x8[3][4]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][4]~39_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector33~0_combout\) # (\buffer_8x8[3][4]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector33~0_combout\ & (((\u_fifo_in|Fifo[0][4]~q\ & !\state.S_CORR~q\)))) # (\Selector33~0_combout\ & 
-- (\buffer_8x8[3][4]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001100000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][4]~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_Selector33~0_combout\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[3][4]~39_combout\);

-- Location: FF_X49_Y15_N38
\buffer_8x8[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][4]~39_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][4]~q\);

-- Location: LABCELL_X50_Y15_N18
\buffer_8x8[3][7]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][7]~60_combout\ = ( \buffer_8x8[3][7]~q\ & ( \Selector30~0_combout\ & ( (!\Equal8~0_combout\) # (\u_fifo_in|Fifo[0][7]~q\) ) ) ) # ( !\buffer_8x8[3][7]~q\ & ( \Selector30~0_combout\ & ( (\Equal8~0_combout\ & \u_fifo_in|Fifo[0][7]~q\) ) ) ) # 
-- ( \buffer_8x8[3][7]~q\ & ( !\Selector30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~0_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	datae => \ALT_INV_buffer_8x8[3][7]~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \buffer_8x8[3][7]~60_combout\);

-- Location: FF_X50_Y15_N20
\buffer_8x8[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][7]~60_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][7]~q\);

-- Location: FF_X47_Y15_N28
\buffer_8x8[3][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][5]~46_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][5]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y16_N15
\Decoder2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~6_combout\ = ( !\idx_c[0]~1_combout\ & ( (\idx_c[2]~0_combout\ & \idx_c[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_c[2]~0_combout\,
	datad => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Decoder2~6_combout\);

-- Location: LABCELL_X47_Y16_N9
\Selector31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = ( \Selector31~0_combout\ & ( (!\Decoder2~6_combout\ & !\Selector37~0_combout\) ) ) # ( !\Selector31~0_combout\ & ( !\Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~6_combout\,
	datad => \ALT_INV_Selector37~0_combout\,
	dataf => \ALT_INV_Selector31~0_combout\,
	combout => \Selector31~1_combout\);

-- Location: LABCELL_X47_Y16_N33
\buffer_8x8[3][6]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[3][6]~53_combout\ = ( \Selector31~1_combout\ & ( \buffer_8x8[3][6]~q\ ) ) # ( !\Selector31~1_combout\ & ( ((\u_fifo_in|Fifo[0][6]~q\ & !\state.S_CORR~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_buffer_8x8[3][6]~q\,
	dataf => \ALT_INV_Selector31~1_combout\,
	combout => \buffer_8x8[3][6]~53_combout\);

-- Location: FF_X47_Y16_N34
\buffer_8x8[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][6]~53_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][6]~q\);

-- Location: MLABCELL_X49_Y15_N39
\process_1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = ( \buffer_8x8[3][6]~q\ & ( !\buffer_8x8[3][4]~q\ $ (!\buffer_8x8[3][7]~q\ $ (!\buffer_8x8[3][5]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[3][6]~q\ & ( !\buffer_8x8[3][4]~q\ $ (!\buffer_8x8[3][7]~q\ $ (\buffer_8x8[3][5]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][4]~q\,
	datac => \ALT_INV_buffer_8x8[3][7]~q\,
	datad => \ALT_INV_buffer_8x8[3][5]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[3][6]~q\,
	combout => \process_1~8_combout\);

-- Location: LABCELL_X48_Y15_N27
\process_1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = ( \process_1~8_combout\ & ( !\buffer_8x8[3][2]~q\ $ (!\buffer_8x8[3][0]~q\ $ (!\buffer_8x8[3][3]~q\ $ (\buffer_8x8[3][1]~q\))) ) ) # ( !\process_1~8_combout\ & ( !\buffer_8x8[3][2]~q\ $ (!\buffer_8x8[3][0]~q\ $ 
-- (!\buffer_8x8[3][3]~q\ $ (!\buffer_8x8[3][1]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][2]~q\,
	datab => \ALT_INV_buffer_8x8[3][0]~q\,
	datac => \ALT_INV_buffer_8x8[3][3]~q\,
	datad => \ALT_INV_buffer_8x8[3][1]~q\,
	dataf => \ALT_INV_process_1~8_combout\,
	combout => \process_1~9_combout\);

-- Location: LABCELL_X50_Y15_N0
\buffer_8x8[1][7]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][7]~61_combout\ = ( \u_fifo_in|Fifo[0][7]~q\ & ( \Selector30~0_combout\ & ( ((\load_cnt[0]~DUPLICATE_q\ & !\load_cnt[1]~DUPLICATE_q\)) # (\buffer_8x8[1][7]~q\) ) ) ) # ( !\u_fifo_in|Fifo[0][7]~q\ & ( \Selector30~0_combout\ & ( 
-- (\buffer_8x8[1][7]~q\ & ((!\load_cnt[0]~DUPLICATE_q\) # (\load_cnt[1]~DUPLICATE_q\))) ) ) ) # ( \u_fifo_in|Fifo[0][7]~q\ & ( !\Selector30~0_combout\ & ( \buffer_8x8[1][7]~q\ ) ) ) # ( !\u_fifo_in|Fifo[0][7]~q\ & ( !\Selector30~0_combout\ & ( 
-- \buffer_8x8[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][7]~q\,
	datac => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datae => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \buffer_8x8[1][7]~61_combout\);

-- Location: FF_X47_Y15_N17
\buffer_8x8[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \buffer_8x8[1][7]~61_combout\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][7]~q\);

-- Location: FF_X47_Y15_N56
\buffer_8x8[1][5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][5]~47_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][5]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y17_N57
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( !\Selector23~0_combout\ & ( \Selector17~0_combout\ & ( !\Decoder2~4_combout\ ) ) ) # ( !\Selector23~0_combout\ & ( !\Selector17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~4_combout\,
	datae => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X49_Y15_N44
\buffer_8x8[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][4]~40_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][4]~q\);

-- Location: MLABCELL_X49_Y15_N42
\buffer_8x8[1][4]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][4]~40_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector19~0_combout\) # (\buffer_8x8[1][4]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector19~0_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][4]~q\))) # (\Selector19~0_combout\ & 
-- (((\buffer_8x8[1][4]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101111001000000010111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datac => \ALT_INV_Selector19~0_combout\,
	datad => \ALT_INV_buffer_8x8[1][4]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[1][4]~40_combout\);

-- Location: FF_X49_Y15_N43
\buffer_8x8[1][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][4]~40_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][4]~DUPLICATE_q\);

-- Location: FF_X47_Y16_N58
\buffer_8x8[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][6]~54_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][6]~q\);

-- Location: LABCELL_X47_Y16_N27
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \Selector17~0_combout\ & ( (!\Decoder2~6_combout\ & !\Selector23~0_combout\) ) ) # ( !\Selector17~0_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~6_combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LABCELL_X47_Y16_N57
\buffer_8x8[1][6]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][6]~54_combout\ = ( \Selector17~1_combout\ & ( \buffer_8x8[1][6]~q\ ) ) # ( !\Selector17~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][6]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[1][6]~q\,
	dataf => \ALT_INV_Selector17~1_combout\,
	combout => \buffer_8x8[1][6]~54_combout\);

-- Location: FF_X47_Y16_N59
\buffer_8x8[1][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][6]~54_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][6]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N12
\process_1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~22_combout\ = ( \buffer_8x8[1][6]~DUPLICATE_q\ & ( !\buffer_8x8[1][7]~q\ $ (!\buffer_8x8[1][5]~DUPLICATE_q\ $ (!\buffer_8x8[1][4]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[1][6]~DUPLICATE_q\ & ( !\buffer_8x8[1][7]~q\ $ 
-- (!\buffer_8x8[1][5]~DUPLICATE_q\ $ (\buffer_8x8[1][4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][7]~q\,
	datac => \ALT_INV_buffer_8x8[1][5]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[1][4]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[1][6]~DUPLICATE_q\,
	combout => \process_1~22_combout\);

-- Location: FF_X48_Y14_N20
\buffer_8x8[1][1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][1]~19_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][1]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y17_N6
\Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = ( \Decoder2~0_combout\ & ( (!\Selector17~0_combout\ & !\Selector23~0_combout\) ) ) # ( !\Decoder2~0_combout\ & ( !\Selector23~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector17~0_combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => \ALT_INV_Decoder2~0_combout\,
	combout => \Selector23~1_combout\);

-- Location: LABCELL_X47_Y17_N54
\buffer_8x8[1][0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[1][0]~12_combout\ = ( \Selector23~1_combout\ & ( \buffer_8x8[1][0]~q\ ) ) # ( !\Selector23~1_combout\ & ( ((!\state.S_CORR~DUPLICATE_q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[1][0]~q\,
	dataf => \ALT_INV_Selector23~1_combout\,
	combout => \buffer_8x8[1][0]~12_combout\);

-- Location: FF_X47_Y17_N56
\buffer_8x8[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][0]~12_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][0]~q\);

-- Location: LABCELL_X47_Y15_N42
\process_1~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~23_combout\ = ( \buffer_8x8[1][0]~q\ & ( !\buffer_8x8[1][3]~q\ $ (!\process_1~22_combout\ $ (!\buffer_8x8[1][1]~DUPLICATE_q\ $ (\buffer_8x8[1][2]~q\))) ) ) # ( !\buffer_8x8[1][0]~q\ & ( !\buffer_8x8[1][3]~q\ $ (!\process_1~22_combout\ $ 
-- (!\buffer_8x8[1][1]~DUPLICATE_q\ $ (!\buffer_8x8[1][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[1][3]~q\,
	datab => \ALT_INV_process_1~22_combout\,
	datac => \ALT_INV_buffer_8x8[1][1]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[1][2]~q\,
	dataf => \ALT_INV_buffer_8x8[1][0]~q\,
	combout => \process_1~23_combout\);

-- Location: MLABCELL_X49_Y15_N3
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \Selector24~0_combout\ & ( (!\Selector30~1_combout\ & !\Decoder2~4_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector30~1_combout\,
	datad => \ALT_INV_Decoder2~4_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector26~0_combout\);

-- Location: MLABCELL_X49_Y15_N45
\buffer_8x8[2][4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][4]~35_combout\ = ( \Selector26~0_combout\ & ( \buffer_8x8[2][4]~q\ ) ) # ( !\Selector26~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][4]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datac => \ALT_INV_buffer_8x8~4_combout\,
	datad => \ALT_INV_buffer_8x8[2][4]~q\,
	dataf => \ALT_INV_Selector26~0_combout\,
	combout => \buffer_8x8[2][4]~35_combout\);

-- Location: FF_X49_Y15_N47
\buffer_8x8[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][4]~35_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][4]~q\);

-- Location: LABCELL_X50_Y15_N45
\buffer_8x8[2][7]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][7]~56_combout\ = ( \buffer_8x8[2][7]~q\ & ( \Selector30~0_combout\ & ( ((!\load_cnt[1]~DUPLICATE_q\) # (\u_fifo_in|Fifo[0][7]~q\)) # (\load_cnt[0]~DUPLICATE_q\) ) ) ) # ( !\buffer_8x8[2][7]~q\ & ( \Selector30~0_combout\ & ( 
-- (!\load_cnt[0]~DUPLICATE_q\ & (\load_cnt[1]~DUPLICATE_q\ & \u_fifo_in|Fifo[0][7]~q\)) ) ) ) # ( \buffer_8x8[2][7]~q\ & ( !\Selector30~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001000101101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	datab => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datad => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	datae => \ALT_INV_buffer_8x8[2][7]~q\,
	dataf => \ALT_INV_Selector30~0_combout\,
	combout => \buffer_8x8[2][7]~56_combout\);

-- Location: FF_X50_Y15_N47
\buffer_8x8[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][7]~56_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][7]~q\);

-- Location: LABCELL_X47_Y16_N30
\Selector24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = ( \Selector24~0_combout\ & ( (!\Selector30~1_combout\ & !\Decoder2~6_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector30~1_combout\,
	datad => \ALT_INV_Decoder2~6_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LABCELL_X47_Y16_N6
\buffer_8x8[2][6]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][6]~49_combout\ = ( \Selector24~1_combout\ & ( \buffer_8x8[2][6]~q\ ) ) # ( !\Selector24~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][6]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datac => \ALT_INV_buffer_8x8~4_combout\,
	datad => \ALT_INV_buffer_8x8[2][6]~q\,
	dataf => \ALT_INV_Selector24~1_combout\,
	combout => \buffer_8x8[2][6]~49_combout\);

-- Location: FF_X47_Y16_N8
\buffer_8x8[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][6]~49_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][6]~q\);

-- Location: MLABCELL_X49_Y15_N6
\process_1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ( \buffer_8x8[2][6]~q\ & ( !\buffer_8x8[2][4]~q\ $ (!\buffer_8x8[2][7]~q\ $ (!\buffer_8x8[2][5]~q\)) ) ) # ( !\buffer_8x8[2][6]~q\ & ( !\buffer_8x8[2][4]~q\ $ (!\buffer_8x8[2][7]~q\ $ (\buffer_8x8[2][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[2][4]~q\,
	datac => \ALT_INV_buffer_8x8[2][7]~q\,
	datad => \ALT_INV_buffer_8x8[2][5]~q\,
	dataf => \ALT_INV_buffer_8x8[2][6]~q\,
	combout => \process_1~6_combout\);

-- Location: FF_X47_Y16_N56
\buffer_8x8[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][0]~5_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][0]~q\);

-- Location: LABCELL_X48_Y17_N51
\Selector30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = ( \Selector24~0_combout\ & ( (!\Decoder2~0_combout\ & !\Selector30~1_combout\) ) ) # ( !\Selector24~0_combout\ & ( !\Selector30~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Decoder2~0_combout\,
	datac => \ALT_INV_Selector30~1_combout\,
	dataf => \ALT_INV_Selector24~0_combout\,
	combout => \Selector30~2_combout\);

-- Location: LABCELL_X47_Y16_N54
\buffer_8x8[2][0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[2][0]~5_combout\ = ( \Selector30~2_combout\ & ( \buffer_8x8[2][0]~q\ ) ) # ( !\Selector30~2_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[2][0]~q\,
	dataf => \ALT_INV_Selector30~2_combout\,
	combout => \buffer_8x8[2][0]~5_combout\);

-- Location: FF_X47_Y16_N55
\buffer_8x8[2][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][0]~5_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][0]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y15_N0
\process_1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = ( \buffer_8x8[2][0]~DUPLICATE_q\ & ( !\buffer_8x8[2][2]~q\ $ (!\process_1~6_combout\ $ (!\buffer_8x8[2][1]~q\ $ (\buffer_8x8[2][3]~DUPLICATE_q\))) ) ) # ( !\buffer_8x8[2][0]~DUPLICATE_q\ & ( !\buffer_8x8[2][2]~q\ $ 
-- (!\process_1~6_combout\ $ (!\buffer_8x8[2][1]~q\ $ (!\buffer_8x8[2][3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][2]~q\,
	datab => \ALT_INV_process_1~6_combout\,
	datac => \ALT_INV_buffer_8x8[2][1]~q\,
	datad => \ALT_INV_buffer_8x8[2][3]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[2][0]~DUPLICATE_q\,
	combout => \process_1~7_combout\);

-- Location: LABCELL_X48_Y15_N51
\idx_l[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_l[0]~3_combout\ = ( \process_1~7_combout\ & ( !\process_1~5_combout\ & ( ((\process_1~9_combout\ & !\process_1~1_combout\)) # (\process_1~3_combout\) ) ) ) # ( !\process_1~7_combout\ & ( !\process_1~5_combout\ & ( ((!\process_1~1_combout\ & 
-- ((\process_1~23_combout\) # (\process_1~9_combout\)))) # (\process_1~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100110011011101110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~9_combout\,
	datab => \ALT_INV_process_1~3_combout\,
	datac => \ALT_INV_process_1~23_combout\,
	datad => \ALT_INV_process_1~1_combout\,
	datae => \ALT_INV_process_1~7_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \idx_l[0]~3_combout\);

-- Location: LABCELL_X48_Y14_N0
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( !\idx_l[2]~1_combout\ & ( (\state.S_CORR~q\ & (!\idx_l[0]~3_combout\ & \idx_l[1]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_idx_l[1]~2_combout\,
	dataf => \ALT_INV_idx_l[2]~1_combout\,
	combout => \Selector38~0_combout\);

-- Location: LABCELL_X47_Y14_N0
\Selector38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = ( \Decoder2~6_combout\ & ( (!\Selector44~0_combout\ & !\Selector38~0_combout\) ) ) # ( !\Decoder2~6_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector44~0_combout\,
	datad => \ALT_INV_Selector38~0_combout\,
	dataf => \ALT_INV_Decoder2~6_combout\,
	combout => \Selector38~1_combout\);

-- Location: LABCELL_X47_Y14_N3
\buffer_8x8[4][6]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][6]~50_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector38~1_combout\) # (\buffer_8x8[4][6]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector38~1_combout\ & (!\state.S_CORR~q\ & (\u_fifo_in|Fifo[0][6]~q\))) # (\Selector38~1_combout\ & 
-- (((\buffer_8x8[4][6]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector38~1_combout\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[4][6]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[4][6]~50_combout\);

-- Location: FF_X47_Y14_N5
\buffer_8x8[4][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][6]~50_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][6]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N15
\Selector52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = ( \Selector52~0_combout\ & ( (!\Selector58~0_combout\ & !\Decoder2~6_combout\) ) ) # ( !\Selector52~0_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector58~0_combout\,
	datac => \ALT_INV_Decoder2~6_combout\,
	dataf => \ALT_INV_Selector52~0_combout\,
	combout => \Selector52~1_combout\);

-- Location: LABCELL_X47_Y15_N3
\buffer_8x8[6][6]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][6]~52_combout\ = ( \Selector52~1_combout\ & ( \buffer_8x8[6][6]~q\ ) ) # ( !\Selector52~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][6]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[6][6]~q\,
	dataf => \ALT_INV_Selector52~1_combout\,
	combout => \buffer_8x8[6][6]~52_combout\);

-- Location: FF_X47_Y15_N4
\buffer_8x8[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][6]~52_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][6]~q\);

-- Location: FF_X48_Y16_N32
\buffer_8x8[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][6]~51_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][6]~q\);

-- Location: LABCELL_X47_Y14_N21
\Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = ( !\Selector45~0_combout\ & ( \Decoder2~6_combout\ & ( !\Selector51~0_combout\ ) ) ) # ( \Selector45~0_combout\ & ( !\Decoder2~6_combout\ & ( !\Selector51~0_combout\ ) ) ) # ( !\Selector45~0_combout\ & ( !\Decoder2~6_combout\ & ( 
-- !\Selector51~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector51~0_combout\,
	datae => \ALT_INV_Selector45~0_combout\,
	dataf => \ALT_INV_Decoder2~6_combout\,
	combout => \Selector45~1_combout\);

-- Location: LABCELL_X48_Y16_N30
\buffer_8x8[5][6]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][6]~51_combout\ = ( \Selector45~1_combout\ & ( \buffer_8x8[5][6]~q\ ) ) # ( !\Selector45~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][6]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[5][6]~q\,
	dataf => \ALT_INV_Selector45~1_combout\,
	combout => \buffer_8x8[5][6]~51_combout\);

-- Location: FF_X48_Y16_N31
\buffer_8x8[5][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][6]~51_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][6]~DUPLICATE_q\);

-- Location: FF_X47_Y16_N35
\buffer_8x8[3][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][6]~53_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][6]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y16_N51
\Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = ( \Selector10~1_combout\ & ( (!\Decoder2~6_combout\ & !\Selector16~0_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~6_combout\,
	datad => \ALT_INV_Selector16~0_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: LABCELL_X47_Y16_N21
\buffer_8x8[0][6]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][6]~55_combout\ = ( \Selector10~2_combout\ & ( \buffer_8x8[0][6]~q\ ) ) # ( !\Selector10~2_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][6]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[0][6]~q\,
	dataf => \ALT_INV_Selector10~2_combout\,
	combout => \buffer_8x8[0][6]~55_combout\);

-- Location: FF_X47_Y16_N22
\buffer_8x8[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][6]~55_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][6]~q\);

-- Location: LABCELL_X47_Y16_N24
\process_1~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~14_combout\ = ( \buffer_8x8[0][6]~q\ & ( !\buffer_8x8[2][6]~q\ $ (!\buffer_8x8[3][6]~DUPLICATE_q\ $ (!\buffer_8x8[1][6]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[0][6]~q\ & ( !\buffer_8x8[2][6]~q\ $ (!\buffer_8x8[3][6]~DUPLICATE_q\ $ 
-- (\buffer_8x8[1][6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[2][6]~q\,
	datac => \ALT_INV_buffer_8x8[3][6]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[1][6]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[0][6]~q\,
	combout => \process_1~14_combout\);

-- Location: LABCELL_X47_Y16_N48
\process_1~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~15_combout\ = ( \process_1~14_combout\ & ( !\buffer_8x8[7][6]~q\ $ (!\buffer_8x8[4][6]~DUPLICATE_q\ $ (!\buffer_8x8[6][6]~q\ $ (\buffer_8x8[5][6]~DUPLICATE_q\))) ) ) # ( !\process_1~14_combout\ & ( !\buffer_8x8[7][6]~q\ $ 
-- (!\buffer_8x8[4][6]~DUPLICATE_q\ $ (!\buffer_8x8[6][6]~q\ $ (!\buffer_8x8[5][6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][6]~q\,
	datab => \ALT_INV_buffer_8x8[4][6]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[6][6]~q\,
	datad => \ALT_INV_buffer_8x8[5][6]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~14_combout\,
	combout => \process_1~15_combout\);

-- Location: LABCELL_X48_Y15_N36
\idx_c[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_c[1]~2_combout\ = ( \process_1~19_combout\ & ( ((!\process_1~11_combout\ & !\process_1~13_combout\)) # (\process_1~15_combout\) ) ) # ( !\process_1~19_combout\ & ( ((\process_1~21_combout\ & (!\process_1~11_combout\ & !\process_1~13_combout\))) # 
-- (\process_1~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101011101010101010111110101010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~15_combout\,
	datab => \ALT_INV_process_1~21_combout\,
	datac => \ALT_INV_process_1~11_combout\,
	datad => \ALT_INV_process_1~13_combout\,
	dataf => \ALT_INV_process_1~19_combout\,
	combout => \idx_c[1]~2_combout\);

-- Location: LABCELL_X48_Y14_N15
\Decoder2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~4_combout\ = ( !\idx_c[0]~1_combout\ & ( (\idx_c[2]~0_combout\ & !\idx_c[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_c[2]~0_combout\,
	datad => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Decoder2~4_combout\);

-- Location: LABCELL_X48_Y14_N9
\Selector47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = ( \Selector45~0_combout\ & ( (!\Decoder2~4_combout\ & !\Selector51~0_combout\) ) ) # ( !\Selector45~0_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder2~4_combout\,
	datac => \ALT_INV_Selector51~0_combout\,
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: MLABCELL_X49_Y15_N51
\buffer_8x8[5][4]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][4]~37_combout\ = ( \Selector47~0_combout\ & ( \buffer_8x8[5][4]~q\ ) ) # ( !\Selector47~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][4]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datad => \ALT_INV_buffer_8x8[5][4]~q\,
	dataf => \ALT_INV_Selector47~0_combout\,
	combout => \buffer_8x8[5][4]~37_combout\);

-- Location: FF_X49_Y15_N53
\buffer_8x8[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][4]~37_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][4]~q\);

-- Location: FF_X49_Y15_N26
\buffer_8x8[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][4]~38_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][4]~q\);

-- Location: MLABCELL_X49_Y14_N39
\Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = ( \Selector52~0_combout\ & ( (!\Decoder2~4_combout\ & !\Selector58~0_combout\) ) ) # ( !\Selector52~0_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Decoder2~4_combout\,
	datad => \ALT_INV_Selector58~0_combout\,
	dataf => \ALT_INV_Selector52~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: MLABCELL_X49_Y15_N24
\buffer_8x8[6][4]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][4]~38_combout\ = ( \Selector54~0_combout\ & ( \buffer_8x8[6][4]~q\ ) ) # ( !\Selector54~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][4]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datad => \ALT_INV_buffer_8x8[6][4]~q\,
	dataf => \ALT_INV_Selector54~0_combout\,
	combout => \buffer_8x8[6][4]~38_combout\);

-- Location: FF_X49_Y15_N25
\buffer_8x8[6][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][4]~38_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][4]~DUPLICATE_q\);

-- Location: FF_X49_Y15_N17
\buffer_8x8[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][4]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][4]~q\);

-- Location: MLABCELL_X49_Y15_N33
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( !\Selector16~0_combout\ & ( (!\Selector10~1_combout\) # (!\Decoder2~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector10~1_combout\,
	datad => \ALT_INV_Decoder2~4_combout\,
	dataf => \ALT_INV_Selector16~0_combout\,
	combout => \Selector12~0_combout\);

-- Location: MLABCELL_X49_Y15_N57
\buffer_8x8[0][4]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][4]~41_combout\ = ( \Selector12~0_combout\ & ( \buffer_8x8[0][4]~q\ ) ) # ( !\Selector12~0_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][4]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \u_fifo_in|ALT_INV_Fifo[0][4]~q\,
	datac => \ALT_INV_buffer_8x8~4_combout\,
	datad => \ALT_INV_buffer_8x8[0][4]~q\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \buffer_8x8[0][4]~41_combout\);

-- Location: FF_X49_Y15_N59
\buffer_8x8[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][4]~41_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][4]~q\);

-- Location: MLABCELL_X49_Y15_N9
\process_1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~10_combout\ = ( \buffer_8x8[1][4]~q\ & ( !\buffer_8x8[2][4]~q\ $ (!\buffer_8x8[0][4]~q\ $ (!\buffer_8x8[3][4]~q\)) ) ) # ( !\buffer_8x8[1][4]~q\ & ( !\buffer_8x8[2][4]~q\ $ (!\buffer_8x8[0][4]~q\ $ (\buffer_8x8[3][4]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[2][4]~q\,
	datac => \ALT_INV_buffer_8x8[0][4]~q\,
	datad => \ALT_INV_buffer_8x8[3][4]~q\,
	dataf => \ALT_INV_buffer_8x8[1][4]~q\,
	combout => \process_1~10_combout\);

-- Location: MLABCELL_X49_Y15_N15
\process_1~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~11_combout\ = ( \process_1~10_combout\ & ( !\buffer_8x8[5][4]~q\ $ (!\buffer_8x8[6][4]~DUPLICATE_q\ $ (!\buffer_8x8[4][4]~q\ $ (\buffer_8x8[7][4]~q\))) ) ) # ( !\process_1~10_combout\ & ( !\buffer_8x8[5][4]~q\ $ (!\buffer_8x8[6][4]~DUPLICATE_q\ 
-- $ (!\buffer_8x8[4][4]~q\ $ (!\buffer_8x8[7][4]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][4]~q\,
	datab => \ALT_INV_buffer_8x8[6][4]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[4][4]~q\,
	datad => \ALT_INV_buffer_8x8[7][4]~q\,
	dataf => \ALT_INV_process_1~10_combout\,
	combout => \process_1~11_combout\);

-- Location: LABCELL_X48_Y15_N3
\idx_c[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_c[2]~0_combout\ = ( \process_1~15_combout\ ) # ( !\process_1~15_combout\ & ( (\process_1~13_combout\) # (\process_1~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~11_combout\,
	datad => \ALT_INV_process_1~13_combout\,
	dataf => \ALT_INV_process_1~15_combout\,
	combout => \idx_c[2]~0_combout\);

-- Location: LABCELL_X48_Y14_N30
\Decoder2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder2~0_combout\ = ( !\idx_c[0]~1_combout\ & ( (!\idx_c[2]~0_combout\ & !\idx_c[1]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_idx_c[2]~0_combout\,
	datad => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Decoder2~0_combout\);

-- Location: LABCELL_X48_Y14_N12
\Selector16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = ( \Selector10~1_combout\ & ( (!\Decoder2~0_combout\ & !\Selector16~0_combout\) ) ) # ( !\Selector10~1_combout\ & ( !\Selector16~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Decoder2~0_combout\,
	datad => \ALT_INV_Selector16~0_combout\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector16~1_combout\);

-- Location: LABCELL_X47_Y16_N18
\buffer_8x8[0][0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][0]~13_combout\ = ( \Selector16~1_combout\ & ( \buffer_8x8[0][0]~q\ ) ) # ( !\Selector16~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8~4_combout\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[0][0]~q\,
	dataf => \ALT_INV_Selector16~1_combout\,
	combout => \buffer_8x8[0][0]~13_combout\);

-- Location: FF_X47_Y16_N20
\buffer_8x8[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][0]~13_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][0]~q\);

-- Location: FF_X47_Y17_N1
\buffer_8x8[0][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][3]~34_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][3]~DUPLICATE_q\);

-- Location: FF_X49_Y15_N58
\buffer_8x8[0][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][4]~41_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N9
\buffer_8x8[0][7]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[0][7]~62_combout\ = ( \buffer_8x8[0][7]~q\ & ( \load_cnt[0]~DUPLICATE_q\ ) ) # ( \buffer_8x8[0][7]~q\ & ( !\load_cnt[0]~DUPLICATE_q\ & ( ((!\Selector30~0_combout\) # (load_cnt(1))) # (\u_fifo_in|Fifo[0][7]~q\) ) ) ) # ( !\buffer_8x8[0][7]~q\ & 
-- ( !\load_cnt[0]~DUPLICATE_q\ & ( (\u_fifo_in|Fifo[0][7]~q\ & (\Selector30~0_combout\ & !load_cnt(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000110111111101111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	datab => \ALT_INV_Selector30~0_combout\,
	datac => ALT_INV_load_cnt(1),
	datae => \ALT_INV_buffer_8x8[0][7]~q\,
	dataf => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	combout => \buffer_8x8[0][7]~62_combout\);

-- Location: FF_X48_Y13_N10
\buffer_8x8[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][7]~62_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][7]~q\);

-- Location: LABCELL_X47_Y16_N39
\process_1~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~28_combout\ = ( \buffer_8x8[0][7]~q\ & ( !\buffer_8x8[0][5]~q\ $ (!\buffer_8x8[0][6]~q\ $ (!\buffer_8x8[0][4]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[0][7]~q\ & ( !\buffer_8x8[0][5]~q\ $ (!\buffer_8x8[0][6]~q\ $ (\buffer_8x8[0][4]~DUPLICATE_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[0][5]~q\,
	datac => \ALT_INV_buffer_8x8[0][6]~q\,
	datad => \ALT_INV_buffer_8x8[0][4]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[0][7]~q\,
	combout => \process_1~28_combout\);

-- Location: LABCELL_X47_Y16_N12
\process_1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~29_combout\ = ( \process_1~28_combout\ & ( !\buffer_8x8[0][0]~q\ $ (!\buffer_8x8[0][1]~q\ $ (!\buffer_8x8[0][2]~q\ $ (\buffer_8x8[0][3]~DUPLICATE_q\))) ) ) # ( !\process_1~28_combout\ & ( !\buffer_8x8[0][0]~q\ $ (!\buffer_8x8[0][1]~q\ $ 
-- (!\buffer_8x8[0][2]~q\ $ (!\buffer_8x8[0][3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[0][0]~q\,
	datab => \ALT_INV_buffer_8x8[0][1]~q\,
	datac => \ALT_INV_buffer_8x8[0][2]~q\,
	datad => \ALT_INV_buffer_8x8[0][3]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~28_combout\,
	combout => \process_1~29_combout\);

-- Location: FF_X47_Y16_N43
\buffer_8x8[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][0]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][0]~q\);

-- Location: FF_X49_Y15_N49
\buffer_8x8[5][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][0]~8_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][0]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y14_N30
\Selector58~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = ( \Decoder2~0_combout\ & ( (!\Selector58~0_combout\ & !\Selector52~0_combout\) ) ) # ( !\Decoder2~0_combout\ & ( !\Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector58~0_combout\,
	datad => \ALT_INV_Selector52~0_combout\,
	dataf => \ALT_INV_Decoder2~0_combout\,
	combout => \Selector58~1_combout\);

-- Location: FF_X47_Y15_N32
\buffer_8x8[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][0]~9_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][0]~q\);

-- Location: LABCELL_X47_Y15_N30
\buffer_8x8[6][0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][0]~9_combout\ = ( \buffer_8x8~4_combout\ & ( (!\Selector58~1_combout\) # (\buffer_8x8[6][0]~q\) ) ) # ( !\buffer_8x8~4_combout\ & ( (!\Selector58~1_combout\ & (\u_fifo_in|Fifo[0][0]~q\ & (!\state.S_CORR~q\))) # (\Selector58~1_combout\ & 
-- (((\buffer_8x8[6][0]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001111010000000100111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datab => \ALT_INV_state.S_CORR~q\,
	datac => \ALT_INV_Selector58~1_combout\,
	datad => \ALT_INV_buffer_8x8[6][0]~q\,
	dataf => \ALT_INV_buffer_8x8~4_combout\,
	combout => \buffer_8x8[6][0]~9_combout\);

-- Location: FF_X47_Y15_N31
\buffer_8x8[6][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][0]~9_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][0]~DUPLICATE_q\);

-- Location: FF_X47_Y17_N55
\buffer_8x8[1][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][0]~12_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][0]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y16_N36
\process_1~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~30_combout\ = ( \buffer_8x8[3][0]~q\ & ( !\buffer_8x8[2][0]~q\ $ (!\buffer_8x8[0][0]~q\ $ (!\buffer_8x8[1][0]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[3][0]~q\ & ( !\buffer_8x8[2][0]~q\ $ (!\buffer_8x8[0][0]~q\ $ (\buffer_8x8[1][0]~DUPLICATE_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][0]~q\,
	datac => \ALT_INV_buffer_8x8[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[1][0]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[3][0]~q\,
	combout => \process_1~30_combout\);

-- Location: LABCELL_X48_Y16_N48
\process_1~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~31_combout\ = ( \buffer_8x8[6][0]~DUPLICATE_q\ & ( \process_1~30_combout\ & ( !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[5][0]~DUPLICATE_q\ $ (\buffer_8x8[4][0]~DUPLICATE_q\)) ) ) ) # ( !\buffer_8x8[6][0]~DUPLICATE_q\ & ( \process_1~30_combout\ & ( 
-- !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[5][0]~DUPLICATE_q\ $ (!\buffer_8x8[4][0]~DUPLICATE_q\)) ) ) ) # ( \buffer_8x8[6][0]~DUPLICATE_q\ & ( !\process_1~30_combout\ & ( !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[5][0]~DUPLICATE_q\ $ 
-- (!\buffer_8x8[4][0]~DUPLICATE_q\)) ) ) ) # ( !\buffer_8x8[6][0]~DUPLICATE_q\ & ( !\process_1~30_combout\ & ( !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[5][0]~DUPLICATE_q\ $ (\buffer_8x8[4][0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[7][0]~q\,
	datac => \ALT_INV_buffer_8x8[5][0]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[4][0]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[6][0]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~30_combout\,
	combout => \process_1~31_combout\);

-- Location: LABCELL_X48_Y14_N45
\c~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~2_combout\ = ( \process_1~13_combout\ & ( !\process_1~11_combout\ $ (\process_1~15_combout\) ) ) # ( !\process_1~13_combout\ & ( !\process_1~11_combout\ $ (!\process_1~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~11_combout\,
	datad => \ALT_INV_process_1~15_combout\,
	dataf => \ALT_INV_process_1~13_combout\,
	combout => \c~2_combout\);

-- Location: MLABCELL_X49_Y14_N12
\c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~3_combout\ = ( \process_1~31_combout\ & ( \c~2_combout\ & ( !\process_1~17_combout\ $ (!\process_1~19_combout\ $ (\process_1~21_combout\)) ) ) ) # ( !\process_1~31_combout\ & ( \c~2_combout\ & ( !\process_1~17_combout\ $ (!\process_1~19_combout\ $ 
-- (!\process_1~21_combout\)) ) ) ) # ( \process_1~31_combout\ & ( !\c~2_combout\ & ( !\process_1~17_combout\ $ (!\process_1~19_combout\ $ (!\process_1~21_combout\)) ) ) ) # ( !\process_1~31_combout\ & ( !\c~2_combout\ & ( !\process_1~17_combout\ $ 
-- (!\process_1~19_combout\ $ (\process_1~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010100101010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~17_combout\,
	datac => \ALT_INV_process_1~19_combout\,
	datad => \ALT_INV_process_1~21_combout\,
	datae => \ALT_INV_process_1~31_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \c~3_combout\);

-- Location: LABCELL_X50_Y15_N36
\c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~1_combout\ = ( \process_1~1_combout\ & ( \process_1~9_combout\ & ( !\process_1~23_combout\ $ (!\process_1~5_combout\ $ (!\process_1~3_combout\ $ (!\process_1~7_combout\))) ) ) ) # ( !\process_1~1_combout\ & ( \process_1~9_combout\ & ( 
-- !\process_1~23_combout\ $ (!\process_1~5_combout\ $ (!\process_1~3_combout\ $ (\process_1~7_combout\))) ) ) ) # ( \process_1~1_combout\ & ( !\process_1~9_combout\ & ( !\process_1~23_combout\ $ (!\process_1~5_combout\ $ (!\process_1~3_combout\ $ 
-- (\process_1~7_combout\))) ) ) ) # ( !\process_1~1_combout\ & ( !\process_1~9_combout\ & ( !\process_1~23_combout\ $ (!\process_1~5_combout\ $ (!\process_1~3_combout\ $ (!\process_1~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~23_combout\,
	datab => \ALT_INV_process_1~5_combout\,
	datac => \ALT_INV_process_1~3_combout\,
	datad => \ALT_INV_process_1~7_combout\,
	datae => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_process_1~9_combout\,
	combout => \c~1_combout\);

-- Location: FF_X47_Y17_N22
\buffer_8x8[7][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][3]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][3]~DUPLICATE_q\);

-- Location: FF_X50_Y15_N19
\buffer_8x8[3][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][7]~60_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][7]~DUPLICATE_q\);

-- Location: FF_X50_Y15_N46
\buffer_8x8[2][7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][7]~56_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][7]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y14_N6
\process_1~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~24_combout\ = ( \buffer_8x8[2][7]~DUPLICATE_q\ & ( !\buffer_8x8[0][7]~q\ $ (!\buffer_8x8[1][7]~q\ $ (!\buffer_8x8[4][7]~DUPLICATE_q\ $ (\buffer_8x8[3][7]~DUPLICATE_q\))) ) ) # ( !\buffer_8x8[2][7]~DUPLICATE_q\ & ( !\buffer_8x8[0][7]~q\ $ 
-- (!\buffer_8x8[1][7]~q\ $ (!\buffer_8x8[4][7]~DUPLICATE_q\ $ (!\buffer_8x8[3][7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[0][7]~q\,
	datab => \ALT_INV_buffer_8x8[1][7]~q\,
	datac => \ALT_INV_buffer_8x8[4][7]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[3][7]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[2][7]~DUPLICATE_q\,
	combout => \process_1~24_combout\);

-- Location: LABCELL_X50_Y15_N6
\buffer_8x8[5][7]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][7]~58_combout\ = ( \buffer_8x8[5][7]~q\ & ( \buffer_8x8[7][6]~6_combout\ & ( ((!\load_cnt[0]~DUPLICATE_q\) # (\load_cnt[1]~DUPLICATE_q\)) # (\u_fifo_in|Fifo[0][7]~q\) ) ) ) # ( !\buffer_8x8[5][7]~q\ & ( \buffer_8x8[7][6]~6_combout\ & ( 
-- (\u_fifo_in|Fifo[0][7]~q\ & (\load_cnt[0]~DUPLICATE_q\ & !\load_cnt[1]~DUPLICATE_q\)) ) ) ) # ( \buffer_8x8[5][7]~q\ & ( !\buffer_8x8[7][6]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101000000001111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	datac => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	datad => \ALT_INV_load_cnt[1]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[5][7]~q\,
	dataf => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	combout => \buffer_8x8[5][7]~58_combout\);

-- Location: FF_X50_Y15_N8
\buffer_8x8[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][7]~58_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][7]~q\);

-- Location: FF_X48_Y13_N5
\buffer_8x8[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][7]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][7]~q\);

-- Location: LABCELL_X48_Y13_N21
\process_1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~25_combout\ = ( \buffer_8x8[7][6]~q\ & ( !\buffer_8x8[7][7]~q\ $ (!\buffer_8x8[6][7]~q\ $ (!\buffer_8x8[7][5]~q\)) ) ) # ( !\buffer_8x8[7][6]~q\ & ( !\buffer_8x8[7][7]~q\ $ (!\buffer_8x8[6][7]~q\ $ (\buffer_8x8[7][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][7]~q\,
	datac => \ALT_INV_buffer_8x8[6][7]~q\,
	datad => \ALT_INV_buffer_8x8[7][5]~q\,
	dataf => \ALT_INV_buffer_8x8[7][6]~q\,
	combout => \process_1~25_combout\);

-- Location: MLABCELL_X49_Y14_N24
\process_1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~26_combout\ = ( \buffer_8x8[5][7]~q\ & ( \process_1~25_combout\ & ( !\buffer_8x8[7][3]~DUPLICATE_q\ $ (!\buffer_8x8[7][4]~q\ $ (\process_1~24_combout\)) ) ) ) # ( !\buffer_8x8[5][7]~q\ & ( \process_1~25_combout\ & ( 
-- !\buffer_8x8[7][3]~DUPLICATE_q\ $ (!\buffer_8x8[7][4]~q\ $ (!\process_1~24_combout\)) ) ) ) # ( \buffer_8x8[5][7]~q\ & ( !\process_1~25_combout\ & ( !\buffer_8x8[7][3]~DUPLICATE_q\ $ (!\buffer_8x8[7][4]~q\ $ (!\process_1~24_combout\)) ) ) ) # ( 
-- !\buffer_8x8[5][7]~q\ & ( !\process_1~25_combout\ & ( !\buffer_8x8[7][3]~DUPLICATE_q\ $ (!\buffer_8x8[7][4]~q\ $ (\process_1~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101101001010101101010100101010110100101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][3]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[7][4]~q\,
	datad => \ALT_INV_process_1~24_combout\,
	datae => \ALT_INV_buffer_8x8[5][7]~q\,
	dataf => \ALT_INV_process_1~25_combout\,
	combout => \process_1~26_combout\);

-- Location: MLABCELL_X49_Y14_N48
\process_1~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~27_combout\ = ( \process_1~26_combout\ & ( !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[7][1]~DUPLICATE_q\ $ (!\buffer_8x8[7][2]~DUPLICATE_q\)) ) ) # ( !\process_1~26_combout\ & ( !\buffer_8x8[7][0]~q\ $ (!\buffer_8x8[7][1]~DUPLICATE_q\ $ 
-- (\buffer_8x8[7][2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][0]~q\,
	datac => \ALT_INV_buffer_8x8[7][1]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[7][2]~DUPLICATE_q\,
	dataf => \ALT_INV_process_1~26_combout\,
	combout => \process_1~27_combout\);

-- Location: LABCELL_X50_Y14_N27
\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \process_1~3_combout\ & ( \process_1~5_combout\ & ( \process_1~1_combout\ ) ) ) # ( !\process_1~3_combout\ & ( \process_1~5_combout\ & ( !\process_1~1_combout\ ) ) ) # ( \process_1~3_combout\ & ( !\process_1~5_combout\ & ( 
-- !\process_1~1_combout\ ) ) ) # ( !\process_1~3_combout\ & ( !\process_1~5_combout\ & ( \process_1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~1_combout\,
	datae => \ALT_INV_process_1~3_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \c~0_combout\);

-- Location: LABCELL_X50_Y14_N42
\c~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~6_combout\ = ( \process_1~3_combout\ & ( \process_1~5_combout\ ) ) # ( !\process_1~3_combout\ & ( \process_1~5_combout\ & ( \process_1~1_combout\ ) ) ) # ( \process_1~3_combout\ & ( !\process_1~5_combout\ & ( \process_1~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_process_1~1_combout\,
	datae => \ALT_INV_process_1~3_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \c~6_combout\);

-- Location: LABCELL_X50_Y14_N54
\Selector64~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~5_combout\ = ( \c~0_combout\ & ( !\c~6_combout\ & ( (!\process_1~23_combout\ & (!\process_1~7_combout\ & (!\process_1~9_combout\ & !\process_1~29_combout\))) ) ) ) # ( !\c~0_combout\ & ( !\c~6_combout\ & ( (!\process_1~23_combout\ & 
-- ((!\process_1~7_combout\ & ((!\process_1~9_combout\) # (!\process_1~29_combout\))) # (\process_1~7_combout\ & (!\process_1~9_combout\ & !\process_1~29_combout\)))) # (\process_1~23_combout\ & (!\process_1~7_combout\ & (!\process_1~9_combout\ & 
-- !\process_1~29_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~23_combout\,
	datab => \ALT_INV_process_1~7_combout\,
	datac => \ALT_INV_process_1~9_combout\,
	datad => \ALT_INV_process_1~29_combout\,
	datae => \ALT_INV_c~0_combout\,
	dataf => \ALT_INV_c~6_combout\,
	combout => \Selector64~5_combout\);

-- Location: MLABCELL_X49_Y16_N36
\c~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~4_combout\ = ( \process_1~15_combout\ & ( \process_1~13_combout\ ) ) # ( !\process_1~15_combout\ & ( \process_1~13_combout\ & ( \process_1~11_combout\ ) ) ) # ( \process_1~15_combout\ & ( !\process_1~13_combout\ & ( \process_1~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_process_1~11_combout\,
	datae => \ALT_INV_process_1~15_combout\,
	dataf => \ALT_INV_process_1~13_combout\,
	combout => \c~4_combout\);

-- Location: MLABCELL_X49_Y16_N12
\c~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~5_combout\ = ( \c~4_combout\ & ( \c~2_combout\ & ( (!\process_1~21_combout\ & ((!\process_1~31_combout\ & (!\process_1~19_combout\ & !\process_1~17_combout\)) # (\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)))) # 
-- (\process_1~21_combout\ & ((!\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)) # (\process_1~31_combout\ & ((\process_1~17_combout\) # (\process_1~19_combout\))))) ) ) ) # ( !\c~4_combout\ & ( \c~2_combout\ & ( 
-- (!\process_1~21_combout\ & ((!\process_1~31_combout\ & ((\process_1~17_combout\) # (\process_1~19_combout\))) # (\process_1~31_combout\ & ((!\process_1~19_combout\) # (!\process_1~17_combout\))))) # (\process_1~21_combout\ & ((!\process_1~31_combout\ & 
-- ((!\process_1~19_combout\) # (!\process_1~17_combout\))) # (\process_1~31_combout\ & (!\process_1~19_combout\ & !\process_1~17_combout\)))) ) ) ) # ( \c~4_combout\ & ( !\c~2_combout\ & ( (!\process_1~21_combout\ & ((!\process_1~31_combout\ & 
-- ((!\process_1~19_combout\) # (!\process_1~17_combout\))) # (\process_1~31_combout\ & (!\process_1~19_combout\ & !\process_1~17_combout\)))) # (\process_1~21_combout\ & ((!\process_1~31_combout\ & (!\process_1~19_combout\ & !\process_1~17_combout\)) # 
-- (\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)))) ) ) ) # ( !\c~4_combout\ & ( !\c~2_combout\ & ( (!\process_1~21_combout\ & ((!\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)) # 
-- (\process_1~31_combout\ & ((\process_1~17_combout\) # (\process_1~19_combout\))))) # (\process_1~21_combout\ & ((!\process_1~31_combout\ & ((\process_1~17_combout\) # (\process_1~19_combout\))) # (\process_1~31_combout\ & ((!\process_1~19_combout\) # 
-- (!\process_1~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111110111010001000000101111110111010001000000100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~21_combout\,
	datab => \ALT_INV_process_1~31_combout\,
	datac => \ALT_INV_process_1~19_combout\,
	datad => \ALT_INV_process_1~17_combout\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \c~5_combout\);

-- Location: MLABCELL_X49_Y16_N54
\c~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~7_combout\ = ( \c~4_combout\ & ( \c~2_combout\ & ( (((\process_1~17_combout\) # (\process_1~19_combout\)) # (\process_1~31_combout\)) # (\process_1~21_combout\) ) ) ) # ( !\c~4_combout\ & ( \c~2_combout\ & ( (!\process_1~21_combout\ & 
-- (\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\))) # (\process_1~21_combout\ & ((!\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)) # (\process_1~31_combout\ & ((\process_1~17_combout\) # 
-- (\process_1~19_combout\))))) ) ) ) # ( \c~4_combout\ & ( !\c~2_combout\ & ( (!\process_1~21_combout\ & ((!\process_1~31_combout\ & (\process_1~19_combout\ & \process_1~17_combout\)) # (\process_1~31_combout\ & ((\process_1~17_combout\) # 
-- (\process_1~19_combout\))))) # (\process_1~21_combout\ & (((\process_1~17_combout\) # (\process_1~19_combout\)) # (\process_1~31_combout\))) ) ) ) # ( !\c~4_combout\ & ( !\c~2_combout\ & ( (\process_1~21_combout\ & (\process_1~31_combout\ & 
-- (\process_1~19_combout\ & \process_1~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000101110111111100000001000101110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~21_combout\,
	datab => \ALT_INV_process_1~31_combout\,
	datac => \ALT_INV_process_1~19_combout\,
	datad => \ALT_INV_process_1~17_combout\,
	datae => \ALT_INV_c~4_combout\,
	dataf => \ALT_INV_c~2_combout\,
	combout => \c~7_combout\);

-- Location: LABCELL_X50_Y14_N39
\Selector64~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~2_combout\ = ( !\c~5_combout\ & ( !\c~7_combout\ & ( (!\process_1~27_combout\ & \Selector64~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~27_combout\,
	datad => \ALT_INV_Selector64~5_combout\,
	datae => \ALT_INV_c~5_combout\,
	dataf => \ALT_INV_c~7_combout\,
	combout => \Selector64~2_combout\);

-- Location: LABCELL_X50_Y14_N33
\Selector64~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~3_combout\ = ( \c~1_combout\ & ( \Selector64~2_combout\ & ( (!\state.S_CORR~q\ & ((!\state.S_ANALYSE~q\) # ((!\process_1~29_combout\) # (\c~3_combout\)))) ) ) ) # ( !\c~1_combout\ & ( \Selector64~2_combout\ & ( (!\state.S_CORR~q\ & 
-- ((!\state.S_ANALYSE~q\) # ((\c~3_combout\) # (\process_1~29_combout\)))) ) ) ) # ( \c~1_combout\ & ( !\Selector64~2_combout\ & ( !\state.S_CORR~q\ ) ) ) # ( !\c~1_combout\ & ( !\Selector64~2_combout\ & ( !\state.S_CORR~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010110000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_ANALYSE~q\,
	datab => \ALT_INV_process_1~29_combout\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_c~3_combout\,
	datae => \ALT_INV_c~1_combout\,
	dataf => \ALT_INV_Selector64~2_combout\,
	combout => \Selector64~3_combout\);

-- Location: LABCELL_X50_Y14_N48
\Selector64~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~6_combout\ = ( \process_1~27_combout\ & ( \state.S_ANALYSE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_ANALYSE~q\,
	datae => \ALT_INV_process_1~27_combout\,
	combout => \Selector64~6_combout\);

-- Location: LABCELL_X50_Y16_N15
\Add12~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~13_sumout\ = SUM(( GND ) + ( GND ) + ( \Add12~10\ ))
-- \Add12~14\ = CARRY(( GND ) + ( GND ) + ( \Add12~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add12~10\,
	sumout => \Add12~13_sumout\,
	cout => \Add12~14\);

-- Location: MLABCELL_X49_Y16_N18
\c~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~11_combout\ = ( \process_1~5_combout\ & ( \process_1~9_combout\ & ( !\process_1~3_combout\ $ (!\process_1~1_combout\ $ (\process_1~7_combout\)) ) ) ) # ( !\process_1~5_combout\ & ( \process_1~9_combout\ & ( !\process_1~3_combout\ $ 
-- (!\process_1~1_combout\ $ (!\process_1~7_combout\)) ) ) ) # ( \process_1~5_combout\ & ( !\process_1~9_combout\ & ( !\process_1~3_combout\ $ (!\process_1~1_combout\ $ (!\process_1~7_combout\)) ) ) ) # ( !\process_1~5_combout\ & ( !\process_1~9_combout\ & ( 
-- !\process_1~3_combout\ $ (!\process_1~1_combout\ $ (\process_1~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011110000110011110011000011001111000011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~3_combout\,
	datac => \ALT_INV_process_1~1_combout\,
	datad => \ALT_INV_process_1~7_combout\,
	datae => \ALT_INV_process_1~5_combout\,
	dataf => \ALT_INV_process_1~9_combout\,
	combout => \c~11_combout\);

-- Location: LABCELL_X50_Y16_N51
\c~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~12_combout\ = ( \process_1~7_combout\ & ( (!\process_1~3_combout\ & ((!\process_1~1_combout\ & ((\process_1~9_combout\) # (\process_1~5_combout\))) # (\process_1~1_combout\ & ((!\process_1~5_combout\) # (!\process_1~9_combout\))))) # 
-- (\process_1~3_combout\ & ((!\process_1~1_combout\ & ((!\process_1~5_combout\) # (!\process_1~9_combout\))) # (\process_1~1_combout\ & (!\process_1~5_combout\ & !\process_1~9_combout\)))) ) ) # ( !\process_1~7_combout\ & ( (!\process_1~3_combout\ & 
-- ((!\process_1~1_combout\ & (\process_1~5_combout\ & \process_1~9_combout\)) # (\process_1~1_combout\ & ((\process_1~9_combout\) # (\process_1~5_combout\))))) # (\process_1~3_combout\ & ((!\process_1~1_combout\ & ((\process_1~9_combout\) # 
-- (\process_1~5_combout\))) # (\process_1~1_combout\ & ((!\process_1~5_combout\) # (!\process_1~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111110000101110111111001111110111010000111111011101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~3_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~5_combout\,
	datad => \ALT_INV_process_1~9_combout\,
	dataf => \ALT_INV_process_1~7_combout\,
	combout => \c~12_combout\);

-- Location: LABCELL_X50_Y16_N48
\c~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~10_combout\ = ( \process_1~5_combout\ & ( !\process_1~1_combout\ $ (!\process_1~3_combout\ $ (!\process_1~9_combout\)) ) ) # ( !\process_1~5_combout\ & ( !\process_1~1_combout\ $ (!\process_1~3_combout\ $ (\process_1~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~3_combout\,
	datad => \ALT_INV_process_1~9_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \c~10_combout\);

-- Location: LABCELL_X50_Y16_N0
\Add12~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~26_cout\ = CARRY(( \c~3_combout\ ) + ( !\process_1~29_combout\ $ (!\process_1~23_combout\ $ (!\process_1~7_combout\ $ (!\c~10_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101100110100100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~29_combout\,
	datab => \ALT_INV_process_1~23_combout\,
	datac => \ALT_INV_process_1~7_combout\,
	datad => \ALT_INV_c~3_combout\,
	dataf => \ALT_INV_c~10_combout\,
	cin => GND,
	cout => \Add12~26_cout\);

-- Location: LABCELL_X50_Y16_N3
\Add12~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~17_sumout\ = SUM(( \c~5_combout\ ) + ( !\c~12_combout\ $ (((!\process_1~29_combout\ & ((!\process_1~23_combout\) # (!\c~11_combout\))) # (\process_1~29_combout\ & (!\process_1~23_combout\ & !\c~11_combout\)))) ) + ( \Add12~26_cout\ ))
-- \Add12~18\ = CARRY(( \c~5_combout\ ) + ( !\c~12_combout\ $ (((!\process_1~29_combout\ & ((!\process_1~23_combout\) # (!\c~11_combout\))) # (\process_1~29_combout\ & (!\process_1~23_combout\ & !\c~11_combout\)))) ) + ( \Add12~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010000001011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~29_combout\,
	datab => \ALT_INV_process_1~23_combout\,
	datac => \ALT_INV_c~11_combout\,
	datad => \ALT_INV_c~5_combout\,
	dataf => \ALT_INV_c~12_combout\,
	cin => \Add12~26_cout\,
	sumout => \Add12~17_sumout\,
	cout => \Add12~18\);

-- Location: LABCELL_X50_Y16_N12
\Add12~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~9_sumout\ = SUM(( GND ) + ( GND ) + ( \Add12~6\ ))
-- \Add12~10\ = CARRY(( GND ) + ( GND ) + ( \Add12~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add12~6\,
	sumout => \Add12~9_sumout\,
	cout => \Add12~10\);

-- Location: LABCELL_X50_Y15_N12
\c~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~9_combout\ = ( \process_1~1_combout\ & ( \process_1~9_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~5_combout\ & ((!\process_1~3_combout\) # (!\process_1~7_combout\))) # (\process_1~5_combout\ & (!\process_1~3_combout\ & 
-- !\process_1~7_combout\)))) # (\process_1~23_combout\ & ((!\process_1~5_combout\ & (!\process_1~3_combout\ & !\process_1~7_combout\)) # (\process_1~5_combout\ & (\process_1~3_combout\ & \process_1~7_combout\)))) ) ) ) # ( !\process_1~1_combout\ & ( 
-- \process_1~9_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~5_combout\ & ((\process_1~7_combout\) # (\process_1~3_combout\))) # (\process_1~5_combout\ & ((!\process_1~3_combout\) # (!\process_1~7_combout\))))) # (\process_1~23_combout\ & 
-- ((!\process_1~5_combout\ & ((!\process_1~3_combout\) # (!\process_1~7_combout\))) # (\process_1~5_combout\ & (!\process_1~3_combout\ & !\process_1~7_combout\)))) ) ) ) # ( \process_1~1_combout\ & ( !\process_1~9_combout\ & ( (!\process_1~23_combout\ & 
-- ((!\process_1~5_combout\ & ((\process_1~7_combout\) # (\process_1~3_combout\))) # (\process_1~5_combout\ & ((!\process_1~3_combout\) # (!\process_1~7_combout\))))) # (\process_1~23_combout\ & ((!\process_1~5_combout\ & ((!\process_1~3_combout\) # 
-- (!\process_1~7_combout\))) # (\process_1~5_combout\ & (!\process_1~3_combout\ & !\process_1~7_combout\)))) ) ) ) # ( !\process_1~1_combout\ & ( !\process_1~9_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~5_combout\ & (\process_1~3_combout\ & 
-- \process_1~7_combout\)) # (\process_1~5_combout\ & ((\process_1~7_combout\) # (\process_1~3_combout\))))) # (\process_1~23_combout\ & ((!\process_1~5_combout\ & ((\process_1~7_combout\) # (\process_1~3_combout\))) # (\process_1~5_combout\ & 
-- ((!\process_1~3_combout\) # (!\process_1~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101111110011111101110100001111110111010001110100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~23_combout\,
	datab => \ALT_INV_process_1~5_combout\,
	datac => \ALT_INV_process_1~3_combout\,
	datad => \ALT_INV_process_1~7_combout\,
	datae => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_process_1~9_combout\,
	combout => \c~9_combout\);

-- Location: LABCELL_X50_Y16_N6
\Add12~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~21_sumout\ = SUM(( !\c~8_combout\ $ (((!\process_1~29_combout\) # ((!\c~1_combout\) # (!\c~9_combout\)))) ) + ( \c~7_combout\ ) + ( \Add12~18\ ))
-- \Add12~22\ = CARRY(( !\c~8_combout\ $ (((!\process_1~29_combout\) # ((!\c~1_combout\) # (!\c~9_combout\)))) ) + ( \c~7_combout\ ) + ( \Add12~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~8_combout\,
	datab => \ALT_INV_process_1~29_combout\,
	datac => \ALT_INV_c~1_combout\,
	datad => \ALT_INV_c~9_combout\,
	dataf => \ALT_INV_c~7_combout\,
	cin => \Add12~18\,
	sumout => \Add12~21_sumout\,
	cout => \Add12~22\);

-- Location: MLABCELL_X49_Y16_N24
\Add5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = ( \process_1~1_combout\ & ( \process_1~5_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))) # (\process_1~3_combout\ & (!\process_1~9_combout\ & 
-- !\process_1~7_combout\)))) # (\process_1~23_combout\ & (!\process_1~3_combout\ & (!\process_1~9_combout\ & !\process_1~7_combout\))) ) ) ) # ( !\process_1~1_combout\ & ( \process_1~5_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~3_combout\ & 
-- (\process_1~9_combout\ & \process_1~7_combout\)) # (\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))))) # (\process_1~23_combout\ & ((!\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))) # 
-- (\process_1~3_combout\ & (!\process_1~9_combout\ & !\process_1~7_combout\)))) ) ) ) # ( \process_1~1_combout\ & ( !\process_1~5_combout\ & ( (!\process_1~23_combout\ & ((!\process_1~3_combout\ & (\process_1~9_combout\ & \process_1~7_combout\)) # 
-- (\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))))) # (\process_1~23_combout\ & ((!\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))) # (\process_1~3_combout\ & (!\process_1~9_combout\ & 
-- !\process_1~7_combout\)))) ) ) ) # ( !\process_1~1_combout\ & ( !\process_1~5_combout\ & ( (!\process_1~23_combout\ & (\process_1~3_combout\ & (\process_1~9_combout\ & \process_1~7_combout\))) # (\process_1~23_combout\ & ((!\process_1~3_combout\ & 
-- (\process_1~9_combout\ & \process_1~7_combout\)) # (\process_1~3_combout\ & (!\process_1~9_combout\ $ (!\process_1~7_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010110000101100110100000010110011010000110100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~23_combout\,
	datab => \ALT_INV_process_1~3_combout\,
	datac => \ALT_INV_process_1~9_combout\,
	datad => \ALT_INV_process_1~7_combout\,
	datae => \ALT_INV_process_1~1_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \Add5~0_combout\);

-- Location: LABCELL_X50_Y16_N9
\Add12~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~5_sumout\ = SUM(( (\c~8_combout\ & (\process_1~29_combout\ & \Add5~0_combout\)) ) + ( GND ) + ( \Add12~22\ ))
-- \Add12~6\ = CARRY(( (\c~8_combout\ & (\process_1~29_combout\ & \Add5~0_combout\)) ) + ( GND ) + ( \Add12~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c~8_combout\,
	datac => \ALT_INV_process_1~29_combout\,
	datad => \ALT_INV_Add5~0_combout\,
	cin => \Add12~22\,
	sumout => \Add12~5_sumout\,
	cout => \Add12~6\);

-- Location: LABCELL_X50_Y16_N42
\Selector64~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~1_combout\ = ( !\Add12~21_sumout\ & ( !\Add12~5_sumout\ & ( (\Selector64~6_combout\ & (!\Add12~13_sumout\ & (!\Add12~17_sumout\ & !\Add12~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector64~6_combout\,
	datab => \ALT_INV_Add12~13_sumout\,
	datac => \ALT_INV_Add12~17_sumout\,
	datad => \ALT_INV_Add12~9_sumout\,
	datae => \ALT_INV_Add12~21_sumout\,
	dataf => \ALT_INV_Add12~5_sumout\,
	combout => \Selector64~1_combout\);

-- Location: LABCELL_X50_Y16_N36
\Selector64~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector64~4_combout\ = ( \state.S_LOAD_DATA~q\ & ( \Selector64~1_combout\ & ( (!\Add12~1_sumout\) # ((!write_cnt(0)) # ((!\Selector64~0_combout\) # (!\Selector64~3_combout\))) ) ) ) # ( !\state.S_LOAD_DATA~q\ & ( \Selector64~1_combout\ & ( 
-- (!\Add12~1_sumout\) # (!\Selector64~3_combout\) ) ) ) # ( \state.S_LOAD_DATA~q\ & ( !\Selector64~1_combout\ & ( (!write_cnt(0)) # ((!\Selector64~0_combout\) # (!\Selector64~3_combout\)) ) ) ) # ( !\state.S_LOAD_DATA~q\ & ( !\Selector64~1_combout\ & ( 
-- !\Selector64~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111110011111111101010101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~1_sumout\,
	datab => ALT_INV_write_cnt(0),
	datac => \ALT_INV_Selector64~0_combout\,
	datad => \ALT_INV_Selector64~3_combout\,
	datae => \ALT_INV_state.S_LOAD_DATA~q\,
	dataf => \ALT_INV_Selector64~1_combout\,
	combout => \Selector64~4_combout\);

-- Location: FF_X50_Y16_N37
\state.S_LOAD_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector64~4_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LOAD_DATA~q\);

-- Location: MLABCELL_X49_Y17_N24
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \write_cnt[1]~DUPLICATE_q\ & ( (\state.S_LOAD_DATA~q\ & \write_cnt[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_DATA~q\,
	datac => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	dataf => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X49_Y17_N27
\Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = ( \Equal8~0_combout\ & ( (!\state.S_LOAD_DATA~q\ & (!load_cnt(3) & load_cnt(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_DATA~q\,
	datac => ALT_INV_load_cnt(3),
	datad => ALT_INV_load_cnt(2),
	dataf => \ALT_INV_Equal8~0_combout\,
	combout => \Selector63~0_combout\);

-- Location: MLABCELL_X49_Y17_N0
\Selector63~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~1_combout\ = ( \Selector61~0_combout\ & ( \Selector6~0_combout\ & ( !\state.S_ANALYSE~q\ ) ) ) # ( !\Selector61~0_combout\ & ( \Selector6~0_combout\ & ( (\state.S_IDLE~DUPLICATE_q\ & (!\state.S_ANALYSE~q\ & ((write_cnt(0)) # 
-- (\Selector63~0_combout\)))) ) ) ) # ( \Selector61~0_combout\ & ( !\Selector6~0_combout\ & ( !\state.S_ANALYSE~q\ ) ) ) # ( !\Selector61~0_combout\ & ( !\Selector6~0_combout\ & ( (\state.S_IDLE~DUPLICATE_q\ & (!\state.S_ANALYSE~q\ & 
-- \Selector63~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110011001100110000000100010001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datab => \ALT_INV_state.S_ANALYSE~q\,
	datac => \ALT_INV_Selector63~0_combout\,
	datad => ALT_INV_write_cnt(0),
	datae => \ALT_INV_Selector61~0_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector63~1_combout\);

-- Location: FF_X49_Y17_N32
\state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector66~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_DONE~q\);

-- Location: MLABCELL_X49_Y17_N9
\Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = ( !\state.S_DONE~q\ & ( (!\state.S_ERROR~q\ & \state.S_ANALYSE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_ERROR~q\,
	datac => \ALT_INV_state.S_ANALYSE~q\,
	dataf => \ALT_INV_state.S_DONE~q\,
	combout => \Selector65~0_combout\);

-- Location: LABCELL_X50_Y14_N12
\process_1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~32_combout\ = ( \c~1_combout\ & ( \Selector64~2_combout\ & ( (!\process_1~29_combout\ & \c~3_combout\) ) ) ) # ( !\c~1_combout\ & ( \Selector64~2_combout\ & ( (\process_1~29_combout\ & \c~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~29_combout\,
	datac => \ALT_INV_c~3_combout\,
	datae => \ALT_INV_c~1_combout\,
	dataf => \ALT_INV_Selector64~2_combout\,
	combout => \process_1~32_combout\);

-- Location: LABCELL_X50_Y16_N24
\Selector65~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector65~1_combout\ = ( \Selector64~3_combout\ & ( \Selector64~1_combout\ & ( (\Add12~1_sumout\ & (!\Selector63~1_combout\ & (\Selector65~0_combout\ & !\process_1~32_combout\))) ) ) ) # ( \Selector64~3_combout\ & ( !\Selector64~1_combout\ & ( 
-- (!\Selector63~1_combout\ & (\Selector65~0_combout\ & !\process_1~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~1_sumout\,
	datab => \ALT_INV_Selector63~1_combout\,
	datac => \ALT_INV_Selector65~0_combout\,
	datad => \ALT_INV_process_1~32_combout\,
	datae => \ALT_INV_Selector64~3_combout\,
	dataf => \ALT_INV_Selector64~1_combout\,
	combout => \Selector65~1_combout\);

-- Location: FF_X50_Y16_N25
\state.S_ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector65~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_ERROR~q\);

-- Location: MLABCELL_X49_Y17_N30
\Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = ( write_cnt(0) & ( (\state.S_ERROR~q\) # (\Selector6~0_combout\) ) ) # ( !write_cnt(0) & ( \state.S_ERROR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_state.S_ERROR~q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \Selector66~0_combout\);

-- Location: FF_X49_Y17_N31
\state.S_DONE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector66~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_DONE~DUPLICATE_q\);

-- Location: LABCELL_X53_Y19_N48
\dpc_control~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpc_control~0_combout\ = ( dpc_control(0) & ( \Addr[0]~input_o\ & ( (!\state.S_DONE~DUPLICATE_q\ & (((!\Wr~input_o\) # (\Addr[1]~input_o\)) # (\D_in[0]~input_o\))) ) ) ) # ( !dpc_control(0) & ( \Addr[0]~input_o\ & ( (\D_in[0]~input_o\ & 
-- (!\Addr[1]~input_o\ & (!\state.S_DONE~DUPLICATE_q\ & \Wr~input_o\))) ) ) ) # ( dpc_control(0) & ( !\Addr[0]~input_o\ & ( !\state.S_DONE~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000010000001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D_in[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_state.S_DONE~DUPLICATE_q\,
	datad => \ALT_INV_Wr~input_o\,
	datae => ALT_INV_dpc_control(0),
	dataf => \ALT_INV_Addr[0]~input_o\,
	combout => \dpc_control~0_combout\);

-- Location: FF_X53_Y19_N50
\dpc_control[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dpc_control~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dpc_control(0));

-- Location: LABCELL_X50_Y19_N18
\Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = ( \process_3~0_combout\ & ( (!\state.S_DONE~DUPLICATE_q\ & (((dpc_control(0) & \u_fifo_in|adrFifo\(3))) # (\state.S_IDLE~q\))) ) ) # ( !\process_3~0_combout\ & ( (!\state.S_DONE~DUPLICATE_q\ & \state.S_IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_dpc_control(0),
	datab => \ALT_INV_state.S_DONE~DUPLICATE_q\,
	datac => \u_fifo_in|ALT_INV_adrFifo\(3),
	datad => \ALT_INV_state.S_IDLE~q\,
	dataf => \ALT_INV_process_3~0_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X50_Y19_N20
\state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector60~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_IDLE~q\);

-- Location: LABCELL_X50_Y19_N0
\Selector61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = ( !\u_fifo_in|adrFifo\(2) & ( dpc_control(0) & ( (!\state.S_IDLE~q\ & (!\u_fifo_in|adrFifo\(0) & (\u_fifo_in|adrFifo\(3) & !\u_fifo_in|adrFifo\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_IDLE~q\,
	datab => \u_fifo_in|ALT_INV_adrFifo\(0),
	datac => \u_fifo_in|ALT_INV_adrFifo\(3),
	datad => \u_fifo_in|ALT_INV_adrFifo\(1),
	datae => \u_fifo_in|ALT_INV_adrFifo\(2),
	dataf => ALT_INV_dpc_control(0),
	combout => \Selector61~0_combout\);

-- Location: MLABCELL_X49_Y17_N12
\Selector61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector61~1_combout\ = ( \state.S_LOAD_BUFFER~q\ & ( \load_cnt[3]~DUPLICATE_q\ ) ) # ( !\state.S_LOAD_BUFFER~q\ & ( \load_cnt[3]~DUPLICATE_q\ & ( \Selector61~0_combout\ ) ) ) # ( \state.S_LOAD_BUFFER~q\ & ( !\load_cnt[3]~DUPLICATE_q\ & ( 
-- (!\Equal8~0_combout\) # (!load_cnt(2)) ) ) ) # ( !\state.S_LOAD_BUFFER~q\ & ( !\load_cnt[3]~DUPLICATE_q\ & ( \Selector61~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111001111110001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector61~0_combout\,
	datab => \ALT_INV_Equal8~0_combout\,
	datac => ALT_INV_load_cnt(2),
	datae => \ALT_INV_state.S_LOAD_BUFFER~q\,
	dataf => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	combout => \Selector61~1_combout\);

-- Location: FF_X49_Y17_N13
\state.S_LOAD_BUFFER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector61~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_LOAD_BUFFER~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N24
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( !load_cnt(0) $ (((!\state.S_LOAD_BUFFER~DUPLICATE_q\) # (\load_cnt[3]~DUPLICATE_q\))) ) ) # ( !\state.S_IDLE~DUPLICATE_q\ & ( (\state.S_LOAD_BUFFER~DUPLICATE_q\ & (!\load_cnt[3]~DUPLICATE_q\ $ 
-- (load_cnt(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000100100010110111010010001011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	datad => ALT_INV_load_cnt(0),
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X48_Y13_N25
\load_cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N57
\Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = ( load_cnt(1) & ( \load_cnt[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	dataf => ALT_INV_load_cnt(1),
	combout => \Equal8~0_combout\);

-- Location: MLABCELL_X49_Y17_N57
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( load_cnt(2) & ( (!\state.S_LOAD_BUFFER~q\ & (((\state.S_IDLE~DUPLICATE_q\ & load_cnt(3))))) # (\state.S_LOAD_BUFFER~q\ & (((load_cnt(3))) # (\Equal8~0_combout\))) ) ) # ( !load_cnt(2) & ( (load_cnt(3) & 
-- ((\state.S_IDLE~DUPLICATE_q\) # (\state.S_LOAD_BUFFER~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100010001001111110001000100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal8~0_combout\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~q\,
	datac => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	datad => ALT_INV_load_cnt(3),
	dataf => ALT_INV_load_cnt(2),
	combout => \Selector0~0_combout\);

-- Location: FF_X49_Y17_N58
\load_cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \load_cnt[3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y13_N27
\buffer_8x8[7][6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[7][6]~6_combout\ = ( load_cnt(2) & ( (!\load_cnt[3]~DUPLICATE_q\ & \state.S_LOAD_BUFFER~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_load_cnt[3]~DUPLICATE_q\,
	datab => \ALT_INV_state.S_LOAD_BUFFER~DUPLICATE_q\,
	dataf => ALT_INV_load_cnt(2),
	combout => \buffer_8x8[7][6]~6_combout\);

-- Location: LABCELL_X48_Y13_N15
\buffer_8x8[6][7]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[6][7]~59_combout\ = ( \buffer_8x8[6][7]~q\ & ( \load_cnt[0]~DUPLICATE_q\ ) ) # ( \buffer_8x8[6][7]~q\ & ( !\load_cnt[0]~DUPLICATE_q\ & ( (!\buffer_8x8[7][6]~6_combout\) # ((!load_cnt(1)) # (\u_fifo_in|Fifo[0][7]~q\)) ) ) ) # ( 
-- !\buffer_8x8[6][7]~q\ & ( !\load_cnt[0]~DUPLICATE_q\ & ( (\buffer_8x8[7][6]~6_combout\ & (load_cnt(1) & \u_fifo_in|Fifo[0][7]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111110101111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][6]~6_combout\,
	datac => ALT_INV_load_cnt(1),
	datad => \u_fifo_in|ALT_INV_Fifo[0][7]~q\,
	datae => \ALT_INV_buffer_8x8[6][7]~q\,
	dataf => \ALT_INV_load_cnt[0]~DUPLICATE_q\,
	combout => \buffer_8x8[6][7]~59_combout\);

-- Location: FF_X48_Y13_N17
\buffer_8x8[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][7]~59_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][7]~q\);

-- Location: FF_X47_Y15_N5
\buffer_8x8[6][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][6]~52_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][6]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N51
\process_1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = ( \buffer_8x8[6][4]~q\ & ( !\buffer_8x8[6][7]~q\ $ (!\buffer_8x8[6][5]~DUPLICATE_q\ $ (!\buffer_8x8[6][6]~DUPLICATE_q\)) ) ) # ( !\buffer_8x8[6][4]~q\ & ( !\buffer_8x8[6][7]~q\ $ (!\buffer_8x8[6][5]~DUPLICATE_q\ $ 
-- (\buffer_8x8[6][6]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][7]~q\,
	datac => \ALT_INV_buffer_8x8[6][5]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[6][6]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[6][4]~q\,
	combout => \process_1~4_combout\);

-- Location: FF_X47_Y14_N11
\buffer_8x8[6][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[6][2]~24_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[6][2]~DUPLICATE_q\);

-- Location: LABCELL_X47_Y15_N36
\process_1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ( \buffer_8x8[6][1]~DUPLICATE_q\ & ( !\process_1~4_combout\ $ (!\buffer_8x8[6][0]~q\ $ (!\buffer_8x8[6][3]~q\ $ (\buffer_8x8[6][2]~DUPLICATE_q\))) ) ) # ( !\buffer_8x8[6][1]~DUPLICATE_q\ & ( !\process_1~4_combout\ $ 
-- (!\buffer_8x8[6][0]~q\ $ (!\buffer_8x8[6][3]~q\ $ (!\buffer_8x8[6][2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~4_combout\,
	datab => \ALT_INV_buffer_8x8[6][0]~q\,
	datac => \ALT_INV_buffer_8x8[6][3]~q\,
	datad => \ALT_INV_buffer_8x8[6][2]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[6][1]~DUPLICATE_q\,
	combout => \process_1~5_combout\);

-- Location: LABCELL_X48_Y15_N30
\idx_l[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx_l[1]~2_combout\ = ( \idx_l[1]~0_combout\ & ( (!\process_1~5_combout\ & (!\process_1~7_combout\ & !\process_1~9_combout\)) ) ) # ( !\idx_l[1]~0_combout\ & ( !\process_1~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~5_combout\,
	datac => \ALT_INV_process_1~7_combout\,
	datad => \ALT_INV_process_1~9_combout\,
	dataf => \ALT_INV_idx_l[1]~0_combout\,
	combout => \idx_l[1]~2_combout\);

-- Location: LABCELL_X48_Y15_N12
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[3][3]~q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[3][1]~q\ ) ) ) # ( \idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( 
-- \buffer_8x8[3][2]~q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( \buffer_8x8[3][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][2]~q\,
	datab => \ALT_INV_buffer_8x8[3][0]~q\,
	datac => \ALT_INV_buffer_8x8[3][1]~q\,
	datad => \ALT_INV_buffer_8x8[3][3]~q\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X48_Y16_N0
\Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( !\idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux11~0_combout\))))) # (\idx_c[2]~0_combout\ & ((!\idx_c[0]~1_combout\ & (((\buffer_8x8[3][4]~q\)))) # (\idx_c[0]~1_combout\ & (\buffer_8x8[3][5]~DUPLICATE_q\)))) ) ) # ( 
-- \idx_c[1]~2_combout\ & ( ((!\idx_c[2]~0_combout\ & (((\Mux11~0_combout\)))) # (\idx_c[2]~0_combout\ & (\buffer_8x8[3][6]~q\ & (!\idx_c[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100010001000000110000000011001111110111011100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][5]~DUPLICATE_q\,
	datab => \ALT_INV_idx_c[2]~0_combout\,
	datac => \ALT_INV_buffer_8x8[3][6]~q\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_Mux11~0_combout\,
	datag => \ALT_INV_buffer_8x8[3][4]~q\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X47_Y16_N0
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[0][3]~DUPLICATE_q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[0][2]~DUPLICATE_q\ ) ) ) # ( \idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( 
-- \buffer_8x8[0][1]~q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( \buffer_8x8[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[0][3]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[0][1]~q\,
	datac => \ALT_INV_buffer_8x8[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[0][2]~DUPLICATE_q\,
	datae => \ALT_INV_idx_c[0]~1_combout\,
	dataf => \ALT_INV_idx_c[1]~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X48_Y16_N12
\Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( !\idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux8~0_combout\))))) # (\idx_c[2]~0_combout\ & ((!\idx_c[0]~1_combout\ & (((\buffer_8x8[0][4]~DUPLICATE_q\)))) # (\idx_c[0]~1_combout\ & (\buffer_8x8[0][5]~DUPLICATE_q\)))) ) ) # 
-- ( \idx_c[1]~2_combout\ & ( ((!\idx_c[2]~0_combout\ & (((\Mux8~0_combout\)))) # (\idx_c[2]~0_combout\ & (\buffer_8x8[0][6]~q\ & (!\idx_c[0]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100010001000000110000000011001111110111011100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[0][5]~DUPLICATE_q\,
	datab => \ALT_INV_idx_c[2]~0_combout\,
	datac => \ALT_INV_buffer_8x8[0][6]~q\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	datag => \ALT_INV_buffer_8x8[0][4]~DUPLICATE_q\,
	combout => \Mux8~1_combout\);

-- Location: FF_X47_Y16_N7
\buffer_8x8[2][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][6]~49_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][6]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y15_N18
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[2][3]~DUPLICATE_q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[2][1]~q\ ) ) ) # ( \idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( 
-- \buffer_8x8[2][2]~q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( \buffer_8x8[2][0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][3]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[2][0]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[2][1]~q\,
	datad => \ALT_INV_buffer_8x8[2][2]~q\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: FF_X49_Y15_N46
\buffer_8x8[2][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][4]~35_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y15_N54
\Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( !\idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux10~0_combout\))))) # (\idx_c[2]~0_combout\ & ((!\idx_c[0]~1_combout\ & (((\buffer_8x8[2][4]~DUPLICATE_q\)))) # (\idx_c[0]~1_combout\ & (\buffer_8x8[2][5]~q\)))) ) ) # ( 
-- \idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux10~0_combout\))))) # (\idx_c[2]~0_combout\ & (((\buffer_8x8[2][6]~DUPLICATE_q\ & (!\idx_c[0]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100010001000001010000000010101111101110111010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_c[2]~0_combout\,
	datab => \ALT_INV_buffer_8x8[2][5]~q\,
	datac => \ALT_INV_buffer_8x8[2][6]~DUPLICATE_q\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	datag => \ALT_INV_buffer_8x8[2][4]~DUPLICATE_q\,
	combout => \Mux10~1_combout\);

-- Location: FF_X49_Y16_N44
\buffer_8x8[1][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[1][2]~26_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[1][2]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y17_N24
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \buffer_8x8[1][2]~DUPLICATE_q\ & ( \idx_c[0]~1_combout\ & ( (!\idx_c[1]~2_combout\ & ((\buffer_8x8[1][1]~DUPLICATE_q\))) # (\idx_c[1]~2_combout\ & (\buffer_8x8[1][3]~DUPLICATE_q\)) ) ) ) # ( !\buffer_8x8[1][2]~DUPLICATE_q\ & ( 
-- \idx_c[0]~1_combout\ & ( (!\idx_c[1]~2_combout\ & ((\buffer_8x8[1][1]~DUPLICATE_q\))) # (\idx_c[1]~2_combout\ & (\buffer_8x8[1][3]~DUPLICATE_q\)) ) ) ) # ( \buffer_8x8[1][2]~DUPLICATE_q\ & ( !\idx_c[0]~1_combout\ & ( (\idx_c[1]~2_combout\) # 
-- (\buffer_8x8[1][0]~DUPLICATE_q\) ) ) ) # ( !\buffer_8x8[1][2]~DUPLICATE_q\ & ( !\idx_c[0]~1_combout\ & ( (\buffer_8x8[1][0]~DUPLICATE_q\ & !\idx_c[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[1][0]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[1][3]~DUPLICATE_q\,
	datac => \ALT_INV_idx_c[1]~2_combout\,
	datad => \ALT_INV_buffer_8x8[1][1]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[1][2]~DUPLICATE_q\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X48_Y17_N6
\Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( !\idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux9~0_combout\))))) # (\idx_c[2]~0_combout\ & ((!\idx_c[0]~1_combout\ & (((\buffer_8x8[1][4]~DUPLICATE_q\)))) # (\idx_c[0]~1_combout\ & (\buffer_8x8[1][5]~DUPLICATE_q\)))) ) ) # 
-- ( \idx_c[1]~2_combout\ & ( (!\idx_c[2]~0_combout\ & ((((\Mux9~0_combout\))))) # (\idx_c[2]~0_combout\ & (((\buffer_8x8[1][6]~q\ & (!\idx_c[0]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100010001000001010000000010101111101110111010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_c[2]~0_combout\,
	datab => \ALT_INV_buffer_8x8[1][5]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[1][6]~q\,
	datad => \ALT_INV_idx_c[0]~1_combout\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	datag => \ALT_INV_buffer_8x8[1][4]~DUPLICATE_q\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X48_Y16_N42
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \Mux10~1_combout\ & ( \Mux9~1_combout\ & ( (!\idx_l[1]~2_combout\ & (\idx_l[0]~3_combout\ & (!\Mux11~1_combout\))) # (\idx_l[1]~2_combout\ & (!\idx_l[0]~3_combout\ & ((!\Mux8~1_combout\)))) ) ) ) # ( !\Mux10~1_combout\ & ( 
-- \Mux9~1_combout\ & ( (!\idx_l[1]~2_combout\ & ((!\idx_l[0]~3_combout\) # ((!\Mux11~1_combout\)))) # (\idx_l[1]~2_combout\ & (!\idx_l[0]~3_combout\ & ((!\Mux8~1_combout\)))) ) ) ) # ( \Mux10~1_combout\ & ( !\Mux9~1_combout\ & ( (!\idx_l[1]~2_combout\ & 
-- (\idx_l[0]~3_combout\ & (!\Mux11~1_combout\))) # (\idx_l[1]~2_combout\ & (((!\Mux8~1_combout\)) # (\idx_l[0]~3_combout\))) ) ) ) # ( !\Mux10~1_combout\ & ( !\Mux9~1_combout\ & ( (!\idx_l[1]~2_combout\ & ((!\idx_l[0]~3_combout\) # ((!\Mux11~1_combout\)))) 
-- # (\idx_l[1]~2_combout\ & (((!\Mux8~1_combout\)) # (\idx_l[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110110111001011101010011000111101100101010000110010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_l[1]~2_combout\,
	datab => \ALT_INV_idx_l[0]~3_combout\,
	datac => \ALT_INV_Mux11~1_combout\,
	datad => \ALT_INV_Mux8~1_combout\,
	datae => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_Mux9~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X48_Y16_N36
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \idx_c[0]~1_combout\ & ( (\buffer_8x8[6][5]~DUPLICATE_q\ & !\idx_c[1]~2_combout\) ) ) # ( !\idx_c[0]~1_combout\ & ( (!\idx_c[1]~2_combout\ & (\buffer_8x8[6][4]~DUPLICATE_q\)) # (\idx_c[1]~2_combout\ & 
-- ((\buffer_8x8[6][6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][4]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[6][5]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[6][6]~DUPLICATE_q\,
	datad => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X49_Y16_N51
\Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[6][3]~q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( \idx_c[0]~1_combout\ & ( \buffer_8x8[6][1]~q\ ) ) ) # ( \idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( 
-- \buffer_8x8[6][2]~DUPLICATE_q\ ) ) ) # ( !\idx_c[1]~2_combout\ & ( !\idx_c[0]~1_combout\ & ( \buffer_8x8[6][0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][1]~q\,
	datab => \ALT_INV_buffer_8x8[6][0]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[6][2]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[6][3]~q\,
	datae => \ALT_INV_idx_c[1]~2_combout\,
	dataf => \ALT_INV_idx_c[0]~1_combout\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X48_Y16_N21
\buffer_8x8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~0_combout\ = ( \Mux14~1_combout\ & ( (!\idx_l[0]~3_combout\ & ((!\idx_c[2]~0_combout\) # (\Mux14~0_combout\))) ) ) # ( !\Mux14~1_combout\ & ( (\idx_c[2]~0_combout\ & (!\idx_l[0]~3_combout\ & \Mux14~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_idx_c[2]~0_combout\,
	datac => \ALT_INV_idx_l[0]~3_combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_Mux14~1_combout\,
	combout => \buffer_8x8~0_combout\);

-- Location: LABCELL_X47_Y16_N45
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[4][3]~q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[4][2]~q\ ) ) ) # ( \idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( 
-- \buffer_8x8[4][1]~q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( \buffer_8x8[4][0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][0]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[4][1]~q\,
	datac => \ALT_INV_buffer_8x8[4][3]~q\,
	datad => \ALT_INV_buffer_8x8[4][2]~q\,
	datae => \ALT_INV_idx_c[0]~1_combout\,
	dataf => \ALT_INV_idx_c[1]~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: FF_X47_Y17_N46
\buffer_8x8[5][3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][3]~30_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y16_N54
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[5][3]~DUPLICATE_q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( \idx_c[1]~2_combout\ & ( \buffer_8x8[5][2]~q\ ) ) ) # ( \idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( 
-- \buffer_8x8[5][1]~q\ ) ) ) # ( !\idx_c[0]~1_combout\ & ( !\idx_c[1]~2_combout\ & ( \buffer_8x8[5][0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][2]~q\,
	datab => \ALT_INV_buffer_8x8[5][1]~q\,
	datac => \ALT_INV_buffer_8x8[5][0]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[5][3]~DUPLICATE_q\,
	datae => \ALT_INV_idx_c[0]~1_combout\,
	dataf => \ALT_INV_idx_c[1]~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: FF_X49_Y15_N52
\buffer_8x8[5][4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][4]~37_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y15_N39
\buffer_8x8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~1_combout\ = ( \idx_l[0]~3_combout\ & ( !\buffer_8x8[5][4]~DUPLICATE_q\ ) ) # ( !\idx_l[0]~3_combout\ & ( !\buffer_8x8[4][4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_buffer_8x8[5][4]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[4][4]~DUPLICATE_q\,
	dataf => \ALT_INV_idx_l[0]~3_combout\,
	combout => \buffer_8x8~1_combout\);

-- Location: LABCELL_X48_Y16_N39
\buffer_8x8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~2_combout\ = ( \idx_l[0]~3_combout\ & ( !\buffer_8x8[5][6]~q\ ) ) # ( !\idx_l[0]~3_combout\ & ( !\buffer_8x8[4][6]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_buffer_8x8[5][6]~q\,
	datad => \ALT_INV_buffer_8x8[4][6]~q\,
	dataf => \ALT_INV_idx_l[0]~3_combout\,
	combout => \buffer_8x8~2_combout\);

-- Location: LABCELL_X48_Y16_N24
\buffer_8x8~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~63_combout\ = ( !\idx_l[0]~3_combout\ & ( (!\idx_c[0]~1_combout\ & ((!\idx_c[1]~2_combout\ & (((\buffer_8x8~1_combout\)))) # (\idx_c[1]~2_combout\ & (((\buffer_8x8~2_combout\)))))) # (\idx_c[0]~1_combout\ & (((!\buffer_8x8[4][5]~q\)) # 
-- (\idx_c[1]~2_combout\))) ) ) # ( \idx_l[0]~3_combout\ & ( (!\idx_c[0]~1_combout\ & ((!\idx_c[1]~2_combout\ & (((\buffer_8x8~1_combout\)))) # (\idx_c[1]~2_combout\ & (((\buffer_8x8~2_combout\)))))) # (\idx_c[0]~1_combout\ & 
-- (((!\buffer_8x8[5][5]~DUPLICATE_q\)) # (\idx_c[1]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101000111011001010100011101100101110011111110110111001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_c[0]~1_combout\,
	datab => \ALT_INV_idx_c[1]~2_combout\,
	datac => \ALT_INV_buffer_8x8[5][5]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8~1_combout\,
	datae => \ALT_INV_idx_l[0]~3_combout\,
	dataf => \ALT_INV_buffer_8x8~2_combout\,
	datag => \ALT_INV_buffer_8x8[4][5]~q\,
	combout => \buffer_8x8~63_combout\);

-- Location: LABCELL_X48_Y16_N18
\buffer_8x8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~3_combout\ = ( \buffer_8x8~63_combout\ & ( ((!\idx_l[0]~3_combout\ & (!\Mux12~0_combout\)) # (\idx_l[0]~3_combout\ & ((!\Mux13~0_combout\)))) # (\idx_c[2]~0_combout\) ) ) # ( !\buffer_8x8~63_combout\ & ( (!\idx_c[2]~0_combout\ & 
-- ((!\idx_l[0]~3_combout\ & (!\Mux12~0_combout\)) # (\idx_l[0]~3_combout\ & ((!\Mux13~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010010000000110001001000000011110111101100111111011110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_l[0]~3_combout\,
	datab => \ALT_INV_idx_c[2]~0_combout\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_buffer_8x8~63_combout\,
	combout => \buffer_8x8~3_combout\);

-- Location: LABCELL_X48_Y16_N6
\buffer_8x8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8~4_combout\ = ( \buffer_8x8~0_combout\ & ( \buffer_8x8~3_combout\ & ( (\state.S_CORR~q\ & ((!\idx_l[2]~1_combout\ & (\idx_l[1]~2_combout\)) # (\idx_l[2]~1_combout\ & ((\Mux16~0_combout\))))) ) ) ) # ( !\buffer_8x8~0_combout\ & ( 
-- \buffer_8x8~3_combout\ & ( (\state.S_CORR~q\ & ((!\idx_l[2]~1_combout\) # (\Mux16~0_combout\))) ) ) ) # ( \buffer_8x8~0_combout\ & ( !\buffer_8x8~3_combout\ & ( (\idx_l[2]~1_combout\ & (\state.S_CORR~q\ & \Mux16~0_combout\)) ) ) ) # ( 
-- !\buffer_8x8~0_combout\ & ( !\buffer_8x8~3_combout\ & ( (\state.S_CORR~q\ & ((!\idx_l[2]~1_combout\ & (!\idx_l[1]~2_combout\)) # (\idx_l[2]~1_combout\ & ((\Mux16~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001011000000000000001100001100000011110000010000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_idx_l[1]~2_combout\,
	datab => \ALT_INV_idx_l[2]~1_combout\,
	datac => \ALT_INV_state.S_CORR~q\,
	datad => \ALT_INV_Mux16~0_combout\,
	datae => \ALT_INV_buffer_8x8~0_combout\,
	dataf => \ALT_INV_buffer_8x8~3_combout\,
	combout => \buffer_8x8~4_combout\);

-- Location: LABCELL_X48_Y14_N33
\Selector51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = ( \Selector45~0_combout\ & ( (!\Selector51~0_combout\ & !\Decoder2~0_combout\) ) ) # ( !\Selector45~0_combout\ & ( !\Selector51~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector51~0_combout\,
	datac => \ALT_INV_Decoder2~0_combout\,
	dataf => \ALT_INV_Selector45~0_combout\,
	combout => \Selector51~1_combout\);

-- Location: MLABCELL_X49_Y15_N48
\buffer_8x8[5][0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[5][0]~8_combout\ = ( \Selector51~1_combout\ & ( \buffer_8x8[5][0]~q\ ) ) # ( !\Selector51~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[5][0]~q\,
	dataf => \ALT_INV_Selector51~1_combout\,
	combout => \buffer_8x8[5][0]~8_combout\);

-- Location: FF_X49_Y15_N50
\buffer_8x8[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[5][0]~8_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[5][0]~q\);

-- Location: MLABCELL_X49_Y15_N12
\process_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ( \buffer_8x8[5][6]~DUPLICATE_q\ & ( !\buffer_8x8[5][4]~q\ $ (!\buffer_8x8[5][7]~q\ $ (!\buffer_8x8[5][5]~q\)) ) ) # ( !\buffer_8x8[5][6]~DUPLICATE_q\ & ( !\buffer_8x8[5][4]~q\ $ (!\buffer_8x8[5][7]~q\ $ (\buffer_8x8[5][5]~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][4]~q\,
	datac => \ALT_INV_buffer_8x8[5][7]~q\,
	datad => \ALT_INV_buffer_8x8[5][5]~q\,
	dataf => \ALT_INV_buffer_8x8[5][6]~DUPLICATE_q\,
	combout => \process_1~2_combout\);

-- Location: MLABCELL_X49_Y15_N30
\process_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = ( \process_1~2_combout\ & ( !\buffer_8x8[5][0]~q\ $ (!\buffer_8x8[5][1]~q\ $ (!\buffer_8x8[5][3]~DUPLICATE_q\ $ (\buffer_8x8[5][2]~q\))) ) ) # ( !\process_1~2_combout\ & ( !\buffer_8x8[5][0]~q\ $ (!\buffer_8x8[5][1]~q\ $ 
-- (!\buffer_8x8[5][3]~DUPLICATE_q\ $ (!\buffer_8x8[5][2]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][0]~q\,
	datab => \ALT_INV_buffer_8x8[5][1]~q\,
	datac => \ALT_INV_buffer_8x8[5][3]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[5][2]~q\,
	dataf => \ALT_INV_process_1~2_combout\,
	combout => \process_1~3_combout\);

-- Location: LABCELL_X50_Y16_N54
\c~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~8_combout\ = ( \process_1~9_combout\ & ( \process_1~5_combout\ & ( (!\process_1~3_combout\ & ((!\process_1~1_combout\ & (\process_1~7_combout\ & \process_1~23_combout\)) # (\process_1~1_combout\ & ((\process_1~23_combout\) # (\process_1~7_combout\))))) 
-- # (\process_1~3_combout\ & (((\process_1~23_combout\) # (\process_1~7_combout\)) # (\process_1~1_combout\))) ) ) ) # ( !\process_1~9_combout\ & ( \process_1~5_combout\ & ( (!\process_1~3_combout\ & (\process_1~1_combout\ & (\process_1~7_combout\ & 
-- \process_1~23_combout\))) # (\process_1~3_combout\ & ((!\process_1~1_combout\ & (\process_1~7_combout\ & \process_1~23_combout\)) # (\process_1~1_combout\ & ((\process_1~23_combout\) # (\process_1~7_combout\))))) ) ) ) # ( \process_1~9_combout\ & ( 
-- !\process_1~5_combout\ & ( (!\process_1~3_combout\ & (\process_1~1_combout\ & (\process_1~7_combout\ & \process_1~23_combout\))) # (\process_1~3_combout\ & ((!\process_1~1_combout\ & (\process_1~7_combout\ & \process_1~23_combout\)) # 
-- (\process_1~1_combout\ & ((\process_1~23_combout\) # (\process_1~7_combout\))))) ) ) ) # ( !\process_1~9_combout\ & ( !\process_1~5_combout\ & ( (\process_1~3_combout\ & (\process_1~1_combout\ & (\process_1~7_combout\ & \process_1~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010001011100000001000101110001011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_1~3_combout\,
	datab => \ALT_INV_process_1~1_combout\,
	datac => \ALT_INV_process_1~7_combout\,
	datad => \ALT_INV_process_1~23_combout\,
	datae => \ALT_INV_process_1~9_combout\,
	dataf => \ALT_INV_process_1~5_combout\,
	combout => \c~8_combout\);

-- Location: LABCELL_X50_Y16_N18
\Add12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add12~1_sumout\ = SUM(( GND ) + ( GND ) + ( \Add12~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add12~14\,
	sumout => \Add12~1_sumout\);

-- Location: LABCELL_X50_Y16_N30
\Selector63~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector63~2_combout\ = ( \Selector64~3_combout\ & ( \Selector64~1_combout\ & ( (\Add12~1_sumout\ & (!\Selector63~1_combout\ & (\Selector65~0_combout\ & \process_1~32_combout\))) ) ) ) # ( \Selector64~3_combout\ & ( !\Selector64~1_combout\ & ( 
-- (!\Selector63~1_combout\ & (\Selector65~0_combout\ & \process_1~32_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add12~1_sumout\,
	datab => \ALT_INV_Selector63~1_combout\,
	datac => \ALT_INV_Selector65~0_combout\,
	datad => \ALT_INV_process_1~32_combout\,
	datae => \ALT_INV_Selector64~3_combout\,
	dataf => \ALT_INV_Selector64~1_combout\,
	combout => \Selector63~2_combout\);

-- Location: FF_X50_Y16_N31
\state.S_CORR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector63~2_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S_CORR~q\);

-- Location: LABCELL_X48_Y14_N39
\Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = ( \Decoder2~0_combout\ & ( (!\Selector38~0_combout\ & !\Selector44~0_combout\) ) ) # ( !\Decoder2~0_combout\ & ( !\Selector44~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector38~0_combout\,
	datab => \ALT_INV_Selector44~0_combout\,
	dataf => \ALT_INV_Decoder2~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: MLABCELL_X49_Y15_N18
\buffer_8x8[4][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \buffer_8x8[4][0]~7_combout\ = ( \Selector44~1_combout\ & ( \buffer_8x8[4][0]~q\ ) ) # ( !\Selector44~1_combout\ & ( ((!\state.S_CORR~q\ & \u_fifo_in|Fifo[0][0]~q\)) # (\buffer_8x8~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_CORR~q\,
	datab => \ALT_INV_buffer_8x8~4_combout\,
	datac => \u_fifo_in|ALT_INV_Fifo[0][0]~q\,
	datad => \ALT_INV_buffer_8x8[4][0]~q\,
	dataf => \ALT_INV_Selector44~1_combout\,
	combout => \buffer_8x8[4][0]~7_combout\);

-- Location: FF_X49_Y15_N19
\buffer_8x8[4][0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[4][0]~7_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[4][0]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y16_N48
\out_fifo_din[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[0]~2_combout\ = ( \buffer_8x8[6][0]~DUPLICATE_q\ & ( write_cnt(0) & ( (!write_cnt(1) & ((\buffer_8x8[5][0]~DUPLICATE_q\))) # (write_cnt(1) & (\buffer_8x8[7][0]~q\)) ) ) ) # ( !\buffer_8x8[6][0]~DUPLICATE_q\ & ( write_cnt(0) & ( 
-- (!write_cnt(1) & ((\buffer_8x8[5][0]~DUPLICATE_q\))) # (write_cnt(1) & (\buffer_8x8[7][0]~q\)) ) ) ) # ( \buffer_8x8[6][0]~DUPLICATE_q\ & ( !write_cnt(0) & ( (write_cnt(1)) # (\buffer_8x8[4][0]~DUPLICATE_q\) ) ) ) # ( !\buffer_8x8[6][0]~DUPLICATE_q\ & ( 
-- !write_cnt(0) & ( (\buffer_8x8[4][0]~DUPLICATE_q\ & !write_cnt(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][0]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[7][0]~q\,
	datac => ALT_INV_write_cnt(1),
	datad => \ALT_INV_buffer_8x8[5][0]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[6][0]~DUPLICATE_q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[0]~2_combout\);

-- Location: IOIBUF_X54_Y18_N95
\Rd~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rd,
	o => \Rd~input_o\);

-- Location: LABCELL_X53_Y19_N27
\out_fifo_rd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_rd~0_combout\ = (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \Rd~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Rd~input_o\,
	combout => \out_fifo_rd~0_combout\);

-- Location: LABCELL_X48_Y19_N27
\Selector59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (!\Selector61~0_combout\ & !\state.S_ERROR~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector61~0_combout\,
	datab => \ALT_INV_state.S_ERROR~q\,
	combout => \Selector59~0_combout\);

-- Location: LABCELL_X48_Y19_N51
\u_fifo_out|adrFifo~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~6_combout\ = ( \out_fifo_din[1]~0_combout\ & ( (\Selector59~0_combout\ & (!\u_fifo_out|adrFifo\(0) $ (!\u_fifo_out|adrFifo\(1)))) ) ) # ( !\out_fifo_din[1]~0_combout\ & ( (\Selector59~0_combout\ & (!\u_fifo_out|adrFifo\(0) $ 
-- (\u_fifo_out|adrFifo\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \ALT_INV_Selector59~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(1),
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \u_fifo_out|adrFifo~6_combout\);

-- Location: LABCELL_X47_Y19_N18
\u_fifo_out|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Equal0~0_combout\ = ( !\u_fifo_out|adrFifo\(2) & ( (!\u_fifo_out|adrFifo\(0) & (!\u_fifo_out|adrFifo\(1) & !\u_fifo_out|adrFifo\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(1),
	datad => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(2),
	combout => \u_fifo_out|Equal0~0_combout\);

-- Location: LABCELL_X48_Y19_N42
\u_fifo_out|adrFifo[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo[2]~4_combout\ = ( \Selector61~0_combout\ & ( \u_fifo_out|adrFifo\(3) ) ) # ( !\Selector61~0_combout\ & ( \u_fifo_out|adrFifo\(3) & ( ((\out_fifo_rd~0_combout\ & (!\out_fifo_din[1]~0_combout\ & !\u_fifo_out|Equal0~0_combout\))) # 
-- (\state.S_ERROR~q\) ) ) ) # ( \Selector61~0_combout\ & ( !\u_fifo_out|adrFifo\(3) ) ) # ( !\Selector61~0_combout\ & ( !\u_fifo_out|adrFifo\(3) & ( (!\out_fifo_din[1]~0_combout\ $ (((!\out_fifo_rd~0_combout\) # (\u_fifo_out|Equal0~0_combout\)))) # 
-- (\state.S_ERROR~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101100111111111111111111111101110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \ALT_INV_state.S_ERROR~q\,
	datac => \ALT_INV_out_fifo_din[1]~0_combout\,
	datad => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Selector61~0_combout\,
	dataf => \u_fifo_out|ALT_INV_adrFifo\(3),
	combout => \u_fifo_out|adrFifo[2]~4_combout\);

-- Location: FF_X48_Y19_N53
\u_fifo_out|adrFifo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|adrFifo~6_combout\,
	ena => \u_fifo_out|adrFifo[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|adrFifo\(1));

-- Location: LABCELL_X48_Y19_N12
\u_fifo_out|adrFifo~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~3_combout\ = ( \u_fifo_out|adrFifo\(2) & ( \u_fifo_out|adrFifo\(0) & ( (\Selector59~0_combout\ & ((!\state.S_LOAD_DATA~q\) # (!\u_fifo_out|adrFifo\(1)))) ) ) ) # ( !\u_fifo_out|adrFifo\(2) & ( \u_fifo_out|adrFifo\(0) & ( 
-- (\Selector59~0_combout\ & (\state.S_LOAD_DATA~q\ & \u_fifo_out|adrFifo\(1))) ) ) ) # ( \u_fifo_out|adrFifo\(2) & ( !\u_fifo_out|adrFifo\(0) & ( (\Selector59~0_combout\ & ((\u_fifo_out|adrFifo\(1)) # (\state.S_LOAD_DATA~q\))) ) ) ) # ( 
-- !\u_fifo_out|adrFifo\(2) & ( !\u_fifo_out|adrFifo\(0) & ( (\Selector59~0_combout\ & (!\u_fifo_out|adrFifo\(1) & ((!\state.S_LOAD_DATA~q\) # (\u_fifo_out|adrFifo\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000000100010101010100000000000100010101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector59~0_combout\,
	datab => \ALT_INV_state.S_LOAD_DATA~q\,
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \u_fifo_out|ALT_INV_adrFifo\(1),
	datae => \u_fifo_out|ALT_INV_adrFifo\(2),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(0),
	combout => \u_fifo_out|adrFifo~3_combout\);

-- Location: FF_X48_Y19_N14
\u_fifo_out|adrFifo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|adrFifo~3_combout\,
	ena => \u_fifo_out|adrFifo[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|adrFifo\(2));

-- Location: LABCELL_X47_Y19_N33
\u_fifo_out|adrFifo~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~1_combout\ = ( \u_fifo_out|adrFifo\(1) & ( \u_fifo_out|adrFifo\(3) ) ) # ( !\u_fifo_out|adrFifo\(1) & ( (\u_fifo_out|adrFifo\(3) & ((\u_fifo_out|adrFifo\(0)) # (\u_fifo_out|adrFifo\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(2),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \u_fifo_out|ALT_INV_adrFifo\(0),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(1),
	combout => \u_fifo_out|adrFifo~1_combout\);

-- Location: LABCELL_X47_Y19_N30
\u_fifo_out|adrFifo~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~0_combout\ = ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(3) & ((!\u_fifo_out|adrFifo\(2)) # ((!\u_fifo_out|adrFifo\(1)) # (!\u_fifo_out|adrFifo\(0))))) ) ) # ( !\state.S_LOAD_DATA~q\ & ( !\u_fifo_out|adrFifo\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(2),
	datab => \u_fifo_out|ALT_INV_adrFifo\(3),
	datac => \u_fifo_out|ALT_INV_adrFifo\(1),
	datad => \u_fifo_out|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|adrFifo~0_combout\);

-- Location: LABCELL_X53_Y19_N42
\u_fifo_out|adrFifo~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~2_combout\ = ( \u_fifo_out|adrFifo~0_combout\ & ( \Selector59~0_combout\ & ( \u_fifo_out|adrFifo~1_combout\ ) ) ) # ( !\u_fifo_out|adrFifo~0_combout\ & ( \Selector59~0_combout\ & ( ((!\Rd~input_o\) # ((!\Addr[1]~input_o\) # 
-- (\Addr[0]~input_o\))) # (\u_fifo_out|adrFifo~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo~1_combout\,
	datab => \ALT_INV_Rd~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_Addr[1]~input_o\,
	datae => \u_fifo_out|ALT_INV_adrFifo~0_combout\,
	dataf => \ALT_INV_Selector59~0_combout\,
	combout => \u_fifo_out|adrFifo~2_combout\);

-- Location: FF_X53_Y19_N44
\u_fifo_out|adrFifo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|adrFifo~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|adrFifo\(3));

-- Location: LABCELL_X48_Y19_N54
\u_fifo_out|adrFifo~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|adrFifo~5_combout\ = ( \u_fifo_out|adrFifo\(0) & ( \out_fifo_din[1]~0_combout\ & ( (\Selector59~0_combout\ & (((\out_fifo_rd~0_combout\ & !\u_fifo_out|Equal0~0_combout\)) # (\u_fifo_out|adrFifo\(3)))) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( 
-- \out_fifo_din[1]~0_combout\ & ( (!\u_fifo_out|adrFifo\(3) & (\Selector59~0_combout\ & ((!\out_fifo_rd~0_combout\) # (\u_fifo_out|Equal0~0_combout\)))) ) ) ) # ( \u_fifo_out|adrFifo\(0) & ( !\out_fifo_din[1]~0_combout\ & ( (\Selector59~0_combout\ & 
-- ((!\out_fifo_rd~0_combout\) # (\u_fifo_out|Equal0~0_combout\))) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( !\out_fifo_din[1]~0_combout\ & ( (\out_fifo_rd~0_combout\ & (\Selector59~0_combout\ & !\u_fifo_out|Equal0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000010100000111100001000000011000000011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \u_fifo_out|ALT_INV_adrFifo\(3),
	datac => \ALT_INV_Selector59~0_combout\,
	datad => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datae => \u_fifo_out|ALT_INV_adrFifo\(0),
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \u_fifo_out|adrFifo~5_combout\);

-- Location: FF_X48_Y19_N56
\u_fifo_out|adrFifo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|adrFifo~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|adrFifo\(0));

-- Location: LABCELL_X48_Y19_N48
\out_fifo_din[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[1]~0_combout\ = ( \u_fifo_out|adrFifo\(2) & ( \state.S_LOAD_DATA~q\ ) ) # ( !\u_fifo_out|adrFifo\(2) & ( (\state.S_LOAD_DATA~q\ & (((!\u_fifo_out|adrFifo\(3)) # (\u_fifo_out|adrFifo\(1))) # (\u_fifo_out|adrFifo\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(0),
	datab => \u_fifo_out|ALT_INV_adrFifo\(1),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \ALT_INV_state.S_LOAD_DATA~q\,
	dataf => \u_fifo_out|ALT_INV_adrFifo\(2),
	combout => \out_fifo_din[1]~0_combout\);

-- Location: LABCELL_X48_Y18_N48
\out_fifo_din[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[1]~1_combout\ = ( !write_cnt(0) & ( \write_cnt[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[1]~1_combout\);

-- Location: LABCELL_X48_Y18_N0
\out_fifo_din[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[0]~3_combout\ = ( write_cnt(0) & ( (!\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[1][0]~DUPLICATE_q\)) # (\write_cnt[1]~DUPLICATE_q\ & ((\buffer_8x8[3][0]~q\))) ) ) # ( !write_cnt(0) & ( (!\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[0][0]~q\)) # 
-- (\write_cnt[1]~DUPLICATE_q\ & ((\buffer_8x8[3][0]~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[0][0]~q\,
	datab => \ALT_INV_buffer_8x8[1][0]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[3][0]~q\,
	datad => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[0]~3_combout\);

-- Location: LABCELL_X48_Y18_N45
\out_fifo_din[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[0]~4_combout\ = ( \out_fifo_din[0]~3_combout\ & ( \write_cnt[2]~DUPLICATE_q\ & ( (\out_fifo_din[0]~2_combout\ & \out_fifo_din[1]~0_combout\) ) ) ) # ( !\out_fifo_din[0]~3_combout\ & ( \write_cnt[2]~DUPLICATE_q\ & ( 
-- (\out_fifo_din[0]~2_combout\ & \out_fifo_din[1]~0_combout\) ) ) ) # ( \out_fifo_din[0]~3_combout\ & ( !\write_cnt[2]~DUPLICATE_q\ & ( (\out_fifo_din[1]~0_combout\ & ((!\out_fifo_din[1]~1_combout\) # (\buffer_8x8[2][0]~q\))) ) ) ) # ( 
-- !\out_fifo_din[0]~3_combout\ & ( !\write_cnt[2]~DUPLICATE_q\ & ( (\buffer_8x8[2][0]~q\ & (\out_fifo_din[1]~0_combout\ & \out_fifo_din[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011110000001100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_din[0]~2_combout\,
	datab => \ALT_INV_buffer_8x8[2][0]~q\,
	datac => \ALT_INV_out_fifo_din[1]~0_combout\,
	datad => \ALT_INV_out_fifo_din[1]~1_combout\,
	datae => \ALT_INV_out_fifo_din[0]~3_combout\,
	dataf => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	combout => \out_fifo_din[0]~4_combout\);

-- Location: LABCELL_X47_Y19_N54
\u_fifo_out|Fifo[7][6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[7][6]~20_combout\ = ( !\u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (\u_fifo_out|adrFifo\(1) & (\u_fifo_out|adrFifo\(0) & (!\out_fifo_rd~0_combout\ & \u_fifo_out|adrFifo\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(2),
	datae => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[7][6]~20_combout\);

-- Location: FF_X48_Y18_N46
\u_fifo_out|Fifo[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \out_fifo_din[0]~4_combout\,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][0]~q\);

-- Location: LABCELL_X48_Y18_N3
\u_fifo_out|Fifo[6][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][0]~feeder_combout\ = \u_fifo_out|Fifo[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[7][0]~q\,
	combout => \u_fifo_out|Fifo[6][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N36
\u_fifo_out|Fifo[6][4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][4]~17_combout\ = ( \u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(1) & (!\out_fifo_rd~0_combout\ & ((\u_fifo_out|adrFifo\(2)) # (\u_fifo_out|adrFifo\(0))))) # (\u_fifo_out|adrFifo\(1) & 
-- ((!\out_fifo_rd~0_combout\) # ((\u_fifo_out|adrFifo\(0) & \u_fifo_out|adrFifo\(2))))) ) ) ) # ( !\u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\out_fifo_rd~0_combout\) # ((!\u_fifo_out|adrFifo\(1) & (!\u_fifo_out|adrFifo\(0) & 
-- !\u_fifo_out|adrFifo\(2))) # (\u_fifo_out|adrFifo\(1) & (\u_fifo_out|adrFifo\(0) & \u_fifo_out|adrFifo\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111100010111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(2),
	datae => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[6][4]~17_combout\);

-- Location: LABCELL_X48_Y19_N33
\u_fifo_out|Fifo[6][0]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][0]~18_combout\ = ( !\u_fifo_out|adrFifo\(3) & ( (!\u_fifo_out|adrFifo\(0) & (\u_fifo_out|adrFifo\(1) & (\u_fifo_out|adrFifo\(2) & \state.S_LOAD_DATA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(0),
	datab => \u_fifo_out|ALT_INV_adrFifo\(1),
	datac => \u_fifo_out|ALT_INV_adrFifo\(2),
	datad => \ALT_INV_state.S_LOAD_DATA~q\,
	dataf => \u_fifo_out|ALT_INV_adrFifo\(3),
	combout => \u_fifo_out|Fifo[6][0]~18_combout\);

-- Location: LABCELL_X48_Y19_N24
\u_fifo_out|Fifo[6][0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][0]~19_combout\ = ( \u_fifo_out|Equal0~0_combout\ & ( (!\Selector61~0_combout\ & (!\state.S_ERROR~q\ & \u_fifo_out|Fifo[6][0]~18_combout\)) ) ) # ( !\u_fifo_out|Equal0~0_combout\ & ( (!\Selector61~0_combout\ & (!\state.S_ERROR~q\ & 
-- ((\out_fifo_rd~0_combout\) # (\u_fifo_out|Fifo[6][0]~18_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector61~0_combout\,
	datab => \ALT_INV_state.S_ERROR~q\,
	datac => \u_fifo_out|ALT_INV_Fifo[6][0]~18_combout\,
	datad => \ALT_INV_out_fifo_rd~0_combout\,
	dataf => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	combout => \u_fifo_out|Fifo[6][0]~19_combout\);

-- Location: FF_X48_Y18_N4
\u_fifo_out|Fifo[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][0]~q\);

-- Location: LABCELL_X48_Y19_N39
\u_fifo_out|Fifo[5][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][0]~feeder_combout\ = \u_fifo_out|Fifo[6][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[6][0]~q\,
	combout => \u_fifo_out|Fifo[5][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N15
\u_fifo_out|Fifo[5][3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][3]~14_combout\ = ( \u_fifo_out|adrFifo\(0) & ( \u_fifo_out|adrFifo\(2) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( \u_fifo_out|adrFifo\(2) & ( (\state.S_LOAD_DATA~q\ & 
-- ((!\out_fifo_rd~0_combout\) # (\u_fifo_out|adrFifo\(1)))) ) ) ) # ( \u_fifo_out|adrFifo\(0) & ( !\u_fifo_out|adrFifo\(2) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( !\u_fifo_out|adrFifo\(2) & ( 
-- (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(1) & (!\u_fifo_out|adrFifo\(3))) # (\u_fifo_out|adrFifo\(1) & ((!\out_fifo_rd~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100100000001100110000000000110011000100010011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \ALT_INV_state.S_LOAD_DATA~q\,
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \ALT_INV_out_fifo_rd~0_combout\,
	datae => \u_fifo_out|ALT_INV_adrFifo\(0),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(2),
	combout => \u_fifo_out|Fifo[5][3]~14_combout\);

-- Location: LABCELL_X47_Y19_N0
\u_fifo_out|Fifo[5][0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][0]~15_combout\ = ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(1) & (\u_fifo_out|adrFifo\(0) & (\u_fifo_out|adrFifo\(2) & !\u_fifo_out|adrFifo\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(2),
	datad => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[5][0]~15_combout\);

-- Location: LABCELL_X48_Y19_N21
\u_fifo_out|Fifo[5][0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][0]~16_combout\ = ( \u_fifo_out|Fifo[5][0]~15_combout\ & ( (!\state.S_ERROR~q\ & !\Selector61~0_combout\) ) ) # ( !\u_fifo_out|Fifo[5][0]~15_combout\ & ( (\out_fifo_rd~0_combout\ & (!\state.S_ERROR~q\ & (!\u_fifo_out|Equal0~0_combout\ & 
-- !\Selector61~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \ALT_INV_state.S_ERROR~q\,
	datac => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Selector61~0_combout\,
	dataf => \u_fifo_out|ALT_INV_Fifo[5][0]~15_combout\,
	combout => \u_fifo_out|Fifo[5][0]~16_combout\);

-- Location: FF_X48_Y19_N40
\u_fifo_out|Fifo[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][0]~q\);

-- Location: LABCELL_X50_Y19_N27
\u_fifo_out|Fifo[4][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][0]~feeder_combout\ = \u_fifo_out|Fifo[5][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[5][0]~q\,
	combout => \u_fifo_out|Fifo[4][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N6
\u_fifo_out|Fifo[4][2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][2]~11_combout\ = ( \u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(1) & ((!\u_fifo_out|adrFifo\(0) & (!\out_fifo_rd~0_combout\ & \u_fifo_out|adrFifo\(2))) # (\u_fifo_out|adrFifo\(0) & 
-- ((!\out_fifo_rd~0_combout\) # (\u_fifo_out|adrFifo\(2)))))) # (\u_fifo_out|adrFifo\(1) & (((!\out_fifo_rd~0_combout\)))) ) ) ) # ( !\u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\out_fifo_rd~0_combout\) # ((!\u_fifo_out|adrFifo\(1) & 
-- (!\u_fifo_out|adrFifo\(0) $ (\u_fifo_out|adrFifo\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111100100111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(2),
	datae => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[4][2]~11_combout\);

-- Location: LABCELL_X47_Y19_N21
\u_fifo_out|Fifo[4][0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][0]~12_combout\ = ( \state.S_LOAD_DATA~q\ & ( (\u_fifo_out|adrFifo\(2) & (!\u_fifo_out|adrFifo\(0) & (!\u_fifo_out|adrFifo\(3) & !\u_fifo_out|adrFifo\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(2),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \u_fifo_out|ALT_INV_adrFifo\(1),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[4][0]~12_combout\);

-- Location: LABCELL_X48_Y19_N18
\u_fifo_out|Fifo[4][0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][0]~13_combout\ = ( \u_fifo_out|Equal0~0_combout\ & ( (!\state.S_ERROR~q\ & (!\Selector61~0_combout\ & \u_fifo_out|Fifo[4][0]~12_combout\)) ) ) # ( !\u_fifo_out|Equal0~0_combout\ & ( (!\state.S_ERROR~q\ & (!\Selector61~0_combout\ & 
-- ((\u_fifo_out|Fifo[4][0]~12_combout\) # (\out_fifo_rd~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000010000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \ALT_INV_state.S_ERROR~q\,
	datac => \ALT_INV_Selector61~0_combout\,
	datad => \u_fifo_out|ALT_INV_Fifo[4][0]~12_combout\,
	dataf => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	combout => \u_fifo_out|Fifo[4][0]~13_combout\);

-- Location: FF_X50_Y19_N28
\u_fifo_out|Fifo[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][0]~q\);

-- Location: MLABCELL_X49_Y19_N3
\u_fifo_out|Fifo[3][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][0]~feeder_combout\ = ( \u_fifo_out|Fifo[4][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][0]~q\,
	combout => \u_fifo_out|Fifo[3][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N24
\u_fifo_out|Fifo[3][1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][1]~8_combout\ = ( \u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(1) & ((!\u_fifo_out|adrFifo\(0) & ((\u_fifo_out|adrFifo\(2)))) # (\u_fifo_out|adrFifo\(0) & (!\out_fifo_rd~0_combout\)))) # 
-- (\u_fifo_out|adrFifo\(1) & (((!\out_fifo_rd~0_combout\)))) ) ) ) # ( !\u_fifo_out|adrFifo\(3) & ( \state.S_LOAD_DATA~q\ & ( (!\out_fifo_rd~0_combout\) # ((!\u_fifo_out|adrFifo\(1) & !\u_fifo_out|adrFifo\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111000111110000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(2),
	datae => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[3][1]~8_combout\);

-- Location: LABCELL_X47_Y19_N45
\u_fifo_out|Fifo[3][0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][0]~9_combout\ = ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(2) & (\u_fifo_out|adrFifo\(0) & (!\u_fifo_out|adrFifo\(3) & \u_fifo_out|adrFifo\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(2),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \u_fifo_out|ALT_INV_adrFifo\(1),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[3][0]~9_combout\);

-- Location: LABCELL_X48_Y19_N3
\u_fifo_out|Fifo[3][0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][0]~10_combout\ = ( \u_fifo_out|Fifo[3][0]~9_combout\ & ( (!\state.S_ERROR~q\ & !\Selector61~0_combout\) ) ) # ( !\u_fifo_out|Fifo[3][0]~9_combout\ & ( (\out_fifo_rd~0_combout\ & (!\u_fifo_out|Equal0~0_combout\ & (!\state.S_ERROR~q\ & 
-- !\Selector61~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_state.S_ERROR~q\,
	datad => \ALT_INV_Selector61~0_combout\,
	dataf => \u_fifo_out|ALT_INV_Fifo[3][0]~9_combout\,
	combout => \u_fifo_out|Fifo[3][0]~10_combout\);

-- Location: FF_X49_Y19_N5
\u_fifo_out|Fifo[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][0]~q\);

-- Location: MLABCELL_X49_Y18_N39
\u_fifo_out|Fifo[2][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][0]~feeder_combout\ = ( \u_fifo_out|Fifo[3][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][0]~q\,
	combout => \u_fifo_out|Fifo[2][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N12
\u_fifo_out|Fifo[2][7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][7]~5_combout\ = ( \u_fifo_out|adrFifo\(2) & ( \u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(2) & ( \u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & 
-- ((!\out_fifo_rd~0_combout\) # (\u_fifo_out|adrFifo\(1)))) ) ) ) # ( \u_fifo_out|adrFifo\(2) & ( !\u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(2) & ( !\u_fifo_out|adrFifo\(0) & ( 
-- (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(1) & ((!\u_fifo_out|adrFifo\(3)))) # (\u_fifo_out|adrFifo\(1) & (!\out_fifo_rd~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100000011000000110001001100010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \ALT_INV_state.S_LOAD_DATA~q\,
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(3),
	datae => \u_fifo_out|ALT_INV_adrFifo\(2),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(0),
	combout => \u_fifo_out|Fifo[2][7]~5_combout\);

-- Location: LABCELL_X47_Y19_N42
\u_fifo_out|Fifo[2][0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][0]~6_combout\ = ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(2) & (!\u_fifo_out|adrFifo\(0) & (\u_fifo_out|adrFifo\(1) & !\u_fifo_out|adrFifo\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(2),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(1),
	datad => \u_fifo_out|ALT_INV_adrFifo\(3),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[2][0]~6_combout\);

-- Location: LABCELL_X48_Y19_N0
\u_fifo_out|Fifo[2][0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][0]~7_combout\ = ( \u_fifo_out|Fifo[2][0]~6_combout\ & ( (!\Selector61~0_combout\ & !\state.S_ERROR~q\) ) ) # ( !\u_fifo_out|Fifo[2][0]~6_combout\ & ( (\out_fifo_rd~0_combout\ & (!\u_fifo_out|Equal0~0_combout\ & (!\Selector61~0_combout\ 
-- & !\state.S_ERROR~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Selector61~0_combout\,
	datad => \ALT_INV_state.S_ERROR~q\,
	dataf => \u_fifo_out|ALT_INV_Fifo[2][0]~6_combout\,
	combout => \u_fifo_out|Fifo[2][0]~7_combout\);

-- Location: FF_X49_Y18_N40
\u_fifo_out|Fifo[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][0]~q\);

-- Location: LABCELL_X50_Y18_N51
\u_fifo_out|Fifo[1][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][0]~feeder_combout\ = ( \u_fifo_out|Fifo[2][0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][0]~q\,
	combout => \u_fifo_out|Fifo[1][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N51
\u_fifo_out|Fifo[1][1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][1]~2_combout\ = ( \u_fifo_out|adrFifo\(1) & ( \u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(1) & ( \u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & 
-- !\out_fifo_rd~0_combout\) ) ) ) # ( \u_fifo_out|adrFifo\(1) & ( !\u_fifo_out|adrFifo\(0) & ( (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(2)) # (!\out_fifo_rd~0_combout\))) ) ) ) # ( !\u_fifo_out|adrFifo\(1) & ( !\u_fifo_out|adrFifo\(0) & ( 
-- (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(2) & (!\u_fifo_out|adrFifo\(3))) # (\u_fifo_out|adrFifo\(2) & ((!\out_fifo_rd~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101000000010101010100010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_DATA~q\,
	datab => \u_fifo_out|ALT_INV_adrFifo\(2),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \ALT_INV_out_fifo_rd~0_combout\,
	datae => \u_fifo_out|ALT_INV_adrFifo\(1),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(0),
	combout => \u_fifo_out|Fifo[1][1]~2_combout\);

-- Location: LABCELL_X47_Y19_N3
\u_fifo_out|Fifo[1][0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][0]~3_combout\ = ( \state.S_LOAD_DATA~q\ & ( (!\u_fifo_out|adrFifo\(1) & (\u_fifo_out|adrFifo\(0) & (!\u_fifo_out|adrFifo\(3) & !\u_fifo_out|adrFifo\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_adrFifo\(1),
	datab => \u_fifo_out|ALT_INV_adrFifo\(0),
	datac => \u_fifo_out|ALT_INV_adrFifo\(3),
	datad => \u_fifo_out|ALT_INV_adrFifo\(2),
	dataf => \ALT_INV_state.S_LOAD_DATA~q\,
	combout => \u_fifo_out|Fifo[1][0]~3_combout\);

-- Location: LABCELL_X48_Y19_N9
\u_fifo_out|Fifo[1][0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][0]~4_combout\ = ( \u_fifo_out|Fifo[1][0]~3_combout\ & ( (!\state.S_ERROR~q\ & !\Selector61~0_combout\) ) ) # ( !\u_fifo_out|Fifo[1][0]~3_combout\ & ( (\out_fifo_rd~0_combout\ & (!\u_fifo_out|Equal0~0_combout\ & (!\state.S_ERROR~q\ & 
-- !\Selector61~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_state.S_ERROR~q\,
	datad => \ALT_INV_Selector61~0_combout\,
	dataf => \u_fifo_out|ALT_INV_Fifo[1][0]~3_combout\,
	combout => \u_fifo_out|Fifo[1][0]~4_combout\);

-- Location: FF_X50_Y18_N52
\u_fifo_out|Fifo[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][0]~q\);

-- Location: LABCELL_X52_Y19_N39
\u_fifo_out|Fifo[0][0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][0]~feeder_combout\ = \u_fifo_out|Fifo[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[1][0]~q\,
	combout => \u_fifo_out|Fifo[0][0]~feeder_combout\);

-- Location: LABCELL_X47_Y19_N48
\u_fifo_out|Fifo[0][5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][5]~0_combout\ = ( \u_fifo_out|adrFifo\(0) & ( \u_fifo_out|adrFifo\(1) & ( (\state.S_LOAD_DATA~q\ & !\out_fifo_rd~0_combout\) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( \u_fifo_out|adrFifo\(1) & ( (\state.S_LOAD_DATA~q\ & 
-- !\out_fifo_rd~0_combout\) ) ) ) # ( \u_fifo_out|adrFifo\(0) & ( !\u_fifo_out|adrFifo\(1) & ( (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(2)) # (!\out_fifo_rd~0_combout\))) ) ) ) # ( !\u_fifo_out|adrFifo\(0) & ( !\u_fifo_out|adrFifo\(1) & ( 
-- (\state.S_LOAD_DATA~q\ & ((!\u_fifo_out|adrFifo\(2) & ((!\u_fifo_out|adrFifo\(3)))) # (\u_fifo_out|adrFifo\(2) & (!\out_fifo_rd~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000010000010101000101010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_LOAD_DATA~q\,
	datab => \u_fifo_out|ALT_INV_adrFifo\(2),
	datac => \ALT_INV_out_fifo_rd~0_combout\,
	datad => \u_fifo_out|ALT_INV_adrFifo\(3),
	datae => \u_fifo_out|ALT_INV_adrFifo\(0),
	dataf => \u_fifo_out|ALT_INV_adrFifo\(1),
	combout => \u_fifo_out|Fifo[0][5]~0_combout\);

-- Location: LABCELL_X48_Y19_N6
\u_fifo_out|Fifo[0][0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][0]~1_combout\ = ( \out_fifo_din[1]~0_combout\ & ( (!\Selector61~0_combout\ & (!\state.S_ERROR~q\ & ((\u_fifo_out|Equal0~0_combout\) # (\out_fifo_rd~0_combout\)))) ) ) # ( !\out_fifo_din[1]~0_combout\ & ( (\out_fifo_rd~0_combout\ & 
-- (!\u_fifo_out|Equal0~0_combout\ & (!\Selector61~0_combout\ & !\state.S_ERROR~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_rd~0_combout\,
	datab => \u_fifo_out|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Selector61~0_combout\,
	datad => \ALT_INV_state.S_ERROR~q\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \u_fifo_out|Fifo[0][0]~1_combout\);

-- Location: FF_X52_Y19_N40
\u_fifo_out|Fifo[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][0]~feeder_combout\,
	asdata => \out_fifo_din[0]~4_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][0]~q\);

-- Location: LABCELL_X53_Y19_N57
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( dpc_control(0) & ( (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \u_fifo_out|Fifo[0][0]~q\)) # (\Addr[0]~input_o\ & (!\Addr[1]~input_o\)) ) ) # ( !dpc_control(0) & ( (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \u_fifo_out|Fifo[0][0]~q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001000110010001100100011001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \u_fifo_out|ALT_INV_Fifo[0][0]~q\,
	dataf => ALT_INV_dpc_control(0),
	combout => \Mux7~0_combout\);

-- Location: FF_X49_Y14_N1
\buffer_8x8[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][1]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][1]~q\);

-- Location: MLABCELL_X49_Y16_N9
\out_fifo_din[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[1]~5_combout\ = ( write_cnt(0) & ( \buffer_8x8[7][1]~q\ & ( (\buffer_8x8[5][1]~q\) # (write_cnt(1)) ) ) ) # ( !write_cnt(0) & ( \buffer_8x8[7][1]~q\ & ( (!write_cnt(1) & ((\buffer_8x8[4][1]~q\))) # (write_cnt(1) & (\buffer_8x8[6][1]~q\)) ) ) 
-- ) # ( write_cnt(0) & ( !\buffer_8x8[7][1]~q\ & ( (!write_cnt(1) & \buffer_8x8[5][1]~q\) ) ) ) # ( !write_cnt(0) & ( !\buffer_8x8[7][1]~q\ & ( (!write_cnt(1) & ((\buffer_8x8[4][1]~q\))) # (write_cnt(1) & (\buffer_8x8[6][1]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000001100110000011101000111010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][1]~q\,
	datab => ALT_INV_write_cnt(1),
	datac => \ALT_INV_buffer_8x8[4][1]~q\,
	datad => \ALT_INV_buffer_8x8[5][1]~q\,
	datae => ALT_INV_write_cnt(0),
	dataf => \ALT_INV_buffer_8x8[7][1]~q\,
	combout => \out_fifo_din[1]~5_combout\);

-- Location: MLABCELL_X49_Y14_N36
\out_fifo_din[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[1]~6_combout\ = ( write_cnt(0) & ( (!write_cnt(1) & ((\buffer_8x8[1][1]~DUPLICATE_q\))) # (write_cnt(1) & (\buffer_8x8[3][1]~DUPLICATE_q\)) ) ) # ( !write_cnt(0) & ( (!write_cnt(1) & ((\buffer_8x8[0][1]~q\))) # (write_cnt(1) & 
-- (\buffer_8x8[3][1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][1]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[0][1]~q\,
	datac => \ALT_INV_buffer_8x8[1][1]~DUPLICATE_q\,
	datad => ALT_INV_write_cnt(1),
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[1]~6_combout\);

-- Location: LABCELL_X50_Y17_N42
\out_fifo_din[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[1]~7_combout\ = ( \out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((\buffer_8x8[2][1]~q\))) # (\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[1]~5_combout\)) ) ) ) # ( !\out_fifo_din[1]~1_combout\ 
-- & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[1]~6_combout\))) # (\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[1]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011101000111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_din[1]~5_combout\,
	datab => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datac => \ALT_INV_out_fifo_din[1]~6_combout\,
	datad => \ALT_INV_buffer_8x8[2][1]~q\,
	datae => \ALT_INV_out_fifo_din[1]~1_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[1]~7_combout\);

-- Location: FF_X50_Y17_N56
\u_fifo_out|Fifo[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][1]~q\);

-- Location: LABCELL_X50_Y17_N51
\u_fifo_out|Fifo[6][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][1]~feeder_combout\ = \u_fifo_out|Fifo[7][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[7][1]~q\,
	combout => \u_fifo_out|Fifo[6][1]~feeder_combout\);

-- Location: FF_X50_Y17_N52
\u_fifo_out|Fifo[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][1]~q\);

-- Location: LABCELL_X48_Y19_N30
\u_fifo_out|Fifo[5][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][1]~feeder_combout\ = \u_fifo_out|Fifo[6][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[6][1]~q\,
	combout => \u_fifo_out|Fifo[5][1]~feeder_combout\);

-- Location: FF_X48_Y19_N31
\u_fifo_out|Fifo[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][1]~q\);

-- Location: LABCELL_X50_Y19_N54
\u_fifo_out|Fifo[4][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][1]~feeder_combout\ = ( \u_fifo_out|Fifo[5][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[5][1]~q\,
	combout => \u_fifo_out|Fifo[4][1]~feeder_combout\);

-- Location: FF_X50_Y19_N55
\u_fifo_out|Fifo[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][1]~q\);

-- Location: MLABCELL_X49_Y19_N30
\u_fifo_out|Fifo[3][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][1]~feeder_combout\ = ( \u_fifo_out|Fifo[4][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][1]~q\,
	combout => \u_fifo_out|Fifo[3][1]~feeder_combout\);

-- Location: FF_X49_Y19_N31
\u_fifo_out|Fifo[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][1]~q\);

-- Location: MLABCELL_X49_Y18_N30
\u_fifo_out|Fifo[2][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][1]~feeder_combout\ = ( \u_fifo_out|Fifo[3][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][1]~q\,
	combout => \u_fifo_out|Fifo[2][1]~feeder_combout\);

-- Location: FF_X49_Y18_N31
\u_fifo_out|Fifo[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][1]~q\);

-- Location: LABCELL_X50_Y18_N6
\u_fifo_out|Fifo[1][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][1]~feeder_combout\ = ( \u_fifo_out|Fifo[2][1]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][1]~q\,
	combout => \u_fifo_out|Fifo[1][1]~feeder_combout\);

-- Location: FF_X50_Y18_N7
\u_fifo_out|Fifo[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][1]~q\);

-- Location: LABCELL_X52_Y19_N6
\u_fifo_out|Fifo[0][1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][1]~feeder_combout\ = \u_fifo_out|Fifo[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[1][1]~q\,
	combout => \u_fifo_out|Fifo[0][1]~feeder_combout\);

-- Location: FF_X52_Y19_N8
\u_fifo_out|Fifo[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][1]~feeder_combout\,
	asdata => \out_fifo_din[1]~7_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][1]~q\);

-- Location: LABCELL_X52_Y19_N30
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\Addr[0]~input_o\ & ( (\u_fifo_out|Fifo[0][1]~q\ & \Addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[0][1]~q\,
	datad => \ALT_INV_Addr[1]~input_o\,
	dataf => \ALT_INV_Addr[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X49_Y15_N22
\buffer_8x8[3][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[3][2]~25_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[3][2]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y17_N39
\out_fifo_din[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[2]~9_combout\ = ( \buffer_8x8[1][2]~DUPLICATE_q\ & ( (!\write_cnt[1]~DUPLICATE_q\ & (((write_cnt(0)) # (\buffer_8x8[0][2]~DUPLICATE_q\)))) # (\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[3][2]~DUPLICATE_q\)) ) ) # ( 
-- !\buffer_8x8[1][2]~DUPLICATE_q\ & ( (!\write_cnt[1]~DUPLICATE_q\ & (((\buffer_8x8[0][2]~DUPLICATE_q\ & !write_cnt(0))))) # (\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[3][2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100010001000110110001000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[3][2]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[0][2]~DUPLICATE_q\,
	datad => ALT_INV_write_cnt(0),
	dataf => \ALT_INV_buffer_8x8[1][2]~DUPLICATE_q\,
	combout => \out_fifo_din[2]~9_combout\);

-- Location: FF_X48_Y15_N46
\buffer_8x8[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \u_fifo_in|Fifo[0][2]~q\,
	clrn => \Reset_n~input_o\,
	sload => VCC,
	ena => \buffer_8x8[7][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[7][2]~q\);

-- Location: LABCELL_X50_Y15_N51
\out_fifo_din[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[2]~8_combout\ = ( \buffer_8x8[5][2]~q\ & ( \buffer_8x8[6][2]~q\ & ( (!write_cnt(0) & (((write_cnt(1))) # (\buffer_8x8[4][2]~q\))) # (write_cnt(0) & (((!write_cnt(1)) # (\buffer_8x8[7][2]~q\)))) ) ) ) # ( !\buffer_8x8[5][2]~q\ & ( 
-- \buffer_8x8[6][2]~q\ & ( (!write_cnt(0) & (((write_cnt(1))) # (\buffer_8x8[4][2]~q\))) # (write_cnt(0) & (((\buffer_8x8[7][2]~q\ & write_cnt(1))))) ) ) ) # ( \buffer_8x8[5][2]~q\ & ( !\buffer_8x8[6][2]~q\ & ( (!write_cnt(0) & (\buffer_8x8[4][2]~q\ & 
-- ((!write_cnt(1))))) # (write_cnt(0) & (((!write_cnt(1)) # (\buffer_8x8[7][2]~q\)))) ) ) ) # ( !\buffer_8x8[5][2]~q\ & ( !\buffer_8x8[6][2]~q\ & ( (!write_cnt(0) & (\buffer_8x8[4][2]~q\ & ((!write_cnt(1))))) # (write_cnt(0) & (((\buffer_8x8[7][2]~q\ & 
-- write_cnt(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[4][2]~q\,
	datab => \ALT_INV_buffer_8x8[7][2]~q\,
	datac => ALT_INV_write_cnt(0),
	datad => ALT_INV_write_cnt(1),
	datae => \ALT_INV_buffer_8x8[5][2]~q\,
	dataf => \ALT_INV_buffer_8x8[6][2]~q\,
	combout => \out_fifo_din[2]~8_combout\);

-- Location: FF_X49_Y16_N47
\buffer_8x8[2][2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[2][2]~21_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[2][2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y17_N24
\out_fifo_din[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[2]~10_combout\ = ( \out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((\buffer_8x8[2][2]~DUPLICATE_q\))) # (\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[2]~8_combout\)) ) ) ) # ( 
-- !\out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[2]~9_combout\)) # (\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[2]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_din[2]~9_combout\,
	datab => \ALT_INV_out_fifo_din[2]~8_combout\,
	datac => \ALT_INV_buffer_8x8[2][2]~DUPLICATE_q\,
	datad => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datae => \ALT_INV_out_fifo_din[1]~1_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[2]~10_combout\);

-- Location: LABCELL_X48_Y18_N9
\u_fifo_out|Fifo[7][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[7][2]~feeder_combout\ = ( \out_fifo_din[2]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_out_fifo_din[2]~10_combout\,
	combout => \u_fifo_out|Fifo[7][2]~feeder_combout\);

-- Location: FF_X48_Y18_N11
\u_fifo_out|Fifo[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[7][2]~feeder_combout\,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][2]~q\);

-- Location: LABCELL_X48_Y18_N57
\u_fifo_out|Fifo[6][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][2]~feeder_combout\ = \u_fifo_out|Fifo[7][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[7][2]~q\,
	combout => \u_fifo_out|Fifo[6][2]~feeder_combout\);

-- Location: FF_X48_Y18_N58
\u_fifo_out|Fifo[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][2]~q\);

-- Location: LABCELL_X50_Y15_N30
\u_fifo_out|Fifo[5][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][2]~feeder_combout\ = \u_fifo_out|Fifo[6][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[6][2]~q\,
	combout => \u_fifo_out|Fifo[5][2]~feeder_combout\);

-- Location: FF_X50_Y15_N31
\u_fifo_out|Fifo[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][2]~q\);

-- Location: LABCELL_X50_Y19_N57
\u_fifo_out|Fifo[4][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][2]~feeder_combout\ = ( \u_fifo_out|Fifo[5][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[5][2]~q\,
	combout => \u_fifo_out|Fifo[4][2]~feeder_combout\);

-- Location: FF_X50_Y19_N58
\u_fifo_out|Fifo[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][2]~q\);

-- Location: MLABCELL_X49_Y19_N39
\u_fifo_out|Fifo[3][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][2]~feeder_combout\ = ( \u_fifo_out|Fifo[4][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][2]~q\,
	combout => \u_fifo_out|Fifo[3][2]~feeder_combout\);

-- Location: FF_X49_Y19_N40
\u_fifo_out|Fifo[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][2]~q\);

-- Location: MLABCELL_X49_Y18_N51
\u_fifo_out|Fifo[2][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][2]~feeder_combout\ = \u_fifo_out|Fifo[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[3][2]~q\,
	combout => \u_fifo_out|Fifo[2][2]~feeder_combout\);

-- Location: FF_X49_Y18_N52
\u_fifo_out|Fifo[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][2]~q\);

-- Location: LABCELL_X50_Y18_N15
\u_fifo_out|Fifo[1][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][2]~feeder_combout\ = ( \u_fifo_out|Fifo[2][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][2]~q\,
	combout => \u_fifo_out|Fifo[1][2]~feeder_combout\);

-- Location: FF_X50_Y18_N16
\u_fifo_out|Fifo[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][2]~q\);

-- Location: LABCELL_X52_Y19_N9
\u_fifo_out|Fifo[0][2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][2]~feeder_combout\ = ( \u_fifo_out|Fifo[1][2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[1][2]~q\,
	combout => \u_fifo_out|Fifo[0][2]~feeder_combout\);

-- Location: FF_X52_Y19_N10
\u_fifo_out|Fifo[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][2]~feeder_combout\,
	asdata => \out_fifo_din[2]~10_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][2]~q\);

-- Location: LABCELL_X53_Y19_N39
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \u_fifo_out|Fifo[0][2]~q\ & ( (!\Addr[0]~input_o\ & \Addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	dataf => \u_fifo_out|ALT_INV_Fifo[0][2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X47_Y17_N18
\out_fifo_din[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[3]~11_combout\ = ( \write_cnt[1]~DUPLICATE_q\ & ( write_cnt(0) & ( \buffer_8x8[7][3]~q\ ) ) ) # ( !\write_cnt[1]~DUPLICATE_q\ & ( write_cnt(0) & ( \buffer_8x8[5][3]~q\ ) ) ) # ( \write_cnt[1]~DUPLICATE_q\ & ( !write_cnt(0) & ( 
-- \buffer_8x8[6][3]~DUPLICATE_q\ ) ) ) # ( !\write_cnt[1]~DUPLICATE_q\ & ( !write_cnt(0) & ( \buffer_8x8[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][3]~q\,
	datab => \ALT_INV_buffer_8x8[6][3]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[4][3]~q\,
	datad => \ALT_INV_buffer_8x8[5][3]~q\,
	datae => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[3]~11_combout\);

-- Location: LABCELL_X47_Y17_N24
\out_fifo_din[3]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[3]~12_combout\ = ( \buffer_8x8[3][3]~q\ & ( ((!write_cnt(0) & ((\buffer_8x8[0][3]~DUPLICATE_q\))) # (write_cnt(0) & (\buffer_8x8[1][3]~q\))) # (\write_cnt[1]~DUPLICATE_q\) ) ) # ( !\buffer_8x8[3][3]~q\ & ( (!\write_cnt[1]~DUPLICATE_q\ & 
-- ((!write_cnt(0) & ((\buffer_8x8[0][3]~DUPLICATE_q\))) # (write_cnt(0) & (\buffer_8x8[1][3]~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_write_cnt(0),
	datab => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[1][3]~q\,
	datad => \ALT_INV_buffer_8x8[0][3]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[3][3]~q\,
	combout => \out_fifo_din[3]~12_combout\);

-- Location: LABCELL_X50_Y17_N57
\out_fifo_din[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[3]~13_combout\ = ( \out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & (\buffer_8x8[2][3]~q\)) # (\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[3]~11_combout\))) ) ) ) # ( 
-- !\out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[3]~12_combout\))) # (\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[3]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][3]~q\,
	datab => \ALT_INV_out_fifo_din[3]~11_combout\,
	datac => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_out_fifo_din[3]~12_combout\,
	datae => \ALT_INV_out_fifo_din[1]~1_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[3]~13_combout\);

-- Location: FF_X50_Y17_N41
\u_fifo_out|Fifo[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][3]~q\);

-- Location: LABCELL_X50_Y17_N33
\u_fifo_out|Fifo[6][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][3]~feeder_combout\ = \u_fifo_out|Fifo[7][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[7][3]~q\,
	combout => \u_fifo_out|Fifo[6][3]~feeder_combout\);

-- Location: FF_X50_Y17_N34
\u_fifo_out|Fifo[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][3]~q\);

-- Location: MLABCELL_X45_Y19_N15
\u_fifo_out|Fifo[5][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][3]~feeder_combout\ = ( \u_fifo_out|Fifo[6][3]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[6][3]~q\,
	combout => \u_fifo_out|Fifo[5][3]~feeder_combout\);

-- Location: FF_X45_Y19_N16
\u_fifo_out|Fifo[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][3]~q\);

-- Location: LABCELL_X50_Y19_N36
\u_fifo_out|Fifo[4][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][3]~feeder_combout\ = \u_fifo_out|Fifo[5][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[5][3]~q\,
	combout => \u_fifo_out|Fifo[4][3]~feeder_combout\);

-- Location: FF_X50_Y19_N38
\u_fifo_out|Fifo[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][3]~q\);

-- Location: MLABCELL_X49_Y19_N18
\u_fifo_out|Fifo[3][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][3]~feeder_combout\ = \u_fifo_out|Fifo[4][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[4][3]~q\,
	combout => \u_fifo_out|Fifo[3][3]~feeder_combout\);

-- Location: FF_X49_Y19_N20
\u_fifo_out|Fifo[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][3]~q\);

-- Location: MLABCELL_X49_Y18_N6
\u_fifo_out|Fifo[2][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][3]~feeder_combout\ = \u_fifo_out|Fifo[3][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[3][3]~q\,
	combout => \u_fifo_out|Fifo[2][3]~feeder_combout\);

-- Location: FF_X49_Y18_N7
\u_fifo_out|Fifo[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][3]~q\);

-- Location: LABCELL_X50_Y18_N54
\u_fifo_out|Fifo[1][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][3]~feeder_combout\ = \u_fifo_out|Fifo[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[2][3]~q\,
	combout => \u_fifo_out|Fifo[1][3]~feeder_combout\);

-- Location: FF_X50_Y18_N55
\u_fifo_out|Fifo[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][3]~q\);

-- Location: LABCELL_X52_Y19_N27
\u_fifo_out|Fifo[0][3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][3]~feeder_combout\ = \u_fifo_out|Fifo[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_fifo_out|ALT_INV_Fifo[1][3]~q\,
	combout => \u_fifo_out|Fifo[0][3]~feeder_combout\);

-- Location: FF_X52_Y19_N28
\u_fifo_out|Fifo[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][3]~feeder_combout\,
	asdata => \out_fifo_din[3]~13_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][3]~q\);

-- Location: LABCELL_X53_Y19_N36
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \u_fifo_out|Fifo[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \u_fifo_out|ALT_INV_Fifo[0][3]~q\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X50_Y17_N15
\out_fifo_din[4]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[4]~15_combout\ = ( \buffer_8x8[3][4]~q\ & ( ((!write_cnt(0) & (\buffer_8x8[0][4]~DUPLICATE_q\)) # (write_cnt(0) & ((\buffer_8x8[1][4]~DUPLICATE_q\)))) # (\write_cnt[1]~DUPLICATE_q\) ) ) # ( !\buffer_8x8[3][4]~q\ & ( 
-- (!\write_cnt[1]~DUPLICATE_q\ & ((!write_cnt(0) & (\buffer_8x8[0][4]~DUPLICATE_q\)) # (write_cnt(0) & ((\buffer_8x8[1][4]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datab => ALT_INV_write_cnt(0),
	datac => \ALT_INV_buffer_8x8[0][4]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[1][4]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[3][4]~q\,
	combout => \out_fifo_din[4]~15_combout\);

-- Location: LABCELL_X50_Y17_N36
\out_fifo_din[4]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[4]~14_combout\ = ( \buffer_8x8[4][4]~DUPLICATE_q\ & ( \buffer_8x8[7][4]~q\ & ( (!write_cnt(0) & (((!\write_cnt[1]~DUPLICATE_q\) # (\buffer_8x8[6][4]~DUPLICATE_q\)))) # (write_cnt(0) & (((\write_cnt[1]~DUPLICATE_q\)) # 
-- (\buffer_8x8[5][4]~DUPLICATE_q\))) ) ) ) # ( !\buffer_8x8[4][4]~DUPLICATE_q\ & ( \buffer_8x8[7][4]~q\ & ( (!write_cnt(0) & (((\write_cnt[1]~DUPLICATE_q\ & \buffer_8x8[6][4]~DUPLICATE_q\)))) # (write_cnt(0) & (((\write_cnt[1]~DUPLICATE_q\)) # 
-- (\buffer_8x8[5][4]~DUPLICATE_q\))) ) ) ) # ( \buffer_8x8[4][4]~DUPLICATE_q\ & ( !\buffer_8x8[7][4]~q\ & ( (!write_cnt(0) & (((!\write_cnt[1]~DUPLICATE_q\) # (\buffer_8x8[6][4]~DUPLICATE_q\)))) # (write_cnt(0) & (\buffer_8x8[5][4]~DUPLICATE_q\ & 
-- (!\write_cnt[1]~DUPLICATE_q\))) ) ) ) # ( !\buffer_8x8[4][4]~DUPLICATE_q\ & ( !\buffer_8x8[7][4]~q\ & ( (!write_cnt(0) & (((\write_cnt[1]~DUPLICATE_q\ & \buffer_8x8[6][4]~DUPLICATE_q\)))) # (write_cnt(0) & (\buffer_8x8[5][4]~DUPLICATE_q\ & 
-- (!\write_cnt[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][4]~DUPLICATE_q\,
	datab => ALT_INV_write_cnt(0),
	datac => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[6][4]~DUPLICATE_q\,
	datae => \ALT_INV_buffer_8x8[4][4]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[7][4]~q\,
	combout => \out_fifo_din[4]~14_combout\);

-- Location: LABCELL_X50_Y17_N6
\out_fifo_din[4]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[4]~16_combout\ = ( \out_fifo_din[4]~14_combout\ & ( \out_fifo_din[1]~0_combout\ & ( ((!\out_fifo_din[1]~1_combout\ & ((\out_fifo_din[4]~15_combout\))) # (\out_fifo_din[1]~1_combout\ & (\buffer_8x8[2][4]~DUPLICATE_q\))) # 
-- (\write_cnt[2]~DUPLICATE_q\) ) ) ) # ( !\out_fifo_din[4]~14_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((!\out_fifo_din[1]~1_combout\ & ((\out_fifo_din[4]~15_combout\))) # (\out_fifo_din[1]~1_combout\ & 
-- (\buffer_8x8[2][4]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100110001000011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][4]~DUPLICATE_q\,
	datab => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datac => \ALT_INV_out_fifo_din[1]~1_combout\,
	datad => \ALT_INV_out_fifo_din[4]~15_combout\,
	datae => \ALT_INV_out_fifo_din[4]~14_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[4]~16_combout\);

-- Location: FF_X50_Y17_N2
\u_fifo_out|Fifo[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][4]~q\);

-- Location: LABCELL_X50_Y17_N12
\u_fifo_out|Fifo[6][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][4]~feeder_combout\ = \u_fifo_out|Fifo[7][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[7][4]~q\,
	combout => \u_fifo_out|Fifo[6][4]~feeder_combout\);

-- Location: FF_X50_Y17_N13
\u_fifo_out|Fifo[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][4]~q\);

-- Location: MLABCELL_X45_Y19_N9
\u_fifo_out|Fifo[5][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][4]~feeder_combout\ = ( \u_fifo_out|Fifo[6][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[6][4]~q\,
	combout => \u_fifo_out|Fifo[5][4]~feeder_combout\);

-- Location: FF_X45_Y19_N10
\u_fifo_out|Fifo[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][4]~q\);

-- Location: LABCELL_X50_Y19_N39
\u_fifo_out|Fifo[4][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][4]~feeder_combout\ = \u_fifo_out|Fifo[5][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[5][4]~q\,
	combout => \u_fifo_out|Fifo[4][4]~feeder_combout\);

-- Location: FF_X50_Y19_N41
\u_fifo_out|Fifo[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][4]~q\);

-- Location: MLABCELL_X49_Y19_N51
\u_fifo_out|Fifo[3][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][4]~feeder_combout\ = ( \u_fifo_out|Fifo[4][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][4]~q\,
	combout => \u_fifo_out|Fifo[3][4]~feeder_combout\);

-- Location: FF_X49_Y19_N52
\u_fifo_out|Fifo[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][4]~q\);

-- Location: MLABCELL_X49_Y18_N27
\u_fifo_out|Fifo[2][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][4]~feeder_combout\ = ( \u_fifo_out|Fifo[3][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][4]~q\,
	combout => \u_fifo_out|Fifo[2][4]~feeder_combout\);

-- Location: FF_X49_Y18_N28
\u_fifo_out|Fifo[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][4]~q\);

-- Location: LABCELL_X50_Y18_N27
\u_fifo_out|Fifo[1][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][4]~feeder_combout\ = \u_fifo_out|Fifo[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[2][4]~q\,
	combout => \u_fifo_out|Fifo[1][4]~feeder_combout\);

-- Location: FF_X50_Y18_N28
\u_fifo_out|Fifo[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][4]~q\);

-- Location: LABCELL_X52_Y19_N33
\u_fifo_out|Fifo[0][4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][4]~feeder_combout\ = ( \u_fifo_out|Fifo[1][4]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[1][4]~q\,
	combout => \u_fifo_out|Fifo[0][4]~feeder_combout\);

-- Location: FF_X52_Y19_N35
\u_fifo_out|Fifo[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][4]~feeder_combout\,
	asdata => \out_fifo_din[4]~16_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][4]~q\);

-- Location: LABCELL_X52_Y19_N24
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & \u_fifo_out|Fifo[0][4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \u_fifo_out|ALT_INV_Fifo[0][4]~q\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X48_Y18_N51
\out_fifo_din[5]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[5]~18_combout\ = ( \buffer_8x8[1][5]~DUPLICATE_q\ & ( (!\write_cnt[1]~DUPLICATE_q\ & (((\buffer_8x8[0][5]~q\)) # (write_cnt(0)))) # (\write_cnt[1]~DUPLICATE_q\ & (((\buffer_8x8[3][5]~DUPLICATE_q\)))) ) ) # ( !\buffer_8x8[1][5]~DUPLICATE_q\ & 
-- ( (!\write_cnt[1]~DUPLICATE_q\ & (!write_cnt(0) & (\buffer_8x8[0][5]~q\))) # (\write_cnt[1]~DUPLICATE_q\ & (((\buffer_8x8[3][5]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_write_cnt(0),
	datab => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[0][5]~q\,
	datad => \ALT_INV_buffer_8x8[3][5]~DUPLICATE_q\,
	dataf => \ALT_INV_buffer_8x8[1][5]~DUPLICATE_q\,
	combout => \out_fifo_din[5]~18_combout\);

-- Location: LABCELL_X48_Y18_N24
\out_fifo_din[5]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[5]~17_combout\ = ( \buffer_8x8[6][5]~q\ & ( write_cnt(0) & ( (!\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[5][5]~DUPLICATE_q\)) # (\write_cnt[1]~DUPLICATE_q\ & ((\buffer_8x8[7][5]~q\))) ) ) ) # ( !\buffer_8x8[6][5]~q\ & ( write_cnt(0) & ( 
-- (!\write_cnt[1]~DUPLICATE_q\ & (\buffer_8x8[5][5]~DUPLICATE_q\)) # (\write_cnt[1]~DUPLICATE_q\ & ((\buffer_8x8[7][5]~q\))) ) ) ) # ( \buffer_8x8[6][5]~q\ & ( !write_cnt(0) & ( (\buffer_8x8[4][5]~q\) # (\write_cnt[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\buffer_8x8[6][5]~q\ & ( !write_cnt(0) & ( (!\write_cnt[1]~DUPLICATE_q\ & \buffer_8x8[4][5]~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[5][5]~DUPLICATE_q\,
	datab => \ALT_INV_write_cnt[1]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[7][5]~q\,
	datad => \ALT_INV_buffer_8x8[4][5]~q\,
	datae => \ALT_INV_buffer_8x8[6][5]~q\,
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[5]~17_combout\);

-- Location: LABCELL_X48_Y18_N21
\out_fifo_din[5]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[5]~19_combout\ = ( \out_fifo_din[1]~0_combout\ & ( \out_fifo_din[1]~1_combout\ & ( (!write_cnt(2) & (\buffer_8x8[2][5]~q\)) # (write_cnt(2) & ((\out_fifo_din[5]~17_combout\))) ) ) ) # ( \out_fifo_din[1]~0_combout\ & ( 
-- !\out_fifo_din[1]~1_combout\ & ( (!write_cnt(2) & (\out_fifo_din[5]~18_combout\)) # (write_cnt(2) & ((\out_fifo_din[5]~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000111011100000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_din[5]~18_combout\,
	datab => ALT_INV_write_cnt(2),
	datac => \ALT_INV_buffer_8x8[2][5]~q\,
	datad => \ALT_INV_out_fifo_din[5]~17_combout\,
	datae => \ALT_INV_out_fifo_din[1]~0_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~1_combout\,
	combout => \out_fifo_din[5]~19_combout\);

-- Location: FF_X48_Y18_N20
\u_fifo_out|Fifo[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][5]~q\);

-- Location: LABCELL_X48_Y18_N15
\u_fifo_out|Fifo[6][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][5]~feeder_combout\ = \u_fifo_out|Fifo[7][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[7][5]~q\,
	combout => \u_fifo_out|Fifo[6][5]~feeder_combout\);

-- Location: FF_X48_Y18_N16
\u_fifo_out|Fifo[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][5]~q\);

-- Location: MLABCELL_X45_Y19_N36
\u_fifo_out|Fifo[5][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][5]~feeder_combout\ = ( \u_fifo_out|Fifo[6][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[6][5]~q\,
	combout => \u_fifo_out|Fifo[5][5]~feeder_combout\);

-- Location: FF_X45_Y19_N37
\u_fifo_out|Fifo[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][5]~q\);

-- Location: LABCELL_X50_Y19_N42
\u_fifo_out|Fifo[4][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][5]~feeder_combout\ = \u_fifo_out|Fifo[5][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[5][5]~q\,
	combout => \u_fifo_out|Fifo[4][5]~feeder_combout\);

-- Location: FF_X50_Y19_N44
\u_fifo_out|Fifo[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][5]~q\);

-- Location: MLABCELL_X49_Y19_N6
\u_fifo_out|Fifo[3][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][5]~feeder_combout\ = \u_fifo_out|Fifo[4][5]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[4][5]~q\,
	combout => \u_fifo_out|Fifo[3][5]~feeder_combout\);

-- Location: FF_X49_Y19_N7
\u_fifo_out|Fifo[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][5]~q\);

-- Location: MLABCELL_X49_Y18_N54
\u_fifo_out|Fifo[2][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][5]~feeder_combout\ = ( \u_fifo_out|Fifo[3][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][5]~q\,
	combout => \u_fifo_out|Fifo[2][5]~feeder_combout\);

-- Location: FF_X49_Y18_N55
\u_fifo_out|Fifo[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][5]~q\);

-- Location: LABCELL_X50_Y18_N30
\u_fifo_out|Fifo[1][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][5]~feeder_combout\ = ( \u_fifo_out|Fifo[2][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][5]~q\,
	combout => \u_fifo_out|Fifo[1][5]~feeder_combout\);

-- Location: FF_X50_Y18_N31
\u_fifo_out|Fifo[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][5]~q\);

-- Location: LABCELL_X52_Y19_N0
\u_fifo_out|Fifo[0][5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][5]~feeder_combout\ = ( \u_fifo_out|Fifo[1][5]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[1][5]~q\,
	combout => \u_fifo_out|Fifo[0][5]~feeder_combout\);

-- Location: FF_X52_Y19_N1
\u_fifo_out|Fifo[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][5]~feeder_combout\,
	asdata => \out_fifo_din[5]~19_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][5]~q\);

-- Location: LABCELL_X53_Y19_N54
\dpc_control[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dpc_control[5]~1_combout\ = ( \D_in[5]~input_o\ & ( ((\Addr[0]~input_o\ & (!\Addr[1]~input_o\ & \Wr~input_o\))) # (dpc_control(5)) ) ) # ( !\D_in[5]~input_o\ & ( (dpc_control(5) & ((!\Addr[0]~input_o\) # ((!\Wr~input_o\) # (\Addr[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Wr~input_o\,
	datad => ALT_INV_dpc_control(5),
	dataf => \ALT_INV_D_in[5]~input_o\,
	combout => \dpc_control[5]~1_combout\);

-- Location: FF_X53_Y19_N56
\dpc_control[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \dpc_control[5]~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dpc_control(5));

-- Location: LABCELL_X53_Y19_N6
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( \state.S_DONE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_DONE~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X53_Y19_N18
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( dpc_status(5) & ( \Selector9~0_combout\ ) ) # ( !dpc_status(5) & ( \Selector9~0_combout\ ) ) # ( dpc_status(5) & ( !\Selector9~0_combout\ & ( (!\Selector61~0_combout\ & (((!\Rd~input_o\) # (\Addr[0]~input_o\)) # 
-- (\Addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector61~0_combout\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Addr[0]~input_o\,
	datad => \ALT_INV_Rd~input_o\,
	datae => ALT_INV_dpc_status(5),
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: FF_X53_Y19_N20
\dpc_status[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector9~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dpc_status(5));

-- Location: LABCELL_X53_Y19_N15
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( dpc_status(5) & ( (!\Addr[0]~input_o\ & ((!\Addr[1]~input_o\) # ((\u_fifo_out|Fifo[0][5]~q\)))) # (\Addr[0]~input_o\ & (!\Addr[1]~input_o\ & ((dpc_control(5))))) ) ) # ( !dpc_status(5) & ( (!\Addr[0]~input_o\ & (\Addr[1]~input_o\ & 
-- (\u_fifo_out|Fifo[0][5]~q\))) # (\Addr[0]~input_o\ & (!\Addr[1]~input_o\ & ((dpc_control(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \u_fifo_out|ALT_INV_Fifo[0][5]~q\,
	datad => ALT_INV_dpc_control(5),
	dataf => ALT_INV_dpc_status(5),
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X49_Y17_N51
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( \state.S_CORR~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.S_CORR~DUPLICATE_q\,
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X53_Y19_N30
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( dpc_status(6) & ( \Selector61~0_combout\ & ( \Selector8~0_combout\ ) ) ) # ( !dpc_status(6) & ( \Selector61~0_combout\ & ( \Selector8~0_combout\ ) ) ) # ( dpc_status(6) & ( !\Selector61~0_combout\ & ( (((!\Rd~input_o\) # 
-- (\Selector8~0_combout\)) # (\Addr[1]~input_o\)) # (\Addr[0]~input_o\) ) ) ) # ( !dpc_status(6) & ( !\Selector61~0_combout\ & ( \Selector8~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111110111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Selector8~0_combout\,
	datad => \ALT_INV_Rd~input_o\,
	datae => ALT_INV_dpc_status(6),
	dataf => \ALT_INV_Selector61~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X53_Y19_N31
\dpc_status[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector8~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dpc_status(6));

-- Location: LABCELL_X50_Y15_N24
\out_fifo_din[6]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[6]~20_combout\ = ( \buffer_8x8[7][6]~q\ & ( write_cnt(1) & ( (write_cnt(0)) # (\buffer_8x8[6][6]~DUPLICATE_q\) ) ) ) # ( !\buffer_8x8[7][6]~q\ & ( write_cnt(1) & ( (\buffer_8x8[6][6]~DUPLICATE_q\ & !write_cnt(0)) ) ) ) # ( 
-- \buffer_8x8[7][6]~q\ & ( !write_cnt(1) & ( (!write_cnt(0) & ((\buffer_8x8[4][6]~q\))) # (write_cnt(0) & (\buffer_8x8[5][6]~q\)) ) ) ) # ( !\buffer_8x8[7][6]~q\ & ( !write_cnt(1) & ( (!write_cnt(0) & ((\buffer_8x8[4][6]~q\))) # (write_cnt(0) & 
-- (\buffer_8x8[5][6]~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[6][6]~DUPLICATE_q\,
	datab => ALT_INV_write_cnt(0),
	datac => \ALT_INV_buffer_8x8[5][6]~q\,
	datad => \ALT_INV_buffer_8x8[4][6]~q\,
	datae => \ALT_INV_buffer_8x8[7][6]~q\,
	dataf => ALT_INV_write_cnt(1),
	combout => \out_fifo_din[6]~20_combout\);

-- Location: FF_X47_Y16_N23
\buffer_8x8[0][6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \buffer_8x8[0][6]~55_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buffer_8x8[0][6]~DUPLICATE_q\);

-- Location: MLABCELL_X49_Y16_N0
\out_fifo_din[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[6]~21_combout\ = ( write_cnt(0) & ( write_cnt(1) & ( \buffer_8x8[3][6]~DUPLICATE_q\ ) ) ) # ( !write_cnt(0) & ( write_cnt(1) & ( \buffer_8x8[3][6]~DUPLICATE_q\ ) ) ) # ( write_cnt(0) & ( !write_cnt(1) & ( \buffer_8x8[1][6]~DUPLICATE_q\ ) ) ) 
-- # ( !write_cnt(0) & ( !write_cnt(1) & ( \buffer_8x8[0][6]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[3][6]~DUPLICATE_q\,
	datab => \ALT_INV_buffer_8x8[0][6]~DUPLICATE_q\,
	datac => \ALT_INV_buffer_8x8[1][6]~DUPLICATE_q\,
	datae => ALT_INV_write_cnt(0),
	dataf => ALT_INV_write_cnt(1),
	combout => \out_fifo_din[6]~21_combout\);

-- Location: LABCELL_X50_Y17_N3
\out_fifo_din[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[6]~22_combout\ = ( \out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & (\buffer_8x8[2][6]~DUPLICATE_q\)) # (\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[6]~20_combout\))) ) ) ) # ( 
-- !\out_fifo_din[1]~1_combout\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & ((\out_fifo_din[6]~21_combout\))) # (\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[6]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011110011110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[2][6]~DUPLICATE_q\,
	datab => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datac => \ALT_INV_out_fifo_din[6]~20_combout\,
	datad => \ALT_INV_out_fifo_din[6]~21_combout\,
	datae => \ALT_INV_out_fifo_din[1]~1_combout\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[6]~22_combout\);

-- Location: FF_X50_Y17_N47
\u_fifo_out|Fifo[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][6]~q\);

-- Location: LABCELL_X50_Y17_N30
\u_fifo_out|Fifo[6][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][6]~feeder_combout\ = \u_fifo_out|Fifo[7][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[7][6]~q\,
	combout => \u_fifo_out|Fifo[6][6]~feeder_combout\);

-- Location: FF_X50_Y17_N31
\u_fifo_out|Fifo[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][6]~q\);

-- Location: LABCELL_X50_Y15_N57
\u_fifo_out|Fifo[5][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][6]~feeder_combout\ = ( \u_fifo_out|Fifo[6][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[6][6]~q\,
	combout => \u_fifo_out|Fifo[5][6]~feeder_combout\);

-- Location: FF_X50_Y15_N58
\u_fifo_out|Fifo[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][6]~q\);

-- Location: LABCELL_X50_Y19_N45
\u_fifo_out|Fifo[4][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][6]~feeder_combout\ = \u_fifo_out|Fifo[5][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[5][6]~q\,
	combout => \u_fifo_out|Fifo[4][6]~feeder_combout\);

-- Location: FF_X50_Y19_N47
\u_fifo_out|Fifo[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][6]~q\);

-- Location: MLABCELL_X49_Y19_N15
\u_fifo_out|Fifo[3][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][6]~feeder_combout\ = ( \u_fifo_out|Fifo[4][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][6]~q\,
	combout => \u_fifo_out|Fifo[3][6]~feeder_combout\);

-- Location: FF_X49_Y19_N16
\u_fifo_out|Fifo[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][6]~q\);

-- Location: MLABCELL_X49_Y18_N15
\u_fifo_out|Fifo[2][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][6]~feeder_combout\ = ( \u_fifo_out|Fifo[3][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][6]~q\,
	combout => \u_fifo_out|Fifo[2][6]~feeder_combout\);

-- Location: FF_X49_Y18_N16
\u_fifo_out|Fifo[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][6]~q\);

-- Location: LABCELL_X50_Y18_N39
\u_fifo_out|Fifo[1][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][6]~feeder_combout\ = ( \u_fifo_out|Fifo[2][6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][6]~q\,
	combout => \u_fifo_out|Fifo[1][6]~feeder_combout\);

-- Location: FF_X50_Y18_N40
\u_fifo_out|Fifo[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][6]~q\);

-- Location: LABCELL_X52_Y19_N3
\u_fifo_out|Fifo[0][6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][6]~feeder_combout\ = \u_fifo_out|Fifo[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo_out|ALT_INV_Fifo[1][6]~q\,
	combout => \u_fifo_out|Fifo[0][6]~feeder_combout\);

-- Location: FF_X52_Y19_N4
\u_fifo_out|Fifo[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][6]~feeder_combout\,
	asdata => \out_fifo_din[6]~22_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][6]~q\);

-- Location: LABCELL_X53_Y19_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \u_fifo_out|Fifo[0][6]~q\ & ( (!\Addr[0]~input_o\ & ((dpc_status(6)) # (\Addr[1]~input_o\))) ) ) # ( !\u_fifo_out|Fifo[0][6]~q\ & ( (!\Addr[0]~input_o\ & (!\Addr[1]~input_o\ & dpc_status(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => ALT_INV_dpc_status(6),
	dataf => \u_fifo_out|ALT_INV_Fifo[0][6]~q\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X49_Y17_N6
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.S_IDLE~DUPLICATE_q\ & ( \state.S_ERROR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.S_ERROR~q\,
	dataf => \ALT_INV_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X53_Y19_N21
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( dpc_status(7) & ( \Selector7~0_combout\ ) ) # ( !dpc_status(7) & ( \Selector7~0_combout\ ) ) # ( dpc_status(7) & ( !\Selector7~0_combout\ & ( (!\Selector61~0_combout\ & (((!\Rd~input_o\) # (\Addr[0]~input_o\)) # 
-- (\Addr[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector61~0_combout\,
	datab => \ALT_INV_Addr[1]~input_o\,
	datac => \ALT_INV_Rd~input_o\,
	datad => \ALT_INV_Addr[0]~input_o\,
	datae => ALT_INV_dpc_status(7),
	dataf => \ALT_INV_Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X53_Y19_N23
\dpc_status[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \Selector7~1_combout\,
	clrn => \Reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dpc_status(7));

-- Location: MLABCELL_X49_Y14_N3
\out_fifo_din[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[7]~24_combout\ = ( write_cnt(1) & ( write_cnt(0) & ( \buffer_8x8[3][7]~DUPLICATE_q\ ) ) ) # ( !write_cnt(1) & ( write_cnt(0) & ( \buffer_8x8[1][7]~q\ ) ) ) # ( write_cnt(1) & ( !write_cnt(0) & ( \buffer_8x8[3][7]~DUPLICATE_q\ ) ) ) # ( 
-- !write_cnt(1) & ( !write_cnt(0) & ( \buffer_8x8[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_buffer_8x8[1][7]~q\,
	datac => \ALT_INV_buffer_8x8[3][7]~DUPLICATE_q\,
	datad => \ALT_INV_buffer_8x8[0][7]~q\,
	datae => ALT_INV_write_cnt(1),
	dataf => ALT_INV_write_cnt(0),
	combout => \out_fifo_din[7]~24_combout\);

-- Location: LABCELL_X48_Y13_N48
\out_fifo_din[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[7]~23_combout\ = ( \buffer_8x8[5][7]~q\ & ( write_cnt(1) & ( (!write_cnt(0) & ((\buffer_8x8[6][7]~q\))) # (write_cnt(0) & (\buffer_8x8[7][7]~q\)) ) ) ) # ( !\buffer_8x8[5][7]~q\ & ( write_cnt(1) & ( (!write_cnt(0) & ((\buffer_8x8[6][7]~q\))) 
-- # (write_cnt(0) & (\buffer_8x8[7][7]~q\)) ) ) ) # ( \buffer_8x8[5][7]~q\ & ( !write_cnt(1) & ( (write_cnt(0)) # (\buffer_8x8[4][7]~DUPLICATE_q\) ) ) ) # ( !\buffer_8x8[5][7]~q\ & ( !write_cnt(1) & ( (\buffer_8x8[4][7]~DUPLICATE_q\ & !write_cnt(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buffer_8x8[7][7]~q\,
	datab => \ALT_INV_buffer_8x8[6][7]~q\,
	datac => \ALT_INV_buffer_8x8[4][7]~DUPLICATE_q\,
	datad => ALT_INV_write_cnt(0),
	datae => \ALT_INV_buffer_8x8[5][7]~q\,
	dataf => ALT_INV_write_cnt(1),
	combout => \out_fifo_din[7]~23_combout\);

-- Location: LABCELL_X50_Y17_N21
\out_fifo_din[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_fifo_din[7]~25_combout\ = ( \buffer_8x8[2][7]~DUPLICATE_q\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & (((\out_fifo_din[1]~1_combout\)) # (\out_fifo_din[7]~24_combout\))) # (\write_cnt[2]~DUPLICATE_q\ & 
-- (((\out_fifo_din[7]~23_combout\)))) ) ) ) # ( !\buffer_8x8[2][7]~DUPLICATE_q\ & ( \out_fifo_din[1]~0_combout\ & ( (!\write_cnt[2]~DUPLICATE_q\ & (\out_fifo_din[7]~24_combout\ & ((!\out_fifo_din[1]~1_combout\)))) # (\write_cnt[2]~DUPLICATE_q\ & 
-- (((\out_fifo_din[7]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011000000110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_out_fifo_din[7]~24_combout\,
	datab => \ALT_INV_out_fifo_din[7]~23_combout\,
	datac => \ALT_INV_write_cnt[2]~DUPLICATE_q\,
	datad => \ALT_INV_out_fifo_din[1]~1_combout\,
	datae => \ALT_INV_buffer_8x8[2][7]~DUPLICATE_q\,
	dataf => \ALT_INV_out_fifo_din[1]~0_combout\,
	combout => \out_fifo_din[7]~25_combout\);

-- Location: FF_X50_Y17_N20
\u_fifo_out|Fifo[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => VCC,
	ena => \u_fifo_out|Fifo[7][6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[7][7]~q\);

-- Location: LABCELL_X50_Y17_N48
\u_fifo_out|Fifo[6][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[6][7]~feeder_combout\ = \u_fifo_out|Fifo[7][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[7][7]~q\,
	combout => \u_fifo_out|Fifo[6][7]~feeder_combout\);

-- Location: FF_X50_Y17_N49
\u_fifo_out|Fifo[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[6][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[6][4]~17_combout\,
	ena => \u_fifo_out|Fifo[6][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[6][7]~q\);

-- Location: LABCELL_X48_Y19_N36
\u_fifo_out|Fifo[5][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[5][7]~feeder_combout\ = \u_fifo_out|Fifo[6][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[6][7]~q\,
	combout => \u_fifo_out|Fifo[5][7]~feeder_combout\);

-- Location: FF_X48_Y19_N37
\u_fifo_out|Fifo[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[5][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[5][3]~14_combout\,
	ena => \u_fifo_out|Fifo[5][0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[5][7]~q\);

-- Location: LABCELL_X50_Y19_N24
\u_fifo_out|Fifo[4][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[4][7]~feeder_combout\ = \u_fifo_out|Fifo[5][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo_out|ALT_INV_Fifo[5][7]~q\,
	combout => \u_fifo_out|Fifo[4][7]~feeder_combout\);

-- Location: FF_X50_Y19_N26
\u_fifo_out|Fifo[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[4][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[4][2]~11_combout\,
	ena => \u_fifo_out|Fifo[4][0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[4][7]~q\);

-- Location: MLABCELL_X49_Y19_N54
\u_fifo_out|Fifo[3][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[3][7]~feeder_combout\ = ( \u_fifo_out|Fifo[4][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[4][7]~q\,
	combout => \u_fifo_out|Fifo[3][7]~feeder_combout\);

-- Location: FF_X49_Y19_N55
\u_fifo_out|Fifo[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[3][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[3][1]~8_combout\,
	ena => \u_fifo_out|Fifo[3][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[3][7]~q\);

-- Location: MLABCELL_X49_Y18_N18
\u_fifo_out|Fifo[2][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[2][7]~feeder_combout\ = ( \u_fifo_out|Fifo[3][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[3][7]~q\,
	combout => \u_fifo_out|Fifo[2][7]~feeder_combout\);

-- Location: FF_X49_Y18_N19
\u_fifo_out|Fifo[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[2][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[2][7]~5_combout\,
	ena => \u_fifo_out|Fifo[2][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[2][7]~q\);

-- Location: LABCELL_X50_Y18_N18
\u_fifo_out|Fifo[1][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[1][7]~feeder_combout\ = ( \u_fifo_out|Fifo[2][7]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_fifo_out|ALT_INV_Fifo[2][7]~q\,
	combout => \u_fifo_out|Fifo[1][7]~feeder_combout\);

-- Location: FF_X50_Y18_N19
\u_fifo_out|Fifo[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[1][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[1][1]~2_combout\,
	ena => \u_fifo_out|Fifo[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[1][7]~q\);

-- Location: LABCELL_X52_Y19_N36
\u_fifo_out|Fifo[0][7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_fifo_out|Fifo[0][7]~feeder_combout\ = \u_fifo_out|Fifo[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_fifo_out|ALT_INV_Fifo[1][7]~q\,
	combout => \u_fifo_out|Fifo[0][7]~feeder_combout\);

-- Location: FF_X52_Y19_N37
\u_fifo_out|Fifo[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \u_fifo_out|Fifo[0][7]~feeder_combout\,
	asdata => \out_fifo_din[7]~25_combout\,
	sload => \u_fifo_out|Fifo[0][5]~0_combout\,
	ena => \u_fifo_out|Fifo[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo_out|Fifo[0][7]~q\);

-- Location: LABCELL_X53_Y19_N9
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \u_fifo_out|Fifo[0][7]~q\ & ( (!\Addr[0]~input_o\ & ((dpc_status(7)) # (\Addr[1]~input_o\))) ) ) # ( !\u_fifo_out|Fifo[0][7]~q\ & ( (!\Addr[0]~input_o\ & (!\Addr[1]~input_o\ & dpc_status(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Addr[0]~input_o\,
	datac => \ALT_INV_Addr[1]~input_o\,
	datad => ALT_INV_dpc_status(7),
	dataf => \u_fifo_out|ALT_INV_Fifo[0][7]~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X53_Y19_N0
\Irq_DPC_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Irq_DPC_n~0_combout\ = ( dpc_control(5) & ( dpc_status(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_dpc_status(5),
	datae => ALT_INV_dpc_control(5),
	combout => \Irq_DPC_n~0_combout\);

-- Location: LABCELL_X25_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


