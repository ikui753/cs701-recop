library ieee;
use ieee.std_logic_1164.all;
use work.opcodes.all;
use work.various_constants.all;
use work.recop_types.all;

entity top_level is
	port (
		CLOCK_50      : in    std_logic;
		CLOCK2_50     : in    std_logic;
		CLOCK3_50     : in    std_logic;

		FPGA_I2C_SCLK : out   std_logic;
		FPGA_I2C_SDAT : inout std_logic;
		AUD_ADCDAT    : in    std_logic;
		AUD_ADCLRCK   : inout std_logic;
		AUD_BCLK      : inout std_logic;
		AUD_DACDAT    : out   std_logic;
		AUD_DACLRCK   : inout std_logic;
		AUD_XCK       : out   std_logic;

		KEY           : in    std_logic_vector(3 downto 0);
		SW            : in    std_logic_vector(9 downto 0);
		LEDR          : out   std_logic_vector(9 downto 0);
		HEX0          : out   std_logic_vector(6 downto 0);
		HEX1          : out   std_logic_vector(6 downto 0);
		HEX2          : out   std_logic_vector(6 downto 0);
		HEX3          : out   std_logic_vector(6 downto 0);
		HEX4          : out   std_logic_vector(6 downto 0);
		HEX5          : out   std_logic_vector(6 downto 0)
	);
end entity;

architecture rtl of top_level is

	signal clock : std_logic;

	signal adc_empty : std_logic;
	signal adc_get   : std_logic;
	signal adc_data  : std_logic_vector(16 downto 0);
	signal dac_full  : std_logic;
	signal dac_put   : std_logic;
	signal dac_data  : std_logic_vector(16 downto 0);

	
	component NOC is
		port (
			buttons_pio_external_connection_export  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			clk_clk                                 : in  std_logic                     := 'X';             -- clk
			display0_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display1_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display2_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display3_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display4_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display5_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			led_pio_external_connection_export      : out std_logic_vector(9 downto 0);                     -- export
			reset_reset_n                           : in  std_logic                     := 'X';             -- reset_n
			switches_pio_external_connection_export : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			addr_in_pio_external_connection_export  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			addr_out_pio_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			data_in_pio_external_connection_export  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			data_out_pio_external_connection_export : out  std_logic_vector(31 downto 0) := (others => 'X')  -- export
		);
	end component NOC;
	
	
	begin
		clock <= CLOCK_50;
		
		recopComponent : entity work.recopDesign
		port map (
			reset =>  KEY(0),
			clkIn => clock,
			sip =>  OPEN, -- connect to data out on NOC
			rf_init =>  OPEN,
			ld_r =>  OPEN,
			clk =>  OPEN,
			wren =>  OPEN, -- maybe connect to LED?
			clr_z_flag => OPEN,
			alu_z => OPEN,
			dpcr_wr => OPEN, -- maybe connect to LED
			sop_wr =>  OPEN, -- maybe connect to LED
			addrSel =>  OPEN,
			alu_opsel =>  OPEN,
			alu_output =>  OPEN,
			am  =>  OPEN,
			dataSel =>  OPEN,
			dpcr =>  OPEN, -- connect to 32-bit data in on NOC
			increment =>  OPEN,
			instruction =>  OPEN,
			memData =>  OPEN,
			opcode =>  OPEN,
			operand_out =>  OPEN,
			pc_count =>  OPEN,
			present_sz_jmp =>  OPEN,
			rf_sel =>  OPEN,
			rx_sel =>  OPEN,
			rxData =>  OPEN,
			rz_sel =>  OPEN,
			rzData =>  OPEN,
			sip_r =>  OPEN, -- connect to data out on NOC
			sop =>  OPEN, -- connect to 32-bit data in on NOC
			state =>  OPEN,
			storedData =>  OPEN
		);
		
		nios : component NOC
		 port map (
			  buttons_pio_external_connection_export  => SW(3 downto 0), -- Assuming SW is connected to buttons
			  clk_clk                                 => CLOCK_50, -- Assuming CLOCK_50 is your main clock
			  display0_pio_external_connection_export => HEX0,
			  display1_pio_external_connection_export => HEX1,
			  display2_pio_external_connection_export => HEX2,
			  display3_pio_external_connection_export => HEX3,
			  display4_pio_external_connection_export => HEX4,
			  display5_pio_external_connection_export => HEX5,
			  led_pio_external_connection_export      => LEDR,
			  reset_reset_n                           => KEY(0), -- Assuming KEY(0) is connected to reset
			  switches_pio_external_connection_export => SW(9 downto 0), -- Assuming switches are connected to SW
			  addr_in_pio_external_connection_export  => OPEN, -- 8-bit from recop
			  addr_out_pio_external_connection_export => OPEN, -- 8-bit to recop
			  data_in_pio_external_connection_export  => OPEN, -- SOP from RECOP
			  data_out_pio_external_connection_export => OPEN -- SIP into RECOP
		 );
		 
end architecture;
	