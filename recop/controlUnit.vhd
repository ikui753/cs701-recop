library ieee;
use ieee.std_logic_1164.all;
use work.opcodes.all;
use work.various_constants.all;
use work.recop_types.all;

entity control_unit is
    port (
		  clk : in bit_1;
        reset : in bit_1;
        opcodeIn : in bit_6;
        address_method : in bit_2;
		  
		  clkOut : out bit_1;
		  increment : out bit_3;
        opcodeOut : out bit_6;
		  ld_r : out bit_1; 
        clr_z_flag : out bit_1;
        dm_wr : out bit_1;
        wren : out bit_1;
		  rf_sel : out bit_4;
		  rf_init : out bit_1;
		  z : out bit_1;
		  dpcr_lsb_sel : out bit_1;
		  dpcr_wr : out bit_1
        -- ... and so on for other control signals
    );
end entity control_unit;

architecture behavioral of control_unit is

    -- Define control signals here
    -- For example:
    -- signal alu_op1_sel_signal : std_logic_vector(1 downto 0);
    -- signal alu_op2_sel_signal : std_logic;
    -- signal clr_z_flag_signal : std_logic;
    -- signal dm_wr_signal : std_logic;
    -- signal wren_signal : std_logic;
    -- ... and so on for other control signals

begin

    process (clk, reset)
    begin
        if reset = '1' then
            -- Initialize control signals to default values
            -- For example:
            -- alu_op1_sel_signal <= "00";
            -- alu_op2_sel_signal <= '0';
            -- clr_z_flag_signal <= '0';
            -- dm_wr_signal <= '0';
            -- wren_signal <= '0';
            -- ... and so on for other control signals
        elsif rising_edge(clk) then
            -- Based on the opcode, generate control signals
            -- Use a case statement or if-elsif-else structure
            -- For example:
            case opcodeIn is
					when ldr =>
						case address_method is
							when am_inherent =>
								
							when am_immediate =>
								-- set control signals 
								rf_sel <= "0000";
								ld_r <= '1';
								rf_init <= '0';
							when am_direct =>
								
							when am_register =>
								
					when "000010" =>
					
               when others =>
						-- noop
						clkOut <= '0';
            end case;
        end if;
    end process;

    -- Assign control signals to outputs
    -- For example:
    -- clr_z_flag <= clr_z_flag_signal;
    -- dm_wr <= dm_wr_signal;
    -- wren <= wren_signal;
    -- ... and so on for other control signals

end architecture behavioral;
