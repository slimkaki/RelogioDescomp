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

-- DATE "10/20/2020 17:15:34"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	entrada_A : OUT std_logic_vector(9 DOWNTO 0);
	entrada_B : OUT std_logic_vector(9 DOWNTO 0);
	saida_ULA : OUT std_logic_vector(9 DOWNTO 0);
	tictic : OUT std_logic_vector(9 DOWNTO 0);
	dataout : OUT std_logic_vector(9 DOWNTO 0);
	barEndSaida : OUT std_logic_vector(9 DOWNTO 0);
	tic_r : OUT std_logic;
	tic_z : OUT std_logic;
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
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[4]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[6]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_A[9]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[3]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_B[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[0]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[3]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_ULA[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tictic[9]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[9]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[4]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[8]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barEndSaida[9]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tic_r	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tic_z	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[8]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_entrada_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_entrada_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_saida_ULA : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_tictic : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dataout : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_barEndSaida : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_tic_r : std_logic;
SIGNAL ww_tic_z : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[8]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~2\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~26\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[7]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~22\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~6\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~50\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~46\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~42\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~70\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~38\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~34\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~30\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~98\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~94\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[18]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~90\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~86\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~82\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~78\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~74\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~66\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[14]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~10\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~18\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~14\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~58\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|contador[4]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~54\ : std_logic;
SIGNAL \TICTAC|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \TICTAC|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|tick~q\ : std_logic;
SIGNAL \TICTAC|registraUmSegundo|DOUT~feeder_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~2\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~6\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~10\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~14\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~18\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~22\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~26\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~30\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~34\ : std_logic;
SIGNAL \Processador|FD|FETCH|SOMA|Add0~37_sumout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~0_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~1_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~3_combout\ : std_logic;
SIGNAL \TICTAC|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~15_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~16_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~17_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~18feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~18_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~19DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~20_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~21feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~21_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~22feeder_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~22_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~23_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~24_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|memROM~2_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~25_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~175_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~26_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~176_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~27_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~177_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~28_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~178_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~29_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~19_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~179_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~30_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~180_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~31_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~181_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~32_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~182_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~33_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~183_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~34_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|registrador~184_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \TICTAC|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[18]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[4]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[14]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_contador[8]~DUPLICATE_q\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \TICTAC|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|FD|BancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|FD|FETCH|PC|ALT_INV_DOUT\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \TICTAC|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);

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
LEDR <= ww_LEDR;
entrada_A <= ww_entrada_A;
entrada_B <= ww_entrada_B;
saida_ULA <= ww_saida_ULA;
tictic <= ww_tictic;
dataout <= ww_dataout;
barEndSaida <= ww_barEndSaida;
tic_r <= ww_tic_r;
tic_z <= ww_tic_z;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[18]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[18]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[19]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[4]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[4]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[10]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[14]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[14]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[7]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_contador[8]~DUPLICATE_q\ <= NOT \TICTAC|baseTempo|contador[8]~DUPLICATE_q\;
\TICTAC|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \TICTAC|baseTempo|Equal0~3_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \TICTAC|baseTempo|Equal0~2_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \TICTAC|baseTempo|Equal0~1_combout\;
\TICTAC|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \TICTAC|baseTempo|Equal0~0_combout\;
\TICTAC|baseTempo|ALT_INV_tick~q\ <= NOT \TICTAC|baseTempo|tick~q\;
\Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~3_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~34_q\ <= NOT \Processador|FD|BancoReg|registrador~34_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~33_q\ <= NOT \Processador|FD|BancoReg|registrador~33_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~32_q\ <= NOT \Processador|FD|BancoReg|registrador~32_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~31_q\ <= NOT \Processador|FD|BancoReg|registrador~31_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~30_q\ <= NOT \Processador|FD|BancoReg|registrador~30_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~29_q\ <= NOT \Processador|FD|BancoReg|registrador~29_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~28_q\ <= NOT \Processador|FD|BancoReg|registrador~28_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~27_q\ <= NOT \Processador|FD|BancoReg|registrador~27_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~26_q\ <= NOT \Processador|FD|BancoReg|registrador~26_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~25_q\ <= NOT \Processador|FD|BancoReg|registrador~25_q\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~1_combout\;
\Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\ <= NOT \Processador|FD|FETCH|ROM|memROM~0_combout\;
\Processador|FD|BancoReg|ALT_INV_registrador~24_q\ <= NOT \Processador|FD|BancoReg|registrador~24_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~23_q\ <= NOT \Processador|FD|BancoReg|registrador~23_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~22_q\ <= NOT \Processador|FD|BancoReg|registrador~22_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~21_q\ <= NOT \Processador|FD|BancoReg|registrador~21_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~20_q\ <= NOT \Processador|FD|BancoReg|registrador~20_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~19_q\ <= NOT \Processador|FD|BancoReg|registrador~19_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~18_q\ <= NOT \Processador|FD|BancoReg|registrador~18_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~17_q\ <= NOT \Processador|FD|BancoReg|registrador~17_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~16_q\ <= NOT \Processador|FD|BancoReg|registrador~16_q\;
\Processador|FD|BancoReg|ALT_INV_registrador~15_q\ <= NOT \Processador|FD|BancoReg|registrador~15_q\;
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(9) <= NOT \Processador|FD|FETCH|PC|DOUT\(9);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(8) <= NOT \Processador|FD|FETCH|PC|DOUT\(8);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(7) <= NOT \Processador|FD|FETCH|PC|DOUT\(7);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(6) <= NOT \Processador|FD|FETCH|PC|DOUT\(6);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(5) <= NOT \Processador|FD|FETCH|PC|DOUT\(5);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(4) <= NOT \Processador|FD|FETCH|PC|DOUT\(4);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(3) <= NOT \Processador|FD|FETCH|PC|DOUT\(3);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(2) <= NOT \Processador|FD|FETCH|PC|DOUT\(2);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(1) <= NOT \Processador|FD|FETCH|PC|DOUT\(1);
\Processador|FD|FETCH|PC|ALT_INV_DOUT\(0) <= NOT \Processador|FD|FETCH|PC|DOUT\(0);
\TICTAC|baseTempo|ALT_INV_contador\(16) <= NOT \TICTAC|baseTempo|contador\(16);
\TICTAC|baseTempo|ALT_INV_contador\(17) <= NOT \TICTAC|baseTempo|contador\(17);
\TICTAC|baseTempo|ALT_INV_contador\(18) <= NOT \TICTAC|baseTempo|contador\(18);
\TICTAC|baseTempo|ALT_INV_contador\(19) <= NOT \TICTAC|baseTempo|contador\(19);
\TICTAC|baseTempo|ALT_INV_contador\(20) <= NOT \TICTAC|baseTempo|contador\(20);
\TICTAC|baseTempo|ALT_INV_contador\(21) <= NOT \TICTAC|baseTempo|contador\(21);
\TICTAC|baseTempo|ALT_INV_contador\(22) <= NOT \TICTAC|baseTempo|contador\(22);
\TICTAC|baseTempo|ALT_INV_contador\(12) <= NOT \TICTAC|baseTempo|contador\(12);
\TICTAC|baseTempo|ALT_INV_contador\(23) <= NOT \TICTAC|baseTempo|contador\(23);
\TICTAC|baseTempo|ALT_INV_contador\(24) <= NOT \TICTAC|baseTempo|contador\(24);
\TICTAC|baseTempo|ALT_INV_contador\(3) <= NOT \TICTAC|baseTempo|contador\(3);
\TICTAC|baseTempo|ALT_INV_contador\(4) <= NOT \TICTAC|baseTempo|contador\(4);
\TICTAC|baseTempo|ALT_INV_contador\(9) <= NOT \TICTAC|baseTempo|contador\(9);
\TICTAC|baseTempo|ALT_INV_contador\(10) <= NOT \TICTAC|baseTempo|contador\(10);
\TICTAC|baseTempo|ALT_INV_contador\(11) <= NOT \TICTAC|baseTempo|contador\(11);
\TICTAC|baseTempo|ALT_INV_contador\(13) <= NOT \TICTAC|baseTempo|contador\(13);
\TICTAC|baseTempo|ALT_INV_contador\(14) <= NOT \TICTAC|baseTempo|contador\(14);
\TICTAC|baseTempo|ALT_INV_contador\(15) <= NOT \TICTAC|baseTempo|contador\(15);
\TICTAC|baseTempo|ALT_INV_contador\(6) <= NOT \TICTAC|baseTempo|contador\(6);
\TICTAC|baseTempo|ALT_INV_contador\(7) <= NOT \TICTAC|baseTempo|contador\(7);
\TICTAC|baseTempo|ALT_INV_contador\(1) <= NOT \TICTAC|baseTempo|contador\(1);
\TICTAC|baseTempo|ALT_INV_contador\(2) <= NOT \TICTAC|baseTempo|contador\(2);
\TICTAC|baseTempo|ALT_INV_contador\(0) <= NOT \TICTAC|baseTempo|contador\(0);
\TICTAC|baseTempo|ALT_INV_contador\(8) <= NOT \TICTAC|baseTempo|contador\(8);
\TICTAC|baseTempo|ALT_INV_contador\(5) <= NOT \TICTAC|baseTempo|contador\(5);

-- Location: IOOBUF_X54_Y20_N39
\tictic[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TICTAC|registraUmSegundo|DOUT~q\,
	oe => GND,
	devoe => ww_devoe,
	o => ww_tictic(0));

-- Location: IOOBUF_X43_Y45_N2
\tictic[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(1));

-- Location: IOOBUF_X24_Y0_N53
\tictic[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(2));

-- Location: IOOBUF_X20_Y45_N2
\tictic[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(3));

-- Location: IOOBUF_X42_Y45_N2
\tictic[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(4));

-- Location: IOOBUF_X54_Y14_N79
\tictic[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(5));

-- Location: IOOBUF_X42_Y45_N19
\tictic[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(6));

-- Location: IOOBUF_X16_Y45_N93
\tictic[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(7));

-- Location: IOOBUF_X38_Y45_N36
\tictic[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(8));

-- Location: IOOBUF_X54_Y14_N96
\tictic[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_tictic(9));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X8_Y45_N59
\entrada_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~15_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(0));

-- Location: IOOBUF_X11_Y0_N2
\entrada_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~16_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(1));

-- Location: IOOBUF_X10_Y0_N42
\entrada_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~17_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(2));

-- Location: IOOBUF_X54_Y20_N5
\entrada_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~18_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(3));

-- Location: IOOBUF_X54_Y20_N56
\entrada_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~19DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(4));

-- Location: IOOBUF_X12_Y0_N19
\entrada_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~20_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(5));

-- Location: IOOBUF_X54_Y20_N22
\entrada_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~21_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(6));

-- Location: IOOBUF_X11_Y0_N19
\entrada_A[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~22_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(7));

-- Location: IOOBUF_X8_Y45_N42
\entrada_A[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~23_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(8));

-- Location: IOOBUF_X12_Y0_N36
\entrada_A[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~24_q\,
	devoe => ww_devoe,
	o => ww_entrada_A(9));

-- Location: IOOBUF_X23_Y0_N93
\entrada_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(0));

-- Location: IOOBUF_X54_Y19_N56
\entrada_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(1));

-- Location: IOOBUF_X12_Y45_N2
\entrada_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(2));

-- Location: IOOBUF_X20_Y45_N53
\entrada_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~178_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(3));

-- Location: IOOBUF_X12_Y0_N2
\entrada_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~179_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(4));

-- Location: IOOBUF_X14_Y45_N36
\entrada_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(5));

-- Location: IOOBUF_X54_Y18_N79
\entrada_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~181_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(6));

-- Location: IOOBUF_X54_Y16_N22
\entrada_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~182_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(7));

-- Location: IOOBUF_X10_Y45_N2
\entrada_B[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~183_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(8));

-- Location: IOOBUF_X16_Y45_N59
\entrada_B[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~184_combout\,
	devoe => ww_devoe,
	o => ww_entrada_B(9));

-- Location: IOOBUF_X23_Y0_N76
\saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(0));

-- Location: IOOBUF_X54_Y19_N22
\saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(1));

-- Location: IOOBUF_X10_Y45_N19
\saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(2));

-- Location: IOOBUF_X18_Y45_N19
\saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~178_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(3));

-- Location: IOOBUF_X14_Y0_N36
\saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~179_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(4));

-- Location: IOOBUF_X14_Y45_N19
\saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(5));

-- Location: IOOBUF_X54_Y18_N96
\saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~181_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(6));

-- Location: IOOBUF_X54_Y16_N56
\saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~182_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(7));

-- Location: IOOBUF_X10_Y45_N53
\saida_ULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~183_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(8));

-- Location: IOOBUF_X18_Y45_N53
\saida_ULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~184_combout\,
	devoe => ww_devoe,
	o => ww_saida_ULA(9));

-- Location: IOOBUF_X19_Y0_N2
\dataout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~175_combout\,
	devoe => ww_devoe,
	o => ww_dataout(0));

-- Location: IOOBUF_X54_Y19_N5
\dataout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~176_combout\,
	devoe => ww_devoe,
	o => ww_dataout(1));

-- Location: IOOBUF_X12_Y45_N36
\dataout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~177_combout\,
	devoe => ww_devoe,
	o => ww_dataout(2));

-- Location: IOOBUF_X20_Y45_N19
\dataout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~178_combout\,
	devoe => ww_devoe,
	o => ww_dataout(3));

-- Location: IOOBUF_X14_Y0_N53
\dataout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~179_combout\,
	devoe => ww_devoe,
	o => ww_dataout(4));

-- Location: IOOBUF_X14_Y45_N53
\dataout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~180_combout\,
	devoe => ww_devoe,
	o => ww_dataout(5));

-- Location: IOOBUF_X54_Y18_N62
\dataout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~181_combout\,
	devoe => ww_devoe,
	o => ww_dataout(6));

-- Location: IOOBUF_X54_Y17_N56
\dataout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~182_combout\,
	devoe => ww_devoe,
	o => ww_dataout(7));

-- Location: IOOBUF_X10_Y45_N36
\dataout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~183_combout\,
	devoe => ww_devoe,
	o => ww_dataout(8));

-- Location: IOOBUF_X18_Y45_N2
\dataout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|BancoReg|registrador~184_combout\,
	devoe => ww_devoe,
	o => ww_dataout(9));

-- Location: IOOBUF_X12_Y0_N53
\barEndSaida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_barEndSaida(0));

-- Location: IOOBUF_X16_Y0_N59
\barEndSaida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_barEndSaida(1));

-- Location: IOOBUF_X16_Y0_N93
\barEndSaida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_barEndSaida(2));

-- Location: IOOBUF_X29_Y0_N53
\barEndSaida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(3));

-- Location: IOOBUF_X44_Y45_N53
\barEndSaida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(4));

-- Location: IOOBUF_X18_Y45_N36
\barEndSaida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(5));

-- Location: IOOBUF_X22_Y45_N2
\barEndSaida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(6));

-- Location: IOOBUF_X43_Y45_N36
\barEndSaida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(7));

-- Location: IOOBUF_X46_Y45_N59
\barEndSaida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(8));

-- Location: IOOBUF_X20_Y45_N36
\barEndSaida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_barEndSaida(9));

-- Location: IOOBUF_X32_Y45_N93
\tic_r~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_tic_r);

-- Location: IOOBUF_X16_Y0_N76
\tic_z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_tic_z);

-- Location: IOOBUF_X0_Y21_N22
\pc[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc(0));

-- Location: IOOBUF_X54_Y18_N45
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X11_Y0_N53
\pc[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc(3));

-- Location: IOOBUF_X54_Y19_N39
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X8_Y45_N76
\pc[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc(7));

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X0_Y20_N5
\pc[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|FD|FETCH|PC|DOUT\(9),
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

-- Location: LABCELL_X16_Y4_N30
\TICTAC|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~9_sumout\ = SUM(( \TICTAC|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \TICTAC|baseTempo|Add0~10\ = CARRY(( \TICTAC|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \TICTAC|baseTempo|Add0~9_sumout\,
	cout => \TICTAC|baseTempo|Add0~10\);

-- Location: FF_X16_Y4_N56
\TICTAC|baseTempo|contador[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~5_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[8]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N45
\TICTAC|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~1_sumout\ = SUM(( \TICTAC|baseTempo|contador\(5) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~54\ ))
-- \TICTAC|baseTempo|Add0~2\ = CARRY(( \TICTAC|baseTempo|contador\(5) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(5),
	cin => \TICTAC|baseTempo|Add0~54\,
	sumout => \TICTAC|baseTempo|Add0~1_sumout\,
	cout => \TICTAC|baseTempo|Add0~2\);

-- Location: LABCELL_X16_Y4_N48
\TICTAC|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~25_sumout\ = SUM(( \TICTAC|baseTempo|contador\(6) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~2\ ))
-- \TICTAC|baseTempo|Add0~26\ = CARRY(( \TICTAC|baseTempo|contador\(6) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(6),
	cin => \TICTAC|baseTempo|Add0~2\,
	sumout => \TICTAC|baseTempo|Add0~25_sumout\,
	cout => \TICTAC|baseTempo|Add0~26\);

-- Location: FF_X16_Y4_N50
\TICTAC|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~25_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(6));

-- Location: LABCELL_X16_Y4_N51
\TICTAC|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~21_sumout\ = SUM(( \TICTAC|baseTempo|contador[7]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~26\ ))
-- \TICTAC|baseTempo|Add0~22\ = CARRY(( \TICTAC|baseTempo|contador[7]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[7]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~26\,
	sumout => \TICTAC|baseTempo|Add0~21_sumout\,
	cout => \TICTAC|baseTempo|Add0~22\);

-- Location: FF_X16_Y4_N52
\TICTAC|baseTempo|contador[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~21_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[7]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N54
\TICTAC|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~5_sumout\ = SUM(( \TICTAC|baseTempo|contador[8]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~22\ ))
-- \TICTAC|baseTempo|Add0~6\ = CARRY(( \TICTAC|baseTempo|contador[8]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[8]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~22\,
	sumout => \TICTAC|baseTempo|Add0~5_sumout\,
	cout => \TICTAC|baseTempo|Add0~6\);

-- Location: FF_X16_Y4_N55
\TICTAC|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~5_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(8));

-- Location: FF_X16_Y4_N53
\TICTAC|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~21_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(7));

-- Location: LABCELL_X16_Y4_N24
\TICTAC|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~0_combout\ = ( !\TICTAC|baseTempo|contador\(2) & ( !\TICTAC|baseTempo|contador\(7) & ( (!\TICTAC|baseTempo|contador\(1) & (!\TICTAC|baseTempo|contador\(8) & (\TICTAC|baseTempo|contador\(6) & !\TICTAC|baseTempo|contador\(0)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(1),
	datab => \TICTAC|baseTempo|ALT_INV_contador\(8),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(6),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(0),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(2),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(7),
	combout => \TICTAC|baseTempo|Equal0~0_combout\);

-- Location: LABCELL_X16_Y4_N57
\TICTAC|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~49_sumout\ = SUM(( \TICTAC|baseTempo|contador\(9) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~6\ ))
-- \TICTAC|baseTempo|Add0~50\ = CARRY(( \TICTAC|baseTempo|contador\(9) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(9),
	cin => \TICTAC|baseTempo|Add0~6\,
	sumout => \TICTAC|baseTempo|Add0~49_sumout\,
	cout => \TICTAC|baseTempo|Add0~50\);

-- Location: FF_X16_Y4_N59
\TICTAC|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~49_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(9));

-- Location: LABCELL_X16_Y3_N0
\TICTAC|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~45_sumout\ = SUM(( \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~50\ ))
-- \TICTAC|baseTempo|Add0~46\ = CARRY(( \TICTAC|baseTempo|contador[10]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[10]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~50\,
	sumout => \TICTAC|baseTempo|Add0~45_sumout\,
	cout => \TICTAC|baseTempo|Add0~46\);

-- Location: FF_X16_Y3_N2
\TICTAC|baseTempo|contador[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~45_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[10]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N3
\TICTAC|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~41_sumout\ = SUM(( \TICTAC|baseTempo|contador\(11) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~46\ ))
-- \TICTAC|baseTempo|Add0~42\ = CARRY(( \TICTAC|baseTempo|contador\(11) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(11),
	cin => \TICTAC|baseTempo|Add0~46\,
	sumout => \TICTAC|baseTempo|Add0~41_sumout\,
	cout => \TICTAC|baseTempo|Add0~42\);

-- Location: FF_X16_Y3_N5
\TICTAC|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~41_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(11));

-- Location: LABCELL_X16_Y3_N6
\TICTAC|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~69_sumout\ = SUM(( \TICTAC|baseTempo|contador\(12) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~42\ ))
-- \TICTAC|baseTempo|Add0~70\ = CARRY(( \TICTAC|baseTempo|contador\(12) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(12),
	cin => \TICTAC|baseTempo|Add0~42\,
	sumout => \TICTAC|baseTempo|Add0~69_sumout\,
	cout => \TICTAC|baseTempo|Add0~70\);

-- Location: FF_X16_Y3_N7
\TICTAC|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~69_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(12));

-- Location: LABCELL_X16_Y3_N9
\TICTAC|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~37_sumout\ = SUM(( \TICTAC|baseTempo|contador\(13) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~70\ ))
-- \TICTAC|baseTempo|Add0~38\ = CARRY(( \TICTAC|baseTempo|contador\(13) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(13),
	cin => \TICTAC|baseTempo|Add0~70\,
	sumout => \TICTAC|baseTempo|Add0~37_sumout\,
	cout => \TICTAC|baseTempo|Add0~38\);

-- Location: FF_X16_Y3_N11
\TICTAC|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~37_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(13));

-- Location: LABCELL_X16_Y3_N12
\TICTAC|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~33_sumout\ = SUM(( \TICTAC|baseTempo|contador\(14) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~38\ ))
-- \TICTAC|baseTempo|Add0~34\ = CARRY(( \TICTAC|baseTempo|contador\(14) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(14),
	cin => \TICTAC|baseTempo|Add0~38\,
	sumout => \TICTAC|baseTempo|Add0~33_sumout\,
	cout => \TICTAC|baseTempo|Add0~34\);

-- Location: FF_X16_Y3_N14
\TICTAC|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~33_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(14));

-- Location: LABCELL_X16_Y3_N15
\TICTAC|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~29_sumout\ = SUM(( \TICTAC|baseTempo|contador\(15) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~34\ ))
-- \TICTAC|baseTempo|Add0~30\ = CARRY(( \TICTAC|baseTempo|contador\(15) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(15),
	cin => \TICTAC|baseTempo|Add0~34\,
	sumout => \TICTAC|baseTempo|Add0~29_sumout\,
	cout => \TICTAC|baseTempo|Add0~30\);

-- Location: FF_X16_Y3_N17
\TICTAC|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~29_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(15));

-- Location: LABCELL_X16_Y3_N18
\TICTAC|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~97_sumout\ = SUM(( \TICTAC|baseTempo|contador\(16) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~30\ ))
-- \TICTAC|baseTempo|Add0~98\ = CARRY(( \TICTAC|baseTempo|contador\(16) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(16),
	cin => \TICTAC|baseTempo|Add0~30\,
	sumout => \TICTAC|baseTempo|Add0~97_sumout\,
	cout => \TICTAC|baseTempo|Add0~98\);

-- Location: FF_X16_Y3_N20
\TICTAC|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~97_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(16));

-- Location: LABCELL_X16_Y3_N21
\TICTAC|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~93_sumout\ = SUM(( \TICTAC|baseTempo|contador\(17) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~98\ ))
-- \TICTAC|baseTempo|Add0~94\ = CARRY(( \TICTAC|baseTempo|contador\(17) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(17),
	cin => \TICTAC|baseTempo|Add0~98\,
	sumout => \TICTAC|baseTempo|Add0~93_sumout\,
	cout => \TICTAC|baseTempo|Add0~94\);

-- Location: FF_X16_Y3_N23
\TICTAC|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~93_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(17));

-- Location: LABCELL_X16_Y3_N24
\TICTAC|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~89_sumout\ = SUM(( \TICTAC|baseTempo|contador[18]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~94\ ))
-- \TICTAC|baseTempo|Add0~90\ = CARRY(( \TICTAC|baseTempo|contador[18]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador[18]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~94\,
	sumout => \TICTAC|baseTempo|Add0~89_sumout\,
	cout => \TICTAC|baseTempo|Add0~90\);

-- Location: FF_X16_Y3_N26
\TICTAC|baseTempo|contador[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~89_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[18]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N27
\TICTAC|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~85_sumout\ = SUM(( \TICTAC|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~90\ ))
-- \TICTAC|baseTempo|Add0~86\ = CARRY(( \TICTAC|baseTempo|contador[19]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[19]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~90\,
	sumout => \TICTAC|baseTempo|Add0~85_sumout\,
	cout => \TICTAC|baseTempo|Add0~86\);

-- Location: FF_X16_Y3_N29
\TICTAC|baseTempo|contador[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~85_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[19]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N30
\TICTAC|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~81_sumout\ = SUM(( \TICTAC|baseTempo|contador\(20) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~86\ ))
-- \TICTAC|baseTempo|Add0~82\ = CARRY(( \TICTAC|baseTempo|contador\(20) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(20),
	cin => \TICTAC|baseTempo|Add0~86\,
	sumout => \TICTAC|baseTempo|Add0~81_sumout\,
	cout => \TICTAC|baseTempo|Add0~82\);

-- Location: FF_X16_Y3_N32
\TICTAC|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~81_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(20));

-- Location: LABCELL_X16_Y3_N33
\TICTAC|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~77_sumout\ = SUM(( \TICTAC|baseTempo|contador\(21) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~82\ ))
-- \TICTAC|baseTempo|Add0~78\ = CARRY(( \TICTAC|baseTempo|contador\(21) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(21),
	cin => \TICTAC|baseTempo|Add0~82\,
	sumout => \TICTAC|baseTempo|Add0~77_sumout\,
	cout => \TICTAC|baseTempo|Add0~78\);

-- Location: FF_X16_Y3_N35
\TICTAC|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~77_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(21));

-- Location: FF_X16_Y3_N28
\TICTAC|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~85_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(19));

-- Location: FF_X16_Y3_N25
\TICTAC|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~89_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(18));

-- Location: LABCELL_X16_Y3_N48
\TICTAC|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~3_combout\ = ( !\TICTAC|baseTempo|contador\(17) & ( \TICTAC|baseTempo|contador\(20) & ( (\TICTAC|baseTempo|contador\(21) & (\TICTAC|baseTempo|contador\(19) & (\TICTAC|baseTempo|contador\(16) & \TICTAC|baseTempo|contador\(18)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(21),
	datab => \TICTAC|baseTempo|ALT_INV_contador\(19),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(16),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(18),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(17),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(20),
	combout => \TICTAC|baseTempo|Equal0~3_combout\);

-- Location: LABCELL_X16_Y3_N36
\TICTAC|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~73_sumout\ = SUM(( \TICTAC|baseTempo|contador\(22) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~78\ ))
-- \TICTAC|baseTempo|Add0~74\ = CARRY(( \TICTAC|baseTempo|contador\(22) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(22),
	cin => \TICTAC|baseTempo|Add0~78\,
	sumout => \TICTAC|baseTempo|Add0~73_sumout\,
	cout => \TICTAC|baseTempo|Add0~74\);

-- Location: FF_X16_Y3_N38
\TICTAC|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~73_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(22));

-- Location: LABCELL_X16_Y3_N39
\TICTAC|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~65_sumout\ = SUM(( \TICTAC|baseTempo|contador\(23) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~74\ ))
-- \TICTAC|baseTempo|Add0~66\ = CARRY(( \TICTAC|baseTempo|contador\(23) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(23),
	cin => \TICTAC|baseTempo|Add0~74\,
	sumout => \TICTAC|baseTempo|Add0~65_sumout\,
	cout => \TICTAC|baseTempo|Add0~66\);

-- Location: FF_X16_Y3_N40
\TICTAC|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~65_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(23));

-- Location: FF_X16_Y4_N44
\TICTAC|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~53_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(4));

-- Location: LABCELL_X16_Y3_N42
\TICTAC|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~61_sumout\ = SUM(( \TICTAC|baseTempo|contador\(24) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(24),
	cin => \TICTAC|baseTempo|Add0~66\,
	sumout => \TICTAC|baseTempo|Add0~61_sumout\);

-- Location: FF_X16_Y3_N43
\TICTAC|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~61_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(24));

-- Location: LABCELL_X16_Y4_N0
\TICTAC|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~2_combout\ = ( \TICTAC|baseTempo|contador\(22) & ( \TICTAC|baseTempo|contador\(24) & ( (\TICTAC|baseTempo|contador\(12) & (!\TICTAC|baseTempo|contador\(3) & (!\TICTAC|baseTempo|contador\(23) & !\TICTAC|baseTempo|contador\(4)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(12),
	datab => \TICTAC|baseTempo|ALT_INV_contador\(3),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(23),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(4),
	datae => \TICTAC|baseTempo|ALT_INV_contador\(22),
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(24),
	combout => \TICTAC|baseTempo|Equal0~2_combout\);

-- Location: FF_X16_Y3_N13
\TICTAC|baseTempo|contador[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~33_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[14]~DUPLICATE_q\);

-- Location: FF_X16_Y3_N1
\TICTAC|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~45_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(10));

-- Location: LABCELL_X16_Y4_N18
\TICTAC|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~1_combout\ = ( \TICTAC|baseTempo|contador[14]~DUPLICATE_q\ & ( !\TICTAC|baseTempo|contador\(10) & ( (\TICTAC|baseTempo|contador\(11) & (!\TICTAC|baseTempo|contador\(15) & (\TICTAC|baseTempo|contador\(13) & 
-- !\TICTAC|baseTempo|contador\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(11),
	datab => \TICTAC|baseTempo|ALT_INV_contador\(15),
	datac => \TICTAC|baseTempo|ALT_INV_contador\(13),
	datad => \TICTAC|baseTempo|ALT_INV_contador\(9),
	datae => \TICTAC|baseTempo|ALT_INV_contador[14]~DUPLICATE_q\,
	dataf => \TICTAC|baseTempo|ALT_INV_contador\(10),
	combout => \TICTAC|baseTempo|Equal0~1_combout\);

-- Location: LABCELL_X16_Y4_N12
\TICTAC|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Equal0~4_combout\ = ( \TICTAC|baseTempo|Equal0~2_combout\ & ( \TICTAC|baseTempo|Equal0~1_combout\ & ( (!\TICTAC|baseTempo|contador\(5) & (\TICTAC|baseTempo|Equal0~0_combout\ & \TICTAC|baseTempo|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \TICTAC|baseTempo|ALT_INV_contador\(5),
	datac => \TICTAC|baseTempo|ALT_INV_Equal0~0_combout\,
	datad => \TICTAC|baseTempo|ALT_INV_Equal0~3_combout\,
	datae => \TICTAC|baseTempo|ALT_INV_Equal0~2_combout\,
	dataf => \TICTAC|baseTempo|ALT_INV_Equal0~1_combout\,
	combout => \TICTAC|baseTempo|Equal0~4_combout\);

-- Location: FF_X16_Y4_N32
\TICTAC|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~9_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(0));

-- Location: LABCELL_X16_Y4_N33
\TICTAC|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~17_sumout\ = SUM(( \TICTAC|baseTempo|contador\(1) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~10\ ))
-- \TICTAC|baseTempo|Add0~18\ = CARRY(( \TICTAC|baseTempo|contador\(1) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(1),
	cin => \TICTAC|baseTempo|Add0~10\,
	sumout => \TICTAC|baseTempo|Add0~17_sumout\,
	cout => \TICTAC|baseTempo|Add0~18\);

-- Location: FF_X16_Y4_N35
\TICTAC|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~17_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(1));

-- Location: LABCELL_X16_Y4_N36
\TICTAC|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~13_sumout\ = SUM(( \TICTAC|baseTempo|contador\(2) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~18\ ))
-- \TICTAC|baseTempo|Add0~14\ = CARRY(( \TICTAC|baseTempo|contador\(2) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador\(2),
	cin => \TICTAC|baseTempo|Add0~18\,
	sumout => \TICTAC|baseTempo|Add0~13_sumout\,
	cout => \TICTAC|baseTempo|Add0~14\);

-- Location: FF_X16_Y4_N38
\TICTAC|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~13_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(2));

-- Location: LABCELL_X16_Y4_N39
\TICTAC|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~57_sumout\ = SUM(( \TICTAC|baseTempo|contador\(3) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~14\ ))
-- \TICTAC|baseTempo|Add0~58\ = CARRY(( \TICTAC|baseTempo|contador\(3) ) + ( GND ) + ( \TICTAC|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \TICTAC|baseTempo|ALT_INV_contador\(3),
	cin => \TICTAC|baseTempo|Add0~14\,
	sumout => \TICTAC|baseTempo|Add0~57_sumout\,
	cout => \TICTAC|baseTempo|Add0~58\);

-- Location: FF_X16_Y4_N41
\TICTAC|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~57_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(3));

-- Location: LABCELL_X16_Y4_N42
\TICTAC|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|Add0~53_sumout\ = SUM(( \TICTAC|baseTempo|contador[4]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~58\ ))
-- \TICTAC|baseTempo|Add0~54\ = CARRY(( \TICTAC|baseTempo|contador[4]~DUPLICATE_q\ ) + ( GND ) + ( \TICTAC|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \TICTAC|baseTempo|ALT_INV_contador[4]~DUPLICATE_q\,
	cin => \TICTAC|baseTempo|Add0~58\,
	sumout => \TICTAC|baseTempo|Add0~53_sumout\,
	cout => \TICTAC|baseTempo|Add0~54\);

-- Location: FF_X16_Y4_N43
\TICTAC|baseTempo|contador[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~53_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador[4]~DUPLICATE_q\);

-- Location: FF_X16_Y4_N47
\TICTAC|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \TICTAC|baseTempo|Add0~1_sumout\,
	sclr => \TICTAC|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|baseTempo|contador\(5));

-- Location: LABCELL_X16_Y4_N6
\TICTAC|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TICTAC|baseTempo|tick~0_combout\ = ( \TICTAC|baseTempo|Equal0~2_combout\ & ( \TICTAC|baseTempo|Equal0~1_combout\ & ( !\TICTAC|baseTempo|tick~q\ $ ((((!\TICTAC|baseTempo|Equal0~0_combout\) # (!\TICTAC|baseTempo|Equal0~3_combout\)) # 
-- (\TICTAC|baseTempo|contador\(5)))) ) ) ) # ( !\TICTAC|baseTempo|Equal0~2_combout\ & ( \TICTAC|baseTempo|Equal0~1_combout\ & ( \TICTAC|baseTempo|tick~q\ ) ) ) # ( \TICTAC|baseTempo|Equal0~2_combout\ & ( !\TICTAC|baseTempo|Equal0~1_combout\ & ( 
-- \TICTAC|baseTempo|tick~q\ ) ) ) # ( !\TICTAC|baseTempo|Equal0~2_combout\ & ( !\TICTAC|baseTempo|Equal0~1_combout\ & ( \TICTAC|baseTempo|tick~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TICTAC|baseTempo|ALT_INV_contador\(5),
	datab => \TICTAC|baseTempo|ALT_INV_tick~q\,
	datac => \TICTAC|baseTempo|ALT_INV_Equal0~0_combout\,
	datad => \TICTAC|baseTempo|ALT_INV_Equal0~3_combout\,
	datae => \TICTAC|baseTempo|ALT_INV_Equal0~2_combout\,
	dataf => \TICTAC|baseTempo|ALT_INV_Equal0~1_combout\,
	combout => \TICTAC|baseTempo|tick~0_combout\);

-- Location: FF_X16_Y4_N17
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

-- Location: LABCELL_X1_Y20_N0
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

-- Location: LABCELL_X1_Y20_N30
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

-- Location: FF_X1_Y20_N31
\Processador|FD|FETCH|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(0));

-- Location: LABCELL_X1_Y20_N33
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

-- Location: FF_X1_Y20_N34
\Processador|FD|FETCH|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(1));

-- Location: LABCELL_X1_Y20_N36
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

-- Location: FF_X1_Y20_N38
\Processador|FD|FETCH|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(2));

-- Location: LABCELL_X1_Y20_N39
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

-- Location: FF_X1_Y20_N41
\Processador|FD|FETCH|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(3));

-- Location: LABCELL_X1_Y20_N42
\Processador|FD|FETCH|SOMA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~17_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(4) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~14\ ))
-- \Processador|FD|FETCH|SOMA|Add0~18\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(4) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(4),
	cin => \Processador|FD|FETCH|SOMA|Add0~14\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~17_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~18\);

-- Location: FF_X1_Y20_N44
\Processador|FD|FETCH|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(4));

-- Location: FF_X1_Y20_N32
\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y20_N45
\Processador|FD|FETCH|SOMA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~21_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(5) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~18\ ))
-- \Processador|FD|FETCH|SOMA|Add0~22\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(5) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	cin => \Processador|FD|FETCH|SOMA|Add0~18\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~21_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~22\);

-- Location: FF_X1_Y20_N47
\Processador|FD|FETCH|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(5));

-- Location: LABCELL_X1_Y20_N48
\Processador|FD|FETCH|SOMA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~25_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(6) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~22\ ))
-- \Processador|FD|FETCH|SOMA|Add0~26\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(6) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	cin => \Processador|FD|FETCH|SOMA|Add0~22\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~25_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~26\);

-- Location: FF_X1_Y20_N49
\Processador|FD|FETCH|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(6));

-- Location: LABCELL_X1_Y20_N51
\Processador|FD|FETCH|SOMA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~29_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(7) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~26\ ))
-- \Processador|FD|FETCH|SOMA|Add0~30\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(7) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	cin => \Processador|FD|FETCH|SOMA|Add0~26\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~29_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~30\);

-- Location: FF_X1_Y20_N53
\Processador|FD|FETCH|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(7));

-- Location: LABCELL_X1_Y20_N54
\Processador|FD|FETCH|SOMA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~33_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(8) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~30\ ))
-- \Processador|FD|FETCH|SOMA|Add0~34\ = CARRY(( \Processador|FD|FETCH|PC|DOUT\(8) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	cin => \Processador|FD|FETCH|SOMA|Add0~30\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~33_sumout\,
	cout => \Processador|FD|FETCH|SOMA|Add0~34\);

-- Location: FF_X1_Y20_N56
\Processador|FD|FETCH|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(8));

-- Location: LABCELL_X1_Y20_N57
\Processador|FD|FETCH|SOMA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|SOMA|Add0~37_sumout\ = SUM(( \Processador|FD|FETCH|PC|DOUT\(9) ) + ( GND ) + ( \Processador|FD|FETCH|SOMA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(9),
	cin => \Processador|FD|FETCH|SOMA|Add0~34\,
	sumout => \Processador|FD|FETCH|SOMA|Add0~37_sumout\);

-- Location: FF_X1_Y20_N59
\Processador|FD|FETCH|PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT\(9));

-- Location: LABCELL_X1_Y20_N6
\Processador|FD|FETCH|ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~0_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(6) & ( (!\Processador|FD|FETCH|PC|DOUT\(8) & (!\Processador|FD|FETCH|PC|DOUT\(5) & (!\Processador|FD|FETCH|PC|DOUT\(7) & !\Processador|FD|FETCH|PC|DOUT\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(8),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(5),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(7),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(9),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(6),
	combout => \Processador|FD|FETCH|ROM|memROM~0_combout\);

-- Location: LABCELL_X1_Y20_N9
\Processador|FD|FETCH|ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~1_combout\ = ( !\Processador|FD|FETCH|PC|DOUT\(1) & ( (!\Processador|FD|FETCH|PC|DOUT\(3) & !\Processador|FD|FETCH|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(3),
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(1),
	combout => \Processador|FD|FETCH|ROM|memROM~1_combout\);

-- Location: LABCELL_X1_Y20_N15
\Processador|FD|FETCH|ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~3_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT\(4) & \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(4),
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~3_combout\);

-- Location: FF_X1_Y20_N1
\TICTAC|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \TICTAC|baseTempo|tick~q\,
	d => \TICTAC|registraUmSegundo|DOUT~feeder_combout\,
	clrn => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TICTAC|registraUmSegundo|DOUT~q\);

-- Location: FF_X1_Y20_N40
\Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X1_Y20_N43
\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X1_Y20_N52
\Processador|FD|FETCH|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|SOMA|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|FETCH|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X2_Y20_N36
\Processador|FD|MUX_imed_ram|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & !\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	combout => \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\);

-- Location: FF_X2_Y20_N38
\Processador|FD|BancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~15_q\);

-- Location: FF_X2_Y20_N25
\Processador|FD|BancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~16_q\);

-- Location: FF_X2_Y20_N40
\Processador|FD|BancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~17_q\);

-- Location: LABCELL_X2_Y20_N27
\Processador|FD|BancoReg|registrador~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~18feeder_combout\ = ( \Processador|FD|FETCH|ROM|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~18feeder_combout\);

-- Location: FF_X2_Y20_N28
\Processador|FD|BancoReg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~18feeder_combout\,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~18_q\);

-- Location: FF_X2_Y20_N49
\Processador|FD|BancoReg|registrador~19DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~19DUPLICATE_q\);

-- Location: FF_X2_Y20_N7
\Processador|FD|BancoReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~20_q\);

-- Location: LABCELL_X2_Y20_N9
\Processador|FD|BancoReg|registrador~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~21feeder_combout\ = ( \Processador|FD|FETCH|ROM|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~21feeder_combout\);

-- Location: FF_X2_Y20_N10
\Processador|FD|BancoReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~21feeder_combout\,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~21_q\);

-- Location: LABCELL_X2_Y20_N51
\Processador|FD|BancoReg|registrador~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~22feeder_combout\ = ( \Processador|FD|FETCH|ROM|memROM~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~3_combout\,
	combout => \Processador|FD|BancoReg|registrador~22feeder_combout\);

-- Location: FF_X2_Y20_N52
\Processador|FD|BancoReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|BancoReg|registrador~22feeder_combout\,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~22_q\);

-- Location: FF_X2_Y20_N19
\Processador|FD|BancoReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~23_q\);

-- Location: FF_X2_Y20_N22
\Processador|FD|BancoReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~24_q\);

-- Location: LABCELL_X1_Y20_N3
\Processador|FD|FETCH|ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|FETCH|ROM|memROM~2_combout\ = ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~0_combout\ & !\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|FETCH|ROM|memROM~2_combout\);

-- Location: FF_X2_Y20_N2
\Processador|FD|BancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|MUX_imed_ram|saida_MUX[0]~0_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~25_q\);

-- Location: LABCELL_X2_Y20_N0
\Processador|FD|BancoReg|registrador~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~175_combout\ = ( \Processador|FD|BancoReg|registrador~25_q\ & ( \Processador|FD|BancoReg|registrador~15_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~25_q\ & ( \Processador|FD|BancoReg|registrador~15_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (((!\Processador|FD|FETCH|PC|DOUT\(0)) # (!\Processador|FD|FETCH|ROM|memROM~1_combout\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~25_q\ & ( 
-- !\Processador|FD|BancoReg|registrador~15_q\ & ( (\Processador|FD|FETCH|ROM|memROM~0_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|PC|DOUT\(0) & \Processador|FD|FETCH|ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~25_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~15_q\,
	combout => \Processador|FD|BancoReg|registrador~175_combout\);

-- Location: FF_X2_Y20_N35
\Processador|FD|BancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~26_q\);

-- Location: LABCELL_X2_Y20_N33
\Processador|FD|BancoReg|registrador~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~176_combout\ = ( \Processador|FD|BancoReg|registrador~26_q\ & ( \Processador|FD|BancoReg|registrador~16_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~26_q\ & ( \Processador|FD|BancoReg|registrador~16_q\ & ( 
-- (!\Processador|FD|FETCH|PC|DOUT\(0)) # ((!\Processador|FD|FETCH|ROM|memROM~1_combout\) # ((!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \Processador|FD|BancoReg|registrador~26_q\ & ( 
-- !\Processador|FD|BancoReg|registrador~16_q\ & ( (\Processador|FD|FETCH|PC|DOUT\(0) & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & \Processador|FD|FETCH|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~26_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~16_q\,
	combout => \Processador|FD|BancoReg|registrador~176_combout\);

-- Location: FF_X1_Y20_N29
\Processador|FD|BancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~27_q\);

-- Location: LABCELL_X1_Y20_N27
\Processador|FD|BancoReg|registrador~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~177_combout\ = ( \Processador|FD|BancoReg|registrador~27_q\ & ( \Processador|FD|BancoReg|registrador~17_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~27_q\ & ( \Processador|FD|BancoReg|registrador~17_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\) # (((!\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\) # (!\Processador|FD|FETCH|ROM|memROM~0_combout\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~27_q\ & 
-- ( !\Processador|FD|BancoReg|registrador~17_q\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\ & \Processador|FD|FETCH|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~27_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~17_q\,
	combout => \Processador|FD|BancoReg|registrador~177_combout\);

-- Location: FF_X2_Y20_N44
\Processador|FD|BancoReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~28_q\);

-- Location: LABCELL_X2_Y20_N42
\Processador|FD|BancoReg|registrador~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~178_combout\ = ( \Processador|FD|BancoReg|registrador~28_q\ & ( \Processador|FD|BancoReg|registrador~18_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~28_q\ & ( \Processador|FD|BancoReg|registrador~18_q\ & ( 
-- (!\Processador|FD|FETCH|PC|DOUT\(0)) # (((!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (!\Processador|FD|FETCH|ROM|memROM~1_combout\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~28_q\ & ( 
-- !\Processador|FD|BancoReg|registrador~18_q\ & ( (\Processador|FD|FETCH|PC|DOUT\(0) & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~0_combout\ & \Processador|FD|FETCH|ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~28_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~18_q\,
	combout => \Processador|FD|BancoReg|registrador~178_combout\);

-- Location: FF_X2_Y20_N17
\Processador|FD|BancoReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~29_q\);

-- Location: FF_X2_Y20_N50
\Processador|FD|BancoReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|MUX_imed_ram|ALT_INV_saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~19_q\);

-- Location: LABCELL_X2_Y20_N15
\Processador|FD|BancoReg|registrador~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~179_combout\ = ( \Processador|FD|BancoReg|registrador~29_q\ & ( \Processador|FD|BancoReg|registrador~19_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~29_q\ & ( \Processador|FD|BancoReg|registrador~19_q\ & ( 
-- (!\Processador|FD|FETCH|PC|DOUT\(0)) # ((!\Processador|FD|FETCH|ROM|memROM~1_combout\) # ((!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\))) ) ) ) # ( \Processador|FD|BancoReg|registrador~29_q\ & ( 
-- !\Processador|FD|BancoReg|registrador~19_q\ & ( (\Processador|FD|FETCH|PC|DOUT\(0) & (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & \Processador|FD|FETCH|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000011111111111011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datab => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~29_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~19_q\,
	combout => \Processador|FD|BancoReg|registrador~179_combout\);

-- Location: FF_X1_Y20_N26
\Processador|FD|BancoReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~30_q\);

-- Location: LABCELL_X1_Y20_N24
\Processador|FD|BancoReg|registrador~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~180_combout\ = ( \Processador|FD|BancoReg|registrador~30_q\ & ( \Processador|FD|BancoReg|registrador~20_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~30_q\ & ( \Processador|FD|BancoReg|registrador~20_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\) # (((!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (!\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~30_q\ & 
-- ( !\Processador|FD|BancoReg|registrador~20_q\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~0_combout\ & \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~30_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~20_q\,
	combout => \Processador|FD|BancoReg|registrador~180_combout\);

-- Location: FF_X1_Y20_N20
\Processador|FD|BancoReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~31_q\);

-- Location: LABCELL_X1_Y20_N18
\Processador|FD|BancoReg|registrador~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~181_combout\ = ( \Processador|FD|BancoReg|registrador~31_q\ & ( \Processador|FD|BancoReg|registrador~21_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~31_q\ & ( \Processador|FD|BancoReg|registrador~21_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\) # (((!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (!\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~31_q\ & 
-- ( !\Processador|FD|BancoReg|registrador~21_q\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|ROM|memROM~0_combout\ & \Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~31_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~21_q\,
	combout => \Processador|FD|BancoReg|registrador~181_combout\);

-- Location: FF_X1_Y20_N13
\Processador|FD|BancoReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~32_q\);

-- Location: LABCELL_X2_Y20_N54
\Processador|FD|BancoReg|registrador~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~182_combout\ = ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & ((!\Processador|FD|FETCH|PC|DOUT\(0) & 
-- ((\Processador|FD|BancoReg|registrador~22_q\))) # (\Processador|FD|FETCH|PC|DOUT\(0) & (\Processador|FD|BancoReg|registrador~32_q\)))) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (((\Processador|FD|BancoReg|registrador~22_q\)))) ) ) ) # ( 
-- !\Processador|FD|FETCH|ROM|memROM~0_combout\ & ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( \Processador|FD|BancoReg|registrador~22_q\ ) ) ) # ( \Processador|FD|FETCH|ROM|memROM~0_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~1_combout\ & ( 
-- \Processador|FD|BancoReg|registrador~22_q\ ) ) ) # ( !\Processador|FD|FETCH|ROM|memROM~0_combout\ & ( !\Processador|FD|FETCH|ROM|memROM~1_combout\ & ( \Processador|FD|BancoReg|registrador~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|BancoReg|ALT_INV_registrador~32_q\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datad => \Processador|FD|BancoReg|ALT_INV_registrador~22_q\,
	datae => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|BancoReg|registrador~182_combout\);

-- Location: FF_X1_Y20_N23
\Processador|FD|BancoReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	sload => VCC,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~33_q\);

-- Location: LABCELL_X1_Y20_N21
\Processador|FD|BancoReg|registrador~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~183_combout\ = ( \Processador|FD|BancoReg|registrador~33_q\ & ( \Processador|FD|BancoReg|registrador~23_q\ ) ) # ( !\Processador|FD|BancoReg|registrador~33_q\ & ( \Processador|FD|BancoReg|registrador~23_q\ & ( 
-- (!\Processador|FD|FETCH|ROM|memROM~1_combout\) # (((!\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\) # (!\Processador|FD|FETCH|ROM|memROM~0_combout\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \Processador|FD|BancoReg|registrador~33_q\ & 
-- ( !\Processador|FD|BancoReg|registrador~23_q\ & ( (\Processador|FD|FETCH|ROM|memROM~1_combout\ & (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|FETCH|PC|DOUT[0]~DUPLICATE_q\ & \Processador|FD|FETCH|ROM|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010011111111111110111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|FETCH|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~33_q\,
	dataf => \Processador|FD|BancoReg|ALT_INV_registrador~23_q\,
	combout => \Processador|FD|BancoReg|registrador~183_combout\);

-- Location: FF_X1_Y20_N17
\Processador|FD|BancoReg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Processador|FD|FETCH|ROM|memROM~3_combout\,
	ena => \Processador|FD|FETCH|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|FD|BancoReg|registrador~34_q\);

-- Location: LABCELL_X2_Y20_N21
\Processador|FD|BancoReg|registrador~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|FD|BancoReg|registrador~184_combout\ = ( \Processador|FD|BancoReg|registrador~24_q\ & ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (!\Processador|FD|FETCH|ROM|memROM~0_combout\) # (((!\Processador|FD|FETCH|PC|DOUT\(0)) # 
-- (\Processador|FD|BancoReg|registrador~34_q\)) # (\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( !\Processador|FD|BancoReg|registrador~24_q\ & ( \Processador|FD|FETCH|ROM|memROM~1_combout\ & ( (\Processador|FD|FETCH|ROM|memROM~0_combout\ & 
-- (!\Processador|FD|FETCH|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|FD|BancoReg|registrador~34_q\ & \Processador|FD|FETCH|PC|DOUT\(0)))) ) ) ) # ( \Processador|FD|BancoReg|registrador~24_q\ & ( !\Processador|FD|FETCH|ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001001111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|FD|FETCH|ROM|ALT_INV_memROM~0_combout\,
	datab => \Processador|FD|FETCH|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|FD|BancoReg|ALT_INV_registrador~34_q\,
	datad => \Processador|FD|FETCH|PC|ALT_INV_DOUT\(0),
	datae => \Processador|FD|BancoReg|ALT_INV_registrador~24_q\,
	dataf => \Processador|FD|FETCH|ROM|ALT_INV_memROM~1_combout\,
	combout => \Processador|FD|BancoReg|registrador~184_combout\);

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

-- Location: MLABCELL_X45_Y23_N3
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


