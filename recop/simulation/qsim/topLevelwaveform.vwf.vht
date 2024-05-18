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
-- Generated on "05/19/2024 09:27:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          recop
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY recop_vhd_vec_tst IS
END recop_vhd_vec_tst;
ARCHITECTURE recop_arch OF recop_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addrSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL alu_opsel : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL alu_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL alu_z : STD_LOGIC;
SIGNAL am : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clk50 : STD_LOGIC;
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
SIGNAL rx_sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rxData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rz_sel : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rzData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sip_r : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sipIn : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL sop : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL sop_wr : STD_LOGIC;
SIGNAL state : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL storedData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT recop
	PORT (
	addrSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_opsel : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	alu_output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_z : OUT STD_LOGIC;
	am : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	clk : OUT STD_LOGIC;
	clk50 : IN STD_LOGIC;
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
	rx_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rxData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rz_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rzData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sip_r : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	sipIn : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	sop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	sop_wr : OUT STD_LOGIC;
	state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	storedData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	wren : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : recop
	PORT MAP (
-- list connections between master ports and signals
	addrSel => addrSel,
	alu_opsel => alu_opsel,
	alu_output => alu_output,
	alu_z => alu_z,
	am => am,
	clk => clk,
	clk50 => clk50,
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
	rx_sel => rx_sel,
	rxData => rxData,
	rz_sel => rz_sel,
	rzData => rzData,
	sip_r => sip_r,
	sipIn => sipIn,
	sop => sop,
	sop_wr => sop_wr,
	state => state,
	storedData => storedData,
	wren => wren
	);

-- clk50
t_prcs_clk50: PROCESS
BEGIN
LOOP
	clk50 <= '0';
	WAIT FOR 10000 ps;
	clk50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk50;
END recop_arch;
