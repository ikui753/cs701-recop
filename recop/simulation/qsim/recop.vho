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

-- DATE "05/12/2024 15:53:14"

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
	z_flag : OUT std_logic;
	clk : OUT std_logic;
	clkIn : IN std_logic;
	reset : IN std_logic;
	rx_recv : OUT std_logic;
	rf_init : OUT std_logic;
	ld_r : OUT std_logic;
	pm_outdata : OUT std_logic_vector(15 DOWNTO 0);
	dm_wr : IN std_logic;
	increment : OUT std_logic_vector(2 DOWNTO 0);
	rxData : OUT std_logic_vector(15 DOWNTO 0);
	rzData : OUT std_logic_vector(15 DOWNTO 0);
	dm_indata : IN std_logic_vector(15 DOWNTO 0);
	rf_sel : OUT std_logic_vector(3 DOWNTO 0);
	sip_r : OUT std_logic_vector(15 DOWNTO 0);
	dpcr_lsb_sel : IN std_logic;
	dpcr_wr : IN std_logic;
	svop_wr : IN std_logic;
	sop_wr : IN std_logic;
	sip : IN std_logic_vector(15 DOWNTO 0);
	rz_recv : OUT std_logic;
	opcode : OUT std_logic_vector(5 DOWNTO 0);
	alu_opsel : OUT std_logic_vector(5 DOWNTO 0);
	alu_output : OUT std_logic_vector(15 DOWNTO 0);
	am : OUT std_logic_vector(1 DOWNTO 0);
	dm_outdata : OUT std_logic_vector(15 DOWNTO 0);
	dpcr : OUT std_logic_vector(31 DOWNTO 0);
	dprr : OUT std_logic_vector(1 DOWNTO 0);
	out_count : OUT std_logic_vector(15 DOWNTO 0);
	sop : OUT std_logic_vector(15 DOWNTO 0);
	svop : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_z_flag : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx_recv : std_logic;
SIGNAL ww_rf_init : std_logic;
SIGNAL ww_ld_r : std_logic;
SIGNAL ww_pm_outdata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dm_wr : std_logic;
SIGNAL ww_increment : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rxData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rzData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dm_indata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rf_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sip_r : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dpcr_lsb_sel : std_logic;
SIGNAL ww_dpcr_wr : std_logic;
SIGNAL ww_svop_wr : std_logic;
SIGNAL ww_sop_wr : std_logic;
SIGNAL ww_sip : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rz_recv : std_logic;
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_alu_opsel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_alu_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_am : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dm_outdata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dpcr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dprr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out_count : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sop : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_svop : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \inst3|rz_recv~0_combout\ : std_logic;
SIGNAL \inst3|rz_recv~q\ : std_logic;
SIGNAL \inst7|ld_r~2_combout\ : std_logic;
SIGNAL \dm_wr~input_o\ : std_logic;
SIGNAL \dm_indata[13]~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|Add0~57_sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|out_count[11]~0_combout\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~53_sumout\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \dm_indata[12]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \dm_indata[11]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \dm_indata[10]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \dm_indata[9]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \dm_indata[8]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst7|ld_r~0_combout\ : std_logic;
SIGNAL \inst7|ld_r~1_combout\ : std_logic;
SIGNAL \inst7|ld_r~q\ : std_logic;
SIGNAL \dm_indata[15]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \dm_indata[14]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \dm_indata[7]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \dm_indata[6]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \dm_indata[5]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \dm_indata[4]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \dm_indata[3]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \dm_indata[2]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \dm_indata[1]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \dm_indata[0]~input_o\ : std_logic;
SIGNAL \inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst7|rf_sel[3]~0_combout\ : std_logic;
SIGNAL \inst7|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \inst3|Decoder0~1_combout\ : std_logic;
SIGNAL \inst3|regs[1][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~2_combout\ : std_logic;
SIGNAL \inst3|regs[2][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~3_combout\ : std_logic;
SIGNAL \inst3|regs[3][15]~q\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \inst3|Mux16~0_combout\ : std_logic;
SIGNAL \inst3|Decoder0~4_combout\ : std_logic;
SIGNAL \inst3|regs[4][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~5_combout\ : std_logic;
SIGNAL \inst3|regs[5][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~6_combout\ : std_logic;
SIGNAL \inst3|regs[6][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~7_combout\ : std_logic;
SIGNAL \inst3|regs[7][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~1_combout\ : std_logic;
SIGNAL \inst3|Decoder0~8_combout\ : std_logic;
SIGNAL \inst3|regs[8][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~9_combout\ : std_logic;
SIGNAL \inst3|regs[9][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~10_combout\ : std_logic;
SIGNAL \inst3|regs[10][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~11_combout\ : std_logic;
SIGNAL \inst3|regs[11][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~2_combout\ : std_logic;
SIGNAL \inst3|Decoder0~12_combout\ : std_logic;
SIGNAL \inst3|regs[12][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~13_combout\ : std_logic;
SIGNAL \inst3|regs[13][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~14_combout\ : std_logic;
SIGNAL \inst3|regs[14][15]~q\ : std_logic;
SIGNAL \inst3|Decoder0~15_combout\ : std_logic;
SIGNAL \inst3|regs[15][15]~q\ : std_logic;
SIGNAL \inst3|Mux16~3_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \inst3|Mux16~4_combout\ : std_logic;
SIGNAL \inst3|Mux16~5_combout\ : std_logic;
SIGNAL \inst3|Decoder0~0_combout\ : std_logic;
SIGNAL \inst3|regs[0][15]~q\ : std_logic;
SIGNAL \inst3|Mux32~0_combout\ : std_logic;
SIGNAL \inst3|Mux32~1_combout\ : std_logic;
SIGNAL \inst3|Mux32~2_combout\ : std_logic;
SIGNAL \inst3|Mux32~3_combout\ : std_logic;
SIGNAL \inst3|Mux32~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][14]~q\ : std_logic;
SIGNAL \inst3|regs[8][14]~q\ : std_logic;
SIGNAL \inst3|regs[12][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][14]~q\ : std_logic;
SIGNAL \inst3|regs[5][14]~q\ : std_logic;
SIGNAL \inst3|regs[9][14]~q\ : std_logic;
SIGNAL \inst3|regs[13][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][14]~q\ : std_logic;
SIGNAL \inst3|regs[6][14]~q\ : std_logic;
SIGNAL \inst3|regs[10][14]~q\ : std_logic;
SIGNAL \inst3|regs[14][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][14]~q\ : std_logic;
SIGNAL \inst3|regs[7][14]~q\ : std_logic;
SIGNAL \inst3|regs[11][14]~q\ : std_logic;
SIGNAL \inst3|regs[15][14]~q\ : std_logic;
SIGNAL \inst3|Mux17~3_combout\ : std_logic;
SIGNAL \inst3|Mux17~4_combout\ : std_logic;
SIGNAL \inst3|Mux17~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][14]~q\ : std_logic;
SIGNAL \inst3|Mux33~0_combout\ : std_logic;
SIGNAL \inst3|Mux33~1_combout\ : std_logic;
SIGNAL \inst3|Mux33~2_combout\ : std_logic;
SIGNAL \inst3|Mux33~3_combout\ : std_logic;
SIGNAL \inst3|Mux33~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \inst3|regs[1][13]~q\ : std_logic;
SIGNAL \inst3|regs[2][13]~q\ : std_logic;
SIGNAL \inst3|regs[3][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][13]~q\ : std_logic;
SIGNAL \inst3|regs[5][13]~q\ : std_logic;
SIGNAL \inst3|regs[6][13]~q\ : std_logic;
SIGNAL \inst3|regs[7][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][13]~q\ : std_logic;
SIGNAL \inst3|regs[9][13]~q\ : std_logic;
SIGNAL \inst3|regs[10][13]~q\ : std_logic;
SIGNAL \inst3|regs[11][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][13]~q\ : std_logic;
SIGNAL \inst3|regs[13][13]~q\ : std_logic;
SIGNAL \inst3|regs[14][13]~q\ : std_logic;
SIGNAL \inst3|regs[15][13]~q\ : std_logic;
SIGNAL \inst3|Mux18~3_combout\ : std_logic;
SIGNAL \inst3|Mux18~4_combout\ : std_logic;
SIGNAL \inst3|Mux18~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][13]~q\ : std_logic;
SIGNAL \inst3|Mux34~0_combout\ : std_logic;
SIGNAL \inst3|Mux34~1_combout\ : std_logic;
SIGNAL \inst3|Mux34~2_combout\ : std_logic;
SIGNAL \inst3|Mux34~3_combout\ : std_logic;
SIGNAL \inst3|Mux34~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][12]~q\ : std_logic;
SIGNAL \inst3|regs[8][12]~q\ : std_logic;
SIGNAL \inst3|regs[12][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][12]~q\ : std_logic;
SIGNAL \inst3|regs[5][12]~q\ : std_logic;
SIGNAL \inst3|regs[9][12]~q\ : std_logic;
SIGNAL \inst3|regs[13][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][12]~q\ : std_logic;
SIGNAL \inst3|regs[6][12]~q\ : std_logic;
SIGNAL \inst3|regs[10][12]~q\ : std_logic;
SIGNAL \inst3|regs[14][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][12]~q\ : std_logic;
SIGNAL \inst3|regs[7][12]~q\ : std_logic;
SIGNAL \inst3|regs[11][12]~q\ : std_logic;
SIGNAL \inst3|regs[15][12]~q\ : std_logic;
SIGNAL \inst3|Mux19~3_combout\ : std_logic;
SIGNAL \inst3|Mux19~4_combout\ : std_logic;
SIGNAL \inst3|Mux19~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][12]~q\ : std_logic;
SIGNAL \inst3|Mux35~0_combout\ : std_logic;
SIGNAL \inst3|Mux35~1_combout\ : std_logic;
SIGNAL \inst3|Mux35~2_combout\ : std_logic;
SIGNAL \inst3|Mux35~3_combout\ : std_logic;
SIGNAL \inst3|Mux35~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \inst3|regs[1][11]~q\ : std_logic;
SIGNAL \inst3|regs[2][11]~q\ : std_logic;
SIGNAL \inst3|regs[3][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][11]~q\ : std_logic;
SIGNAL \inst3|regs[5][11]~q\ : std_logic;
SIGNAL \inst3|regs[6][11]~q\ : std_logic;
SIGNAL \inst3|regs[7][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][11]~q\ : std_logic;
SIGNAL \inst3|regs[9][11]~q\ : std_logic;
SIGNAL \inst3|regs[10][11]~q\ : std_logic;
SIGNAL \inst3|regs[11][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][11]~q\ : std_logic;
SIGNAL \inst3|regs[13][11]~q\ : std_logic;
SIGNAL \inst3|regs[14][11]~q\ : std_logic;
SIGNAL \inst3|regs[15][11]~q\ : std_logic;
SIGNAL \inst3|Mux20~3_combout\ : std_logic;
SIGNAL \inst3|Mux20~4_combout\ : std_logic;
SIGNAL \inst3|Mux20~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][11]~q\ : std_logic;
SIGNAL \inst3|Mux36~0_combout\ : std_logic;
SIGNAL \inst3|Mux36~1_combout\ : std_logic;
SIGNAL \inst3|Mux36~2_combout\ : std_logic;
SIGNAL \inst3|Mux36~3_combout\ : std_logic;
SIGNAL \inst3|Mux36~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][10]~q\ : std_logic;
SIGNAL \inst3|regs[8][10]~q\ : std_logic;
SIGNAL \inst3|regs[12][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][10]~q\ : std_logic;
SIGNAL \inst3|regs[5][10]~q\ : std_logic;
SIGNAL \inst3|regs[9][10]~q\ : std_logic;
SIGNAL \inst3|regs[13][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][10]~q\ : std_logic;
SIGNAL \inst3|regs[6][10]~q\ : std_logic;
SIGNAL \inst3|regs[10][10]~q\ : std_logic;
SIGNAL \inst3|regs[14][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][10]~q\ : std_logic;
SIGNAL \inst3|regs[7][10]~q\ : std_logic;
SIGNAL \inst3|regs[11][10]~q\ : std_logic;
SIGNAL \inst3|regs[15][10]~q\ : std_logic;
SIGNAL \inst3|Mux21~3_combout\ : std_logic;
SIGNAL \inst3|Mux21~4_combout\ : std_logic;
SIGNAL \inst3|Mux21~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][10]~q\ : std_logic;
SIGNAL \inst3|Mux37~0_combout\ : std_logic;
SIGNAL \inst3|Mux37~1_combout\ : std_logic;
SIGNAL \inst3|Mux37~2_combout\ : std_logic;
SIGNAL \inst3|Mux37~3_combout\ : std_logic;
SIGNAL \inst3|Mux37~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \inst3|regs[1][9]~q\ : std_logic;
SIGNAL \inst3|regs[2][9]~q\ : std_logic;
SIGNAL \inst3|regs[3][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][9]~q\ : std_logic;
SIGNAL \inst3|regs[5][9]~q\ : std_logic;
SIGNAL \inst3|regs[6][9]~q\ : std_logic;
SIGNAL \inst3|regs[7][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][9]~q\ : std_logic;
SIGNAL \inst3|regs[9][9]~q\ : std_logic;
SIGNAL \inst3|regs[10][9]~q\ : std_logic;
SIGNAL \inst3|regs[11][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][9]~q\ : std_logic;
SIGNAL \inst3|regs[13][9]~q\ : std_logic;
SIGNAL \inst3|regs[14][9]~q\ : std_logic;
SIGNAL \inst3|regs[15][9]~q\ : std_logic;
SIGNAL \inst3|Mux22~3_combout\ : std_logic;
SIGNAL \inst3|Mux22~4_combout\ : std_logic;
SIGNAL \inst3|Mux22~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][9]~q\ : std_logic;
SIGNAL \inst3|Mux38~0_combout\ : std_logic;
SIGNAL \inst3|Mux38~1_combout\ : std_logic;
SIGNAL \inst3|Mux38~2_combout\ : std_logic;
SIGNAL \inst3|Mux38~3_combout\ : std_logic;
SIGNAL \inst3|Mux38~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][8]~q\ : std_logic;
SIGNAL \inst3|regs[8][8]~q\ : std_logic;
SIGNAL \inst3|regs[12][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][8]~q\ : std_logic;
SIGNAL \inst3|regs[5][8]~q\ : std_logic;
SIGNAL \inst3|regs[9][8]~q\ : std_logic;
SIGNAL \inst3|regs[13][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][8]~q\ : std_logic;
SIGNAL \inst3|regs[6][8]~q\ : std_logic;
SIGNAL \inst3|regs[10][8]~q\ : std_logic;
SIGNAL \inst3|regs[14][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][8]~q\ : std_logic;
SIGNAL \inst3|regs[7][8]~q\ : std_logic;
SIGNAL \inst3|regs[11][8]~q\ : std_logic;
SIGNAL \inst3|regs[15][8]~q\ : std_logic;
SIGNAL \inst3|Mux23~3_combout\ : std_logic;
SIGNAL \inst3|Mux23~4_combout\ : std_logic;
SIGNAL \inst3|Mux23~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][8]~q\ : std_logic;
SIGNAL \inst3|Mux39~0_combout\ : std_logic;
SIGNAL \inst3|Mux39~1_combout\ : std_logic;
SIGNAL \inst3|Mux39~2_combout\ : std_logic;
SIGNAL \inst3|Mux39~3_combout\ : std_logic;
SIGNAL \inst3|Mux39~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \inst3|regs[1][7]~q\ : std_logic;
SIGNAL \inst3|regs[2][7]~q\ : std_logic;
SIGNAL \inst3|regs[3][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][7]~q\ : std_logic;
SIGNAL \inst3|regs[5][7]~q\ : std_logic;
SIGNAL \inst3|regs[6][7]~q\ : std_logic;
SIGNAL \inst3|regs[7][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][7]~q\ : std_logic;
SIGNAL \inst3|regs[9][7]~q\ : std_logic;
SIGNAL \inst3|regs[10][7]~q\ : std_logic;
SIGNAL \inst3|regs[11][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][7]~q\ : std_logic;
SIGNAL \inst3|regs[13][7]~q\ : std_logic;
SIGNAL \inst3|regs[14][7]~q\ : std_logic;
SIGNAL \inst3|regs[15][7]~q\ : std_logic;
SIGNAL \inst3|Mux24~3_combout\ : std_logic;
SIGNAL \inst3|Mux24~4_combout\ : std_logic;
SIGNAL \inst3|Mux24~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][7]~q\ : std_logic;
SIGNAL \inst3|Mux40~0_combout\ : std_logic;
SIGNAL \inst3|Mux40~1_combout\ : std_logic;
SIGNAL \inst3|Mux40~2_combout\ : std_logic;
SIGNAL \inst3|Mux40~3_combout\ : std_logic;
SIGNAL \inst3|Mux40~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][6]~q\ : std_logic;
SIGNAL \inst3|regs[8][6]~q\ : std_logic;
SIGNAL \inst3|regs[12][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][6]~q\ : std_logic;
SIGNAL \inst3|regs[5][6]~q\ : std_logic;
SIGNAL \inst3|regs[9][6]~q\ : std_logic;
SIGNAL \inst3|regs[13][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][6]~q\ : std_logic;
SIGNAL \inst3|regs[6][6]~q\ : std_logic;
SIGNAL \inst3|regs[10][6]~q\ : std_logic;
SIGNAL \inst3|regs[14][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][6]~q\ : std_logic;
SIGNAL \inst3|regs[7][6]~q\ : std_logic;
SIGNAL \inst3|regs[11][6]~q\ : std_logic;
SIGNAL \inst3|regs[15][6]~q\ : std_logic;
SIGNAL \inst3|Mux25~3_combout\ : std_logic;
SIGNAL \inst3|Mux25~4_combout\ : std_logic;
SIGNAL \inst3|Mux25~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][6]~q\ : std_logic;
SIGNAL \inst3|Mux41~0_combout\ : std_logic;
SIGNAL \inst3|Mux41~1_combout\ : std_logic;
SIGNAL \inst3|Mux41~2_combout\ : std_logic;
SIGNAL \inst3|Mux41~3_combout\ : std_logic;
SIGNAL \inst3|Mux41~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \inst3|regs[1][5]~q\ : std_logic;
SIGNAL \inst3|regs[2][5]~q\ : std_logic;
SIGNAL \inst3|regs[3][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][5]~q\ : std_logic;
SIGNAL \inst3|regs[5][5]~q\ : std_logic;
SIGNAL \inst3|regs[6][5]~q\ : std_logic;
SIGNAL \inst3|regs[7][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][5]~q\ : std_logic;
SIGNAL \inst3|regs[9][5]~q\ : std_logic;
SIGNAL \inst3|regs[10][5]~q\ : std_logic;
SIGNAL \inst3|regs[11][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][5]~q\ : std_logic;
SIGNAL \inst3|regs[13][5]~q\ : std_logic;
SIGNAL \inst3|regs[14][5]~q\ : std_logic;
SIGNAL \inst3|regs[15][5]~q\ : std_logic;
SIGNAL \inst3|Mux26~3_combout\ : std_logic;
SIGNAL \inst3|Mux26~4_combout\ : std_logic;
SIGNAL \inst3|Mux26~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][5]~q\ : std_logic;
SIGNAL \inst3|Mux42~0_combout\ : std_logic;
SIGNAL \inst3|Mux42~1_combout\ : std_logic;
SIGNAL \inst3|Mux42~2_combout\ : std_logic;
SIGNAL \inst3|Mux42~3_combout\ : std_logic;
SIGNAL \inst3|Mux42~4_combout\ : std_logic;
SIGNAL \inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \inst3|regs[4][4]~q\ : std_logic;
SIGNAL \inst3|regs[8][4]~q\ : std_logic;
SIGNAL \inst3|regs[12][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][4]~q\ : std_logic;
SIGNAL \inst3|regs[5][4]~q\ : std_logic;
SIGNAL \inst3|regs[9][4]~q\ : std_logic;
SIGNAL \inst3|regs[13][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][4]~q\ : std_logic;
SIGNAL \inst3|regs[6][4]~q\ : std_logic;
SIGNAL \inst3|regs[10][4]~q\ : std_logic;
SIGNAL \inst3|regs[14][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][4]~q\ : std_logic;
SIGNAL \inst3|regs[7][4]~q\ : std_logic;
SIGNAL \inst3|regs[11][4]~q\ : std_logic;
SIGNAL \inst3|regs[15][4]~q\ : std_logic;
SIGNAL \inst3|Mux27~3_combout\ : std_logic;
SIGNAL \inst3|Mux27~4_combout\ : std_logic;
SIGNAL \inst3|Mux27~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][4]~q\ : std_logic;
SIGNAL \inst3|Mux43~0_combout\ : std_logic;
SIGNAL \inst3|Mux43~1_combout\ : std_logic;
SIGNAL \inst3|Mux43~2_combout\ : std_logic;
SIGNAL \inst3|Mux43~3_combout\ : std_logic;
SIGNAL \inst3|Mux43~4_combout\ : std_logic;
SIGNAL \inst3|regs[1][3]~q\ : std_logic;
SIGNAL \inst3|regs[2][3]~q\ : std_logic;
SIGNAL \inst3|regs[3][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][3]~q\ : std_logic;
SIGNAL \inst3|regs[5][3]~q\ : std_logic;
SIGNAL \inst3|regs[6][3]~q\ : std_logic;
SIGNAL \inst3|regs[7][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][3]~q\ : std_logic;
SIGNAL \inst3|regs[9][3]~q\ : std_logic;
SIGNAL \inst3|regs[10][3]~q\ : std_logic;
SIGNAL \inst3|regs[11][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][3]~q\ : std_logic;
SIGNAL \inst3|regs[13][3]~q\ : std_logic;
SIGNAL \inst3|regs[14][3]~q\ : std_logic;
SIGNAL \inst3|regs[15][3]~q\ : std_logic;
SIGNAL \inst3|Mux28~3_combout\ : std_logic;
SIGNAL \inst3|Mux28~4_combout\ : std_logic;
SIGNAL \inst3|Mux28~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][3]~q\ : std_logic;
SIGNAL \inst3|Mux44~0_combout\ : std_logic;
SIGNAL \inst3|Mux44~1_combout\ : std_logic;
SIGNAL \inst3|Mux44~2_combout\ : std_logic;
SIGNAL \inst3|Mux44~3_combout\ : std_logic;
SIGNAL \inst3|Mux44~4_combout\ : std_logic;
SIGNAL \inst3|regs[4][2]~q\ : std_logic;
SIGNAL \inst3|regs[8][2]~q\ : std_logic;
SIGNAL \inst3|regs[12][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][2]~q\ : std_logic;
SIGNAL \inst3|regs[5][2]~q\ : std_logic;
SIGNAL \inst3|regs[9][2]~q\ : std_logic;
SIGNAL \inst3|regs[13][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][2]~q\ : std_logic;
SIGNAL \inst3|regs[6][2]~q\ : std_logic;
SIGNAL \inst3|regs[10][2]~q\ : std_logic;
SIGNAL \inst3|regs[14][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][2]~q\ : std_logic;
SIGNAL \inst3|regs[7][2]~q\ : std_logic;
SIGNAL \inst3|regs[11][2]~q\ : std_logic;
SIGNAL \inst3|regs[15][2]~q\ : std_logic;
SIGNAL \inst3|Mux29~3_combout\ : std_logic;
SIGNAL \inst3|Mux29~4_combout\ : std_logic;
SIGNAL \inst3|Mux29~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][2]~q\ : std_logic;
SIGNAL \inst3|Mux45~0_combout\ : std_logic;
SIGNAL \inst3|Mux45~1_combout\ : std_logic;
SIGNAL \inst3|Mux45~2_combout\ : std_logic;
SIGNAL \inst3|Mux45~3_combout\ : std_logic;
SIGNAL \inst3|Mux45~4_combout\ : std_logic;
SIGNAL \inst3|regs[1][1]~q\ : std_logic;
SIGNAL \inst3|regs[2][1]~q\ : std_logic;
SIGNAL \inst3|regs[3][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~0_combout\ : std_logic;
SIGNAL \inst3|regs[4][1]~q\ : std_logic;
SIGNAL \inst3|regs[5][1]~q\ : std_logic;
SIGNAL \inst3|regs[6][1]~q\ : std_logic;
SIGNAL \inst3|regs[7][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~1_combout\ : std_logic;
SIGNAL \inst3|regs[8][1]~q\ : std_logic;
SIGNAL \inst3|regs[9][1]~q\ : std_logic;
SIGNAL \inst3|regs[10][1]~q\ : std_logic;
SIGNAL \inst3|regs[11][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~2_combout\ : std_logic;
SIGNAL \inst3|regs[12][1]~q\ : std_logic;
SIGNAL \inst3|regs[13][1]~q\ : std_logic;
SIGNAL \inst3|regs[14][1]~q\ : std_logic;
SIGNAL \inst3|regs[15][1]~q\ : std_logic;
SIGNAL \inst3|Mux30~3_combout\ : std_logic;
SIGNAL \inst3|Mux30~4_combout\ : std_logic;
SIGNAL \inst3|Mux30~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][1]~q\ : std_logic;
SIGNAL \inst3|Mux46~0_combout\ : std_logic;
SIGNAL \inst3|Mux46~1_combout\ : std_logic;
SIGNAL \inst3|Mux46~2_combout\ : std_logic;
SIGNAL \inst3|Mux46~3_combout\ : std_logic;
SIGNAL \inst3|Mux46~4_combout\ : std_logic;
SIGNAL \inst3|regs[4][0]~q\ : std_logic;
SIGNAL \inst3|regs[8][0]~q\ : std_logic;
SIGNAL \inst3|regs[12][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~0_combout\ : std_logic;
SIGNAL \inst3|regs[1][0]~q\ : std_logic;
SIGNAL \inst3|regs[5][0]~q\ : std_logic;
SIGNAL \inst3|regs[9][0]~q\ : std_logic;
SIGNAL \inst3|regs[13][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~1_combout\ : std_logic;
SIGNAL \inst3|regs[2][0]~q\ : std_logic;
SIGNAL \inst3|regs[6][0]~q\ : std_logic;
SIGNAL \inst3|regs[10][0]~q\ : std_logic;
SIGNAL \inst3|regs[14][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~2_combout\ : std_logic;
SIGNAL \inst3|regs[3][0]~q\ : std_logic;
SIGNAL \inst3|regs[7][0]~q\ : std_logic;
SIGNAL \inst3|regs[11][0]~q\ : std_logic;
SIGNAL \inst3|regs[15][0]~q\ : std_logic;
SIGNAL \inst3|Mux31~3_combout\ : std_logic;
SIGNAL \inst3|Mux31~4_combout\ : std_logic;
SIGNAL \inst3|Mux31~5_combout\ : std_logic;
SIGNAL \inst3|regs[0][0]~q\ : std_logic;
SIGNAL \inst3|Mux47~0_combout\ : std_logic;
SIGNAL \inst3|Mux47~1_combout\ : std_logic;
SIGNAL \inst3|Mux47~2_combout\ : std_logic;
SIGNAL \inst3|Mux47~3_combout\ : std_logic;
SIGNAL \inst3|Mux47~4_combout\ : std_logic;
SIGNAL \inst3|Mux48~0_combout\ : std_logic;
SIGNAL \inst3|Mux48~1_combout\ : std_logic;
SIGNAL \inst3|Mux48~2_combout\ : std_logic;
SIGNAL \inst3|Mux48~3_combout\ : std_logic;
SIGNAL \inst3|Mux48~4_combout\ : std_logic;
SIGNAL \inst3|Mux49~0_combout\ : std_logic;
SIGNAL \inst3|Mux49~1_combout\ : std_logic;
SIGNAL \inst3|Mux49~2_combout\ : std_logic;
SIGNAL \inst3|Mux49~3_combout\ : std_logic;
SIGNAL \inst3|Mux49~4_combout\ : std_logic;
SIGNAL \inst3|Mux50~0_combout\ : std_logic;
SIGNAL \inst3|Mux50~1_combout\ : std_logic;
SIGNAL \inst3|Mux50~2_combout\ : std_logic;
SIGNAL \inst3|Mux50~3_combout\ : std_logic;
SIGNAL \inst3|Mux50~4_combout\ : std_logic;
SIGNAL \inst3|Mux51~0_combout\ : std_logic;
SIGNAL \inst3|Mux51~1_combout\ : std_logic;
SIGNAL \inst3|Mux51~2_combout\ : std_logic;
SIGNAL \inst3|Mux51~3_combout\ : std_logic;
SIGNAL \inst3|Mux51~4_combout\ : std_logic;
SIGNAL \inst3|Mux52~0_combout\ : std_logic;
SIGNAL \inst3|Mux52~1_combout\ : std_logic;
SIGNAL \inst3|Mux52~2_combout\ : std_logic;
SIGNAL \inst3|Mux52~3_combout\ : std_logic;
SIGNAL \inst3|Mux52~4_combout\ : std_logic;
SIGNAL \inst3|Mux53~0_combout\ : std_logic;
SIGNAL \inst3|Mux53~1_combout\ : std_logic;
SIGNAL \inst3|Mux53~2_combout\ : std_logic;
SIGNAL \inst3|Mux53~3_combout\ : std_logic;
SIGNAL \inst3|Mux53~4_combout\ : std_logic;
SIGNAL \inst3|Mux54~0_combout\ : std_logic;
SIGNAL \inst3|Mux54~1_combout\ : std_logic;
SIGNAL \inst3|Mux54~2_combout\ : std_logic;
SIGNAL \inst3|Mux54~3_combout\ : std_logic;
SIGNAL \inst3|Mux54~4_combout\ : std_logic;
SIGNAL \inst3|Mux55~0_combout\ : std_logic;
SIGNAL \inst3|Mux55~1_combout\ : std_logic;
SIGNAL \inst3|Mux55~2_combout\ : std_logic;
SIGNAL \inst3|Mux55~3_combout\ : std_logic;
SIGNAL \inst3|Mux55~4_combout\ : std_logic;
SIGNAL \inst3|Mux56~0_combout\ : std_logic;
SIGNAL \inst3|Mux56~1_combout\ : std_logic;
SIGNAL \inst3|Mux56~2_combout\ : std_logic;
SIGNAL \inst3|Mux56~3_combout\ : std_logic;
SIGNAL \inst3|Mux56~4_combout\ : std_logic;
SIGNAL \inst3|Mux57~0_combout\ : std_logic;
SIGNAL \inst3|Mux57~1_combout\ : std_logic;
SIGNAL \inst3|Mux57~2_combout\ : std_logic;
SIGNAL \inst3|Mux57~3_combout\ : std_logic;
SIGNAL \inst3|Mux57~4_combout\ : std_logic;
SIGNAL \inst3|Mux58~0_combout\ : std_logic;
SIGNAL \inst3|Mux58~1_combout\ : std_logic;
SIGNAL \inst3|Mux58~2_combout\ : std_logic;
SIGNAL \inst3|Mux58~3_combout\ : std_logic;
SIGNAL \inst3|Mux58~4_combout\ : std_logic;
SIGNAL \inst3|Mux59~0_combout\ : std_logic;
SIGNAL \inst3|Mux59~1_combout\ : std_logic;
SIGNAL \inst3|Mux59~2_combout\ : std_logic;
SIGNAL \inst3|Mux59~3_combout\ : std_logic;
SIGNAL \inst3|Mux59~4_combout\ : std_logic;
SIGNAL \inst3|Mux60~0_combout\ : std_logic;
SIGNAL \inst3|Mux60~1_combout\ : std_logic;
SIGNAL \inst3|Mux60~2_combout\ : std_logic;
SIGNAL \inst3|Mux60~3_combout\ : std_logic;
SIGNAL \inst3|Mux60~4_combout\ : std_logic;
SIGNAL \inst3|Mux61~0_combout\ : std_logic;
SIGNAL \inst3|Mux61~1_combout\ : std_logic;
SIGNAL \inst3|Mux61~2_combout\ : std_logic;
SIGNAL \inst3|Mux61~3_combout\ : std_logic;
SIGNAL \inst3|Mux61~4_combout\ : std_logic;
SIGNAL \inst3|Mux62~0_combout\ : std_logic;
SIGNAL \inst3|Mux62~1_combout\ : std_logic;
SIGNAL \inst3|Mux62~2_combout\ : std_logic;
SIGNAL \inst3|Mux62~3_combout\ : std_logic;
SIGNAL \inst3|Mux62~4_combout\ : std_logic;
SIGNAL \inst3|Mux63~0_combout\ : std_logic;
SIGNAL \inst3|Mux63~1_combout\ : std_logic;
SIGNAL \inst3|Mux63~2_combout\ : std_logic;
SIGNAL \inst3|Mux63~3_combout\ : std_logic;
SIGNAL \inst3|Mux63~4_combout\ : std_logic;
SIGNAL \sip[15]~input_o\ : std_logic;
SIGNAL \sip[14]~input_o\ : std_logic;
SIGNAL \sip[13]~input_o\ : std_logic;
SIGNAL \sip[12]~input_o\ : std_logic;
SIGNAL \sip[11]~input_o\ : std_logic;
SIGNAL \sip[10]~input_o\ : std_logic;
SIGNAL \sip[9]~input_o\ : std_logic;
SIGNAL \sip[8]~input_o\ : std_logic;
SIGNAL \sip[7]~input_o\ : std_logic;
SIGNAL \sip[6]~input_o\ : std_logic;
SIGNAL \sip[5]~input_o\ : std_logic;
SIGNAL \sip[4]~input_o\ : std_logic;
SIGNAL \sip[3]~input_o\ : std_logic;
SIGNAL \sip[2]~input_o\ : std_logic;
SIGNAL \sip[1]~input_o\ : std_logic;
SIGNAL \sip[0]~input_o\ : std_logic;
SIGNAL \dpcr_wr~input_o\ : std_logic;
SIGNAL \dpcr_lsb_sel~input_o\ : std_logic;
SIGNAL \inst|Add0~54\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \sop_wr~input_o\ : std_logic;
SIGNAL \svop_wr~input_o\ : std_logic;
SIGNAL \inst2|rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|dpcr\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst5|sip_r\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|out_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|opcode\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst7|increment\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|rx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|rf_sel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|address_method\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|sop\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst5|svop\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_clkIn~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_ld_r~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_address_method\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|ALT_INV_opcode\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|ALT_INV_rz_recv~q\ : std_logic;
SIGNAL \inst7|ALT_INV_rf_sel\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux63~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux63~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux62~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux61~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux60~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux59~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux58~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux57~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux56~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux55~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux54~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux53~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux52~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux51~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux50~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux49~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_rz\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux48~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux48~0_combout\ : std_logic;
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
SIGNAL \inst7|ALT_INV_increment\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst7|ALT_INV_ld_r~q\ : std_logic;
SIGNAL \inst|ALT_INV_out_count\ : std_logic_vector(15 DOWNTO 1);

BEGIN

z_flag <= ww_z_flag;
clk <= ww_clk;
ww_clkIn <= clkIn;
ww_reset <= reset;
rx_recv <= ww_rx_recv;
rf_init <= ww_rf_init;
ld_r <= ww_ld_r;
pm_outdata <= ww_pm_outdata;
ww_dm_wr <= dm_wr;
increment <= ww_increment;
rxData <= ww_rxData;
rzData <= ww_rzData;
ww_dm_indata <= dm_indata;
rf_sel <= ww_rf_sel;
sip_r <= ww_sip_r;
ww_dpcr_lsb_sel <= dpcr_lsb_sel;
ww_dpcr_wr <= dpcr_wr;
ww_svop_wr <= svop_wr;
ww_sop_wr <= sop_wr;
ww_sip <= sip;
rz_recv <= ww_rz_recv;
opcode <= ww_opcode;
alu_opsel <= ww_alu_opsel;
alu_output <= ww_alu_output;
am <= ww_am;
dm_outdata <= ww_dm_outdata;
dpcr <= ww_dpcr;
dprr <= ww_dprr;
out_count <= ww_out_count;
sop <= ww_sop;
svop <= ww_svop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dm_indata[15]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dm_indata[14]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dm_indata[13]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dm_indata[12]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dm_indata[11]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dm_indata[10]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dm_indata[9]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dm_indata[8]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dm_indata[7]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dm_indata[6]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dm_indata[5]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dm_indata[4]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dm_indata[3]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dm_indata[2]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dm_indata[1]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dm_indata[0]~input_o\;

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \dm_indata[15]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \dm_indata[14]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \dm_indata[13]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \dm_indata[12]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \dm_indata[11]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \dm_indata[10]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \dm_indata[9]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \dm_indata[8]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \dm_indata[7]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \dm_indata[6]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \dm_indata[5]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \dm_indata[4]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \dm_indata[3]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \dm_indata[2]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \dm_indata[1]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \dm_indata[0]~input_o\;

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & \~GND~combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst|out_count\(2) & \inst|out_count\(1) & vcc);

\inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \inst1|memory_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_clkIn~input_o\ <= NOT \clkIn~input_o\;
\inst3|ALT_INV_Mux31~4_combout\ <= NOT \inst3|Mux31~4_combout\;
\inst3|ALT_INV_Mux31~3_combout\ <= NOT \inst3|Mux31~3_combout\;
\inst3|ALT_INV_Mux31~2_combout\ <= NOT \inst3|Mux31~2_combout\;
\inst3|ALT_INV_Mux31~1_combout\ <= NOT \inst3|Mux31~1_combout\;
\inst3|ALT_INV_Mux31~0_combout\ <= NOT \inst3|Mux31~0_combout\;
\inst3|ALT_INV_Mux30~4_combout\ <= NOT \inst3|Mux30~4_combout\;
\inst3|ALT_INV_Mux30~3_combout\ <= NOT \inst3|Mux30~3_combout\;
\inst3|ALT_INV_Mux30~2_combout\ <= NOT \inst3|Mux30~2_combout\;
\inst3|ALT_INV_Mux30~1_combout\ <= NOT \inst3|Mux30~1_combout\;
\inst3|ALT_INV_Mux30~0_combout\ <= NOT \inst3|Mux30~0_combout\;
\inst3|ALT_INV_Mux29~4_combout\ <= NOT \inst3|Mux29~4_combout\;
\inst3|ALT_INV_Mux29~3_combout\ <= NOT \inst3|Mux29~3_combout\;
\inst3|ALT_INV_Mux29~2_combout\ <= NOT \inst3|Mux29~2_combout\;
\inst3|ALT_INV_Mux29~1_combout\ <= NOT \inst3|Mux29~1_combout\;
\inst3|ALT_INV_Mux29~0_combout\ <= NOT \inst3|Mux29~0_combout\;
\inst3|ALT_INV_Mux28~4_combout\ <= NOT \inst3|Mux28~4_combout\;
\inst3|ALT_INV_Mux28~3_combout\ <= NOT \inst3|Mux28~3_combout\;
\inst3|ALT_INV_Mux28~2_combout\ <= NOT \inst3|Mux28~2_combout\;
\inst3|ALT_INV_Mux28~1_combout\ <= NOT \inst3|Mux28~1_combout\;
\inst3|ALT_INV_Mux28~0_combout\ <= NOT \inst3|Mux28~0_combout\;
\inst3|ALT_INV_Mux27~4_combout\ <= NOT \inst3|Mux27~4_combout\;
\inst3|ALT_INV_Mux27~3_combout\ <= NOT \inst3|Mux27~3_combout\;
\inst3|ALT_INV_Mux27~2_combout\ <= NOT \inst3|Mux27~2_combout\;
\inst3|ALT_INV_Mux27~1_combout\ <= NOT \inst3|Mux27~1_combout\;
\inst3|ALT_INV_Mux27~0_combout\ <= NOT \inst3|Mux27~0_combout\;
\inst2|ALT_INV_operand\(4) <= NOT \inst2|operand\(4);
\inst3|ALT_INV_Mux26~4_combout\ <= NOT \inst3|Mux26~4_combout\;
\inst3|ALT_INV_Mux26~3_combout\ <= NOT \inst3|Mux26~3_combout\;
\inst3|ALT_INV_Mux26~2_combout\ <= NOT \inst3|Mux26~2_combout\;
\inst3|ALT_INV_Mux26~1_combout\ <= NOT \inst3|Mux26~1_combout\;
\inst3|ALT_INV_Mux26~0_combout\ <= NOT \inst3|Mux26~0_combout\;
\inst2|ALT_INV_operand\(5) <= NOT \inst2|operand\(5);
\inst3|ALT_INV_Mux25~4_combout\ <= NOT \inst3|Mux25~4_combout\;
\inst3|ALT_INV_Mux25~3_combout\ <= NOT \inst3|Mux25~3_combout\;
\inst3|ALT_INV_Mux25~2_combout\ <= NOT \inst3|Mux25~2_combout\;
\inst3|ALT_INV_Mux25~1_combout\ <= NOT \inst3|Mux25~1_combout\;
\inst3|ALT_INV_Mux25~0_combout\ <= NOT \inst3|Mux25~0_combout\;
\inst2|ALT_INV_operand\(6) <= NOT \inst2|operand\(6);
\inst3|ALT_INV_Mux24~4_combout\ <= NOT \inst3|Mux24~4_combout\;
\inst3|ALT_INV_Mux24~3_combout\ <= NOT \inst3|Mux24~3_combout\;
\inst3|ALT_INV_Mux24~2_combout\ <= NOT \inst3|Mux24~2_combout\;
\inst3|ALT_INV_Mux24~1_combout\ <= NOT \inst3|Mux24~1_combout\;
\inst3|ALT_INV_Mux24~0_combout\ <= NOT \inst3|Mux24~0_combout\;
\inst2|ALT_INV_operand\(7) <= NOT \inst2|operand\(7);
\inst3|ALT_INV_Mux23~4_combout\ <= NOT \inst3|Mux23~4_combout\;
\inst3|ALT_INV_Mux23~3_combout\ <= NOT \inst3|Mux23~3_combout\;
\inst3|ALT_INV_Mux23~2_combout\ <= NOT \inst3|Mux23~2_combout\;
\inst3|ALT_INV_Mux23~1_combout\ <= NOT \inst3|Mux23~1_combout\;
\inst3|ALT_INV_Mux23~0_combout\ <= NOT \inst3|Mux23~0_combout\;
\inst2|ALT_INV_operand\(8) <= NOT \inst2|operand\(8);
\inst3|ALT_INV_Mux22~4_combout\ <= NOT \inst3|Mux22~4_combout\;
\inst3|ALT_INV_Mux22~3_combout\ <= NOT \inst3|Mux22~3_combout\;
\inst3|ALT_INV_Mux22~2_combout\ <= NOT \inst3|Mux22~2_combout\;
\inst3|ALT_INV_Mux22~1_combout\ <= NOT \inst3|Mux22~1_combout\;
\inst3|ALT_INV_Mux22~0_combout\ <= NOT \inst3|Mux22~0_combout\;
\inst2|ALT_INV_operand\(9) <= NOT \inst2|operand\(9);
\inst3|ALT_INV_Mux21~4_combout\ <= NOT \inst3|Mux21~4_combout\;
\inst3|ALT_INV_Mux21~3_combout\ <= NOT \inst3|Mux21~3_combout\;
\inst3|ALT_INV_Mux21~2_combout\ <= NOT \inst3|Mux21~2_combout\;
\inst3|ALT_INV_Mux21~1_combout\ <= NOT \inst3|Mux21~1_combout\;
\inst3|ALT_INV_Mux21~0_combout\ <= NOT \inst3|Mux21~0_combout\;
\inst2|ALT_INV_operand\(10) <= NOT \inst2|operand\(10);
\inst3|ALT_INV_Mux20~4_combout\ <= NOT \inst3|Mux20~4_combout\;
\inst3|ALT_INV_Mux20~3_combout\ <= NOT \inst3|Mux20~3_combout\;
\inst3|ALT_INV_Mux20~2_combout\ <= NOT \inst3|Mux20~2_combout\;
\inst3|ALT_INV_Mux20~1_combout\ <= NOT \inst3|Mux20~1_combout\;
\inst3|ALT_INV_Mux20~0_combout\ <= NOT \inst3|Mux20~0_combout\;
\inst2|ALT_INV_operand\(11) <= NOT \inst2|operand\(11);
\inst3|ALT_INV_Mux19~4_combout\ <= NOT \inst3|Mux19~4_combout\;
\inst3|ALT_INV_Mux19~3_combout\ <= NOT \inst3|Mux19~3_combout\;
\inst3|ALT_INV_Mux19~2_combout\ <= NOT \inst3|Mux19~2_combout\;
\inst3|ALT_INV_Mux19~1_combout\ <= NOT \inst3|Mux19~1_combout\;
\inst3|ALT_INV_Mux19~0_combout\ <= NOT \inst3|Mux19~0_combout\;
\inst2|ALT_INV_operand\(12) <= NOT \inst2|operand\(12);
\inst3|ALT_INV_Mux18~4_combout\ <= NOT \inst3|Mux18~4_combout\;
\inst3|ALT_INV_Mux18~3_combout\ <= NOT \inst3|Mux18~3_combout\;
\inst3|ALT_INV_Mux18~2_combout\ <= NOT \inst3|Mux18~2_combout\;
\inst3|ALT_INV_Mux18~1_combout\ <= NOT \inst3|Mux18~1_combout\;
\inst3|ALT_INV_Mux18~0_combout\ <= NOT \inst3|Mux18~0_combout\;
\inst2|ALT_INV_operand\(13) <= NOT \inst2|operand\(13);
\inst3|ALT_INV_Mux17~4_combout\ <= NOT \inst3|Mux17~4_combout\;
\inst3|ALT_INV_Mux17~3_combout\ <= NOT \inst3|Mux17~3_combout\;
\inst3|ALT_INV_Mux17~2_combout\ <= NOT \inst3|Mux17~2_combout\;
\inst3|ALT_INV_Mux17~1_combout\ <= NOT \inst3|Mux17~1_combout\;
\inst3|ALT_INV_Mux17~0_combout\ <= NOT \inst3|Mux17~0_combout\;
\inst2|ALT_INV_operand\(14) <= NOT \inst2|operand\(14);
\inst3|ALT_INV_Mux16~4_combout\ <= NOT \inst3|Mux16~4_combout\;
\inst2|ALT_INV_operand\(3) <= NOT \inst2|operand\(3);
\inst2|ALT_INV_operand\(2) <= NOT \inst2|operand\(2);
\inst3|ALT_INV_Mux16~3_combout\ <= NOT \inst3|Mux16~3_combout\;
\inst3|ALT_INV_Mux16~2_combout\ <= NOT \inst3|Mux16~2_combout\;
\inst3|ALT_INV_Mux16~1_combout\ <= NOT \inst3|Mux16~1_combout\;
\inst3|ALT_INV_Mux16~0_combout\ <= NOT \inst3|Mux16~0_combout\;
\inst2|ALT_INV_operand\(1) <= NOT \inst2|operand\(1);
\inst2|ALT_INV_operand\(0) <= NOT \inst2|operand\(0);
\inst2|ALT_INV_operand\(15) <= NOT \inst2|operand\(15);
\inst7|ALT_INV_ld_r~0_combout\ <= NOT \inst7|ld_r~0_combout\;
\inst2|ALT_INV_address_method\(0) <= NOT \inst2|address_method\(0);
\inst2|ALT_INV_address_method\(1) <= NOT \inst2|address_method\(1);
\inst2|ALT_INV_opcode\(0) <= NOT \inst2|opcode\(0);
\inst2|ALT_INV_opcode\(1) <= NOT \inst2|opcode\(1);
\inst2|ALT_INV_opcode\(2) <= NOT \inst2|opcode\(2);
\inst2|ALT_INV_opcode\(3) <= NOT \inst2|opcode\(3);
\inst2|ALT_INV_opcode\(4) <= NOT \inst2|opcode\(4);
\inst2|ALT_INV_opcode\(5) <= NOT \inst2|opcode\(5);
\inst3|ALT_INV_rz_recv~q\ <= NOT \inst3|rz_recv~q\;
\inst7|ALT_INV_rf_sel\(0) <= NOT \inst7|rf_sel\(0);
\inst7|ALT_INV_rf_sel\(3) <= NOT \inst7|rf_sel\(3);
\inst3|ALT_INV_Mux63~3_combout\ <= NOT \inst3|Mux63~3_combout\;
\inst3|ALT_INV_Mux63~2_combout\ <= NOT \inst3|Mux63~2_combout\;
\inst3|ALT_INV_Mux63~1_combout\ <= NOT \inst3|Mux63~1_combout\;
\inst3|ALT_INV_Mux63~0_combout\ <= NOT \inst3|Mux63~0_combout\;
\inst3|ALT_INV_Mux62~3_combout\ <= NOT \inst3|Mux62~3_combout\;
\inst3|ALT_INV_Mux62~2_combout\ <= NOT \inst3|Mux62~2_combout\;
\inst3|ALT_INV_Mux62~1_combout\ <= NOT \inst3|Mux62~1_combout\;
\inst3|ALT_INV_Mux62~0_combout\ <= NOT \inst3|Mux62~0_combout\;
\inst3|ALT_INV_Mux61~3_combout\ <= NOT \inst3|Mux61~3_combout\;
\inst3|ALT_INV_Mux61~2_combout\ <= NOT \inst3|Mux61~2_combout\;
\inst3|ALT_INV_Mux61~1_combout\ <= NOT \inst3|Mux61~1_combout\;
\inst3|ALT_INV_Mux61~0_combout\ <= NOT \inst3|Mux61~0_combout\;
\inst3|ALT_INV_Mux60~3_combout\ <= NOT \inst3|Mux60~3_combout\;
\inst3|ALT_INV_Mux60~2_combout\ <= NOT \inst3|Mux60~2_combout\;
\inst3|ALT_INV_Mux60~1_combout\ <= NOT \inst3|Mux60~1_combout\;
\inst3|ALT_INV_Mux60~0_combout\ <= NOT \inst3|Mux60~0_combout\;
\inst3|ALT_INV_Mux59~3_combout\ <= NOT \inst3|Mux59~3_combout\;
\inst3|ALT_INV_Mux59~2_combout\ <= NOT \inst3|Mux59~2_combout\;
\inst3|ALT_INV_Mux59~1_combout\ <= NOT \inst3|Mux59~1_combout\;
\inst3|ALT_INV_Mux59~0_combout\ <= NOT \inst3|Mux59~0_combout\;
\inst3|ALT_INV_Mux58~3_combout\ <= NOT \inst3|Mux58~3_combout\;
\inst3|ALT_INV_Mux58~2_combout\ <= NOT \inst3|Mux58~2_combout\;
\inst3|ALT_INV_Mux58~1_combout\ <= NOT \inst3|Mux58~1_combout\;
\inst3|ALT_INV_Mux58~0_combout\ <= NOT \inst3|Mux58~0_combout\;
\inst3|ALT_INV_Mux57~3_combout\ <= NOT \inst3|Mux57~3_combout\;
\inst3|ALT_INV_Mux57~2_combout\ <= NOT \inst3|Mux57~2_combout\;
\inst3|ALT_INV_Mux57~1_combout\ <= NOT \inst3|Mux57~1_combout\;
\inst3|ALT_INV_Mux57~0_combout\ <= NOT \inst3|Mux57~0_combout\;
\inst3|ALT_INV_Mux56~3_combout\ <= NOT \inst3|Mux56~3_combout\;
\inst3|ALT_INV_Mux56~2_combout\ <= NOT \inst3|Mux56~2_combout\;
\inst3|ALT_INV_Mux56~1_combout\ <= NOT \inst3|Mux56~1_combout\;
\inst3|ALT_INV_Mux56~0_combout\ <= NOT \inst3|Mux56~0_combout\;
\inst3|ALT_INV_Mux55~3_combout\ <= NOT \inst3|Mux55~3_combout\;
\inst3|ALT_INV_Mux55~2_combout\ <= NOT \inst3|Mux55~2_combout\;
\inst3|ALT_INV_Mux55~1_combout\ <= NOT \inst3|Mux55~1_combout\;
\inst3|ALT_INV_Mux55~0_combout\ <= NOT \inst3|Mux55~0_combout\;
\inst3|ALT_INV_Mux54~3_combout\ <= NOT \inst3|Mux54~3_combout\;
\inst3|ALT_INV_Mux54~2_combout\ <= NOT \inst3|Mux54~2_combout\;
\inst3|ALT_INV_Mux54~1_combout\ <= NOT \inst3|Mux54~1_combout\;
\inst3|ALT_INV_Mux54~0_combout\ <= NOT \inst3|Mux54~0_combout\;
\inst3|ALT_INV_Mux53~3_combout\ <= NOT \inst3|Mux53~3_combout\;
\inst3|ALT_INV_Mux53~2_combout\ <= NOT \inst3|Mux53~2_combout\;
\inst3|ALT_INV_Mux53~1_combout\ <= NOT \inst3|Mux53~1_combout\;
\inst3|ALT_INV_Mux53~0_combout\ <= NOT \inst3|Mux53~0_combout\;
\inst3|ALT_INV_Mux52~3_combout\ <= NOT \inst3|Mux52~3_combout\;
\inst3|ALT_INV_Mux52~2_combout\ <= NOT \inst3|Mux52~2_combout\;
\inst3|ALT_INV_Mux52~1_combout\ <= NOT \inst3|Mux52~1_combout\;
\inst3|ALT_INV_Mux52~0_combout\ <= NOT \inst3|Mux52~0_combout\;
\inst3|ALT_INV_Mux51~3_combout\ <= NOT \inst3|Mux51~3_combout\;
\inst3|ALT_INV_Mux51~2_combout\ <= NOT \inst3|Mux51~2_combout\;
\inst3|ALT_INV_Mux51~1_combout\ <= NOT \inst3|Mux51~1_combout\;
\inst3|ALT_INV_Mux51~0_combout\ <= NOT \inst3|Mux51~0_combout\;
\inst3|ALT_INV_Mux50~3_combout\ <= NOT \inst3|Mux50~3_combout\;
\inst3|ALT_INV_Mux50~2_combout\ <= NOT \inst3|Mux50~2_combout\;
\inst3|ALT_INV_Mux50~1_combout\ <= NOT \inst3|Mux50~1_combout\;
\inst3|ALT_INV_Mux50~0_combout\ <= NOT \inst3|Mux50~0_combout\;
\inst3|ALT_INV_Mux49~3_combout\ <= NOT \inst3|Mux49~3_combout\;
\inst3|ALT_INV_Mux49~2_combout\ <= NOT \inst3|Mux49~2_combout\;
\inst3|ALT_INV_Mux49~1_combout\ <= NOT \inst3|Mux49~1_combout\;
\inst3|ALT_INV_Mux49~0_combout\ <= NOT \inst3|Mux49~0_combout\;
\inst2|ALT_INV_rz\(3) <= NOT \inst2|rz\(3);
\inst2|ALT_INV_rz\(2) <= NOT \inst2|rz\(2);
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
\inst7|ALT_INV_increment\(0) <= NOT \inst7|increment\(0);
\inst7|ALT_INV_ld_r~q\ <= NOT \inst7|ld_r~q\;
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

\z_flag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_z_flag);

\clk~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clkIn~input_o\,
	devoe => ww_devoe,
	o => ww_clk);

\rx_recv~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_rx_recv);

\rf_init~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rf_init);

\ld_r~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ld_r~q\,
	devoe => ww_devoe,
	o => ww_ld_r);

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
	o => ww_pm_outdata(15));

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
	o => ww_pm_outdata(14));

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
	o => ww_pm_outdata(13));

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
	o => ww_pm_outdata(12));

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
	o => ww_pm_outdata(11));

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
	o => ww_pm_outdata(10));

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
	o => ww_pm_outdata(9));

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
	o => ww_pm_outdata(8));

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
	o => ww_pm_outdata(7));

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
	o => ww_pm_outdata(6));

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
	o => ww_pm_outdata(5));

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
	o => ww_pm_outdata(4));

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
	o => ww_pm_outdata(3));

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
	o => ww_pm_outdata(2));

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
	o => ww_pm_outdata(1));

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
	o => ww_pm_outdata(0));

\increment[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_increment(2));

\increment[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_increment(1));

\increment[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|increment\(0),
	devoe => ww_devoe,
	o => ww_increment(0));

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
	o => ww_rxData(15));

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
	o => ww_rxData(14));

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
	o => ww_rxData(13));

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
	o => ww_rxData(12));

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
	o => ww_rxData(11));

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
	o => ww_rxData(10));

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
	o => ww_rxData(9));

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
	o => ww_rxData(8));

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
	o => ww_rxData(7));

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
	o => ww_rxData(6));

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
	o => ww_rxData(5));

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
	o => ww_rxData(4));

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
	o => ww_rxData(3));

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
	o => ww_rxData(2));

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
	o => ww_rxData(1));

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
	o => ww_rxData(0));

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
	o => ww_rzData(15));

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
	o => ww_rzData(14));

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
	o => ww_rzData(13));

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
	o => ww_rzData(12));

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
	o => ww_rzData(11));

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
	o => ww_rzData(10));

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
	o => ww_rzData(9));

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
	o => ww_rzData(8));

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
	o => ww_rzData(7));

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
	o => ww_rzData(6));

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
	o => ww_rzData(5));

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
	o => ww_rzData(4));

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
	o => ww_rzData(3));

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
	o => ww_rzData(2));

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
	o => ww_rzData(1));

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
	o => ww_rzData(0));

\rf_sel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|rf_sel\(3),
	devoe => ww_devoe,
	o => ww_rf_sel(3));

\rf_sel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rf_sel(2));

\rf_sel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_rf_sel(1));

\rf_sel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|rf_sel\(0),
	devoe => ww_devoe,
	o => ww_rf_sel(0));

\sip_r[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(15),
	devoe => ww_devoe,
	o => ww_sip_r(15));

\sip_r[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(14),
	devoe => ww_devoe,
	o => ww_sip_r(14));

\sip_r[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(13),
	devoe => ww_devoe,
	o => ww_sip_r(13));

\sip_r[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(12),
	devoe => ww_devoe,
	o => ww_sip_r(12));

\sip_r[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(11),
	devoe => ww_devoe,
	o => ww_sip_r(11));

\sip_r[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(10),
	devoe => ww_devoe,
	o => ww_sip_r(10));

\sip_r[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(9),
	devoe => ww_devoe,
	o => ww_sip_r(9));

\sip_r[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(8),
	devoe => ww_devoe,
	o => ww_sip_r(8));

\sip_r[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(7),
	devoe => ww_devoe,
	o => ww_sip_r(7));

\sip_r[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(6),
	devoe => ww_devoe,
	o => ww_sip_r(6));

\sip_r[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(5),
	devoe => ww_devoe,
	o => ww_sip_r(5));

\sip_r[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(4),
	devoe => ww_devoe,
	o => ww_sip_r(4));

\sip_r[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(3),
	devoe => ww_devoe,
	o => ww_sip_r(3));

\sip_r[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(2),
	devoe => ww_devoe,
	o => ww_sip_r(2));

\sip_r[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(1),
	devoe => ww_devoe,
	o => ww_sip_r(1));

\sip_r[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sip_r\(0),
	devoe => ww_devoe,
	o => ww_sip_r(0));

\rz_recv~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|rz_recv~q\,
	devoe => ww_devoe,
	o => ww_rz_recv);

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
	o => ww_opcode(5));

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
	o => ww_opcode(4));

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
	o => ww_opcode(3));

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
	o => ww_opcode(2));

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
	o => ww_opcode(1));

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
	o => ww_opcode(0));

\alu_opsel[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(5));

\alu_opsel[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(4));

\alu_opsel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(3));

\alu_opsel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(2));

\alu_opsel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(1));

\alu_opsel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_opsel(0));

\alu_output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(15));

\alu_output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(14));

\alu_output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(13));

\alu_output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(12));

\alu_output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(11));

\alu_output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(10));

\alu_output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(9));

\alu_output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(8));

\alu_output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(7));

\alu_output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(6));

\alu_output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(5));

\alu_output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(4));

\alu_output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(3));

\alu_output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(2));

\alu_output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(1));

\alu_output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_output(0));

\am[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|address_method\(1),
	devoe => ww_devoe,
	o => ww_am(1));

\am[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|address_method\(0),
	devoe => ww_devoe,
	o => ww_am(0));

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
	o => ww_dm_outdata(15));

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
	o => ww_dm_outdata(14));

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
	o => ww_dm_outdata(13));

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
	o => ww_dm_outdata(12));

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
	o => ww_dm_outdata(11));

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
	o => ww_dm_outdata(10));

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
	o => ww_dm_outdata(9));

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
	o => ww_dm_outdata(8));

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
	o => ww_dm_outdata(7));

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
	o => ww_dm_outdata(6));

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
	o => ww_dm_outdata(5));

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
	o => ww_dm_outdata(4));

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
	o => ww_dm_outdata(3));

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
	o => ww_dm_outdata(2));

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
	o => ww_dm_outdata(1));

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
	o => ww_dm_outdata(0));

\dpcr[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(31),
	devoe => ww_devoe,
	o => ww_dpcr(31));

\dpcr[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(30),
	devoe => ww_devoe,
	o => ww_dpcr(30));

\dpcr[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(29),
	devoe => ww_devoe,
	o => ww_dpcr(29));

\dpcr[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(28),
	devoe => ww_devoe,
	o => ww_dpcr(28));

\dpcr[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(27),
	devoe => ww_devoe,
	o => ww_dpcr(27));

\dpcr[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(26),
	devoe => ww_devoe,
	o => ww_dpcr(26));

\dpcr[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(25),
	devoe => ww_devoe,
	o => ww_dpcr(25));

\dpcr[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(24),
	devoe => ww_devoe,
	o => ww_dpcr(24));

\dpcr[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(23),
	devoe => ww_devoe,
	o => ww_dpcr(23));

\dpcr[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(22),
	devoe => ww_devoe,
	o => ww_dpcr(22));

\dpcr[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(21),
	devoe => ww_devoe,
	o => ww_dpcr(21));

\dpcr[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(20),
	devoe => ww_devoe,
	o => ww_dpcr(20));

\dpcr[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(19),
	devoe => ww_devoe,
	o => ww_dpcr(19));

\dpcr[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(18),
	devoe => ww_devoe,
	o => ww_dpcr(18));

\dpcr[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(17),
	devoe => ww_devoe,
	o => ww_dpcr(17));

\dpcr[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(16),
	devoe => ww_devoe,
	o => ww_dpcr(16));

\dpcr[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(15),
	devoe => ww_devoe,
	o => ww_dpcr(15));

\dpcr[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(14),
	devoe => ww_devoe,
	o => ww_dpcr(14));

\dpcr[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(13),
	devoe => ww_devoe,
	o => ww_dpcr(13));

\dpcr[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(12),
	devoe => ww_devoe,
	o => ww_dpcr(12));

\dpcr[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(11),
	devoe => ww_devoe,
	o => ww_dpcr(11));

\dpcr[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(10),
	devoe => ww_devoe,
	o => ww_dpcr(10));

\dpcr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(9),
	devoe => ww_devoe,
	o => ww_dpcr(9));

\dpcr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(8),
	devoe => ww_devoe,
	o => ww_dpcr(8));

\dpcr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(7),
	devoe => ww_devoe,
	o => ww_dpcr(7));

\dpcr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(6),
	devoe => ww_devoe,
	o => ww_dpcr(6));

\dpcr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(5),
	devoe => ww_devoe,
	o => ww_dpcr(5));

\dpcr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(4),
	devoe => ww_devoe,
	o => ww_dpcr(4));

\dpcr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(3),
	devoe => ww_devoe,
	o => ww_dpcr(3));

\dpcr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(2),
	devoe => ww_devoe,
	o => ww_dpcr(2));

\dpcr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(1),
	devoe => ww_devoe,
	o => ww_dpcr(1));

\dpcr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dpcr\(0),
	devoe => ww_devoe,
	o => ww_dpcr(0));

\dprr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dprr(1));

\dprr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dprr(0));

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
	o => ww_out_count(15));

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
	o => ww_out_count(14));

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
	o => ww_out_count(13));

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
	o => ww_out_count(12));

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
	o => ww_out_count(11));

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
	o => ww_out_count(10));

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
	o => ww_out_count(9));

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
	o => ww_out_count(8));

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
	o => ww_out_count(7));

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
	o => ww_out_count(6));

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
	o => ww_out_count(5));

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
	o => ww_out_count(4));

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
	o => ww_out_count(3));

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
	o => ww_out_count(2));

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
	o => ww_out_count(1));

\out_count[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_out_count(0));

\sop[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(15),
	devoe => ww_devoe,
	o => ww_sop(15));

\sop[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(14),
	devoe => ww_devoe,
	o => ww_sop(14));

\sop[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(13),
	devoe => ww_devoe,
	o => ww_sop(13));

\sop[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(12),
	devoe => ww_devoe,
	o => ww_sop(12));

\sop[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(11),
	devoe => ww_devoe,
	o => ww_sop(11));

\sop[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(10),
	devoe => ww_devoe,
	o => ww_sop(10));

\sop[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(9),
	devoe => ww_devoe,
	o => ww_sop(9));

\sop[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(8),
	devoe => ww_devoe,
	o => ww_sop(8));

\sop[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(7),
	devoe => ww_devoe,
	o => ww_sop(7));

\sop[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(6),
	devoe => ww_devoe,
	o => ww_sop(6));

\sop[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(5),
	devoe => ww_devoe,
	o => ww_sop(5));

\sop[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(4),
	devoe => ww_devoe,
	o => ww_sop(4));

\sop[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(3),
	devoe => ww_devoe,
	o => ww_sop(3));

\sop[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(2),
	devoe => ww_devoe,
	o => ww_sop(2));

\sop[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(1),
	devoe => ww_devoe,
	o => ww_sop(1));

\sop[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sop\(0),
	devoe => ww_devoe,
	o => ww_sop(0));

\svop[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(15),
	devoe => ww_devoe,
	o => ww_svop(15));

\svop[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(14),
	devoe => ww_devoe,
	o => ww_svop(14));

\svop[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(13),
	devoe => ww_devoe,
	o => ww_svop(13));

\svop[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(12),
	devoe => ww_devoe,
	o => ww_svop(12));

\svop[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(11),
	devoe => ww_devoe,
	o => ww_svop(11));

\svop[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(10),
	devoe => ww_devoe,
	o => ww_svop(10));

\svop[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(9),
	devoe => ww_devoe,
	o => ww_svop(9));

\svop[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(8),
	devoe => ww_devoe,
	o => ww_svop(8));

\svop[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(7),
	devoe => ww_devoe,
	o => ww_svop(7));

\svop[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(6),
	devoe => ww_devoe,
	o => ww_svop(6));

\svop[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(5),
	devoe => ww_devoe,
	o => ww_svop(5));

\svop[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(4),
	devoe => ww_devoe,
	o => ww_svop(4));

\svop[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(3),
	devoe => ww_devoe,
	o => ww_svop(3));

\svop[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(2),
	devoe => ww_devoe,
	o => ww_svop(2));

\svop[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(1),
	devoe => ww_devoe,
	o => ww_svop(1));

\svop[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|svop\(0),
	devoe => ww_devoe,
	o => ww_svop(0));

\clkIn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

\inst3|rz_recv~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|rz_recv~0_combout\ = (\inst3|rz_recv~q\) # (\inst7|ld_r~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst3|ALT_INV_rz_recv~q\,
	combout => \inst3|rz_recv~0_combout\);

\inst3|rz_recv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|rz_recv~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|rz_recv~q\);

\inst7|ld_r~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|ld_r~2_combout\ = !\inst3|rz_recv~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_rz_recv~q\,
	combout => \inst7|ld_r~2_combout\);

\dm_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_wr,
	o => \dm_wr~input_o\);

\dm_indata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(13),
	o => \dm_indata[13]~input_o\);

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

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\inst7|increment[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|rz_recv~q\,
	ena => \inst7|ld_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|increment\(0));

\inst|out_count[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|out_count[11]~0_combout\ = (\reset~input_o\) # (\inst7|increment\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_increment\(0),
	datab => \ALT_INV_reset~input_o\,
	combout => \inst|out_count[11]~0_combout\);

\inst|out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~57_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~53_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(2));

\inst1|memory_rtl_0|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(5));

\dm_indata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(12),
	o => \dm_indata[12]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "40",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(4));

\dm_indata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(11),
	o => \dm_indata[11]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "10",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(3));

\dm_indata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(10),
	o => \dm_indata[10]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "10",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(2));

\dm_indata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(9),
	o => \dm_indata[9]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(1));

\dm_indata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(8),
	o => \dm_indata[8]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|opcode\(0));

\inst7|ld_r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|ld_r~0_combout\ = ( !\reset~input_o\ & ( (!\inst2|opcode\(3) & (!\inst2|opcode\(2) & (!\inst2|opcode\(1) & !\inst2|opcode\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_opcode\(3),
	datab => \inst2|ALT_INV_opcode\(2),
	datac => \inst2|ALT_INV_opcode\(1),
	datad => \inst2|ALT_INV_opcode\(0),
	datae => \ALT_INV_reset~input_o\,
	combout => \inst7|ld_r~0_combout\);

\inst7|ld_r~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|ld_r~1_combout\ = (!\inst2|opcode\(5) & (!\inst2|opcode\(4) & \inst7|ld_r~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_opcode\(5),
	datab => \inst2|ALT_INV_opcode\(4),
	datac => \inst7|ALT_INV_ld_r~0_combout\,
	combout => \inst7|ld_r~1_combout\);

\inst7|ld_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst7|ld_r~2_combout\,
	ena => \inst7|ld_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ld_r~q\);

\dm_indata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(15),
	o => \dm_indata[15]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

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
	mem_init0 => "15",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\dm_indata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(7),
	o => \dm_indata[7]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\dm_indata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(6),
	o => \dm_indata[6]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\dm_indata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(5),
	o => \dm_indata[5]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "04",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\dm_indata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(4),
	o => \dm_indata[4]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "11",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\dm_indata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(3),
	o => \dm_indata[3]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\dm_indata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(2),
	o => \dm_indata[2]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\dm_indata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(1),
	o => \dm_indata[1]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "12",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\dm_indata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dm_indata(0),
	o => \dm_indata[0]~input_o\);

\inst1|memory_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_0|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst2|address_method[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|address_method\(1));

\inst2|address_method[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|address_method\(0));

\inst7|rf_sel[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|rf_sel[3]~0_combout\ = ( \inst7|ld_r~0_combout\ & ( (!\inst2|opcode\(5) & (!\inst2|opcode\(4) & ((\inst2|address_method\(0)) # (\inst2|address_method\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010001000100000000000000000000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_opcode\(5),
	datab => \inst2|ALT_INV_opcode\(4),
	datac => \inst2|ALT_INV_address_method\(1),
	datad => \inst2|ALT_INV_address_method\(0),
	datae => \inst7|ALT_INV_ld_r~0_combout\,
	combout => \inst7|rf_sel[3]~0_combout\);

\inst7|rf_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst2|address_method\(1),
	ena => \inst7|rf_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|rf_sel\(3));

\inst7|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7|Mux12~0_combout\ = (\inst2|address_method\(1) & !\inst2|address_method\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_address_method\(1),
	datab => \inst2|ALT_INV_address_method\(0),
	combout => \inst7|Mux12~0_combout\);

\inst7|rf_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst7|Mux12~0_combout\,
	ena => \inst7|rf_sel[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|rf_sel\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a15\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\inst2|operand[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(15));

\inst2|rz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|rz\(3));

\inst3|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (!\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~1_combout\);

\inst3|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][15]~q\);

\inst3|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~2_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~2_combout\);

\inst3|regs[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][15]~q\);

\inst3|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~3_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~3_combout\);

\inst3|regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][15]~q\);

\inst1|memory_rtl_1|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "2A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(0));

\inst1|memory_rtl_1|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "12",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(1));

\inst3|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][15]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][15]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][15]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][15]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux16~0_combout\);

\inst3|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~4_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (!\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~4_combout\);

\inst3|regs[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][15]~q\);

\inst3|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~5_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (!\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~5_combout\);

\inst3|regs[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][15]~q\);

\inst3|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~6_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~6_combout\);

\inst3|regs[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][15]~q\);

\inst3|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~7_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~7_combout\);

\inst3|regs[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][15]~q\);

\inst3|Mux16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][15]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][15]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][15]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][15]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux16~1_combout\);

\inst3|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~8_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (!\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~8_combout\);

\inst3|regs[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][15]~q\);

\inst3|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~9_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (!\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~9_combout\);

\inst3|regs[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][15]~q\);

\inst3|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~10_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~10_combout\);

\inst3|regs[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][15]~q\);

\inst3|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~11_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~11_combout\);

\inst3|regs[11][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][15]~q\);

\inst3|Mux16~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][15]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][15]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][15]~q\ 
-- ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][15]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux16~2_combout\);

\inst3|Decoder0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~12_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (!\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~12_combout\);

\inst3|regs[12][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][15]~q\);

\inst3|Decoder0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~13_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (!\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~13_combout\);

\inst3|regs[13][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][15]~q\);

\inst3|Decoder0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~14_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~14_combout\);

\inst3|regs[14][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][15]~q\);

\inst3|Decoder0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~15_combout\ = ( \inst2|rz\(3) & ( (\inst7|ld_r~q\ & (\inst2|rz\(0) & (\inst2|rz\(1) & \inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~15_combout\);

\inst3|regs[15][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][15]~q\);

\inst3|Mux16~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][15]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][15]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|regs[13][15]~q\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][15]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux16~3_combout\);

\inst1|memory_rtl_1|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(2));

\inst1|memory_rtl_1|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
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
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(3));

\inst3|Mux16~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux16~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux16~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux16~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux16~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux16~4_combout\);

\inst3|Mux16~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux16~5_combout\ = ( \inst3|Mux16~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(15))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux32~4_combout\))) ) ) # ( !\inst3|Mux16~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(15)))) # (\inst7|rf_sel\(3) & (\inst3|Mux32~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux32~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(15),
	datae => \inst3|ALT_INV_Mux16~4_combout\,
	combout => \inst3|Mux16~5_combout\);

\inst3|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = ( !\inst2|rz\(3) & ( (\inst7|ld_r~q\ & (!\inst2|rz\(0) & (!\inst2|rz\(1) & !\inst2|rz\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ALT_INV_ld_r~q\,
	datab => \inst2|ALT_INV_rz\(0),
	datac => \inst2|ALT_INV_rz\(1),
	datad => \inst2|ALT_INV_rz\(2),
	datae => \inst2|ALT_INV_rz\(3),
	combout => \inst3|Decoder0~0_combout\);

\inst3|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux16~5_combout\,
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
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
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
	clk => \clkIn~input_o\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a14\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "15",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\inst2|operand[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(14));

\inst3|regs[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][14]~q\);

\inst3|regs[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][14]~q\);

\inst3|regs[12][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][14]~q\);

\inst3|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][14]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][14]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][14]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux17~0_combout\);

\inst3|regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][14]~q\);

\inst3|regs[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][14]~q\);

\inst3|regs[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][14]~q\);

\inst3|regs[13][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][14]~q\);

\inst3|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][14]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][14]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][14]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux17~1_combout\);

\inst3|regs[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][14]~q\);

\inst3|regs[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][14]~q\);

\inst3|regs[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][14]~q\);

\inst3|regs[14][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][14]~q\);

\inst3|Mux17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][14]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][14]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][14]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux17~2_combout\);

\inst3|regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][14]~q\);

\inst3|regs[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][14]~q\);

\inst3|regs[11][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][14]~q\);

\inst3|regs[15][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][14]~q\);

\inst3|Mux17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][14]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][14]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][14]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][14]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux17~3_combout\);

\inst3|Mux17~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux17~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux17~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux17~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux17~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux17~4_combout\);

\inst3|Mux17~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux17~5_combout\ = ( \inst3|Mux17~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(14))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux33~4_combout\))) ) ) # ( !\inst3|Mux17~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(14)))) # (\inst7|rf_sel\(3) & (\inst3|Mux33~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux33~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(14),
	datae => \inst3|ALT_INV_Mux17~4_combout\,
	combout => \inst3|Mux17~5_combout\);

\inst3|regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux17~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a13\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\inst2|operand[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(13));

\inst3|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][13]~q\);

\inst3|regs[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][13]~q\);

\inst3|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][13]~q\);

\inst3|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][13]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][13]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][13]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][13]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux18~0_combout\);

\inst3|regs[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][13]~q\);

\inst3|regs[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][13]~q\);

\inst3|regs[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][13]~q\);

\inst3|regs[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][13]~q\);

\inst3|Mux18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][13]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][13]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][13]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][13]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux18~1_combout\);

\inst3|regs[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][13]~q\);

\inst3|regs[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][13]~q\);

\inst3|regs[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][13]~q\);

\inst3|regs[11][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][13]~q\);

\inst3|Mux18~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][13]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][13]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][13]~q\ 
-- ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][13]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux18~2_combout\);

\inst3|regs[12][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][13]~q\);

\inst3|regs[13][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][13]~q\);

\inst3|regs[14][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][13]~q\);

\inst3|regs[15][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][13]~q\);

\inst3|Mux18~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][13]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][13]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|regs[13][13]~q\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][13]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux18~3_combout\);

\inst3|Mux18~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux18~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux18~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux18~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux18~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux18~4_combout\);

\inst3|Mux18~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux18~5_combout\ = ( \inst3|Mux18~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(13))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux34~4_combout\))) ) ) # ( !\inst3|Mux18~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(13)))) # (\inst7|rf_sel\(3) & (\inst3|Mux34~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux34~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(13),
	datae => \inst3|ALT_INV_Mux18~4_combout\,
	combout => \inst3|Mux18~5_combout\);

\inst3|regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux18~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "40",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\inst2|operand[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(12));

\inst3|regs[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][12]~q\);

\inst3|regs[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][12]~q\);

\inst3|regs[12][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][12]~q\);

\inst3|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][12]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][12]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][12]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux19~0_combout\);

\inst3|regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][12]~q\);

\inst3|regs[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][12]~q\);

\inst3|regs[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][12]~q\);

\inst3|regs[13][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][12]~q\);

\inst3|Mux19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][12]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][12]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][12]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux19~1_combout\);

\inst3|regs[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][12]~q\);

\inst3|regs[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][12]~q\);

\inst3|regs[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][12]~q\);

\inst3|regs[14][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][12]~q\);

\inst3|Mux19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][12]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][12]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][12]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux19~2_combout\);

\inst3|regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][12]~q\);

\inst3|regs[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][12]~q\);

\inst3|regs[11][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][12]~q\);

\inst3|regs[15][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][12]~q\);

\inst3|Mux19~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][12]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][12]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][12]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][12]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux19~3_combout\);

\inst3|Mux19~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux19~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux19~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux19~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux19~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux19~4_combout\);

\inst3|Mux19~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux19~5_combout\ = ( \inst3|Mux19~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(12))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux35~4_combout\))) ) ) # ( !\inst3|Mux19~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(12)))) # (\inst7|rf_sel\(3) & (\inst3|Mux35~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux35~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(12),
	datae => \inst3|ALT_INV_Mux19~4_combout\,
	combout => \inst3|Mux19~5_combout\);

\inst3|regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux19~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a11\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "10",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\inst2|operand[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(11));

\inst3|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][11]~q\);

\inst3|regs[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][11]~q\);

\inst3|regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][11]~q\);

\inst3|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][11]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][11]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][11]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][11]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux20~0_combout\);

\inst3|regs[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][11]~q\);

\inst3|regs[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][11]~q\);

\inst3|regs[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][11]~q\);

\inst3|regs[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][11]~q\);

\inst3|Mux20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][11]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][11]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][11]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][11]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux20~1_combout\);

\inst3|regs[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][11]~q\);

\inst3|regs[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][11]~q\);

\inst3|regs[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][11]~q\);

\inst3|regs[11][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][11]~q\);

\inst3|Mux20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][11]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][11]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][11]~q\ 
-- ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][11]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux20~2_combout\);

\inst3|regs[12][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][11]~q\);

\inst3|regs[13][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][11]~q\);

\inst3|regs[14][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][11]~q\);

\inst3|regs[15][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][11]~q\);

\inst3|Mux20~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][11]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][11]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|regs[13][11]~q\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][11]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux20~3_combout\);

\inst3|Mux20~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux20~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux20~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux20~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux20~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux20~4_combout\);

\inst3|Mux20~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux20~5_combout\ = ( \inst3|Mux20~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(11))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux36~4_combout\))) ) ) # ( !\inst3|Mux20~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(11)))) # (\inst7|rf_sel\(3) & (\inst3|Mux36~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux36~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(11),
	datae => \inst3|ALT_INV_Mux20~4_combout\,
	combout => \inst3|Mux20~5_combout\);

\inst3|regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux20~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "10",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\inst2|operand[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(10));

\inst3|regs[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][10]~q\);

\inst3|regs[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][10]~q\);

\inst3|regs[12][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][10]~q\);

\inst3|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][10]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][10]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][10]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux21~0_combout\);

\inst3|regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][10]~q\);

\inst3|regs[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][10]~q\);

\inst3|regs[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][10]~q\);

\inst3|regs[13][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][10]~q\);

\inst3|Mux21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][10]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][10]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][10]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux21~1_combout\);

\inst3|regs[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][10]~q\);

\inst3|regs[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][10]~q\);

\inst3|regs[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][10]~q\);

\inst3|regs[14][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][10]~q\);

\inst3|Mux21~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][10]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][10]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][10]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux21~2_combout\);

\inst3|regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][10]~q\);

\inst3|regs[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][10]~q\);

\inst3|regs[11][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][10]~q\);

\inst3|regs[15][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][10]~q\);

\inst3|Mux21~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][10]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][10]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][10]~q\ 
-- ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][10]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux21~3_combout\);

\inst3|Mux21~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux21~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux21~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux21~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux21~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux21~4_combout\);

\inst3|Mux21~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux21~5_combout\ = ( \inst3|Mux21~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(10))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux37~4_combout\))) ) ) # ( !\inst3|Mux21~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(10)))) # (\inst7|rf_sel\(3) & (\inst3|Mux37~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux37~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(10),
	datae => \inst3|ALT_INV_Mux21~4_combout\,
	combout => \inst3|Mux21~5_combout\);

\inst3|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux21~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a9\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\inst2|operand[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(9));

\inst3|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][9]~q\);

\inst3|regs[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][9]~q\);

\inst3|regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][9]~q\);

\inst3|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][9]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][9]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][9]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][9]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux22~0_combout\);

\inst3|regs[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][9]~q\);

\inst3|regs[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][9]~q\);

\inst3|regs[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][9]~q\);

\inst3|regs[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][9]~q\);

\inst3|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][9]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][9]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][9]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][9]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux22~1_combout\);

\inst3|regs[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][9]~q\);

\inst3|regs[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][9]~q\);

\inst3|regs[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][9]~q\);

\inst3|regs[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][9]~q\);

\inst3|Mux22~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][9]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][9]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][9]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][9]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux22~2_combout\);

\inst3|regs[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][9]~q\);

\inst3|regs[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][9]~q\);

\inst3|regs[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][9]~q\);

\inst3|regs[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][9]~q\);

\inst3|Mux22~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][9]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][9]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[13][9]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][9]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux22~3_combout\);

\inst3|Mux22~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux22~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux22~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux22~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux22~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux22~4_combout\);

\inst3|Mux22~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux22~5_combout\ = ( \inst3|Mux22~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(9))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux38~4_combout\))) ) ) # ( !\inst3|Mux22~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(9)))) # (\inst7|rf_sel\(3) & (\inst3|Mux38~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux38~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(9),
	datae => \inst3|ALT_INV_Mux22~4_combout\,
	combout => \inst3|Mux22~5_combout\);

\inst3|regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux22~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a8\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\inst2|operand[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(8));

\inst3|regs[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][8]~q\);

\inst3|regs[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][8]~q\);

\inst3|regs[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][8]~q\);

\inst3|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][8]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][8]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][8]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][8]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux23~0_combout\);

\inst3|regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][8]~q\);

\inst3|regs[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][8]~q\);

\inst3|regs[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][8]~q\);

\inst3|regs[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][8]~q\);

\inst3|Mux23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][8]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][8]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][8]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][8]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux23~1_combout\);

\inst3|regs[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][8]~q\);

\inst3|regs[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][8]~q\);

\inst3|regs[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][8]~q\);

\inst3|regs[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][8]~q\);

\inst3|Mux23~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][8]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][8]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][8]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][8]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux23~2_combout\);

\inst3|regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][8]~q\);

\inst3|regs[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][8]~q\);

\inst3|regs[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][8]~q\);

\inst3|regs[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][8]~q\);

\inst3|Mux23~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][8]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][8]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][8]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][8]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux23~3_combout\);

\inst3|Mux23~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux23~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux23~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux23~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux23~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux23~4_combout\);

\inst3|Mux23~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux23~5_combout\ = ( \inst3|Mux23~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(8))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux39~4_combout\))) ) ) # ( !\inst3|Mux23~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(8)))) # (\inst7|rf_sel\(3) & (\inst3|Mux39~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux39~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(8),
	datae => \inst3|ALT_INV_Mux23~4_combout\,
	combout => \inst3|Mux23~5_combout\);

\inst3|regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux23~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a7\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\inst2|operand[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(7));

\inst3|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][7]~q\);

\inst3|regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][7]~q\);

\inst3|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][7]~q\);

\inst3|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][7]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][7]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][7]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][7]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux24~0_combout\);

\inst3|regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][7]~q\);

\inst3|regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][7]~q\);

\inst3|regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][7]~q\);

\inst3|regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][7]~q\);

\inst3|Mux24~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][7]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][7]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][7]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][7]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux24~1_combout\);

\inst3|regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][7]~q\);

\inst3|regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][7]~q\);

\inst3|regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][7]~q\);

\inst3|regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][7]~q\);

\inst3|Mux24~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][7]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][7]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][7]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][7]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux24~2_combout\);

\inst3|regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][7]~q\);

\inst3|regs[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][7]~q\);

\inst3|regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][7]~q\);

\inst3|regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][7]~q\);

\inst3|Mux24~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][7]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][7]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[13][7]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][7]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux24~3_combout\);

\inst3|Mux24~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux24~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux24~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux24~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux24~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux24~4_combout\);

\inst3|Mux24~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux24~5_combout\ = ( \inst3|Mux24~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(7))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux40~4_combout\))) ) ) # ( !\inst3|Mux24~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(7)))) # (\inst7|rf_sel\(3) & (\inst3|Mux40~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux40~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(7),
	datae => \inst3|ALT_INV_Mux24~4_combout\,
	combout => \inst3|Mux24~5_combout\);

\inst3|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux24~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a6\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\inst2|operand[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(6));

\inst3|regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][6]~q\);

\inst3|regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][6]~q\);

\inst3|regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][6]~q\);

\inst3|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][6]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][6]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][6]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][6]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux25~0_combout\);

\inst3|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][6]~q\);

\inst3|regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][6]~q\);

\inst3|regs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][6]~q\);

\inst3|regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][6]~q\);

\inst3|Mux25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][6]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][6]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][6]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][6]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux25~1_combout\);

\inst3|regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][6]~q\);

\inst3|regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][6]~q\);

\inst3|regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][6]~q\);

\inst3|regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][6]~q\);

\inst3|Mux25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][6]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][6]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][6]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][6]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux25~2_combout\);

\inst3|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][6]~q\);

\inst3|regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][6]~q\);

\inst3|regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][6]~q\);

\inst3|regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][6]~q\);

\inst3|Mux25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][6]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][6]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][6]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][6]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux25~3_combout\);

\inst3|Mux25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux25~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux25~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux25~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux25~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux25~4_combout\);

\inst3|Mux25~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux25~5_combout\ = ( \inst3|Mux25~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(6))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux41~4_combout\))) ) ) # ( !\inst3|Mux25~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(6)))) # (\inst7|rf_sel\(3) & (\inst3|Mux41~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux41~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(6),
	datae => \inst3|ALT_INV_Mux25~4_combout\,
	combout => \inst3|Mux25~5_combout\);

\inst3|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux25~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "04",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\inst2|operand[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(5));

\inst3|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][5]~q\);

\inst3|regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][5]~q\);

\inst3|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][5]~q\);

\inst3|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][5]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][5]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][5]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][5]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux26~0_combout\);

\inst3|regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][5]~q\);

\inst3|regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][5]~q\);

\inst3|regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][5]~q\);

\inst3|regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][5]~q\);

\inst3|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][5]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][5]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][5]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][5]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux26~1_combout\);

\inst3|regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][5]~q\);

\inst3|regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][5]~q\);

\inst3|regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][5]~q\);

\inst3|regs[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][5]~q\);

\inst3|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][5]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][5]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][5]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][5]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux26~2_combout\);

\inst3|regs[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][5]~q\);

\inst3|regs[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][5]~q\);

\inst3|regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][5]~q\);

\inst3|regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][5]~q\);

\inst3|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][5]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][5]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[13][5]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][5]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux26~3_combout\);

\inst3|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux26~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux26~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux26~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux26~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux26~4_combout\);

\inst3|Mux26~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux26~5_combout\ = ( \inst3|Mux26~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(5))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux42~4_combout\))) ) ) # ( !\inst3|Mux26~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(5)))) # (\inst7|rf_sel\(3) & (\inst3|Mux42~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux42~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(5),
	datae => \inst3|ALT_INV_Mux26~4_combout\,
	combout => \inst3|Mux26~5_combout\);

\inst3|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux26~5_combout\,
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

\inst1|memory_rtl_1|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "11",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/recop.ram0_memory_e411fb78.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memory:inst1|altsyncram:memory_rtl_1|altsyncram_tar1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 16,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \dm_wr~input_o\,
	portbre => VCC,
	clk0 => \ALT_INV_clkIn~input_o\,
	portadatain => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst1|memory_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\inst2|operand[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst1|memory_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|operand\(4));

\inst3|regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][4]~q\);

\inst3|regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][4]~q\);

\inst3|regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][4]~q\);

\inst3|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][4]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][4]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][4]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][4]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux27~0_combout\);

\inst3|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][4]~q\);

\inst3|regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][4]~q\);

\inst3|regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][4]~q\);

\inst3|regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][4]~q\);

\inst3|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][4]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][4]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][4]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][4]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux27~1_combout\);

\inst3|regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][4]~q\);

\inst3|regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][4]~q\);

\inst3|regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][4]~q\);

\inst3|regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][4]~q\);

\inst3|Mux27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][4]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][4]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][4]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][4]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux27~2_combout\);

\inst3|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][4]~q\);

\inst3|regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][4]~q\);

\inst3|regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][4]~q\);

\inst3|regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][4]~q\);

\inst3|Mux27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][4]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][4]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][4]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][4]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux27~3_combout\);

\inst3|Mux27~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux27~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux27~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux27~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux27~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux27~4_combout\);

\inst3|Mux27~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux27~5_combout\ = ( \inst3|Mux27~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(4))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux43~4_combout\))) ) ) # ( !\inst3|Mux27~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(4)))) # (\inst7|rf_sel\(3) & (\inst3|Mux43~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux43~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(4),
	datae => \inst3|ALT_INV_Mux27~4_combout\,
	combout => \inst3|Mux27~5_combout\);

\inst3|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux27~5_combout\,
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

\inst3|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][3]~q\);

\inst3|regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][3]~q\);

\inst3|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][3]~q\);

\inst3|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][3]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][3]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][3]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][3]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux28~0_combout\);

\inst3|regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][3]~q\);

\inst3|regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][3]~q\);

\inst3|regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][3]~q\);

\inst3|regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][3]~q\);

\inst3|Mux28~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][3]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][3]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][3]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][3]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux28~1_combout\);

\inst3|regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][3]~q\);

\inst3|regs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][3]~q\);

\inst3|regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][3]~q\);

\inst3|regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][3]~q\);

\inst3|Mux28~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][3]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][3]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][3]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][3]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux28~2_combout\);

\inst3|regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][3]~q\);

\inst3|regs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][3]~q\);

\inst3|regs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][3]~q\);

\inst3|regs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][3]~q\);

\inst3|Mux28~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][3]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][3]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[13][3]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][3]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux28~3_combout\);

\inst3|Mux28~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux28~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux28~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux28~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux28~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux28~4_combout\);

\inst3|Mux28~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux28~5_combout\ = ( \inst3|Mux28~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(3))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux44~4_combout\))) ) ) # ( !\inst3|Mux28~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(3)))) # (\inst7|rf_sel\(3) & (\inst3|Mux44~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux44~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(3),
	datae => \inst3|ALT_INV_Mux28~4_combout\,
	combout => \inst3|Mux28~5_combout\);

\inst3|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux28~5_combout\,
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

\inst3|regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][2]~q\);

\inst3|regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][2]~q\);

\inst3|regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][2]~q\);

\inst3|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][2]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][2]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][2]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][2]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux29~0_combout\);

\inst3|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][2]~q\);

\inst3|regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][2]~q\);

\inst3|regs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][2]~q\);

\inst3|regs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][2]~q\);

\inst3|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][2]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][2]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][2]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][2]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux29~1_combout\);

\inst3|regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][2]~q\);

\inst3|regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][2]~q\);

\inst3|regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][2]~q\);

\inst3|regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][2]~q\);

\inst3|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][2]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][2]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][2]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][2]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux29~2_combout\);

\inst3|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][2]~q\);

\inst3|regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][2]~q\);

\inst3|regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][2]~q\);

\inst3|regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][2]~q\);

\inst3|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][2]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][2]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][2]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][2]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux29~3_combout\);

\inst3|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux29~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux29~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux29~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux29~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux29~4_combout\);

\inst3|Mux29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux29~5_combout\ = ( \inst3|Mux29~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(2))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux45~4_combout\))) ) ) # ( !\inst3|Mux29~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(2)))) # (\inst7|rf_sel\(3) & (\inst3|Mux45~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux45~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(2),
	datae => \inst3|ALT_INV_Mux29~4_combout\,
	combout => \inst3|Mux29~5_combout\);

\inst3|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux29~5_combout\,
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

\inst3|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][1]~q\);

\inst3|regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][1]~q\);

\inst3|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][1]~q\);

\inst3|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~0_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[3][1]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[2][1]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[1][1]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[0][1]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux30~0_combout\);

\inst3|regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][1]~q\);

\inst3|regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][1]~q\);

\inst3|regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][1]~q\);

\inst3|regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][1]~q\);

\inst3|Mux30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~1_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[7][1]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[6][1]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[5][1]~q\ ) ) 
-- ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[4][1]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux30~1_combout\);

\inst3|regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][1]~q\);

\inst3|regs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][1]~q\);

\inst3|regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][1]~q\);

\inst3|regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][1]~q\);

\inst3|Mux30~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~2_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[11][1]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[10][1]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[9][1]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[8][1]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux30~2_combout\);

\inst3|regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][1]~q\);

\inst3|regs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][1]~q\);

\inst3|regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][1]~q\);

\inst3|regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][1]~q\);

\inst3|Mux30~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~3_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[15][1]~q\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|regs[14][1]~q\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[13][1]~q\ ) 
-- ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|regs[12][1]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux30~3_combout\);

\inst3|Mux30~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~4_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux30~3_combout\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|Mux30~2_combout\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( 
-- \inst3|Mux30~1_combout\ ) ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|Mux30~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux30~4_combout\);

\inst3|Mux30~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux30~5_combout\ = ( \inst3|Mux30~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(1))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux46~4_combout\))) ) ) # ( !\inst3|Mux30~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(1)))) # (\inst7|rf_sel\(3) & (\inst3|Mux46~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux46~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(1),
	datae => \inst3|ALT_INV_Mux30~4_combout\,
	combout => \inst3|Mux30~5_combout\);

\inst3|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux30~5_combout\,
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

\inst3|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[4][0]~q\);

\inst3|regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[8][0]~q\);

\inst3|regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[12][0]~q\);

\inst3|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~0_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[12][0]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[8][0]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[4][0]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[0][0]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux31~0_combout\);

\inst3|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[1][0]~q\);

\inst3|regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[5][0]~q\);

\inst3|regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[9][0]~q\);

\inst3|regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[13][0]~q\);

\inst3|Mux31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~1_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[13][0]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[9][0]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[5][0]~q\ ) ) 
-- ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[1][0]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux31~1_combout\);

\inst3|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[2][0]~q\);

\inst3|regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[6][0]~q\);

\inst3|regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[10][0]~q\);

\inst3|regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[14][0]~q\);

\inst3|Mux31~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~2_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[14][0]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[10][0]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[6][0]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[2][0]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux31~2_combout\);

\inst3|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[3][0]~q\);

\inst3|regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[7][0]~q\);

\inst3|regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[11][0]~q\);

\inst3|regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
	ena => \inst3|Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|regs[15][0]~q\);

\inst3|Mux31~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~3_combout\ = ( \inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[15][0]~q\ ) ) ) # ( !\inst2|operand\(2) & ( \inst2|operand\(3) & ( \inst3|regs[11][0]~q\ ) ) ) # ( \inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[7][0]~q\ ) 
-- ) ) # ( !\inst2|operand\(2) & ( !\inst2|operand\(3) & ( \inst3|regs[3][0]~q\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(2),
	dataf => \inst2|ALT_INV_operand\(3),
	combout => \inst3|Mux31~3_combout\);

\inst3|Mux31~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~4_combout\ = ( \inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux31~3_combout\ ) ) ) # ( !\inst2|operand\(0) & ( \inst2|operand\(1) & ( \inst3|Mux31~2_combout\ ) ) ) # ( \inst2|operand\(0) & ( !\inst2|operand\(1) & ( 
-- \inst3|Mux31~1_combout\ ) ) ) # ( !\inst2|operand\(0) & ( !\inst2|operand\(1) & ( \inst3|Mux31~0_combout\ ) ) )

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
	datae => \inst2|ALT_INV_operand\(0),
	dataf => \inst2|ALT_INV_operand\(1),
	combout => \inst3|Mux31~4_combout\);

\inst3|Mux31~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst3|Mux31~5_combout\ = ( \inst3|Mux31~4_combout\ & ( (!\inst7|rf_sel\(3) & (((!\inst7|rf_sel\(0) & \inst2|operand\(0))))) # (\inst7|rf_sel\(3) & (((\inst7|rf_sel\(0))) # (\inst3|Mux47~4_combout\))) ) ) # ( !\inst3|Mux31~4_combout\ & ( 
-- (!\inst7|rf_sel\(0) & ((!\inst7|rf_sel\(3) & ((\inst2|operand\(0)))) # (\inst7|rf_sel\(3) & (\inst3|Mux47~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100010000110100000001001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|ALT_INV_Mux47~4_combout\,
	datab => \inst7|ALT_INV_rf_sel\(3),
	datac => \inst7|ALT_INV_rf_sel\(0),
	datad => \inst2|ALT_INV_operand\(0),
	datae => \inst3|ALT_INV_Mux31~4_combout\,
	combout => \inst3|Mux31~5_combout\);

\inst3|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux31~5_combout\,
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

\sip[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(15),
	o => \sip[15]~input_o\);

\inst5|sip_r[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(15));

\sip[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(14),
	o => \sip[14]~input_o\);

\inst5|sip_r[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[14]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(14));

\sip[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(13),
	o => \sip[13]~input_o\);

\inst5|sip_r[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[13]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(13));

\sip[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(12),
	o => \sip[12]~input_o\);

\inst5|sip_r[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[12]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(12));

\sip[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(11),
	o => \sip[11]~input_o\);

\inst5|sip_r[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[11]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(11));

\sip[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(10),
	o => \sip[10]~input_o\);

\inst5|sip_r[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(10));

\sip[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(9),
	o => \sip[9]~input_o\);

\inst5|sip_r[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(9));

\sip[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(8),
	o => \sip[8]~input_o\);

\inst5|sip_r[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(8));

\sip[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(7),
	o => \sip[7]~input_o\);

\inst5|sip_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[7]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(7));

\sip[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(6),
	o => \sip[6]~input_o\);

\inst5|sip_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[6]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(6));

\sip[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(5),
	o => \sip[5]~input_o\);

\inst5|sip_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[5]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(5));

\sip[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(4),
	o => \sip[4]~input_o\);

\inst5|sip_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(4));

\sip[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(3),
	o => \sip[3]~input_o\);

\inst5|sip_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(3));

\sip[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(2),
	o => \sip[2]~input_o\);

\inst5|sip_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(2));

\sip[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(1),
	o => \sip[1]~input_o\);

\inst5|sip_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(1));

\sip[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sip(0),
	o => \sip[0]~input_o\);

\inst5|sip_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \sip[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sip_r\(0));

\dpcr_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dpcr_wr,
	o => \dpcr_wr~input_o\);

\inst5|dpcr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux32~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(31));

\inst5|dpcr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux33~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(30));

\inst5|dpcr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux34~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(29));

\inst5|dpcr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux35~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(28));

\inst5|dpcr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux36~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(27));

\inst5|dpcr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux37~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(26));

\inst5|dpcr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux38~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(25));

\inst5|dpcr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux39~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(24));

\inst5|dpcr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux40~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(23));

\inst5|dpcr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux41~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(22));

\inst5|dpcr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux42~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(21));

\inst5|dpcr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux43~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(20));

\inst5|dpcr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux44~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(19));

\inst5|dpcr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux45~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(18));

\inst5|dpcr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux46~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(17));

\inst5|dpcr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux47~4_combout\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(16));

\dpcr_lsb_sel~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dpcr_lsb_sel,
	o => \dpcr_lsb_sel~input_o\);

\inst5|dpcr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][15]~q\,
	asdata => \inst2|operand\(15),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(15));

\inst5|dpcr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][14]~q\,
	asdata => \inst2|operand\(14),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(14));

\inst5|dpcr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][13]~q\,
	asdata => \inst2|operand\(13),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(13));

\inst5|dpcr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][12]~q\,
	asdata => \inst2|operand\(12),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(12));

\inst5|dpcr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][11]~q\,
	asdata => \inst2|operand\(11),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(11));

\inst5|dpcr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][10]~q\,
	asdata => \inst2|operand\(10),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(10));

\inst5|dpcr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][9]~q\,
	asdata => \inst2|operand\(9),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(9));

\inst5|dpcr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][8]~q\,
	asdata => \inst2|operand\(8),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(8));

\inst5|dpcr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][7]~q\,
	asdata => \inst2|operand\(7),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(7));

\inst5|dpcr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][6]~q\,
	asdata => \inst2|operand\(6),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(6));

\inst5|dpcr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][5]~q\,
	asdata => \inst2|operand\(5),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(5));

\inst5|dpcr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][4]~q\,
	asdata => \inst2|operand\(4),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(4));

\inst5|dpcr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][3]~q\,
	asdata => \inst2|operand\(3),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(3));

\inst5|dpcr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][2]~q\,
	asdata => \inst2|operand\(2),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(2));

\inst5|dpcr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][1]~q\,
	asdata => \inst2|operand\(1),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(1));

\inst5|dpcr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|regs[7][0]~q\,
	asdata => \inst2|operand\(0),
	sload => \dpcr_lsb_sel~input_o\,
	ena => \dpcr_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dpcr\(0));

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

\inst|out_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~49_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~45_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~41_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~37_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~33_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~29_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~25_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~21_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~17_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~13_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~9_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~5_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
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

\inst|out_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst|Add0~1_sumout\,
	sclr => \reset~input_o\,
	ena => \inst|out_count[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|out_count\(15));

\sop_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sop_wr,
	o => \sop_wr~input_o\);

\inst5|sop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux32~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(15));

\inst5|sop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux33~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(14));

\inst5|sop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux34~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(13));

\inst5|sop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux35~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(12));

\inst5|sop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux36~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(11));

\inst5|sop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux37~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(10));

\inst5|sop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux38~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(9));

\inst5|sop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux39~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(8));

\inst5|sop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux40~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(7));

\inst5|sop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux41~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(6));

\inst5|sop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux42~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(5));

\inst5|sop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux43~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(4));

\inst5|sop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux44~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(3));

\inst5|sop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux45~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(2));

\inst5|sop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux46~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(1));

\inst5|sop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux47~4_combout\,
	ena => \sop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sop\(0));

\svop_wr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_svop_wr,
	o => \svop_wr~input_o\);

\inst5|svop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux32~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(15));

\inst5|svop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux33~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(14));

\inst5|svop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux34~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(13));

\inst5|svop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux35~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(12));

\inst5|svop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux36~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(11));

\inst5|svop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux37~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(10));

\inst5|svop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux38~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(9));

\inst5|svop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux39~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(8));

\inst5|svop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux40~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(7));

\inst5|svop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux41~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(6));

\inst5|svop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux42~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(5));

\inst5|svop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux43~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(4));

\inst5|svop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux44~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(3));

\inst5|svop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux45~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(2));

\inst5|svop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux46~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(1));

\inst5|svop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \inst3|Mux47~4_combout\,
	ena => \svop_wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|svop\(0));
END structure;


