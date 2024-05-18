	component NOC is
		port (
			buttons_pio_external_connection_in_port   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- in_port
			buttons_pio_external_connection_out_port  : out std_logic_vector(3 downto 0);                     -- out_port
			display0_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display0_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			display1_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display1_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			display2_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display2_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			display3_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display3_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			display4_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display4_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			display5_pio_external_connection_in_port  : in  std_logic_vector(6 downto 0)  := (others => 'X'); -- in_port
			display5_pio_external_connection_out_port : out std_logic_vector(6 downto 0);                     -- out_port
			dpcr_io_external_connection_in_port       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- in_port
			dpcr_io_external_connection_out_port      : out std_logic_vector(31 downto 0);                    -- out_port
			reset_reset_n                             : in  std_logic                     := 'X';             -- reset_n
			signalio_external_connection_in_port      : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- in_port
			signalio_external_connection_out_port     : out std_logic_vector(9 downto 0);                     -- out_port
			switches_pio_external_connection_in_port  : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- in_port
			switches_pio_external_connection_out_port : out std_logic_vector(9 downto 0);                     -- out_port
			clk_clk                                   : in  std_logic                     := 'X'              -- clk
		);
	end component NOC;

	u0 : component NOC
		port map (
			buttons_pio_external_connection_in_port   => CONNECTED_TO_buttons_pio_external_connection_in_port,   --  buttons_pio_external_connection.in_port
			buttons_pio_external_connection_out_port  => CONNECTED_TO_buttons_pio_external_connection_out_port,  --                                 .out_port
			display0_pio_external_connection_in_port  => CONNECTED_TO_display0_pio_external_connection_in_port,  -- display0_pio_external_connection.in_port
			display0_pio_external_connection_out_port => CONNECTED_TO_display0_pio_external_connection_out_port, --                                 .out_port
			display1_pio_external_connection_in_port  => CONNECTED_TO_display1_pio_external_connection_in_port,  -- display1_pio_external_connection.in_port
			display1_pio_external_connection_out_port => CONNECTED_TO_display1_pio_external_connection_out_port, --                                 .out_port
			display2_pio_external_connection_in_port  => CONNECTED_TO_display2_pio_external_connection_in_port,  -- display2_pio_external_connection.in_port
			display2_pio_external_connection_out_port => CONNECTED_TO_display2_pio_external_connection_out_port, --                                 .out_port
			display3_pio_external_connection_in_port  => CONNECTED_TO_display3_pio_external_connection_in_port,  -- display3_pio_external_connection.in_port
			display3_pio_external_connection_out_port => CONNECTED_TO_display3_pio_external_connection_out_port, --                                 .out_port
			display4_pio_external_connection_in_port  => CONNECTED_TO_display4_pio_external_connection_in_port,  -- display4_pio_external_connection.in_port
			display4_pio_external_connection_out_port => CONNECTED_TO_display4_pio_external_connection_out_port, --                                 .out_port
			display5_pio_external_connection_in_port  => CONNECTED_TO_display5_pio_external_connection_in_port,  -- display5_pio_external_connection.in_port
			display5_pio_external_connection_out_port => CONNECTED_TO_display5_pio_external_connection_out_port, --                                 .out_port
			dpcr_io_external_connection_in_port       => CONNECTED_TO_dpcr_io_external_connection_in_port,       --      dpcr_io_external_connection.in_port
			dpcr_io_external_connection_out_port      => CONNECTED_TO_dpcr_io_external_connection_out_port,      --                                 .out_port
			reset_reset_n                             => CONNECTED_TO_reset_reset_n,                             --                            reset.reset_n
			signalio_external_connection_in_port      => CONNECTED_TO_signalio_external_connection_in_port,      --     signalio_external_connection.in_port
			signalio_external_connection_out_port     => CONNECTED_TO_signalio_external_connection_out_port,     --                                 .out_port
			switches_pio_external_connection_in_port  => CONNECTED_TO_switches_pio_external_connection_in_port,  -- switches_pio_external_connection.in_port
			switches_pio_external_connection_out_port => CONNECTED_TO_switches_pio_external_connection_out_port, --                                 .out_port
			clk_clk                                   => CONNECTED_TO_clk_clk                                    --                              clk.clk
		);

