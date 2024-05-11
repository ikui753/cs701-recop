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

-- DATE "05/11/2024 12:50:06"

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
	address_method : OUT std_logic_vector(1 DOWNTO 0);
	clk : IN std_logic;
	dm_wr : IN std_logic;
	z : IN std_logic;
	reset : IN std_logic;
	alu_count : IN std_logic_vector(15 DOWNTO 0);
	increment : IN std_logic_vector(2 DOWNTO 0);
	rx_count : IN std_logic_vector(15 DOWNTO 0);
	rz_data : IN std_logic_vector(15 DOWNTO 0);
	dm_indata : IN std_logic_vector(15 DOWNTO 0);
	dm_outdata : OUT std_logic_vector(15 DOWNTO 0);
	opcode : OUT std_logic_vector(5 DOWNTO 0);
	out_count : OUT std_logic_vector(15 DOWNTO 0);
	pm_outdata : OUT std_logic_vector(15 DOWNTO 0);
	rxData : OUT std_logic_vector(15 DOWNTO 0);
	init : IN std_logic;
	ld_r : IN std_logic;
	rf_input_sel : IN std_logic_vector(3 DOWNTO 0);
	rzData : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_address_method : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_dm_wr : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_alu_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_increment : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rx_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rz_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dm_indata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dm_outdata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_out_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_pm_outdata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rxData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_init : std_logic;
SIGNAL ww_ld_r : std_logic;
SIGNAL ww_rf_input_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rzData : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \address_method[1]~output_o\ : std_logic;
SIGNAL \address_method[0]~output_o\ : std_logic;
SIGNAL \dm_outdata[15]~output_o\ : std_logic;
SIGNAL \dm_outdata[14]~output_o\ : std_logic;
SIGNAL \dm_outdata[13]~output_o\ : std_logic;
SIGNAL \dm_outdata[12]~output_o\ : std_logic;
SIGNAL \dm_outdata[11]~output_o\ : std_logic;
SIGNAL \dm_outdata[10]~output_o\ : std_logic;
SIGNAL \dm_outdata[9]~output_o\ : std_logic;
SIGNAL \dm_outdata[8]~output_o\ : std_logic;
SIGNAL \dm_outdata[7]~output_o\ : std_logic;
SIGNAL \dm_outdata[6]~output_o\ : std_logic;
SIGNAL \dm_outdata[5]~output_o\ : std_logic;
SIGNAL \dm_outdata[4]~output_o\ : std_logic;
SIGNAL \dm_outdata[3]~output_o\ : std_logic;
SIGNAL \dm_outdata[2]~output_o\ : std_logic;
SIGNAL \dm_outdata[1]~output_o\ : std_logic;
SIGNAL \dm_outdata[0]~output_o\ : std_logic;
SIGNAL \opcode[5]~output_o\ : std_logic;
SIGNAL \opcode[4]~output_o\ : std_logic;
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
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
SIGNAL \pm_outdata[15]~output_o\ : std_logic;
SIGNAL \pm_outdata[14]~output_o\ : std_logic;
SIGNAL \pm_outdata[13]~output_o\ : std_logic;
SIGNAL \pm_outdata[12]~output_o\ : std_logic;
SIGNAL \pm_outdata[11]~output_o\ : std_logic;
SIGNAL \pm_outdata[10]~output_o\ : std_logic;
SIGNAL \pm_outdata[9]~output_o\ : std_logic;
SIGNAL \pm_outdata[8]~output_o\ : std_logic;
SIGNAL \pm_outdata[7]~output_o\ : std_logic;
SIGNAL \pm_outdata[6]~output_o\ : std_logic;
SIGNAL \pm_outdata[5]~output_o\ : std_logic;
SIGNAL \pm_outdata[4]~output_o\ : std_logic;
SIGNAL \pm_outdata[3]~output_o\ : std_logic;
SIGNAL \pm_outdata[2]~output_o\ : std_logic;
SIGNAL \pm_outdata[1]~output_o\ : std_logic;
SIGNAL \pm_outdata[0]~output_o\ : std_logic;
SIGNAL \rxData[15]~output_o\ : std_logic;
SIGNAL \rxData[14]~output_o\ : std_logic;
SIGNAL \rxData[13]~output_o\ : std_logic;
SIGNAL \rxData[12]~output_o\ : std_logic;
SIGNAL \rxData[11]~output_o\ : std_logic;
SIGNAL \rxData[10]~output_o\ : std_logic;
SIGNAL \rxData[9]~output_o\ : std_logic;
SIGNAL \rxData[8]~output_o\ : std_logic;
SIGNAL \rxData[7]~output_o\ : std_logic;
SIGNAL \rxData[6]~output_o\ : std_logic;
SIGNAL \rxData[5]~output_o\ : std_logic;
SIGNAL \rxData[4]~output_o\ : std_logic;
SIGNAL \rxData[3]~output_o\ : std_logic;
SIGNAL \rxData[2]~output_o\ : std_logic;
SIGNAL \rxData[1]~output_o\ : std_logic;
SIGNAL \rxData[0]~output_o\ : std_logic;
SIGNAL \rzData[15]~output_o\ : std_logic;
SIGNAL \rzData[14]~output_o\ : std_logic;
SIGNAL \rzData[13]~output_o\ : std_logic;
SIGNAL \rzData[12]~output_o\ : std_logic;
SIGNAL \rzData[11]~output_o\ : std_logic;
SIGNAL \rzData[10]~output_o\ : std_logic;
SIGNAL \rzData[9]~output_o\ : std_logic;
SIGNAL \rzData[8]~output_o\ : std_logic;
SIGNAL \rzData[7]~output_o\ : std_logic;
SIGNAL \rzData[6]~output_o\ : std_logic;
SIGNAL \rzData[5]~output_o\ : std_logic;
SIGNAL \rzData[4]~output_o\ : std_logic;
SIGNAL \rzData[3]~output_o\ : std_logic;
SIGNAL \rzData[2]~output_o\ : std_logic;
SIGNAL \rzData[1]~output_o\ : std_logic;
SIGNAL \rzData[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dm_wr~input_o\ : std_logic;
SIGNAL \dm_indata[15]~input_o\ : std_logic;
SIGNAL \increment[2]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \increment[0]~input_o\ : std_logic;
SIGNAL \rz_data[3]~input_o\ : std_logic;
SIGNAL \rz_data[2]~input_o\ : std_logic;
SIGNAL \rz_data[1]~input_o\ : std_logic;
SIGNAL \rz_data[0]~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \rz_data[15]~input_o\ : std_logic;
SIGNAL \rz_data[14]~input_o\ : std_logic;
SIGNAL \rz_data[13]~input_o\ : std_logic;
SIGNAL \rz_data[12]~input_o\ : std_logic;
SIGNAL \rz_data[11]~input_o\ : std_logic;
SIGNAL \rz_data[10]~input_o\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \rz_data[9]~input_o\ : std_logic;
SIGNAL \rz_data[8]~input_o\ : std_logic;
SIGNAL \rz_data[7]~input_o\ : std_logic;
SIGNAL \rz_data[6]~input_o\ : std_logic;
SIGNAL \rz_data[5]~input_o\ : std_logic;
SIGNAL \rz_data[4]~input_o\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \dm_indata[0]~input_o\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \alu_count[1]~input_o\ : std_logic;
SIGNAL \rx_count[1]~input_o\ : std_logic;
SIGNAL \dm_indata[1]~input_o\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \alu_count[2]~input_o\ : std_logic;
SIGNAL \rx_count[2]~input_o\ : std_logic;
SIGNAL \dm_indata[2]~input_o\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \alu_count[3]~input_o\ : std_logic;
SIGNAL \rx_count[3]~input_o\ : std_logic;
SIGNAL \dm_indata[3]~input_o\ : std_logic;
SIGNAL \inst|out_count[0]~_wirecell_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \increment[1]~input_o\ : std_logic;
SIGNAL \inst|out_count[15]~24_combout\ : std_logic;
SIGNAL \inst|out_count[15]~20_combout\ : std_logic;
SIGNAL \inst|out_count~14_combout\ : std_logic;
SIGNAL \inst|out_count[15]~1_combout\ : std_logic;
SIGNAL \inst|out_count[15]~2_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst|out_count~15_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst|out_count~16_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst|out_count~17_combout\ : std_logic;
SIGNAL \rx_count[0]~input_o\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \alu_count[0]~input_o\ : std_logic;
SIGNAL \inst|out_count~18_combout\ : std_logic;
SIGNAL \inst|out_count~19_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \dm_indata[14]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \dm_indata[13]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \dm_indata[12]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \dm_indata[11]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \dm_indata[10]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \dm_indata[9]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \dm_indata[8]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \dm_indata[7]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \dm_indata[6]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \dm_indata[5]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \dm_indata[4]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \alu_count[4]~input_o\ : std_logic;
SIGNAL \rx_count[4]~input_o\ : std_logic;
SIGNAL \inst|out_count~13_combout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \alu_count[5]~input_o\ : std_logic;
SIGNAL \rx_count[5]~input_o\ : std_logic;
SIGNAL \inst|out_count~12_combout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \alu_count[6]~input_o\ : std_logic;
SIGNAL \rx_count[6]~input_o\ : std_logic;
SIGNAL \inst|out_count~11_combout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \alu_count[7]~input_o\ : std_logic;
SIGNAL \rx_count[7]~input_o\ : std_logic;
SIGNAL \inst|out_count~10_combout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \alu_count[8]~input_o\ : std_logic;
SIGNAL \rx_count[8]~input_o\ : std_logic;
SIGNAL \inst|out_count~9_combout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \alu_count[9]~input_o\ : std_logic;
SIGNAL \rx_count[9]~input_o\ : std_logic;
SIGNAL \inst|out_count~8_combout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \alu_count[10]~input_o\ : std_logic;
SIGNAL \rx_count[10]~input_o\ : std_logic;
SIGNAL \inst|out_count~7_combout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \alu_count[11]~input_o\ : std_logic;
SIGNAL \rx_count[11]~input_o\ : std_logic;
SIGNAL \inst|out_count~6_combout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \alu_count[12]~input_o\ : std_logic;
SIGNAL \rx_count[12]~input_o\ : std_logic;
SIGNAL \inst|out_count~5_combout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \alu_count[13]~input_o\ : std_logic;
SIGNAL \rx_count[13]~input_o\ : std_logic;
SIGNAL \inst|out_count~4_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \alu_count[14]~input_o\ : std_logic;
SIGNAL \rx_count[14]~input_o\ : std_logic;
SIGNAL \inst|out_count~3_combout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \alu_count[15]~input_o\ : std_logic;
SIGNAL \rx_count[15]~input_o\ : std_logic;
SIGNAL \inst|out_count~0_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \init~input_o\ : std_logic;
SIGNAL \ld_r~input_o\ : std_logic;
SIGNAL \inst3|Decoder0~2_combout\ : std_logic;
SIGNAL \inst3|regs[2][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~4_combout\ : std_logic;
SIGNAL \inst3|regs[4][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~6_combout\ : std_logic;
SIGNAL \inst3|regs[6][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~0_combout\ : std_logic;
SIGNAL \inst3|Decoder0~8_combout\ : std_logic;
SIGNAL \inst3|regs[8][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~10_combout\ : std_logic;
SIGNAL \inst3|regs[10][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~12_combout\ : std_logic;
SIGNAL \inst3|regs[12][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~14_combout\ : std_logic;
SIGNAL \inst3|regs[14][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~1_combout\ : std_logic;
SIGNAL \inst3|Decoder0~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~3_combout\ : std_logic;
SIGNAL \inst3|regs[3][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~5_combout\ : std_logic;
SIGNAL \inst3|regs[5][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~7_combout\ : std_logic;
SIGNAL \inst3|regs[7][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~2_combout\ : std_logic;
SIGNAL \inst3|Decoder0~9_combout\ : std_logic;
SIGNAL \inst3|regs[9][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~11_combout\ : std_logic;
SIGNAL \inst3|regs[11][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~13_combout\ : std_logic;
SIGNAL \inst3|regs[13][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~15_combout\ : std_logic;
SIGNAL \inst3|regs[15][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~3_combout\ : std_logic;
SIGNAL \inst3|Mux16~4_combout\ : std_logic;
SIGNAL \rf_input_sel[2]~input_o\ : std_logic;
SIGNAL \rf_input_sel[3]~input_o\ : std_logic;
SIGNAL \rf_input_sel[1]~input_o\ : std_logic;
SIGNAL \rf_input_sel[0]~input_o\ : std_logic;
SIGNAL \inst3|Mux16~5_combout\ : std_logic;
SIGNAL \inst3|Mux16~6_combout\ : std_logic;
SIGNAL \inst3|Mux48~0_combout\ : std_logic;
SIGNAL \inst3|Mux48~1_combout\ : std_logic;
SIGNAL \inst3|Mux48~2_combout\ : std_logic;
SIGNAL \inst3|Mux48~3_combout\ : std_logic;
SIGNAL \inst3|Mux48~4_combout\ : std_logic;
SIGNAL \inst3|Mux16~7_combout\ : std_logic;
SIGNAL \inst3|Mux16~8_combout\ : std_logic;
SIGNAL \inst3|Decoder0~0_combout\ : std_logic;
SIGNAL \inst3|regs[0][15]~q\ : std_logic;
SIGNAL \inst3|Mux32~0_combout\ : std_logic;
SIGNAL \inst3|Mux32~1_combout\ : std_logic;
SIGNAL \inst3|Mux32~2_combout\ : std_logic;
SIGNAL \inst3|Mux32~3_combout\ : std_logic;
SIGNAL \inst3|Mux32~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][14]~q\ : std_logic;
SIGNAL \inst3|regs[1][14]~q\ : std_logic;
SIGNAL \inst3|regs[9][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][14]~q\ : std_logic;
SIGNAL \inst3|regs[12][14]~q\ : std_logic;
SIGNAL \inst3|regs[5][14]~q\ : std_logic;
SIGNAL \inst3|regs[13][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][14]~q\ : std_logic;
SIGNAL \inst3|regs[10][14]~q\ : std_logic;
SIGNAL \inst3|regs[3][14]~q\ : std_logic;
SIGNAL \inst3|regs[11][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][14]~q\ : std_logic;
SIGNAL \inst3|regs[14][14]~q\ : std_logic;
SIGNAL \inst3|regs[7][14]~q\ : std_logic;
SIGNAL \inst3|regs[15][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~3_combout\ : std_logic;
SIGNAL \inst3|Mux17~4_combout\ : std_logic;
SIGNAL \inst3|Mux49~0_combout\ : std_logic;
SIGNAL \inst3|Mux49~1_combout\ : std_logic;
SIGNAL \inst3|Mux49~2_combout\ : std_logic;
SIGNAL \inst3|Mux49~3_combout\ : std_logic;
SIGNAL \inst3|Mux49~4_combout\ : std_logic;
SIGNAL \inst3|Mux17~5_combout\ : std_logic;
SIGNAL \inst3|Mux17~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][14]~q\ : std_logic;
SIGNAL \inst3|Mux33~0_combout\ : std_logic;
SIGNAL \inst3|Mux33~1_combout\ : std_logic;
SIGNAL \inst3|Mux33~2_combout\ : std_logic;
SIGNAL \inst3|Mux33~3_combout\ : std_logic;
SIGNAL \inst3|Mux33~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][13]~q\ : std_logic;
SIGNAL \inst3|regs[4][13]~q\ : std_logic;
SIGNAL \inst3|regs[6][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][13]~q\ : std_logic;
SIGNAL \inst3|regs[10][13]~q\ : std_logic;
SIGNAL \inst3|regs[12][13]~q\ : std_logic;
SIGNAL \inst3|regs[14][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][13]~q\ : std_logic;
SIGNAL \inst3|regs[3][13]~q\ : std_logic;
SIGNAL \inst3|regs[5][13]~q\ : std_logic;
SIGNAL \inst3|regs[7][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][13]~q\ : std_logic;
SIGNAL \inst3|regs[11][13]~q\ : std_logic;
SIGNAL \inst3|regs[13][13]~q\ : std_logic;
SIGNAL \inst3|regs[15][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~3_combout\ : std_logic;
SIGNAL \inst3|Mux18~4_combout\ : std_logic;
SIGNAL \inst3|Mux50~0_combout\ : std_logic;
SIGNAL \inst3|Mux50~1_combout\ : std_logic;
SIGNAL \inst3|Mux50~2_combout\ : std_logic;
SIGNAL \inst3|Mux50~3_combout\ : std_logic;
SIGNAL \inst3|Mux50~4_combout\ : std_logic;
SIGNAL \inst3|Mux18~5_combout\ : std_logic;
SIGNAL \inst3|Mux18~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][13]~q\ : std_logic;
SIGNAL \inst3|Mux34~0_combout\ : std_logic;
SIGNAL \inst3|Mux34~1_combout\ : std_logic;
SIGNAL \inst3|Mux34~2_combout\ : std_logic;
SIGNAL \inst3|Mux34~3_combout\ : std_logic;
SIGNAL \inst3|Mux34~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][12]~q\ : std_logic;
SIGNAL \inst3|regs[1][12]~q\ : std_logic;
SIGNAL \inst3|regs[9][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][12]~q\ : std_logic;
SIGNAL \inst3|regs[12][12]~q\ : std_logic;
SIGNAL \inst3|regs[5][12]~q\ : std_logic;
SIGNAL \inst3|regs[13][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][12]~q\ : std_logic;
SIGNAL \inst3|regs[10][12]~q\ : std_logic;
SIGNAL \inst3|regs[3][12]~q\ : std_logic;
SIGNAL \inst3|regs[11][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][12]~q\ : std_logic;
SIGNAL \inst3|regs[14][12]~q\ : std_logic;
SIGNAL \inst3|regs[7][12]~q\ : std_logic;
SIGNAL \inst3|regs[15][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~3_combout\ : std_logic;
SIGNAL \inst3|Mux19~4_combout\ : std_logic;
SIGNAL \inst3|Mux51~0_combout\ : std_logic;
SIGNAL \inst3|Mux51~1_combout\ : std_logic;
SIGNAL \inst3|Mux51~2_combout\ : std_logic;
SIGNAL \inst3|Mux51~3_combout\ : std_logic;
SIGNAL \inst3|Mux51~4_combout\ : std_logic;
SIGNAL \inst3|Mux19~5_combout\ : std_logic;
SIGNAL \inst3|Mux19~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][12]~q\ : std_logic;
SIGNAL \inst3|Mux35~0_combout\ : std_logic;
SIGNAL \inst3|Mux35~1_combout\ : std_logic;
SIGNAL \inst3|Mux35~2_combout\ : std_logic;
SIGNAL \inst3|Mux35~3_combout\ : std_logic;
SIGNAL \inst3|Mux35~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][11]~q\ : std_logic;
SIGNAL \inst3|regs[4][11]~q\ : std_logic;
SIGNAL \inst3|regs[6][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][11]~q\ : std_logic;
SIGNAL \inst3|regs[10][11]~q\ : std_logic;
SIGNAL \inst3|regs[12][11]~q\ : std_logic;
SIGNAL \inst3|regs[14][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][11]~q\ : std_logic;
SIGNAL \inst3|regs[3][11]~q\ : std_logic;
SIGNAL \inst3|regs[5][11]~q\ : std_logic;
SIGNAL \inst3|regs[7][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][11]~q\ : std_logic;
SIGNAL \inst3|regs[11][11]~q\ : std_logic;
SIGNAL \inst3|regs[13][11]~q\ : std_logic;
SIGNAL \inst3|regs[15][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~3_combout\ : std_logic;
SIGNAL \inst3|Mux20~4_combout\ : std_logic;
SIGNAL \inst3|Mux52~0_combout\ : std_logic;
SIGNAL \inst3|Mux52~1_combout\ : std_logic;
SIGNAL \inst3|Mux52~2_combout\ : std_logic;
SIGNAL \inst3|Mux52~3_combout\ : std_logic;
SIGNAL \inst3|Mux52~4_combout\ : std_logic;
SIGNAL \inst3|Mux20~5_combout\ : std_logic;
SIGNAL \inst3|Mux20~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][11]~q\ : std_logic;
SIGNAL \inst3|Mux36~0_combout\ : std_logic;
SIGNAL \inst3|Mux36~1_combout\ : std_logic;
SIGNAL \inst3|Mux36~2_combout\ : std_logic;
SIGNAL \inst3|Mux36~3_combout\ : std_logic;
SIGNAL \inst3|Mux36~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][10]~q\ : std_logic;
SIGNAL \inst3|regs[1][10]~q\ : std_logic;
SIGNAL \inst3|regs[9][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][10]~q\ : std_logic;
SIGNAL \inst3|regs[12][10]~q\ : std_logic;
SIGNAL \inst3|regs[5][10]~q\ : std_logic;
SIGNAL \inst3|regs[13][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][10]~q\ : std_logic;
SIGNAL \inst3|regs[10][10]~q\ : std_logic;
SIGNAL \inst3|regs[3][10]~q\ : std_logic;
SIGNAL \inst3|regs[11][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][10]~q\ : std_logic;
SIGNAL \inst3|regs[14][10]~q\ : std_logic;
SIGNAL \inst3|regs[7][10]~q\ : std_logic;
SIGNAL \inst3|regs[15][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~3_combout\ : std_logic;
SIGNAL \inst3|Mux21~4_combout\ : std_logic;
SIGNAL \inst3|Mux53~0_combout\ : std_logic;
SIGNAL \inst3|Mux53~1_combout\ : std_logic;
SIGNAL \inst3|Mux53~2_combout\ : std_logic;
SIGNAL \inst3|Mux53~3_combout\ : std_logic;
SIGNAL \inst3|Mux53~4_combout\ : std_logic;
SIGNAL \inst3|Mux21~5_combout\ : std_logic;
SIGNAL \inst3|Mux21~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][10]~q\ : std_logic;
SIGNAL \inst3|Mux37~0_combout\ : std_logic;
SIGNAL \inst3|Mux37~1_combout\ : std_logic;
SIGNAL \inst3|Mux37~2_combout\ : std_logic;
SIGNAL \inst3|Mux37~3_combout\ : std_logic;
SIGNAL \inst3|Mux37~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][9]~q\ : std_logic;
SIGNAL \inst3|regs[4][9]~q\ : std_logic;
SIGNAL \inst3|regs[6][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][9]~q\ : std_logic;
SIGNAL \inst3|regs[10][9]~q\ : std_logic;
SIGNAL \inst3|regs[12][9]~q\ : std_logic;
SIGNAL \inst3|regs[14][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][9]~q\ : std_logic;
SIGNAL \inst3|regs[3][9]~q\ : std_logic;
SIGNAL \inst3|regs[5][9]~q\ : std_logic;
SIGNAL \inst3|regs[7][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][9]~q\ : std_logic;
SIGNAL \inst3|regs[11][9]~q\ : std_logic;
SIGNAL \inst3|regs[13][9]~q\ : std_logic;
SIGNAL \inst3|regs[15][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~3_combout\ : std_logic;
SIGNAL \inst3|Mux22~4_combout\ : std_logic;
SIGNAL \inst3|Mux54~0_combout\ : std_logic;
SIGNAL \inst3|Mux54~1_combout\ : std_logic;
SIGNAL \inst3|Mux54~2_combout\ : std_logic;
SIGNAL \inst3|Mux54~3_combout\ : std_logic;
SIGNAL \inst3|Mux54~4_combout\ : std_logic;
SIGNAL \inst3|Mux22~5_combout\ : std_logic;
SIGNAL \inst3|Mux22~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][9]~q\ : std_logic;
SIGNAL \inst3|Mux38~0_combout\ : std_logic;
SIGNAL \inst3|Mux38~1_combout\ : std_logic;
SIGNAL \inst3|Mux38~2_combout\ : std_logic;
SIGNAL \inst3|Mux38~3_combout\ : std_logic;
SIGNAL \inst3|Mux38~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][8]~q\ : std_logic;
SIGNAL \inst3|regs[1][8]~q\ : std_logic;
SIGNAL \inst3|regs[9][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][8]~q\ : std_logic;
SIGNAL \inst3|regs[12][8]~q\ : std_logic;
SIGNAL \inst3|regs[5][8]~q\ : std_logic;
SIGNAL \inst3|regs[13][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][8]~q\ : std_logic;
SIGNAL \inst3|regs[10][8]~q\ : std_logic;
SIGNAL \inst3|regs[3][8]~q\ : std_logic;
SIGNAL \inst3|regs[11][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][8]~q\ : std_logic;
SIGNAL \inst3|regs[14][8]~q\ : std_logic;
SIGNAL \inst3|regs[7][8]~q\ : std_logic;
SIGNAL \inst3|regs[15][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~3_combout\ : std_logic;
SIGNAL \inst3|Mux23~4_combout\ : std_logic;
SIGNAL \inst3|Mux55~0_combout\ : std_logic;
SIGNAL \inst3|Mux55~1_combout\ : std_logic;
SIGNAL \inst3|Mux55~2_combout\ : std_logic;
SIGNAL \inst3|Mux55~3_combout\ : std_logic;
SIGNAL \inst3|Mux55~4_combout\ : std_logic;
SIGNAL \inst3|Mux23~5_combout\ : std_logic;
SIGNAL \inst3|Mux23~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][8]~q\ : std_logic;
SIGNAL \inst3|Mux39~0_combout\ : std_logic;
SIGNAL \inst3|Mux39~1_combout\ : std_logic;
SIGNAL \inst3|Mux39~2_combout\ : std_logic;
SIGNAL \inst3|Mux39~3_combout\ : std_logic;
SIGNAL \inst3|Mux39~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][7]~q\ : std_logic;
SIGNAL \inst3|regs[4][7]~q\ : std_logic;
SIGNAL \inst3|regs[6][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][7]~q\ : std_logic;
SIGNAL \inst3|regs[10][7]~q\ : std_logic;
SIGNAL \inst3|regs[12][7]~q\ : std_logic;
SIGNAL \inst3|regs[14][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][7]~q\ : std_logic;
SIGNAL \inst3|regs[3][7]~q\ : std_logic;
SIGNAL \inst3|regs[5][7]~q\ : std_logic;
SIGNAL \inst3|regs[7][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][7]~q\ : std_logic;
SIGNAL \inst3|regs[11][7]~q\ : std_logic;
SIGNAL \inst3|regs[13][7]~q\ : std_logic;
SIGNAL \inst3|regs[15][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~3_combout\ : std_logic;
SIGNAL \inst3|Mux24~4_combout\ : std_logic;
SIGNAL \inst3|Mux56~0_combout\ : std_logic;
SIGNAL \inst3|Mux56~1_combout\ : std_logic;
SIGNAL \inst3|Mux56~2_combout\ : std_logic;
SIGNAL \inst3|Mux56~3_combout\ : std_logic;
SIGNAL \inst3|Mux56~4_combout\ : std_logic;
SIGNAL \inst3|Mux24~5_combout\ : std_logic;
SIGNAL \inst3|Mux24~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][7]~q\ : std_logic;
SIGNAL \inst3|Mux40~0_combout\ : std_logic;
SIGNAL \inst3|Mux40~1_combout\ : std_logic;
SIGNAL \inst3|Mux40~2_combout\ : std_logic;
SIGNAL \inst3|Mux40~3_combout\ : std_logic;
SIGNAL \inst3|Mux40~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][6]~q\ : std_logic;
SIGNAL \inst3|regs[1][6]~q\ : std_logic;
SIGNAL \inst3|regs[9][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][6]~q\ : std_logic;
SIGNAL \inst3|regs[12][6]~q\ : std_logic;
SIGNAL \inst3|regs[5][6]~q\ : std_logic;
SIGNAL \inst3|regs[13][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][6]~q\ : std_logic;
SIGNAL \inst3|regs[10][6]~q\ : std_logic;
SIGNAL \inst3|regs[3][6]~q\ : std_logic;
SIGNAL \inst3|regs[11][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][6]~q\ : std_logic;
SIGNAL \inst3|regs[14][6]~q\ : std_logic;
SIGNAL \inst3|regs[7][6]~q\ : std_logic;
SIGNAL \inst3|regs[15][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~3_combout\ : std_logic;
SIGNAL \inst3|Mux25~4_combout\ : std_logic;
SIGNAL \inst3|Mux57~0_combout\ : std_logic;
SIGNAL \inst3|Mux57~1_combout\ : std_logic;
SIGNAL \inst3|Mux57~2_combout\ : std_logic;
SIGNAL \inst3|Mux57~3_combout\ : std_logic;
SIGNAL \inst3|Mux57~4_combout\ : std_logic;
SIGNAL \inst3|Mux25~5_combout\ : std_logic;
SIGNAL \inst3|Mux25~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][6]~q\ : std_logic;
SIGNAL \inst3|Mux41~0_combout\ : std_logic;
SIGNAL \inst3|Mux41~1_combout\ : std_logic;
SIGNAL \inst3|Mux41~2_combout\ : std_logic;
SIGNAL \inst3|Mux41~3_combout\ : std_logic;
SIGNAL \inst3|Mux41~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][5]~q\ : std_logic;
SIGNAL \inst3|regs[4][5]~q\ : std_logic;
SIGNAL \inst3|regs[6][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][5]~q\ : std_logic;
SIGNAL \inst3|regs[10][5]~q\ : std_logic;
SIGNAL \inst3|regs[12][5]~q\ : std_logic;
SIGNAL \inst3|regs[14][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][5]~q\ : std_logic;
SIGNAL \inst3|regs[3][5]~q\ : std_logic;
SIGNAL \inst3|regs[5][5]~q\ : std_logic;
SIGNAL \inst3|regs[7][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][5]~q\ : std_logic;
SIGNAL \inst3|regs[11][5]~q\ : std_logic;
SIGNAL \inst3|regs[13][5]~q\ : std_logic;
SIGNAL \inst3|regs[15][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~3_combout\ : std_logic;
SIGNAL \inst3|Mux26~4_combout\ : std_logic;
SIGNAL \inst3|Mux58~0_combout\ : std_logic;
SIGNAL \inst3|Mux58~1_combout\ : std_logic;
SIGNAL \inst3|Mux58~2_combout\ : std_logic;
SIGNAL \inst3|Mux58~3_combout\ : std_logic;
SIGNAL \inst3|Mux58~4_combout\ : std_logic;
SIGNAL \inst3|Mux26~5_combout\ : std_logic;
SIGNAL \inst3|Mux26~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][5]~q\ : std_logic;
SIGNAL \inst3|Mux42~0_combout\ : std_logic;
SIGNAL \inst3|Mux42~1_combout\ : std_logic;
SIGNAL \inst3|Mux42~2_combout\ : std_logic;
SIGNAL \inst3|Mux42~3_combout\ : std_logic;
SIGNAL \inst3|Mux42~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][4]~q\ : std_logic;
SIGNAL \inst3|regs[1][4]~q\ : std_logic;
SIGNAL \inst3|regs[9][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][4]~q\ : std_logic;
SIGNAL \inst3|regs[12][4]~q\ : std_logic;
SIGNAL \inst3|regs[5][4]~q\ : std_logic;
SIGNAL \inst3|regs[13][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][4]~q\ : std_logic;
SIGNAL \inst3|regs[10][4]~q\ : std_logic;
SIGNAL \inst3|regs[3][4]~q\ : std_logic;
SIGNAL \inst3|regs[11][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][4]~q\ : std_logic;
SIGNAL \inst3|regs[14][4]~q\ : std_logic;
SIGNAL \inst3|regs[7][4]~q\ : std_logic;
SIGNAL \inst3|regs[15][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~3_combout\ : std_logic;
SIGNAL \inst3|Mux27~4_combout\ : std_logic;
SIGNAL \inst3|Mux59~0_combout\ : std_logic;
SIGNAL \inst3|Mux59~1_combout\ : std_logic;
SIGNAL \inst3|Mux59~2_combout\ : std_logic;
SIGNAL \inst3|Mux59~3_combout\ : std_logic;
SIGNAL \inst3|Mux59~4_combout\ : std_logic;
SIGNAL \inst3|Mux27~5_combout\ : std_logic;
SIGNAL \inst3|Mux27~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][4]~q\ : std_logic;
SIGNAL \inst3|Mux43~0_combout\ : std_logic;
SIGNAL \inst3|Mux43~1_combout\ : std_logic;
SIGNAL \inst3|Mux43~2_combout\ : std_logic;
SIGNAL \inst3|Mux43~3_combout\ : std_logic;
SIGNAL \inst3|Mux43~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][3]~q\ : std_logic;
SIGNAL \inst3|regs[4][3]~q\ : std_logic;
SIGNAL \inst3|regs[6][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][3]~q\ : std_logic;
SIGNAL \inst3|regs[10][3]~q\ : std_logic;
SIGNAL \inst3|regs[12][3]~q\ : std_logic;
SIGNAL \inst3|regs[14][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][3]~q\ : std_logic;
SIGNAL \inst3|regs[3][3]~q\ : std_logic;
SIGNAL \inst3|regs[5][3]~q\ : std_logic;
SIGNAL \inst3|regs[7][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][3]~q\ : std_logic;
SIGNAL \inst3|regs[11][3]~q\ : std_logic;
SIGNAL \inst3|regs[13][3]~q\ : std_logic;
SIGNAL \inst3|regs[15][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~3_combout\ : std_logic;
SIGNAL \inst3|Mux28~4_combout\ : std_logic;
SIGNAL \inst3|Mux60~0_combout\ : std_logic;
SIGNAL \inst3|Mux60~1_combout\ : std_logic;
SIGNAL \inst3|Mux60~2_combout\ : std_logic;
SIGNAL \inst3|Mux60~3_combout\ : std_logic;
SIGNAL \inst3|Mux60~4_combout\ : std_logic;
SIGNAL \inst3|Mux28~5_combout\ : std_logic;
SIGNAL \inst3|Mux28~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][3]~q\ : std_logic;
SIGNAL \inst3|Mux44~0_combout\ : std_logic;
SIGNAL \inst3|Mux44~1_combout\ : std_logic;
SIGNAL \inst3|Mux44~2_combout\ : std_logic;
SIGNAL \inst3|Mux44~3_combout\ : std_logic;
SIGNAL \inst3|Mux44~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][2]~q\ : std_logic;
SIGNAL \inst3|regs[1][2]~q\ : std_logic;
SIGNAL \inst3|regs[9][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][2]~q\ : std_logic;
SIGNAL \inst3|regs[12][2]~q\ : std_logic;
SIGNAL \inst3|regs[5][2]~q\ : std_logic;
SIGNAL \inst3|regs[13][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][2]~q\ : std_logic;
SIGNAL \inst3|regs[10][2]~q\ : std_logic;
SIGNAL \inst3|regs[3][2]~q\ : std_logic;
SIGNAL \inst3|regs[11][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][2]~q\ : std_logic;
SIGNAL \inst3|regs[14][2]~q\ : std_logic;
SIGNAL \inst3|regs[7][2]~q\ : std_logic;
SIGNAL \inst3|regs[15][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~3_combout\ : std_logic;
SIGNAL \inst3|Mux29~4_combout\ : std_logic;
SIGNAL \inst3|Mux61~0_combout\ : std_logic;
SIGNAL \inst3|Mux61~1_combout\ : std_logic;
SIGNAL \inst3|Mux61~2_combout\ : std_logic;
SIGNAL \inst3|Mux61~3_combout\ : std_logic;
SIGNAL \inst3|Mux61~4_combout\ : std_logic;
SIGNAL \inst3|Mux29~5_combout\ : std_logic;
SIGNAL \inst3|Mux29~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][2]~q\ : std_logic;
SIGNAL \inst3|Mux45~0_combout\ : std_logic;
SIGNAL \inst3|Mux45~1_combout\ : std_logic;
SIGNAL \inst3|Mux45~2_combout\ : std_logic;
SIGNAL \inst3|Mux45~3_combout\ : std_logic;
SIGNAL \inst3|Mux45~4_combout\ : std_logic;
SIGNAL \inst3|regs[2][1]~q\ : std_logic;
SIGNAL \inst3|regs[4][1]~q\ : std_logic;
SIGNAL \inst3|regs[6][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|regs[8][1]~q\ : std_logic;
SIGNAL \inst3|regs[10][1]~q\ : std_logic;
SIGNAL \inst3|regs[12][1]~q\ : std_logic;
SIGNAL \inst3|regs[14][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][1]~q\ : std_logic;
SIGNAL \inst3|regs[3][1]~q\ : std_logic;
SIGNAL \inst3|regs[5][1]~q\ : std_logic;
SIGNAL \inst3|regs[7][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~2_combout\ : std_logic;
SIGNAL \inst3|regs[9][1]~q\ : std_logic;
SIGNAL \inst3|regs[11][1]~q\ : std_logic;
SIGNAL \inst3|regs[13][1]~q\ : std_logic;
SIGNAL \inst3|regs[15][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~3_combout\ : std_logic;
SIGNAL \inst3|Mux30~4_combout\ : std_logic;
SIGNAL \inst3|Mux62~0_combout\ : std_logic;
SIGNAL \inst3|Mux62~1_combout\ : std_logic;
SIGNAL \inst3|Mux62~2_combout\ : std_logic;
SIGNAL \inst3|Mux62~3_combout\ : std_logic;
SIGNAL \inst3|Mux62~4_combout\ : std_logic;
SIGNAL \inst3|Mux30~5_combout\ : std_logic;
SIGNAL \inst3|Mux30~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][1]~q\ : std_logic;
SIGNAL \inst3|Mux46~0_combout\ : std_logic;
SIGNAL \inst3|Mux46~1_combout\ : std_logic;
SIGNAL \inst3|Mux46~2_combout\ : std_logic;
SIGNAL \inst3|Mux46~3_combout\ : std_logic;
SIGNAL \inst3|Mux46~4_combout\ : std_logic;
SIGNAL \inst3|regs[8][0]~q\ : std_logic;
SIGNAL \inst3|regs[1][0]~q\ : std_logic;
SIGNAL \inst3|regs[9][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][0]~q\ : std_logic;
SIGNAL \inst3|regs[12][0]~q\ : std_logic;
SIGNAL \inst3|regs[5][0]~q\ : std_logic;
SIGNAL \inst3|regs[13][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][0]~q\ : std_logic;
SIGNAL \inst3|regs[10][0]~q\ : std_logic;
SIGNAL \inst3|regs[3][0]~q\ : std_logic;
SIGNAL \inst3|regs[11][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~2_combout\ : std_logic;
SIGNAL \inst3|regs[6][0]~q\ : std_logic;
SIGNAL \inst3|regs[14][0]~q\ : std_logic;
SIGNAL \inst3|regs[7][0]~q\ : std_logic;
SIGNAL \inst3|regs[15][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~3_combout\ : std_logic;
SIGNAL \inst3|Mux31~4_combout\ : std_logic;
SIGNAL \inst3|Mux63~0_combout\ : std_logic;
SIGNAL \inst3|Mux63~1_combout\ : std_logic;
SIGNAL \inst3|Mux63~2_combout\ : std_logic;
SIGNAL \inst3|Mux63~3_combout\ : std_logic;
SIGNAL \inst3|Mux63~4_combout\ : std_logic;
SIGNAL \inst3|Mux31~5_combout\ : std_logic;
SIGNAL \inst3|Mux31~6_combout\ : std_logic;
SIGNAL \inst3|regs[0][0]~q\ : std_logic;
SIGNAL \inst3|Mux47~0_combout\ : std_logic;
SIGNAL \inst3|Mux47~1_combout\ : std_logic;
SIGNAL \inst3|Mux47~2_combout\ : std_logic;
SIGNAL \inst3|Mux47~3_combout\ : std_logic;
SIGNAL \inst3|Mux47~4_combout\ : std_logic;
SIGNAL \inst2|rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|out_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|address_method\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|opcode\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux35~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux35~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][12]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux34~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][13]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux33~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][14]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux32~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux32~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][15]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][15]~q\ : std_logic;
SIGNAL \inst|ALT_INV_out_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_out_count[15]~24_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count[15]~20_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~0_combout\ : std_logic;
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
SIGNAL \inst3|ALT_INV_regs[4][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux41~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][6]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux40~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][7]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux39~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux39~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][8]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux38~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][9]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux37~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][10]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux36~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][11]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux47~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux47~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux47~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux46~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux46~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][1]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux45~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux45~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][2]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux44~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux44~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][3]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[3][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[2][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[1][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[4][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[0][4]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux42~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[15][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[14][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[13][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[12][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[11][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[10][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[9][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[8][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[7][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[6][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_regs[5][5]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count~18_combout\ : std_logic;
SIGNAL \inst|ALT_INV_out_count~17_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~5_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~7_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~6_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_increment[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_z~input_o\ : std_logic;
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
SIGNAL \ALT_INV_increment[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_increment[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_ld_r~input_o\ : std_logic;
SIGNAL \ALT_INV_init~input_o\ : std_logic;
SIGNAL \ALT_INV_rf_input_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rf_input_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rf_input_sel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rf_input_sel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_rx_count[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_alu_count[14]~input_o\ : std_logic;

BEGIN

address_method <= ww_address_method;
ww_clk <= clk;
ww_dm_wr <= dm_wr;
ww_z <= z;
ww_reset <= reset;
ww_alu_count <= alu_count;
ww_increment <= increment;
ww_rx_count <= rx_count;
ww_rz_data <= rz_data;
ww_dm_indata <= dm_indata;
dm_outdata <= ww_dm_outdata;
opcode <= ww_opcode;
out_count <= ww_out_count;
pm_outdata <= ww_pm_outdata;
rxData <= ww_rxData;
ww_init <= init;
ww_ld_r <= ld_r;
ww_rf_input_sel <= rf_input_sel;
rzData <= ww_rzData;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dm_indata[15]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dm_indata[14]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dm_indata[13]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dm_indata[12]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dm_indata[11]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dm_indata[10]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dm_indata[9]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dm_indata[8]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dm_indata[7]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dm_indata[6]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dm_indata[5]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dm_indata[4]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dm_indata[3]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dm_indata[2]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dm_indata[1]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dm_indata[0]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst1|Add0~2_combout\ & \inst1|Add0~1_combout\ & \inst1|Add0~0_combout\ & \inst|out_count[0]~_wirecell_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dm_indata[15]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dm_indata[14]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dm_indata[13]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dm_indata[12]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dm_indata[11]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dm_indata[10]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dm_indata[9]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dm_indata[8]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dm_indata[7]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dm_indata[6]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dm_indata[5]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dm_indata[4]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dm_indata[3]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dm_indata[2]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dm_indata[1]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dm_indata[0]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst|out_count\(3) & \inst|out_count\(2) & \inst|out_count\(1) & \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst3|ALT_INV_Mux36~0_combout\ <= NOT \inst3|Mux36~0_combout\;
\inst3|ALT_INV_regs[3][11]~q\ <= NOT \inst3|regs[3][11]~q\;
\inst3|ALT_INV_regs[2][11]~q\ <= NOT \inst3|regs[2][11]~q\;
\inst3|ALT_INV_regs[1][11]~q\ <= NOT \inst3|regs[1][11]~q\;
\inst3|ALT_INV_regs[0][11]~q\ <= NOT \inst3|regs[0][11]~q\;
\inst3|ALT_INV_Mux35~4_combout\ <= NOT \inst3|Mux35~4_combout\;
\inst3|ALT_INV_Mux35~3_combout\ <= NOT \inst3|Mux35~3_combout\;
\inst3|ALT_INV_regs[15][12]~q\ <= NOT \inst3|regs[15][12]~q\;
\inst3|ALT_INV_regs[11][12]~q\ <= NOT \inst3|regs[11][12]~q\;
\inst3|ALT_INV_regs[7][12]~q\ <= NOT \inst3|regs[7][12]~q\;
\inst3|ALT_INV_regs[3][12]~q\ <= NOT \inst3|regs[3][12]~q\;
\inst3|ALT_INV_Mux35~2_combout\ <= NOT \inst3|Mux35~2_combout\;
\inst3|ALT_INV_regs[14][12]~q\ <= NOT \inst3|regs[14][12]~q\;
\inst3|ALT_INV_regs[10][12]~q\ <= NOT \inst3|regs[10][12]~q\;
\inst3|ALT_INV_regs[6][12]~q\ <= NOT \inst3|regs[6][12]~q\;
\inst3|ALT_INV_regs[2][12]~q\ <= NOT \inst3|regs[2][12]~q\;
\inst3|ALT_INV_Mux35~1_combout\ <= NOT \inst3|Mux35~1_combout\;
\inst3|ALT_INV_regs[13][12]~q\ <= NOT \inst3|regs[13][12]~q\;
\inst3|ALT_INV_regs[9][12]~q\ <= NOT \inst3|regs[9][12]~q\;
\inst3|ALT_INV_regs[5][12]~q\ <= NOT \inst3|regs[5][12]~q\;
\inst3|ALT_INV_regs[1][12]~q\ <= NOT \inst3|regs[1][12]~q\;
\inst3|ALT_INV_Mux35~0_combout\ <= NOT \inst3|Mux35~0_combout\;
\inst3|ALT_INV_regs[12][12]~q\ <= NOT \inst3|regs[12][12]~q\;
\inst3|ALT_INV_regs[8][12]~q\ <= NOT \inst3|regs[8][12]~q\;
\inst3|ALT_INV_regs[4][12]~q\ <= NOT \inst3|regs[4][12]~q\;
\inst3|ALT_INV_regs[0][12]~q\ <= NOT \inst3|regs[0][12]~q\;
\inst3|ALT_INV_Mux34~4_combout\ <= NOT \inst3|Mux34~4_combout\;
\inst3|ALT_INV_Mux34~3_combout\ <= NOT \inst3|Mux34~3_combout\;
\inst3|ALT_INV_regs[15][13]~q\ <= NOT \inst3|regs[15][13]~q\;
\inst3|ALT_INV_regs[14][13]~q\ <= NOT \inst3|regs[14][13]~q\;
\inst3|ALT_INV_regs[13][13]~q\ <= NOT \inst3|regs[13][13]~q\;
\inst3|ALT_INV_regs[12][13]~q\ <= NOT \inst3|regs[12][13]~q\;
\inst3|ALT_INV_Mux34~2_combout\ <= NOT \inst3|Mux34~2_combout\;
\inst3|ALT_INV_regs[11][13]~q\ <= NOT \inst3|regs[11][13]~q\;
\inst3|ALT_INV_regs[10][13]~q\ <= NOT \inst3|regs[10][13]~q\;
\inst3|ALT_INV_regs[9][13]~q\ <= NOT \inst3|regs[9][13]~q\;
\inst3|ALT_INV_regs[8][13]~q\ <= NOT \inst3|regs[8][13]~q\;
\inst3|ALT_INV_Mux34~1_combout\ <= NOT \inst3|Mux34~1_combout\;
\inst3|ALT_INV_regs[7][13]~q\ <= NOT \inst3|regs[7][13]~q\;
\inst3|ALT_INV_regs[6][13]~q\ <= NOT \inst3|regs[6][13]~q\;
\inst3|ALT_INV_regs[5][13]~q\ <= NOT \inst3|regs[5][13]~q\;
\inst3|ALT_INV_regs[4][13]~q\ <= NOT \inst3|regs[4][13]~q\;
\inst3|ALT_INV_Mux34~0_combout\ <= NOT \inst3|Mux34~0_combout\;
\inst3|ALT_INV_regs[3][13]~q\ <= NOT \inst3|regs[3][13]~q\;
\inst3|ALT_INV_regs[2][13]~q\ <= NOT \inst3|regs[2][13]~q\;
\inst3|ALT_INV_regs[1][13]~q\ <= NOT \inst3|regs[1][13]~q\;
\inst3|ALT_INV_regs[0][13]~q\ <= NOT \inst3|regs[0][13]~q\;
\inst3|ALT_INV_Mux33~4_combout\ <= NOT \inst3|Mux33~4_combout\;
\inst3|ALT_INV_Mux33~3_combout\ <= NOT \inst3|Mux33~3_combout\;
\inst3|ALT_INV_regs[15][14]~q\ <= NOT \inst3|regs[15][14]~q\;
\inst3|ALT_INV_regs[11][14]~q\ <= NOT \inst3|regs[11][14]~q\;
\inst3|ALT_INV_regs[7][14]~q\ <= NOT \inst3|regs[7][14]~q\;
\inst3|ALT_INV_regs[3][14]~q\ <= NOT \inst3|regs[3][14]~q\;
\inst3|ALT_INV_Mux33~2_combout\ <= NOT \inst3|Mux33~2_combout\;
\inst3|ALT_INV_regs[14][14]~q\ <= NOT \inst3|regs[14][14]~q\;
\inst3|ALT_INV_regs[10][14]~q\ <= NOT \inst3|regs[10][14]~q\;
\inst3|ALT_INV_regs[6][14]~q\ <= NOT \inst3|regs[6][14]~q\;
\inst3|ALT_INV_regs[2][14]~q\ <= NOT \inst3|regs[2][14]~q\;
\inst3|ALT_INV_Mux33~1_combout\ <= NOT \inst3|Mux33~1_combout\;
\inst3|ALT_INV_regs[13][14]~q\ <= NOT \inst3|regs[13][14]~q\;
\inst3|ALT_INV_regs[9][14]~q\ <= NOT \inst3|regs[9][14]~q\;
\inst3|ALT_INV_regs[5][14]~q\ <= NOT \inst3|regs[5][14]~q\;
\inst3|ALT_INV_regs[1][14]~q\ <= NOT \inst3|regs[1][14]~q\;
\inst3|ALT_INV_Mux33~0_combout\ <= NOT \inst3|Mux33~0_combout\;
\inst3|ALT_INV_regs[12][14]~q\ <= NOT \inst3|regs[12][14]~q\;
\inst3|ALT_INV_regs[8][14]~q\ <= NOT \inst3|regs[8][14]~q\;
\inst3|ALT_INV_regs[4][14]~q\ <= NOT \inst3|regs[4][14]~q\;
\inst3|ALT_INV_regs[0][14]~q\ <= NOT \inst3|regs[0][14]~q\;
\inst3|ALT_INV_Mux32~4_combout\ <= NOT \inst3|Mux32~4_combout\;
\inst2|ALT_INV_rx\(3) <= NOT \inst2|rx\(3);
\inst2|ALT_INV_rx\(2) <= NOT \inst2|rx\(2);
\inst3|ALT_INV_Mux32~3_combout\ <= NOT \inst3|Mux32~3_combout\;
\inst3|ALT_INV_regs[15][15]~q\ <= NOT \inst3|regs[15][15]~q\;
\inst3|ALT_INV_regs[14][15]~q\ <= NOT \inst3|regs[14][15]~q\;
\inst3|ALT_INV_regs[13][15]~q\ <= NOT \inst3|regs[13][15]~q\;
\inst3|ALT_INV_regs[12][15]~q\ <= NOT \inst3|regs[12][15]~q\;
\inst3|ALT_INV_Mux32~2_combout\ <= NOT \inst3|Mux32~2_combout\;
\inst3|ALT_INV_regs[11][15]~q\ <= NOT \inst3|regs[11][15]~q\;
\inst3|ALT_INV_regs[10][15]~q\ <= NOT \inst3|regs[10][15]~q\;
\inst3|ALT_INV_regs[9][15]~q\ <= NOT \inst3|regs[9][15]~q\;
\inst3|ALT_INV_regs[8][15]~q\ <= NOT \inst3|regs[8][15]~q\;
\inst3|ALT_INV_Mux32~1_combout\ <= NOT \inst3|Mux32~1_combout\;
\inst3|ALT_INV_regs[7][15]~q\ <= NOT \inst3|regs[7][15]~q\;
\inst3|ALT_INV_regs[6][15]~q\ <= NOT \inst3|regs[6][15]~q\;
\inst3|ALT_INV_regs[5][15]~q\ <= NOT \inst3|regs[5][15]~q\;
\inst3|ALT_INV_regs[4][15]~q\ <= NOT \inst3|regs[4][15]~q\;
\inst3|ALT_INV_Mux32~0_combout\ <= NOT \inst3|Mux32~0_combout\;
\inst2|ALT_INV_rx\(1) <= NOT \inst2|rx\(1);
\inst2|ALT_INV_rx\(0) <= NOT \inst2|rx\(0);
\inst3|ALT_INV_regs[3][15]~q\ <= NOT \inst3|regs[3][15]~q\;
\inst3|ALT_INV_regs[2][15]~q\ <= NOT \inst3|regs[2][15]~q\;
\inst3|ALT_INV_regs[1][15]~q\ <= NOT \inst3|regs[1][15]~q\;
\inst3|ALT_INV_regs[0][15]~q\ <= NOT \inst3|regs[0][15]~q\;
\inst|ALT_INV_out_count\(0) <= NOT \inst|out_count\(0);
\inst|ALT_INV_out_count[15]~24_combout\ <= NOT \inst|out_count[15]~24_combout\;
\inst|ALT_INV_out_count[15]~20_combout\ <= NOT \inst|out_count[15]~20_combout\;
\inst|ALT_INV_Mux15~0_combout\ <= NOT \inst|Mux15~0_combout\;
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
\inst3|ALT_INV_regs[4][5]~q\ <= NOT \inst3|regs[4][5]~q\;
\inst3|ALT_INV_Mux42~0_combout\ <= NOT \inst3|Mux42~0_combout\;
\inst3|ALT_INV_regs[3][5]~q\ <= NOT \inst3|regs[3][5]~q\;
\inst3|ALT_INV_regs[2][5]~q\ <= NOT \inst3|regs[2][5]~q\;
\inst3|ALT_INV_regs[1][5]~q\ <= NOT \inst3|regs[1][5]~q\;
\inst3|ALT_INV_regs[0][5]~q\ <= NOT \inst3|regs[0][5]~q\;
\inst3|ALT_INV_Mux41~4_combout\ <= NOT \inst3|Mux41~4_combout\;
\inst3|ALT_INV_Mux41~3_combout\ <= NOT \inst3|Mux41~3_combout\;
\inst3|ALT_INV_regs[15][6]~q\ <= NOT \inst3|regs[15][6]~q\;
\inst3|ALT_INV_regs[11][6]~q\ <= NOT \inst3|regs[11][6]~q\;
\inst3|ALT_INV_regs[7][6]~q\ <= NOT \inst3|regs[7][6]~q\;
\inst3|ALT_INV_regs[3][6]~q\ <= NOT \inst3|regs[3][6]~q\;
\inst3|ALT_INV_Mux41~2_combout\ <= NOT \inst3|Mux41~2_combout\;
\inst3|ALT_INV_regs[14][6]~q\ <= NOT \inst3|regs[14][6]~q\;
\inst3|ALT_INV_regs[10][6]~q\ <= NOT \inst3|regs[10][6]~q\;
\inst3|ALT_INV_regs[6][6]~q\ <= NOT \inst3|regs[6][6]~q\;
\inst3|ALT_INV_regs[2][6]~q\ <= NOT \inst3|regs[2][6]~q\;
\inst3|ALT_INV_Mux41~1_combout\ <= NOT \inst3|Mux41~1_combout\;
\inst3|ALT_INV_regs[13][6]~q\ <= NOT \inst3|regs[13][6]~q\;
\inst3|ALT_INV_regs[9][6]~q\ <= NOT \inst3|regs[9][6]~q\;
\inst3|ALT_INV_regs[5][6]~q\ <= NOT \inst3|regs[5][6]~q\;
\inst3|ALT_INV_regs[1][6]~q\ <= NOT \inst3|regs[1][6]~q\;
\inst3|ALT_INV_Mux41~0_combout\ <= NOT \inst3|Mux41~0_combout\;
\inst3|ALT_INV_regs[12][6]~q\ <= NOT \inst3|regs[12][6]~q\;
\inst3|ALT_INV_regs[8][6]~q\ <= NOT \inst3|regs[8][6]~q\;
\inst3|ALT_INV_regs[4][6]~q\ <= NOT \inst3|regs[4][6]~q\;
\inst3|ALT_INV_regs[0][6]~q\ <= NOT \inst3|regs[0][6]~q\;
\inst3|ALT_INV_Mux40~4_combout\ <= NOT \inst3|Mux40~4_combout\;
\inst3|ALT_INV_Mux40~3_combout\ <= NOT \inst3|Mux40~3_combout\;
\inst3|ALT_INV_regs[15][7]~q\ <= NOT \inst3|regs[15][7]~q\;
\inst3|ALT_INV_regs[14][7]~q\ <= NOT \inst3|regs[14][7]~q\;
\inst3|ALT_INV_regs[13][7]~q\ <= NOT \inst3|regs[13][7]~q\;
\inst3|ALT_INV_regs[12][7]~q\ <= NOT \inst3|regs[12][7]~q\;
\inst3|ALT_INV_Mux40~2_combout\ <= NOT \inst3|Mux40~2_combout\;
\inst3|ALT_INV_regs[11][7]~q\ <= NOT \inst3|regs[11][7]~q\;
\inst3|ALT_INV_regs[10][7]~q\ <= NOT \inst3|regs[10][7]~q\;
\inst3|ALT_INV_regs[9][7]~q\ <= NOT \inst3|regs[9][7]~q\;
\inst3|ALT_INV_regs[8][7]~q\ <= NOT \inst3|regs[8][7]~q\;
\inst3|ALT_INV_Mux40~1_combout\ <= NOT \inst3|Mux40~1_combout\;
\inst3|ALT_INV_regs[7][7]~q\ <= NOT \inst3|regs[7][7]~q\;
\inst3|ALT_INV_regs[6][7]~q\ <= NOT \inst3|regs[6][7]~q\;
\inst3|ALT_INV_regs[5][7]~q\ <= NOT \inst3|regs[5][7]~q\;
\inst3|ALT_INV_regs[4][7]~q\ <= NOT \inst3|regs[4][7]~q\;
\inst3|ALT_INV_Mux40~0_combout\ <= NOT \inst3|Mux40~0_combout\;
\inst3|ALT_INV_regs[3][7]~q\ <= NOT \inst3|regs[3][7]~q\;
\inst3|ALT_INV_regs[2][7]~q\ <= NOT \inst3|regs[2][7]~q\;
\inst3|ALT_INV_regs[1][7]~q\ <= NOT \inst3|regs[1][7]~q\;
\inst3|ALT_INV_regs[0][7]~q\ <= NOT \inst3|regs[0][7]~q\;
\inst3|ALT_INV_Mux39~4_combout\ <= NOT \inst3|Mux39~4_combout\;
\inst3|ALT_INV_Mux39~3_combout\ <= NOT \inst3|Mux39~3_combout\;
\inst3|ALT_INV_regs[15][8]~q\ <= NOT \inst3|regs[15][8]~q\;
\inst3|ALT_INV_regs[11][8]~q\ <= NOT \inst3|regs[11][8]~q\;
\inst3|ALT_INV_regs[7][8]~q\ <= NOT \inst3|regs[7][8]~q\;
\inst3|ALT_INV_regs[3][8]~q\ <= NOT \inst3|regs[3][8]~q\;
\inst3|ALT_INV_Mux39~2_combout\ <= NOT \inst3|Mux39~2_combout\;
\inst3|ALT_INV_regs[14][8]~q\ <= NOT \inst3|regs[14][8]~q\;
\inst3|ALT_INV_regs[10][8]~q\ <= NOT \inst3|regs[10][8]~q\;
\inst3|ALT_INV_regs[6][8]~q\ <= NOT \inst3|regs[6][8]~q\;
\inst3|ALT_INV_regs[2][8]~q\ <= NOT \inst3|regs[2][8]~q\;
\inst3|ALT_INV_Mux39~1_combout\ <= NOT \inst3|Mux39~1_combout\;
\inst3|ALT_INV_regs[13][8]~q\ <= NOT \inst3|regs[13][8]~q\;
\inst3|ALT_INV_regs[9][8]~q\ <= NOT \inst3|regs[9][8]~q\;
\inst3|ALT_INV_regs[5][8]~q\ <= NOT \inst3|regs[5][8]~q\;
\inst3|ALT_INV_regs[1][8]~q\ <= NOT \inst3|regs[1][8]~q\;
\inst3|ALT_INV_Mux39~0_combout\ <= NOT \inst3|Mux39~0_combout\;
\inst3|ALT_INV_regs[12][8]~q\ <= NOT \inst3|regs[12][8]~q\;
\inst3|ALT_INV_regs[8][8]~q\ <= NOT \inst3|regs[8][8]~q\;
\inst3|ALT_INV_regs[4][8]~q\ <= NOT \inst3|regs[4][8]~q\;
\inst3|ALT_INV_regs[0][8]~q\ <= NOT \inst3|regs[0][8]~q\;
\inst3|ALT_INV_Mux38~4_combout\ <= NOT \inst3|Mux38~4_combout\;
\inst3|ALT_INV_Mux38~3_combout\ <= NOT \inst3|Mux38~3_combout\;
\inst3|ALT_INV_regs[15][9]~q\ <= NOT \inst3|regs[15][9]~q\;
\inst3|ALT_INV_regs[14][9]~q\ <= NOT \inst3|regs[14][9]~q\;
\inst3|ALT_INV_regs[13][9]~q\ <= NOT \inst3|regs[13][9]~q\;
\inst3|ALT_INV_regs[12][9]~q\ <= NOT \inst3|regs[12][9]~q\;
\inst3|ALT_INV_Mux38~2_combout\ <= NOT \inst3|Mux38~2_combout\;
\inst3|ALT_INV_regs[11][9]~q\ <= NOT \inst3|regs[11][9]~q\;
\inst3|ALT_INV_regs[10][9]~q\ <= NOT \inst3|regs[10][9]~q\;
\inst3|ALT_INV_regs[9][9]~q\ <= NOT \inst3|regs[9][9]~q\;
\inst3|ALT_INV_regs[8][9]~q\ <= NOT \inst3|regs[8][9]~q\;
\inst3|ALT_INV_Mux38~1_combout\ <= NOT \inst3|Mux38~1_combout\;
\inst3|ALT_INV_regs[7][9]~q\ <= NOT \inst3|regs[7][9]~q\;
\inst3|ALT_INV_regs[6][9]~q\ <= NOT \inst3|regs[6][9]~q\;
\inst3|ALT_INV_regs[5][9]~q\ <= NOT \inst3|regs[5][9]~q\;
\inst3|ALT_INV_regs[4][9]~q\ <= NOT \inst3|regs[4][9]~q\;
\inst3|ALT_INV_Mux38~0_combout\ <= NOT \inst3|Mux38~0_combout\;
\inst3|ALT_INV_regs[3][9]~q\ <= NOT \inst3|regs[3][9]~q\;
\inst3|ALT_INV_regs[2][9]~q\ <= NOT \inst3|regs[2][9]~q\;
\inst3|ALT_INV_regs[1][9]~q\ <= NOT \inst3|regs[1][9]~q\;
\inst3|ALT_INV_regs[0][9]~q\ <= NOT \inst3|regs[0][9]~q\;
\inst3|ALT_INV_Mux37~4_combout\ <= NOT \inst3|Mux37~4_combout\;
\inst3|ALT_INV_Mux37~3_combout\ <= NOT \inst3|Mux37~3_combout\;
\inst3|ALT_INV_regs[15][10]~q\ <= NOT \inst3|regs[15][10]~q\;
\inst3|ALT_INV_regs[11][10]~q\ <= NOT \inst3|regs[11][10]~q\;
\inst3|ALT_INV_regs[7][10]~q\ <= NOT \inst3|regs[7][10]~q\;
\inst3|ALT_INV_regs[3][10]~q\ <= NOT \inst3|regs[3][10]~q\;
\inst3|ALT_INV_Mux37~2_combout\ <= NOT \inst3|Mux37~2_combout\;
\inst3|ALT_INV_regs[14][10]~q\ <= NOT \inst3|regs[14][10]~q\;
\inst3|ALT_INV_regs[10][10]~q\ <= NOT \inst3|regs[10][10]~q\;
\inst3|ALT_INV_regs[6][10]~q\ <= NOT \inst3|regs[6][10]~q\;
\inst3|ALT_INV_regs[2][10]~q\ <= NOT \inst3|regs[2][10]~q\;
\inst3|ALT_INV_Mux37~1_combout\ <= NOT \inst3|Mux37~1_combout\;
\inst3|ALT_INV_regs[13][10]~q\ <= NOT \inst3|regs[13][10]~q\;
\inst3|ALT_INV_regs[9][10]~q\ <= NOT \inst3|regs[9][10]~q\;
\inst3|ALT_INV_regs[5][10]~q\ <= NOT \inst3|regs[5][10]~q\;
\inst3|ALT_INV_regs[1][10]~q\ <= NOT \inst3|regs[1][10]~q\;
\inst3|ALT_INV_Mux37~0_combout\ <= NOT \inst3|Mux37~0_combout\;
\inst3|ALT_INV_regs[12][10]~q\ <= NOT \inst3|regs[12][10]~q\;
\inst3|ALT_INV_regs[8][10]~q\ <= NOT \inst3|regs[8][10]~q\;
\inst3|ALT_INV_regs[4][10]~q\ <= NOT \inst3|regs[4][10]~q\;
\inst3|ALT_INV_regs[0][10]~q\ <= NOT \inst3|regs[0][10]~q\;
\inst3|ALT_INV_Mux36~4_combout\ <= NOT \inst3|Mux36~4_combout\;
\inst3|ALT_INV_Mux36~3_combout\ <= NOT \inst3|Mux36~3_combout\;
\inst3|ALT_INV_regs[15][11]~q\ <= NOT \inst3|regs[15][11]~q\;
\inst3|ALT_INV_regs[14][11]~q\ <= NOT \inst3|regs[14][11]~q\;
\inst3|ALT_INV_regs[13][11]~q\ <= NOT \inst3|regs[13][11]~q\;
\inst3|ALT_INV_regs[12][11]~q\ <= NOT \inst3|regs[12][11]~q\;
\inst3|ALT_INV_Mux36~2_combout\ <= NOT \inst3|Mux36~2_combout\;
\inst3|ALT_INV_regs[11][11]~q\ <= NOT \inst3|regs[11][11]~q\;
\inst3|ALT_INV_regs[10][11]~q\ <= NOT \inst3|regs[10][11]~q\;
\inst3|ALT_INV_regs[9][11]~q\ <= NOT \inst3|regs[9][11]~q\;
\inst3|ALT_INV_regs[8][11]~q\ <= NOT \inst3|regs[8][11]~q\;
\inst3|ALT_INV_Mux36~1_combout\ <= NOT \inst3|Mux36~1_combout\;
\inst3|ALT_INV_regs[7][11]~q\ <= NOT \inst3|regs[7][11]~q\;
\inst3|ALT_INV_regs[6][11]~q\ <= NOT \inst3|regs[6][11]~q\;
\inst3|ALT_INV_regs[5][11]~q\ <= NOT \inst3|regs[5][11]~q\;
\inst3|ALT_INV_regs[4][11]~q\ <= NOT \inst3|regs[4][11]~q\;
\inst3|ALT_INV_Mux48~3_combout\ <= NOT \inst3|Mux48~3_combout\;
\inst3|ALT_INV_Mux48~2_combout\ <= NOT \inst3|Mux48~2_combout\;
\inst3|ALT_INV_Mux48~1_combout\ <= NOT \inst3|Mux48~1_combout\;
\inst3|ALT_INV_Mux48~0_combout\ <= NOT \inst3|Mux48~0_combout\;
\inst2|ALT_INV_rz\(1) <= NOT \inst2|rz\(1);
\inst2|ALT_INV_rz\(0) <= NOT \inst2|rz\(0);
\inst3|ALT_INV_Mux47~4_combout\ <= NOT \inst3|Mux47~4_combout\;
\inst3|ALT_INV_Mux47~3_combout\ <= NOT \inst3|Mux47~3_combout\;
\inst3|ALT_INV_regs[15][0]~q\ <= NOT \inst3|regs[15][0]~q\;
\inst3|ALT_INV_regs[11][0]~q\ <= NOT \inst3|regs[11][0]~q\;
\inst3|ALT_INV_regs[7][0]~q\ <= NOT \inst3|regs[7][0]~q\;
\inst3|ALT_INV_regs[3][0]~q\ <= NOT \inst3|regs[3][0]~q\;
\inst3|ALT_INV_Mux47~2_combout\ <= NOT \inst3|Mux47~2_combout\;
\inst3|ALT_INV_regs[14][0]~q\ <= NOT \inst3|regs[14][0]~q\;
\inst3|ALT_INV_regs[10][0]~q\ <= NOT \inst3|regs[10][0]~q\;
\inst3|ALT_INV_regs[6][0]~q\ <= NOT \inst3|regs[6][0]~q\;
\inst3|ALT_INV_regs[2][0]~q\ <= NOT \inst3|regs[2][0]~q\;
\inst3|ALT_INV_Mux47~1_combout\ <= NOT \inst3|Mux47~1_combout\;
\inst3|ALT_INV_regs[13][0]~q\ <= NOT \inst3|regs[13][0]~q\;
\inst3|ALT_INV_regs[9][0]~q\ <= NOT \inst3|regs[9][0]~q\;
\inst3|ALT_INV_regs[5][0]~q\ <= NOT \inst3|regs[5][0]~q\;
\inst3|ALT_INV_regs[1][0]~q\ <= NOT \inst3|regs[1][0]~q\;
\inst3|ALT_INV_Mux47~0_combout\ <= NOT \inst3|Mux47~0_combout\;
\inst3|ALT_INV_regs[12][0]~q\ <= NOT \inst3|regs[12][0]~q\;
\inst3|ALT_INV_regs[8][0]~q\ <= NOT \inst3|regs[8][0]~q\;
\inst3|ALT_INV_regs[4][0]~q\ <= NOT \inst3|regs[4][0]~q\;
\inst3|ALT_INV_regs[0][0]~q\ <= NOT \inst3|regs[0][0]~q\;
\inst3|ALT_INV_Mux46~4_combout\ <= NOT \inst3|Mux46~4_combout\;
\inst3|ALT_INV_Mux46~3_combout\ <= NOT \inst3|Mux46~3_combout\;
\inst3|ALT_INV_regs[15][1]~q\ <= NOT \inst3|regs[15][1]~q\;
\inst3|ALT_INV_regs[14][1]~q\ <= NOT \inst3|regs[14][1]~q\;
\inst3|ALT_INV_regs[13][1]~q\ <= NOT \inst3|regs[13][1]~q\;
\inst3|ALT_INV_regs[12][1]~q\ <= NOT \inst3|regs[12][1]~q\;
\inst3|ALT_INV_Mux46~2_combout\ <= NOT \inst3|Mux46~2_combout\;
\inst3|ALT_INV_regs[11][1]~q\ <= NOT \inst3|regs[11][1]~q\;
\inst3|ALT_INV_regs[10][1]~q\ <= NOT \inst3|regs[10][1]~q\;
\inst3|ALT_INV_regs[9][1]~q\ <= NOT \inst3|regs[9][1]~q\;
\inst3|ALT_INV_regs[8][1]~q\ <= NOT \inst3|regs[8][1]~q\;
\inst3|ALT_INV_Mux46~1_combout\ <= NOT \inst3|Mux46~1_combout\;
\inst3|ALT_INV_regs[7][1]~q\ <= NOT \inst3|regs[7][1]~q\;
\inst3|ALT_INV_regs[6][1]~q\ <= NOT \inst3|regs[6][1]~q\;
\inst3|ALT_INV_regs[5][1]~q\ <= NOT \inst3|regs[5][1]~q\;
\inst3|ALT_INV_regs[4][1]~q\ <= NOT \inst3|regs[4][1]~q\;
\inst3|ALT_INV_Mux46~0_combout\ <= NOT \inst3|Mux46~0_combout\;
\inst3|ALT_INV_regs[3][1]~q\ <= NOT \inst3|regs[3][1]~q\;
\inst3|ALT_INV_regs[2][1]~q\ <= NOT \inst3|regs[2][1]~q\;
\inst3|ALT_INV_regs[1][1]~q\ <= NOT \inst3|regs[1][1]~q\;
\inst3|ALT_INV_regs[0][1]~q\ <= NOT \inst3|regs[0][1]~q\;
\inst3|ALT_INV_Mux45~4_combout\ <= NOT \inst3|Mux45~4_combout\;
\inst3|ALT_INV_Mux45~3_combout\ <= NOT \inst3|Mux45~3_combout\;
\inst3|ALT_INV_regs[15][2]~q\ <= NOT \inst3|regs[15][2]~q\;
\inst3|ALT_INV_regs[11][2]~q\ <= NOT \inst3|regs[11][2]~q\;
\inst3|ALT_INV_regs[7][2]~q\ <= NOT \inst3|regs[7][2]~q\;
\inst3|ALT_INV_regs[3][2]~q\ <= NOT \inst3|regs[3][2]~q\;
\inst3|ALT_INV_Mux45~2_combout\ <= NOT \inst3|Mux45~2_combout\;
\inst3|ALT_INV_regs[14][2]~q\ <= NOT \inst3|regs[14][2]~q\;
\inst3|ALT_INV_regs[10][2]~q\ <= NOT \inst3|regs[10][2]~q\;
\inst3|ALT_INV_regs[6][2]~q\ <= NOT \inst3|regs[6][2]~q\;
\inst3|ALT_INV_regs[2][2]~q\ <= NOT \inst3|regs[2][2]~q\;
\inst3|ALT_INV_Mux45~1_combout\ <= NOT \inst3|Mux45~1_combout\;
\inst3|ALT_INV_regs[13][2]~q\ <= NOT \inst3|regs[13][2]~q\;
\inst3|ALT_INV_regs[9][2]~q\ <= NOT \inst3|regs[9][2]~q\;
\inst3|ALT_INV_regs[5][2]~q\ <= NOT \inst3|regs[5][2]~q\;
\inst3|ALT_INV_regs[1][2]~q\ <= NOT \inst3|regs[1][2]~q\;
\inst3|ALT_INV_Mux45~0_combout\ <= NOT \inst3|Mux45~0_combout\;
\inst3|ALT_INV_regs[12][2]~q\ <= NOT \inst3|regs[12][2]~q\;
\inst3|ALT_INV_regs[8][2]~q\ <= NOT \inst3|regs[8][2]~q\;
\inst3|ALT_INV_regs[4][2]~q\ <= NOT \inst3|regs[4][2]~q\;
\inst3|ALT_INV_regs[0][2]~q\ <= NOT \inst3|regs[0][2]~q\;
\inst3|ALT_INV_Mux44~4_combout\ <= NOT \inst3|Mux44~4_combout\;
\inst3|ALT_INV_Mux44~3_combout\ <= NOT \inst3|Mux44~3_combout\;
\inst3|ALT_INV_regs[15][3]~q\ <= NOT \inst3|regs[15][3]~q\;
\inst3|ALT_INV_regs[14][3]~q\ <= NOT \inst3|regs[14][3]~q\;
\inst3|ALT_INV_regs[13][3]~q\ <= NOT \inst3|regs[13][3]~q\;
\inst3|ALT_INV_regs[12][3]~q\ <= NOT \inst3|regs[12][3]~q\;
\inst3|ALT_INV_Mux44~2_combout\ <= NOT \inst3|Mux44~2_combout\;
\inst3|ALT_INV_regs[11][3]~q\ <= NOT \inst3|regs[11][3]~q\;
\inst3|ALT_INV_regs[10][3]~q\ <= NOT \inst3|regs[10][3]~q\;
\inst3|ALT_INV_regs[9][3]~q\ <= NOT \inst3|regs[9][3]~q\;
\inst3|ALT_INV_regs[8][3]~q\ <= NOT \inst3|regs[8][3]~q\;
\inst3|ALT_INV_Mux44~1_combout\ <= NOT \inst3|Mux44~1_combout\;
\inst3|ALT_INV_regs[7][3]~q\ <= NOT \inst3|regs[7][3]~q\;
\inst3|ALT_INV_regs[6][3]~q\ <= NOT \inst3|regs[6][3]~q\;
\inst3|ALT_INV_regs[5][3]~q\ <= NOT \inst3|regs[5][3]~q\;
\inst3|ALT_INV_regs[4][3]~q\ <= NOT \inst3|regs[4][3]~q\;
\inst3|ALT_INV_Mux44~0_combout\ <= NOT \inst3|Mux44~0_combout\;
\inst3|ALT_INV_regs[3][3]~q\ <= NOT \inst3|regs[3][3]~q\;
\inst3|ALT_INV_regs[2][3]~q\ <= NOT \inst3|regs[2][3]~q\;
\inst3|ALT_INV_regs[1][3]~q\ <= NOT \inst3|regs[1][3]~q\;
\inst3|ALT_INV_regs[0][3]~q\ <= NOT \inst3|regs[0][3]~q\;
\inst3|ALT_INV_Mux43~4_combout\ <= NOT \inst3|Mux43~4_combout\;
\inst3|ALT_INV_Mux43~3_combout\ <= NOT \inst3|Mux43~3_combout\;
\inst3|ALT_INV_regs[15][4]~q\ <= NOT \inst3|regs[15][4]~q\;
\inst3|ALT_INV_regs[11][4]~q\ <= NOT \inst3|regs[11][4]~q\;
\inst3|ALT_INV_regs[7][4]~q\ <= NOT \inst3|regs[7][4]~q\;
\inst3|ALT_INV_regs[3][4]~q\ <= NOT \inst3|regs[3][4]~q\;
\inst3|ALT_INV_Mux43~2_combout\ <= NOT \inst3|Mux43~2_combout\;
\inst3|ALT_INV_regs[14][4]~q\ <= NOT \inst3|regs[14][4]~q\;
\inst3|ALT_INV_regs[10][4]~q\ <= NOT \inst3|regs[10][4]~q\;
\inst3|ALT_INV_regs[6][4]~q\ <= NOT \inst3|regs[6][4]~q\;
\inst3|ALT_INV_regs[2][4]~q\ <= NOT \inst3|regs[2][4]~q\;
\inst3|ALT_INV_Mux43~1_combout\ <= NOT \inst3|Mux43~1_combout\;
\inst3|ALT_INV_regs[13][4]~q\ <= NOT \inst3|regs[13][4]~q\;
\inst3|ALT_INV_regs[9][4]~q\ <= NOT \inst3|regs[9][4]~q\;
\inst3|ALT_INV_regs[5][4]~q\ <= NOT \inst3|regs[5][4]~q\;
\inst3|ALT_INV_regs[1][4]~q\ <= NOT \inst3|regs[1][4]~q\;
\inst3|ALT_INV_Mux43~0_combout\ <= NOT \inst3|Mux43~0_combout\;
\inst3|ALT_INV_regs[12][4]~q\ <= NOT \inst3|regs[12][4]~q\;
\inst3|ALT_INV_regs[8][4]~q\ <= NOT \inst3|regs[8][4]~q\;
\inst3|ALT_INV_regs[4][4]~q\ <= NOT \inst3|regs[4][4]~q\;
\inst3|ALT_INV_regs[0][4]~q\ <= NOT \inst3|regs[0][4]~q\;
\inst3|ALT_INV_Mux42~4_combout\ <= NOT \inst3|Mux42~4_combout\;
\inst3|ALT_INV_Mux42~3_combout\ <= NOT \inst3|Mux42~3_combout\;
\inst3|ALT_INV_regs[15][5]~q\ <= NOT \inst3|regs[15][5]~q\;
\inst3|ALT_INV_regs[14][5]~q\ <= NOT \inst3|regs[14][5]~q\;
\inst3|ALT_INV_regs[13][5]~q\ <= NOT \inst3|regs[13][5]~q\;
\inst3|ALT_INV_regs[12][5]~q\ <= NOT \inst3|regs[12][5]~q\;
\inst3|ALT_INV_Mux42~2_combout\ <= NOT \inst3|Mux42~2_combout\;
\inst3|ALT_INV_regs[11][5]~q\ <= NOT \inst3|regs[11][5]~q\;
\inst3|ALT_INV_regs[10][5]~q\ <= NOT \inst3|regs[10][5]~q\;
\inst3|ALT_INV_regs[9][5]~q\ <= NOT \inst3|regs[9][5]~q\;
\inst3|ALT_INV_regs[8][5]~q\ <= NOT \inst3|regs[8][5]~q\;
\inst3|ALT_INV_Mux42~1_combout\ <= NOT \inst3|Mux42~1_combout\;
\inst3|ALT_INV_regs[7][5]~q\ <= NOT \inst3|regs[7][5]~q\;
\inst3|ALT_INV_regs[6][5]~q\ <= NOT \inst3|regs[6][5]~q\;
\inst3|ALT_INV_regs[5][5]~q\ <= NOT \inst3|regs[5][5]~q\;
\inst3|ALT_INV_Mux16~5_combout\ <= NOT \inst3|Mux16~5_combout\;
\inst3|ALT_INV_Mux16~4_combout\ <= NOT \inst3|Mux16~4_combout\;
\inst3|ALT_INV_Mux16~3_combout\ <= NOT \inst3|Mux16~3_combout\;
\inst3|ALT_INV_Mux16~2_combout\ <= NOT \inst3|Mux16~2_combout\;
\inst3|ALT_INV_Mux16~1_combout\ <= NOT \inst3|Mux16~1_combout\;
\inst3|ALT_INV_Mux16~0_combout\ <= NOT \inst3|Mux16~0_combout\;
\inst|ALT_INV_out_count~18_combout\ <= NOT \inst|out_count~18_combout\;
\inst|ALT_INV_out_count~17_combout\ <= NOT \inst|out_count~17_combout\;
\inst2|ALT_INV_operand\(0) <= NOT \inst2|operand\(0);
\inst2|ALT_INV_operand\(1) <= NOT \inst2|operand\(1);
\inst2|ALT_INV_operand\(2) <= NOT \inst2|operand\(2);
\inst2|ALT_INV_operand\(3) <= NOT \inst2|operand\(3);
\inst2|ALT_INV_operand\(4) <= NOT \inst2|operand\(4);
\inst2|ALT_INV_operand\(5) <= NOT \inst2|operand\(5);
\inst2|ALT_INV_operand\(6) <= NOT \inst2|operand\(6);
\inst2|ALT_INV_operand\(7) <= NOT \inst2|operand\(7);
\inst2|ALT_INV_operand\(8) <= NOT \inst2|operand\(8);
\inst2|ALT_INV_operand\(9) <= NOT \inst2|operand\(9);
\inst2|ALT_INV_operand\(10) <= NOT \inst2|operand\(10);
\inst2|ALT_INV_operand\(11) <= NOT \inst2|operand\(11);
\inst2|ALT_INV_operand\(12) <= NOT \inst2|operand\(12);
\inst2|ALT_INV_operand\(13) <= NOT \inst2|operand\(13);
\inst2|ALT_INV_operand\(14) <= NOT \inst2|operand\(14);
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst2|ALT_INV_operand\(15) <= NOT \inst2|operand\(15);
\inst3|ALT_INV_Mux63~4_combout\ <= NOT \inst3|Mux63~4_combout\;
\inst3|ALT_INV_Mux63~3_combout\ <= NOT \inst3|Mux63~3_combout\;
\inst3|ALT_INV_Mux63~2_combout\ <= NOT \inst3|Mux63~2_combout\;
\inst3|ALT_INV_Mux63~1_combout\ <= NOT \inst3|Mux63~1_combout\;
\inst3|ALT_INV_Mux63~0_combout\ <= NOT \inst3|Mux63~0_combout\;
\inst3|ALT_INV_Mux62~4_combout\ <= NOT \inst3|Mux62~4_combout\;
\inst3|ALT_INV_Mux62~3_combout\ <= NOT \inst3|Mux62~3_combout\;
\inst3|ALT_INV_Mux62~2_combout\ <= NOT \inst3|Mux62~2_combout\;
\inst3|ALT_INV_Mux62~1_combout\ <= NOT \inst3|Mux62~1_combout\;
\inst3|ALT_INV_Mux62~0_combout\ <= NOT \inst3|Mux62~0_combout\;
\inst3|ALT_INV_Mux61~4_combout\ <= NOT \inst3|Mux61~4_combout\;
\inst3|ALT_INV_Mux61~3_combout\ <= NOT \inst3|Mux61~3_combout\;
\inst3|ALT_INV_Mux61~2_combout\ <= NOT \inst3|Mux61~2_combout\;
\inst3|ALT_INV_Mux61~1_combout\ <= NOT \inst3|Mux61~1_combout\;
\inst3|ALT_INV_Mux61~0_combout\ <= NOT \inst3|Mux61~0_combout\;
\inst3|ALT_INV_Mux60~4_combout\ <= NOT \inst3|Mux60~4_combout\;
\inst3|ALT_INV_Mux60~3_combout\ <= NOT \inst3|Mux60~3_combout\;
\inst3|ALT_INV_Mux60~2_combout\ <= NOT \inst3|Mux60~2_combout\;
\inst3|ALT_INV_Mux60~1_combout\ <= NOT \inst3|Mux60~1_combout\;
\inst3|ALT_INV_Mux60~0_combout\ <= NOT \inst3|Mux60~0_combout\;
\inst3|ALT_INV_Mux59~4_combout\ <= NOT \inst3|Mux59~4_combout\;
\inst3|ALT_INV_Mux59~3_combout\ <= NOT \inst3|Mux59~3_combout\;
\inst3|ALT_INV_Mux59~2_combout\ <= NOT \inst3|Mux59~2_combout\;
\inst3|ALT_INV_Mux59~1_combout\ <= NOT \inst3|Mux59~1_combout\;
\inst3|ALT_INV_Mux59~0_combout\ <= NOT \inst3|Mux59~0_combout\;
\inst3|ALT_INV_Mux58~4_combout\ <= NOT \inst3|Mux58~4_combout\;
\inst3|ALT_INV_Mux58~3_combout\ <= NOT \inst3|Mux58~3_combout\;
\inst3|ALT_INV_Mux58~2_combout\ <= NOT \inst3|Mux58~2_combout\;
\inst3|ALT_INV_Mux58~1_combout\ <= NOT \inst3|Mux58~1_combout\;
\inst3|ALT_INV_Mux58~0_combout\ <= NOT \inst3|Mux58~0_combout\;
\inst3|ALT_INV_Mux57~4_combout\ <= NOT \inst3|Mux57~4_combout\;
\inst3|ALT_INV_Mux57~3_combout\ <= NOT \inst3|Mux57~3_combout\;
\inst3|ALT_INV_Mux57~2_combout\ <= NOT \inst3|Mux57~2_combout\;
\inst3|ALT_INV_Mux57~1_combout\ <= NOT \inst3|Mux57~1_combout\;
\inst3|ALT_INV_Mux57~0_combout\ <= NOT \inst3|Mux57~0_combout\;
\inst3|ALT_INV_Mux56~4_combout\ <= NOT \inst3|Mux56~4_combout\;
\inst3|ALT_INV_Mux56~3_combout\ <= NOT \inst3|Mux56~3_combout\;
\inst3|ALT_INV_Mux56~2_combout\ <= NOT \inst3|Mux56~2_combout\;
\inst3|ALT_INV_Mux56~1_combout\ <= NOT \inst3|Mux56~1_combout\;
\inst3|ALT_INV_Mux56~0_combout\ <= NOT \inst3|Mux56~0_combout\;
\inst3|ALT_INV_Mux55~4_combout\ <= NOT \inst3|Mux55~4_combout\;
\inst3|ALT_INV_Mux55~3_combout\ <= NOT \inst3|Mux55~3_combout\;
\inst3|ALT_INV_Mux55~2_combout\ <= NOT \inst3|Mux55~2_combout\;
\inst3|ALT_INV_Mux55~1_combout\ <= NOT \inst3|Mux55~1_combout\;
\inst3|ALT_INV_Mux55~0_combout\ <= NOT \inst3|Mux55~0_combout\;
\inst3|ALT_INV_Mux54~4_combout\ <= NOT \inst3|Mux54~4_combout\;
\inst3|ALT_INV_Mux54~3_combout\ <= NOT \inst3|Mux54~3_combout\;
\inst3|ALT_INV_Mux54~2_combout\ <= NOT \inst3|Mux54~2_combout\;
\inst3|ALT_INV_Mux54~1_combout\ <= NOT \inst3|Mux54~1_combout\;
\inst3|ALT_INV_Mux54~0_combout\ <= NOT \inst3|Mux54~0_combout\;
\inst3|ALT_INV_Mux53~4_combout\ <= NOT \inst3|Mux53~4_combout\;
\inst3|ALT_INV_Mux53~3_combout\ <= NOT \inst3|Mux53~3_combout\;
\inst3|ALT_INV_Mux53~2_combout\ <= NOT \inst3|Mux53~2_combout\;
\inst3|ALT_INV_Mux53~1_combout\ <= NOT \inst3|Mux53~1_combout\;
\inst3|ALT_INV_Mux53~0_combout\ <= NOT \inst3|Mux53~0_combout\;
\inst3|ALT_INV_Mux52~4_combout\ <= NOT \inst3|Mux52~4_combout\;
\inst3|ALT_INV_Mux52~3_combout\ <= NOT \inst3|Mux52~3_combout\;
\inst3|ALT_INV_Mux52~2_combout\ <= NOT \inst3|Mux52~2_combout\;
\inst3|ALT_INV_Mux52~1_combout\ <= NOT \inst3|Mux52~1_combout\;
\inst3|ALT_INV_Mux52~0_combout\ <= NOT \inst3|Mux52~0_combout\;
\inst3|ALT_INV_Mux51~4_combout\ <= NOT \inst3|Mux51~4_combout\;
\inst3|ALT_INV_Mux51~3_combout\ <= NOT \inst3|Mux51~3_combout\;
\inst3|ALT_INV_Mux51~2_combout\ <= NOT \inst3|Mux51~2_combout\;
\inst3|ALT_INV_Mux51~1_combout\ <= NOT \inst3|Mux51~1_combout\;
\inst3|ALT_INV_Mux51~0_combout\ <= NOT \inst3|Mux51~0_combout\;
\inst3|ALT_INV_Mux50~4_combout\ <= NOT \inst3|Mux50~4_combout\;
\inst3|ALT_INV_Mux50~3_combout\ <= NOT \inst3|Mux50~3_combout\;
\inst3|ALT_INV_Mux50~2_combout\ <= NOT \inst3|Mux50~2_combout\;
\inst3|ALT_INV_Mux50~1_combout\ <= NOT \inst3|Mux50~1_combout\;
\inst3|ALT_INV_Mux50~0_combout\ <= NOT \inst3|Mux50~0_combout\;
\inst3|ALT_INV_Mux49~4_combout\ <= NOT \inst3|Mux49~4_combout\;
\inst3|ALT_INV_Mux49~3_combout\ <= NOT \inst3|Mux49~3_combout\;
\inst3|ALT_INV_Mux49~2_combout\ <= NOT \inst3|Mux49~2_combout\;
\inst3|ALT_INV_Mux49~1_combout\ <= NOT \inst3|Mux49~1_combout\;
\inst3|ALT_INV_Mux49~0_combout\ <= NOT \inst3|Mux49~0_combout\;
\inst3|ALT_INV_Mux48~4_combout\ <= NOT \inst3|Mux48~4_combout\;
\inst2|ALT_INV_rz\(3) <= NOT \inst2|rz\(3);
\inst2|ALT_INV_rz\(2) <= NOT \inst2|rz\(2);
\inst3|ALT_INV_Mux31~5_combout\ <= NOT \inst3|Mux31~5_combout\;
\inst3|ALT_INV_Mux31~4_combout\ <= NOT \inst3|Mux31~4_combout\;
\inst3|ALT_INV_Mux31~3_combout\ <= NOT \inst3|Mux31~3_combout\;
\inst3|ALT_INV_Mux31~2_combout\ <= NOT \inst3|Mux31~2_combout\;
\inst3|ALT_INV_Mux31~1_combout\ <= NOT \inst3|Mux31~1_combout\;
\inst3|ALT_INV_Mux31~0_combout\ <= NOT \inst3|Mux31~0_combout\;
\inst3|ALT_INV_Mux30~5_combout\ <= NOT \inst3|Mux30~5_combout\;
\inst3|ALT_INV_Mux30~4_combout\ <= NOT \inst3|Mux30~4_combout\;
\inst3|ALT_INV_Mux30~3_combout\ <= NOT \inst3|Mux30~3_combout\;
\inst3|ALT_INV_Mux30~2_combout\ <= NOT \inst3|Mux30~2_combout\;
\inst3|ALT_INV_Mux30~1_combout\ <= NOT \inst3|Mux30~1_combout\;
\inst3|ALT_INV_Mux30~0_combout\ <= NOT \inst3|Mux30~0_combout\;
\inst3|ALT_INV_Mux29~5_combout\ <= NOT \inst3|Mux29~5_combout\;
\inst3|ALT_INV_Mux29~4_combout\ <= NOT \inst3|Mux29~4_combout\;
\inst3|ALT_INV_Mux29~3_combout\ <= NOT \inst3|Mux29~3_combout\;
\inst3|ALT_INV_Mux29~2_combout\ <= NOT \inst3|Mux29~2_combout\;
\inst3|ALT_INV_Mux29~1_combout\ <= NOT \inst3|Mux29~1_combout\;
\inst3|ALT_INV_Mux29~0_combout\ <= NOT \inst3|Mux29~0_combout\;
\inst3|ALT_INV_Mux28~5_combout\ <= NOT \inst3|Mux28~5_combout\;
\inst3|ALT_INV_Mux28~4_combout\ <= NOT \inst3|Mux28~4_combout\;
\inst3|ALT_INV_Mux28~3_combout\ <= NOT \inst3|Mux28~3_combout\;
\inst3|ALT_INV_Mux28~2_combout\ <= NOT \inst3|Mux28~2_combout\;
\inst3|ALT_INV_Mux28~1_combout\ <= NOT \inst3|Mux28~1_combout\;
\inst3|ALT_INV_Mux28~0_combout\ <= NOT \inst3|Mux28~0_combout\;
\inst3|ALT_INV_Mux27~5_combout\ <= NOT \inst3|Mux27~5_combout\;
\inst3|ALT_INV_Mux27~4_combout\ <= NOT \inst3|Mux27~4_combout\;
\inst3|ALT_INV_Mux27~3_combout\ <= NOT \inst3|Mux27~3_combout\;
\inst3|ALT_INV_Mux27~2_combout\ <= NOT \inst3|Mux27~2_combout\;
\inst3|ALT_INV_Mux27~1_combout\ <= NOT \inst3|Mux27~1_combout\;
\inst3|ALT_INV_Mux27~0_combout\ <= NOT \inst3|Mux27~0_combout\;
\inst3|ALT_INV_Mux26~5_combout\ <= NOT \inst3|Mux26~5_combout\;
\inst3|ALT_INV_Mux26~4_combout\ <= NOT \inst3|Mux26~4_combout\;
\inst3|ALT_INV_Mux26~3_combout\ <= NOT \inst3|Mux26~3_combout\;
\inst3|ALT_INV_Mux26~2_combout\ <= NOT \inst3|Mux26~2_combout\;
\inst3|ALT_INV_Mux26~1_combout\ <= NOT \inst3|Mux26~1_combout\;
\inst3|ALT_INV_Mux26~0_combout\ <= NOT \inst3|Mux26~0_combout\;
\inst3|ALT_INV_Mux25~5_combout\ <= NOT \inst3|Mux25~5_combout\;
\inst3|ALT_INV_Mux25~4_combout\ <= NOT \inst3|Mux25~4_combout\;
\inst3|ALT_INV_Mux25~3_combout\ <= NOT \inst3|Mux25~3_combout\;
\inst3|ALT_INV_Mux25~2_combout\ <= NOT \inst3|Mux25~2_combout\;
\inst3|ALT_INV_Mux25~1_combout\ <= NOT \inst3|Mux25~1_combout\;
\inst3|ALT_INV_Mux25~0_combout\ <= NOT \inst3|Mux25~0_combout\;
\inst3|ALT_INV_Mux24~5_combout\ <= NOT \inst3|Mux24~5_combout\;
\inst3|ALT_INV_Mux24~4_combout\ <= NOT \inst3|Mux24~4_combout\;
\inst3|ALT_INV_Mux24~3_combout\ <= NOT \inst3|Mux24~3_combout\;
\inst3|ALT_INV_Mux24~2_combout\ <= NOT \inst3|Mux24~2_combout\;
\inst3|ALT_INV_Mux24~1_combout\ <= NOT \inst3|Mux24~1_combout\;
\inst3|ALT_INV_Mux24~0_combout\ <= NOT \inst3|Mux24~0_combout\;
\inst3|ALT_INV_Mux23~5_combout\ <= NOT \inst3|Mux23~5_combout\;
\inst3|ALT_INV_Mux23~4_combout\ <= NOT \inst3|Mux23~4_combout\;
\inst3|ALT_INV_Mux23~3_combout\ <= NOT \inst3|Mux23~3_combout\;
\inst3|ALT_INV_Mux23~2_combout\ <= NOT \inst3|Mux23~2_combout\;
\inst3|ALT_INV_Mux23~1_combout\ <= NOT \inst3|Mux23~1_combout\;
\inst3|ALT_INV_Mux23~0_combout\ <= NOT \inst3|Mux23~0_combout\;
\inst3|ALT_INV_Mux22~5_combout\ <= NOT \inst3|Mux22~5_combout\;
\inst3|ALT_INV_Mux22~4_combout\ <= NOT \inst3|Mux22~4_combout\;
\inst3|ALT_INV_Mux22~3_combout\ <= NOT \inst3|Mux22~3_combout\;
\inst3|ALT_INV_Mux22~2_combout\ <= NOT \inst3|Mux22~2_combout\;
\inst3|ALT_INV_Mux22~1_combout\ <= NOT \inst3|Mux22~1_combout\;
\inst3|ALT_INV_Mux22~0_combout\ <= NOT \inst3|Mux22~0_combout\;
\inst3|ALT_INV_Mux21~5_combout\ <= NOT \inst3|Mux21~5_combout\;
\inst3|ALT_INV_Mux21~4_combout\ <= NOT \inst3|Mux21~4_combout\;
\inst3|ALT_INV_Mux21~3_combout\ <= NOT \inst3|Mux21~3_combout\;
\inst3|ALT_INV_Mux21~2_combout\ <= NOT \inst3|Mux21~2_combout\;
\inst3|ALT_INV_Mux21~1_combout\ <= NOT \inst3|Mux21~1_combout\;
\inst3|ALT_INV_Mux21~0_combout\ <= NOT \inst3|Mux21~0_combout\;
\inst3|ALT_INV_Mux20~5_combout\ <= NOT \inst3|Mux20~5_combout\;
\inst3|ALT_INV_Mux20~4_combout\ <= NOT \inst3|Mux20~4_combout\;
\inst3|ALT_INV_Mux20~3_combout\ <= NOT \inst3|Mux20~3_combout\;
\inst3|ALT_INV_Mux20~2_combout\ <= NOT \inst3|Mux20~2_combout\;
\inst3|ALT_INV_Mux20~1_combout\ <= NOT \inst3|Mux20~1_combout\;
\inst3|ALT_INV_Mux20~0_combout\ <= NOT \inst3|Mux20~0_combout\;
\inst3|ALT_INV_Mux19~5_combout\ <= NOT \inst3|Mux19~5_combout\;
\inst3|ALT_INV_Mux19~4_combout\ <= NOT \inst3|Mux19~4_combout\;
\inst3|ALT_INV_Mux19~3_combout\ <= NOT \inst3|Mux19~3_combout\;
\inst3|ALT_INV_Mux19~2_combout\ <= NOT \inst3|Mux19~2_combout\;
\inst3|ALT_INV_Mux19~1_combout\ <= NOT \inst3|Mux19~1_combout\;
\inst3|ALT_INV_Mux19~0_combout\ <= NOT \inst3|Mux19~0_combout\;
\inst3|ALT_INV_Mux18~5_combout\ <= NOT \inst3|Mux18~5_combout\;
\inst3|ALT_INV_Mux18~4_combout\ <= NOT \inst3|Mux18~4_combout\;
\inst3|ALT_INV_Mux18~3_combout\ <= NOT \inst3|Mux18~3_combout\;
\inst3|ALT_INV_Mux18~2_combout\ <= NOT \inst3|Mux18~2_combout\;
\inst3|ALT_INV_Mux18~1_combout\ <= NOT \inst3|Mux18~1_combout\;
\inst3|ALT_INV_Mux18~0_combout\ <= NOT \inst3|Mux18~0_combout\;
\inst3|ALT_INV_Mux17~5_combout\ <= NOT \inst3|Mux17~5_combout\;
\inst3|ALT_INV_Mux17~4_combout\ <= NOT \inst3|Mux17~4_combout\;
\inst3|ALT_INV_Mux17~3_combout\ <= NOT \inst3|Mux17~3_combout\;
\inst3|ALT_INV_Mux17~2_combout\ <= NOT \inst3|Mux17~2_combout\;
\inst3|ALT_INV_Mux17~1_combout\ <= NOT \inst3|Mux17~1_combout\;
\inst3|ALT_INV_Mux17~0_combout\ <= NOT \inst3|Mux17~0_combout\;
\inst3|ALT_INV_Mux16~7_combout\ <= NOT \inst3|Mux16~7_combout\;
\inst3|ALT_INV_Mux16~6_combout\ <= NOT \inst3|Mux16~6_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_increment[2]~input_o\ <= NOT \increment[2]~input_o\;
\ALT_INV_z~input_o\ <= NOT \z~input_o\;
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
\ALT_INV_increment[0]~input_o\ <= NOT \increment[0]~input_o\;
\ALT_INV_increment[1]~input_o\ <= NOT \increment[1]~input_o\;
\ALT_INV_rx_count[15]~input_o\ <= NOT \rx_count[15]~input_o\;
\ALT_INV_alu_count[15]~input_o\ <= NOT \alu_count[15]~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_ld_r~input_o\ <= NOT \ld_r~input_o\;
\ALT_INV_init~input_o\ <= NOT \init~input_o\;
\ALT_INV_rf_input_sel[0]~input_o\ <= NOT \rf_input_sel[0]~input_o\;
\ALT_INV_rf_input_sel[1]~input_o\ <= NOT \rf_input_sel[1]~input_o\;
\ALT_INV_rf_input_sel[3]~input_o\ <= NOT \rf_input_sel[3]~input_o\;
\ALT_INV_rf_input_sel[2]~input_o\ <= NOT \rf_input_sel[2]~input_o\;
\ALT_INV_alu_count[0]~input_o\ <= NOT \alu_count[0]~input_o\;
\ALT_INV_rx_count[0]~input_o\ <= NOT \rx_count[0]~input_o\;
\ALT_INV_rx_count[1]~input_o\ <= NOT \rx_count[1]~input_o\;
\ALT_INV_alu_count[1]~input_o\ <= NOT \alu_count[1]~input_o\;
\ALT_INV_rx_count[2]~input_o\ <= NOT \rx_count[2]~input_o\;
\ALT_INV_alu_count[2]~input_o\ <= NOT \alu_count[2]~input_o\;
\ALT_INV_rx_count[3]~input_o\ <= NOT \rx_count[3]~input_o\;
\ALT_INV_alu_count[3]~input_o\ <= NOT \alu_count[3]~input_o\;
\ALT_INV_rx_count[4]~input_o\ <= NOT \rx_count[4]~input_o\;
\ALT_INV_alu_count[4]~input_o\ <= NOT \alu_count[4]~input_o\;
\ALT_INV_rx_count[5]~input_o\ <= NOT \rx_count[5]~input_o\;
\ALT_INV_alu_count[5]~input_o\ <= NOT \alu_count[5]~input_o\;
\ALT_INV_rx_count[6]~input_o\ <= NOT \rx_count[6]~input_o\;
\ALT_INV_alu_count[6]~input_o\ <= NOT \alu_count[6]~input_o\;
\ALT_INV_rx_count[7]~input_o\ <= NOT \rx_count[7]~input_o\;
\ALT_INV_alu_count[7]~input_o\ <= NOT \alu_count[7]~input_o\;
\ALT_INV_rx_count[8]~input_o\ <= NOT \rx_count[8]~input_o\;
\ALT_INV_alu_count[8]~input_o\ <= NOT \alu_count[8]~input_o\;
\ALT_INV_rx_count[9]~input_o\ <= NOT \rx_count[9]~input_o\;
\ALT_INV_alu_count[9]~input_o\ <= NOT \alu_count[9]~input_o\;
\ALT_INV_rx_count[10]~input_o\ <= NOT \rx_count[10]~input_o\;
\ALT_INV_alu_count[10]~input_o\ <= NOT \alu_count[10]~input_o\;
\ALT_INV_rx_count[11]~input_o\ <= NOT \rx_count[11]~input_o\;
\ALT_INV_alu_count[11]~input_o\ <= NOT \alu_count[11]~input_o\;
\ALT_INV_rx_count[12]~input_o\ <= NOT \rx_count[12]~input_o\;
\ALT_INV_alu_count[12]~input_o\ <= NOT \alu_count[12]~input_o\;
\ALT_INV_rx_count[13]~input_o\ <= NOT \rx_count[13]~input_o\;
\ALT_INV_alu_count[13]~input_o\ <= NOT \alu_count[13]~input_o\;
\ALT_INV_rx_count[14]~input_o\ <= NOT \rx_count[14]~input_o\;
\ALT_INV_alu_count[14]~input_o\ <= NOT \alu_count[14]~input_o\;

\address_method[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|address_method\(1),
	devoe => ww_devoe,
	o => \address_method[1]~output_o\);

\address_method[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|address_method\(0),
	devoe => ww_devoe,
	o => \address_method[0]~output_o\);

\dm_outdata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[15]~output_o\);

\dm_outdata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[14]~output_o\);

\dm_outdata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[13]~output_o\);

\dm_outdata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[12]~output_o\);

\dm_outdata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[11]~output_o\);

\dm_outdata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[10]~output_o\);

\dm_outdata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[9]~output_o\);

\dm_outdata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[8]~output_o\);

\dm_outdata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[7]~output_o\);

\dm_outdata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[6]~output_o\);

\dm_outdata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[5]~output_o\);

\dm_outdata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[4]~output_o\);

\dm_outdata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[3]~output_o\);

\dm_outdata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[2]~output_o\);

\dm_outdata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[1]~output_o\);

\dm_outdata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \dm_outdata[0]~output_o\);

\opcode[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(5),
	devoe => ww_devoe,
	o => \opcode[5]~output_o\);

\opcode[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(4),
	devoe => ww_devoe,
	o => \opcode[4]~output_o\);

\opcode[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(3),
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

\opcode[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(2),
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

\opcode[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(1),
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

\opcode[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|opcode\(0),
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

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

\pm_outdata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[15]~output_o\);

\pm_outdata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[14]~output_o\);

\pm_outdata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[13]~output_o\);

\pm_outdata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[12]~output_o\);

\pm_outdata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[11]~output_o\);

\pm_outdata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[10]~output_o\);

\pm_outdata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[9]~output_o\);

\pm_outdata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[8]~output_o\);

\pm_outdata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[7]~output_o\);

\pm_outdata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[6]~output_o\);

\pm_outdata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[5]~output_o\);

\pm_outdata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[4]~output_o\);

\pm_outdata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[3]~output_o\);

\pm_outdata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[2]~output_o\);

\pm_outdata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[1]~output_o\);

\pm_outdata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \pm_outdata[0]~output_o\);

\rxData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux32~4_combout\,
	devoe => ww_devoe,
	o => \rxData[15]~output_o\);

\rxData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux33~4_combout\,
	devoe => ww_devoe,
	o => \rxData[14]~output_o\);

\rxData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux34~4_combout\,
	devoe => ww_devoe,
	o => \rxData[13]~output_o\);

\rxData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux35~4_combout\,
	devoe => ww_devoe,
	o => \rxData[12]~output_o\);

\rxData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux36~4_combout\,
	devoe => ww_devoe,
	o => \rxData[11]~output_o\);

\rxData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux37~4_combout\,
	devoe => ww_devoe,
	o => \rxData[10]~output_o\);

\rxData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux38~4_combout\,
	devoe => ww_devoe,
	o => \rxData[9]~output_o\);

\rxData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux39~4_combout\,
	devoe => ww_devoe,
	o => \rxData[8]~output_o\);

\rxData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux40~4_combout\,
	devoe => ww_devoe,
	o => \rxData[7]~output_o\);

\rxData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux41~4_combout\,
	devoe => ww_devoe,
	o => \rxData[6]~output_o\);

\rxData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux42~4_combout\,
	devoe => ww_devoe,
	o => \rxData[5]~output_o\);

\rxData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux43~4_combout\,
	devoe => ww_devoe,
	o => \rxData[4]~output_o\);

\rxData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux44~4_combout\,
	devoe => ww_devoe,
	o => \rxData[3]~output_o\);

\rxData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux45~4_combout\,
	devoe => ww_devoe,
	o => \rxData[2]~output_o\);

\rxData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux46~4_combout\,
	devoe => ww_devoe,
	o => \rxData[1]~output_o\);

\rxData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux47~4_combout\,
	devoe => ww_devoe,
	o => \rxData[0]~output_o\);

\rzData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux48~4_combout\,
	devoe => ww_devoe,
	o => \rzData[15]~output_o\);

\rzData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux49~4_combout\,
	devoe => ww_devoe,
	o => \rzData[14]~output_o\);

\rzData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux50~4_combout\,
	devoe => ww_devoe,
	o => \rzData[13]~output_o\);

\rzData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux51~4_combout\,
	devoe => ww_devoe,
	o => \rzData[12]~output_o\);

\rzData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux52~4_combout\,
	devoe => ww_devoe,
	o => \rzData[11]~output_o\);

\rzData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux53~4_combout\,
	devoe => ww_devoe,
	o => \rzData[10]~output_o\);

\rzData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux54~4_combout\,
	devoe => ww_devoe,
	o => \rzData[9]~output_o\);

\rzData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux55~4_combout\,
	devoe => ww_devoe,
	o => \rzData[8]~output_o\);

\rzData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux56~4_combout\,
	devoe => ww_devoe,
	o => \rzData[7]~output_o\);

\rzData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux57~4_combout\,
	devoe => ww_devoe,
	o => \rzData[6]~output_o\);

\rzData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux58~4_combout\,
	devoe => ww_devoe,
	o => \rzData[5]~output_o\);

\rzData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux59~4_combout\,
	devoe => ww_devoe,
	o => \rzData[4]~output_o\);

\rzData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux60~4_combout\,
	devoe => ww_devoe,
	o => \rzData[3]~output_o\);

\rzData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux61~4_combout\,
	devoe => ww_devoe,
	o => \rzData[2]~output_o\);

\rzData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux62~4_combout\,
	devoe => ww_devoe,
	o => \rzData[1]~output_o\);

\rzData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux63~4_combout\,
	devoe => ww_devoe,
	o => \rzData[0]~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dm_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_wr,
	o => \dm_wr~input_o\);

\dm_indata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(15),
	o => \dm_indata[15]~input_o\);

\increment[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(2),
	o => \increment[2]~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\z~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

\increment[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(0),
	o => \increment[0]~input_o\);

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

\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\rz_data[3]~input_o\ & (!\rz_data[2]~input_o\ & (!\rz_data[1]~input_o\ & !\rz_data[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[3]~input_o\,
	datab => \ALT_INV_rz_data[2]~input_o\,
	datac => \ALT_INV_rz_data[1]~input_o\,
	datad => \ALT_INV_rz_data[0]~input_o\,
	combout => \inst|Equal0~0_combout\);

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

\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\rz_data[11]~input_o\ & ( !\rz_data[10]~input_o\ & ( (!\rz_data[15]~input_o\ & (!\rz_data[14]~input_o\ & (!\rz_data[13]~input_o\ & !\rz_data[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[15]~input_o\,
	datab => \ALT_INV_rz_data[14]~input_o\,
	datac => \ALT_INV_rz_data[13]~input_o\,
	datad => \ALT_INV_rz_data[12]~input_o\,
	datae => \ALT_INV_rz_data[11]~input_o\,
	dataf => \ALT_INV_rz_data[10]~input_o\,
	combout => \inst|Equal0~1_combout\);

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

\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( !\rz_data[5]~input_o\ & ( !\rz_data[4]~input_o\ & ( (!\rz_data[9]~input_o\ & (!\rz_data[8]~input_o\ & (!\rz_data[7]~input_o\ & !\rz_data[6]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rz_data[9]~input_o\,
	datab => \ALT_INV_rz_data[8]~input_o\,
	datac => \ALT_INV_rz_data[7]~input_o\,
	datad => \ALT_INV_rz_data[6]~input_o\,
	datae => \ALT_INV_rz_data[5]~input_o\,
	dataf => \ALT_INV_rz_data[4]~input_o\,
	combout => \inst|Equal0~2_combout\);

\dm_indata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(0),
	o => \dm_indata[0]~input_o\);

\inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~57_sumout\ = SUM(( \inst|out_count\(1) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~58\ = CARRY(( \inst|out_count\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_out_count\(1),
	cin => GND,
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

\dm_indata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(1),
	o => \dm_indata[1]~input_o\);

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

\dm_indata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(2),
	o => \dm_indata[2]~input_o\);

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

\dm_indata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(3),
	o => \dm_indata[3]~input_o\);

\inst|out_count[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[0]~_wirecell_combout\ = !\inst|out_count\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(0),
	combout => \inst|out_count[0]~_wirecell_combout\);

\inst1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = !\inst|out_count\(1) $ (!\inst|out_count\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(1),
	datab => \inst|ALT_INV_out_count\(0),
	combout => \inst1|Add0~0_combout\);

\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_combout\ = !\inst|out_count\(2) $ (((!\inst|out_count\(1)) # (!\inst|out_count\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001010110010101100101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(2),
	datab => \inst|ALT_INV_out_count\(1),
	datac => \inst|ALT_INV_out_count\(0),
	combout => \inst1|Add0~1_combout\);

\inst1|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = !\inst|out_count\(3) $ (((!\inst|out_count\(2)) # ((!\inst|out_count\(1)) # (!\inst|out_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110010101010101011001010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(3),
	datab => \inst|ALT_INV_out_count\(2),
	datac => \inst|ALT_INV_out_count\(1),
	datad => \inst|ALT_INV_out_count\(0),
	combout => \inst1|Add0~2_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\inst2|operand[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(3));

\increment[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_increment(1),
	o => \increment[1]~input_o\);

\inst|out_count[15]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~24_combout\ = ( !\increment[0]~input_o\ & ( (\increment[1]~input_o\ & ((!\increment[2]~input_o\) # ((\inst|Equal0~2_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal0~1_combout\))))) ) ) # ( \increment[0]~input_o\ & ( 
-- (!\increment[2]~input_o\ & ((((\increment[1]~input_o\))))) # (\increment[2]~input_o\ & ((((!\increment[1]~input_o\)) # (\z~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000010101010101010110101010101010111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[2]~input_o\,
	datab => \inst|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_z~input_o\,
	datad => \inst|ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_increment[0]~input_o\,
	dataf => \ALT_INV_increment[1]~input_o\,
	datag => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|out_count[15]~24_combout\);

\inst|out_count[15]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~20_combout\ = ( !\increment[0]~input_o\ & ( (\increment[2]~input_o\ & ((!\increment[1]~input_o\) # ((\inst|Equal0~0_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~1_combout\))))) ) ) # ( \increment[0]~input_o\ & ( 
-- (\increment[2]~input_o\ & ((!\increment[1]~input_o\) # ((\z~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010001000100010001000110010001100100010001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[1]~input_o\,
	datab => \ALT_INV_increment[2]~input_o\,
	datac => \ALT_INV_z~input_o\,
	datad => \inst|ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_increment[0]~input_o\,
	dataf => \inst|ALT_INV_Equal0~1_combout\,
	datag => \inst|ALT_INV_Equal0~0_combout\,
	combout => \inst|out_count[15]~20_combout\);

\inst|out_count~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~14_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(3) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[3]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[3]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~49_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(3),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~14_combout\);

\inst|out_count[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~1_combout\ = ((\increment[1]~input_o\ & (\increment[0]~input_o\ & !\increment[2]~input_o\))) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111100010000111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[1]~input_o\,
	datab => \ALT_INV_increment[0]~input_o\,
	datac => \ALT_INV_increment[2]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	combout => \inst|out_count[15]~1_combout\);

\inst|out_count[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[15]~2_combout\ = (((\reset~input_o\) # (\increment[2]~input_o\)) # (\increment[0]~input_o\)) # (\increment[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[1]~input_o\,
	datab => \ALT_INV_increment[0]~input_o\,
	datac => \ALT_INV_increment[2]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	combout => \inst|out_count[15]~2_combout\);

\inst|out_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~14_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(3));

\inst1|memory_rtl_1|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00A2",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\inst2|operand[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(2));

\inst|out_count~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~15_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(2) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[2]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[2]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~53_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(2),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~15_combout\);

\inst|out_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~15_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(2));

\inst1|memory_rtl_1|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0202",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\inst2|operand[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(1));

\inst|out_count~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~16_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(1) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[1]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[1]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~57_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(1),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~16_combout\);

\inst|out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~16_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(1));

\inst1|memory_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1A22",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst2|operand[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(0));

\inst|out_count~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~17_combout\ = ( \inst2|operand\(0) & ( ((\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~2_combout\))) # (\inst|out_count\(0)) ) ) # ( !\inst2|operand\(0) & ( (\inst|out_count\(0) & ((!\inst|Equal0~0_combout\) # 
-- ((!\inst|Equal0~1_combout\) # (!\inst|Equal0~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101011101010101010101000101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(0),
	datab => \inst|ALT_INV_Equal0~0_combout\,
	datac => \inst|ALT_INV_Equal0~1_combout\,
	datad => \inst|ALT_INV_Equal0~2_combout\,
	datae => \inst2|ALT_INV_operand\(0),
	combout => \inst|out_count~17_combout\);

\rx_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_count(0),
	o => \rx_count[0]~input_o\);

\inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ( !\increment[1]~input_o\ & ( ((!\increment[0]~input_o\ & (\rx_count[0]~input_o\)) # (\increment[0]~input_o\ & (((\inst2|operand\(0)))))) ) ) # ( \increment[1]~input_o\ & ( (!\increment[0]~input_o\ & 
-- ((((\inst|out_count~17_combout\))))) # (\increment[0]~input_o\ & ((!\z~input_o\ & (\inst|out_count\(0))) # (\z~input_o\ & (((\inst2|operand\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000101100111000111111001111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_z~input_o\,
	datab => \ALT_INV_increment[0]~input_o\,
	datac => \inst|ALT_INV_out_count\(0),
	datad => \inst|ALT_INV_out_count~17_combout\,
	datae => \ALT_INV_increment[1]~input_o\,
	dataf => \inst2|ALT_INV_operand\(0),
	datag => \ALT_INV_rx_count[0]~input_o\,
	combout => \inst|Mux15~0_combout\);

\alu_count[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_count(0),
	o => \alu_count[0]~input_o\);

\inst|out_count~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~18_combout\ = (!\increment[1]~input_o\ & (\inst|out_count\(0))) # (\increment[1]~input_o\ & (((!\increment[0]~input_o\ & \alu_count[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_out_count\(0),
	datab => \ALT_INV_increment[1]~input_o\,
	datac => \ALT_INV_increment[0]~input_o\,
	datad => \ALT_INV_alu_count[0]~input_o\,
	combout => \inst|out_count~18_combout\);

\inst|out_count~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~19_combout\ = (!\reset~input_o\ & ((!\increment[2]~input_o\ & ((\inst|out_count~18_combout\))) # (\increment[2]~input_o\ & (\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_increment[2]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datac => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_out_count~18_combout\,
	combout => \inst|out_count~19_combout\);

\inst|out_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(0));

\inst1|memory_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\inst2|address_method[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|address_method\(1));

\dm_indata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(14),
	o => \dm_indata[14]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1155",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\inst2|address_method[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|address_method\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1400",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\inst1|memory_rtl_1|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1155",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\dm_indata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(13),
	o => \dm_indata[13]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\dm_indata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(12),
	o => \dm_indata[12]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\dm_indata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(11),
	o => \dm_indata[11]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\dm_indata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(10),
	o => \dm_indata[10]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\dm_indata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(9),
	o => \dm_indata[9]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\dm_indata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(8),
	o => \dm_indata[8]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\dm_indata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(7),
	o => \dm_indata[7]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\dm_indata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(6),
	o => \dm_indata[6]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\dm_indata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(5),
	o => \dm_indata[5]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\dm_indata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(4),
	o => \dm_indata[4]~input_o\);

\inst1|memory_rtl_1|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0451",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\inst2|opcode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(5));

\inst1|memory_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\inst2|opcode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(4));

\inst1|memory_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0004",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\inst2|opcode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(3));

\inst1|memory_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\inst2|opcode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(2));

\inst1|memory_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\inst2|opcode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(1));

\inst1|memory_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\inst2|opcode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(0));

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

\inst2|operand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(4));

\inst|out_count~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~13_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(4) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[4]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[4]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~45_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(4),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~13_combout\);

\inst|out_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~13_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(5));

\inst|out_count~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~12_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(5) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[5]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[5]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~41_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(5),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~12_combout\);

\inst|out_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~12_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(6));

\inst|out_count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~11_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(6) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[6]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[6]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~37_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(6),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~11_combout\);

\inst|out_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~11_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(7));

\inst|out_count~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~10_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(7) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[7]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[7]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~33_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(7),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~10_combout\);

\inst|out_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~10_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(8));

\inst|out_count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~9_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(8) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[8]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[8]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~29_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(8),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~9_combout\);

\inst|out_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~9_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(9));

\inst|out_count~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~8_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(9) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[9]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[9]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~25_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(9),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~8_combout\);

\inst|out_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~8_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(10));

\inst|out_count~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~7_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(10) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[10]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[10]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~21_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(10),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~7_combout\);

\inst|out_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~7_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(11));

\inst|out_count~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~6_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(11) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[11]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[11]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~17_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(11),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~6_combout\);

\inst|out_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~6_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(12));

\inst|out_count~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~5_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(12) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[12]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[12]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~13_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(12),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~5_combout\);

\inst|out_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~5_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(13));

\inst|out_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~4_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(13) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[13]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[13]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~9_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(13),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~4_combout\);

\inst|out_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~4_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(14));

\inst|out_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~3_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(14) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[14]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[14]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~5_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(14),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~3_combout\);

\inst|out_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~3_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
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

\inst2|operand[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(15));

\inst|out_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count~0_combout\ = ( \inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \inst2|operand\(15) ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( \inst|out_count[15]~20_combout\ & ( \rx_count[15]~input_o\ ) ) ) # ( 
-- \inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \alu_count[15]~input_o\ ) ) ) # ( !\inst|out_count[15]~24_combout\ & ( !\inst|out_count[15]~20_combout\ & ( \inst|Add0~1_sumout\ ) ) )

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
	datad => \inst2|ALT_INV_operand\(15),
	datae => \inst|ALT_INV_out_count[15]~24_combout\,
	dataf => \inst|ALT_INV_out_count[15]~20_combout\,
	combout => \inst|out_count~0_combout\);

\inst|out_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|out_count~0_combout\,
	sclr => \inst|out_count[15]~1_combout\,
	ena => \inst|out_count[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(15));

\inst1|memory_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1500",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0451",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00A2",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0202",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\inst1|memory_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "1A22",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_pdr1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 13,
	port_a_logical_ram_depth => 14,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 13,
	port_b_logical_ram_depth => 14,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clk~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\init~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_init,
	o => \init~input_o\);

\inst2|rz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rz\(0));

\inst2|rz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rz\(1));

\inst2|rz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rz\(2));

\inst2|rz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rz\(3));

\ld_r~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_r,
	o => \ld_r~input_o\);

\inst3|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~2_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (\inst2|rz\(1) & (!\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~2_combout\);

\inst3|regs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][15]~q\);

\inst3|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~4_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (!\inst2|rz\(1) & (\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~4_combout\);

\inst3|regs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][15]~q\);

\inst3|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~6_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (\inst2|rz\(1) & (\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~6_combout\);

\inst3|regs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][15]~q\);

\inst3|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][15]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][15]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][15]~q\,
	datab => \inst3|ALT_INV_regs[2][15]~q\,
	datac => \inst3|ALT_INV_regs[4][15]~q\,
	datad => \inst3|ALT_INV_regs[6][15]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux16~0_combout\);

\inst3|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~8_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (!\inst2|rz\(1) & (!\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~8_combout\);

\inst3|regs[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][15]~q\);

\inst3|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~10_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (\inst2|rz\(1) & (!\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~10_combout\);

\inst3|regs[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][15]~q\);

\inst3|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~12_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (!\inst2|rz\(1) & (\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~12_combout\);

\inst3|regs[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][15]~q\);

\inst3|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~14_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (\inst2|rz\(1) & (\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~14_combout\);

\inst3|regs[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][15]~q\);

\inst3|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][15]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[10][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][15]~q\,
	datab => \inst3|ALT_INV_regs[10][15]~q\,
	datac => \inst3|ALT_INV_regs[12][15]~q\,
	datad => \inst3|ALT_INV_regs[14][15]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux16~1_combout\);

\inst3|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (!\inst2|rz\(1) & (!\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~1_combout\);

\inst3|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][15]~q\);

\inst3|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~3_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (\inst2|rz\(1) & (!\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~3_combout\);

\inst3|regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][15]~q\);

\inst3|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~5_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (!\inst2|rz\(1) & (\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~5_combout\);

\inst3|regs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][15]~q\);

\inst3|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~7_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (\inst2|rz\(1) & (\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~7_combout\);

\inst3|regs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][15]~q\);

\inst3|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][15]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][15]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][15]~q\,
	datab => \inst3|ALT_INV_regs[3][15]~q\,
	datac => \inst3|ALT_INV_regs[5][15]~q\,
	datad => \inst3|ALT_INV_regs[7][15]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux16~2_combout\);

\inst3|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~9_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (!\inst2|rz\(1) & (!\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~9_combout\);

\inst3|regs[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][15]~q\);

\inst3|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~11_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (\inst2|rz\(1) & (!\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~11_combout\);

\inst3|regs[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][15]~q\);

\inst3|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~13_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (!\inst2|rz\(1) & (\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~13_combout\);

\inst3|regs[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][15]~q\);

\inst3|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~15_combout\ = ( \ld_r~input_o\ & ( (\inst2|rz\(0) & (\inst2|rz\(1) & (\inst2|rz\(2) & \inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~15_combout\);

\inst3|regs[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][15]~q\);

\inst3|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][15]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[11][15]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][15]~q\,
	datab => \inst3|ALT_INV_regs[11][15]~q\,
	datac => \inst3|ALT_INV_regs[13][15]~q\,
	datad => \inst3|ALT_INV_regs[15][15]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux16~3_combout\);

\inst3|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux16~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux16~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux16~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux16~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux16~0_combout\,
	datab => \inst3|ALT_INV_Mux16~1_combout\,
	datac => \inst3|ALT_INV_Mux16~2_combout\,
	datad => \inst3|ALT_INV_Mux16~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux16~4_combout\);

\rf_input_sel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_input_sel(2),
	o => \rf_input_sel[2]~input_o\);

\rf_input_sel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_input_sel(3),
	o => \rf_input_sel[3]~input_o\);

\rf_input_sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_input_sel(1),
	o => \rf_input_sel[1]~input_o\);

\rf_input_sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rf_input_sel(0),
	o => \rf_input_sel[0]~input_o\);

\inst3|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~5_combout\ = (!\rf_input_sel[2]~input_o\ & (\rf_input_sel[3]~input_o\ & (!\rf_input_sel[1]~input_o\ & \rf_input_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rf_input_sel[2]~input_o\,
	datab => \ALT_INV_rf_input_sel[3]~input_o\,
	datac => \ALT_INV_rf_input_sel[1]~input_o\,
	datad => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux16~5_combout\);

\inst3|Mux16~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~6_combout\ = (!\rf_input_sel[2]~input_o\ & (\rf_input_sel[3]~input_o\ & (!\rf_input_sel[1]~input_o\ & !\rf_input_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rf_input_sel[2]~input_o\,
	datab => \ALT_INV_rf_input_sel[3]~input_o\,
	datac => \ALT_INV_rf_input_sel[1]~input_o\,
	datad => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux16~6_combout\);

\inst3|Mux48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux48~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][15]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][15]~q\,
	datab => \inst3|ALT_INV_regs[1][15]~q\,
	datac => \inst3|ALT_INV_regs[2][15]~q\,
	datad => \inst3|ALT_INV_regs[3][15]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux48~0_combout\);

\inst3|Mux48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux48~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][15]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][15]~q\,
	datab => \inst3|ALT_INV_regs[5][15]~q\,
	datac => \inst3|ALT_INV_regs[6][15]~q\,
	datad => \inst3|ALT_INV_regs[7][15]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux48~1_combout\);

\inst3|Mux48~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux48~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][15]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][15]~q\,
	datab => \inst3|ALT_INV_regs[9][15]~q\,
	datac => \inst3|ALT_INV_regs[10][15]~q\,
	datad => \inst3|ALT_INV_regs[11][15]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux48~2_combout\);

\inst3|Mux48~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux48~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][15]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][15]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][15]~q\,
	datab => \inst3|ALT_INV_regs[13][15]~q\,
	datac => \inst3|ALT_INV_regs[14][15]~q\,
	datad => \inst3|ALT_INV_regs[15][15]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux48~3_combout\);

\inst3|Mux48~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux48~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux48~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux48~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux48~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux48~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux48~0_combout\,
	datab => \inst3|ALT_INV_Mux48~1_combout\,
	datac => \inst3|ALT_INV_Mux48~2_combout\,
	datad => \inst3|ALT_INV_Mux48~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux48~4_combout\);

\inst3|Mux16~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~7_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux48~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(15) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux48~4_combout\,
	datab => \inst2|ALT_INV_operand\(15),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux16~7_combout\);

\inst3|Mux16~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~8_combout\ = ( \inst3|Mux16~7_combout\ ) # ( !\inst3|Mux16~7_combout\ & ( (!\inst3|Mux32~4_combout\ & (\inst3|Mux16~4_combout\ & (\inst3|Mux16~5_combout\))) # (\inst3|Mux32~4_combout\ & (((\inst3|Mux16~4_combout\ & \inst3|Mux16~5_combout\)) # 
-- (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111111111111111111100000011010101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux32~4_combout\,
	datab => \inst3|ALT_INV_Mux16~4_combout\,
	datac => \inst3|ALT_INV_Mux16~5_combout\,
	datad => \inst3|ALT_INV_Mux16~6_combout\,
	datae => \inst3|ALT_INV_Mux16~7_combout\,
	combout => \inst3|Mux16~8_combout\);

\inst3|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = ( \ld_r~input_o\ & ( (!\inst2|rz\(0) & (!\inst2|rz\(1) & (!\inst2|rz\(2) & !\inst2|rz\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_rz\(0),
	datab => \inst2|ALT_INV_rz\(1),
	datac => \inst2|ALT_INV_rz\(2),
	datad => \inst2|ALT_INV_rz\(3),
	datae => \ALT_INV_ld_r~input_o\,
	combout => \inst3|Decoder0~0_combout\);

\inst3|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux16~8_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][15]~q\);

\inst2|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rx\(0));

\inst2|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rx\(1));

\inst3|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux32~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][15]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][15]~q\,
	datab => \inst3|ALT_INV_regs[1][15]~q\,
	datac => \inst3|ALT_INV_regs[2][15]~q\,
	datad => \inst3|ALT_INV_regs[3][15]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux32~0_combout\);

\inst3|Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux32~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][15]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][15]~q\,
	datab => \inst3|ALT_INV_regs[5][15]~q\,
	datac => \inst3|ALT_INV_regs[6][15]~q\,
	datad => \inst3|ALT_INV_regs[7][15]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux32~1_combout\);

\inst3|Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux32~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][15]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][15]~q\,
	datab => \inst3|ALT_INV_regs[9][15]~q\,
	datac => \inst3|ALT_INV_regs[10][15]~q\,
	datad => \inst3|ALT_INV_regs[11][15]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux32~2_combout\);

\inst3|Mux32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux32~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][15]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][15]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][15]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][15]~q\,
	datab => \inst3|ALT_INV_regs[13][15]~q\,
	datac => \inst3|ALT_INV_regs[14][15]~q\,
	datad => \inst3|ALT_INV_regs[15][15]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux32~3_combout\);

\inst2|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rx\(2));

\inst2|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rx\(3));

\inst3|Mux32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux32~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux32~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux32~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux32~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux32~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux32~0_combout\,
	datab => \inst3|ALT_INV_Mux32~1_combout\,
	datac => \inst3|ALT_INV_Mux32~2_combout\,
	datad => \inst3|ALT_INV_Mux32~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux32~4_combout\);

\inst3|regs[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][14]~q\);

\inst3|regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][14]~q\);

\inst3|regs[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][14]~q\);

\inst3|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][14]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][14]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][14]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][14]~q\,
	datab => \inst3|ALT_INV_regs[8][14]~q\,
	datac => \inst3|ALT_INV_regs[1][14]~q\,
	datad => \inst3|ALT_INV_regs[9][14]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux17~0_combout\);

\inst3|regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][14]~q\);

\inst3|regs[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][14]~q\);

\inst3|regs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][14]~q\);

\inst3|regs[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][14]~q\);

\inst3|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][14]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][14]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][14]~q\,
	datab => \inst3|ALT_INV_regs[12][14]~q\,
	datac => \inst3|ALT_INV_regs[5][14]~q\,
	datad => \inst3|ALT_INV_regs[13][14]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux17~1_combout\);

\inst3|regs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][14]~q\);

\inst3|regs[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][14]~q\);

\inst3|regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][14]~q\);

\inst3|regs[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][14]~q\);

\inst3|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][14]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][14]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][14]~q\,
	datab => \inst3|ALT_INV_regs[10][14]~q\,
	datac => \inst3|ALT_INV_regs[3][14]~q\,
	datad => \inst3|ALT_INV_regs[11][14]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux17~2_combout\);

\inst3|regs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][14]~q\);

\inst3|regs[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][14]~q\);

\inst3|regs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][14]~q\);

\inst3|regs[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][14]~q\);

\inst3|Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][14]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][14]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][14]~q\,
	datab => \inst3|ALT_INV_regs[14][14]~q\,
	datac => \inst3|ALT_INV_regs[7][14]~q\,
	datad => \inst3|ALT_INV_regs[15][14]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux17~3_combout\);

\inst3|Mux17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux17~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux17~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux17~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux17~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux17~0_combout\,
	datab => \inst3|ALT_INV_Mux17~1_combout\,
	datac => \inst3|ALT_INV_Mux17~2_combout\,
	datad => \inst3|ALT_INV_Mux17~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux17~4_combout\);

\inst3|Mux49~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux49~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][14]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][14]~q\,
	datab => \inst3|ALT_INV_regs[4][14]~q\,
	datac => \inst3|ALT_INV_regs[8][14]~q\,
	datad => \inst3|ALT_INV_regs[12][14]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux49~0_combout\);

\inst3|Mux49~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux49~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][14]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][14]~q\,
	datab => \inst3|ALT_INV_regs[5][14]~q\,
	datac => \inst3|ALT_INV_regs[9][14]~q\,
	datad => \inst3|ALT_INV_regs[13][14]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux49~1_combout\);

\inst3|Mux49~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux49~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][14]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][14]~q\,
	datab => \inst3|ALT_INV_regs[6][14]~q\,
	datac => \inst3|ALT_INV_regs[10][14]~q\,
	datad => \inst3|ALT_INV_regs[14][14]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux49~2_combout\);

\inst3|Mux49~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux49~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][14]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][14]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][14]~q\,
	datab => \inst3|ALT_INV_regs[7][14]~q\,
	datac => \inst3|ALT_INV_regs[11][14]~q\,
	datad => \inst3|ALT_INV_regs[15][14]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux49~3_combout\);

\inst3|Mux49~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux49~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux49~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux49~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux49~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux49~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux49~0_combout\,
	datab => \inst3|ALT_INV_Mux49~1_combout\,
	datac => \inst3|ALT_INV_Mux49~2_combout\,
	datad => \inst3|ALT_INV_Mux49~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux49~4_combout\);

\inst3|Mux17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux49~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(14) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux49~4_combout\,
	datab => \inst2|ALT_INV_operand\(14),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux17~5_combout\);

\inst3|Mux17~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~6_combout\ = ( \inst3|Mux17~5_combout\ ) # ( !\inst3|Mux17~5_combout\ & ( (!\inst3|Mux33~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux17~4_combout\)))) # (\inst3|Mux33~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux17~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux33~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux17~4_combout\,
	datae => \inst3|ALT_INV_Mux17~5_combout\,
	combout => \inst3|Mux17~6_combout\);

\inst3|regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux17~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][14]~q\);

\inst3|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux33~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][14]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][14]~q\,
	datab => \inst3|ALT_INV_regs[4][14]~q\,
	datac => \inst3|ALT_INV_regs[8][14]~q\,
	datad => \inst3|ALT_INV_regs[12][14]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux33~0_combout\);

\inst3|Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux33~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][14]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][14]~q\,
	datab => \inst3|ALT_INV_regs[5][14]~q\,
	datac => \inst3|ALT_INV_regs[9][14]~q\,
	datad => \inst3|ALT_INV_regs[13][14]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux33~1_combout\);

\inst3|Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux33~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][14]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][14]~q\,
	datab => \inst3|ALT_INV_regs[6][14]~q\,
	datac => \inst3|ALT_INV_regs[10][14]~q\,
	datad => \inst3|ALT_INV_regs[14][14]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux33~2_combout\);

\inst3|Mux33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux33~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][14]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][14]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][14]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][14]~q\,
	datab => \inst3|ALT_INV_regs[7][14]~q\,
	datac => \inst3|ALT_INV_regs[11][14]~q\,
	datad => \inst3|ALT_INV_regs[15][14]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux33~3_combout\);

\inst3|Mux33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux33~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux33~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux33~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux33~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux33~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux33~0_combout\,
	datab => \inst3|ALT_INV_Mux33~1_combout\,
	datac => \inst3|ALT_INV_Mux33~2_combout\,
	datad => \inst3|ALT_INV_Mux33~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux33~4_combout\);

\inst3|regs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][13]~q\);

\inst3|regs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][13]~q\);

\inst3|regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][13]~q\);

\inst3|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][13]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][13]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][13]~q\,
	datab => \inst3|ALT_INV_regs[2][13]~q\,
	datac => \inst3|ALT_INV_regs[4][13]~q\,
	datad => \inst3|ALT_INV_regs[6][13]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux18~0_combout\);

\inst3|regs[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][13]~q\);

\inst3|regs[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][13]~q\);

\inst3|regs[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][13]~q\);

\inst3|regs[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][13]~q\);

\inst3|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][13]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[10][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][13]~q\,
	datab => \inst3|ALT_INV_regs[10][13]~q\,
	datac => \inst3|ALT_INV_regs[12][13]~q\,
	datad => \inst3|ALT_INV_regs[14][13]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux18~1_combout\);

\inst3|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][13]~q\);

\inst3|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][13]~q\);

\inst3|regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][13]~q\);

\inst3|regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][13]~q\);

\inst3|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][13]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][13]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][13]~q\,
	datab => \inst3|ALT_INV_regs[3][13]~q\,
	datac => \inst3|ALT_INV_regs[5][13]~q\,
	datad => \inst3|ALT_INV_regs[7][13]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux18~2_combout\);

\inst3|regs[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][13]~q\);

\inst3|regs[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][13]~q\);

\inst3|regs[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][13]~q\);

\inst3|regs[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][13]~q\);

\inst3|Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][13]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[11][13]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][13]~q\,
	datab => \inst3|ALT_INV_regs[11][13]~q\,
	datac => \inst3|ALT_INV_regs[13][13]~q\,
	datad => \inst3|ALT_INV_regs[15][13]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux18~3_combout\);

\inst3|Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux18~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux18~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux18~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux18~0_combout\,
	datab => \inst3|ALT_INV_Mux18~1_combout\,
	datac => \inst3|ALT_INV_Mux18~2_combout\,
	datad => \inst3|ALT_INV_Mux18~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux18~4_combout\);

\inst3|Mux50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux50~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][13]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][13]~q\,
	datab => \inst3|ALT_INV_regs[1][13]~q\,
	datac => \inst3|ALT_INV_regs[2][13]~q\,
	datad => \inst3|ALT_INV_regs[3][13]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux50~0_combout\);

\inst3|Mux50~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux50~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][13]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][13]~q\,
	datab => \inst3|ALT_INV_regs[5][13]~q\,
	datac => \inst3|ALT_INV_regs[6][13]~q\,
	datad => \inst3|ALT_INV_regs[7][13]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux50~1_combout\);

\inst3|Mux50~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux50~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][13]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][13]~q\,
	datab => \inst3|ALT_INV_regs[9][13]~q\,
	datac => \inst3|ALT_INV_regs[10][13]~q\,
	datad => \inst3|ALT_INV_regs[11][13]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux50~2_combout\);

\inst3|Mux50~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux50~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][13]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][13]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][13]~q\,
	datab => \inst3|ALT_INV_regs[13][13]~q\,
	datac => \inst3|ALT_INV_regs[14][13]~q\,
	datad => \inst3|ALT_INV_regs[15][13]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux50~3_combout\);

\inst3|Mux50~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux50~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux50~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux50~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux50~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux50~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux50~0_combout\,
	datab => \inst3|ALT_INV_Mux50~1_combout\,
	datac => \inst3|ALT_INV_Mux50~2_combout\,
	datad => \inst3|ALT_INV_Mux50~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux50~4_combout\);

\inst3|Mux18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux50~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(13) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux50~4_combout\,
	datab => \inst2|ALT_INV_operand\(13),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux18~5_combout\);

\inst3|Mux18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~6_combout\ = ( \inst3|Mux18~5_combout\ ) # ( !\inst3|Mux18~5_combout\ & ( (!\inst3|Mux34~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux18~4_combout\)))) # (\inst3|Mux34~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux18~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux34~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux18~4_combout\,
	datae => \inst3|ALT_INV_Mux18~5_combout\,
	combout => \inst3|Mux18~6_combout\);

\inst3|regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux18~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][13]~q\);

\inst3|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux34~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][13]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][13]~q\,
	datab => \inst3|ALT_INV_regs[1][13]~q\,
	datac => \inst3|ALT_INV_regs[2][13]~q\,
	datad => \inst3|ALT_INV_regs[3][13]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux34~0_combout\);

\inst3|Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux34~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][13]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][13]~q\,
	datab => \inst3|ALT_INV_regs[5][13]~q\,
	datac => \inst3|ALT_INV_regs[6][13]~q\,
	datad => \inst3|ALT_INV_regs[7][13]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux34~1_combout\);

\inst3|Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux34~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][13]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][13]~q\,
	datab => \inst3|ALT_INV_regs[9][13]~q\,
	datac => \inst3|ALT_INV_regs[10][13]~q\,
	datad => \inst3|ALT_INV_regs[11][13]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux34~2_combout\);

\inst3|Mux34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux34~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][13]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][13]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][13]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][13]~q\,
	datab => \inst3|ALT_INV_regs[13][13]~q\,
	datac => \inst3|ALT_INV_regs[14][13]~q\,
	datad => \inst3|ALT_INV_regs[15][13]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux34~3_combout\);

\inst3|Mux34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux34~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux34~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux34~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux34~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux34~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux34~0_combout\,
	datab => \inst3|ALT_INV_Mux34~1_combout\,
	datac => \inst3|ALT_INV_Mux34~2_combout\,
	datad => \inst3|ALT_INV_Mux34~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux34~4_combout\);

\inst3|regs[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][12]~q\);

\inst3|regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][12]~q\);

\inst3|regs[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][12]~q\);

\inst3|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][12]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][12]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][12]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][12]~q\,
	datab => \inst3|ALT_INV_regs[8][12]~q\,
	datac => \inst3|ALT_INV_regs[1][12]~q\,
	datad => \inst3|ALT_INV_regs[9][12]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux19~0_combout\);

\inst3|regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][12]~q\);

\inst3|regs[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][12]~q\);

\inst3|regs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][12]~q\);

\inst3|regs[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][12]~q\);

\inst3|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][12]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][12]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][12]~q\,
	datab => \inst3|ALT_INV_regs[12][12]~q\,
	datac => \inst3|ALT_INV_regs[5][12]~q\,
	datad => \inst3|ALT_INV_regs[13][12]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux19~1_combout\);

\inst3|regs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][12]~q\);

\inst3|regs[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][12]~q\);

\inst3|regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][12]~q\);

\inst3|regs[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][12]~q\);

\inst3|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][12]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][12]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][12]~q\,
	datab => \inst3|ALT_INV_regs[10][12]~q\,
	datac => \inst3|ALT_INV_regs[3][12]~q\,
	datad => \inst3|ALT_INV_regs[11][12]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux19~2_combout\);

\inst3|regs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][12]~q\);

\inst3|regs[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][12]~q\);

\inst3|regs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][12]~q\);

\inst3|regs[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][12]~q\);

\inst3|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][12]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][12]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][12]~q\,
	datab => \inst3|ALT_INV_regs[14][12]~q\,
	datac => \inst3|ALT_INV_regs[7][12]~q\,
	datad => \inst3|ALT_INV_regs[15][12]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux19~3_combout\);

\inst3|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux19~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux19~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux19~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux19~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux19~0_combout\,
	datab => \inst3|ALT_INV_Mux19~1_combout\,
	datac => \inst3|ALT_INV_Mux19~2_combout\,
	datad => \inst3|ALT_INV_Mux19~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux19~4_combout\);

\inst3|Mux51~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux51~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][12]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][12]~q\,
	datab => \inst3|ALT_INV_regs[4][12]~q\,
	datac => \inst3|ALT_INV_regs[8][12]~q\,
	datad => \inst3|ALT_INV_regs[12][12]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux51~0_combout\);

\inst3|Mux51~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux51~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][12]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][12]~q\,
	datab => \inst3|ALT_INV_regs[5][12]~q\,
	datac => \inst3|ALT_INV_regs[9][12]~q\,
	datad => \inst3|ALT_INV_regs[13][12]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux51~1_combout\);

\inst3|Mux51~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux51~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][12]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][12]~q\,
	datab => \inst3|ALT_INV_regs[6][12]~q\,
	datac => \inst3|ALT_INV_regs[10][12]~q\,
	datad => \inst3|ALT_INV_regs[14][12]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux51~2_combout\);

\inst3|Mux51~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux51~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][12]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][12]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][12]~q\,
	datab => \inst3|ALT_INV_regs[7][12]~q\,
	datac => \inst3|ALT_INV_regs[11][12]~q\,
	datad => \inst3|ALT_INV_regs[15][12]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux51~3_combout\);

\inst3|Mux51~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux51~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux51~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux51~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux51~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux51~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux51~0_combout\,
	datab => \inst3|ALT_INV_Mux51~1_combout\,
	datac => \inst3|ALT_INV_Mux51~2_combout\,
	datad => \inst3|ALT_INV_Mux51~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux51~4_combout\);

\inst3|Mux19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux51~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(12) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux51~4_combout\,
	datab => \inst2|ALT_INV_operand\(12),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux19~5_combout\);

\inst3|Mux19~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~6_combout\ = ( \inst3|Mux19~5_combout\ ) # ( !\inst3|Mux19~5_combout\ & ( (!\inst3|Mux35~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux19~4_combout\)))) # (\inst3|Mux35~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux19~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux35~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux19~4_combout\,
	datae => \inst3|ALT_INV_Mux19~5_combout\,
	combout => \inst3|Mux19~6_combout\);

\inst3|regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux19~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][12]~q\);

\inst3|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux35~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][12]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][12]~q\,
	datab => \inst3|ALT_INV_regs[4][12]~q\,
	datac => \inst3|ALT_INV_regs[8][12]~q\,
	datad => \inst3|ALT_INV_regs[12][12]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux35~0_combout\);

\inst3|Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux35~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][12]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][12]~q\,
	datab => \inst3|ALT_INV_regs[5][12]~q\,
	datac => \inst3|ALT_INV_regs[9][12]~q\,
	datad => \inst3|ALT_INV_regs[13][12]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux35~1_combout\);

\inst3|Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux35~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][12]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][12]~q\,
	datab => \inst3|ALT_INV_regs[6][12]~q\,
	datac => \inst3|ALT_INV_regs[10][12]~q\,
	datad => \inst3|ALT_INV_regs[14][12]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux35~2_combout\);

\inst3|Mux35~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux35~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][12]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][12]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][12]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][12]~q\,
	datab => \inst3|ALT_INV_regs[7][12]~q\,
	datac => \inst3|ALT_INV_regs[11][12]~q\,
	datad => \inst3|ALT_INV_regs[15][12]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux35~3_combout\);

\inst3|Mux35~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux35~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux35~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux35~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux35~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux35~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux35~0_combout\,
	datab => \inst3|ALT_INV_Mux35~1_combout\,
	datac => \inst3|ALT_INV_Mux35~2_combout\,
	datad => \inst3|ALT_INV_Mux35~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux35~4_combout\);

\inst3|regs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][11]~q\);

\inst3|regs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][11]~q\);

\inst3|regs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][11]~q\);

\inst3|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][11]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][11]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][11]~q\,
	datab => \inst3|ALT_INV_regs[2][11]~q\,
	datac => \inst3|ALT_INV_regs[4][11]~q\,
	datad => \inst3|ALT_INV_regs[6][11]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux20~0_combout\);

\inst3|regs[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][11]~q\);

\inst3|regs[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][11]~q\);

\inst3|regs[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][11]~q\);

\inst3|regs[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][11]~q\);

\inst3|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][11]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[10][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][11]~q\,
	datab => \inst3|ALT_INV_regs[10][11]~q\,
	datac => \inst3|ALT_INV_regs[12][11]~q\,
	datad => \inst3|ALT_INV_regs[14][11]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux20~1_combout\);

\inst3|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][11]~q\);

\inst3|regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][11]~q\);

\inst3|regs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][11]~q\);

\inst3|regs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][11]~q\);

\inst3|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][11]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][11]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][11]~q\,
	datab => \inst3|ALT_INV_regs[3][11]~q\,
	datac => \inst3|ALT_INV_regs[5][11]~q\,
	datad => \inst3|ALT_INV_regs[7][11]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux20~2_combout\);

\inst3|regs[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][11]~q\);

\inst3|regs[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][11]~q\);

\inst3|regs[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][11]~q\);

\inst3|regs[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][11]~q\);

\inst3|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][11]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( 
-- \inst3|regs[11][11]~q\ ) ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][11]~q\,
	datab => \inst3|ALT_INV_regs[11][11]~q\,
	datac => \inst3|ALT_INV_regs[13][11]~q\,
	datad => \inst3|ALT_INV_regs[15][11]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux20~3_combout\);

\inst3|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux20~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux20~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux20~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux20~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux20~0_combout\,
	datab => \inst3|ALT_INV_Mux20~1_combout\,
	datac => \inst3|ALT_INV_Mux20~2_combout\,
	datad => \inst3|ALT_INV_Mux20~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux20~4_combout\);

\inst3|Mux52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux52~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][11]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][11]~q\,
	datab => \inst3|ALT_INV_regs[1][11]~q\,
	datac => \inst3|ALT_INV_regs[2][11]~q\,
	datad => \inst3|ALT_INV_regs[3][11]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux52~0_combout\);

\inst3|Mux52~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux52~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][11]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][11]~q\,
	datab => \inst3|ALT_INV_regs[5][11]~q\,
	datac => \inst3|ALT_INV_regs[6][11]~q\,
	datad => \inst3|ALT_INV_regs[7][11]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux52~1_combout\);

\inst3|Mux52~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux52~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][11]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][11]~q\,
	datab => \inst3|ALT_INV_regs[9][11]~q\,
	datac => \inst3|ALT_INV_regs[10][11]~q\,
	datad => \inst3|ALT_INV_regs[11][11]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux52~2_combout\);

\inst3|Mux52~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux52~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][11]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][11]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][11]~q\,
	datab => \inst3|ALT_INV_regs[13][11]~q\,
	datac => \inst3|ALT_INV_regs[14][11]~q\,
	datad => \inst3|ALT_INV_regs[15][11]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux52~3_combout\);

\inst3|Mux52~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux52~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux52~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux52~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux52~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux52~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux52~0_combout\,
	datab => \inst3|ALT_INV_Mux52~1_combout\,
	datac => \inst3|ALT_INV_Mux52~2_combout\,
	datad => \inst3|ALT_INV_Mux52~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux52~4_combout\);

\inst3|Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux52~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(11) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux52~4_combout\,
	datab => \inst2|ALT_INV_operand\(11),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux20~5_combout\);

\inst3|Mux20~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~6_combout\ = ( \inst3|Mux20~5_combout\ ) # ( !\inst3|Mux20~5_combout\ & ( (!\inst3|Mux36~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux20~4_combout\)))) # (\inst3|Mux36~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux20~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux36~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux20~4_combout\,
	datae => \inst3|ALT_INV_Mux20~5_combout\,
	combout => \inst3|Mux20~6_combout\);

\inst3|regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux20~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][11]~q\);

\inst3|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux36~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][11]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][11]~q\,
	datab => \inst3|ALT_INV_regs[1][11]~q\,
	datac => \inst3|ALT_INV_regs[2][11]~q\,
	datad => \inst3|ALT_INV_regs[3][11]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux36~0_combout\);

\inst3|Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux36~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][11]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][11]~q\,
	datab => \inst3|ALT_INV_regs[5][11]~q\,
	datac => \inst3|ALT_INV_regs[6][11]~q\,
	datad => \inst3|ALT_INV_regs[7][11]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux36~1_combout\);

\inst3|Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux36~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][11]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][11]~q\,
	datab => \inst3|ALT_INV_regs[9][11]~q\,
	datac => \inst3|ALT_INV_regs[10][11]~q\,
	datad => \inst3|ALT_INV_regs[11][11]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux36~2_combout\);

\inst3|Mux36~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux36~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][11]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][11]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][11]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][11]~q\,
	datab => \inst3|ALT_INV_regs[13][11]~q\,
	datac => \inst3|ALT_INV_regs[14][11]~q\,
	datad => \inst3|ALT_INV_regs[15][11]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux36~3_combout\);

\inst3|Mux36~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux36~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux36~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux36~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux36~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux36~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux36~0_combout\,
	datab => \inst3|ALT_INV_Mux36~1_combout\,
	datac => \inst3|ALT_INV_Mux36~2_combout\,
	datad => \inst3|ALT_INV_Mux36~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux36~4_combout\);

\inst3|regs[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][10]~q\);

\inst3|regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][10]~q\);

\inst3|regs[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][10]~q\);

\inst3|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][10]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][10]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][10]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][10]~q\,
	datab => \inst3|ALT_INV_regs[8][10]~q\,
	datac => \inst3|ALT_INV_regs[1][10]~q\,
	datad => \inst3|ALT_INV_regs[9][10]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux21~0_combout\);

\inst3|regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][10]~q\);

\inst3|regs[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][10]~q\);

\inst3|regs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][10]~q\);

\inst3|regs[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][10]~q\);

\inst3|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][10]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][10]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][10]~q\,
	datab => \inst3|ALT_INV_regs[12][10]~q\,
	datac => \inst3|ALT_INV_regs[5][10]~q\,
	datad => \inst3|ALT_INV_regs[13][10]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux21~1_combout\);

\inst3|regs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][10]~q\);

\inst3|regs[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][10]~q\);

\inst3|regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][10]~q\);

\inst3|regs[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][10]~q\);

\inst3|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][10]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][10]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][10]~q\,
	datab => \inst3|ALT_INV_regs[10][10]~q\,
	datac => \inst3|ALT_INV_regs[3][10]~q\,
	datad => \inst3|ALT_INV_regs[11][10]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux21~2_combout\);

\inst3|regs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][10]~q\);

\inst3|regs[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][10]~q\);

\inst3|regs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][10]~q\);

\inst3|regs[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][10]~q\);

\inst3|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][10]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][10]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][10]~q\,
	datab => \inst3|ALT_INV_regs[14][10]~q\,
	datac => \inst3|ALT_INV_regs[7][10]~q\,
	datad => \inst3|ALT_INV_regs[15][10]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux21~3_combout\);

\inst3|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux21~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux21~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux21~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux21~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux21~0_combout\,
	datab => \inst3|ALT_INV_Mux21~1_combout\,
	datac => \inst3|ALT_INV_Mux21~2_combout\,
	datad => \inst3|ALT_INV_Mux21~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux21~4_combout\);

\inst3|Mux53~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux53~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][10]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][10]~q\,
	datab => \inst3|ALT_INV_regs[4][10]~q\,
	datac => \inst3|ALT_INV_regs[8][10]~q\,
	datad => \inst3|ALT_INV_regs[12][10]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux53~0_combout\);

\inst3|Mux53~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux53~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][10]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][10]~q\,
	datab => \inst3|ALT_INV_regs[5][10]~q\,
	datac => \inst3|ALT_INV_regs[9][10]~q\,
	datad => \inst3|ALT_INV_regs[13][10]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux53~1_combout\);

\inst3|Mux53~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux53~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][10]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][10]~q\,
	datab => \inst3|ALT_INV_regs[6][10]~q\,
	datac => \inst3|ALT_INV_regs[10][10]~q\,
	datad => \inst3|ALT_INV_regs[14][10]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux53~2_combout\);

\inst3|Mux53~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux53~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][10]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][10]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][10]~q\,
	datab => \inst3|ALT_INV_regs[7][10]~q\,
	datac => \inst3|ALT_INV_regs[11][10]~q\,
	datad => \inst3|ALT_INV_regs[15][10]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux53~3_combout\);

\inst3|Mux53~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux53~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux53~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux53~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux53~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux53~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux53~0_combout\,
	datab => \inst3|ALT_INV_Mux53~1_combout\,
	datac => \inst3|ALT_INV_Mux53~2_combout\,
	datad => \inst3|ALT_INV_Mux53~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux53~4_combout\);

\inst3|Mux21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux53~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(10) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux53~4_combout\,
	datab => \inst2|ALT_INV_operand\(10),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux21~5_combout\);

\inst3|Mux21~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~6_combout\ = ( \inst3|Mux21~5_combout\ ) # ( !\inst3|Mux21~5_combout\ & ( (!\inst3|Mux37~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux21~4_combout\)))) # (\inst3|Mux37~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux21~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux37~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux21~4_combout\,
	datae => \inst3|ALT_INV_Mux21~5_combout\,
	combout => \inst3|Mux21~6_combout\);

\inst3|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux21~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][10]~q\);

\inst3|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux37~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][10]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][10]~q\,
	datab => \inst3|ALT_INV_regs[4][10]~q\,
	datac => \inst3|ALT_INV_regs[8][10]~q\,
	datad => \inst3|ALT_INV_regs[12][10]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux37~0_combout\);

\inst3|Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux37~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][10]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][10]~q\,
	datab => \inst3|ALT_INV_regs[5][10]~q\,
	datac => \inst3|ALT_INV_regs[9][10]~q\,
	datad => \inst3|ALT_INV_regs[13][10]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux37~1_combout\);

\inst3|Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux37~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][10]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][10]~q\,
	datab => \inst3|ALT_INV_regs[6][10]~q\,
	datac => \inst3|ALT_INV_regs[10][10]~q\,
	datad => \inst3|ALT_INV_regs[14][10]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux37~2_combout\);

\inst3|Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux37~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][10]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][10]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][10]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][10]~q\,
	datab => \inst3|ALT_INV_regs[7][10]~q\,
	datac => \inst3|ALT_INV_regs[11][10]~q\,
	datad => \inst3|ALT_INV_regs[15][10]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux37~3_combout\);

\inst3|Mux37~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux37~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux37~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux37~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux37~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux37~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux37~0_combout\,
	datab => \inst3|ALT_INV_Mux37~1_combout\,
	datac => \inst3|ALT_INV_Mux37~2_combout\,
	datad => \inst3|ALT_INV_Mux37~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux37~4_combout\);

\inst3|regs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][9]~q\);

\inst3|regs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][9]~q\);

\inst3|regs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][9]~q\);

\inst3|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][9]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][9]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][9]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][9]~q\,
	datab => \inst3|ALT_INV_regs[2][9]~q\,
	datac => \inst3|ALT_INV_regs[4][9]~q\,
	datad => \inst3|ALT_INV_regs[6][9]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux22~0_combout\);

\inst3|regs[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][9]~q\);

\inst3|regs[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][9]~q\);

\inst3|regs[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][9]~q\);

\inst3|regs[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][9]~q\);

\inst3|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][9]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][9]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[10][9]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][9]~q\,
	datab => \inst3|ALT_INV_regs[10][9]~q\,
	datac => \inst3|ALT_INV_regs[12][9]~q\,
	datad => \inst3|ALT_INV_regs[14][9]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux22~1_combout\);

\inst3|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][9]~q\);

\inst3|regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][9]~q\);

\inst3|regs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][9]~q\);

\inst3|regs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][9]~q\);

\inst3|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][9]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][9]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][9]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][9]~q\,
	datab => \inst3|ALT_INV_regs[3][9]~q\,
	datac => \inst3|ALT_INV_regs[5][9]~q\,
	datad => \inst3|ALT_INV_regs[7][9]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux22~2_combout\);

\inst3|regs[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][9]~q\);

\inst3|regs[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][9]~q\);

\inst3|regs[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][9]~q\);

\inst3|regs[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][9]~q\);

\inst3|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][9]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][9]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[11][9]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][9]~q\,
	datab => \inst3|ALT_INV_regs[11][9]~q\,
	datac => \inst3|ALT_INV_regs[13][9]~q\,
	datad => \inst3|ALT_INV_regs[15][9]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux22~3_combout\);

\inst3|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux22~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux22~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux22~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux22~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux22~0_combout\,
	datab => \inst3|ALT_INV_Mux22~1_combout\,
	datac => \inst3|ALT_INV_Mux22~2_combout\,
	datad => \inst3|ALT_INV_Mux22~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux22~4_combout\);

\inst3|Mux54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux54~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][9]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][9]~q\,
	datab => \inst3|ALT_INV_regs[1][9]~q\,
	datac => \inst3|ALT_INV_regs[2][9]~q\,
	datad => \inst3|ALT_INV_regs[3][9]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux54~0_combout\);

\inst3|Mux54~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux54~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][9]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][9]~q\,
	datab => \inst3|ALT_INV_regs[5][9]~q\,
	datac => \inst3|ALT_INV_regs[6][9]~q\,
	datad => \inst3|ALT_INV_regs[7][9]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux54~1_combout\);

\inst3|Mux54~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux54~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][9]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][9]~q\,
	datab => \inst3|ALT_INV_regs[9][9]~q\,
	datac => \inst3|ALT_INV_regs[10][9]~q\,
	datad => \inst3|ALT_INV_regs[11][9]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux54~2_combout\);

\inst3|Mux54~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux54~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][9]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][9]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][9]~q\,
	datab => \inst3|ALT_INV_regs[13][9]~q\,
	datac => \inst3|ALT_INV_regs[14][9]~q\,
	datad => \inst3|ALT_INV_regs[15][9]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux54~3_combout\);

\inst3|Mux54~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux54~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux54~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux54~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux54~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux54~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux54~0_combout\,
	datab => \inst3|ALT_INV_Mux54~1_combout\,
	datac => \inst3|ALT_INV_Mux54~2_combout\,
	datad => \inst3|ALT_INV_Mux54~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux54~4_combout\);

\inst3|Mux22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux54~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(9) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux54~4_combout\,
	datab => \inst2|ALT_INV_operand\(9),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux22~5_combout\);

\inst3|Mux22~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~6_combout\ = ( \inst3|Mux22~5_combout\ ) # ( !\inst3|Mux22~5_combout\ & ( (!\inst3|Mux38~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux22~4_combout\)))) # (\inst3|Mux38~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux22~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux38~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux22~4_combout\,
	datae => \inst3|ALT_INV_Mux22~5_combout\,
	combout => \inst3|Mux22~6_combout\);

\inst3|regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux22~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][9]~q\);

\inst3|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux38~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][9]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][9]~q\,
	datab => \inst3|ALT_INV_regs[1][9]~q\,
	datac => \inst3|ALT_INV_regs[2][9]~q\,
	datad => \inst3|ALT_INV_regs[3][9]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux38~0_combout\);

\inst3|Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux38~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][9]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][9]~q\,
	datab => \inst3|ALT_INV_regs[5][9]~q\,
	datac => \inst3|ALT_INV_regs[6][9]~q\,
	datad => \inst3|ALT_INV_regs[7][9]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux38~1_combout\);

\inst3|Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux38~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][9]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][9]~q\,
	datab => \inst3|ALT_INV_regs[9][9]~q\,
	datac => \inst3|ALT_INV_regs[10][9]~q\,
	datad => \inst3|ALT_INV_regs[11][9]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux38~2_combout\);

\inst3|Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux38~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][9]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][9]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][9]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][9]~q\,
	datab => \inst3|ALT_INV_regs[13][9]~q\,
	datac => \inst3|ALT_INV_regs[14][9]~q\,
	datad => \inst3|ALT_INV_regs[15][9]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux38~3_combout\);

\inst3|Mux38~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux38~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux38~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux38~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux38~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux38~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux38~0_combout\,
	datab => \inst3|ALT_INV_Mux38~1_combout\,
	datac => \inst3|ALT_INV_Mux38~2_combout\,
	datad => \inst3|ALT_INV_Mux38~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux38~4_combout\);

\inst3|regs[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][8]~q\);

\inst3|regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][8]~q\);

\inst3|regs[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][8]~q\);

\inst3|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][8]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][8]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][8]~q\ ) ) 
-- ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][8]~q\,
	datab => \inst3|ALT_INV_regs[8][8]~q\,
	datac => \inst3|ALT_INV_regs[1][8]~q\,
	datad => \inst3|ALT_INV_regs[9][8]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux23~0_combout\);

\inst3|regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][8]~q\);

\inst3|regs[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][8]~q\);

\inst3|regs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][8]~q\);

\inst3|regs[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][8]~q\);

\inst3|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][8]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][8]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][8]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][8]~q\,
	datab => \inst3|ALT_INV_regs[12][8]~q\,
	datac => \inst3|ALT_INV_regs[5][8]~q\,
	datad => \inst3|ALT_INV_regs[13][8]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux23~1_combout\);

\inst3|regs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][8]~q\);

\inst3|regs[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][8]~q\);

\inst3|regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][8]~q\);

\inst3|regs[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][8]~q\);

\inst3|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][8]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][8]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][8]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][8]~q\,
	datab => \inst3|ALT_INV_regs[10][8]~q\,
	datac => \inst3|ALT_INV_regs[3][8]~q\,
	datad => \inst3|ALT_INV_regs[11][8]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux23~2_combout\);

\inst3|regs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][8]~q\);

\inst3|regs[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][8]~q\);

\inst3|regs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][8]~q\);

\inst3|regs[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][8]~q\);

\inst3|Mux23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][8]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][8]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][8]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][8]~q\,
	datab => \inst3|ALT_INV_regs[14][8]~q\,
	datac => \inst3|ALT_INV_regs[7][8]~q\,
	datad => \inst3|ALT_INV_regs[15][8]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux23~3_combout\);

\inst3|Mux23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux23~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux23~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux23~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux23~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux23~0_combout\,
	datab => \inst3|ALT_INV_Mux23~1_combout\,
	datac => \inst3|ALT_INV_Mux23~2_combout\,
	datad => \inst3|ALT_INV_Mux23~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux23~4_combout\);

\inst3|Mux55~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux55~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][8]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][8]~q\,
	datab => \inst3|ALT_INV_regs[4][8]~q\,
	datac => \inst3|ALT_INV_regs[8][8]~q\,
	datad => \inst3|ALT_INV_regs[12][8]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux55~0_combout\);

\inst3|Mux55~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux55~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][8]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][8]~q\,
	datab => \inst3|ALT_INV_regs[5][8]~q\,
	datac => \inst3|ALT_INV_regs[9][8]~q\,
	datad => \inst3|ALT_INV_regs[13][8]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux55~1_combout\);

\inst3|Mux55~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux55~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][8]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][8]~q\,
	datab => \inst3|ALT_INV_regs[6][8]~q\,
	datac => \inst3|ALT_INV_regs[10][8]~q\,
	datad => \inst3|ALT_INV_regs[14][8]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux55~2_combout\);

\inst3|Mux55~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux55~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][8]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][8]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][8]~q\,
	datab => \inst3|ALT_INV_regs[7][8]~q\,
	datac => \inst3|ALT_INV_regs[11][8]~q\,
	datad => \inst3|ALT_INV_regs[15][8]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux55~3_combout\);

\inst3|Mux55~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux55~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux55~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux55~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux55~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux55~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux55~0_combout\,
	datab => \inst3|ALT_INV_Mux55~1_combout\,
	datac => \inst3|ALT_INV_Mux55~2_combout\,
	datad => \inst3|ALT_INV_Mux55~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux55~4_combout\);

\inst3|Mux23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux55~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(8) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux55~4_combout\,
	datab => \inst2|ALT_INV_operand\(8),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux23~5_combout\);

\inst3|Mux23~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~6_combout\ = ( \inst3|Mux23~5_combout\ ) # ( !\inst3|Mux23~5_combout\ & ( (!\inst3|Mux39~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux23~4_combout\)))) # (\inst3|Mux39~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux23~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux39~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux23~4_combout\,
	datae => \inst3|ALT_INV_Mux23~5_combout\,
	combout => \inst3|Mux23~6_combout\);

\inst3|regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux23~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][8]~q\);

\inst3|Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux39~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][8]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][8]~q\,
	datab => \inst3|ALT_INV_regs[4][8]~q\,
	datac => \inst3|ALT_INV_regs[8][8]~q\,
	datad => \inst3|ALT_INV_regs[12][8]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux39~0_combout\);

\inst3|Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux39~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][8]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][8]~q\,
	datab => \inst3|ALT_INV_regs[5][8]~q\,
	datac => \inst3|ALT_INV_regs[9][8]~q\,
	datad => \inst3|ALT_INV_regs[13][8]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux39~1_combout\);

\inst3|Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux39~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][8]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][8]~q\,
	datab => \inst3|ALT_INV_regs[6][8]~q\,
	datac => \inst3|ALT_INV_regs[10][8]~q\,
	datad => \inst3|ALT_INV_regs[14][8]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux39~2_combout\);

\inst3|Mux39~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux39~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][8]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][8]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][8]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][8]~q\,
	datab => \inst3|ALT_INV_regs[7][8]~q\,
	datac => \inst3|ALT_INV_regs[11][8]~q\,
	datad => \inst3|ALT_INV_regs[15][8]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux39~3_combout\);

\inst3|Mux39~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux39~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux39~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux39~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux39~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux39~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux39~0_combout\,
	datab => \inst3|ALT_INV_Mux39~1_combout\,
	datac => \inst3|ALT_INV_Mux39~2_combout\,
	datad => \inst3|ALT_INV_Mux39~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux39~4_combout\);

\inst3|regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][7]~q\);

\inst3|regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][7]~q\);

\inst3|regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][7]~q\);

\inst3|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][7]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][7]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][7]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][7]~q\,
	datab => \inst3|ALT_INV_regs[2][7]~q\,
	datac => \inst3|ALT_INV_regs[4][7]~q\,
	datad => \inst3|ALT_INV_regs[6][7]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux24~0_combout\);

\inst3|regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][7]~q\);

\inst3|regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][7]~q\);

\inst3|regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][7]~q\);

\inst3|regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][7]~q\);

\inst3|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][7]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][7]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[10][7]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][7]~q\,
	datab => \inst3|ALT_INV_regs[10][7]~q\,
	datac => \inst3|ALT_INV_regs[12][7]~q\,
	datad => \inst3|ALT_INV_regs[14][7]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux24~1_combout\);

\inst3|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][7]~q\);

\inst3|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][7]~q\);

\inst3|regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][7]~q\);

\inst3|regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][7]~q\);

\inst3|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][7]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][7]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][7]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][7]~q\,
	datab => \inst3|ALT_INV_regs[3][7]~q\,
	datac => \inst3|ALT_INV_regs[5][7]~q\,
	datad => \inst3|ALT_INV_regs[7][7]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux24~2_combout\);

\inst3|regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][7]~q\);

\inst3|regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][7]~q\);

\inst3|regs[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][7]~q\);

\inst3|regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][7]~q\);

\inst3|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][7]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][7]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[11][7]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][7]~q\,
	datab => \inst3|ALT_INV_regs[11][7]~q\,
	datac => \inst3|ALT_INV_regs[13][7]~q\,
	datad => \inst3|ALT_INV_regs[15][7]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux24~3_combout\);

\inst3|Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux24~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux24~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux24~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux24~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux24~0_combout\,
	datab => \inst3|ALT_INV_Mux24~1_combout\,
	datac => \inst3|ALT_INV_Mux24~2_combout\,
	datad => \inst3|ALT_INV_Mux24~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux24~4_combout\);

\inst3|Mux56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux56~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][7]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][7]~q\,
	datab => \inst3|ALT_INV_regs[1][7]~q\,
	datac => \inst3|ALT_INV_regs[2][7]~q\,
	datad => \inst3|ALT_INV_regs[3][7]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux56~0_combout\);

\inst3|Mux56~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux56~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][7]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][7]~q\,
	datab => \inst3|ALT_INV_regs[5][7]~q\,
	datac => \inst3|ALT_INV_regs[6][7]~q\,
	datad => \inst3|ALT_INV_regs[7][7]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux56~1_combout\);

\inst3|Mux56~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux56~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][7]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][7]~q\,
	datab => \inst3|ALT_INV_regs[9][7]~q\,
	datac => \inst3|ALT_INV_regs[10][7]~q\,
	datad => \inst3|ALT_INV_regs[11][7]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux56~2_combout\);

\inst3|Mux56~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux56~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][7]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][7]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][7]~q\,
	datab => \inst3|ALT_INV_regs[13][7]~q\,
	datac => \inst3|ALT_INV_regs[14][7]~q\,
	datad => \inst3|ALT_INV_regs[15][7]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux56~3_combout\);

\inst3|Mux56~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux56~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux56~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux56~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux56~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux56~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux56~0_combout\,
	datab => \inst3|ALT_INV_Mux56~1_combout\,
	datac => \inst3|ALT_INV_Mux56~2_combout\,
	datad => \inst3|ALT_INV_Mux56~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux56~4_combout\);

\inst3|Mux24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux56~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(7) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux56~4_combout\,
	datab => \inst2|ALT_INV_operand\(7),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux24~5_combout\);

\inst3|Mux24~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~6_combout\ = ( \inst3|Mux24~5_combout\ ) # ( !\inst3|Mux24~5_combout\ & ( (!\inst3|Mux40~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux24~4_combout\)))) # (\inst3|Mux40~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux24~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux40~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux24~4_combout\,
	datae => \inst3|ALT_INV_Mux24~5_combout\,
	combout => \inst3|Mux24~6_combout\);

\inst3|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux24~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][7]~q\);

\inst3|Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux40~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][7]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][7]~q\,
	datab => \inst3|ALT_INV_regs[1][7]~q\,
	datac => \inst3|ALT_INV_regs[2][7]~q\,
	datad => \inst3|ALT_INV_regs[3][7]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux40~0_combout\);

\inst3|Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux40~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][7]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][7]~q\,
	datab => \inst3|ALT_INV_regs[5][7]~q\,
	datac => \inst3|ALT_INV_regs[6][7]~q\,
	datad => \inst3|ALT_INV_regs[7][7]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux40~1_combout\);

\inst3|Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux40~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][7]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][7]~q\,
	datab => \inst3|ALT_INV_regs[9][7]~q\,
	datac => \inst3|ALT_INV_regs[10][7]~q\,
	datad => \inst3|ALT_INV_regs[11][7]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux40~2_combout\);

\inst3|Mux40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux40~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][7]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][7]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][7]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][7]~q\,
	datab => \inst3|ALT_INV_regs[13][7]~q\,
	datac => \inst3|ALT_INV_regs[14][7]~q\,
	datad => \inst3|ALT_INV_regs[15][7]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux40~3_combout\);

\inst3|Mux40~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux40~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux40~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux40~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux40~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux40~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux40~0_combout\,
	datab => \inst3|ALT_INV_Mux40~1_combout\,
	datac => \inst3|ALT_INV_Mux40~2_combout\,
	datad => \inst3|ALT_INV_Mux40~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux40~4_combout\);

\inst3|regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][6]~q\);

\inst3|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][6]~q\);

\inst3|regs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][6]~q\);

\inst3|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][6]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][6]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][6]~q\ ) ) 
-- ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][6]~q\,
	datab => \inst3|ALT_INV_regs[8][6]~q\,
	datac => \inst3|ALT_INV_regs[1][6]~q\,
	datad => \inst3|ALT_INV_regs[9][6]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux25~0_combout\);

\inst3|regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][6]~q\);

\inst3|regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][6]~q\);

\inst3|regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][6]~q\);

\inst3|regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][6]~q\);

\inst3|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][6]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][6]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][6]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][6]~q\,
	datab => \inst3|ALT_INV_regs[12][6]~q\,
	datac => \inst3|ALT_INV_regs[5][6]~q\,
	datad => \inst3|ALT_INV_regs[13][6]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux25~1_combout\);

\inst3|regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][6]~q\);

\inst3|regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][6]~q\);

\inst3|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][6]~q\);

\inst3|regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][6]~q\);

\inst3|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][6]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][6]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][6]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][6]~q\,
	datab => \inst3|ALT_INV_regs[10][6]~q\,
	datac => \inst3|ALT_INV_regs[3][6]~q\,
	datad => \inst3|ALT_INV_regs[11][6]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux25~2_combout\);

\inst3|regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][6]~q\);

\inst3|regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][6]~q\);

\inst3|regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][6]~q\);

\inst3|regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][6]~q\);

\inst3|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][6]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][6]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][6]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][6]~q\,
	datab => \inst3|ALT_INV_regs[14][6]~q\,
	datac => \inst3|ALT_INV_regs[7][6]~q\,
	datad => \inst3|ALT_INV_regs[15][6]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux25~3_combout\);

\inst3|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux25~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux25~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux25~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux25~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux25~0_combout\,
	datab => \inst3|ALT_INV_Mux25~1_combout\,
	datac => \inst3|ALT_INV_Mux25~2_combout\,
	datad => \inst3|ALT_INV_Mux25~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux25~4_combout\);

\inst3|Mux57~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux57~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][6]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][6]~q\,
	datab => \inst3|ALT_INV_regs[4][6]~q\,
	datac => \inst3|ALT_INV_regs[8][6]~q\,
	datad => \inst3|ALT_INV_regs[12][6]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux57~0_combout\);

\inst3|Mux57~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux57~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][6]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][6]~q\,
	datab => \inst3|ALT_INV_regs[5][6]~q\,
	datac => \inst3|ALT_INV_regs[9][6]~q\,
	datad => \inst3|ALT_INV_regs[13][6]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux57~1_combout\);

\inst3|Mux57~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux57~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][6]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][6]~q\,
	datab => \inst3|ALT_INV_regs[6][6]~q\,
	datac => \inst3|ALT_INV_regs[10][6]~q\,
	datad => \inst3|ALT_INV_regs[14][6]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux57~2_combout\);

\inst3|Mux57~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux57~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][6]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][6]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][6]~q\,
	datab => \inst3|ALT_INV_regs[7][6]~q\,
	datac => \inst3|ALT_INV_regs[11][6]~q\,
	datad => \inst3|ALT_INV_regs[15][6]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux57~3_combout\);

\inst3|Mux57~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux57~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux57~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux57~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux57~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux57~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux57~0_combout\,
	datab => \inst3|ALT_INV_Mux57~1_combout\,
	datac => \inst3|ALT_INV_Mux57~2_combout\,
	datad => \inst3|ALT_INV_Mux57~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux57~4_combout\);

\inst3|Mux25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux57~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(6) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux57~4_combout\,
	datab => \inst2|ALT_INV_operand\(6),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux25~5_combout\);

\inst3|Mux25~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~6_combout\ = ( \inst3|Mux25~5_combout\ ) # ( !\inst3|Mux25~5_combout\ & ( (!\inst3|Mux41~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux25~4_combout\)))) # (\inst3|Mux41~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux25~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux41~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux25~4_combout\,
	datae => \inst3|ALT_INV_Mux25~5_combout\,
	combout => \inst3|Mux25~6_combout\);

\inst3|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux25~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][6]~q\);

\inst3|Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux41~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][6]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][6]~q\,
	datab => \inst3|ALT_INV_regs[4][6]~q\,
	datac => \inst3|ALT_INV_regs[8][6]~q\,
	datad => \inst3|ALT_INV_regs[12][6]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux41~0_combout\);

\inst3|Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux41~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][6]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][6]~q\,
	datab => \inst3|ALT_INV_regs[5][6]~q\,
	datac => \inst3|ALT_INV_regs[9][6]~q\,
	datad => \inst3|ALT_INV_regs[13][6]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux41~1_combout\);

\inst3|Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux41~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][6]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][6]~q\,
	datab => \inst3|ALT_INV_regs[6][6]~q\,
	datac => \inst3|ALT_INV_regs[10][6]~q\,
	datad => \inst3|ALT_INV_regs[14][6]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux41~2_combout\);

\inst3|Mux41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux41~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][6]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][6]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][6]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][6]~q\,
	datab => \inst3|ALT_INV_regs[7][6]~q\,
	datac => \inst3|ALT_INV_regs[11][6]~q\,
	datad => \inst3|ALT_INV_regs[15][6]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux41~3_combout\);

\inst3|Mux41~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux41~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux41~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux41~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux41~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux41~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux41~0_combout\,
	datab => \inst3|ALT_INV_Mux41~1_combout\,
	datac => \inst3|ALT_INV_Mux41~2_combout\,
	datad => \inst3|ALT_INV_Mux41~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux41~4_combout\);

\inst3|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][5]~q\);

\inst3|regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][5]~q\);

\inst3|regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][5]~q\);

\inst3|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][5]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][5]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][5]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][5]~q\,
	datab => \inst3|ALT_INV_regs[2][5]~q\,
	datac => \inst3|ALT_INV_regs[4][5]~q\,
	datad => \inst3|ALT_INV_regs[6][5]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux26~0_combout\);

\inst3|regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][5]~q\);

\inst3|regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][5]~q\);

\inst3|regs[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][5]~q\);

\inst3|regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][5]~q\);

\inst3|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][5]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][5]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[10][5]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][5]~q\,
	datab => \inst3|ALT_INV_regs[10][5]~q\,
	datac => \inst3|ALT_INV_regs[12][5]~q\,
	datad => \inst3|ALT_INV_regs[14][5]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux26~1_combout\);

\inst3|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][5]~q\);

\inst3|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][5]~q\);

\inst3|regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][5]~q\);

\inst3|regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][5]~q\);

\inst3|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][5]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][5]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][5]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][5]~q\,
	datab => \inst3|ALT_INV_regs[3][5]~q\,
	datac => \inst3|ALT_INV_regs[5][5]~q\,
	datad => \inst3|ALT_INV_regs[7][5]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux26~2_combout\);

\inst3|regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][5]~q\);

\inst3|regs[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][5]~q\);

\inst3|regs[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][5]~q\);

\inst3|regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][5]~q\);

\inst3|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][5]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][5]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[11][5]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][5]~q\,
	datab => \inst3|ALT_INV_regs[11][5]~q\,
	datac => \inst3|ALT_INV_regs[13][5]~q\,
	datad => \inst3|ALT_INV_regs[15][5]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux26~3_combout\);

\inst3|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux26~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux26~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux26~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux26~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux26~0_combout\,
	datab => \inst3|ALT_INV_Mux26~1_combout\,
	datac => \inst3|ALT_INV_Mux26~2_combout\,
	datad => \inst3|ALT_INV_Mux26~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux26~4_combout\);

\inst3|Mux58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux58~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][5]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][5]~q\,
	datab => \inst3|ALT_INV_regs[1][5]~q\,
	datac => \inst3|ALT_INV_regs[2][5]~q\,
	datad => \inst3|ALT_INV_regs[3][5]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux58~0_combout\);

\inst3|Mux58~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux58~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][5]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][5]~q\,
	datab => \inst3|ALT_INV_regs[5][5]~q\,
	datac => \inst3|ALT_INV_regs[6][5]~q\,
	datad => \inst3|ALT_INV_regs[7][5]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux58~1_combout\);

\inst3|Mux58~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux58~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][5]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][5]~q\,
	datab => \inst3|ALT_INV_regs[9][5]~q\,
	datac => \inst3|ALT_INV_regs[10][5]~q\,
	datad => \inst3|ALT_INV_regs[11][5]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux58~2_combout\);

\inst3|Mux58~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux58~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][5]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][5]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][5]~q\,
	datab => \inst3|ALT_INV_regs[13][5]~q\,
	datac => \inst3|ALT_INV_regs[14][5]~q\,
	datad => \inst3|ALT_INV_regs[15][5]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux58~3_combout\);

\inst3|Mux58~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux58~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux58~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux58~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux58~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux58~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux58~0_combout\,
	datab => \inst3|ALT_INV_Mux58~1_combout\,
	datac => \inst3|ALT_INV_Mux58~2_combout\,
	datad => \inst3|ALT_INV_Mux58~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux58~4_combout\);

\inst3|Mux26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux58~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(5) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux58~4_combout\,
	datab => \inst2|ALT_INV_operand\(5),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux26~5_combout\);

\inst3|Mux26~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~6_combout\ = ( \inst3|Mux26~5_combout\ ) # ( !\inst3|Mux26~5_combout\ & ( (!\inst3|Mux42~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux26~4_combout\)))) # (\inst3|Mux42~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux26~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux42~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux26~4_combout\,
	datae => \inst3|ALT_INV_Mux26~5_combout\,
	combout => \inst3|Mux26~6_combout\);

\inst3|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux26~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][5]~q\);

\inst3|Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux42~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][5]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][5]~q\,
	datab => \inst3|ALT_INV_regs[1][5]~q\,
	datac => \inst3|ALT_INV_regs[2][5]~q\,
	datad => \inst3|ALT_INV_regs[3][5]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux42~0_combout\);

\inst3|Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux42~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][5]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][5]~q\,
	datab => \inst3|ALT_INV_regs[5][5]~q\,
	datac => \inst3|ALT_INV_regs[6][5]~q\,
	datad => \inst3|ALT_INV_regs[7][5]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux42~1_combout\);

\inst3|Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux42~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][5]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][5]~q\,
	datab => \inst3|ALT_INV_regs[9][5]~q\,
	datac => \inst3|ALT_INV_regs[10][5]~q\,
	datad => \inst3|ALT_INV_regs[11][5]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux42~2_combout\);

\inst3|Mux42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux42~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][5]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][5]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][5]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][5]~q\,
	datab => \inst3|ALT_INV_regs[13][5]~q\,
	datac => \inst3|ALT_INV_regs[14][5]~q\,
	datad => \inst3|ALT_INV_regs[15][5]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux42~3_combout\);

\inst3|Mux42~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux42~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux42~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux42~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux42~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux42~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux42~0_combout\,
	datab => \inst3|ALT_INV_Mux42~1_combout\,
	datac => \inst3|ALT_INV_Mux42~2_combout\,
	datad => \inst3|ALT_INV_Mux42~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux42~4_combout\);

\inst3|regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][4]~q\);

\inst3|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][4]~q\);

\inst3|regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][4]~q\);

\inst3|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][4]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][4]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][4]~q\ ) ) 
-- ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][4]~q\,
	datab => \inst3|ALT_INV_regs[8][4]~q\,
	datac => \inst3|ALT_INV_regs[1][4]~q\,
	datad => \inst3|ALT_INV_regs[9][4]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux27~0_combout\);

\inst3|regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][4]~q\);

\inst3|regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][4]~q\);

\inst3|regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][4]~q\);

\inst3|regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][4]~q\);

\inst3|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][4]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][4]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][4]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][4]~q\,
	datab => \inst3|ALT_INV_regs[12][4]~q\,
	datac => \inst3|ALT_INV_regs[5][4]~q\,
	datad => \inst3|ALT_INV_regs[13][4]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux27~1_combout\);

\inst3|regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][4]~q\);

\inst3|regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][4]~q\);

\inst3|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][4]~q\);

\inst3|regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][4]~q\);

\inst3|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][4]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][4]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][4]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][4]~q\,
	datab => \inst3|ALT_INV_regs[10][4]~q\,
	datac => \inst3|ALT_INV_regs[3][4]~q\,
	datad => \inst3|ALT_INV_regs[11][4]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux27~2_combout\);

\inst3|regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][4]~q\);

\inst3|regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][4]~q\);

\inst3|regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][4]~q\);

\inst3|regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][4]~q\);

\inst3|Mux27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][4]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][4]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][4]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][4]~q\,
	datab => \inst3|ALT_INV_regs[14][4]~q\,
	datac => \inst3|ALT_INV_regs[7][4]~q\,
	datad => \inst3|ALT_INV_regs[15][4]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux27~3_combout\);

\inst3|Mux27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux27~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux27~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux27~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux27~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux27~0_combout\,
	datab => \inst3|ALT_INV_Mux27~1_combout\,
	datac => \inst3|ALT_INV_Mux27~2_combout\,
	datad => \inst3|ALT_INV_Mux27~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux27~4_combout\);

\inst3|Mux59~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux59~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][4]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][4]~q\,
	datab => \inst3|ALT_INV_regs[4][4]~q\,
	datac => \inst3|ALT_INV_regs[8][4]~q\,
	datad => \inst3|ALT_INV_regs[12][4]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux59~0_combout\);

\inst3|Mux59~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux59~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][4]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][4]~q\,
	datab => \inst3|ALT_INV_regs[5][4]~q\,
	datac => \inst3|ALT_INV_regs[9][4]~q\,
	datad => \inst3|ALT_INV_regs[13][4]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux59~1_combout\);

\inst3|Mux59~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux59~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][4]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][4]~q\,
	datab => \inst3|ALT_INV_regs[6][4]~q\,
	datac => \inst3|ALT_INV_regs[10][4]~q\,
	datad => \inst3|ALT_INV_regs[14][4]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux59~2_combout\);

\inst3|Mux59~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux59~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][4]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][4]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][4]~q\,
	datab => \inst3|ALT_INV_regs[7][4]~q\,
	datac => \inst3|ALT_INV_regs[11][4]~q\,
	datad => \inst3|ALT_INV_regs[15][4]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux59~3_combout\);

\inst3|Mux59~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux59~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux59~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux59~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux59~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux59~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux59~0_combout\,
	datab => \inst3|ALT_INV_Mux59~1_combout\,
	datac => \inst3|ALT_INV_Mux59~2_combout\,
	datad => \inst3|ALT_INV_Mux59~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux59~4_combout\);

\inst3|Mux27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux59~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(4) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux59~4_combout\,
	datab => \inst2|ALT_INV_operand\(4),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux27~5_combout\);

\inst3|Mux27~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~6_combout\ = ( \inst3|Mux27~5_combout\ ) # ( !\inst3|Mux27~5_combout\ & ( (!\inst3|Mux43~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux27~4_combout\)))) # (\inst3|Mux43~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux27~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux43~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux27~4_combout\,
	datae => \inst3|ALT_INV_Mux27~5_combout\,
	combout => \inst3|Mux27~6_combout\);

\inst3|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux27~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][4]~q\);

\inst3|Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux43~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][4]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][4]~q\,
	datab => \inst3|ALT_INV_regs[4][4]~q\,
	datac => \inst3|ALT_INV_regs[8][4]~q\,
	datad => \inst3|ALT_INV_regs[12][4]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux43~0_combout\);

\inst3|Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux43~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][4]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][4]~q\,
	datab => \inst3|ALT_INV_regs[5][4]~q\,
	datac => \inst3|ALT_INV_regs[9][4]~q\,
	datad => \inst3|ALT_INV_regs[13][4]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux43~1_combout\);

\inst3|Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux43~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][4]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][4]~q\,
	datab => \inst3|ALT_INV_regs[6][4]~q\,
	datac => \inst3|ALT_INV_regs[10][4]~q\,
	datad => \inst3|ALT_INV_regs[14][4]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux43~2_combout\);

\inst3|Mux43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux43~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][4]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][4]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][4]~q\,
	datab => \inst3|ALT_INV_regs[7][4]~q\,
	datac => \inst3|ALT_INV_regs[11][4]~q\,
	datad => \inst3|ALT_INV_regs[15][4]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux43~3_combout\);

\inst3|Mux43~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux43~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux43~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux43~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux43~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux43~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux43~0_combout\,
	datab => \inst3|ALT_INV_Mux43~1_combout\,
	datac => \inst3|ALT_INV_Mux43~2_combout\,
	datad => \inst3|ALT_INV_Mux43~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux43~4_combout\);

\inst3|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][3]~q\);

\inst3|regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][3]~q\);

\inst3|regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][3]~q\);

\inst3|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][3]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][3]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][3]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][3]~q\,
	datab => \inst3|ALT_INV_regs[2][3]~q\,
	datac => \inst3|ALT_INV_regs[4][3]~q\,
	datad => \inst3|ALT_INV_regs[6][3]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux28~0_combout\);

\inst3|regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][3]~q\);

\inst3|regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][3]~q\);

\inst3|regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][3]~q\);

\inst3|regs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][3]~q\);

\inst3|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][3]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][3]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[10][3]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][3]~q\,
	datab => \inst3|ALT_INV_regs[10][3]~q\,
	datac => \inst3|ALT_INV_regs[12][3]~q\,
	datad => \inst3|ALT_INV_regs[14][3]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux28~1_combout\);

\inst3|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][3]~q\);

\inst3|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][3]~q\);

\inst3|regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][3]~q\);

\inst3|regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][3]~q\);

\inst3|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][3]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][3]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][3]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][3]~q\,
	datab => \inst3|ALT_INV_regs[3][3]~q\,
	datac => \inst3|ALT_INV_regs[5][3]~q\,
	datad => \inst3|ALT_INV_regs[7][3]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux28~2_combout\);

\inst3|regs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][3]~q\);

\inst3|regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][3]~q\);

\inst3|regs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][3]~q\);

\inst3|regs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][3]~q\);

\inst3|Mux28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][3]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][3]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[11][3]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][3]~q\,
	datab => \inst3|ALT_INV_regs[11][3]~q\,
	datac => \inst3|ALT_INV_regs[13][3]~q\,
	datad => \inst3|ALT_INV_regs[15][3]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux28~3_combout\);

\inst3|Mux28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux28~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux28~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux28~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux28~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux28~0_combout\,
	datab => \inst3|ALT_INV_Mux28~1_combout\,
	datac => \inst3|ALT_INV_Mux28~2_combout\,
	datad => \inst3|ALT_INV_Mux28~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux28~4_combout\);

\inst3|Mux60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux60~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][3]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][3]~q\,
	datab => \inst3|ALT_INV_regs[1][3]~q\,
	datac => \inst3|ALT_INV_regs[2][3]~q\,
	datad => \inst3|ALT_INV_regs[3][3]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux60~0_combout\);

\inst3|Mux60~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux60~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][3]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][3]~q\,
	datab => \inst3|ALT_INV_regs[5][3]~q\,
	datac => \inst3|ALT_INV_regs[6][3]~q\,
	datad => \inst3|ALT_INV_regs[7][3]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux60~1_combout\);

\inst3|Mux60~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux60~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][3]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][3]~q\,
	datab => \inst3|ALT_INV_regs[9][3]~q\,
	datac => \inst3|ALT_INV_regs[10][3]~q\,
	datad => \inst3|ALT_INV_regs[11][3]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux60~2_combout\);

\inst3|Mux60~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux60~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][3]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][3]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][3]~q\,
	datab => \inst3|ALT_INV_regs[13][3]~q\,
	datac => \inst3|ALT_INV_regs[14][3]~q\,
	datad => \inst3|ALT_INV_regs[15][3]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux60~3_combout\);

\inst3|Mux60~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux60~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux60~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux60~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux60~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux60~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux60~0_combout\,
	datab => \inst3|ALT_INV_Mux60~1_combout\,
	datac => \inst3|ALT_INV_Mux60~2_combout\,
	datad => \inst3|ALT_INV_Mux60~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux60~4_combout\);

\inst3|Mux28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux60~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(3) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux60~4_combout\,
	datab => \inst2|ALT_INV_operand\(3),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux28~5_combout\);

\inst3|Mux28~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~6_combout\ = ( \inst3|Mux28~5_combout\ ) # ( !\inst3|Mux28~5_combout\ & ( (!\inst3|Mux44~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux28~4_combout\)))) # (\inst3|Mux44~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux28~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux44~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux28~4_combout\,
	datae => \inst3|ALT_INV_Mux28~5_combout\,
	combout => \inst3|Mux28~6_combout\);

\inst3|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux28~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][3]~q\);

\inst3|Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux44~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][3]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][3]~q\,
	datab => \inst3|ALT_INV_regs[1][3]~q\,
	datac => \inst3|ALT_INV_regs[2][3]~q\,
	datad => \inst3|ALT_INV_regs[3][3]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux44~0_combout\);

\inst3|Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux44~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][3]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][3]~q\,
	datab => \inst3|ALT_INV_regs[5][3]~q\,
	datac => \inst3|ALT_INV_regs[6][3]~q\,
	datad => \inst3|ALT_INV_regs[7][3]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux44~1_combout\);

\inst3|Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux44~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][3]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][3]~q\,
	datab => \inst3|ALT_INV_regs[9][3]~q\,
	datac => \inst3|ALT_INV_regs[10][3]~q\,
	datad => \inst3|ALT_INV_regs[11][3]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux44~2_combout\);

\inst3|Mux44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux44~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][3]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][3]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][3]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][3]~q\,
	datab => \inst3|ALT_INV_regs[13][3]~q\,
	datac => \inst3|ALT_INV_regs[14][3]~q\,
	datad => \inst3|ALT_INV_regs[15][3]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux44~3_combout\);

\inst3|Mux44~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux44~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux44~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux44~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux44~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux44~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux44~0_combout\,
	datab => \inst3|ALT_INV_Mux44~1_combout\,
	datac => \inst3|ALT_INV_Mux44~2_combout\,
	datad => \inst3|ALT_INV_Mux44~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux44~4_combout\);

\inst3|regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][2]~q\);

\inst3|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][2]~q\);

\inst3|regs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][2]~q\);

\inst3|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][2]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][2]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][2]~q\ ) ) 
-- ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][2]~q\,
	datab => \inst3|ALT_INV_regs[8][2]~q\,
	datac => \inst3|ALT_INV_regs[1][2]~q\,
	datad => \inst3|ALT_INV_regs[9][2]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux29~0_combout\);

\inst3|regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][2]~q\);

\inst3|regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][2]~q\);

\inst3|regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][2]~q\);

\inst3|regs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][2]~q\);

\inst3|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][2]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][2]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][2]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][2]~q\,
	datab => \inst3|ALT_INV_regs[12][2]~q\,
	datac => \inst3|ALT_INV_regs[5][2]~q\,
	datad => \inst3|ALT_INV_regs[13][2]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux29~1_combout\);

\inst3|regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][2]~q\);

\inst3|regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][2]~q\);

\inst3|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][2]~q\);

\inst3|regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][2]~q\);

\inst3|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][2]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][2]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][2]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][2]~q\,
	datab => \inst3|ALT_INV_regs[10][2]~q\,
	datac => \inst3|ALT_INV_regs[3][2]~q\,
	datad => \inst3|ALT_INV_regs[11][2]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux29~2_combout\);

\inst3|regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][2]~q\);

\inst3|regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][2]~q\);

\inst3|regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][2]~q\);

\inst3|regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][2]~q\);

\inst3|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][2]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][2]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][2]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][2]~q\,
	datab => \inst3|ALT_INV_regs[14][2]~q\,
	datac => \inst3|ALT_INV_regs[7][2]~q\,
	datad => \inst3|ALT_INV_regs[15][2]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux29~3_combout\);

\inst3|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux29~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux29~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux29~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux29~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux29~0_combout\,
	datab => \inst3|ALT_INV_Mux29~1_combout\,
	datac => \inst3|ALT_INV_Mux29~2_combout\,
	datad => \inst3|ALT_INV_Mux29~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux29~4_combout\);

\inst3|Mux61~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux61~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][2]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][2]~q\,
	datab => \inst3|ALT_INV_regs[4][2]~q\,
	datac => \inst3|ALT_INV_regs[8][2]~q\,
	datad => \inst3|ALT_INV_regs[12][2]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux61~0_combout\);

\inst3|Mux61~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux61~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][2]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][2]~q\,
	datab => \inst3|ALT_INV_regs[5][2]~q\,
	datac => \inst3|ALT_INV_regs[9][2]~q\,
	datad => \inst3|ALT_INV_regs[13][2]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux61~1_combout\);

\inst3|Mux61~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux61~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][2]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][2]~q\,
	datab => \inst3|ALT_INV_regs[6][2]~q\,
	datac => \inst3|ALT_INV_regs[10][2]~q\,
	datad => \inst3|ALT_INV_regs[14][2]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux61~2_combout\);

\inst3|Mux61~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux61~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][2]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][2]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][2]~q\,
	datab => \inst3|ALT_INV_regs[7][2]~q\,
	datac => \inst3|ALT_INV_regs[11][2]~q\,
	datad => \inst3|ALT_INV_regs[15][2]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux61~3_combout\);

\inst3|Mux61~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux61~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux61~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux61~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux61~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux61~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux61~0_combout\,
	datab => \inst3|ALT_INV_Mux61~1_combout\,
	datac => \inst3|ALT_INV_Mux61~2_combout\,
	datad => \inst3|ALT_INV_Mux61~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux61~4_combout\);

\inst3|Mux29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux61~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(2) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux61~4_combout\,
	datab => \inst2|ALT_INV_operand\(2),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux29~5_combout\);

\inst3|Mux29~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~6_combout\ = ( \inst3|Mux29~5_combout\ ) # ( !\inst3|Mux29~5_combout\ & ( (!\inst3|Mux45~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux29~4_combout\)))) # (\inst3|Mux45~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux29~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux45~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux29~4_combout\,
	datae => \inst3|ALT_INV_Mux29~5_combout\,
	combout => \inst3|Mux29~6_combout\);

\inst3|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux29~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][2]~q\);

\inst3|Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux45~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][2]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][2]~q\,
	datab => \inst3|ALT_INV_regs[4][2]~q\,
	datac => \inst3|ALT_INV_regs[8][2]~q\,
	datad => \inst3|ALT_INV_regs[12][2]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux45~0_combout\);

\inst3|Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux45~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][2]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][2]~q\,
	datab => \inst3|ALT_INV_regs[5][2]~q\,
	datac => \inst3|ALT_INV_regs[9][2]~q\,
	datad => \inst3|ALT_INV_regs[13][2]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux45~1_combout\);

\inst3|Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux45~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][2]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][2]~q\,
	datab => \inst3|ALT_INV_regs[6][2]~q\,
	datac => \inst3|ALT_INV_regs[10][2]~q\,
	datad => \inst3|ALT_INV_regs[14][2]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux45~2_combout\);

\inst3|Mux45~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux45~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][2]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][2]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][2]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][2]~q\,
	datab => \inst3|ALT_INV_regs[7][2]~q\,
	datac => \inst3|ALT_INV_regs[11][2]~q\,
	datad => \inst3|ALT_INV_regs[15][2]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux45~3_combout\);

\inst3|Mux45~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux45~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux45~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux45~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux45~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux45~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux45~0_combout\,
	datab => \inst3|ALT_INV_Mux45~1_combout\,
	datac => \inst3|ALT_INV_Mux45~2_combout\,
	datad => \inst3|ALT_INV_Mux45~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux45~4_combout\);

\inst3|regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][1]~q\);

\inst3|regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][1]~q\);

\inst3|regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][1]~q\);

\inst3|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~0_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[6][1]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[4][1]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[2][1]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][1]~q\,
	datab => \inst3|ALT_INV_regs[2][1]~q\,
	datac => \inst3|ALT_INV_regs[4][1]~q\,
	datad => \inst3|ALT_INV_regs[6][1]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux30~0_combout\);

\inst3|regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][1]~q\);

\inst3|regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][1]~q\);

\inst3|regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][1]~q\);

\inst3|regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][1]~q\);

\inst3|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~1_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[14][1]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[12][1]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[10][1]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[8][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][1]~q\,
	datab => \inst3|ALT_INV_regs[10][1]~q\,
	datac => \inst3|ALT_INV_regs[12][1]~q\,
	datad => \inst3|ALT_INV_regs[14][1]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux30~1_combout\);

\inst3|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][1]~q\);

\inst3|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][1]~q\);

\inst3|regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][1]~q\);

\inst3|regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][1]~q\);

\inst3|Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~2_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[7][1]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[5][1]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[3][1]~q\ ) ) 
-- ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[1][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][1]~q\,
	datab => \inst3|ALT_INV_regs[3][1]~q\,
	datac => \inst3|ALT_INV_regs[5][1]~q\,
	datad => \inst3|ALT_INV_regs[7][1]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux30~2_combout\);

\inst3|regs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][1]~q\);

\inst3|regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][1]~q\);

\inst3|regs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][1]~q\);

\inst3|regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][1]~q\);

\inst3|Mux30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~3_combout\ = ( \inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[15][1]~q\ ) ) ) # ( !\inst2|operand\(1) & ( \inst2|operand\(2) & ( \inst3|regs[13][1]~q\ ) ) ) # ( \inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[11][1]~q\ ) 
-- ) ) # ( !\inst2|operand\(1) & ( !\inst2|operand\(2) & ( \inst3|regs[9][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[9][1]~q\,
	datab => \inst3|ALT_INV_regs[11][1]~q\,
	datac => \inst3|ALT_INV_regs[13][1]~q\,
	datad => \inst3|ALT_INV_regs[15][1]~q\,
	datae => \inst2|ALT_INV_operand\(1),
	dataf => \inst2|ALT_INV_operand\(2),
	combout => \inst3|Mux30~3_combout\);

\inst3|Mux30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~4_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux30~3_combout\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|Mux30~2_combout\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( 
-- \inst3|Mux30~1_combout\ ) ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|Mux30~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux30~0_combout\,
	datab => \inst3|ALT_INV_Mux30~1_combout\,
	datac => \inst3|ALT_INV_Mux30~2_combout\,
	datad => \inst3|ALT_INV_Mux30~3_combout\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux30~4_combout\);

\inst3|Mux62~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux62~0_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[3][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[2][1]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[1][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][1]~q\,
	datab => \inst3|ALT_INV_regs[1][1]~q\,
	datac => \inst3|ALT_INV_regs[2][1]~q\,
	datad => \inst3|ALT_INV_regs[3][1]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux62~0_combout\);

\inst3|Mux62~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux62~1_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[7][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[6][1]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[5][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][1]~q\,
	datab => \inst3|ALT_INV_regs[5][1]~q\,
	datac => \inst3|ALT_INV_regs[6][1]~q\,
	datad => \inst3|ALT_INV_regs[7][1]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux62~1_combout\);

\inst3|Mux62~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux62~2_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[11][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[10][1]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[9][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[8][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][1]~q\,
	datab => \inst3|ALT_INV_regs[9][1]~q\,
	datac => \inst3|ALT_INV_regs[10][1]~q\,
	datad => \inst3|ALT_INV_regs[11][1]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux62~2_combout\);

\inst3|Mux62~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux62~3_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[15][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|regs[14][1]~q\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|regs[13][1]~q\ ) ) ) # ( !\inst2|rz\(0) & ( 
-- !\inst2|rz\(1) & ( \inst3|regs[12][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][1]~q\,
	datab => \inst3|ALT_INV_regs[13][1]~q\,
	datac => \inst3|ALT_INV_regs[14][1]~q\,
	datad => \inst3|ALT_INV_regs[15][1]~q\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux62~3_combout\);

\inst3|Mux62~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux62~4_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux62~3_combout\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|Mux62~2_combout\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|Mux62~1_combout\ ) ) ) # ( !\inst2|rz\(2) 
-- & ( !\inst2|rz\(3) & ( \inst3|Mux62~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux62~0_combout\,
	datab => \inst3|ALT_INV_Mux62~1_combout\,
	datac => \inst3|ALT_INV_Mux62~2_combout\,
	datad => \inst3|ALT_INV_Mux62~3_combout\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux62~4_combout\);

\inst3|Mux30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux62~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(1) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux62~4_combout\,
	datab => \inst2|ALT_INV_operand\(1),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux30~5_combout\);

\inst3|Mux30~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~6_combout\ = ( \inst3|Mux30~5_combout\ ) # ( !\inst3|Mux30~5_combout\ & ( (!\inst3|Mux46~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux30~4_combout\)))) # (\inst3|Mux46~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux30~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux46~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux30~4_combout\,
	datae => \inst3|ALT_INV_Mux30~5_combout\,
	combout => \inst3|Mux30~6_combout\);

\inst3|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux30~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][1]~q\);

\inst3|Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux46~0_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[3][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[2][1]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[1][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[0][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][1]~q\,
	datab => \inst3|ALT_INV_regs[1][1]~q\,
	datac => \inst3|ALT_INV_regs[2][1]~q\,
	datad => \inst3|ALT_INV_regs[3][1]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux46~0_combout\);

\inst3|Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux46~1_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[7][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[6][1]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[5][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[4][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][1]~q\,
	datab => \inst3|ALT_INV_regs[5][1]~q\,
	datac => \inst3|ALT_INV_regs[6][1]~q\,
	datad => \inst3|ALT_INV_regs[7][1]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux46~1_combout\);

\inst3|Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux46~2_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[11][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[10][1]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[9][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[8][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[8][1]~q\,
	datab => \inst3|ALT_INV_regs[9][1]~q\,
	datac => \inst3|ALT_INV_regs[10][1]~q\,
	datad => \inst3|ALT_INV_regs[11][1]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux46~2_combout\);

\inst3|Mux46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux46~3_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[15][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|regs[14][1]~q\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|regs[13][1]~q\ ) ) ) # ( !\inst2|rx\(0) & ( 
-- !\inst2|rx\(1) & ( \inst3|regs[12][1]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[12][1]~q\,
	datab => \inst3|ALT_INV_regs[13][1]~q\,
	datac => \inst3|ALT_INV_regs[14][1]~q\,
	datad => \inst3|ALT_INV_regs[15][1]~q\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux46~3_combout\);

\inst3|Mux46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux46~4_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux46~3_combout\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|Mux46~2_combout\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|Mux46~1_combout\ ) ) ) # ( !\inst2|rx\(2) 
-- & ( !\inst2|rx\(3) & ( \inst3|Mux46~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux46~0_combout\,
	datab => \inst3|ALT_INV_Mux46~1_combout\,
	datac => \inst3|ALT_INV_Mux46~2_combout\,
	datad => \inst3|ALT_INV_Mux46~3_combout\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux46~4_combout\);

\inst3|regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][0]~q\);

\inst3|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][0]~q\);

\inst3|regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][0]~q\);

\inst3|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~0_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[9][0]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[1][0]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[8][0]~q\ ) ) 
-- ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][0]~q\,
	datab => \inst3|ALT_INV_regs[8][0]~q\,
	datac => \inst3|ALT_INV_regs[1][0]~q\,
	datad => \inst3|ALT_INV_regs[9][0]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux31~0_combout\);

\inst3|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][0]~q\);

\inst3|regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][0]~q\);

\inst3|regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][0]~q\);

\inst3|regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][0]~q\);

\inst3|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~1_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[13][0]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[5][0]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[12][0]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[4][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[4][0]~q\,
	datab => \inst3|ALT_INV_regs[12][0]~q\,
	datac => \inst3|ALT_INV_regs[5][0]~q\,
	datad => \inst3|ALT_INV_regs[13][0]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux31~1_combout\);

\inst3|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][0]~q\);

\inst3|regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][0]~q\);

\inst3|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][0]~q\);

\inst3|regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][0]~q\);

\inst3|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~2_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[11][0]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[3][0]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[10][0]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][0]~q\,
	datab => \inst3|ALT_INV_regs[10][0]~q\,
	datac => \inst3|ALT_INV_regs[3][0]~q\,
	datad => \inst3|ALT_INV_regs[11][0]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux31~2_combout\);

\inst3|regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][0]~q\);

\inst3|regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][0]~q\);

\inst3|regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][0]~q\);

\inst3|regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][0]~q\);

\inst3|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~3_combout\ = ( \inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[15][0]~q\ ) ) ) # ( !\inst2|operand\(3) & ( \inst2|operand\(0) & ( \inst3|regs[7][0]~q\ ) ) ) # ( \inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[14][0]~q\ ) 
-- ) ) # ( !\inst2|operand\(3) & ( !\inst2|operand\(0) & ( \inst3|regs[6][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[6][0]~q\,
	datab => \inst3|ALT_INV_regs[14][0]~q\,
	datac => \inst3|ALT_INV_regs[7][0]~q\,
	datad => \inst3|ALT_INV_regs[15][0]~q\,
	datae => \inst2|ALT_INV_operand\(3),
	dataf => \inst2|ALT_INV_operand\(0),
	combout => \inst3|Mux31~3_combout\);

\inst3|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux31~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(1) & ( \inst3|Mux31~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux31~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(1) & ( \inst3|Mux31~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux31~0_combout\,
	datab => \inst3|ALT_INV_Mux31~1_combout\,
	datac => \inst3|ALT_INV_Mux31~2_combout\,
	datad => \inst3|ALT_INV_Mux31~3_combout\,
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux31~4_combout\);

\inst3|Mux63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux63~0_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[12][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[8][0]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[4][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][0]~q\,
	datab => \inst3|ALT_INV_regs[4][0]~q\,
	datac => \inst3|ALT_INV_regs[8][0]~q\,
	datad => \inst3|ALT_INV_regs[12][0]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux63~0_combout\);

\inst3|Mux63~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux63~1_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[13][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[9][0]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[5][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][0]~q\,
	datab => \inst3|ALT_INV_regs[5][0]~q\,
	datac => \inst3|ALT_INV_regs[9][0]~q\,
	datad => \inst3|ALT_INV_regs[13][0]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux63~1_combout\);

\inst3|Mux63~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux63~2_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[14][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[10][0]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[6][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][0]~q\,
	datab => \inst3|ALT_INV_regs[6][0]~q\,
	datac => \inst3|ALT_INV_regs[10][0]~q\,
	datad => \inst3|ALT_INV_regs[14][0]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux63~2_combout\);

\inst3|Mux63~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux63~3_combout\ = ( \inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[15][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( \inst2|rz\(3) & ( \inst3|regs[11][0]~q\ ) ) ) # ( \inst2|rz\(2) & ( !\inst2|rz\(3) & ( \inst3|regs[7][0]~q\ ) ) ) # ( !\inst2|rz\(2) & ( 
-- !\inst2|rz\(3) & ( \inst3|regs[3][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][0]~q\,
	datab => \inst3|ALT_INV_regs[7][0]~q\,
	datac => \inst3|ALT_INV_regs[11][0]~q\,
	datad => \inst3|ALT_INV_regs[15][0]~q\,
	datae => \inst2|ALT_INV_rz\(2),
	dataf => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Mux63~3_combout\);

\inst3|Mux63~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux63~4_combout\ = ( \inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux63~3_combout\ ) ) ) # ( !\inst2|rz\(0) & ( \inst2|rz\(1) & ( \inst3|Mux63~2_combout\ ) ) ) # ( \inst2|rz\(0) & ( !\inst2|rz\(1) & ( \inst3|Mux63~1_combout\ ) ) ) # ( !\inst2|rz\(0) 
-- & ( !\inst2|rz\(1) & ( \inst3|Mux63~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux63~0_combout\,
	datab => \inst3|ALT_INV_Mux63~1_combout\,
	datac => \inst3|ALT_INV_Mux63~2_combout\,
	datad => \inst3|ALT_INV_Mux63~3_combout\,
	datae => \inst2|ALT_INV_rz\(0),
	dataf => \inst2|ALT_INV_rz\(1),
	combout => \inst3|Mux63~4_combout\);

\inst3|Mux31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~5_combout\ = ( \rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( (\inst3|Mux63~4_combout\ & (!\rf_input_sel[2]~input_o\ & \rf_input_sel[3]~input_o\)) ) ) ) # ( !\rf_input_sel[1]~input_o\ & ( !\rf_input_sel[0]~input_o\ & ( 
-- (\inst2|operand\(0) & (!\rf_input_sel[2]~input_o\ & !\rf_input_sel[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux63~4_combout\,
	datab => \inst2|ALT_INV_operand\(0),
	datac => \ALT_INV_rf_input_sel[2]~input_o\,
	datad => \ALT_INV_rf_input_sel[3]~input_o\,
	datae => \ALT_INV_rf_input_sel[1]~input_o\,
	dataf => \ALT_INV_rf_input_sel[0]~input_o\,
	combout => \inst3|Mux31~5_combout\);

\inst3|Mux31~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~6_combout\ = ( \inst3|Mux31~5_combout\ ) # ( !\inst3|Mux31~5_combout\ & ( (!\inst3|Mux47~4_combout\ & (\inst3|Mux16~5_combout\ & ((\inst3|Mux31~4_combout\)))) # (\inst3|Mux47~4_combout\ & (((\inst3|Mux16~5_combout\ & \inst3|Mux31~4_combout\)) 
-- # (\inst3|Mux16~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111111111111111111100000101001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux47~4_combout\,
	datab => \inst3|ALT_INV_Mux16~5_combout\,
	datac => \inst3|ALT_INV_Mux16~6_combout\,
	datad => \inst3|ALT_INV_Mux31~4_combout\,
	datae => \inst3|ALT_INV_Mux31~5_combout\,
	combout => \inst3|Mux31~6_combout\);

\inst3|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3|Mux31~6_combout\,
	clrn => \ALT_INV_init~input_o\,
	ena => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[0][0]~q\);

\inst3|Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux47~0_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[12][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[8][0]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[4][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[0][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[0][0]~q\,
	datab => \inst3|ALT_INV_regs[4][0]~q\,
	datac => \inst3|ALT_INV_regs[8][0]~q\,
	datad => \inst3|ALT_INV_regs[12][0]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux47~0_combout\);

\inst3|Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux47~1_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[13][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[9][0]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[5][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[1][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[1][0]~q\,
	datab => \inst3|ALT_INV_regs[5][0]~q\,
	datac => \inst3|ALT_INV_regs[9][0]~q\,
	datad => \inst3|ALT_INV_regs[13][0]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux47~1_combout\);

\inst3|Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux47~2_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[14][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[10][0]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[6][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[2][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[2][0]~q\,
	datab => \inst3|ALT_INV_regs[6][0]~q\,
	datac => \inst3|ALT_INV_regs[10][0]~q\,
	datad => \inst3|ALT_INV_regs[14][0]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux47~2_combout\);

\inst3|Mux47~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux47~3_combout\ = ( \inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[15][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( \inst2|rx\(3) & ( \inst3|regs[11][0]~q\ ) ) ) # ( \inst2|rx\(2) & ( !\inst2|rx\(3) & ( \inst3|regs[7][0]~q\ ) ) ) # ( !\inst2|rx\(2) & ( 
-- !\inst2|rx\(3) & ( \inst3|regs[3][0]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_regs[3][0]~q\,
	datab => \inst3|ALT_INV_regs[7][0]~q\,
	datac => \inst3|ALT_INV_regs[11][0]~q\,
	datad => \inst3|ALT_INV_regs[15][0]~q\,
	datae => \inst2|ALT_INV_rx\(2),
	dataf => \inst2|ALT_INV_rx\(3),
	combout => \inst3|Mux47~3_combout\);

\inst3|Mux47~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux47~4_combout\ = ( \inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux47~3_combout\ ) ) ) # ( !\inst2|rx\(0) & ( \inst2|rx\(1) & ( \inst3|Mux47~2_combout\ ) ) ) # ( \inst2|rx\(0) & ( !\inst2|rx\(1) & ( \inst3|Mux47~1_combout\ ) ) ) # ( !\inst2|rx\(0) 
-- & ( !\inst2|rx\(1) & ( \inst3|Mux47~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux47~0_combout\,
	datab => \inst3|ALT_INV_Mux47~1_combout\,
	datac => \inst3|ALT_INV_Mux47~2_combout\,
	datad => \inst3|ALT_INV_Mux47~3_combout\,
	datae => \inst2|ALT_INV_rx\(0),
	dataf => \inst2|ALT_INV_rx\(1),
	combout => \inst3|Mux47~4_combout\);

ww_address_method(1) <= \address_method[1]~output_o\;

ww_address_method(0) <= \address_method[0]~output_o\;

ww_dm_outdata(15) <= \dm_outdata[15]~output_o\;

ww_dm_outdata(14) <= \dm_outdata[14]~output_o\;

ww_dm_outdata(13) <= \dm_outdata[13]~output_o\;

ww_dm_outdata(12) <= \dm_outdata[12]~output_o\;

ww_dm_outdata(11) <= \dm_outdata[11]~output_o\;

ww_dm_outdata(10) <= \dm_outdata[10]~output_o\;

ww_dm_outdata(9) <= \dm_outdata[9]~output_o\;

ww_dm_outdata(8) <= \dm_outdata[8]~output_o\;

ww_dm_outdata(7) <= \dm_outdata[7]~output_o\;

ww_dm_outdata(6) <= \dm_outdata[6]~output_o\;

ww_dm_outdata(5) <= \dm_outdata[5]~output_o\;

ww_dm_outdata(4) <= \dm_outdata[4]~output_o\;

ww_dm_outdata(3) <= \dm_outdata[3]~output_o\;

ww_dm_outdata(2) <= \dm_outdata[2]~output_o\;

ww_dm_outdata(1) <= \dm_outdata[1]~output_o\;

ww_dm_outdata(0) <= \dm_outdata[0]~output_o\;

ww_opcode(5) <= \opcode[5]~output_o\;

ww_opcode(4) <= \opcode[4]~output_o\;

ww_opcode(3) <= \opcode[3]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(0) <= \opcode[0]~output_o\;

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

ww_pm_outdata(15) <= \pm_outdata[15]~output_o\;

ww_pm_outdata(14) <= \pm_outdata[14]~output_o\;

ww_pm_outdata(13) <= \pm_outdata[13]~output_o\;

ww_pm_outdata(12) <= \pm_outdata[12]~output_o\;

ww_pm_outdata(11) <= \pm_outdata[11]~output_o\;

ww_pm_outdata(10) <= \pm_outdata[10]~output_o\;

ww_pm_outdata(9) <= \pm_outdata[9]~output_o\;

ww_pm_outdata(8) <= \pm_outdata[8]~output_o\;

ww_pm_outdata(7) <= \pm_outdata[7]~output_o\;

ww_pm_outdata(6) <= \pm_outdata[6]~output_o\;

ww_pm_outdata(5) <= \pm_outdata[5]~output_o\;

ww_pm_outdata(4) <= \pm_outdata[4]~output_o\;

ww_pm_outdata(3) <= \pm_outdata[3]~output_o\;

ww_pm_outdata(2) <= \pm_outdata[2]~output_o\;

ww_pm_outdata(1) <= \pm_outdata[1]~output_o\;

ww_pm_outdata(0) <= \pm_outdata[0]~output_o\;

ww_rxData(15) <= \rxData[15]~output_o\;

ww_rxData(14) <= \rxData[14]~output_o\;

ww_rxData(13) <= \rxData[13]~output_o\;

ww_rxData(12) <= \rxData[12]~output_o\;

ww_rxData(11) <= \rxData[11]~output_o\;

ww_rxData(10) <= \rxData[10]~output_o\;

ww_rxData(9) <= \rxData[9]~output_o\;

ww_rxData(8) <= \rxData[8]~output_o\;

ww_rxData(7) <= \rxData[7]~output_o\;

ww_rxData(6) <= \rxData[6]~output_o\;

ww_rxData(5) <= \rxData[5]~output_o\;

ww_rxData(4) <= \rxData[4]~output_o\;

ww_rxData(3) <= \rxData[3]~output_o\;

ww_rxData(2) <= \rxData[2]~output_o\;

ww_rxData(1) <= \rxData[1]~output_o\;

ww_rxData(0) <= \rxData[0]~output_o\;

ww_rzData(15) <= \rzData[15]~output_o\;

ww_rzData(14) <= \rzData[14]~output_o\;

ww_rzData(13) <= \rzData[13]~output_o\;

ww_rzData(12) <= \rzData[12]~output_o\;

ww_rzData(11) <= \rzData[11]~output_o\;

ww_rzData(10) <= \rzData[10]~output_o\;

ww_rzData(9) <= \rzData[9]~output_o\;

ww_rzData(8) <= \rzData[8]~output_o\;

ww_rzData(7) <= \rzData[7]~output_o\;

ww_rzData(6) <= \rzData[6]~output_o\;

ww_rzData(5) <= \rzData[5]~output_o\;

ww_rzData(4) <= \rzData[4]~output_o\;

ww_rzData(3) <= \rzData[3]~output_o\;

ww_rzData(2) <= \rzData[2]~output_o\;

ww_rzData(1) <= \rzData[1]~output_o\;

ww_rzData(0) <= \rzData[0]~output_o\;
END structure;


