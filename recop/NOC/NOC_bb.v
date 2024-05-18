
module NOC (
	buttons_pio_external_connection_in_port,
	buttons_pio_external_connection_out_port,
	display0_pio_external_connection_in_port,
	display0_pio_external_connection_out_port,
	display1_pio_external_connection_in_port,
	display1_pio_external_connection_out_port,
	display2_pio_external_connection_in_port,
	display2_pio_external_connection_out_port,
	display3_pio_external_connection_in_port,
	display3_pio_external_connection_out_port,
	display4_pio_external_connection_in_port,
	display4_pio_external_connection_out_port,
	display5_pio_external_connection_in_port,
	display5_pio_external_connection_out_port,
	dpcr_io_external_connection_in_port,
	dpcr_io_external_connection_out_port,
	reset_reset_n,
	signalio_external_connection_in_port,
	signalio_external_connection_out_port,
	switches_pio_external_connection_in_port,
	switches_pio_external_connection_out_port,
	clk_clk);	

	input	[3:0]	buttons_pio_external_connection_in_port;
	output	[3:0]	buttons_pio_external_connection_out_port;
	input	[6:0]	display0_pio_external_connection_in_port;
	output	[6:0]	display0_pio_external_connection_out_port;
	input	[6:0]	display1_pio_external_connection_in_port;
	output	[6:0]	display1_pio_external_connection_out_port;
	input	[6:0]	display2_pio_external_connection_in_port;
	output	[6:0]	display2_pio_external_connection_out_port;
	input	[6:0]	display3_pio_external_connection_in_port;
	output	[6:0]	display3_pio_external_connection_out_port;
	input	[6:0]	display4_pio_external_connection_in_port;
	output	[6:0]	display4_pio_external_connection_out_port;
	input	[6:0]	display5_pio_external_connection_in_port;
	output	[6:0]	display5_pio_external_connection_out_port;
	input	[31:0]	dpcr_io_external_connection_in_port;
	output	[31:0]	dpcr_io_external_connection_out_port;
	input		reset_reset_n;
	input	[9:0]	signalio_external_connection_in_port;
	output	[9:0]	signalio_external_connection_out_port;
	input	[9:0]	switches_pio_external_connection_in_port;
	output	[9:0]	switches_pio_external_connection_out_port;
	input		clk_clk;
endmodule
