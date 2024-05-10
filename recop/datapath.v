// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Fri May 10 10:06:31 2024"

module datapath(
	clk,
	reset,
	wren,
	zero,
	rf_init,
	Z,
	dpcr_lsb_sel,
	dpcr_wr,
	increment,
	opcodeIn,
	rf_sel,
	am,
	dpcr,
	ir_opcode
);


input wire	clk;
input wire	reset;
input wire	wren;
input wire	zero;
input wire	rf_init;
input wire	Z;
input wire	dpcr_lsb_sel;
input wire	dpcr_wr;
input wire	[2:0] increment;
input wire	[5:0] opcodeIn;
input wire	[3:0] rf_sel;
output wire	[1:0] am;
output wire	[31:0] dpcr;
output wire	[5:0] ir_opcode;

wire	clr_z;
wire	[15:0] data_out;
wire	init;
wire	ld_r;
wire	[15:0] operand;
wire	[15:0] r7;
wire	[15:0] rx;
wire	[15:0] rz;
wire	z_flag;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;





regfile	b2v_inst(
	.clk(clk),
	.init(init),
	.ld_r(ld_r),
	
	
	
	
	.aluout(data_out),
	
	.ir_operand(operand),
	.rf_input_sel(rf_sel),
	
	.sel_x(SYNTHESIZED_WIRE_0),
	.sel_z(SYNTHESIZED_WIRE_1),
	
	.r7(r7),
	.rx(rx),
	.rz(rz));


data_mem	b2v_inst1(
	.clock(clk),
	.wren(wren),
	.address(rz),
	.data(rx)
	);


alu	b2v_inst2(
	.clk(clk),
	.alu_op2_sel(opcodeIn[0]),
	
	.clr_z_flag(clr_z),
	.reset(reset),
	.alu_op1_sel(opcodeIn[2:1]),
	.alu_operation(opcodeIn[5:3]),
	.ir_operand(operand),
	.rx(rx),
	.rz(rz),
	
	.alu_result(data_out));


memory	b2v_inst3(
	.clk(clk),
	
	.dm_address(SYNTHESIZED_WIRE_7),
	
	.pm_address(SYNTHESIZED_WIRE_7),
	.dm_outdata(SYNTHESIZED_WIRE_6),
	.pm_outdata(SYNTHESIZED_WIRE_5));


registers	b2v_inst4(
	.clk(clk),
	.reset(reset),
	.dpcr_lsb_sel(dpcr_lsb_sel),
	.dpcr_wr(dpcr_wr),
	
	
	
	
	
	
	
	
	
	
	.ir_operand(operand),
	.r7(r7),
	.rx(rx),
	
	
	
	.dpcr(dpcr)
	
	
	
	);


program_counter	b2v_inst5(
	.clock(clk),
	.z(Z),
	.alu_count(data_out),
	.in_count(SYNTHESIZED_WIRE_7),
	.increment(increment),
	.operand_count(operand),
	.rx_count(rx),
	.rz_data(rz),
	.out_count(SYNTHESIZED_WIRE_7));


instruction_reg	b2v_inst7(
	.clock(clk),
	.instruction(SYNTHESIZED_WIRE_5),
	.operandIn(SYNTHESIZED_WIRE_6),
	.address_method(am),
	.opcode(ir_opcode),
	.operand(operand),
	.rx(SYNTHESIZED_WIRE_0),
	.rz(SYNTHESIZED_WIRE_1));

assign	init = rf_init;

endmodule
