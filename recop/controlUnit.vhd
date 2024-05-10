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

    -- Define constants for opcodes here
    constant AND_CODE : string := "001000";
    constant OR_CODE : string := "001100";
    constant ADD_CODE : string := "111000";
    constant SUBV_CODE : string := "000011";
    constant SUB_CODE : string := "000100";
    constant LDR_CODE : string := "000000";
    constant STR_CODE : string := "000010";
    constant JMP_CODE : string := "011000";
    constant PRESENT_CODE : string := "011100";
    constant DCALLBL_CODE : string := "101000";
    constant DCALLNB_CODE : string := "101001";
    constant SZ_CODE : string := "010100";
    constant CLFZ_CODE : string := "010000";
    constant CER_CODE : string := "111100";
    constant CEOT_CODE : string := "111110";
    constant SEOT_CODE : string := "111111";
    constant LER_CODE : string := "110110";
    constant SSV_CODE : string := "111011";
    constant LSIP_CODE : string := "110111";
    constant SSOP_CODE : string := "111010";
    constant NOOP_CODE : string := "110100";
    constant MAX_CODE : string := "011110";
    constant STRPC_CODE : string := "011101";

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
            case opcodeIn is
					when ldr =>
						-- check address method
						case address_method is
							when am_inherent =>
								-- nothing
							when am_immediate => -- LDR RZ #Operand
								
								rf_sel <= "0000";
								ld_r <= '1';
								rf_init <= '0';
							when am_direct => -- LDR RZ $Operand
								
							when am_register => -- LDR RZ M[Rx]
								
						end case;
						
					--when str =>
--						when am_inherent => -- None
--							
--						when am_immediate => -- M[Rz] <- Operand
--							
--						when am_direct => -- M[Operand] 
--							
--						when am_register => -- m[Rz] <- Rx
					
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
