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
-- Generated on "05/13/2024 22:38:12"
                                                             
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
SIGNAL clk : STD_LOGIC;
SIGNAL clkIn : STD_LOGIC;
SIGNAL dm_indata : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dm_wr : STD_LOGIC;
SIGNAL dpcr : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dpcr_lsb_sel : STD_LOGIC;
SIGNAL dpcr_wr : STD_LOGIC;
SIGNAL dprr : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL increment : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ld_r : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL operand_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pm_outdata : STD_LOGIC_VECTOR(15 DOWNTO 0);
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
SIGNAL z_flag : STD_LOGIC;
COMPONENT progCounterTest
	PORT (
	alu_opsel : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	alu_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_rx_recv : OUT STD_LOGIC;
	alu_rz_recv : OUT STD_LOGIC;
	am : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : OUT STD_LOGIC;
	clkIn : IN STD_LOGIC;
	dm_indata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	dm_wr : IN STD_LOGIC;
	dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dpcr_lsb_sel : IN STD_LOGIC;
	dpcr_wr : IN STD_LOGIC;
	dprr : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	increment : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ld_r : OUT STD_LOGIC;
	opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	operand_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pm_outdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
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
	clk => clk,
	clkIn => clkIn,
	dm_indata => dm_indata,
	dm_wr => dm_wr,
	dpcr => dpcr,
	dpcr_lsb_sel => dpcr_lsb_sel,
	dpcr_wr => dpcr_wr,
	dprr => dprr,
	increment => increment,
	ld_r => ld_r,
	opcode => opcode,
	operand_out => operand_out,
	out_count => out_count,
	pm_outdata => pm_outdata,
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
END progCounterTest_arch;
