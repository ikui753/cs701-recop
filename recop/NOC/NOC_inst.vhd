	component NOC is
		port (
			addr_in_pio_external_connection_export  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			addr_out_pio_external_connection_export : out std_logic_vector(7 downto 0);                     -- export
			buttons_pio_external_connection_export  : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			clk_clk                                 : in  std_logic                     := 'X';             -- clk
			data_in_pio_external_connection_export  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- export
			data_out_pio_external_connection_export : out std_logic_vector(31 downto 0);                    -- export
			display0_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display1_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display2_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display3_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display4_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			display5_pio_external_connection_export : out std_logic_vector(6 downto 0);                     -- export
			led_pio_external_connection_export      : out std_logic_vector(9 downto 0);                     -- export
			reset_reset_n                           : in  std_logic                     := 'X';             -- reset_n
			switches_pio_external_connection_export : in  std_logic_vector(9 downto 0)  := (others => 'X')  -- export
		);
	end component NOC;

	u0 : component NOC
		port map (
			addr_in_pio_external_connection_export  => CONNECTED_TO_addr_in_pio_external_connection_export,  --  addr_in_pio_external_connection.export
			addr_out_pio_external_connection_export => CONNECTED_TO_addr_out_pio_external_connection_export, -- addr_out_pio_external_connection.export
			buttons_pio_external_connection_export  => CONNECTED_TO_buttons_pio_external_connection_export,  --  buttons_pio_external_connection.export
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                              clk.clk
			data_in_pio_external_connection_export  => CONNECTED_TO_data_in_pio_external_connection_export,  --  data_in_pio_external_connection.export
			data_out_pio_external_connection_export => CONNECTED_TO_data_out_pio_external_connection_export, -- data_out_pio_external_connection.export
			display0_pio_external_connection_export => CONNECTED_TO_display0_pio_external_connection_export, -- display0_pio_external_connection.export
			display1_pio_external_connection_export => CONNECTED_TO_display1_pio_external_connection_export, -- display1_pio_external_connection.export
			display2_pio_external_connection_export => CONNECTED_TO_display2_pio_external_connection_export, -- display2_pio_external_connection.export
			display3_pio_external_connection_export => CONNECTED_TO_display3_pio_external_connection_export, -- display3_pio_external_connection.export
			display4_pio_external_connection_export => CONNECTED_TO_display4_pio_external_connection_export, -- display4_pio_external_connection.export
			display5_pio_external_connection_export => CONNECTED_TO_display5_pio_external_connection_export, -- display5_pio_external_connection.export
			led_pio_external_connection_export      => CONNECTED_TO_led_pio_external_connection_export,      --      led_pio_external_connection.export
			reset_reset_n                           => CONNECTED_TO_reset_reset_n,                           --                            reset.reset_n
			switches_pio_external_connection_export => CONNECTED_TO_switches_pio_external_connection_export  -- switches_pio_external_connection.export
		);

