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
		  alu_rz_recv : in bit_1; -- check registers to see if they've been loaded
		  alu_rx_recv : in bit_1;
		  rz_recv : in bit_1;
		  rx_recv: in bit_1;
        
        -- program counter signals
        increment : out bit_4; -- increment program counter
        
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
	
    type cuStates is (idle, fetch, decode, execute, memory, writeback);
	 signal currentState : cuStates := fetch;
	 signal nextState : cuStates;

 begin

    SWITCH_STATES : process (clk) is 
    begin
		if rising_edge(clk) then
			if (reset = '1') then
				currentState <= idle;
			else
				currentState <= nextState;
			end if;
		end if;
    end process;
	 
	 OUTPUTS : process(currentState, address_method, opcodeIn) is
	 begin
		case currentState is
			when idle =>
				increment <= "1000"; -- set PC to 0
				nextState <= fetch;
			when fetch =>
				increment <= "0000"; -- increment program counter, move to next instruction
				nextState <= decode;
			when decode =>
				case opcodeIn is
					when ldr =>
						case address_method is
							when am_inherent =>
								-- do nothing
							when am_immediate =>
								-- Rz <- Operand
								rf_sel <= "000"; -- set to operand
								ld_r <= '1';
							when am_direct =>
								-- Rz <- M[Operand]
								rf_sel <= "1001"; -- set to M[Operand]
								ld_r <= '1';
							when am_register =>
								-- Rz <- Rx
								rf_sel <= "1000"; -- set to Rx
								ld_r <= '1';
						end case;
					
					when andr =>
						case address_method is 
							when am_inherent =>
								-- do nothing
							when am_immediate =>
								-- Rz <- Rx AND Operand
								rf_sel <= "000"; -- set to operand
								ld_r <= '0'; -- don't load yet
							when am_direct =>
								-- do nothing
							when am_register =>
								-- Rz <- Rz and Rx
								rf_sel <= "1010"; -- set to Rz
								ld_r <= '0';
						end case;
								
					when others =>
				end case;
				nextState <= execute;
			when execute =>
				
			when memory =>
			
			
			when others =>
		end case;
	end process;
	
	
end architecture behavioral;
