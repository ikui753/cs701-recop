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
-- CREATED		"Fri May 17 14:57:36 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY recop IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clkIn :  IN  STD_LOGIC;
		sip :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		rf_init :  OUT  STD_LOGIC;
		ld_r :  OUT  STD_LOGIC;
		clk :  OUT  STD_LOGIC;
		wren :  OUT  STD_LOGIC;
		clr_z_flag :  OUT  STD_LOGIC;
		alu_z :  OUT  STD_LOGIC;
		addrSel :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		alu_opsel :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		alu_output :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		am :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		dataSel :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		dpcr :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		increment :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		instruction :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		memData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		opcode :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		operand_out :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		pc_count :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		present_sz_jmp :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		rf_sel :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		rxData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		rzData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sip_r :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		sop :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		state :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		storedData :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END recop;

ARCHITECTURE bdf_type OF recop IS 

COMPONENT program_counter
	PORT(clock : IN STD_LOGIC;
		 z : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 alu_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 in_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 increment : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 operand_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 state : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 out_count : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT prog_mem
	PORT(clock : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT instruction_reg
	PORT(clock : IN STD_LOGIC;
		 instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 state : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 address_method : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 operand : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 rz : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

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
		 mem_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
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

COMPONENT dataaddrmux
	PORT(clk : IN STD_LOGIC;
		 alu_z : IN STD_LOGIC;
		 addrSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 dataSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 pc_count : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rxData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rzData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 addrOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 present_sz_Jmp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT control_unit
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 address_method : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 opcodeIn : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 present_sz_jmp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 clkOut : OUT STD_LOGIC;
		 ld_r : OUT STD_LOGIC;
		 clr_z_flag : OUT STD_LOGIC;
		 dm_wr : OUT STD_LOGIC;
		 rf_init : OUT STD_LOGIC;
		 z : OUT STD_LOGIC;
		 dpcr_lsb_sel : OUT STD_LOGIC;
		 dpcr_wr : OUT STD_LOGIC;
		 wren : OUT STD_LOGIC;
		 sop_wr : OUT STD_LOGIC;
		 addrSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 alu_opsel : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 dataSel : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 increment : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 rf_sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 stateOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT registers
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 dpcr_lsb_sel : IN STD_LOGIC;
		 dpcr_wr : IN STD_LOGIC;
		 sop_wr : IN STD_LOGIC;
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 r7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sip : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 dpcr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 sip_r : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		 sop : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alu
	PORT(clk : IN STD_LOGIC;
		 alu_carry : IN STD_LOGIC;
		 clr_z_flag : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 alu_op1_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 alu_op2_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 alu_operation : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 ir_operand : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rx : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 rz : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 z_flag : OUT STD_LOGIC;
		 alu_result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	addrSel_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	alu_opsel_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	alu_result :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	alu_z_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	clk_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	clr_z_flag_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	dataSel_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	dpcr_lsb_sel :  STD_LOGIC;
SIGNAL	dpcr_wr :  STD_LOGIC;
SIGNAL	increment_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	instruction_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	ld_r_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	memData_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	opcode_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	operand :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	pc_count_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	present_sz_jmp_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	r7 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rf_init_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	rf_sel_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	rxData_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	rzData_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	sip_r_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	sop_wr :  STD_LOGIC;
SIGNAL	state_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	wren_ALTERA_SYNTHESIZED :  STD_LOGIC;
SIGNAL	z :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(1 DOWNTO 0);


BEGIN 
am <= SYNTHESIZED_WIRE_4;
storedData <= SYNTHESIZED_WIRE_3;



b2v_inst : program_counter
PORT MAP(clock => clk_ALTERA_SYNTHESIZED,
		 z => z,
		 reset => reset,
		 alu_count => alu_result,
		 in_count => pc_count_ALTERA_SYNTHESIZED,
		 increment => increment_ALTERA_SYNTHESIZED,
		 operand_count => operand,
		 rx_count => rxData_ALTERA_SYNTHESIZED,
		 rz_data => rzData_ALTERA_SYNTHESIZED,
		 state => state_ALTERA_SYNTHESIZED,
		 out_count => pc_count_ALTERA_SYNTHESIZED);


b2v_inst10 : prog_mem
PORT MAP(clock => clk_ALTERA_SYNTHESIZED,
		 address => pc_count_ALTERA_SYNTHESIZED(14 DOWNTO 0),
		 q => instruction_ALTERA_SYNTHESIZED);


b2v_inst2 : instruction_reg
PORT MAP(clock => clk_ALTERA_SYNTHESIZED,
		 instruction => instruction_ALTERA_SYNTHESIZED,
		 state => state_ALTERA_SYNTHESIZED,
		 address_method => SYNTHESIZED_WIRE_4,
		 opcode => opcode_ALTERA_SYNTHESIZED,
		 operand => operand,
		 rx => SYNTHESIZED_WIRE_0,
		 rz => SYNTHESIZED_WIRE_1);


b2v_inst3 : regfile
PORT MAP(clk => clk_ALTERA_SYNTHESIZED,
		 init => rf_init_ALTERA_SYNTHESIZED,
		 ld_r => ld_r_ALTERA_SYNTHESIZED,
		 aluout => alu_result,
		 ir_operand => operand,
		 mem_data => memData_ALTERA_SYNTHESIZED,
		 rf_input_sel => rf_sel_ALTERA_SYNTHESIZED,
		 sel_x => SYNTHESIZED_WIRE_0,
		 sel_z => SYNTHESIZED_WIRE_1,
		 sip_hold => sip_r_ALTERA_SYNTHESIZED,
		 r7 => r7,
		 rx => rxData_ALTERA_SYNTHESIZED,
		 rz => rzData_ALTERA_SYNTHESIZED);


b2v_inst4 : data_mem
PORT MAP(clock => clk_ALTERA_SYNTHESIZED,
		 wren => wren_ALTERA_SYNTHESIZED,
		 address => SYNTHESIZED_WIRE_2,
		 data => SYNTHESIZED_WIRE_3,
		 q => memData_ALTERA_SYNTHESIZED);


b2v_inst6 : dataaddrmux
PORT MAP(clk => clk_ALTERA_SYNTHESIZED,
		 alu_z => alu_z_ALTERA_SYNTHESIZED,
		 addrSel => addrSel_ALTERA_SYNTHESIZED,
		 dataSel => dataSel_ALTERA_SYNTHESIZED,
		 opcode => opcode_ALTERA_SYNTHESIZED,
		 operand => operand,
		 pc_count => pc_count_ALTERA_SYNTHESIZED,
		 rxData => rxData_ALTERA_SYNTHESIZED,
		 rzData => rzData_ALTERA_SYNTHESIZED,
		 addrOut => SYNTHESIZED_WIRE_2,
		 dataOut => SYNTHESIZED_WIRE_3,
		 present_sz_Jmp => present_sz_jmp_ALTERA_SYNTHESIZED);


b2v_inst7 : control_unit
PORT MAP(clk => clkIn,
		 reset => reset,
		 address_method => SYNTHESIZED_WIRE_4,
		 opcodeIn => opcode_ALTERA_SYNTHESIZED,
		 present_sz_jmp => present_sz_jmp_ALTERA_SYNTHESIZED,
		 clkOut => clk_ALTERA_SYNTHESIZED,
		 ld_r => ld_r_ALTERA_SYNTHESIZED,
		 clr_z_flag => clr_z_flag_ALTERA_SYNTHESIZED,
		 rf_init => rf_init_ALTERA_SYNTHESIZED,
		 z => z,
		 dpcr_lsb_sel => dpcr_lsb_sel,
		 dpcr_wr => dpcr_wr,
		 wren => wren_ALTERA_SYNTHESIZED,
		 sop_wr => sop_wr,
		 addrSel => addrSel_ALTERA_SYNTHESIZED,
		 alu_opsel => alu_opsel_ALTERA_SYNTHESIZED,
		 dataSel => dataSel_ALTERA_SYNTHESIZED,
		 increment => increment_ALTERA_SYNTHESIZED,
		 rf_sel => rf_sel_ALTERA_SYNTHESIZED,
		 stateOut => state_ALTERA_SYNTHESIZED);


b2v_inst8 : registers
PORT MAP(clk => clk_ALTERA_SYNTHESIZED,
		 dpcr_lsb_sel => dpcr_lsb_sel,
		 dpcr_wr => dpcr_wr,
		 sop_wr => sop_wr,
		 ir_operand => operand,
		 r7 => r7,
		 rx => rxData_ALTERA_SYNTHESIZED,
		 sip => sip,
		 dpcr => dpcr,
		 sip_r => sip_r_ALTERA_SYNTHESIZED,
		 sop => sop);


b2v_inst9 : alu
PORT MAP(clk => clk_ALTERA_SYNTHESIZED,
		 clr_z_flag => clr_z_flag_ALTERA_SYNTHESIZED,
		 alu_op1_sel => alu_opsel_ALTERA_SYNTHESIZED(3 DOWNTO 2),
		 alu_op2_sel => alu_opsel_ALTERA_SYNTHESIZED(1 DOWNTO 0),
		 alu_operation => alu_opsel_ALTERA_SYNTHESIZED(6 DOWNTO 4),
		 ir_operand => operand,
		 rx => rxData_ALTERA_SYNTHESIZED,
		 rz => rzData_ALTERA_SYNTHESIZED,
		 z_flag => alu_z_ALTERA_SYNTHESIZED,
		 alu_result => alu_result);

rf_init <= rf_init_ALTERA_SYNTHESIZED;
ld_r <= ld_r_ALTERA_SYNTHESIZED;
clk <= clk_ALTERA_SYNTHESIZED;
wren <= wren_ALTERA_SYNTHESIZED;
clr_z_flag <= clr_z_flag_ALTERA_SYNTHESIZED;
alu_z <= alu_z_ALTERA_SYNTHESIZED;
addrSel <= addrSel_ALTERA_SYNTHESIZED;
alu_opsel <= alu_opsel_ALTERA_SYNTHESIZED;
alu_output <= alu_result;
dataSel <= dataSel_ALTERA_SYNTHESIZED;
increment <= increment_ALTERA_SYNTHESIZED;
instruction <= instruction_ALTERA_SYNTHESIZED;
memData <= memData_ALTERA_SYNTHESIZED;
opcode <= opcode_ALTERA_SYNTHESIZED;
operand_out <= operand;
pc_count <= pc_count_ALTERA_SYNTHESIZED;
present_sz_jmp <= present_sz_jmp_ALTERA_SYNTHESIZED;
rf_sel <= rf_sel_ALTERA_SYNTHESIZED;
rxData <= rxData_ALTERA_SYNTHESIZED;
rzData <= rzData_ALTERA_SYNTHESIZED;
sip_r <= sip_r_ALTERA_SYNTHESIZED;
state <= state_ALTERA_SYNTHESIZED;

END bdf_type;