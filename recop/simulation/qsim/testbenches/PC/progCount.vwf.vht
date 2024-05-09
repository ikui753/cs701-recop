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
-- Generated on "05/10/2024 11:40:18"
                                                             
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
SIGNAL alu_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL in_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL increment : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL operand_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL out_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rx_count : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rz_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT progCounterTest
	PORT (
	alu_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	in_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	increment : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	operand_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	out_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rx_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rz_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : progCounterTest
	PORT MAP (
-- list connections between master ports and signals
	alu_count => alu_count,
	clk => clk,
	in_count => in_count,
	increment => increment,
	operand_count => operand_count,
	out_count => out_count,
	rx_count => rx_count,
	rz_data => rz_data,
	z => z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END progCounterTest_arch;
