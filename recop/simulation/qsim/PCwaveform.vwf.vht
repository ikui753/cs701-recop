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
-- Generated on "05/10/2024 12:50:01"
                                                             
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
-- increment[2]
t_prcs_increment_2: PROCESS
BEGIN
	increment(2) <= '0';
	WAIT FOR 10000 ps;
	increment(2) <= '1';
	WAIT FOR 280000 ps;
	increment(2) <= '0';
	WAIT FOR 220000 ps;
	increment(2) <= '1';
	WAIT FOR 90000 ps;
	increment(2) <= '0';
WAIT;
END PROCESS t_prcs_increment_2;
-- increment[1]
t_prcs_increment_1: PROCESS
BEGIN
	increment(1) <= '0';
	WAIT FOR 10000 ps;
	increment(1) <= '1';
	WAIT FOR 270000 ps;
	increment(1) <= '0';
	WAIT FOR 230000 ps;
	increment(1) <= '1';
	WAIT FOR 90000 ps;
	increment(1) <= '0';
WAIT;
END PROCESS t_prcs_increment_1;
-- increment[0]
t_prcs_increment_0: PROCESS
BEGIN
	increment(0) <= '0';
	WAIT FOR 510000 ps;
	increment(0) <= '1';
	WAIT FOR 90000 ps;
	increment(0) <= '0';
WAIT;
END PROCESS t_prcs_increment_0;
-- alu_count[15]
t_prcs_alu_count_15: PROCESS
BEGIN
	alu_count(15) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_15;
-- alu_count[14]
t_prcs_alu_count_14: PROCESS
BEGIN
	alu_count(14) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_14;
-- alu_count[13]
t_prcs_alu_count_13: PROCESS
BEGIN
	alu_count(13) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_13;
-- alu_count[12]
t_prcs_alu_count_12: PROCESS
BEGIN
	alu_count(12) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_12;
-- alu_count[11]
t_prcs_alu_count_11: PROCESS
BEGIN
	alu_count(11) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_11;
-- alu_count[10]
t_prcs_alu_count_10: PROCESS
BEGIN
	alu_count(10) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_10;
-- alu_count[9]
t_prcs_alu_count_9: PROCESS
BEGIN
	alu_count(9) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_9;
-- alu_count[8]
t_prcs_alu_count_8: PROCESS
BEGIN
	alu_count(8) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_8;
-- alu_count[7]
t_prcs_alu_count_7: PROCESS
BEGIN
	alu_count(7) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_7;
-- alu_count[6]
t_prcs_alu_count_6: PROCESS
BEGIN
	alu_count(6) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_6;
-- alu_count[5]
t_prcs_alu_count_5: PROCESS
BEGIN
	alu_count(5) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_5;
-- alu_count[4]
t_prcs_alu_count_4: PROCESS
BEGIN
	alu_count(4) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_4;
-- alu_count[3]
t_prcs_alu_count_3: PROCESS
BEGIN
	alu_count(3) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_3;
-- alu_count[2]
t_prcs_alu_count_2: PROCESS
BEGIN
	alu_count(2) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_2;
-- alu_count[1]
t_prcs_alu_count_1: PROCESS
BEGIN
	alu_count(1) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_1;
-- alu_count[0]
t_prcs_alu_count_0: PROCESS
BEGIN
	alu_count(0) <= '0';
WAIT;
END PROCESS t_prcs_alu_count_0;
-- operand_count[15]
t_prcs_operand_count_15: PROCESS
BEGIN
	operand_count(15) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_15;
-- operand_count[14]
t_prcs_operand_count_14: PROCESS
BEGIN
	operand_count(14) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_14;
-- operand_count[13]
t_prcs_operand_count_13: PROCESS
BEGIN
	operand_count(13) <= '0';
	WAIT FOR 20000 ps;
	operand_count(13) <= '1';
	WAIT FOR 300000 ps;
	operand_count(13) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_13;
-- operand_count[12]
t_prcs_operand_count_12: PROCESS
BEGIN
	operand_count(12) <= '0';
	WAIT FOR 20000 ps;
	operand_count(12) <= '1';
	WAIT FOR 300000 ps;
	operand_count(12) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_12;
-- operand_count[11]
t_prcs_operand_count_11: PROCESS
BEGIN
	operand_count(11) <= '0';
	WAIT FOR 510000 ps;
	operand_count(11) <= '1';
	WAIT FOR 80000 ps;
	operand_count(11) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_11;
-- operand_count[10]
t_prcs_operand_count_10: PROCESS
BEGIN
	operand_count(10) <= '0';
	WAIT FOR 510000 ps;
	operand_count(10) <= '1';
	WAIT FOR 80000 ps;
	operand_count(10) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_10;
-- operand_count[9]
t_prcs_operand_count_9: PROCESS
BEGIN
	operand_count(9) <= '0';
	WAIT FOR 510000 ps;
	operand_count(9) <= '1';
	WAIT FOR 80000 ps;
	operand_count(9) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_9;
-- operand_count[8]
t_prcs_operand_count_8: PROCESS
BEGIN
	operand_count(8) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_8;
-- operand_count[7]
t_prcs_operand_count_7: PROCESS
BEGIN
	operand_count(7) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_7;
-- operand_count[6]
t_prcs_operand_count_6: PROCESS
BEGIN
	operand_count(6) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_6;
-- operand_count[5]
t_prcs_operand_count_5: PROCESS
BEGIN
	operand_count(5) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_5;
-- operand_count[4]
t_prcs_operand_count_4: PROCESS
BEGIN
	operand_count(4) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_4;
-- operand_count[3]
t_prcs_operand_count_3: PROCESS
BEGIN
	operand_count(3) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_3;
-- operand_count[2]
t_prcs_operand_count_2: PROCESS
BEGIN
	operand_count(2) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_2;
-- operand_count[1]
t_prcs_operand_count_1: PROCESS
BEGIN
	operand_count(1) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_1;
-- operand_count[0]
t_prcs_operand_count_0: PROCESS
BEGIN
	operand_count(0) <= '0';
WAIT;
END PROCESS t_prcs_operand_count_0;
-- rx_count[15]
t_prcs_rx_count_15: PROCESS
BEGIN
	rx_count(15) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_15;
-- rx_count[14]
t_prcs_rx_count_14: PROCESS
BEGIN
	rx_count(14) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_14;
-- rx_count[13]
t_prcs_rx_count_13: PROCESS
BEGIN
	rx_count(13) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_13;
-- rx_count[12]
t_prcs_rx_count_12: PROCESS
BEGIN
	rx_count(12) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_12;
-- rx_count[11]
t_prcs_rx_count_11: PROCESS
BEGIN
	rx_count(11) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_11;
-- rx_count[10]
t_prcs_rx_count_10: PROCESS
BEGIN
	rx_count(10) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_10;
-- rx_count[9]
t_prcs_rx_count_9: PROCESS
BEGIN
	rx_count(9) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_9;
-- rx_count[8]
t_prcs_rx_count_8: PROCESS
BEGIN
	rx_count(8) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_8;
-- rx_count[7]
t_prcs_rx_count_7: PROCESS
BEGIN
	rx_count(7) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_7;
-- rx_count[6]
t_prcs_rx_count_6: PROCESS
BEGIN
	rx_count(6) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_6;
-- rx_count[5]
t_prcs_rx_count_5: PROCESS
BEGIN
	rx_count(5) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_5;
-- rx_count[4]
t_prcs_rx_count_4: PROCESS
BEGIN
	rx_count(4) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_4;
-- rx_count[3]
t_prcs_rx_count_3: PROCESS
BEGIN
	rx_count(3) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_3;
-- rx_count[2]
t_prcs_rx_count_2: PROCESS
BEGIN
	rx_count(2) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_2;
-- rx_count[1]
t_prcs_rx_count_1: PROCESS
BEGIN
	rx_count(1) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_1;
-- rx_count[0]
t_prcs_rx_count_0: PROCESS
BEGIN
	rx_count(0) <= '0';
WAIT;
END PROCESS t_prcs_rx_count_0;
-- rz_data[15]
t_prcs_rz_data_15: PROCESS
BEGIN
	rz_data(15) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_15;
-- rz_data[14]
t_prcs_rz_data_14: PROCESS
BEGIN
	rz_data(14) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_14;
-- rz_data[13]
t_prcs_rz_data_13: PROCESS
BEGIN
	rz_data(13) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_13;
-- rz_data[12]
t_prcs_rz_data_12: PROCESS
BEGIN
	rz_data(12) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_12;
-- rz_data[11]
t_prcs_rz_data_11: PROCESS
BEGIN
	rz_data(11) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_11;
-- rz_data[10]
t_prcs_rz_data_10: PROCESS
BEGIN
	rz_data(10) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_10;
-- rz_data[9]
t_prcs_rz_data_9: PROCESS
BEGIN
	rz_data(9) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_9;
-- rz_data[8]
t_prcs_rz_data_8: PROCESS
BEGIN
	rz_data(8) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_8;
-- rz_data[7]
t_prcs_rz_data_7: PROCESS
BEGIN
	rz_data(7) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_7;
-- rz_data[6]
t_prcs_rz_data_6: PROCESS
BEGIN
	rz_data(6) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_6;
-- rz_data[5]
t_prcs_rz_data_5: PROCESS
BEGIN
	rz_data(5) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_5;
-- rz_data[4]
t_prcs_rz_data_4: PROCESS
BEGIN
	rz_data(4) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_4;
-- rz_data[3]
t_prcs_rz_data_3: PROCESS
BEGIN
	rz_data(3) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_3;
-- rz_data[2]
t_prcs_rz_data_2: PROCESS
BEGIN
	rz_data(2) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_2;
-- rz_data[1]
t_prcs_rz_data_1: PROCESS
BEGIN
	rz_data(1) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_1;
-- rz_data[0]
t_prcs_rz_data_0: PROCESS
BEGIN
	rz_data(0) <= '0';
	WAIT FOR 30000 ps;
	rz_data(0) <= '1';
	WAIT FOR 30000 ps;
	rz_data(0) <= '0';
WAIT;
END PROCESS t_prcs_rz_data_0;

-- z
t_prcs_z: PROCESS
BEGIN
	z <= '0';
	WAIT FOR 510000 ps;
	z <= '1';
	WAIT FOR 20000 ps;
	z <= '0';
WAIT;
END PROCESS t_prcs_z;
END progCounterTest_arch;
