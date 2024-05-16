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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/16/2024 16:01:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          progCounterTest
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY progCounterTest_vhd_vec_tst IS
END progCounterTest_vhd_vec_tst;
ARCHITECTURE progCounterTest_arch OF progCounterTest_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_opsel : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL alu_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL alu_rx_recv : STD_LOGIC;
SIGNAL alu_rz_recv : STD_LOGIC;
SIGNAL am : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clkIn : STD_LOGIC;
SIGNAL clkOut : STD_LOGIC;
SIGNAL dpcr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dpcr_lsb_sel : STD_LOGIC;
SIGNAL dpcr_wr : STD_LOGIC;
SIGNAL dprr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL increment : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL instruct : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ld_r : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL operand_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL output_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rf_init : STD_LOGIC;
SIGNAL rf_sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rx_recv : STD_LOGIC;
SIGNAL rxData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rz_recv : STD_LOGIC;
SIGNAL rzData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_r : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_wr : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL svop : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL svop_wr : STD_LOGIC;
SIGNAL test_input : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL z_flag : STD_LOGIC;
COMPONENT progCounterTest
	PORT (
	alu_opsel : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	alu_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_rx_recv : OUT STD_LOGIC;
	alu_rz_recv : OUT STD_LOGIC;
	am : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clkIn : IN STD_LOGIC;
	clkOut : OUT STD_LOGIC;
	dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dpcr_lsb_sel : IN STD_LOGIC;
	dpcr_wr : IN STD_LOGIC;
	dprr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	increment : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	instruct : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ld_r : OUT STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	operand_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	output_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	reset : IN STD_LOGIC;
	rf_init : OUT STD_LOGIC;
	rf_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rx_recv : OUT STD_LOGIC;
	rxData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rz_recv : OUT STD_LOGIC;
	rzData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_r : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_wr : IN STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	svop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	svop_wr : IN STD_LOGIC;
	test_input : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	z_flag : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : progCounterTest
	PORT MAP (
-- list connections between master ports and signals
	alu_opsel => alu_opsel,
	alu_output => alu_output,
	alu_rx_recv => alu_rx_recv,
	alu_rz_recv => alu_rz_recv,
	am => am,
	clkIn => clkIn,
	clkOut => clkOut,
	dpcr => dpcr,
	dpcr_lsb_sel => dpcr_lsb_sel,
	dpcr_wr => dpcr_wr,
	dprr => dprr,
	increment => increment,
	instruct => instruct,
	ld_r => ld_r,
	opcode => opcode,
	operand_out => operand_out,
	output_count => output_count,
	reset => reset,
	rf_init => rf_init,
	rf_sel => rf_sel,
	rx_recv => rx_recv,
	rxData => rxData,
	rz_recv => rz_recv,
	rzData => rzData,
	sip => sip,
	sip_r => sip_r,
	sop => sop,
	sop_wr => sop_wr,
	state => state,
	svop => svop,
	svop_wr => svop_wr,
	test_input => test_input,
	z_flag => z_flag
	);

-- clkIn
t_prcs_clkIn: PROCESS
BEGIN
LOOP
	clkIn <= '0';
	WAIT FOR 10000 ps;
	clkIn <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkIn;
-- test_input[14]
t_prcs_test_input_14: PROCESS
BEGIN
	test_input(14) <= '0';
WAIT;
END PROCESS t_prcs_test_input_14;
-- test_input[13]
t_prcs_test_input_13: PROCESS
BEGIN
	test_input(13) <= '0';
WAIT;
END PROCESS t_prcs_test_input_13;
-- test_input[12]
t_prcs_test_input_12: PROCESS
BEGIN
	test_input(12) <= '0';
WAIT;
END PROCESS t_prcs_test_input_12;
-- test_input[11]
t_prcs_test_input_11: PROCESS
BEGIN
	test_input(11) <= '0';
WAIT;
END PROCESS t_prcs_test_input_11;
-- test_input[10]
t_prcs_test_input_10: PROCESS
BEGIN
	test_input(10) <= '0';
WAIT;
END PROCESS t_prcs_test_input_10;
-- test_input[9]
t_prcs_test_input_9: PROCESS
BEGIN
	test_input(9) <= '0';
WAIT;
END PROCESS t_prcs_test_input_9;
-- test_input[8]
t_prcs_test_input_8: PROCESS
BEGIN
	test_input(8) <= '0';
WAIT;
END PROCESS t_prcs_test_input_8;
-- test_input[7]
t_prcs_test_input_7: PROCESS
BEGIN
	test_input(7) <= '0';
WAIT;
END PROCESS t_prcs_test_input_7;
-- test_input[6]
t_prcs_test_input_6: PROCESS
BEGIN
	test_input(6) <= '0';
WAIT;
END PROCESS t_prcs_test_input_6;
-- test_input[5]
t_prcs_test_input_5: PROCESS
BEGIN
	test_input(5) <= '0';
WAIT;
END PROCESS t_prcs_test_input_5;
-- test_input[4]
t_prcs_test_input_4: PROCESS
BEGIN
	test_input(4) <= '0';
WAIT;
END PROCESS t_prcs_test_input_4;
-- test_input[3]
t_prcs_test_input_3: PROCESS
BEGIN
	test_input(3) <= '0';
	WAIT FOR 800000 ps;
	test_input(3) <= '1';
WAIT;
END PROCESS t_prcs_test_input_3;
-- test_input[2]
t_prcs_test_input_2: PROCESS
BEGIN
	test_input(2) <= '0';
	WAIT FOR 400000 ps;
	test_input(2) <= '1';
	WAIT FOR 400000 ps;
	test_input(2) <= '0';
WAIT;
END PROCESS t_prcs_test_input_2;
-- test_input[1]
t_prcs_test_input_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		test_input(1) <= '0';
		WAIT FOR 200000 ps;
		test_input(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	test_input(1) <= '0';
WAIT;
END PROCESS t_prcs_test_input_1;
-- test_input[0]
t_prcs_test_input_0: PROCESS
BEGIN
LOOP
	test_input(0) <= '0';
	WAIT FOR 100000 ps;
	test_input(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_test_input_0;
END progCounterTest_arch;
