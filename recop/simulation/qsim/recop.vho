-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/10/2024 12:50:03"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	progCounterTest IS
    PORT (
	out_count : OUT std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	z : IN std_logic;
	alu_count : IN std_logic_vector(15 DOWNTO 0);
	increment : IN std_logic_vector(2 DOWNTO 0);
	operand_count : IN std_logic_vector(15 DOWNTO 0);
	rx_count : IN std_logic_vector(15 DOWNTO 0);
	rz_data : IN std_logic_vector(15 DOWNTO 0)
	);
END progCounterTest;

ARCHITECTURE structure OF progCounterTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_alu_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_increment : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_operand_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rx_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rz_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \out_count[15]~output_o\ : std_logic;
SIGNAL \out_count[14]~output_o\ : std_logic;
SIGNAL \out_count[13]~output_o\ : std_logic;
SIGNAL \out_count[12]~output_o\ : std_logic;
SIGNAL \out_count[11]~output_o\ : std_logic;
SIGNAL \out_count[10]~output_o\ : std_logic;
SIGNAL \out_count[9]~output_o\ : std_logic;
SIGNAL \out_count[8]~output_o\ : std_logic;
SIGNAL \out_count[7]~output_o\ : std_logic;
SIGNAL \out_count[6]~output_o\ : std_logic;
SIGNAL \out_count[5]~output_o\ : std_logic;
SIGNAL \out_count[4]~output_o\ : std_logic;
SIGNAL \out_count[3]~output_o\ : std_logic;
SIGNAL \out_count[2]~output_o\ : std_logic;
SIGNAL \out_count[1]~output_o\ : std_logic;
SIGNAL \out_count[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|Add0~61_sumout\ : std_logic;
SIGNAL \alu_count[0]~input_o\ : std_logic;
SIGNAL \rx_count[0]~input_o\ : std_logic;
SIGNAL \operand_count[0]~input_o\ : std_logic;
SIGNAL \increment[1]~input_o\ : std_logic;
SIGNAL \increment[2]~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \rz_data[9]~input_o\ : std_logic;
SIGNAL \rz_data[8]~input_o\ : std_logic;
SIGNAL \rz_data[7]~input_o\ : std_logic;
SIGNAL \rz_data[6]~input_o\ : std_logic;
SIGNAL \rz_data[5]~input_o\ : std_logic;
SIGNAL \rz_data[4]~input_o\ : std_logic;
SIGNAL \inst|out_count[15]~3_combout\ : std_logic;
SIGNAL \increment[0]~input_o\ : std_logic;
SIGNAL \rz_data[15]~input_o\ : std_logic;
SIGNAL \rz_data[14]~input_o\ : std_logic;
SIGNAL \rz_data[13]~input_o\ : std_logic;
SIGNAL \rz_data[12]~input_o\ : std_logic;
SIGNAL \rz_data[11]~input_o\ : std_logic;
SIGNAL \rz_data[10]~input_o\ : std_logic;
SIGNAL \inst|out_count[15]~2_combout\ : std_logic;
SIGNAL \rz_data[3]~input_o\ : std_logic;
SIGNAL \rz_data[2]~input_o\ : std_logic;
SIGNAL \rz_data[1]~input_o\ : std_logic;
SIGNAL \rz_data[0]~input_o\ : std_logic;
SIGNAL \inst|out_count[15]~1_combout\ : std_logic;
SIGNAL \inst|out_count[15]~7_combout\ : std_logic;
SIGNAL \inst|out_count[15]~0_combout\ : std_logic;
SIGNAL \inst|out_count[15]~4_combout\ : std_logic;
SIGNAL \inst|out_count[15]~5_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|out_count[15]~6_combout\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \alu_count[1]~input_o\ : std_logic;
SIGNAL \rx_count[1]~input_o\ : std_logic;
SIGNAL \operand_count[1]~input_o\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \alu_count[2]~input_o\ : std_logic;
SIGNAL \rx_count[2]~input_o\ : std_logic;
SIGNAL \operand_count[2]~input_o\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \alu_count[3]~input_o\ : std_logic;
SIGNAL \rx_count[3]~input_o\ : std_logic;
SIGNAL \operand_count[3]~input_o\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \alu_count[4]~input_o\ : std_logic;
SIGNAL \rx_count[4]~input_o\ : std_logic;
SIGNAL \operand_count[4]~input_o\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \alu_count[5]~input_o\ : std_logic;
SIGNAL \rx_count[5]~input_o\ : std_logic;
SIGNAL \operand_count[5]~input_o\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \alu_count[6]~input_o\ : std_logic;
SIGNAL \rx_count[6]~input_o\ : std_logic;
SIGNAL \operand_count[6]~input_o\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \alu_count[7]~input_o\ : std_logic;
SIGNAL \rx_count[7]~input_o\ : std_logic;
SIGNAL \operand_count[7]~input_o\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \alu_count[8]~input_o\ : std_logic;
SIGNAL \rx_count[8]~input_o\ : std_logic;
SIGNAL \operand_count[8]~input_o\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \alu_count[9]~input_o\ : std_logic;
SIGNAL \rx_count[9]~input_o\ : std_logic;
SIGNAL \operand_count[9]~input_o\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \alu_count[10]~input_o\ : std_logic;
SIGNAL \rx_count[10]~input_o\ : std_logic;
SIGNAL \operand_count[10]~input_o\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \alu_count[11]~input_o\ : std_logic;
SIGNAL \rx_count[11]~input_o\ : std_logic;
SIGNAL \operand_count[11]~input_o\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \alu_count[12]~input_o\ : std_logic;
SIGNAL \rx_count[12]~input_o\ : std_logic;
SIGNAL \operand_count[12]~input_o\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \alu_count[13]~input_o\ : std_logic;
SIGNAL \rx_count[13]~input_o\ : std_logic;
SIGNAL \operand_count[13]~input_o\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \alu_count[14]~input_o\ : std_logic;
SIGNAL \rx_count[14]~input_o\ : std_logic;
SIGNAL \operand_count[14]~input_o\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \alu_count[15]~input_o\ : std_logic;
SIGNAL \rx_count[15]~input_o\ : std_logic;
SIGNAL \operand_count[15]~input_o\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|out_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_out_count[15]~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_operand_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rz_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_z~input_o\ : std_logic;
SIGNAL \ALT_INV_increment[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_increment[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_increment[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_operand_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[15]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~4_combout\ : std_logic;

BEGIN

out_count <= ww_out_count;
ww_clk <= clk;
ww_z <= z;
ww_alu_count <= alu_count;
ww_increment <= increment;
ww_operand_count <= operand_count;
ww_rx_count <= rx_count;
ww_rz_data <= rz_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_out_count[15]~3_combout\ <= NOT \inst|out_count[15]~3_combout\;
\inst|ALT_INV_out_count[15]~2_combout\ <= NOT \inst|out_count[15]~2_combout\;
\inst|ALT_INV_out_count[15]~1_combout\ <= NOT \inst|out_count[15]~1_combout\;
\inst|ALT_INV_out_count[15]~0_combout\ <= NOT \inst|out_count[15]~0_combout\;
\inst|ALT_INV_out_count[15]~7_combout\ <= NOT \inst|out_count[15]~7_combout\;
\inst|ALT_INV_Add0~61_sumout\ <= NOT \inst|Add0~61_sumout\;
\inst|ALT_INV_Add0~57_sumout\ <= NOT \inst|Add0~57_sumout\;
\inst|ALT_INV_Add0~53_sumout\ <= NOT \inst|Add0~53_sumout\;
\inst|ALT_INV_Add0~49_sumout\ <= NOT \inst|Add0~49_sumout\;
\inst|ALT_INV_Add0~45_sumout\ <= NOT \inst|Add0~45_sumout\;
\inst|ALT_INV_Add0~41_sumout\ <= NOT \inst|Add0~41_sumout\;
\inst|ALT_INV_Add0~37_sumout\ <= NOT \inst|Add0~37_sumout\;
\inst|ALT_INV_Add0~33_sumout\ <= NOT \inst|Add0~33_sumout\;
\inst|ALT_INV_Add0~29_sumout\ <= NOT \inst|Add0~29_sumout\;
\inst|ALT_INV_Add0~25_sumout\ <= NOT \inst|Add0~25_sumout\;
\inst|ALT_INV_Add0~21_sumout\ <= NOT \inst|Add0~21_sumout\;
\inst|ALT_INV_Add0~17_sumout\ <= NOT \inst|Add0~17_sumout\;
\inst|ALT_INV_Add0~13_sumout\ <= NOT \inst|Add0~13_sumout\;
\inst|ALT_INV_Add0~9_sumout\ <= NOT \inst|Add0~9_sumout\;
\inst|ALT_INV_Add0~5_sumout\ <= NOT \inst|Add0~5_sumout\;
\inst|ALT_INV_Add0~1_sumout\ <= NOT \inst|Add0~1_sumout\;
\inst|ALT_INV_out_count\(0) <= NOT \inst|out_count\(0);
\inst|ALT_INV_out_count\(1) <= NOT \inst|out_count\(1);
\inst|ALT_INV_out_count\(2) <= NOT \inst|out_count\(2);
\inst|ALT_INV_out_count\(3) <= NOT \inst|out_count\(3);
\inst|ALT_INV_out_count\(4) <= NOT \inst|out_count\(4);
\inst|ALT_INV_out_count\(5) <= NOT \inst|out_count\(5);
\inst|ALT_INV_out_count\(6) <= NOT \inst|out_count\(6);
\inst|ALT_INV_out_count\(7) <= NOT \inst|out_count\(7);
\inst|ALT_INV_out_count\(8) <= NOT \inst|out_count\(8);
\inst|ALT_INV_out_count\(9) <= NOT \inst|out_count\(9);
\inst|ALT_INV_out_count\(10) <= NOT \inst|out_count\(10);
\inst|ALT_INV_out_count\(11) <= NOT \inst|out_count\(11);
\inst|ALT_INV_out_count\(12) <= NOT \inst|out_count\(12);
\inst|ALT_INV_out_count\(13) <= NOT \inst|out_count\(13);
\inst|ALT_INV_out_count\(14) <= NOT \inst|out_count\(14);
\inst|ALT_INV_out_count\(15) <= NOT \inst|out_count\(15);
\ALT_INV_operand_count[0]~input_o\ <= NOT \operand_count[0]~input_o\;
\ALT_INV_rx_count[0]~input_o\ <= NOT \rx_count[0]~input_o\;
\ALT_INV_alu_count[0]~input_o\ <= NOT \alu_count[0]~input_o\;
\ALT_INV_operand_count[1]~input_o\ <= NOT \operand_count[1]~input_o\;
\ALT_INV_rx_count[1]~input_o\ <= NOT \rx_count[1]~input_o\;
\ALT_INV_alu_count[1]~input_o\ <= NOT \alu_count[1]~input_o\;
\ALT_INV_operand_count[2]~input_o\ <= NOT \operand_count[2]~input_o\;
\ALT_INV_rx_count[2]~input_o\ <= NOT \rx_count[2]~input_o\;
\ALT_INV_alu_count[2]~input_o\ <= NOT \alu_count[2]~input_o\;
\ALT_INV_operand_count[3]~input_o\ <= NOT \operand_count[3]~input_o\;
\ALT_INV_rx_count[3]~input_o\ <= NOT \rx_count[3]~input_o\;
\ALT_INV_alu_count[3]~input_o\ <= NOT \alu_count[3]~input_o\;
\ALT_INV_operand_count[4]~input_o\ <= NOT \operand_count[4]~input_o\;
\ALT_INV_rx_count[4]~input_o\ <= NOT \rx_count[4]~input_o\;
\ALT_INV_alu_count[4]~input_o\ <= NOT \alu_count[4]~input_o\;
\ALT_INV_operand_count[5]~input_o\ <= NOT \operand_count[5]~input_o\;
\ALT_INV_rx_count[5]~input_o\ <= NOT \rx_count[5]~input_o\;
\ALT_INV_alu_count[5]~input_o\ <= NOT \alu_count[5]~input_o\;
\ALT_INV_operand_count[6]~input_o\ <= NOT \operand_count[6]~input_o\;
\ALT_INV_rx_count[6]~input_o\ <= NOT \rx_count[6]~input_o\;
\ALT_INV_alu_count[6]~input_o\ <= NOT \alu_count[6]~input_o\;
\ALT_INV_operand_count[7]~input_o\ <= NOT \operand_count[7]~input_o\;
\ALT_INV_rx_count[7]~input_o\ <= NOT \rx_count[7]~input_o\;
\ALT_INV_alu_count[7]~input_o\ <= NOT \alu_count[7]~input_o\;
\ALT_INV_operand_count[8]~input_o\ <= NOT \operand_count[8]~input_o\;
\ALT_INV_rx_count[8]~input_o\ <= NOT \rx_count[8]~input_o\;
\ALT_INV_alu_count[8]~input_o\ <= NOT \alu_count[8]~input_o\;
\ALT_INV_operand_count[9]~input_o\ <= NOT \operand_count[9]~input_o\;
\ALT_INV_rx_count[9]~input_o\ <= NOT \rx_count[9]~input_o\;
\ALT_INV_alu_count[9]~input_o\ <= NOT \alu_count[9]~input_o\;
\ALT_INV_operand_count[10]~input_o\ <= NOT \operand_count[10]~input_o\;
\ALT_INV_rx_count[10]~input_o\ <= NOT \rx_count[10]~input_o\;
\ALT_INV_alu_count[10]~input_o\ <= NOT \alu_count[10]~input_o\;
\ALT_INV_operand_count[11]~input_o\ <= NOT \operand_count[11]~input_o\;
\ALT_INV_rx_count[11]~input_o\ <= NOT \rx_count[11]~input_o\;
\ALT_INV_alu_count[11]~input_o\ <= NOT \alu_count[11]~input_o\;
\ALT_INV_operand_count[12]~input_o\ <= NOT \operand_count[12]~input_o\;
\ALT_INV_rx_count[12]~input_o\ <= NOT \rx_count[12]~input_o\;
\ALT_INV_alu_count[12]~input_o\ <= NOT \alu_count[12]~input_o\;
\ALT_INV_operand_count[13]~input_o\ <= NOT \operand_count[13]~input_o\;
\ALT_INV_rx_count[13]~input_o\ <= NOT \rx_count[13]~input_o\;
\ALT_INV_alu_count[13]~input_o\ <= NOT \alu_count[13]~input_o\;
\ALT_INV_operand_count[14]~input_o\ <= NOT \operand_count[14]~input_o\;
\ALT_INV_rx_count[14]~input_o\ <= NOT \rx_count[14]~input_o\;
\ALT_INV_alu_count[14]~input_o\ <= NOT \alu_count[14]~input_o\;
\ALT_INV_rz_data[4]~input_o\ <= NOT \rz_data[4]~input_o\;
\ALT_INV_rz_data[5]~input_o\ <= NOT \rz_data[5]~input_o\;
\ALT_INV_rz_data[6]~input_o\ <= NOT \rz_data[6]~input_o\;
\ALT_INV_rz_data[7]~input_o\ <= NOT \rz_data[7]~input_o\;
\ALT_INV_rz_data[8]~input_o\ <= NOT \rz_data[8]~input_o\;
\ALT_INV_rz_data[9]~input_o\ <= NOT \rz_data[9]~input_o\;
\ALT_INV_rz_data[10]~input_o\ <= NOT \rz_data[10]~input_o\;
\ALT_INV_rz_data[11]~input_o\ <= NOT \rz_data[11]~input_o\;
\ALT_INV_rz_data[12]~input_o\ <= NOT \rz_data[12]~input_o\;
\ALT_INV_rz_data[13]~input_o\ <= NOT \rz_data[13]~input_o\;
\ALT_INV_rz_data[14]~input_o\ <= NOT \rz_data[14]~input_o\;
\ALT_INV_rz_data[15]~input_o\ <= NOT \rz_data[15]~input_o\;
\ALT_INV_rz_data[0]~input_o\ <= NOT \rz_data[0]~input_o\;
\ALT_INV_rz_data[1]~input_o\ <= NOT \rz_data[1]~input_o\;
\ALT_INV_rz_data[2]~input_o\ <= NOT \rz_data[2]~input_o\;
\ALT_INV_rz_data[3]~input_o\ <= NOT \rz_data[3]~input_o\;
\ALT_INV_z~input_o\ <= NOT \z~input_o\;
\ALT_INV_increment[0]~input_o\ <= NOT \increment[0]~input_o\;
\ALT_INV_increment[1]~input_o\ <= NOT \increment[1]~input_o\;
\ALT_INV_increment[2]~input_o\ <= NOT \increment[2]~input_o\;
\ALT_INV_operand_count[15]~input_o\ <= NOT \operand_count[15]~input_o\;
\ALT_INV_rx_count[15]~input_o\ <= NOT \rx_count[15]~input_o\;
\ALT_INV_alu_count[15]~input_o\ <= NOT \alu_count[15]~input_o\;
\inst|ALT_INV_out_count[15]~5_combout\ <= NOT \inst|out_count[15]~5_combout\;
\inst|ALT_INV_out_count[15]~4_combout\ <= NOT \inst|out_count[15]~4_combout\;

\out_count[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(15),
	devoe => ww_devoe,
	o => \out_count[15]~output_o\);

\out_count[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(14),
	devoe => ww_devoe,
	o => \out_count[14]~output_o\);

\out_count[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(13),
	devoe => ww_devoe,
	o => \out_count[13]~output_o\);

\out_count[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(12),
	devoe => ww_devoe,
	o => \out_count[12]~output_o\);

\out_count[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(11),
	devoe => ww_devoe,
	o => \out_count[11]~output_o\);

\out_count[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(10),
	devoe => ww_devoe,
	o => \out_count[10]~output_o\);

\out_count[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(9),
	devoe => ww_devoe,
	o => \out_count[9]~output_o\);

\out_count[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(8),
	devoe => ww_devoe,
	o => \out_count[8]~output_o\);

\out_count[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(7),
	devoe => ww_devoe,
	o => \out_count[7]~output_o\);

\out_count[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(6),
	devoe => ww_devoe,
	o => \out_count[6]~output_o\);

\out_count[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(5),
	devoe => ww_devoe,
	o => \out_count[5]~output_o\);

\out_count[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(4),
	devoe => ww_devoe,
	o => \out_count[4]~output_o\);

\out_count[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(3),
	devoe => ww_devoe,
	o => \out_count[3]~output_o\);

\out_count[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(2),
	devoe => ww_devoe,
	o => \out_count[2]~output_o\);

\out_count[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(1),
	devoe => ww_devoe,
	o => \out_count[1]~output_o\);

\out_count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|out_count\(0),
	devoe => ww_devoe,
	o => \out_count[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~61_sumout\ = SUM(( \inst|out_count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~62\ = CARRY(( \inst|out_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(0),
	cin => GND,
	sumout => \inst|Add0~61_sumout\,
	cout => \inst|Add0~62\);

\alu_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(0),
	o => \alu_count[0]~input_o\);

\rx_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(0),
	o => \rx_count[0]~input_o\);

\operand_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(0),
	o => \operand_count[0]~input_o\);

\increment[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(1),
	o => \increment[1]~input_o\);

\increment[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(2),
	o => \increment[2]~input_o\);

\z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

\rz_data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(9),
	o => \rz_data[9]~input_o\);

\rz_data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(8),
	o => \rz_data[8]~input_o\);

\rz_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(7),
	o => \rz_data[7]~input_o\);

\rz_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(6),
	o => \rz_data[6]~input_o\);

\rz_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(5),
	o => \rz_data[5]~input_o\);

\rz_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(4),
	o => \rz_data[4]~input_o\);

\inst|out_count[15]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~3_combout\ = ( \rz_data[5]~input_o\ & ( \rz_data[4]~input_o\ ) ) # ( !\rz_data[5]~input_o\ & ( \rz_data[4]~input_o\ ) ) # ( \rz_data[5]~input_o\ & ( !\rz_data[4]~input_o\ ) ) # ( !\rz_data[5]~input_o\ & ( !\rz_data[4]~input_o\ & ( 
-- (((\rz_data[6]~input_o\) # (\rz_data[7]~input_o\)) # (\rz_data[8]~input_o\)) # (\rz_data[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[9]~input_o\,
	datab => \ALT_INV_rz_data[8]~input_o\,
	datac => \ALT_INV_rz_data[7]~input_o\,
	datad => \ALT_INV_rz_data[6]~input_o\,
	datae => \ALT_INV_rz_data[5]~input_o\,
	dataf => \ALT_INV_rz_data[4]~input_o\,
	combout => \inst|out_count[15]~3_combout\);

\increment[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(0),
	o => \increment[0]~input_o\);

\rz_data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(15),
	o => \rz_data[15]~input_o\);

\rz_data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(14),
	o => \rz_data[14]~input_o\);

\rz_data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(13),
	o => \rz_data[13]~input_o\);

\rz_data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(12),
	o => \rz_data[12]~input_o\);

\rz_data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(11),
	o => \rz_data[11]~input_o\);

\rz_data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(10),
	o => \rz_data[10]~input_o\);

\inst|out_count[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~2_combout\ = ( \rz_data[11]~input_o\ & ( \rz_data[10]~input_o\ ) ) # ( !\rz_data[11]~input_o\ & ( \rz_data[10]~input_o\ ) ) # ( \rz_data[11]~input_o\ & ( !\rz_data[10]~input_o\ ) ) # ( !\rz_data[11]~input_o\ & ( !\rz_data[10]~input_o\ 
-- & ( (((\rz_data[12]~input_o\) # (\rz_data[13]~input_o\)) # (\rz_data[14]~input_o\)) # (\rz_data[15]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[15]~input_o\,
	datab => \ALT_INV_rz_data[14]~input_o\,
	datac => \ALT_INV_rz_data[13]~input_o\,
	datad => \ALT_INV_rz_data[12]~input_o\,
	datae => \ALT_INV_rz_data[11]~input_o\,
	dataf => \ALT_INV_rz_data[10]~input_o\,
	combout => \inst|out_count[15]~2_combout\);

\rz_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(3),
	o => \rz_data[3]~input_o\);

\rz_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(2),
	o => \rz_data[2]~input_o\);

\rz_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(1),
	o => \rz_data[1]~input_o\);

\rz_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rz_data(0),
	o => \rz_data[0]~input_o\);

\inst|out_count[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~1_combout\ = (((\rz_data[0]~input_o\) # (\rz_data[1]~input_o\)) # (\rz_data[2]~input_o\)) # (\rz_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[3]~input_o\,
	datab => \ALT_INV_rz_data[2]~input_o\,
	datac => \ALT_INV_rz_data[1]~input_o\,
	datad => \ALT_INV_rz_data[0]~input_o\,
	combout => \inst|out_count[15]~1_combout\);

\inst|out_count[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~7_combout\ = ( !\increment[0]~input_o\ & ( (!\increment[2]~input_o\) # ((\increment[1]~input_o\ & (!\inst|out_count[15]~1_combout\ & (!\inst|out_count[15]~3_combout\ & !\inst|out_count[15]~2_combout\)))) ) ) # ( \increment[0]~input_o\ 
-- & ( (!\increment[1]~input_o\ & (\increment[2]~input_o\)) # (\increment[1]~input_o\ & ((!\increment[2]~input_o\) # ((\z~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101110011001100011001110110011111001100110011000110011101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[1]~input_o\,
	datab => \ALT_INV_increment[2]~input_o\,
	datac => \ALT_INV_z~input_o\,
	datad => \inst|ALT_INV_out_count[15]~3_combout\,
	datae => \ALT_INV_increment[0]~input_o\,
	dataf => \inst|ALT_INV_out_count[15]~2_combout\,
	datag => \inst|ALT_INV_out_count[15]~1_combout\,
	combout => \inst|out_count[15]~7_combout\);

\inst|out_count[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~0_combout\ = (\increment[0]~input_o\ & ((!\increment[2]~input_o\ & (!\increment[1]~input_o\)) # (\increment[2]~input_o\ & (\increment[1]~input_o\ & !\z~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001000000010010000100000001001000010000000100100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[2]~input_o\,
	datab => \ALT_INV_increment[1]~input_o\,
	datac => \ALT_INV_increment[0]~input_o\,
	datad => \ALT_INV_z~input_o\,
	combout => \inst|out_count[15]~0_combout\);

\inst|out_count[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~4_combout\ = (\increment[2]~input_o\ & (\increment[1]~input_o\ & !\increment[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[2]~input_o\,
	datab => \ALT_INV_increment[1]~input_o\,
	datac => \ALT_INV_increment[0]~input_o\,
	combout => \inst|out_count[15]~4_combout\);

\inst|out_count[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~5_combout\ = ( !\inst|out_count[15]~3_combout\ & ( \inst|out_count[15]~4_combout\ & ( (\increment[2]~input_o\ & (!\inst|out_count[15]~0_combout\ & (!\inst|out_count[15]~1_combout\ & !\inst|out_count[15]~2_combout\))) ) ) ) # ( 
-- \inst|out_count[15]~3_combout\ & ( !\inst|out_count[15]~4_combout\ & ( (\increment[2]~input_o\ & !\inst|out_count[15]~0_combout\) ) ) ) # ( !\inst|out_count[15]~3_combout\ & ( !\inst|out_count[15]~4_combout\ & ( (\increment[2]~input_o\ & 
-- !\inst|out_count[15]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[2]~input_o\,
	datab => \inst|ALT_INV_out_count[15]~0_combout\,
	datac => \inst|ALT_INV_out_count[15]~1_combout\,
	datad => \inst|ALT_INV_out_count[15]~2_combout\,
	datae => \inst|ALT_INV_out_count[15]~3_combout\,
	dataf => \inst|ALT_INV_out_count[15]~4_combout\,
	combout => \inst|out_count[15]~5_combout\);

\inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[0]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[0]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[0]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~61_sumout\,
	datab => \ALT_INV_alu_count[0]~input_o\,
	datac => \ALT_INV_rx_count[0]~input_o\,
	datad => \ALT_INV_operand_count[0]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux15~0_combout\);

\inst|out_count[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~6_combout\ = (!\increment[2]~input_o\ & (!\increment[0]~input_o\ $ (\increment[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[0]~input_o\,
	datab => \ALT_INV_increment[1]~input_o\,
	datac => \ALT_INV_increment[2]~input_o\,
	combout => \inst|out_count[15]~6_combout\);

\inst|out_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux15~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(0));

\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( \inst|out_count\(1) ) + ( GND ) + ( \inst|Add0~62\ ))
-- \inst|Add0~58\ = CARRY(( \inst|out_count\(1) ) + ( GND ) + ( \inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(1),
	cin => \inst|Add0~62\,
	sumout => \inst|Add0~57_sumout\,
	cout => \inst|Add0~58\);

\alu_count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(1),
	o => \alu_count[1]~input_o\);

\rx_count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(1),
	o => \rx_count[1]~input_o\);

\operand_count[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(1),
	o => \operand_count[1]~input_o\);

\inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[1]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[1]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[1]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~57_sumout\,
	datab => \ALT_INV_alu_count[1]~input_o\,
	datac => \ALT_INV_rx_count[1]~input_o\,
	datad => \ALT_INV_operand_count[1]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux14~0_combout\);

\inst|out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux14~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(1));

\inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~53_sumout\ = SUM(( \inst|out_count\(2) ) + ( GND ) + ( \inst|Add0~58\ ))
-- \inst|Add0~54\ = CARRY(( \inst|out_count\(2) ) + ( GND ) + ( \inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(2),
	cin => \inst|Add0~58\,
	sumout => \inst|Add0~53_sumout\,
	cout => \inst|Add0~54\);

\alu_count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(2),
	o => \alu_count[2]~input_o\);

\rx_count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(2),
	o => \rx_count[2]~input_o\);

\operand_count[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(2),
	o => \operand_count[2]~input_o\);

\inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[2]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[2]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[2]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~53_sumout\,
	datab => \ALT_INV_alu_count[2]~input_o\,
	datac => \ALT_INV_rx_count[2]~input_o\,
	datad => \ALT_INV_operand_count[2]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux13~0_combout\);

\inst|out_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux13~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(2));

\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \inst|out_count\(3) ) + ( GND ) + ( \inst|Add0~54\ ))
-- \inst|Add0~50\ = CARRY(( \inst|out_count\(3) ) + ( GND ) + ( \inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(3),
	cin => \inst|Add0~54\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

\alu_count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(3),
	o => \alu_count[3]~input_o\);

\rx_count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(3),
	o => \rx_count[3]~input_o\);

\operand_count[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(3),
	o => \operand_count[3]~input_o\);

\inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[3]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[3]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[3]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~49_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~49_sumout\,
	datab => \ALT_INV_alu_count[3]~input_o\,
	datac => \ALT_INV_rx_count[3]~input_o\,
	datad => \ALT_INV_operand_count[3]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux12~0_combout\);

\inst|out_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux12~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(3));

\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \inst|out_count\(4) ) + ( GND ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( \inst|out_count\(4) ) + ( GND ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(4),
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

\alu_count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(4),
	o => \alu_count[4]~input_o\);

\rx_count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(4),
	o => \rx_count[4]~input_o\);

\operand_count[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(4),
	o => \operand_count[4]~input_o\);

\inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[4]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[4]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[4]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~45_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~45_sumout\,
	datab => \ALT_INV_alu_count[4]~input_o\,
	datac => \ALT_INV_rx_count[4]~input_o\,
	datad => \ALT_INV_operand_count[4]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux11~0_combout\);

\inst|out_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux11~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(4));

\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst|out_count\(5) ) + ( GND ) + ( \inst|Add0~46\ ))
-- \inst|Add0~42\ = CARRY(( \inst|out_count\(5) ) + ( GND ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(5),
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

\alu_count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(5),
	o => \alu_count[5]~input_o\);

\rx_count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(5),
	o => \rx_count[5]~input_o\);

\operand_count[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(5),
	o => \operand_count[5]~input_o\);

\inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[5]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[5]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[5]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~41_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~41_sumout\,
	datab => \ALT_INV_alu_count[5]~input_o\,
	datac => \ALT_INV_rx_count[5]~input_o\,
	datad => \ALT_INV_operand_count[5]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux10~0_combout\);

\inst|out_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux10~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(5));

\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst|out_count\(6) ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~38\ = CARRY(( \inst|out_count\(6) ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(6),
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~37_sumout\,
	cout => \inst|Add0~38\);

\alu_count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(6),
	o => \alu_count[6]~input_o\);

\rx_count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(6),
	o => \rx_count[6]~input_o\);

\operand_count[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(6),
	o => \operand_count[6]~input_o\);

\inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[6]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[6]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[6]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~37_sumout\,
	datab => \ALT_INV_alu_count[6]~input_o\,
	datac => \ALT_INV_rx_count[6]~input_o\,
	datad => \ALT_INV_operand_count[6]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux9~0_combout\);

\inst|out_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux9~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(6));

\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|out_count\(7) ) + ( GND ) + ( \inst|Add0~38\ ))
-- \inst|Add0~34\ = CARRY(( \inst|out_count\(7) ) + ( GND ) + ( \inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(7),
	cin => \inst|Add0~38\,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

\alu_count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(7),
	o => \alu_count[7]~input_o\);

\rx_count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(7),
	o => \rx_count[7]~input_o\);

\operand_count[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(7),
	o => \operand_count[7]~input_o\);

\inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[7]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[7]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[7]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~33_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~33_sumout\,
	datab => \ALT_INV_alu_count[7]~input_o\,
	datac => \ALT_INV_rx_count[7]~input_o\,
	datad => \ALT_INV_operand_count[7]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux8~0_combout\);

\inst|out_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux8~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(7));

\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|out_count\(8) ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \inst|out_count\(8) ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(8),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

\alu_count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(8),
	o => \alu_count[8]~input_o\);

\rx_count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(8),
	o => \rx_count[8]~input_o\);

\operand_count[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(8),
	o => \operand_count[8]~input_o\);

\inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[8]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[8]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[8]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~29_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~29_sumout\,
	datab => \ALT_INV_alu_count[8]~input_o\,
	datac => \ALT_INV_rx_count[8]~input_o\,
	datad => \ALT_INV_operand_count[8]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux7~0_combout\);

\inst|out_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux7~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(8));

\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|out_count\(9) ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst|out_count\(9) ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(9),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

\alu_count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(9),
	o => \alu_count[9]~input_o\);

\rx_count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(9),
	o => \rx_count[9]~input_o\);

\operand_count[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(9),
	o => \operand_count[9]~input_o\);

\inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[9]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[9]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[9]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~25_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~25_sumout\,
	datab => \ALT_INV_alu_count[9]~input_o\,
	datac => \ALT_INV_rx_count[9]~input_o\,
	datad => \ALT_INV_operand_count[9]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux6~0_combout\);

\inst|out_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux6~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(9));

\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|out_count\(10) ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst|out_count\(10) ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(10),
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

\alu_count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(10),
	o => \alu_count[10]~input_o\);

\rx_count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(10),
	o => \rx_count[10]~input_o\);

\operand_count[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(10),
	o => \operand_count[10]~input_o\);

\inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[10]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[10]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[10]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~21_sumout\,
	datab => \ALT_INV_alu_count[10]~input_o\,
	datac => \ALT_INV_rx_count[10]~input_o\,
	datad => \ALT_INV_operand_count[10]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux5~0_combout\);

\inst|out_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux5~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(10));

\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|out_count\(11) ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|out_count\(11) ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(11),
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

\alu_count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(11),
	o => \alu_count[11]~input_o\);

\rx_count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(11),
	o => \rx_count[11]~input_o\);

\operand_count[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(11),
	o => \operand_count[11]~input_o\);

\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[11]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[11]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[11]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~17_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~17_sumout\,
	datab => \ALT_INV_alu_count[11]~input_o\,
	datac => \ALT_INV_rx_count[11]~input_o\,
	datad => \ALT_INV_operand_count[11]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux4~0_combout\);

\inst|out_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux4~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(11));

\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|out_count\(12) ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|out_count\(12) ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(12),
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

\alu_count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(12),
	o => \alu_count[12]~input_o\);

\rx_count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(12),
	o => \rx_count[12]~input_o\);

\operand_count[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(12),
	o => \operand_count[12]~input_o\);

\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[12]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[12]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[12]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~13_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~13_sumout\,
	datab => \ALT_INV_alu_count[12]~input_o\,
	datac => \ALT_INV_rx_count[12]~input_o\,
	datad => \ALT_INV_operand_count[12]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux3~0_combout\);

\inst|out_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux3~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(12));

\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|out_count\(13) ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|out_count\(13) ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(13),
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

\alu_count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(13),
	o => \alu_count[13]~input_o\);

\rx_count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(13),
	o => \rx_count[13]~input_o\);

\operand_count[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(13),
	o => \operand_count[13]~input_o\);

\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[13]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[13]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[13]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~9_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_alu_count[13]~input_o\,
	datac => \ALT_INV_rx_count[13]~input_o\,
	datad => \ALT_INV_operand_count[13]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux2~0_combout\);

\inst|out_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux2~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(13));

\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|out_count\(14) ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \inst|out_count\(14) ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(14),
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

\alu_count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(14),
	o => \alu_count[14]~input_o\);

\rx_count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(14),
	o => \rx_count[14]~input_o\);

\operand_count[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(14),
	o => \operand_count[14]~input_o\);

\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[14]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[14]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[14]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_alu_count[14]~input_o\,
	datac => \ALT_INV_rx_count[14]~input_o\,
	datad => \ALT_INV_operand_count[14]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux1~0_combout\);

\inst|out_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux1~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(14));

\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|out_count\(15) ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(15),
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\);

\alu_count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(15),
	o => \alu_count[15]~input_o\);

\rx_count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(15),
	o => \rx_count[15]~input_o\);

\operand_count[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operand_count(15),
	o => \operand_count[15]~input_o\);

\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \operand_count[15]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( \inst|out_count[15]~5_combout\ & ( \rx_count[15]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \alu_count[15]~input_o\ ) ) ) # ( !\inst|out_count[15]~7_combout\ & ( !\inst|out_count[15]~5_combout\ & ( \inst|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add0~1_sumout\,
	datab => \ALT_INV_alu_count[15]~input_o\,
	datac => \ALT_INV_rx_count[15]~input_o\,
	datad => \ALT_INV_operand_count[15]~input_o\,
	datae => \inst|ALT_INV_out_count[15]~7_combout\,
	dataf => \inst|ALT_INV_out_count[15]~5_combout\,
	combout => \inst|Mux0~0_combout\);

\inst|out_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|Mux0~0_combout\,
	sclr => \inst|out_count[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(15));

ww_out_count(15) <= \out_count[15]~output_o\;

ww_out_count(14) <= \out_count[14]~output_o\;

ww_out_count(13) <= \out_count[13]~output_o\;

ww_out_count(12) <= \out_count[12]~output_o\;

ww_out_count(11) <= \out_count[11]~output_o\;

ww_out_count(10) <= \out_count[10]~output_o\;

ww_out_count(9) <= \out_count[9]~output_o\;

ww_out_count(8) <= \out_count[8]~output_o\;

ww_out_count(7) <= \out_count[7]~output_o\;

ww_out_count(6) <= \out_count[6]~output_o\;

ww_out_count(5) <= \out_count[5]~output_o\;

ww_out_count(4) <= \out_count[4]~output_o\;

ww_out_count(3) <= \out_count[3]~output_o\;

ww_out_count(2) <= \out_count[2]~output_o\;

ww_out_count(1) <= \out_count[1]~output_o\;

ww_out_count(0) <= \out_count[0]~output_o\;
END structure;


