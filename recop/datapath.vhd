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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Mon May 06 10:42:18 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY datapath IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		increment :  IN  STD_LOGIC;
		wren :  IN  STD_LOGIC;
		zero :  IN  STD_LOGIC;
		wren_a :  IN  STD_LOGIC;
		wren_b :  IN  STD_LOGIC;
		rf_init :  IN  STD_LOGIC;
		opcodeIn :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		rf_sel :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		am :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		ir_opcode :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END datapath;

ARCHITECTURE bdf_type OF datapath IS 

COMPONENT regfile
	PORT(clk : IN STD_LOGIC;
		 init : IN STD_LOGIC;
		 ld_r : IN STD_LOGIC;
		 er_temp : IN STD_LOGIC;
		 dprr_res : IN STD_LOGIC;
		 dprr_res_reg : IN STD_LOGIC;
		 dprr_wren : IN STD_LOGIC;
		 aluout : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dm_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rf_input_sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 rz_max : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sel_x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sel_z : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sip_hold : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 r7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT data_mem
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 alu_op2_sel : IN STD_LOGIC;
		 alu_carry : IN STD_LOGIC;
		 clr_z_flag : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 alu_op1_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 alu_operation : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 z_flag : OUT STD_LOGIC;
		 alu_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT prog_mem
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT program_counter
	PORT(increment : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 in_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 out_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT instruction_reg
	PORT(clock : IN STD_LOGIC;
		 instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 address_method : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 rz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	am_ALTERA_SYNTHESIZED0 :  STD_LOGIC;
SIGNAL	am_ALTERA_SYNTHESIZED1 :  STD_LOGIC;
SIGNAL	clr_z :  STD_LOGIC;
SIGNAL	data_out :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	init :  STD_LOGIC;
SIGNAL	ld_r :  STD_LOGIC;
SIGNAL	next :  STD_LOGIC;
SIGNAL	operand :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rx :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	z_flag :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : regfile
PORT MAP(clk => clk,
		 init => init,
		 ld_r => ld_r,
		 aluout => data_out,
		 ir_operand => operand,
		 rf_input_sel => rf_sel,
		 sel_x => SYNTHESIZED_WIRE_0,
		 sel_z => SYNTHESIZED_WIRE_1,
		 rx => rx,
		 rz => SYNTHESIZED_WIRE_6);


b2v_inst1 : data_mem
PORT MAP(clock => clk,
		 wren => wren,
		 address => SYNTHESIZED_WIRE_6,
		 data => rx);


b2v_inst2 : alu
PORT MAP(clk => clk,
		 alu_op2_sel => opcodeIn(0),
		 clr_z_flag => clr_z,
		 reset => reset,
		 alu_op1_sel => opcodeIn(2 DOWNTO 1),
		 alu_operation => opcodeIn(5 DOWNTO 3),
		 ir_operand => operand,
		 rx => rx,
		 rz => SYNTHESIZED_WIRE_6,
		 alu_result => data_out);


b2v_inst3 : prog_mem
PORT MAP(clock => clk,
		 address => SYNTHESIZED_WIRE_4,
		 q => SYNTHESIZED_WIRE_5);


b2v_inst5 : program_counter
PORT MAP(increment => next,
		 clock => clk,
		 in_count => data_out,
		 out_count => SYNTHESIZED_WIRE_4);


b2v_inst7 : instruction_reg
PORT MAP(clock => clk,
		 instruction => SYNTHESIZED_WIRE_5,
		 opcode => ir_opcode,
		 operand => operand,
		 rx => SYNTHESIZED_WIRE_0,
		 rz => SYNTHESIZED_WIRE_1);

next <= increment;
init <= rf_init;

END bdf_type;