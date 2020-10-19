-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/19/2020 17:44:39"

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

ENTITY 	TopLevel IS
    PORT (
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LED : OUT std_logic_vector(9 DOWNTO 0);
	entrada_A : OUT std_logic_vector(9 DOWNTO 0);
	entrada_B : OUT std_logic_vector(9 DOWNTO 0);
	saida_ULA : OUT std_logic_vector(9 DOWNTO 0);
	dataout : OUT std_logic_vector(9 DOWNTO 0);
	pc : OUT std_logic_vector(9 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[7]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[9]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[1]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[5]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[6]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[8]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[9]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[9]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_entrada_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_entrada_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida_ULA : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dataout : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(9 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~34\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~37_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~5_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~11_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~6_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~10_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~7_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~4_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~12_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~8_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~3_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~8_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[2]~0_combout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[4]~1_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[3]~2_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~14_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~13_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[5]~13_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~197_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~89_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~196_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~29DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~179_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[4]~7_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~88_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~195_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~18_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~178_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[3]~5_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~87_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~17_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~177_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[2]~3_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~198_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~166_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~16_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~186_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[1]~1_combout\ : std_logic;
SIGNAL \Processador|UC|Equal9~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~62\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~34\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~38\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~46\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~50\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~2\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~74\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~10\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~58\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~98\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~94\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~90\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~86\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~54\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~82\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~78\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~42\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~70\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~66\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~6\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~30\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~14\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~26\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~22\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~5_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|tick~q\ : std_logic;
SIGNAL \TICTAC|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \DECODER|Equal6~0_combout\ : std_logic;
SIGNAL \TICTAC|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~15_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~85_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~25_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~175_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~2\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~26_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~86_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~176_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~6\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~27_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~167_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~187_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~10\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~28_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~168_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~188_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~14\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~19_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~29_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~169_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~189_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~90_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~30_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~180_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[5]~9_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~18\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~20_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~170_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~190_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~7_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~33_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~23_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~93_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~183_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[8]~15_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~172_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~22feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~22_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~192_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[7]~13_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~21DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~171_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~191_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[6]~11_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~22\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~31feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~31_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~91_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~21_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~181_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~26\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~32_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~92_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~182_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~30\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~173_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~23DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~193_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~24_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~174_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~194_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[9]~17_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~34\ : std_logic;
SIGNAL \Processador|FD|ULA|Add0~37_sumout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~34feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~34_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~24DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~94_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~184_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~0_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~6_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~5_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~2_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~1_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~3_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~4_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~6_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~5_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~4_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|LessThan0~7_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~9_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~10_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~11_combout\ : std_logic;
SIGNAL \Processador|UC|palavraControle[8]~12_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~38\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~9_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~2\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~6\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~10\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~14\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~22\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~26\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~30\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~15_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~3_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~165_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~185_combout\ : std_logic;
SIGNAL \SEGU|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \DECODER|Equal5~0_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \showHEX0|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER|habilitaHex[1]~0_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[0]~0_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[1]~1_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[2]~2_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[3]~3_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[4]~4_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[5]~5_combout\ : std_logic;
SIGNAL \showHEX1|saida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[2]~4_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[3]~6_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[4]~8_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[5]~10_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[6]~12_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[7]~14_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[8]~16_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|saida[9]~18_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \TICTAC|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \SEGU|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEGD|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~175_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~85_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \SEGD|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEGU|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TICTAC|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[9]~10_combout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[5]~13_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \TICTAC|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~11_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~10_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~9_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~8_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~7_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~6_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~5_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~4_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[8]~3_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[9]~17_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[8]~15_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[7]~13_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[6]~11_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[5]~9_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[4]~7_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[3]~5_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[2]~3_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \Processador|FD|ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[3]~2_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[4]~1_combout\ : std_logic;
SIGNAL \Processador|UC|ALT_INV_palavraControle[2]~0_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~194_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~174_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~193_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~173_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~192_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~172_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~191_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~171_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~190_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~170_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~189_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~169_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~188_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~168_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~187_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~167_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~186_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~166_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~165_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~184_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~94_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~183_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~93_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~182_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~92_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~181_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~91_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~180_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~90_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~179_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~89_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~178_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~88_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~177_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~87_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~176_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~86_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~24DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~23DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~21DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~29DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DECODER|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LED <= ww_LED;
entrada_A <= ww_entrada_A;
entrada_B <= ww_entrada_B;
saida_ULA <= ww_saida_ULA;
dataout <= ww_dataout;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|FD|ULA|ALT_INV_Add0~37_sumout\ <= NOT \Processador|FD|ULA|Add0~37_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~33_sumout\ <= NOT \Processador|FD|ULA|Add0~33_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~29_sumout\ <= NOT \Processador|FD|ULA|Add0~29_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~25_sumout\ <= NOT \Processador|FD|ULA|Add0~25_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~21_sumout\ <= NOT \Processador|FD|ULA|Add0~21_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~17_sumout\ <= NOT \Processador|FD|ULA|Add0~17_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~13_sumout\ <= NOT \Processador|FD|ULA|Add0~13_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~9_sumout\ <= NOT \Processador|FD|ULA|Add0~9_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~5_sumout\ <= NOT \Processador|FD|ULA|Add0~5_sumout\;
\Processador|FD|ULA|ALT_INV_Add0~1_sumout\ <= NOT \Processador|FD|ULA|Add0~1_sumout\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(8) <= NOT \Processador|FD|FETCH|PC|DOUT\(8);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(7) <= NOT \Processador|FD|FETCH|PC|DOUT\(7);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(6) <= NOT \Processador|FD|FETCH|PC|DOUT\(6);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(5) <= NOT \Processador|FD|FETCH|PC|DOUT\(5);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(4) <= NOT \Processador|FD|FETCH|PC|DOUT\(4);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(9) <= NOT \Processador|FD|FETCH|PC|DOUT\(9);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(3) <= NOT \Processador|FD|FETCH|PC|DOUT\(3);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(2) <= NOT \Processador|FD|FETCH|PC|DOUT\(2);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(1) <= NOT \Processador|FD|FETCH|PC|DOUT\(1);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(0) <= NOT \Processador|FD|FETCH|PC|DOUT\(0);
\Processador|FD|BancoReg|ALT_INV_registrador~26_q\ <= NOT \Processador|FD|BancoReg|registrador~26_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~16_q\ <= NOT \Processador|FD|BancoReg|registrador~16_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~175_combout\ <= NOT \Processador|FD|BancoReg|registrador~175_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~85_q\ <= NOT \Processador|FD|BancoReg|registrador~85_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~25_q\ <= NOT \Processador|FD|BancoReg|registrador~25_q\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~2_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~15_q\ <= NOT \Processador|FD|BancoReg|registrador~15_q\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~1_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~0_combout\;
\SEGD|ALT_INV_DOUT\(0) <= NOT \SEGD|DOUT\(0);
\SEGD|ALT_INV_DOUT\(1) <= NOT \SEGD|DOUT\(1);
\SEGD|ALT_INV_DOUT\(2) <= NOT \SEGD|DOUT\(2);
\SEGD|ALT_INV_DOUT\(3) <= NOT \SEGD|DOUT\(3);
\SEGU|ALT_INV_DOUT\(0) <= NOT \SEGU|DOUT\(0);
\SEGU|ALT_INV_DOUT\(1) <= NOT \SEGU|DOUT\(1);
\SEGU|ALT_INV_DOUT\(2) <= NOT \SEGU|DOUT\(2);
\SEGU|ALT_INV_DOUT\(3) <= NOT \SEGU|DOUT\(3);
\TICTAC|baseTempo|ALT_INV_contador\(9) <= NOT \TICTAC|baseTempo|contador\(9);
\TICTAC|baseTempo|ALT_INV_contador\(10) <= NOT \TICTAC|baseTempo|contador\(10);
\TICTAC|baseTempo|ALT_INV_contador\(11) <= NOT \TICTAC|baseTempo|contador\(11);
\TICTAC|baseTempo|ALT_INV_contador\(12) <= NOT \TICTAC|baseTempo|contador\(12);
\TICTAC|baseTempo|ALT_INV_contador\(14) <= NOT \TICTAC|baseTempo|contador\(14);
\TICTAC|baseTempo|ALT_INV_contador\(15) <= NOT \TICTAC|baseTempo|contador\(15);
\TICTAC|baseTempo|ALT_INV_contador\(6) <= NOT \TICTAC|baseTempo|contador\(6);
\TICTAC|baseTempo|ALT_INV_contador\(17) <= NOT \TICTAC|baseTempo|contador\(17);
\TICTAC|baseTempo|ALT_INV_contador\(18) <= NOT \TICTAC|baseTempo|contador\(18);
\TICTAC|baseTempo|ALT_INV_contador\(0) <= NOT \TICTAC|baseTempo|contador\(0);
\TICTAC|baseTempo|ALT_INV_contador\(8) <= NOT \TICTAC|baseTempo|contador\(8);
\TICTAC|baseTempo|ALT_INV_contador\(13) <= NOT \TICTAC|baseTempo|contador\(13);
\TICTAC|baseTempo|ALT_INV_contador\(4) <= NOT \TICTAC|baseTempo|contador\(4);
\TICTAC|baseTempo|ALT_INV_contador\(3) <= NOT \TICTAC|baseTempo|contador\(3);
\TICTAC|baseTempo|ALT_INV_contador\(16) <= NOT \TICTAC|baseTempo|contador\(16);
\TICTAC|baseTempo|ALT_INV_contador\(2) <= NOT \TICTAC|baseTempo|contador\(2);
\TICTAC|baseTempo|ALT_INV_contador\(1) <= NOT \TICTAC|baseTempo|contador\(1);
\TICTAC|baseTempo|ALT_INV_contador\(20) <= NOT \TICTAC|baseTempo|contador\(20);
\TICTAC|baseTempo|ALT_INV_contador\(22) <= NOT \TICTAC|baseTempo|contador\(22);
\TICTAC|baseTempo|ALT_INV_contador\(23) <= NOT \TICTAC|baseTempo|contador\(23);
\TICTAC|baseTempo|ALT_INV_contador\(24) <= NOT \TICTAC|baseTempo|contador\(24);
\TICTAC|baseTempo|ALT_INV_contador\(21) <= NOT \TICTAC|baseTempo|contador\(21);
\TICTAC|baseTempo|ALT_INV_contador\(7) <= NOT \TICTAC|baseTempo|contador\(7);
\TICTAC|baseTempo|ALT_INV_contador\(19) <= NOT \TICTAC|baseTempo|contador\(19);
\TICTAC|baseTempo|ALT_INV_contador\(5) <= NOT \TICTAC|baseTempo|contador\(5);
\TICTAC|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \TICTAC|baseTempo|Equal0~1_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \TICTAC|baseTempo|Equal0~0_combout\;
\TICTAC|baseTempo|ALT_INV_tick~q\ <= NOT \TICTAC|baseTempo|tick~q\;
\Processador|FD|MUX_ULA|ALT_INV_saida_MUX[9]~10_combout\ <= NOT \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\;
\Processador|FD|MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\;
\Processador|FD|MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\;
\Processador|UC|ALT_INV_palavraControle[5]~13_combout\ <= NOT \Processador|UC|palavraControle[5]~13_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~14_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~13_combout\;
\TICTAC|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \TICTAC|registraUmSegundo|DOUT~q\;
\Processador|UC|ALT_INV_Equal9~0_combout\ <= NOT \Processador|UC|Equal9~0_combout\;
\Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~11_combout\ <= NOT \Processador|UC|palavraControle[8]~11_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~10_combout\ <= NOT \Processador|UC|palavraControle[8]~10_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~9_combout\ <= NOT \Processador|UC|palavraControle[8]~9_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~8_combout\ <= NOT \Processador|UC|palavraControle[8]~8_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~7_combout\ <= NOT \Processador|FD|ULA|LessThan0~7_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~6_combout\ <= NOT \Processador|FD|ULA|LessThan0~6_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~5_combout\ <= NOT \Processador|FD|ULA|LessThan0~5_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~4_combout\ <= NOT \Processador|FD|ULA|LessThan0~4_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~3_combout\ <= NOT \Processador|FD|ULA|LessThan0~3_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~7_combout\ <= NOT \Processador|UC|palavraControle[8]~7_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~2_combout\ <= NOT \Processador|FD|ULA|LessThan0~2_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~6_combout\ <= NOT \Processador|UC|palavraControle[8]~6_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~1_combout\ <= NOT \Processador|FD|ULA|LessThan0~1_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~5_combout\ <= NOT \Processador|UC|palavraControle[8]~5_combout\;
\Processador|FD|ULA|ALT_INV_LessThan0~0_combout\ <= NOT \Processador|FD|ULA|LessThan0~0_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~4_combout\ <= NOT \Processador|UC|palavraControle[8]~4_combout\;
\Processador|UC|ALT_INV_palavraControle[8]~3_combout\ <= NOT \Processador|UC|palavraControle[8]~3_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~12_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~12_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~11_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~11_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~10_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~10_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~9_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~9_combout\;
\Processador|FD|ULA|ALT_INV_saida[9]~17_combout\ <= NOT \Processador|FD|ULA|saida[9]~17_combout\;
\Processador|FD|ULA|ALT_INV_saida[8]~15_combout\ <= NOT \Processador|FD|ULA|saida[8]~15_combout\;
\Processador|FD|ULA|ALT_INV_saida[7]~13_combout\ <= NOT \Processador|FD|ULA|saida[7]~13_combout\;
\Processador|FD|ULA|ALT_INV_saida[6]~11_combout\ <= NOT \Processador|FD|ULA|saida[6]~11_combout\;
\Processador|FD|ULA|ALT_INV_saida[5]~9_combout\ <= NOT \Processador|FD|ULA|saida[5]~9_combout\;
\Processador|FD|ULA|ALT_INV_saida[4]~7_combout\ <= NOT \Processador|FD|ULA|saida[4]~7_combout\;
\Processador|FD|ULA|ALT_INV_saida[3]~5_combout\ <= NOT \Processador|FD|ULA|saida[3]~5_combout\;
\Processador|FD|ULA|ALT_INV_saida[2]~3_combout\ <= NOT \Processador|FD|ULA|saida[2]~3_combout\;
\Processador|FD|ULA|ALT_INV_saida[1]~1_combout\ <= NOT \Processador|FD|ULA|saida[1]~1_combout\;
\Processador|FD|ULA|ALT_INV_saida[0]~0_combout\ <= NOT \Processador|FD|ULA|saida[0]~0_combout\;
\Processador|UC|ALT_INV_palavraControle[3]~2_combout\ <= NOT \Processador|UC|palavraControle[3]~2_combout\;
\Processador|UC|ALT_INV_palavraControle[4]~1_combout\ <= NOT \Processador|UC|palavraControle[4]~1_combout\;
\Processador|UC|ALT_INV_palavraControle[2]~0_combout\ <= NOT \Processador|UC|palavraControle[2]~0_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~8_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~7_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~6_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~5_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~4_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~194_combout\ <= NOT \Processador|FD|BancoReg|registrador~194_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~174_q\ <= NOT \Processador|FD|BancoReg|registrador~174_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~193_combout\ <= NOT \Processador|FD|BancoReg|registrador~193_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~173_q\ <= NOT \Processador|FD|BancoReg|registrador~173_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~192_combout\ <= NOT \Processador|FD|BancoReg|registrador~192_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~172_q\ <= NOT \Processador|FD|BancoReg|registrador~172_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~191_combout\ <= NOT \Processador|FD|BancoReg|registrador~191_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~171_q\ <= NOT \Processador|FD|BancoReg|registrador~171_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~190_combout\ <= NOT \Processador|FD|BancoReg|registrador~190_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~170_q\ <= NOT \Processador|FD|BancoReg|registrador~170_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~189_combout\ <= NOT \Processador|FD|BancoReg|registrador~189_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~169_q\ <= NOT \Processador|FD|BancoReg|registrador~169_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~188_combout\ <= NOT \Processador|FD|BancoReg|registrador~188_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~168_q\ <= NOT \Processador|FD|BancoReg|registrador~168_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~187_combout\ <= NOT \Processador|FD|BancoReg|registrador~187_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~167_q\ <= NOT \Processador|FD|BancoReg|registrador~167_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~186_combout\ <= NOT \Processador|FD|BancoReg|registrador~186_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~166_q\ <= NOT \Processador|FD|BancoReg|registrador~166_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~185_combout\ <= NOT \Processador|FD|BancoReg|registrador~185_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~165_q\ <= NOT \Processador|FD|BancoReg|registrador~165_q\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~3_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~184_combout\ <= NOT \Processador|FD|BancoReg|registrador~184_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~94_q\ <= NOT \Processador|FD|BancoReg|registrador~94_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~34_q\ <= NOT \Processador|FD|BancoReg|registrador~34_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~24_q\ <= NOT \Processador|FD|BancoReg|registrador~24_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~183_combout\ <= NOT \Processador|FD|BancoReg|registrador~183_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~93_q\ <= NOT \Processador|FD|BancoReg|registrador~93_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~33_q\ <= NOT \Processador|FD|BancoReg|registrador~33_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~23_q\ <= NOT \Processador|FD|BancoReg|registrador~23_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~182_combout\ <= NOT \Processador|FD|BancoReg|registrador~182_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~92_q\ <= NOT \Processador|FD|BancoReg|registrador~92_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~32_q\ <= NOT \Processador|FD|BancoReg|registrador~32_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~22_q\ <= NOT \Processador|FD|BancoReg|registrador~22_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~181_combout\ <= NOT \Processador|FD|BancoReg|registrador~181_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~91_q\ <= NOT \Processador|FD|BancoReg|registrador~91_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~31_q\ <= NOT \Processador|FD|BancoReg|registrador~31_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~21_q\ <= NOT \Processador|FD|BancoReg|registrador~21_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~180_combout\ <= NOT \Processador|FD|BancoReg|registrador~180_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~90_q\ <= NOT \Processador|FD|BancoReg|registrador~90_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~30_q\ <= NOT \Processador|FD|BancoReg|registrador~30_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~20_q\ <= NOT \Processador|FD|BancoReg|registrador~20_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~179_combout\ <= NOT \Processador|FD|BancoReg|registrador~179_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~89_q\ <= NOT \Processador|FD|BancoReg|registrador~89_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~29_q\ <= NOT \Processador|FD|BancoReg|registrador~29_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~19_q\ <= NOT \Processador|FD|BancoReg|registrador~19_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~178_combout\ <= NOT \Processador|FD|BancoReg|registrador~178_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~88_q\ <= NOT \Processador|FD|BancoReg|registrador~88_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~28_q\ <= NOT \Processador|FD|BancoReg|registrador~28_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~18_q\ <= NOT \Processador|FD|BancoReg|registrador~18_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~177_combout\ <= NOT \Processador|FD|BancoReg|registrador~177_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~87_q\ <= NOT \Processador|FD|BancoReg|registrador~87_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~27_q\ <= NOT \Processador|FD|BancoReg|registrador~27_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~17_q\ <= NOT \Processador|FD|BancoReg|registrador~17_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~176_combout\ <= NOT \Processador|FD|BancoReg|registrador~176_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~86_q\ <= NOT \Processador|FD|BancoReg|registrador~86_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~24DUPLICATE_q\ <= NOT \Processador|FD|BancoReg|registrador~24DUPLICATE_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~23DUPLICATE_q\ <= NOT \Processador|FD|BancoReg|registrador~23DUPLICATE_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~21DUPLICATE_q\ <= NOT \Processador|FD|BancoReg|registrador~21DUPLICATE_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~29DUPLICATE_q\ <= NOT \Processador|FD|BancoReg|registrador~29DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[10]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[11]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[12]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[0]~DUPLICATE_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\;
\DECODER|ALT_INV_Equal6~0_combout\ <= NOT \DECODER|Equal6~0_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~15_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~15_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~5_combout\ <= NOT \TICTAC|baseTempo|Equal0~5_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~4_combout\ <= NOT \TICTAC|baseTempo|Equal0~4_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \TICTAC|baseTempo|Equal0~3_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \TICTAC|baseTempo|Equal0~2_combout\;

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX0|saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \showHEX1|saida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X12_Y45_N2
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X10_Y45_N19
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X46_Y45_N76
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X46_Y45_N93
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X10_Y45_N2
\LED[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X14_Y45_N19
\LED[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X8_Y45_N59
\LED[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X20_Y45_N19
\LED[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X16_Y45_N76
\LED[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(8));

-- Location: IOOBUF_X52_Y45_N36
\LED[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(9));

-- Location: IOOBUF_X54_Y15_N5
\entrada_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(0));

-- Location: IOOBUF_X38_Y0_N2
\entrada_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(1));

-- Location: IOOBUF_X25_Y0_N53
\entrada_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(2));

-- Location: IOOBUF_X29_Y0_N53
\entrada_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~178_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(3));

-- Location: IOOBUF_X25_Y0_N2
\entrada_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~179_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(4));

-- Location: IOOBUF_X29_Y0_N36
\entrada_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(5));

-- Location: IOOBUF_X34_Y0_N36
\entrada_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~181_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(6));

-- Location: IOOBUF_X34_Y0_N53
\entrada_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~182_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(7));

-- Location: IOOBUF_X33_Y0_N93
\entrada_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~183_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(8));

-- Location: IOOBUF_X33_Y0_N76
\entrada_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~184_combout\,
	devoe => ww_devoe,
	o => ww_entrada_A(9));

-- Location: IOOBUF_X54_Y16_N22
\entrada_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~185_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(0));

-- Location: IOOBUF_X23_Y0_N93
\entrada_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~186_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(1));

-- Location: IOOBUF_X42_Y45_N36
\entrada_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~187_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(2));

-- Location: IOOBUF_X23_Y0_N59
\entrada_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~188_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(3));

-- Location: IOOBUF_X24_Y0_N19
\entrada_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~189_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(4));

-- Location: IOOBUF_X54_Y15_N39
\entrada_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~190_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(5));

-- Location: IOOBUF_X54_Y17_N5
\entrada_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~191_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(6));

-- Location: IOOBUF_X18_Y0_N53
\entrada_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~192_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(7));

-- Location: IOOBUF_X38_Y45_N36
\entrada_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~193_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(8));

-- Location: IOOBUF_X54_Y14_N62
\entrada_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~194_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(9));

-- Location: IOOBUF_X54_Y16_N39
\saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(0));

-- Location: IOOBUF_X50_Y0_N2
\saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(1));

-- Location: IOOBUF_X54_Y18_N79
\saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(2));

-- Location: IOOBUF_X24_Y0_N36
\saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[3]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(3));

-- Location: IOOBUF_X24_Y0_N53
\saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(4));

-- Location: IOOBUF_X54_Y17_N39
\saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[5]~10_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(5));

-- Location: IOOBUF_X54_Y14_N79
\saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[6]~12_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(6));

-- Location: IOOBUF_X24_Y0_N2
\saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[7]~14_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(7));

-- Location: IOOBUF_X54_Y15_N22
\saida_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[8]~16_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(8));

-- Location: IOOBUF_X18_Y0_N36
\saida_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|ULA|saida[9]~18_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(9));

-- Location: IOOBUF_X54_Y16_N56
\dataout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~185_combout\,
	devoe => ww_devoe,
	o => ww_dataout(0));

-- Location: IOOBUF_X23_Y0_N76
\dataout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~186_combout\,
	devoe => ww_devoe,
	o => ww_dataout(1));

-- Location: IOOBUF_X42_Y45_N2
\dataout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~187_combout\,
	devoe => ww_devoe,
	o => ww_dataout(2));

-- Location: IOOBUF_X23_Y0_N42
\dataout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~188_combout\,
	devoe => ww_devoe,
	o => ww_dataout(3));

-- Location: IOOBUF_X22_Y0_N36
\dataout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~189_combout\,
	devoe => ww_devoe,
	o => ww_dataout(4));

-- Location: IOOBUF_X54_Y15_N56
\dataout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~190_combout\,
	devoe => ww_devoe,
	o => ww_dataout(5));

-- Location: IOOBUF_X54_Y17_N22
\dataout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~191_combout\,
	devoe => ww_devoe,
	o => ww_dataout(6));

-- Location: IOOBUF_X14_Y0_N36
\dataout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~192_combout\,
	devoe => ww_devoe,
	o => ww_dataout(7));

-- Location: IOOBUF_X38_Y45_N19
\dataout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~193_combout\,
	devoe => ww_devoe,
	o => ww_dataout(8));

-- Location: IOOBUF_X54_Y14_N96
\dataout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~194_combout\,
	devoe => ww_devoe,
	o => ww_dataout(9));

-- Location: IOOBUF_X18_Y0_N19
\pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_pc(0));

-- Location: IOOBUF_X36_Y0_N53
\pc[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_pc(1));

-- Location: IOOBUF_X25_Y0_N19
\pc[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_pc(2));

-- Location: IOOBUF_X42_Y45_N19
\pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_pc(3));

-- Location: IOOBUF_X18_Y0_N2
\pc[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc(4));

-- Location: IOOBUF_X54_Y21_N56
\pc[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_pc(5));

-- Location: IOOBUF_X54_Y17_N56
\pc[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pc(6));

-- Location: IOOBUF_X25_Y0_N36
\pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_pc(7));

-- Location: IOOBUF_X54_Y14_N45
\pc[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_pc(8));

-- Location: IOOBUF_X40_Y45_N76
\pc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc(9));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X41_Y4_N30
\Processador|FD|FETCH|SOMA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~1_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|FD|FETCH|SOMA|Add0~2\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|FD|FETCH|SOMA|Add0~1_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~2\);

-- Location: LABCELL_X41_Y4_N51
\Processador|FD|FETCH|SOMA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~33_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(7) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~30\ ))
-- \Processador|FD|FETCH|SOMA|Add0~34\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(7) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	cin => \Processador|FD|FETCH|SOMA|Add0~30\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~33_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~34\);

-- Location: LABCELL_X41_Y4_N54
\Processador|FD|FETCH|SOMA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~37_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(8) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~34\ ))
-- \Processador|FD|FETCH|SOMA|Add0~38\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(8) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	cin => \Processador|FD|FETCH|SOMA|Add0~34\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~37_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~38\);

-- Location: LABCELL_X43_Y4_N15
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X41_Y4_N41
\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N42
\Processador|FD|FETCH|ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~5_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & ( (!\Processador|FD|FETCH|PC|DOUT\(0) & ((!\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\) # (\Processador|FD|FETCH|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010101010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \Processador|FD|FETCH|ROM|memROM~5_combout\);

-- Location: LABCELL_X40_Y4_N15
\Processador|FD|FETCH|ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~11_combout\ = ( \Processador|FD|FETCH|ROM|memROM~5_combout\ & ( \Processador|FD|FETCH|ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~11_combout\);

-- Location: FF_X41_Y4_N38
\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~9_sumout\,
	asdata => \Processador|FD|FETCH|ROM|memROM~11_combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y4_N15
\Processador|FD|FETCH|ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~6_combout\ = ( \Processador|FD|FETCH|PC|DOUT\(1) & ( (!\Processador|FD|FETCH|PC|DOUT\(0) & (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & \Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( 
-- !\Processador|FD|FETCH|PC|DOUT\(1) & ( (!\Processador|FD|FETCH|PC|DOUT\(0) & (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & !\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	combout => \Processador|FD|FETCH|ROM|memROM~6_combout\);

-- Location: LABCELL_X40_Y4_N45
\Processador|FD|FETCH|ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~10_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( \Processador|FD|FETCH|ROM|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~10_combout\);

-- Location: LABCELL_X40_Y4_N0
\Processador|FD|FETCH|ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~7_combout\ = ( \Processador|FD|FETCH|PC|DOUT\(1) & ( (!\Processador|FD|FETCH|PC|DOUT\(0) & (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & !\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( 
-- !\Processador|FD|FETCH|PC|DOUT\(1) & ( (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & \Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	combout => \Processador|FD|FETCH|ROM|memROM~7_combout\);

-- Location: FF_X41_Y4_N43
\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N12
\Processador|FD|FETCH|ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~4_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & ( (!\Processador|FD|FETCH|PC|DOUT\(7) & (!\Processador|FD|FETCH|PC|DOUT\(6) & (!\Processador|FD|FETCH|PC|DOUT\(5) & !\Processador|FD|FETCH|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \Processador|FD|FETCH|ROM|memROM~4_combout\);

-- Location: FF_X41_Y4_N59
\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y4_N39
\Processador|FD|FETCH|ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~12_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( (\Processador|FD|FETCH|ROM|memROM~7_combout\ & \Processador|FD|FETCH|ROM|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	combout => \Processador|FD|FETCH|ROM|memROM~12_combout\);

-- Location: LABCELL_X40_Y4_N9
\Processador|FD|FETCH|ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~8_combout\ = ( \Processador|FD|FETCH|PC|DOUT\(0) & ( (\Processador|FD|FETCH|PC|DOUT\(1) & !\Processador|FD|FETCH|PC|DOUT\(3)) ) ) # ( !\Processador|FD|FETCH|PC|DOUT\(0) & ( (!\Processador|FD|FETCH|PC|DOUT\(3) & 
-- ((!\Processador|FD|FETCH|PC|DOUT\(1)) # (\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100000000101011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	combout => \Processador|FD|FETCH|ROM|memROM~8_combout\);

-- Location: LABCELL_X40_Y4_N6
\Processador|UC|palavraControle[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~3_combout\ = ( \Processador|FD|FETCH|ROM|memROM~8_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~4_combout\ & !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	combout => \Processador|UC|palavraControle[8]~3_combout\);

-- Location: LABCELL_X40_Y4_N21
\Processador|UC|palavraControle[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~8_combout\ = ( !\Processador|FD|FETCH|ROM|memROM~11_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~12_combout\ & (!\Processador|UC|palavraControle[8]~3_combout\ & \Processador|FD|FETCH|ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~12_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[8]~3_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~10_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~11_combout\,
	combout => \Processador|UC|palavraControle[8]~8_combout\);

-- Location: LABCELL_X40_Y4_N48
\Processador|UC|palavraControle[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[2]~0_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( \Processador|FD|FETCH|ROM|memROM~5_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~6_combout\ & (\Processador|FD|FETCH|ROM|memROM~4_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~7_combout\ & !\Processador|FD|FETCH|ROM|memROM~8_combout\))) ) ) ) # ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( !\Processador|FD|FETCH|ROM|memROM~5_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~4_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~8_combout\ & (!\Processador|FD|FETCH|ROM|memROM~6_combout\ $ (!\Processador|FD|FETCH|ROM|memROM~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	datae => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	combout => \Processador|UC|palavraControle[2]~0_combout\);

-- Location: LABCELL_X40_Y2_N27
\Processador|FD|MUX_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ = ( !\Processador|UC|palavraControle[8]~3_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~0_combout\ & (((\Processador|FD|FETCH|ROM|memROM~7_combout\) # (\Processador|FD|FETCH|ROM|memROM~6_combout\)) # 
-- (\Processador|FD|FETCH|ROM|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[8]~3_combout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\);

-- Location: LABCELL_X40_Y4_N30
\Processador|UC|palavraControle[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[4]~1_combout\ = ( \Processador|FD|FETCH|ROM|memROM~6_combout\ & ( \Processador|FD|FETCH|ROM|memROM~8_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~4_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~7_combout\ & !\Processador|FD|FETCH|ROM|memROM~5_combout\))) ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~6_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~8_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & 
-- (\Processador|FD|FETCH|ROM|memROM~4_combout\ & (\Processador|FD|FETCH|ROM|memROM~7_combout\ & !\Processador|FD|FETCH|ROM|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	combout => \Processador|UC|palavraControle[4]~1_combout\);

-- Location: LABCELL_X40_Y2_N24
\Processador|UC|palavraControle[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[3]~2_combout\ = ( \Processador|FD|FETCH|ROM|memROM~8_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (((!\Processador|FD|FETCH|ROM|memROM~6_combout\) # (\Processador|FD|FETCH|ROM|memROM~7_combout\)) # 
-- (\Processador|FD|FETCH|ROM|memROM~5_combout\)) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~8_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # ((!\Processador|FD|FETCH|ROM|memROM~6_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~7_combout\) # 
-- (\Processador|FD|FETCH|ROM|memROM~5_combout\))) # (\Processador|FD|FETCH|ROM|memROM~6_combout\ & ((\Processador|FD|FETCH|ROM|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010111111111110101011111111111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	combout => \Processador|UC|palavraControle[3]~2_combout\);

-- Location: LABCELL_X41_Y4_N21
\Processador|FD|FETCH|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~2_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( (\Processador|FD|FETCH|PC|DOUT\(1) & (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|FD|FETCH|PC|DOUT\(0) & 
-- !\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~2_combout\);

-- Location: LABCELL_X41_Y4_N6
\Processador|FD|FETCH|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~1_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT\(3) & ((!\Processador|FD|FETCH|PC|DOUT\(1) & (\Processador|FD|FETCH|PC|DOUT\(2) & \Processador|FD|FETCH|PC|DOUT\(0))) # 
-- (\Processador|FD|FETCH|PC|DOUT\(1) & (!\Processador|FD|FETCH|PC|DOUT\(2) & !\Processador|FD|FETCH|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000010000000000100001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~1_combout\);

-- Location: MLABCELL_X42_Y2_N9
\Processador|FD|FETCH|ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~14_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(3) & ( (!\Processador|FD|FETCH|PC|DOUT\(2) & ((!\Processador|FD|FETCH|PC|DOUT\(1)))) # (\Processador|FD|FETCH|PC|DOUT\(2) & (!\Processador|FD|FETCH|PC|DOUT\(0) & 
-- \Processador|FD|FETCH|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	combout => \Processador|FD|FETCH|ROM|memROM~14_combout\);

-- Location: MLABCELL_X42_Y2_N6
\Processador|FD|FETCH|ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~13_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(3) & ( !\Processador|FD|FETCH|PC|DOUT\(1) $ (((!\Processador|FD|FETCH|PC|DOUT\(0) & \Processador|FD|FETCH|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100001100111100110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	combout => \Processador|FD|FETCH|ROM|memROM~13_combout\);

-- Location: LABCELL_X40_Y4_N54
\Processador|UC|palavraControle[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[5]~13_combout\ = ( \Processador|FD|FETCH|ROM|memROM~5_combout\ & ( \Processador|FD|FETCH|ROM|memROM~4_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & (((!\Processador|FD|FETCH|ROM|memROM~6_combout\ & 
-- \Processador|FD|FETCH|ROM|memROM~8_combout\)) # (\Processador|FD|FETCH|ROM|memROM~7_combout\))) ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~5_combout\ & ( \Processador|FD|FETCH|ROM|memROM~4_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & 
-- (((\Processador|FD|FETCH|ROM|memROM~7_combout\ & \Processador|FD|FETCH|ROM|memROM~6_combout\)) # (\Processador|FD|FETCH|ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100110011000100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	combout => \Processador|UC|palavraControle[5]~13_combout\);

-- Location: MLABCELL_X42_Y2_N15
\Processador|FD|BancoReg|registrador~197\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~197_combout\ = ( !\Processador|UC|palavraControle[5]~13_combout\ & ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~6_combout\ & (\Processador|FD|FETCH|ROM|memROM~14_combout\ & 
-- \Processador|FD|FETCH|ROM|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\,
	datae => \Processador|UC|ALT_INV_palavraControle[5]~13_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|BancoReg|registrador~197_combout\);

-- Location: FF_X40_Y3_N29
\Processador|FD|BancoReg|registrador~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~89_q\);

-- Location: MLABCELL_X42_Y2_N27
\Processador|FD|BancoReg|registrador~196\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~196_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~14_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~6_combout\ & (!\Processador|UC|palavraControle[5]~13_combout\ & 
-- \Processador|FD|FETCH|ROM|memROM~13_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[5]~13_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\,
	combout => \Processador|FD|BancoReg|registrador~196_combout\);

-- Location: FF_X41_Y3_N53
\Processador|FD|BancoReg|registrador~29DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~29DUPLICATE_q\);

-- Location: LABCELL_X40_Y3_N0
\Processador|FD|BancoReg|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~179_combout\ = ( \Processador|FD|BancoReg|registrador~29DUPLICATE_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (((\Processador|FD|BancoReg|registrador~19_q\)) # (\Processador|FD|FETCH|ROM|memROM~1_combout\))) 
-- # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~89_q\))) ) ) # ( !\Processador|FD|BancoReg|registrador~29DUPLICATE_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((\Processador|FD|BancoReg|registrador~19_q\)))) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~89_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100100100011101010110010001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~89_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~19_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~29DUPLICATE_q\,
	combout => \Processador|FD|BancoReg|registrador~179_combout\);

-- Location: LABCELL_X40_Y3_N15
\Processador|FD|ULA|saida[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[4]~7_combout\ = ( \Processador|UC|palavraControle[3]~2_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & ((\Processador|FD|BancoReg|registrador~189_combout\))) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|FD|BancoReg|registrador~179_combout\)))) # (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|FD|BancoReg|registrador~179_combout\ & 
-- ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|FD|BancoReg|registrador~189_combout\)))) ) ) # ( !\Processador|UC|palavraControle[3]~2_combout\ & ( (!\Processador|FD|BancoReg|registrador~179_combout\ & 
-- (\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|UC|palavraControle[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000111010010100010011101001010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~179_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~189_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	combout => \Processador|FD|ULA|saida[4]~7_combout\);

-- Location: FF_X40_Y2_N19
\Processador|FD|BancoReg|registrador~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~88_q\);

-- Location: MLABCELL_X42_Y2_N21
\Processador|FD|BancoReg|registrador~195\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~195_combout\ = ( !\Processador|UC|palavraControle[5]~13_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # ((!\Processador|FD|FETCH|ROM|memROM~13_combout\ & (!\Processador|FD|FETCH|ROM|memROM~14_combout\ & 
-- !\Processador|FD|FETCH|ROM|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010111010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[5]~13_combout\,
	combout => \Processador|FD|BancoReg|registrador~195_combout\);

-- Location: FF_X39_Y2_N50
\Processador|FD|BancoReg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~18_q\);

-- Location: LABCELL_X40_Y3_N3
\Processador|FD|BancoReg|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~178_combout\ = ( \Processador|FD|BancoReg|registrador~28_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (((\Processador|FD|BancoReg|registrador~18_q\)) # (\Processador|FD|FETCH|ROM|memROM~1_combout\))) # 
-- (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~88_q\))) ) ) # ( !\Processador|FD|BancoReg|registrador~28_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((\Processador|FD|BancoReg|registrador~18_q\)))) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~88_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100100100011101010110010001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~88_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~18_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~28_q\,
	combout => \Processador|FD|BancoReg|registrador~178_combout\);

-- Location: LABCELL_X39_Y2_N36
\Processador|FD|ULA|saida[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[3]~5_combout\ = ( \Processador|FD|BancoReg|registrador~188_combout\ & ( \Processador|FD|BancoReg|registrador~178_combout\ & ( (\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # 
-- (\Processador|UC|palavraControle[2]~0_combout\))) ) ) ) # ( !\Processador|FD|BancoReg|registrador~188_combout\ & ( \Processador|FD|BancoReg|registrador~178_combout\ & ( (\Processador|UC|palavraControle[2]~0_combout\ & 
-- (!\Processador|UC|palavraControle[4]~1_combout\ & \Processador|UC|palavraControle[3]~2_combout\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~188_combout\ & ( !\Processador|FD|BancoReg|registrador~178_combout\ & ( 
-- (!\Processador|UC|palavraControle[2]~0_combout\ & ((\Processador|UC|palavraControle[3]~2_combout\) # (\Processador|UC|palavraControle[4]~1_combout\))) ) ) ) # ( !\Processador|FD|BancoReg|registrador~188_combout\ & ( 
-- !\Processador|FD|BancoReg|registrador~178_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & \Processador|UC|palavraControle[4]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011001100110000000000001100000000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~188_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~178_combout\,
	combout => \Processador|FD|ULA|saida[3]~5_combout\);

-- Location: FF_X41_Y2_N2
\Processador|FD|BancoReg|registrador~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~87_q\);

-- Location: FF_X42_Y2_N13
\Processador|FD|BancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~17_q\);

-- Location: LABCELL_X41_Y2_N0
\Processador|FD|BancoReg|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~177_combout\ = ( \Processador|FD|BancoReg|registrador~17_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\)) # (\Processador|FD|FETCH|ROM|memROM~1_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~27_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~87_q\))))) ) ) # ( !\Processador|FD|BancoReg|registrador~17_q\ & ( 
-- (\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~27_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~87_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~27_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~87_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~17_q\,
	combout => \Processador|FD|BancoReg|registrador~177_combout\);

-- Location: LABCELL_X41_Y2_N21
\Processador|FD|ULA|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[2]~3_combout\ = ( \Processador|FD|BancoReg|registrador~187_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[3]~2_combout\)) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & ((!\Processador|FD|BancoReg|registrador~177_combout\))))) # (\Processador|UC|palavraControle[2]~0_combout\ & (((\Processador|UC|palavraControle[3]~2_combout\ & 
-- \Processador|FD|BancoReg|registrador~177_combout\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~187_combout\ & ( (!\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[2]~0_combout\ & 
-- (\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|BancoReg|registrador~177_combout\))) # (\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|UC|palavraControle[2]~0_combout\ & 
-- ((!\Processador|FD|BancoReg|registrador~177_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000010010001000000001001001100000010110100110000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~177_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~187_combout\,
	combout => \Processador|FD|ULA|saida[2]~3_combout\);

-- Location: MLABCELL_X42_Y2_N18
\Processador|FD|BancoReg|registrador~198\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~198_combout\ = ( \Processador|FD|FETCH|ROM|memROM~14_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~0_combout\ & (\Processador|FD|FETCH|ROM|memROM~13_combout\ & (\Processador|FD|FETCH|ROM|memROM~6_combout\ & 
-- !\Processador|UC|palavraControle[5]~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~13_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[5]~13_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~14_combout\,
	combout => \Processador|FD|BancoReg|registrador~198_combout\);

-- Location: FF_X42_Y2_N4
\Processador|FD|BancoReg|registrador~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~166_q\);

-- Location: FF_X42_Y2_N11
\Processador|FD|BancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~16_q\);

-- Location: LABCELL_X41_Y2_N9
\Processador|FD|BancoReg|registrador~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~186_combout\ = ( \Processador|FD|BancoReg|registrador~26_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~16_q\)))) # 
-- (\Processador|FD|FETCH|ROM|memROM~3_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\) # ((\Processador|FD|BancoReg|registrador~166_q\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~26_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~16_q\)))) # (\Processador|FD|FETCH|ROM|memROM~3_combout\ & (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~166_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100101000101110011010100010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~166_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~16_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~26_q\,
	combout => \Processador|FD|BancoReg|registrador~186_combout\);

-- Location: MLABCELL_X42_Y2_N57
\Processador|FD|ULA|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[1]~1_combout\ = ( \Processador|UC|palavraControle[4]~1_combout\ & ( \Processador|FD|BancoReg|registrador~186_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|FD|BancoReg|registrador~176_combout\))) # 
-- (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|BancoReg|registrador~176_combout\)) ) ) ) # ( !\Processador|UC|palavraControle[4]~1_combout\ & ( 
-- \Processador|FD|BancoReg|registrador~186_combout\ & ( (\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[2]~0_combout\) # (\Processador|FD|BancoReg|registrador~176_combout\))) ) ) ) # ( 
-- \Processador|UC|palavraControle[4]~1_combout\ & ( !\Processador|FD|BancoReg|registrador~186_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & !\Processador|FD|BancoReg|registrador~176_combout\) ) ) ) # ( 
-- !\Processador|UC|palavraControle[4]~1_combout\ & ( !\Processador|FD|BancoReg|registrador~186_combout\ & ( (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|BancoReg|registrador~176_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101101010100000000000001010000011111010101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~176_combout\,
	datae => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~186_combout\,
	combout => \Processador|FD|ULA|saida[1]~1_combout\);

-- Location: LABCELL_X40_Y4_N24
\Processador|UC|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|Equal9~0_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( \Processador|FD|FETCH|ROM|memROM~5_combout\ & ( \Processador|FD|FETCH|ROM|memROM~4_combout\ ) ) ) # ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( 
-- !\Processador|FD|FETCH|ROM|memROM~5_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~4_combout\ & (((\Processador|FD|FETCH|ROM|memROM~8_combout\) # (\Processador|FD|FETCH|ROM|memROM~6_combout\)) # (\Processador|FD|FETCH|ROM|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011000000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~6_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	datae => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	combout => \Processador|UC|Equal9~0_combout\);

-- Location: MLABCELL_X42_Y4_N0
\TICTAC|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~61_sumout\ = SUM(( \TICTAC|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \TICTAC|baseTempo|Add0~62\ = CARRY(( \TICTAC|baseTempo|contador[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \TICTAC|baseTempo|Add0~61_sumout\,
	cout => \TICTAC|baseTempo|Add0~62\);

-- Location: FF_X42_Y4_N2
\TICTAC|baseTempo|contador[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~61_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y4_N3
\TICTAC|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~33_sumout\ = SUM(( \TICTAC|baseTempo|contador\(1) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~62\ ))
-- \TICTAC|baseTempo|Add0~34\ = CARRY(( \TICTAC|baseTempo|contador\(1) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(1),
	cin => \TICTAC|baseTempo|Add0~62\,
	sumout => \TICTAC|baseTempo|Add0~33_sumout\,
	cout => \TICTAC|baseTempo|Add0~34\);

-- Location: FF_X42_Y4_N5
\TICTAC|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~33_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(1));

-- Location: MLABCELL_X42_Y4_N6
\TICTAC|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~37_sumout\ = SUM(( \TICTAC|baseTempo|contador\(2) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~34\ ))
-- \TICTAC|baseTempo|Add0~38\ = CARRY(( \TICTAC|baseTempo|contador\(2) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(2),
	cin => \TICTAC|baseTempo|Add0~34\,
	sumout => \TICTAC|baseTempo|Add0~37_sumout\,
	cout => \TICTAC|baseTempo|Add0~38\);

-- Location: FF_X42_Y4_N8
\TICTAC|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~37_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(2));

-- Location: MLABCELL_X42_Y4_N9
\TICTAC|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~45_sumout\ = SUM(( \TICTAC|baseTempo|contador\(3) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~38\ ))
-- \TICTAC|baseTempo|Add0~46\ = CARRY(( \TICTAC|baseTempo|contador\(3) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(3),
	cin => \TICTAC|baseTempo|Add0~38\,
	sumout => \TICTAC|baseTempo|Add0~45_sumout\,
	cout => \TICTAC|baseTempo|Add0~46\);

-- Location: FF_X42_Y4_N11
\TICTAC|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~45_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(3));

-- Location: MLABCELL_X42_Y4_N12
\TICTAC|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~49_sumout\ = SUM(( \TICTAC|baseTempo|contador\(4) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~46\ ))
-- \TICTAC|baseTempo|Add0~50\ = CARRY(( \TICTAC|baseTempo|contador\(4) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(4),
	cin => \TICTAC|baseTempo|Add0~46\,
	sumout => \TICTAC|baseTempo|Add0~49_sumout\,
	cout => \TICTAC|baseTempo|Add0~50\);

-- Location: FF_X42_Y4_N14
\TICTAC|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~49_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(4));

-- Location: MLABCELL_X42_Y4_N15
\TICTAC|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~1_sumout\ = SUM(( \TICTAC|baseTempo|contador\(5) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~50\ ))
-- \TICTAC|baseTempo|Add0~2\ = CARRY(( \TICTAC|baseTempo|contador\(5) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(5),
	cin => \TICTAC|baseTempo|Add0~50\,
	sumout => \TICTAC|baseTempo|Add0~1_sumout\,
	cout => \TICTAC|baseTempo|Add0~2\);

-- Location: FF_X42_Y4_N17
\TICTAC|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~1_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(5));

-- Location: MLABCELL_X42_Y4_N18
\TICTAC|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~73_sumout\ = SUM(( \TICTAC|baseTempo|contador\(6) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~2\ ))
-- \TICTAC|baseTempo|Add0~74\ = CARRY(( \TICTAC|baseTempo|contador\(6) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(6),
	cin => \TICTAC|baseTempo|Add0~2\,
	sumout => \TICTAC|baseTempo|Add0~73_sumout\,
	cout => \TICTAC|baseTempo|Add0~74\);

-- Location: FF_X42_Y4_N20
\TICTAC|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~73_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(6));

-- Location: MLABCELL_X42_Y4_N21
\TICTAC|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~9_sumout\ = SUM(( \TICTAC|baseTempo|contador\(7) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~74\ ))
-- \TICTAC|baseTempo|Add0~10\ = CARRY(( \TICTAC|baseTempo|contador\(7) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(7),
	cin => \TICTAC|baseTempo|Add0~74\,
	sumout => \TICTAC|baseTempo|Add0~9_sumout\,
	cout => \TICTAC|baseTempo|Add0~10\);

-- Location: FF_X42_Y4_N23
\TICTAC|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~9_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(7));

-- Location: MLABCELL_X42_Y4_N24
\TICTAC|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~57_sumout\ = SUM(( \TICTAC|baseTempo|contador\(8) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~10\ ))
-- \TICTAC|baseTempo|Add0~58\ = CARRY(( \TICTAC|baseTempo|contador\(8) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(8),
	cin => \TICTAC|baseTempo|Add0~10\,
	sumout => \TICTAC|baseTempo|Add0~57_sumout\,
	cout => \TICTAC|baseTempo|Add0~58\);

-- Location: FF_X42_Y4_N26
\TICTAC|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~57_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(8));

-- Location: MLABCELL_X42_Y4_N27
\TICTAC|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~97_sumout\ = SUM(( \TICTAC|baseTempo|contador\(9) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~58\ ))
-- \TICTAC|baseTempo|Add0~98\ = CARRY(( \TICTAC|baseTempo|contador\(9) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(9),
	cin => \TICTAC|baseTempo|Add0~58\,
	sumout => \TICTAC|baseTempo|Add0~97_sumout\,
	cout => \TICTAC|baseTempo|Add0~98\);

-- Location: FF_X42_Y4_N29
\TICTAC|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~97_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(9));

-- Location: MLABCELL_X42_Y3_N0
\TICTAC|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~93_sumout\ = SUM(( \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~98\ ))
-- \TICTAC|baseTempo|Add0~94\ = CARRY(( \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~98\,
	sumout => \TICTAC|baseTempo|Add0~93_sumout\,
	cout => \TICTAC|baseTempo|Add0~94\);

-- Location: FF_X42_Y3_N2
\TICTAC|baseTempo|contador[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~93_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[10]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N3
\TICTAC|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~89_sumout\ = SUM(( \TICTAC|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~94\ ))
-- \TICTAC|baseTempo|Add0~90\ = CARRY(( \TICTAC|baseTempo|contador[11]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[11]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~94\,
	sumout => \TICTAC|baseTempo|Add0~89_sumout\,
	cout => \TICTAC|baseTempo|Add0~90\);

-- Location: FF_X42_Y3_N5
\TICTAC|baseTempo|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~89_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[11]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y3_N6
\TICTAC|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~85_sumout\ = SUM(( \TICTAC|baseTempo|contador\(12) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~90\ ))
-- \TICTAC|baseTempo|Add0~86\ = CARRY(( \TICTAC|baseTempo|contador\(12) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(12),
	cin => \TICTAC|baseTempo|Add0~90\,
	sumout => \TICTAC|baseTempo|Add0~85_sumout\,
	cout => \TICTAC|baseTempo|Add0~86\);

-- Location: FF_X42_Y3_N7
\TICTAC|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~85_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(12));

-- Location: MLABCELL_X42_Y3_N9
\TICTAC|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~53_sumout\ = SUM(( \TICTAC|baseTempo|contador\(13) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~86\ ))
-- \TICTAC|baseTempo|Add0~54\ = CARRY(( \TICTAC|baseTempo|contador\(13) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(13),
	cin => \TICTAC|baseTempo|Add0~86\,
	sumout => \TICTAC|baseTempo|Add0~53_sumout\,
	cout => \TICTAC|baseTempo|Add0~54\);

-- Location: FF_X42_Y3_N11
\TICTAC|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~53_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(13));

-- Location: MLABCELL_X42_Y3_N12
\TICTAC|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~81_sumout\ = SUM(( \TICTAC|baseTempo|contador\(14) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~54\ ))
-- \TICTAC|baseTempo|Add0~82\ = CARRY(( \TICTAC|baseTempo|contador\(14) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(14),
	cin => \TICTAC|baseTempo|Add0~54\,
	sumout => \TICTAC|baseTempo|Add0~81_sumout\,
	cout => \TICTAC|baseTempo|Add0~82\);

-- Location: FF_X42_Y4_N47
\TICTAC|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \TICTAC|baseTempo|Add0~81_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(14));

-- Location: MLABCELL_X42_Y3_N15
\TICTAC|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~77_sumout\ = SUM(( \TICTAC|baseTempo|contador\(15) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~82\ ))
-- \TICTAC|baseTempo|Add0~78\ = CARRY(( \TICTAC|baseTempo|contador\(15) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(15),
	cin => \TICTAC|baseTempo|Add0~82\,
	sumout => \TICTAC|baseTempo|Add0~77_sumout\,
	cout => \TICTAC|baseTempo|Add0~78\);

-- Location: FF_X42_Y3_N16
\TICTAC|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~77_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(15));

-- Location: MLABCELL_X42_Y3_N18
\TICTAC|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~41_sumout\ = SUM(( \TICTAC|baseTempo|contador\(16) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~78\ ))
-- \TICTAC|baseTempo|Add0~42\ = CARRY(( \TICTAC|baseTempo|contador\(16) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(16),
	cin => \TICTAC|baseTempo|Add0~78\,
	sumout => \TICTAC|baseTempo|Add0~41_sumout\,
	cout => \TICTAC|baseTempo|Add0~42\);

-- Location: FF_X42_Y3_N20
\TICTAC|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~41_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(16));

-- Location: MLABCELL_X42_Y4_N54
\TICTAC|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~1_combout\ = ( \TICTAC|baseTempo|contador\(16) & ( !\TICTAC|baseTempo|contador\(3) & ( (!\TICTAC|baseTempo|contador\(2) & (!\TICTAC|baseTempo|contador\(1) & !\TICTAC|baseTempo|contador\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(2),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(1),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(4),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(16),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(3),
	combout => \TICTAC|baseTempo|Equal0~1_combout\);

-- Location: MLABCELL_X42_Y3_N21
\TICTAC|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~69_sumout\ = SUM(( \TICTAC|baseTempo|contador\(17) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~42\ ))
-- \TICTAC|baseTempo|Add0~70\ = CARRY(( \TICTAC|baseTempo|contador\(17) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(17),
	cin => \TICTAC|baseTempo|Add0~42\,
	sumout => \TICTAC|baseTempo|Add0~69_sumout\,
	cout => \TICTAC|baseTempo|Add0~70\);

-- Location: FF_X42_Y3_N23
\TICTAC|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~69_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(17));

-- Location: MLABCELL_X42_Y3_N24
\TICTAC|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~65_sumout\ = SUM(( \TICTAC|baseTempo|contador\(18) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~70\ ))
-- \TICTAC|baseTempo|Add0~66\ = CARRY(( \TICTAC|baseTempo|contador\(18) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(18),
	cin => \TICTAC|baseTempo|Add0~70\,
	sumout => \TICTAC|baseTempo|Add0~65_sumout\,
	cout => \TICTAC|baseTempo|Add0~66\);

-- Location: FF_X42_Y3_N26
\TICTAC|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~65_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(18));

-- Location: MLABCELL_X42_Y3_N27
\TICTAC|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~5_sumout\ = SUM(( \TICTAC|baseTempo|contador\(19) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~66\ ))
-- \TICTAC|baseTempo|Add0~6\ = CARRY(( \TICTAC|baseTempo|contador\(19) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(19),
	cin => \TICTAC|baseTempo|Add0~66\,
	sumout => \TICTAC|baseTempo|Add0~5_sumout\,
	cout => \TICTAC|baseTempo|Add0~6\);

-- Location: FF_X42_Y3_N28
\TICTAC|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~5_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(19));

-- Location: MLABCELL_X42_Y3_N30
\TICTAC|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~29_sumout\ = SUM(( \TICTAC|baseTempo|contador\(20) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~6\ ))
-- \TICTAC|baseTempo|Add0~30\ = CARRY(( \TICTAC|baseTempo|contador\(20) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(20),
	cin => \TICTAC|baseTempo|Add0~6\,
	sumout => \TICTAC|baseTempo|Add0~29_sumout\,
	cout => \TICTAC|baseTempo|Add0~30\);

-- Location: FF_X42_Y3_N32
\TICTAC|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~29_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(20));

-- Location: MLABCELL_X42_Y3_N33
\TICTAC|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~13_sumout\ = SUM(( \TICTAC|baseTempo|contador\(21) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~30\ ))
-- \TICTAC|baseTempo|Add0~14\ = CARRY(( \TICTAC|baseTempo|contador\(21) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(21),
	cin => \TICTAC|baseTempo|Add0~30\,
	sumout => \TICTAC|baseTempo|Add0~13_sumout\,
	cout => \TICTAC|baseTempo|Add0~14\);

-- Location: FF_X42_Y3_N35
\TICTAC|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~13_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(21));

-- Location: MLABCELL_X42_Y3_N36
\TICTAC|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~25_sumout\ = SUM(( \TICTAC|baseTempo|contador\(22) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~14\ ))
-- \TICTAC|baseTempo|Add0~26\ = CARRY(( \TICTAC|baseTempo|contador\(22) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(22),
	cin => \TICTAC|baseTempo|Add0~14\,
	sumout => \TICTAC|baseTempo|Add0~25_sumout\,
	cout => \TICTAC|baseTempo|Add0~26\);

-- Location: FF_X42_Y3_N38
\TICTAC|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~25_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(22));

-- Location: MLABCELL_X42_Y3_N39
\TICTAC|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~21_sumout\ = SUM(( \TICTAC|baseTempo|contador\(23) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~26\ ))
-- \TICTAC|baseTempo|Add0~22\ = CARRY(( \TICTAC|baseTempo|contador\(23) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(23),
	cin => \TICTAC|baseTempo|Add0~26\,
	sumout => \TICTAC|baseTempo|Add0~21_sumout\,
	cout => \TICTAC|baseTempo|Add0~22\);

-- Location: FF_X42_Y3_N41
\TICTAC|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~21_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(23));

-- Location: MLABCELL_X42_Y3_N42
\TICTAC|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~17_sumout\ = SUM(( \TICTAC|baseTempo|contador\(24) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(24),
	cin => \TICTAC|baseTempo|Add0~22\,
	sumout => \TICTAC|baseTempo|Add0~17_sumout\);

-- Location: FF_X42_Y3_N44
\TICTAC|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~17_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(24));

-- Location: MLABCELL_X42_Y3_N48
\TICTAC|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~0_combout\ = ( \TICTAC|baseTempo|contador\(22) & ( \TICTAC|baseTempo|contador\(24) & ( (\TICTAC|baseTempo|contador\(20) & (\TICTAC|baseTempo|contador\(21) & !\TICTAC|baseTempo|contador\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(20),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(21),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(23),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(22),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(24),
	combout => \TICTAC|baseTempo|Equal0~0_combout\);

-- Location: FF_X42_Y3_N8
\TICTAC|baseTempo|contador[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~85_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[12]~DUPLICATE_q\);

-- Location: FF_X42_Y3_N4
\TICTAC|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~89_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(11));

-- Location: FF_X42_Y3_N1
\TICTAC|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~93_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(10));

-- Location: MLABCELL_X42_Y4_N48
\TICTAC|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~3_combout\ = ( !\TICTAC|baseTempo|contador\(10) & ( (!\TICTAC|baseTempo|contador\(9) & (\TICTAC|baseTempo|contador[12]~DUPLICATE_q\ & \TICTAC|baseTempo|contador\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(9),
	datac => \TICTAC|baseTempo|ALT_INV_contador[12]~DUPLICATE_q\,
	datad => \TICTAC|baseTempo|ALT_INV_contador\(11),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(10),
	combout => \TICTAC|baseTempo|Equal0~3_combout\);

-- Location: MLABCELL_X42_Y4_N30
\TICTAC|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~2_combout\ = ( !\TICTAC|baseTempo|contador\(15) & ( \TICTAC|baseTempo|contador\(18) & ( (\TICTAC|baseTempo|contador\(6) & (!\TICTAC|baseTempo|contador\(17) & \TICTAC|baseTempo|contador\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(6),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(17),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(14),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(15),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(18),
	combout => \TICTAC|baseTempo|Equal0~2_combout\);

-- Location: FF_X42_Y4_N1
\TICTAC|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~61_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(0));

-- Location: MLABCELL_X42_Y4_N36
\TICTAC|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~4_combout\ = ( !\TICTAC|baseTempo|contador\(0) & ( (\TICTAC|baseTempo|Equal0~3_combout\ & (\TICTAC|baseTempo|Equal0~2_combout\ & (!\TICTAC|baseTempo|contador\(8) & \TICTAC|baseTempo|contador\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_Equal0~3_combout\,
	datab => \TICTAC|baseTempo|ALT_INV_Equal0~2_combout\,
	datac => \TICTAC|baseTempo|ALT_INV_contador\(8),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(13),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(0),
	combout => \TICTAC|baseTempo|Equal0~4_combout\);

-- Location: MLABCELL_X42_Y4_N42
\TICTAC|baseTempo|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~5_combout\ = ( \TICTAC|baseTempo|Equal0~4_combout\ & ( \TICTAC|baseTempo|contador\(19) & ( (\TICTAC|baseTempo|Equal0~1_combout\ & (\TICTAC|baseTempo|Equal0~0_combout\ & (!\TICTAC|baseTempo|contador\(7) & 
-- !\TICTAC|baseTempo|contador\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_Equal0~1_combout\,
	datab => \TICTAC|baseTempo|ALT_INV_Equal0~0_combout\,
	datac => \TICTAC|baseTempo|ALT_INV_contador\(7),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(5),
	datae => \TICTAC|baseTempo|ALT_INV_Equal0~4_combout\,
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(19),
	combout => \TICTAC|baseTempo|Equal0~5_combout\);

-- Location: MLABCELL_X42_Y4_N51
\TICTAC|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|tick~0_combout\ = ( \TICTAC|baseTempo|tick~q\ & ( !\TICTAC|baseTempo|Equal0~5_combout\ ) ) # ( !\TICTAC|baseTempo|tick~q\ & ( \TICTAC|baseTempo|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_Equal0~5_combout\,
	dataf => \TICTAC|baseTempo|ALT_INV_tick~q\,
	combout => \TICTAC|baseTempo|tick~0_combout\);

-- Location: FF_X42_Y4_N41
\TICTAC|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \TICTAC|baseTempo|tick~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|tick~q\);

-- Location: LABCELL_X41_Y4_N18
\TICTAC|registraUmSegundo|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|registraUmSegundo|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \TICTAC|registraUmSegundo|DOUT~feeder_combout\);

-- Location: LABCELL_X41_Y4_N12
\DECODER|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal6~0_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( (\Processador|FD|FETCH|PC|DOUT\(1) & (!\Processador|FD|FETCH|PC|DOUT\(0) & (\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|FD|FETCH|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \DECODER|Equal6~0_combout\);

-- Location: FF_X41_Y4_N19
\TICTAC|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TICTAC|baseTempo|tick~q\,
	d => \TICTAC|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \DECODER|ALT_INV_Equal6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|registraUmSegundo|DOUT~q\);

-- Location: LABCELL_X40_Y2_N30
\Processador|FD|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~1_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~175_combout\ ) + ( ((!\Processador|FD|BancoReg|registrador~185_combout\) # (\Processador|UC|palavraControle[3]~2_combout\)) # (\Processador|UC|palavraControle[4]~1_combout\) ) 
-- + ( !VCC ))
-- \Processador|FD|ULA|Add0~2\ = CARRY(( \Processador|FD|BancoReg|registrador~175_combout\ ) + ( ((!\Processador|FD|BancoReg|registrador~185_combout\) # (\Processador|UC|palavraControle[3]~2_combout\)) # (\Processador|UC|palavraControle[4]~1_combout\) ) + ( 
-- !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~175_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	cin => GND,
	sumout => \Processador|FD|ULA|Add0~1_sumout\,
	cout => \Processador|FD|ULA|Add0~2\);

-- Location: LABCELL_X41_Y2_N15
\Processador|FD|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[0]~0_combout\ = ( \Processador|FD|BancoReg|registrador~175_combout\ & ( \Processador|FD|ULA|Add0~1_sumout\ & ( (!\Processador|UC|palavraControle[4]~1_combout\ & ((!\Processador|UC|palavraControle[3]~2_combout\) # 
-- ((\Processador|UC|palavraControle[2]~0_combout\) # (\Processador|FD|BancoReg|registrador~185_combout\)))) # (\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[3]~2_combout\) 
-- # (\Processador|FD|BancoReg|registrador~185_combout\)))) ) ) ) # ( !\Processador|FD|BancoReg|registrador~175_combout\ & ( \Processador|FD|ULA|Add0~1_sumout\ & ( (!\Processador|UC|palavraControle[3]~2_combout\) # 
-- ((!\Processador|UC|palavraControle[2]~0_combout\ & ((\Processador|FD|BancoReg|registrador~185_combout\) # (\Processador|UC|palavraControle[4]~1_combout\)))) ) ) ) # ( \Processador|FD|BancoReg|registrador~175_combout\ & ( 
-- !\Processador|FD|ULA|Add0~1_sumout\ & ( (\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & ((\Processador|UC|palavraControle[2]~0_combout\) # (\Processador|FD|BancoReg|registrador~185_combout\))) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|FD|BancoReg|registrador~185_combout\ & \Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( !\Processador|FD|BancoReg|registrador~175_combout\ & ( !\Processador|FD|ULA|Add0~1_sumout\ & 
-- ( (!\Processador|UC|palavraControle[2]~0_combout\ & (((\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|BancoReg|registrador~185_combout\)) # (\Processador|UC|palavraControle[4]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000000000100010001111011111110011001000101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~175_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~1_sumout\,
	combout => \Processador|FD|ULA|saida[0]~0_combout\);

-- Location: LABCELL_X41_Y2_N24
\Processador|FD|MUX_ULA|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\ = ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ( \Processador|FD|ULA|saida[0]~0_combout\ ) ) # ( !\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ( \Processador|FD|ULA|saida[0]~0_combout\ & ( 
-- (!\Processador|UC|Equal9~0_combout\ & ((\Processador|FD|FETCH|ROM|memROM~9_combout\))) # (\Processador|UC|Equal9~0_combout\ & (\TICTAC|registraUmSegundo|DOUT~q\)) ) ) ) # ( !\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ( 
-- !\Processador|FD|ULA|saida[0]~0_combout\ & ( (!\Processador|UC|Equal9~0_combout\ & ((\Processador|FD|FETCH|ROM|memROM~9_combout\))) # (\Processador|UC|Equal9~0_combout\ & (\TICTAC|registraUmSegundo|DOUT~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000000000000000000010001101110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_Equal9~0_combout\,
	datab => \TICTAC|registraUmSegundo|ALT_INV_DOUT~q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~9_combout\,
	datae => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_saida[0]~0_combout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\);

-- Location: FF_X42_Y2_N53
\Processador|FD|BancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~15_q\);

-- Location: FF_X41_Y2_N44
\Processador|FD|BancoReg|registrador~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~85_q\);

-- Location: FF_X41_Y3_N2
\Processador|FD|BancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~25_q\);

-- Location: LABCELL_X41_Y2_N42
\Processador|FD|BancoReg|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~175_combout\ = ( \Processador|FD|BancoReg|registrador~25_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~15_q\))) # 
-- (\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\) # ((\Processador|FD|BancoReg|registrador~85_q\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~25_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~15_q\))) # (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~85_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~15_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~85_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~25_q\,
	combout => \Processador|FD|BancoReg|registrador~175_combout\);

-- Location: LABCELL_X40_Y2_N33
\Processador|FD|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~5_sumout\ = SUM(( (!\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & !\Processador|FD|BancoReg|registrador~186_combout\)) ) + ( \Processador|FD|BancoReg|registrador~176_combout\ ) + 
-- ( \Processador|FD|ULA|Add0~2\ ))
-- \Processador|FD|ULA|Add0~6\ = CARRY(( (!\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & !\Processador|FD|BancoReg|registrador~186_combout\)) ) + ( \Processador|FD|BancoReg|registrador~176_combout\ ) + ( 
-- \Processador|FD|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~176_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~186_combout\,
	cin => \Processador|FD|ULA|Add0~2\,
	sumout => \Processador|FD|ULA|Add0~5_sumout\,
	cout => \Processador|FD|ULA|Add0~6\);

-- Location: MLABCELL_X42_Y2_N3
\Processador|FD|MUX_ULA|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\ = ( \Processador|FD|ULA|saida[1]~1_combout\ & ( \Processador|FD|ULA|Add0~5_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[1]~1_combout\ & ( 
-- \Processador|FD|ULA|Add0~5_sumout\ & ( (!\Processador|UC|palavraControle[3]~2_combout\ & (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[1]~1_combout\ & ( !\Processador|FD|ULA|Add0~5_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000110100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[1]~1_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~5_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\);

-- Location: FF_X41_Y2_N28
\Processador|FD|BancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~26_q\);

-- Location: FF_X41_Y2_N47
\Processador|FD|BancoReg|registrador~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[1]~2_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~86_q\);

-- Location: LABCELL_X41_Y2_N45
\Processador|FD|BancoReg|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~176_combout\ = ( \Processador|FD|BancoReg|registrador~16_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\)) # (\Processador|FD|FETCH|ROM|memROM~1_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~26_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~86_q\))))) ) ) # ( !\Processador|FD|BancoReg|registrador~16_q\ & ( 
-- (\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~26_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~86_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~26_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~86_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~16_q\,
	combout => \Processador|FD|BancoReg|registrador~176_combout\);

-- Location: LABCELL_X40_Y2_N36
\Processador|FD|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~9_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~177_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~187_combout\)) ) + 
-- ( \Processador|FD|ULA|Add0~6\ ))
-- \Processador|FD|ULA|Add0~10\ = CARRY(( \Processador|FD|BancoReg|registrador~177_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~187_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~187_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~177_combout\,
	cin => \Processador|FD|ULA|Add0~6\,
	sumout => \Processador|FD|ULA|Add0~9_sumout\,
	cout => \Processador|FD|ULA|Add0~10\);

-- Location: MLABCELL_X42_Y2_N0
\Processador|FD|MUX_ULA|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\ = ( \Processador|FD|ULA|saida[2]~3_combout\ & ( \Processador|FD|ULA|Add0~9_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[2]~3_combout\ & ( 
-- \Processador|FD|ULA|Add0~9_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[2]~3_combout\ & ( !\Processador|FD|ULA|Add0~9_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001101000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[2]~3_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~9_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\);

-- Location: FF_X41_Y2_N38
\Processador|FD|BancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~27_q\);

-- Location: FF_X42_Y2_N31
\Processador|FD|BancoReg|registrador~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[2]~3_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~167_q\);

-- Location: LABCELL_X41_Y2_N6
\Processador|FD|BancoReg|registrador~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~187_combout\ = ( \Processador|FD|BancoReg|registrador~167_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~17_q\)))) # 
-- (\Processador|FD|FETCH|ROM|memROM~3_combout\ & (((\Processador|FD|BancoReg|registrador~27_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\))) ) ) # ( !\Processador|FD|BancoReg|registrador~167_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~3_combout\ & ((\Processador|FD|BancoReg|registrador~17_q\))) # (\Processador|FD|FETCH|ROM|memROM~3_combout\ & (\Processador|FD|BancoReg|registrador~27_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~27_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~17_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~167_q\,
	combout => \Processador|FD|BancoReg|registrador~187_combout\);

-- Location: LABCELL_X40_Y2_N39
\Processador|FD|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~13_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~178_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~188_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~10\ ))
-- \Processador|FD|ULA|Add0~14\ = CARRY(( \Processador|FD|BancoReg|registrador~178_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~188_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~188_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~178_combout\,
	cin => \Processador|FD|ULA|Add0~10\,
	sumout => \Processador|FD|ULA|Add0~13_sumout\,
	cout => \Processador|FD|ULA|Add0~14\);

-- Location: LABCELL_X39_Y2_N27
\Processador|FD|MUX_ULA|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\ = ( \Processador|FD|ULA|saida[3]~5_combout\ & ( \Processador|FD|ULA|Add0~13_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[3]~5_combout\ & ( 
-- \Processador|FD|ULA|Add0~13_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[3]~5_combout\ & ( !\Processador|FD|ULA|Add0~13_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010000000100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[3]~5_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~13_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\);

-- Location: FF_X40_Y2_N8
\Processador|FD|BancoReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~28_q\);

-- Location: FF_X39_Y2_N55
\Processador|FD|BancoReg|registrador~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[3]~4_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~168_q\);

-- Location: LABCELL_X40_Y2_N9
\Processador|FD|BancoReg|registrador~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~188_combout\ = ( \Processador|FD|BancoReg|registrador~18_q\ & ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~28_q\)) # 
-- (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~168_q\))) ) ) ) # ( !\Processador|FD|BancoReg|registrador~18_q\ & ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- (\Processador|FD|BancoReg|registrador~28_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~168_q\))) ) ) ) # ( \Processador|FD|BancoReg|registrador~18_q\ & ( !\Processador|FD|FETCH|ROM|memROM~3_combout\ & ( 
-- !\Processador|FD|FETCH|ROM|memROM~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~28_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~168_q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~18_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~188_combout\);

-- Location: LABCELL_X40_Y2_N42
\Processador|FD|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~17_sumout\ = SUM(( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~189_combout\)) ) + ( \Processador|FD|BancoReg|registrador~179_combout\ ) 
-- + ( \Processador|FD|ULA|Add0~14\ ))
-- \Processador|FD|ULA|Add0~18\ = CARRY(( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~189_combout\)) ) + ( \Processador|FD|BancoReg|registrador~179_combout\ ) + ( 
-- \Processador|FD|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~179_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~189_combout\,
	cin => \Processador|FD|ULA|Add0~14\,
	sumout => \Processador|FD|ULA|Add0~17_sumout\,
	cout => \Processador|FD|ULA|Add0~18\);

-- Location: LABCELL_X41_Y3_N54
\Processador|FD|MUX_ULA|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\ = ( \Processador|FD|ULA|saida[4]~7_combout\ & ( \Processador|FD|ULA|Add0~17_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[4]~7_combout\ & ( 
-- \Processador|FD|ULA|Add0~17_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[4]~7_combout\ & ( !\Processador|FD|ULA|Add0~17_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110001000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[4]~7_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~17_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\);

-- Location: FF_X41_Y3_N23
\Processador|FD|BancoReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~19_q\);

-- Location: FF_X41_Y3_N52
\Processador|FD|BancoReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~29_q\);

-- Location: FF_X41_Y3_N17
\Processador|FD|BancoReg|registrador~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[4]~5_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~169_q\);

-- Location: LABCELL_X40_Y3_N45
\Processador|FD|BancoReg|registrador~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~189_combout\ = ( \Processador|FD|FETCH|ROM|memROM~2_combout\ & ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~169_q\ ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~2_combout\ & ( 
-- \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~29_q\ ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~2_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~19_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~29_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~169_q\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~189_combout\);

-- Location: FF_X40_Y2_N22
\Processador|FD|BancoReg|registrador~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~90_q\);

-- Location: FF_X40_Y3_N38
\Processador|FD|BancoReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~30_q\);

-- Location: LABCELL_X40_Y3_N39
\Processador|FD|BancoReg|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~180_combout\ = ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~30_q\))) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- (\Processador|FD|BancoReg|registrador~90_q\)) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & \Processador|FD|BancoReg|registrador~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~20_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~90_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~30_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|BancoReg|registrador~180_combout\);

-- Location: LABCELL_X40_Y2_N0
\Processador|FD|ULA|saida[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[5]~9_combout\ = ( \Processador|FD|BancoReg|registrador~180_combout\ & ( (\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & ((\Processador|FD|BancoReg|registrador~190_combout\) # 
-- (\Processador|UC|palavraControle[2]~0_combout\))) # (\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[2]~0_combout\ & \Processador|FD|BancoReg|registrador~190_combout\)))) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~180_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & (((\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|BancoReg|registrador~190_combout\)) # 
-- (\Processador|UC|palavraControle[4]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000001100000111000000000100010001010000010001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~190_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~180_combout\,
	combout => \Processador|FD|ULA|saida[5]~9_combout\);

-- Location: LABCELL_X40_Y2_N45
\Processador|FD|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~21_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~180_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~190_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~18\ ))
-- \Processador|FD|ULA|Add0~22\ = CARRY(( \Processador|FD|BancoReg|registrador~180_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~190_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~190_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~180_combout\,
	cin => \Processador|FD|ULA|Add0~18\,
	sumout => \Processador|FD|ULA|Add0~21_sumout\,
	cout => \Processador|FD|ULA|Add0~22\);

-- Location: LABCELL_X40_Y2_N15
\Processador|FD|MUX_ULA|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\ = ( \Processador|FD|ULA|saida[5]~9_combout\ & ( \Processador|FD|ULA|Add0~21_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[5]~9_combout\ & ( 
-- \Processador|FD|ULA|Add0~21_sumout\ & ( (!\Processador|UC|palavraControle[3]~2_combout\ & (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[5]~9_combout\ & ( !\Processador|FD|ULA|Add0~21_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000100010100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datad => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[5]~9_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~21_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\);

-- Location: FF_X40_Y3_N52
\Processador|FD|BancoReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~20_q\);

-- Location: FF_X40_Y2_N17
\Processador|FD|BancoReg|registrador~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_ULA|saida_MUX[5]~6_combout\,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~170_q\);

-- Location: LABCELL_X40_Y3_N36
\Processador|FD|BancoReg|registrador~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~190_combout\ = ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~30_q\))) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- (\Processador|FD|BancoReg|registrador~170_q\)) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & \Processador|FD|BancoReg|registrador~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~20_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~170_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~30_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~190_combout\);

-- Location: LABCELL_X40_Y3_N24
\Processador|UC|palavraControle[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~7_combout\ = ( \Processador|FD|BancoReg|registrador~190_combout\ & ( \Processador|FD|BancoReg|registrador~180_combout\ & ( !\Processador|FD|BancoReg|registrador~189_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~179_combout\) ) ) ) # ( !\Processador|FD|BancoReg|registrador~190_combout\ & ( !\Processador|FD|BancoReg|registrador~180_combout\ & ( !\Processador|FD|BancoReg|registrador~189_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~179_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~189_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~179_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~190_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~180_combout\,
	combout => \Processador|UC|palavraControle[8]~7_combout\);

-- Location: FF_X41_Y3_N32
\Processador|FD|BancoReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~33_q\);

-- Location: FF_X41_Y3_N47
\Processador|FD|BancoReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~23_q\);

-- Location: FF_X40_Y3_N35
\Processador|FD|BancoReg|registrador~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~93_q\);

-- Location: LABCELL_X40_Y3_N6
\Processador|FD|BancoReg|registrador~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~183_combout\ = ( \Processador|FD|BancoReg|registrador~93_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((\Processador|FD|BancoReg|registrador~23_q\))) # 
-- (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~33_q\)))) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\)) ) ) # ( !\Processador|FD|BancoReg|registrador~93_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((\Processador|FD|BancoReg|registrador~23_q\))) # (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (\Processador|FD|BancoReg|registrador~33_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000010011100110110001001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~33_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~23_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~93_q\,
	combout => \Processador|FD|BancoReg|registrador~183_combout\);

-- Location: LABCELL_X41_Y3_N36
\Processador|FD|ULA|saida[8]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[8]~15_combout\ = ( \Processador|FD|BancoReg|registrador~183_combout\ & ( (\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|FD|BancoReg|registrador~193_combout\ & (\Processador|UC|palavraControle[2]~0_combout\ & 
-- !\Processador|UC|palavraControle[4]~1_combout\)) # (\Processador|FD|BancoReg|registrador~193_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\))))) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~183_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & (((\Processador|FD|BancoReg|registrador~193_combout\ & \Processador|UC|palavraControle[3]~2_combout\)) # 
-- (\Processador|UC|palavraControle[4]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011110000000100110000000100010000111100000001001100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~193_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~183_combout\,
	combout => \Processador|FD|ULA|saida[8]~15_combout\);

-- Location: FF_X40_Y2_N13
\Processador|FD|BancoReg|registrador~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~172_q\);

-- Location: LABCELL_X39_Y2_N18
\Processador|FD|BancoReg|registrador~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~22feeder_combout\ = ( \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[7]~8_combout\,
	combout => \Processador|FD|BancoReg|registrador~22feeder_combout\);

-- Location: FF_X39_Y2_N20
\Processador|FD|BancoReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~22feeder_combout\,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~22_q\);

-- Location: LABCELL_X41_Y2_N39
\Processador|FD|BancoReg|registrador~192\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~192_combout\ = ( \Processador|FD|FETCH|ROM|memROM~2_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~3_combout\ & \Processador|FD|BancoReg|registrador~172_q\) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~2_combout\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (\Processador|FD|BancoReg|registrador~22_q\)) # (\Processador|FD|FETCH|ROM|memROM~3_combout\ & ((\Processador|FD|BancoReg|registrador~32_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~172_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~22_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~32_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	combout => \Processador|FD|BancoReg|registrador~192_combout\);

-- Location: LABCELL_X41_Y2_N48
\Processador|FD|ULA|saida[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[7]~13_combout\ = ( \Processador|UC|palavraControle[3]~2_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & ((\Processador|FD|BancoReg|registrador~192_combout\))) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|FD|BancoReg|registrador~182_combout\)))) # (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|FD|BancoReg|registrador~182_combout\ & 
-- ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|FD|BancoReg|registrador~192_combout\)))) ) ) # ( !\Processador|UC|palavraControle[3]~2_combout\ & ( (\Processador|UC|palavraControle[4]~1_combout\ & 
-- (!\Processador|UC|palavraControle[2]~0_combout\ & !\Processador|FD|BancoReg|registrador~182_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000010110010110100001011001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~182_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~192_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	combout => \Processador|FD|ULA|saida[7]~13_combout\);

-- Location: FF_X41_Y3_N40
\Processador|FD|BancoReg|registrador~21DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~21DUPLICATE_q\);

-- Location: FF_X41_Y3_N13
\Processador|FD|BancoReg|registrador~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~171_q\);

-- Location: LABCELL_X41_Y2_N33
\Processador|FD|BancoReg|registrador~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~191_combout\ = ( \Processador|FD|BancoReg|registrador~171_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~21DUPLICATE_q\))) # 
-- (\Processador|FD|FETCH|ROM|memROM~3_combout\ & (((\Processador|FD|BancoReg|registrador~31_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\))) ) ) # ( !\Processador|FD|BancoReg|registrador~171_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (\Processador|FD|BancoReg|registrador~21DUPLICATE_q\)) # (\Processador|FD|FETCH|ROM|memROM~3_combout\ & ((\Processador|FD|BancoReg|registrador~31_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000011001010111010001100101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~21DUPLICATE_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~31_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~171_q\,
	combout => \Processador|FD|BancoReg|registrador~191_combout\);

-- Location: LABCELL_X41_Y3_N6
\Processador|FD|ULA|saida[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[6]~11_combout\ = ( \Processador|FD|BancoReg|registrador~191_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[3]~2_combout\)) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & ((!\Processador|FD|BancoReg|registrador~181_combout\))))) # (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & 
-- (\Processador|FD|BancoReg|registrador~181_combout\))) ) ) # ( !\Processador|FD|BancoReg|registrador~191_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & (((!\Processador|FD|BancoReg|registrador~181_combout\ & 
-- \Processador|UC|palavraControle[4]~1_combout\)))) # (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & (\Processador|FD|BancoReg|registrador~181_combout\ & !\Processador|UC|palavraControle[4]~1_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000100011101000010010001110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~181_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~191_combout\,
	combout => \Processador|FD|ULA|saida[6]~11_combout\);

-- Location: LABCELL_X40_Y2_N48
\Processador|FD|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~25_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~181_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~191_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~22\ ))
-- \Processador|FD|ULA|Add0~26\ = CARRY(( \Processador|FD|BancoReg|registrador~181_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~191_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~181_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~191_combout\,
	cin => \Processador|FD|ULA|Add0~22\,
	sumout => \Processador|FD|ULA|Add0~25_sumout\,
	cout => \Processador|FD|ULA|Add0~26\);

-- Location: LABCELL_X41_Y3_N12
\Processador|FD|MUX_ULA|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\ = ( \Processador|UC|palavraControle[4]~1_combout\ & ( \Processador|FD|ULA|Add0~25_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & (((\Processador|UC|palavraControle[2]~0_combout\ & 
-- !\Processador|UC|palavraControle[3]~2_combout\)) # (\Processador|FD|ULA|saida[6]~11_combout\))) ) ) ) # ( !\Processador|UC|palavraControle[4]~1_combout\ & ( \Processador|FD|ULA|Add0~25_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & 
-- ((!\Processador|UC|palavraControle[3]~2_combout\) # (\Processador|FD|ULA|saida[6]~11_combout\))) ) ) ) # ( \Processador|UC|palavraControle[4]~1_combout\ & ( !\Processador|FD|ULA|Add0~25_sumout\ & ( (\Processador|FD|ULA|saida[6]~11_combout\ & 
-- \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\) ) ) ) # ( !\Processador|UC|palavraControle[4]~1_combout\ & ( !\Processador|FD|ULA|Add0~25_sumout\ & ( (\Processador|FD|ULA|saida[6]~11_combout\ & \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000111100110000000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|FD|ULA|ALT_INV_saida[6]~11_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~25_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\);

-- Location: LABCELL_X41_Y2_N36
\Processador|FD|BancoReg|registrador~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~31feeder_combout\ = ( \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[6]~7_combout\,
	combout => \Processador|FD|BancoReg|registrador~31feeder_combout\);

-- Location: FF_X41_Y2_N37
\Processador|FD|BancoReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~31feeder_combout\,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~31_q\);

-- Location: FF_X40_Y3_N11
\Processador|FD|BancoReg|registrador~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~91_q\);

-- Location: FF_X41_Y3_N41
\Processador|FD|BancoReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[6]~7_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~21_q\);

-- Location: LABCELL_X40_Y3_N9
\Processador|FD|BancoReg|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~181_combout\ = ( \Processador|FD|BancoReg|registrador~21_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~1_combout\) # ((\Processador|FD|BancoReg|registrador~31_q\)))) # 
-- (\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((\Processador|FD|BancoReg|registrador~91_q\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~21_q\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~31_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~91_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001110001010100110111000101010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~31_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~91_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~21_q\,
	combout => \Processador|FD|BancoReg|registrador~181_combout\);

-- Location: LABCELL_X40_Y2_N51
\Processador|FD|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~29_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~182_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~192_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~26\ ))
-- \Processador|FD|ULA|Add0~30\ = CARRY(( \Processador|FD|BancoReg|registrador~182_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~192_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~182_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~192_combout\,
	cin => \Processador|FD|ULA|Add0~26\,
	sumout => \Processador|FD|ULA|Add0~29_sumout\,
	cout => \Processador|FD|ULA|Add0~30\);

-- Location: LABCELL_X40_Y2_N12
\Processador|FD|MUX_ULA|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\ = ( \Processador|FD|ULA|saida[7]~13_combout\ & ( \Processador|FD|ULA|Add0~29_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[7]~13_combout\ & ( 
-- \Processador|FD|ULA|Add0~29_sumout\ & ( (!\Processador|UC|palavraControle[3]~2_combout\ & (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[7]~13_combout\ & ( !\Processador|FD|ULA|Add0~29_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001000000010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[7]~13_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~29_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\);

-- Location: FF_X41_Y2_N41
\Processador|FD|BancoReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~32_q\);

-- Location: FF_X41_Y2_N5
\Processador|FD|BancoReg|registrador~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[7]~8_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~92_q\);

-- Location: LABCELL_X41_Y2_N3
\Processador|FD|BancoReg|registrador~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~182_combout\ = ( \Processador|FD|BancoReg|registrador~22_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\)) # (\Processador|FD|FETCH|ROM|memROM~1_combout\ & 
-- ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~32_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~92_q\))))) ) ) # ( !\Processador|FD|BancoReg|registrador~22_q\ & ( 
-- (\Processador|FD|FETCH|ROM|memROM~1_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~32_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~92_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~32_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~92_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~22_q\,
	combout => \Processador|FD|BancoReg|registrador~182_combout\);

-- Location: LABCELL_X40_Y2_N54
\Processador|FD|ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~33_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~183_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~193_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~30\ ))
-- \Processador|FD|ULA|Add0~34\ = CARRY(( \Processador|FD|BancoReg|registrador~183_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~193_combout\)) ) + ( 
-- \Processador|FD|ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~193_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~183_combout\,
	cin => \Processador|FD|ULA|Add0~30\,
	sumout => \Processador|FD|ULA|Add0~33_sumout\,
	cout => \Processador|FD|ULA|Add0~34\);

-- Location: LABCELL_X41_Y3_N57
\Processador|FD|MUX_ULA|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\ = ( \Processador|FD|ULA|saida[8]~15_combout\ & ( \Processador|FD|ULA|Add0~33_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) ) # ( !\Processador|FD|ULA|saida[8]~15_combout\ & ( 
-- \Processador|FD|ULA|Add0~33_sumout\ & ( (\Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) ) ) # ( 
-- \Processador|FD|ULA|saida[8]~15_combout\ & ( !\Processador|FD|ULA|Add0~33_sumout\ & ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110000000100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datae => \Processador|FD|ULA|ALT_INV_saida[8]~15_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~33_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\);

-- Location: FF_X41_Y3_N58
\Processador|FD|BancoReg|registrador~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~173_q\);

-- Location: FF_X41_Y3_N46
\Processador|FD|BancoReg|registrador~23DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[8]~9_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~23DUPLICATE_q\);

-- Location: LABCELL_X41_Y3_N33
\Processador|FD|BancoReg|registrador~193\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~193_combout\ = ( \Processador|FD|FETCH|ROM|memROM~2_combout\ & ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~173_q\ ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~2_combout\ & ( 
-- \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~33_q\ ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~2_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~3_combout\ & ( \Processador|FD|BancoReg|registrador~23DUPLICATE_q\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~173_q\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~33_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~23DUPLICATE_q\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~193_combout\);

-- Location: FF_X40_Y3_N43
\Processador|FD|BancoReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~24_q\);

-- Location: FF_X40_Y2_N49
\Processador|FD|BancoReg|registrador~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~174_q\);

-- Location: LABCELL_X40_Y3_N54
\Processador|FD|BancoReg|registrador~194\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~194_combout\ = ( \Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~34_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- ((\Processador|FD|BancoReg|registrador~174_q\))) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & \Processador|FD|BancoReg|registrador~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~34_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~24_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~174_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~194_combout\);

-- Location: LABCELL_X40_Y2_N3
\Processador|FD|ULA|saida[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[9]~17_combout\ = ( \Processador|FD|BancoReg|registrador~194_combout\ & ( (!\Processador|UC|palavraControle[2]~0_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[3]~2_combout\)) # 
-- (\Processador|UC|palavraControle[4]~1_combout\ & ((!\Processador|FD|BancoReg|registrador~184_combout\))))) # (\Processador|UC|palavraControle[2]~0_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & 
-- ((\Processador|FD|BancoReg|registrador~184_combout\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~194_combout\ & ( (!\Processador|UC|palavraControle[4]~1_combout\ & (\Processador|UC|palavraControle[3]~2_combout\ & 
-- (\Processador|FD|BancoReg|registrador~184_combout\ & \Processador|UC|palavraControle[2]~0_combout\))) # (\Processador|UC|palavraControle[4]~1_combout\ & (((!\Processador|FD|BancoReg|registrador~184_combout\ & 
-- !\Processador|UC|palavraControle[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000100001100000000010001110100000001010111010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~184_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~194_combout\,
	combout => \Processador|FD|ULA|saida[9]~17_combout\);

-- Location: LABCELL_X40_Y2_N57
\Processador|FD|ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|Add0~37_sumout\ = SUM(( \Processador|FD|BancoReg|registrador~184_combout\ ) + ( (!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & !\Processador|FD|BancoReg|registrador~194_combout\)) ) 
-- + ( \Processador|FD|ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~184_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~194_combout\,
	cin => \Processador|FD|ULA|Add0~34\,
	sumout => \Processador|FD|ULA|Add0~37_sumout\);

-- Location: LABCELL_X40_Y2_N21
\Processador|FD|MUX_ULA|saida_MUX[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\ = ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ( \Processador|FD|ULA|Add0~37_sumout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # 
-- (\Processador|UC|palavraControle[2]~0_combout\)))) # (\Processador|FD|ULA|saida[9]~17_combout\) ) ) ) # ( \Processador|FD|MUX_ULA|saida_MUX[0]~0_combout\ & ( !\Processador|FD|ULA|Add0~37_sumout\ & ( \Processador|FD|ULA|saida[9]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000001010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[9]~17_combout\,
	datae => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~37_sumout\,
	combout => \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\);

-- Location: LABCELL_X39_Y2_N15
\Processador|FD|BancoReg|registrador~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~34feeder_combout\ = ( \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|MUX_ULA|ALT_INV_saida_MUX[9]~10_combout\,
	combout => \Processador|FD|BancoReg|registrador~34feeder_combout\);

-- Location: FF_X39_Y2_N16
\Processador|FD|BancoReg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~34feeder_combout\,
	ena => \Processador|FD|BancoReg|registrador~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~34_q\);

-- Location: FF_X40_Y3_N44
\Processador|FD|BancoReg|registrador~24DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~24DUPLICATE_q\);

-- Location: FF_X40_Y3_N59
\Processador|FD|BancoReg|registrador~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[9]~10_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~94_q\);

-- Location: LABCELL_X40_Y3_N57
\Processador|FD|BancoReg|registrador~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~184_combout\ = ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~34_q\)) # (\Processador|FD|FETCH|ROM|memROM~2_combout\ & 
-- ((\Processador|FD|BancoReg|registrador~94_q\))) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & \Processador|FD|BancoReg|registrador~24DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~34_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~24DUPLICATE_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~94_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|BancoReg|registrador~184_combout\);

-- Location: LABCELL_X40_Y3_N30
\Processador|FD|ULA|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~0_combout\ = ( \Processador|FD|BancoReg|registrador~194_combout\ & ( \Processador|FD|BancoReg|registrador~183_combout\ & ( (\Processador|FD|BancoReg|registrador~193_combout\ & 
-- \Processador|FD|BancoReg|registrador~184_combout\) ) ) ) # ( !\Processador|FD|BancoReg|registrador~194_combout\ & ( \Processador|FD|BancoReg|registrador~183_combout\ & ( (\Processador|FD|BancoReg|registrador~193_combout\ & 
-- !\Processador|FD|BancoReg|registrador~184_combout\) ) ) ) # ( \Processador|FD|BancoReg|registrador~194_combout\ & ( !\Processador|FD|BancoReg|registrador~183_combout\ & ( (!\Processador|FD|BancoReg|registrador~193_combout\ & 
-- \Processador|FD|BancoReg|registrador~184_combout\) ) ) ) # ( !\Processador|FD|BancoReg|registrador~194_combout\ & ( !\Processador|FD|BancoReg|registrador~183_combout\ & ( (!\Processador|FD|BancoReg|registrador~193_combout\ & 
-- !\Processador|FD|BancoReg|registrador~184_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~193_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~184_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~194_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~183_combout\,
	combout => \Processador|FD|ULA|LessThan0~0_combout\);

-- Location: LABCELL_X40_Y3_N18
\Processador|UC|palavraControle[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~6_combout\ = ( \Processador|FD|BancoReg|registrador~187_combout\ & ( (\Processador|FD|BancoReg|registrador~177_combout\ & (!\Processador|FD|BancoReg|registrador~188_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~178_combout\))) ) ) # ( !\Processador|FD|BancoReg|registrador~187_combout\ & ( (!\Processador|FD|BancoReg|registrador~177_combout\ & (!\Processador|FD|BancoReg|registrador~188_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~178_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~188_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~178_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~177_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~187_combout\,
	combout => \Processador|UC|palavraControle[8]~6_combout\);

-- Location: LABCELL_X41_Y3_N48
\Processador|UC|palavraControle[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~5_combout\ = ( \Processador|FD|BancoReg|registrador~192_combout\ & ( \Processador|FD|BancoReg|registrador~182_combout\ & ( !\Processador|FD|BancoReg|registrador~181_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~191_combout\) ) ) ) # ( !\Processador|FD|BancoReg|registrador~192_combout\ & ( !\Processador|FD|BancoReg|registrador~182_combout\ & ( !\Processador|FD|BancoReg|registrador~181_combout\ $ 
-- (\Processador|FD|BancoReg|registrador~191_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000000000000000000001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~181_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~191_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~192_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~182_combout\,
	combout => \Processador|UC|palavraControle[8]~5_combout\);

-- Location: LABCELL_X40_Y3_N21
\Processador|FD|ULA|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~2_combout\ = ( \Processador|FD|BancoReg|registrador~187_combout\ & ( (!\Processador|FD|BancoReg|registrador~178_combout\ & ((!\Processador|FD|BancoReg|registrador~177_combout\) # 
-- (\Processador|FD|BancoReg|registrador~188_combout\))) # (\Processador|FD|BancoReg|registrador~178_combout\ & (\Processador|FD|BancoReg|registrador~188_combout\ & !\Processador|FD|BancoReg|registrador~177_combout\)) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~187_combout\ & ( (!\Processador|FD|BancoReg|registrador~178_combout\ & \Processador|FD|BancoReg|registrador~188_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~178_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~188_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~177_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~187_combout\,
	combout => \Processador|FD|ULA|LessThan0~2_combout\);

-- Location: LABCELL_X41_Y2_N54
\Processador|FD|ULA|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~1_combout\ = ( \Processador|FD|BancoReg|registrador~175_combout\ & ( (\Processador|FD|BancoReg|registrador~186_combout\ & !\Processador|FD|BancoReg|registrador~176_combout\) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~175_combout\ & ( (!\Processador|FD|BancoReg|registrador~186_combout\ & (\Processador|FD|BancoReg|registrador~185_combout\ & !\Processador|FD|BancoReg|registrador~176_combout\)) # 
-- (\Processador|FD|BancoReg|registrador~186_combout\ & ((!\Processador|FD|BancoReg|registrador~176_combout\) # (\Processador|FD|BancoReg|registrador~185_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~186_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~176_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~175_combout\,
	combout => \Processador|FD|ULA|LessThan0~1_combout\);

-- Location: LABCELL_X40_Y3_N48
\Processador|FD|ULA|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~3_combout\ = ( \Processador|FD|ULA|LessThan0~2_combout\ & ( \Processador|FD|ULA|LessThan0~1_combout\ & ( (\Processador|UC|palavraControle[8]~7_combout\ & (\Processador|FD|ULA|LessThan0~0_combout\ & 
-- \Processador|UC|palavraControle[8]~5_combout\)) ) ) ) # ( !\Processador|FD|ULA|LessThan0~2_combout\ & ( \Processador|FD|ULA|LessThan0~1_combout\ & ( (\Processador|UC|palavraControle[8]~7_combout\ & (\Processador|FD|ULA|LessThan0~0_combout\ & 
-- (\Processador|UC|palavraControle[8]~6_combout\ & \Processador|UC|palavraControle[8]~5_combout\))) ) ) ) # ( \Processador|FD|ULA|LessThan0~2_combout\ & ( !\Processador|FD|ULA|LessThan0~1_combout\ & ( (\Processador|UC|palavraControle[8]~7_combout\ & 
-- (\Processador|FD|ULA|LessThan0~0_combout\ & \Processador|UC|palavraControle[8]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000100000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[8]~7_combout\,
	datab => \Processador|FD|ULA|ALT_INV_LessThan0~0_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[8]~6_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[8]~5_combout\,
	datae => \Processador|FD|ULA|ALT_INV_LessThan0~2_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_LessThan0~1_combout\,
	combout => \Processador|FD|ULA|LessThan0~3_combout\);

-- Location: LABCELL_X40_Y4_N18
\Processador|UC|palavraControle[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~4_combout\ = ( \Processador|UC|palavraControle[8]~3_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~12_combout\ & (!\Processador|FD|FETCH|ROM|memROM~11_combout\ & !\Processador|FD|FETCH|ROM|memROM~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~12_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~11_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~10_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[8]~3_combout\,
	combout => \Processador|UC|palavraControle[8]~4_combout\);

-- Location: LABCELL_X41_Y3_N42
\Processador|FD|ULA|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~6_combout\ = ( !\Processador|FD|BancoReg|registrador~183_combout\ & ( \Processador|FD|BancoReg|registrador~184_combout\ & ( (\Processador|FD|BancoReg|registrador~194_combout\ & 
-- \Processador|FD|BancoReg|registrador~193_combout\) ) ) ) # ( \Processador|FD|BancoReg|registrador~183_combout\ & ( !\Processador|FD|BancoReg|registrador~184_combout\ & ( \Processador|FD|BancoReg|registrador~194_combout\ ) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~183_combout\ & ( !\Processador|FD|BancoReg|registrador~184_combout\ & ( (\Processador|FD|BancoReg|registrador~193_combout\) # (\Processador|FD|BancoReg|registrador~194_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~194_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~193_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~183_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~184_combout\,
	combout => \Processador|FD|ULA|LessThan0~6_combout\);

-- Location: LABCELL_X40_Y3_N12
\Processador|FD|ULA|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~5_combout\ = ( \Processador|FD|BancoReg|registrador~180_combout\ & ( (\Processador|FD|BancoReg|registrador~189_combout\ & (!\Processador|FD|BancoReg|registrador~179_combout\ & 
-- \Processador|FD|BancoReg|registrador~190_combout\)) ) ) # ( !\Processador|FD|BancoReg|registrador~180_combout\ & ( ((\Processador|FD|BancoReg|registrador~189_combout\ & !\Processador|FD|BancoReg|registrador~179_combout\)) # 
-- (\Processador|FD|BancoReg|registrador~190_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111001100001111111100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|BancoReg|ALT_INV_registrador~189_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~179_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~190_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~180_combout\,
	combout => \Processador|FD|ULA|LessThan0~5_combout\);

-- Location: LABCELL_X41_Y2_N57
\Processador|FD|ULA|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~4_combout\ = ( \Processador|FD|BancoReg|registrador~181_combout\ & ( (\Processador|FD|BancoReg|registrador~192_combout\ & !\Processador|FD|BancoReg|registrador~182_combout\) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~181_combout\ & ( (!\Processador|FD|BancoReg|registrador~191_combout\ & (\Processador|FD|BancoReg|registrador~192_combout\ & !\Processador|FD|BancoReg|registrador~182_combout\)) # 
-- (\Processador|FD|BancoReg|registrador~191_combout\ & ((!\Processador|FD|BancoReg|registrador~182_combout\) # (\Processador|FD|BancoReg|registrador~192_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~191_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~192_combout\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~182_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~181_combout\,
	combout => \Processador|FD|ULA|LessThan0~4_combout\);

-- Location: LABCELL_X41_Y3_N27
\Processador|FD|ULA|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|LessThan0~7_combout\ = ( \Processador|FD|ULA|LessThan0~4_combout\ & ( (!\Processador|FD|ULA|LessThan0~0_combout\ & !\Processador|FD|ULA|LessThan0~6_combout\) ) ) # ( !\Processador|FD|ULA|LessThan0~4_combout\ & ( 
-- (!\Processador|FD|ULA|LessThan0~6_combout\ & ((!\Processador|FD|ULA|LessThan0~0_combout\) # ((!\Processador|UC|palavraControle[8]~5_combout\) # (!\Processador|FD|ULA|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|ULA|ALT_INV_LessThan0~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[8]~5_combout\,
	datac => \Processador|FD|ULA|ALT_INV_LessThan0~6_combout\,
	datad => \Processador|FD|ULA|ALT_INV_LessThan0~5_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_LessThan0~4_combout\,
	combout => \Processador|FD|ULA|LessThan0~7_combout\);

-- Location: LABCELL_X40_Y4_N36
\Processador|UC|palavraControle[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~9_combout\ = ( \Processador|FD|FETCH|ROM|memROM~5_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~7_combout\ & (\Processador|FD|FETCH|ROM|memROM~4_combout\ & (!\Processador|FD|FETCH|ROM|memROM~8_combout\ & 
-- !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~7_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~4_combout\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~8_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~5_combout\,
	combout => \Processador|UC|palavraControle[8]~9_combout\);

-- Location: LABCELL_X41_Y3_N18
\Processador|UC|palavraControle[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~10_combout\ = ( \Processador|FD|BancoReg|registrador~175_combout\ & ( \Processador|FD|BancoReg|registrador~176_combout\ & ( (\Processador|FD|BancoReg|registrador~186_combout\ & 
-- (\Processador|UC|palavraControle[8]~9_combout\ & \Processador|FD|BancoReg|registrador~185_combout\)) ) ) ) # ( !\Processador|FD|BancoReg|registrador~175_combout\ & ( \Processador|FD|BancoReg|registrador~176_combout\ & ( 
-- (\Processador|FD|BancoReg|registrador~186_combout\ & (\Processador|UC|palavraControle[8]~9_combout\ & !\Processador|FD|BancoReg|registrador~185_combout\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~175_combout\ & ( 
-- !\Processador|FD|BancoReg|registrador~176_combout\ & ( (!\Processador|FD|BancoReg|registrador~186_combout\ & (\Processador|UC|palavraControle[8]~9_combout\ & \Processador|FD|BancoReg|registrador~185_combout\)) ) ) ) # ( 
-- !\Processador|FD|BancoReg|registrador~175_combout\ & ( !\Processador|FD|BancoReg|registrador~176_combout\ & ( (!\Processador|FD|BancoReg|registrador~186_combout\ & (\Processador|UC|palavraControle[8]~9_combout\ & 
-- !\Processador|FD|BancoReg|registrador~185_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000100000001000010000000100000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~186_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[8]~9_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~175_combout\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~176_combout\,
	combout => \Processador|UC|palavraControle[8]~10_combout\);

-- Location: LABCELL_X41_Y3_N24
\Processador|UC|palavraControle[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~11_combout\ = ( \Processador|UC|palavraControle[8]~6_combout\ & ( (\Processador|FD|ULA|LessThan0~0_combout\ & (\Processador|UC|palavraControle[8]~5_combout\ & (\Processador|UC|palavraControle[8]~10_combout\ & 
-- \Processador|UC|palavraControle[8]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|ULA|ALT_INV_LessThan0~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[8]~5_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[8]~10_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[8]~7_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[8]~6_combout\,
	combout => \Processador|UC|palavraControle[8]~11_combout\);

-- Location: LABCELL_X41_Y3_N3
\Processador|UC|palavraControle[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|UC|palavraControle[8]~12_combout\ = ( \Processador|FD|ULA|LessThan0~7_combout\ & ( \Processador|UC|palavraControle[8]~11_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~10_combout\) # ((\Processador|UC|palavraControle[8]~4_combout\) # 
-- (\Processador|FD|ULA|LessThan0~3_combout\)) ) ) ) # ( !\Processador|FD|ULA|LessThan0~7_combout\ & ( \Processador|UC|palavraControle[8]~11_combout\ ) ) # ( \Processador|FD|ULA|LessThan0~7_combout\ & ( !\Processador|UC|palavraControle[8]~11_combout\ & ( 
-- ((\Processador|UC|palavraControle[8]~8_combout\ & \Processador|FD|ULA|LessThan0~3_combout\)) # (\Processador|UC|palavraControle[8]~4_combout\) ) ) ) # ( !\Processador|FD|ULA|LessThan0~7_combout\ & ( !\Processador|UC|palavraControle[8]~11_combout\ & ( 
-- (\Processador|UC|palavraControle[8]~4_combout\) # (\Processador|UC|palavraControle[8]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000111111111111111111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~10_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[8]~8_combout\,
	datac => \Processador|FD|ULA|ALT_INV_LessThan0~3_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[8]~4_combout\,
	datae => \Processador|FD|ULA|ALT_INV_LessThan0~7_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[8]~11_combout\,
	combout => \Processador|UC|palavraControle[8]~12_combout\);

-- Location: FF_X41_Y4_N56
\Processador|FD|FETCH|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~37_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(8));

-- Location: LABCELL_X41_Y4_N57
\Processador|FD|FETCH|SOMA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~17_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(9) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(9),
	cin => \Processador|FD|FETCH|SOMA|Add0~38\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~17_sumout\);

-- Location: FF_X41_Y4_N58
\Processador|FD|FETCH|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(9));

-- Location: LABCELL_X41_Y4_N24
\Processador|FD|FETCH|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~0_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(8) & ( !\Processador|FD|FETCH|PC|DOUT\(7) & ( (!\Processador|FD|FETCH|PC|DOUT\(9) & (!\Processador|FD|FETCH|PC|DOUT\(5) & (!\Processador|FD|FETCH|PC|DOUT\(6) & 
-- !\Processador|FD|FETCH|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(9),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(4),
	datae => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	combout => \Processador|FD|FETCH|ROM|memROM~0_combout\);

-- Location: MLABCELL_X42_Y2_N48
\Processador|FD|FETCH|ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~9_combout\ = (!\Processador|FD|FETCH|PC|DOUT\(2) & (!\Processador|FD|FETCH|PC|DOUT\(1) & (!\Processador|FD|FETCH|PC|DOUT\(3) & \Processador|FD|FETCH|ROM|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~9_combout\);

-- Location: FF_X41_Y4_N32
\Processador|FD|FETCH|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~1_sumout\,
	asdata => \Processador|FD|FETCH|ROM|memROM~9_combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(0));

-- Location: LABCELL_X41_Y4_N33
\Processador|FD|FETCH|SOMA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~5_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(1) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~2\ ))
-- \Processador|FD|FETCH|SOMA|Add0~6\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(1) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	cin => \Processador|FD|FETCH|SOMA|Add0~2\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~5_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~6\);

-- Location: FF_X41_Y4_N35
\Processador|FD|FETCH|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~5_sumout\,
	asdata => \Processador|FD|FETCH|ROM|memROM~10_combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(1));

-- Location: LABCELL_X41_Y4_N36
\Processador|FD|FETCH|SOMA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~9_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(2) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~6\ ))
-- \Processador|FD|FETCH|SOMA|Add0~10\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(2) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	cin => \Processador|FD|FETCH|SOMA|Add0~6\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~9_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~10\);

-- Location: FF_X41_Y4_N37
\Processador|FD|FETCH|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~9_sumout\,
	asdata => \Processador|FD|FETCH|ROM|memROM~11_combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(2));

-- Location: LABCELL_X41_Y4_N39
\Processador|FD|FETCH|SOMA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~13_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(3) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~10\ ))
-- \Processador|FD|FETCH|SOMA|Add0~14\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(3) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	cin => \Processador|FD|FETCH|SOMA|Add0~10\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~13_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~14\);

-- Location: FF_X41_Y4_N40
\Processador|FD|FETCH|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(3));

-- Location: LABCELL_X41_Y4_N42
\Processador|FD|FETCH|SOMA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~21_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(4) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~14\ ))
-- \Processador|FD|FETCH|SOMA|Add0~22\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(4) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(4),
	cin => \Processador|FD|FETCH|SOMA|Add0~14\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~21_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~22\);

-- Location: FF_X41_Y4_N44
\Processador|FD|FETCH|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(4));

-- Location: LABCELL_X41_Y4_N45
\Processador|FD|FETCH|SOMA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~25_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(5) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~22\ ))
-- \Processador|FD|FETCH|SOMA|Add0~26\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(5) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	cin => \Processador|FD|FETCH|SOMA|Add0~22\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~25_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~26\);

-- Location: FF_X41_Y4_N47
\Processador|FD|FETCH|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(5));

-- Location: LABCELL_X41_Y4_N48
\Processador|FD|FETCH|SOMA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~29_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(6) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~26\ ))
-- \Processador|FD|FETCH|SOMA|Add0~30\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(6) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	cin => \Processador|FD|FETCH|SOMA|Add0~26\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~29_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~30\);

-- Location: FF_X41_Y4_N50
\Processador|FD|FETCH|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(6));

-- Location: FF_X41_Y4_N53
\Processador|FD|FETCH|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|UC|palavraControle[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(7));

-- Location: LABCELL_X41_Y4_N9
\Processador|FD|FETCH|ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~15_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(0) & ( (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|FD|FETCH|PC|DOUT\(8) & (!\Processador|FD|FETCH|PC|DOUT\(1) $ (!\Processador|FD|FETCH|PC|DOUT\(2))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	combout => \Processador|FD|FETCH|ROM|memROM~15_combout\);

-- Location: LABCELL_X41_Y4_N0
\Processador|FD|FETCH|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~3_combout\ = ( !\Processador|FD|FETCH|PC|DOUT[9]~DUPLICATE_q\ & ( \Processador|FD|FETCH|ROM|memROM~15_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT\(7) & (!\Processador|FD|FETCH|PC|DOUT\(5) & 
-- (!\Processador|FD|FETCH|PC|DOUT\(6) & !\Processador|FD|FETCH|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(4),
	datae => \Processador|FD|FETCH|PC|ALT_INV_DOUT[9]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~15_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~3_combout\);

-- Location: FF_X42_Y2_N34
\Processador|FD|BancoReg|registrador~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_ULA|saida_MUX[0]~1_combout\,
	sload => VCC,
	ena => \Processador|FD|BancoReg|registrador~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~165_q\);

-- Location: LABCELL_X41_Y2_N30
\Processador|FD|BancoReg|registrador~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~185_combout\ = ( \Processador|FD|BancoReg|registrador~25_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~15_q\))) # 
-- (\Processador|FD|FETCH|ROM|memROM~3_combout\ & ((!\Processador|FD|FETCH|ROM|memROM~2_combout\) # ((\Processador|FD|BancoReg|registrador~165_q\)))) ) ) # ( !\Processador|FD|BancoReg|registrador~25_q\ & ( (!\Processador|FD|FETCH|ROM|memROM~3_combout\ & 
-- (!\Processador|FD|FETCH|ROM|memROM~2_combout\ & (\Processador|FD|BancoReg|registrador~15_q\))) # (\Processador|FD|FETCH|ROM|memROM~3_combout\ & (\Processador|FD|FETCH|ROM|memROM~2_combout\ & ((\Processador|FD|BancoReg|registrador~165_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~2_combout\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~15_q\,
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~165_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~25_q\,
	combout => \Processador|FD|BancoReg|registrador~185_combout\);

-- Location: LABCELL_X43_Y2_N18
\SEGU|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \SEGU|DOUT[0]~feeder_combout\ = ( \Processador|FD|BancoReg|registrador~185_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~185_combout\,
	combout => \SEGU|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X42_Y2_N51
\DECODER|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|Equal5~0_combout\ = ( \Processador|FD|FETCH|PC|DOUT\(3) ) # ( !\Processador|FD|FETCH|PC|DOUT\(3) & ( (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # ((!\Processador|FD|FETCH|PC|DOUT\(1) & (\Processador|FD|FETCH|PC|DOUT\(2))) # 
-- (\Processador|FD|FETCH|PC|DOUT\(1) & ((\Processador|FD|FETCH|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010011110111111101001111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	combout => \DECODER|Equal5~0_combout\);

-- Location: FF_X43_Y2_N20
\SEGU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \SEGU|DOUT[0]~feeder_combout\,
	ena => \DECODER|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGU|DOUT\(0));

-- Location: FF_X42_Y2_N25
\SEGU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~187_combout\,
	sload => VCC,
	ena => \DECODER|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGU|DOUT\(2));

-- Location: FF_X42_Y2_N55
\SEGU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~186_combout\,
	sload => VCC,
	ena => \DECODER|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGU|DOUT\(1));

-- Location: FF_X43_Y2_N14
\SEGU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~188_combout\,
	sload => VCC,
	ena => \DECODER|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGU|DOUT\(3));

-- Location: LABCELL_X43_Y2_N0
\showHEX0|saida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[0]~0_combout\ = ( \SEGU|DOUT\(3) & ( (\SEGU|DOUT\(1)) # (\SEGU|DOUT\(2)) ) ) # ( !\SEGU|DOUT\(3) & ( (!\SEGU|DOUT\(1) & (!\SEGU|DOUT\(0) $ (!\SEGU|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(0),
	datab => \SEGU|ALT_INV_DOUT\(2),
	datac => \SEGU|ALT_INV_DOUT\(1),
	dataf => \SEGU|ALT_INV_DOUT\(3),
	combout => \showHEX0|saida7seg[0]~0_combout\);

-- Location: LABCELL_X43_Y2_N6
\showHEX0|saida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[1]~1_combout\ = ( \SEGU|DOUT\(3) & ( (\SEGU|DOUT\(1)) # (\SEGU|DOUT\(2)) ) ) # ( !\SEGU|DOUT\(3) & ( (\SEGU|DOUT\(2) & (!\SEGU|DOUT\(0) $ (!\SEGU|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(0),
	datab => \SEGU|ALT_INV_DOUT\(2),
	datac => \SEGU|ALT_INV_DOUT\(1),
	dataf => \SEGU|ALT_INV_DOUT\(3),
	combout => \showHEX0|saida7seg[1]~1_combout\);

-- Location: LABCELL_X43_Y2_N51
\showHEX0|saida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[2]~2_combout\ = ( \SEGU|DOUT\(0) & ( (\SEGU|DOUT\(3) & ((\SEGU|DOUT\(2)) # (\SEGU|DOUT\(1)))) ) ) # ( !\SEGU|DOUT\(0) & ( (!\SEGU|DOUT\(2) & (\SEGU|DOUT\(1))) # (\SEGU|DOUT\(2) & ((\SEGU|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(1),
	datab => \SEGU|ALT_INV_DOUT\(3),
	datac => \SEGU|ALT_INV_DOUT\(2),
	dataf => \SEGU|ALT_INV_DOUT\(0),
	combout => \showHEX0|saida7seg[2]~2_combout\);

-- Location: LABCELL_X43_Y2_N42
\showHEX0|saida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[3]~3_combout\ = ( \SEGU|DOUT\(3) & ( (\SEGU|DOUT\(1)) # (\SEGU|DOUT\(2)) ) ) # ( !\SEGU|DOUT\(3) & ( (!\SEGU|DOUT\(0) & (\SEGU|DOUT\(2) & !\SEGU|DOUT\(1))) # (\SEGU|DOUT\(0) & (!\SEGU|DOUT\(2) $ (\SEGU|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(0),
	datab => \SEGU|ALT_INV_DOUT\(2),
	datac => \SEGU|ALT_INV_DOUT\(1),
	dataf => \SEGU|ALT_INV_DOUT\(3),
	combout => \showHEX0|saida7seg[3]~3_combout\);

-- Location: LABCELL_X43_Y2_N27
\showHEX0|saida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[4]~4_combout\ = ( \SEGU|DOUT\(0) ) # ( !\SEGU|DOUT\(0) & ( (!\SEGU|DOUT\(1) & ((\SEGU|DOUT\(2)))) # (\SEGU|DOUT\(1) & (\SEGU|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(1),
	datab => \SEGU|ALT_INV_DOUT\(3),
	datac => \SEGU|ALT_INV_DOUT\(2),
	dataf => \SEGU|ALT_INV_DOUT\(0),
	combout => \showHEX0|saida7seg[4]~4_combout\);

-- Location: LABCELL_X43_Y2_N54
\showHEX0|saida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[5]~5_combout\ = ( \SEGU|DOUT\(3) & ( (\SEGU|DOUT\(1)) # (\SEGU|DOUT\(2)) ) ) # ( !\SEGU|DOUT\(3) & ( (!\SEGU|DOUT\(0) & (!\SEGU|DOUT\(2) & \SEGU|DOUT\(1))) # (\SEGU|DOUT\(0) & ((!\SEGU|DOUT\(2)) # (\SEGU|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(0),
	datab => \SEGU|ALT_INV_DOUT\(2),
	datac => \SEGU|ALT_INV_DOUT\(1),
	dataf => \SEGU|ALT_INV_DOUT\(3),
	combout => \showHEX0|saida7seg[5]~5_combout\);

-- Location: LABCELL_X43_Y2_N39
\showHEX0|saida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX0|saida7seg[6]~6_combout\ = (!\SEGU|DOUT\(1) & (!\SEGU|DOUT\(3) $ ((\SEGU|DOUT\(2))))) # (\SEGU|DOUT\(1) & (((\SEGU|DOUT\(2) & \SEGU|DOUT\(0))) # (\SEGU|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001110010111100100111001011110010011100101111001001110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SEGU|ALT_INV_DOUT\(1),
	datab => \SEGU|ALT_INV_DOUT\(3),
	datac => \SEGU|ALT_INV_DOUT\(2),
	datad => \SEGU|ALT_INV_DOUT\(0),
	combout => \showHEX0|saida7seg[6]~6_combout\);

-- Location: LABCELL_X40_Y4_N3
\DECODER|habilitaHex[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER|habilitaHex[1]~0_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(1) & ( (\Processador|FD|FETCH|PC|DOUT\(0) & (!\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~0_combout\ & 
-- !\Processador|FD|FETCH|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	combout => \DECODER|habilitaHex[1]~0_combout\);

-- Location: FF_X41_Y2_N13
\SEGD|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~187_combout\,
	sload => VCC,
	ena => \DECODER|habilitaHex[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGD|DOUT\(2));

-- Location: FF_X43_Y2_N34
\SEGD|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~188_combout\,
	sload => VCC,
	ena => \DECODER|habilitaHex[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGD|DOUT\(3));

-- Location: FF_X41_Y2_N11
\SEGD|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~186_combout\,
	ena => \DECODER|habilitaHex[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGD|DOUT\(1));

-- Location: FF_X43_Y2_N37
\SEGD|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|BancoReg|registrador~185_combout\,
	sload => VCC,
	ena => \DECODER|habilitaHex[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEGD|DOUT\(0));

-- Location: LABCELL_X44_Y2_N51
\showHEX1|saida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[0]~0_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) & ( \SEGD|DOUT\(3) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) & ( !\SEGD|DOUT\(2) $ (\SEGD|DOUT\(3)) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( \SEGD|DOUT\(3) ) ) ) # ( 
-- !\SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( \SEGD|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111000011110000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(2),
	datac => \SEGD|ALT_INV_DOUT\(3),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(0),
	combout => \showHEX1|saida7seg[0]~0_combout\);

-- Location: LABCELL_X44_Y2_N18
\showHEX1|saida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[1]~1_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (!\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) & ( 
-- \SEGD|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(3),
	datac => \SEGD|ALT_INV_DOUT\(0),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(2),
	combout => \showHEX1|saida7seg[1]~1_combout\);

-- Location: LABCELL_X44_Y2_N39
\showHEX1|saida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[2]~2_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) & ( \SEGD|DOUT\(3) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) & ( (\SEGD|DOUT\(2) & \SEGD|DOUT\(3)) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( (!\SEGD|DOUT\(2)) # 
-- (\SEGD|DOUT\(3)) ) ) ) # ( !\SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( (\SEGD|DOUT\(2) & \SEGD|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(2),
	datac => \SEGD|ALT_INV_DOUT\(3),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(0),
	combout => \showHEX1|saida7seg[2]~2_combout\);

-- Location: LABCELL_X44_Y2_N54
\showHEX1|saida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[3]~3_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (!\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) & ( 
-- \SEGD|DOUT\(3) ) ) ) # ( !\SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) & ( (!\SEGD|DOUT\(3) & \SEGD|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001111110011111100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(3),
	datac => \SEGD|ALT_INV_DOUT\(0),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(2),
	combout => \showHEX1|saida7seg[3]~3_combout\);

-- Location: LABCELL_X44_Y2_N27
\showHEX1|saida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[4]~4_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(0) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( \SEGD|DOUT\(3) ) ) ) # ( !\SEGD|DOUT\(1) & ( !\SEGD|DOUT\(0) & ( \SEGD|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(2),
	datac => \SEGD|ALT_INV_DOUT\(3),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(0),
	combout => \showHEX1|saida7seg[4]~4_combout\);

-- Location: LABCELL_X44_Y2_N6
\showHEX1|saida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[5]~5_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( \SEGD|DOUT\(3) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) ) ) # ( !\SEGD|DOUT\(1) & ( 
-- !\SEGD|DOUT\(2) & ( (!\SEGD|DOUT\(3) & \SEGD|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(3),
	datac => \SEGD|ALT_INV_DOUT\(0),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(2),
	combout => \showHEX1|saida7seg[5]~5_combout\);

-- Location: LABCELL_X44_Y2_N0
\showHEX1|saida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \showHEX1|saida7seg[6]~6_combout\ = ( \SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( (\SEGD|DOUT\(0)) # (\SEGD|DOUT\(3)) ) ) ) # ( !\SEGD|DOUT\(1) & ( \SEGD|DOUT\(2) & ( \SEGD|DOUT\(3) ) ) ) # ( \SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) & ( \SEGD|DOUT\(3) ) ) ) # ( 
-- !\SEGD|DOUT\(1) & ( !\SEGD|DOUT\(2) & ( !\SEGD|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100110011001100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SEGD|ALT_INV_DOUT\(3),
	datac => \SEGD|ALT_INV_DOUT\(0),
	datae => \SEGD|ALT_INV_DOUT\(1),
	dataf => \SEGD|ALT_INV_DOUT\(2),
	combout => \showHEX1|saida7seg[6]~6_combout\);

-- Location: MLABCELL_X42_Y2_N42
\Processador|FD|ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[1]~2_combout\ = ( \Processador|FD|ULA|Add0~5_sumout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) # 
-- (\Processador|FD|ULA|saida[1]~1_combout\) ) ) # ( !\Processador|FD|ULA|Add0~5_sumout\ & ( \Processador|FD|ULA|saida[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110001010111111111000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[1]~1_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~5_sumout\,
	combout => \Processador|FD|ULA|saida[1]~2_combout\);

-- Location: MLABCELL_X42_Y2_N36
\Processador|FD|ULA|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[2]~4_combout\ = ( \Processador|FD|ULA|Add0~9_sumout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) # 
-- (\Processador|FD|ULA|saida[2]~3_combout\) ) ) # ( !\Processador|FD|ULA|Add0~9_sumout\ & ( \Processador|FD|ULA|saida[2]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111010000111111111101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[2]~3_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~9_sumout\,
	combout => \Processador|FD|ULA|saida[2]~4_combout\);

-- Location: MLABCELL_X42_Y2_N30
\Processador|FD|ULA|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[3]~6_combout\ = ( \Processador|UC|palavraControle[2]~0_combout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|ULA|Add0~13_sumout\)) # (\Processador|FD|ULA|saida[3]~5_combout\) ) ) # ( 
-- !\Processador|UC|palavraControle[2]~0_combout\ & ( ((!\Processador|UC|palavraControle[4]~1_combout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|ULA|Add0~13_sumout\))) # (\Processador|FD|ULA|saida[3]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111010101010101011101010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|ULA|ALT_INV_saida[3]~5_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datad => \Processador|FD|ULA|ALT_INV_Add0~13_sumout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	combout => \Processador|FD|ULA|saida[3]~6_combout\);

-- Location: LABCELL_X41_Y2_N51
\Processador|FD|ULA|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[4]~8_combout\ = ( \Processador|FD|ULA|Add0~17_sumout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) # 
-- (\Processador|FD|ULA|saida[4]~7_combout\) ) ) # ( !\Processador|FD|ULA|Add0~17_sumout\ & ( \Processador|FD|ULA|saida[4]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110111111000011111011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|FD|ULA|ALT_INV_saida[4]~7_combout\,
	datad => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~17_sumout\,
	combout => \Processador|FD|ULA|saida[4]~8_combout\);

-- Location: MLABCELL_X42_Y2_N39
\Processador|FD|ULA|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[5]~10_combout\ = ( \Processador|UC|palavraControle[3]~2_combout\ & ( \Processador|FD|ULA|saida[5]~9_combout\ ) ) # ( !\Processador|UC|palavraControle[3]~2_combout\ & ( ((\Processador|FD|ULA|Add0~21_sumout\ & 
-- ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) # (\Processador|FD|ULA|saida[5]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111111111000011011111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|ULA|ALT_INV_Add0~21_sumout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[5]~9_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	combout => \Processador|FD|ULA|saida[5]~10_combout\);

-- Location: MLABCELL_X42_Y2_N45
\Processador|FD|ULA|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[6]~12_combout\ = ( \Processador|UC|palavraControle[2]~0_combout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & \Processador|FD|ULA|Add0~25_sumout\)) # (\Processador|FD|ULA|saida[6]~11_combout\) ) ) # ( 
-- !\Processador|UC|palavraControle[2]~0_combout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & (!\Processador|UC|palavraControle[4]~1_combout\ & \Processador|FD|ULA|Add0~25_sumout\))) # (\Processador|FD|ULA|saida[6]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111111000010001111111100001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datac => \Processador|FD|ULA|ALT_INV_Add0~25_sumout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[6]~11_combout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	combout => \Processador|FD|ULA|saida[6]~12_combout\);

-- Location: LABCELL_X41_Y2_N18
\Processador|FD|ULA|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[7]~14_combout\ = ( \Processador|FD|ULA|saida[7]~13_combout\ ) # ( !\Processador|FD|ULA|saida[7]~13_combout\ & ( (\Processador|FD|ULA|Add0~29_sumout\ & (!\Processador|UC|palavraControle[3]~2_combout\ & 
-- ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100000000000010110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|FD|ULA|ALT_INV_Add0~29_sumout\,
	datad => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_saida[7]~13_combout\,
	combout => \Processador|FD|ULA|saida[7]~14_combout\);

-- Location: LABCELL_X41_Y3_N9
\Processador|FD|ULA|saida[8]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[8]~16_combout\ = ( \Processador|FD|ULA|Add0~33_sumout\ & ( ((!\Processador|UC|palavraControle[3]~2_combout\ & ((!\Processador|UC|palavraControle[4]~1_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)))) # 
-- (\Processador|FD|ULA|saida[8]~15_combout\) ) ) # ( !\Processador|FD|ULA|Add0~33_sumout\ & ( \Processador|FD|ULA|saida[8]~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111000100111111111100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	datac => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datad => \Processador|FD|ULA|ALT_INV_saida[8]~15_combout\,
	dataf => \Processador|FD|ULA|ALT_INV_Add0~33_sumout\,
	combout => \Processador|FD|ULA|saida[8]~16_combout\);

-- Location: LABCELL_X39_Y2_N42
\Processador|FD|ULA|saida[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|ULA|saida[9]~18_combout\ = ( \Processador|FD|ULA|Add0~37_sumout\ & ( \Processador|UC|palavraControle[3]~2_combout\ & ( \Processador|FD|ULA|saida[9]~17_combout\ ) ) ) # ( !\Processador|FD|ULA|Add0~37_sumout\ & ( 
-- \Processador|UC|palavraControle[3]~2_combout\ & ( \Processador|FD|ULA|saida[9]~17_combout\ ) ) ) # ( \Processador|FD|ULA|Add0~37_sumout\ & ( !\Processador|UC|palavraControle[3]~2_combout\ & ( (!\Processador|UC|palavraControle[4]~1_combout\) # 
-- ((\Processador|FD|ULA|saida[9]~17_combout\) # (\Processador|UC|palavraControle[2]~0_combout\)) ) ) ) # ( !\Processador|FD|ULA|Add0~37_sumout\ & ( !\Processador|UC|palavraControle[3]~2_combout\ & ( \Processador|FD|ULA|saida[9]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101111111011111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|UC|ALT_INV_palavraControle[4]~1_combout\,
	datab => \Processador|UC|ALT_INV_palavraControle[2]~0_combout\,
	datac => \Processador|FD|ULA|ALT_INV_saida[9]~17_combout\,
	datae => \Processador|FD|ULA|ALT_INV_Add0~37_sumout\,
	dataf => \Processador|UC|ALT_INV_palavraControle[3]~2_combout\,
	combout => \Processador|FD|ULA|saida[9]~18_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


