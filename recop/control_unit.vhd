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
         
        clkOut : out bit_1; -- clock
        
        -- loaded/ stored signals
        rx_recv : in bit_1; -- increment program counter with rxdata
        rz_recv : in bit_1;
        
        -- program counter signals
        increment : out bit_3; -- increment program counter
        
        -- alu signals
        alu_opsel : out bit_6;
        
        -- load register 
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
        variable increment_q : bit_3;
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
--              copy paste below for adding additional operations
--                  when {opcode} =>
--                      case address_method is
--                          when am_inherent =>
--
--                          when am_immediate =>
--
--                          when am_direct =>
--
--                          when am_register =>
--
--                      end case;

                -- check opcode and output relevant control signals
            case opcodeIn is
--                  when jmp =>
--                      case address_method is
--                          when am_inherent =>
--                              -- do nothing
--                          when am_immediate =>
--                              -- PC <- Operand
--                              increment <= "101";
--                          when am_direct =>
--                              -- do nothing
--                          when am_register =>
--                              -- PC <- Rx
--                              if rx_recv = '1' then -- wait for rxdata
--                                  increment <= "100";
--                              end if;
--                      end case;
                    when ldr =>
								if rz_recv = '0' then								
									ld_r <= '1';
								else 
									ld_r <= '0';
									increment <= "001";
								end if; 
                        -- check address method
                        case address_method is
                            when am_inherent =>
                                -- nothing
                            when am_immediate => -- LDR RZ #Operand
                                rf_sel <= "0000";
                                rf_init <= '0';
                                
                            when am_direct => -- LDR RZ $Operand
                                rf_sel <= "1001";
                                rf_init <= '0';
                                
                            when am_register => -- LDR RZ M[Rx]
                                rf_sel <= "1000";
                                rf_init <= '0';
                        end case;
                        
                    --when str =>
--                      when am_inherent => -- None
--                          
--                      when am_immediate => -- M[Rz] <- Operand
--                          
--                      when am_direct => -- M[Operand] 
--                          
--                      when am_register => -- m[Rz] <- Rx
--                  when orr =>
--                      case address_method is
--                          when am_inherent =>
--                          when am_immediate =>
--                          when am_direct =>
--                          when am_register =>
--                              
                    
						when others =>
                        -- noop
                        -- clkOut <= '0';
            end case;  
        end if;
    end process;
        
    -- Assign control signals to outputs
    -- For example:
     
     clkOut <= clk; -- output clock
    -- clr_z_flag <= clr_z_flag_signal;
    -- dm_wr <= dm_wr_signal;
    -- wren <= wren_signal;
    -- ... and so on for other control signals

end architecture behavioral;
