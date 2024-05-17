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
-- Generated on "05/17/2024 21:47:58"
                                                             
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
SIGNAL addrSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL alu_opsel : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL alu_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL alu_z : STD_LOGIC;
SIGNAL am : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clkIn : STD_LOGIC;
SIGNAL clr_z_flag : STD_LOGIC;
SIGNAL dataSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL dpcr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dpcr_wr : STD_LOGIC;
SIGNAL increment : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ld_r : STD_LOGIC;
SIGNAL memData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL operand_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL present_sz_jmp : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL rf_init : STD_LOGIC;
SIGNAL rf_sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rxData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rzData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_r : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL storedData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT progCounterTest
	PORT (
	addrSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_opsel : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	alu_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_z : OUT STD_LOGIC;
	am : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : OUT STD_LOGIC;
	clkIn : IN STD_LOGIC;
	clr_z_flag : OUT STD_LOGIC;
	dataSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dpcr_wr : OUT STD_LOGIC;
	increment : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	instruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ld_r : OUT STD_LOGIC;
	memData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	operand_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	present_sz_jmp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC;
	rf_init : OUT STD_LOGIC;
	rf_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rxData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rzData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_r : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	storedData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	wren : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : progCounterTest
	PORT MAP (
-- list connections between master ports and signals
	addrSel => addrSel,
	alu_opsel => alu_opsel,
	alu_output => alu_output,
	alu_z => alu_z,
	am => am,
	clk => clk,
	clkIn => clkIn,
	clr_z_flag => clr_z_flag,
	dataSel => dataSel,
	dpcr => dpcr,
	dpcr_wr => dpcr_wr,
	increment => increment,
	instruction => instruction,
	ld_r => ld_r,
	memData => memData,
	opcode => opcode,
	operand_out => operand_out,
	pc_count => pc_count,
	present_sz_jmp => present_sz_jmp,
	reset => reset,
	rf_init => rf_init,
	rf_sel => rf_sel,
	rxData => rxData,
	rzData => rzData,
	sip => sip,
	sip_r => sip_r,
	sop => sop,
	state => state,
	storedData => storedData,
	wren => wren
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
-- sip[15]
t_prcs_sip_15: PROCESS
BEGIN
	sip(15) <= '1';
WAIT;
END PROCESS t_prcs_sip_15;
-- sip[14]
t_prcs_sip_14: PROCESS
BEGIN
	sip(14) <= '0';
WAIT;
END PROCESS t_prcs_sip_14;
-- sip[13]
t_prcs_sip_13: PROCESS
BEGIN
	sip(13) <= '0';
WAIT;
END PROCESS t_prcs_sip_13;
-- sip[12]
t_prcs_sip_12: PROCESS
BEGIN
	sip(12) <= '0';
WAIT;
END PROCESS t_prcs_sip_12;
-- sip[11]
t_prcs_sip_11: PROCESS
BEGIN
	sip(11) <= '0';
WAIT;
END PROCESS t_prcs_sip_11;
-- sip[10]
t_prcs_sip_10: PROCESS
BEGIN
	sip(10) <= '0';
WAIT;
END PROCESS t_prcs_sip_10;
-- sip[9]
t_prcs_sip_9: PROCESS
BEGIN
	sip(9) <= '0';
WAIT;
END PROCESS t_prcs_sip_9;
-- sip[8]
t_prcs_sip_8: PROCESS
BEGIN
	sip(8) <= '0';
WAIT;
END PROCESS t_prcs_sip_8;
-- sip[7]
t_prcs_sip_7: PROCESS
BEGIN
	sip(7) <= '0';
WAIT;
END PROCESS t_prcs_sip_7;
-- sip[6]
t_prcs_sip_6: PROCESS
BEGIN
	sip(6) <= '0';
WAIT;
END PROCESS t_prcs_sip_6;
-- sip[5]
t_prcs_sip_5: PROCESS
BEGIN
	sip(5) <= '0';
WAIT;
END PROCESS t_prcs_sip_5;
-- sip[4]
t_prcs_sip_4: PROCESS
BEGIN
	sip(4) <= '0';
WAIT;
END PROCESS t_prcs_sip_4;
-- sip[3]
t_prcs_sip_3: PROCESS
BEGIN
	sip(3) <= '0';
WAIT;
END PROCESS t_prcs_sip_3;
-- sip[2]
t_prcs_sip_2: PROCESS
BEGIN
	sip(2) <= '0';
WAIT;
END PROCESS t_prcs_sip_2;
-- sip[1]
t_prcs_sip_1: PROCESS
BEGIN
	sip(1) <= '0';
WAIT;
END PROCESS t_prcs_sip_1;
-- sip[0]
t_prcs_sip_0: PROCESS
BEGIN
	sip(0) <= '0';
WAIT;
END PROCESS t_prcs_sip_0;
END progCounterTest_arch;
