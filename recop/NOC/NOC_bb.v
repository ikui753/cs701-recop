
module NOC (
	addr_in_pio_external_connection_export,
	addr_out_pio_external_connection_export,
	buttons_pio_external_connection_export,
	clk_clk,
	data_in_pio_external_connection_export,
	data_out_pio_external_connection_export,
	display0_pio_external_connection_export,
	display1_pio_external_connection_export,
	display2_pio_external_connection_export,
	display3_pio_external_connection_export,
	display4_pio_external_connection_export,
	display5_pio_external_connection_export,
	led_pio_external_connection_export,
	reset_reset_n,
	switches_pio_external_connection_export);	

	input	[7:0]	addr_in_pio_external_connection_export;
	output	[7:0]	addr_out_pio_external_connection_export;
	input	[3:0]	buttons_pio_external_connection_export;
	input		clk_clk;
	input	[31:0]	data_in_pio_external_connection_export;
	output	[31:0]	data_out_pio_external_connection_export;
	output	[6:0]	display0_pio_external_connection_export;
	output	[6:0]	display1_pio_external_connection_export;
	output	[6:0]	display2_pio_external_connection_export;
	output	[6:0]	display3_pio_external_connection_export;
	output	[6:0]	display4_pio_external_connection_export;
	output	[6:0]	display5_pio_external_connection_export;
	output	[9:0]	led_pio_external_connection_export;
	input		reset_reset_n;
	input	[9:0]	switches_pio_external_connection_export;
endmodule
