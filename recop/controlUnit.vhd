library ieee;
use ieee.std_logic_1164.all;

entity control_unit is
    port (
		  clk : in std_logic;
        reset : in std_logic;
        opcodeIn : in std_logic_vector(5 downto 0);
        
		  clkOut : out std_logic;
		  increment : out bit_2;
        opcodeOut : out bit_6;
        clr_z_flag : out std_logic;
        dm_wr : out std_logic;
        wren : out std_logic;
		  rf_sel : out bit_3;
		  rf_init : out bit_1;
		  z : out bit_1;
		  dpcr_lsb_sel : out bit_1;
		  dpcr_wr : out bit_1;
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
					when "000000" =>
					alu_op1_sel_signal <= "10";
					alu_op2_sel_signal <= '0';
					clr_z_flag_signal <= '1';
					dm_wr_signal <= '0';
					wren_signal <= '0';
              
					when "000010" =>
					
            --     when others =>
            --         -- Default case, set control signals to default values
            -- end case;
        end if;
    end process;

    -- Assign control signals to outputs
    -- For example:
    -- alu_op1_sel <= alu_op1_sel_signal;
    -- alu_op2_sel <= alu_op2_sel_signal;
    -- clr_z_flag <= clr_z_flag_signal;
    -- dm_wr <= dm_wr_signal;
    -- wren <= wren_signal;
    -- ... and so on for other control signals

end architecture behavioral;
