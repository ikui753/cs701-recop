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
		  alu_rz_recv : in bit_1 := '0'; -- check registers to see if they've been loaded
		  alu_rx_recv : in bit_1 := '0';
		  rz_recv : in bit_1 := '0';
		  rx_recv: in bit_1 := '0';
        
		  stateOut : out bit_3 := "000";
        -- program counter signals
        increment : out bit_4 := "1000"; -- increment program counter
        
        -- alu signals
        alu_opsel : out bit_6 := "000000";
        
        -- load register 
        ld_r : out bit_1 := '0'; 
      
        clr_z_flag : out bit_1;
        dm_wr : out bit_1;
        wren : out bit_1;
        rf_sel : out bit_4 := "0000";
        rf_init : out bit_1;
        z : out bit_1;
        dpcr_lsb_sel : out bit_1;
        dpcr_wr : out bit_1
		  
        -- ... and so on for other control signals
    );
end entity control_unit;

architecture behavioral of control_unit is
	
    type cuStates is (idle, fetch, fetch2, decode, decode2, execute, writeback, aluOperation, loadAluResult);
	 signal currentState : cuStates := fetch; -- initialise in idle state
	 signal nextState : cuStates;

 begin

    
	 
	 OUTPUTS : process(currentState, address_method, opcodeIn, clk) is
	 begin

		if rising_edge(clk) then
			case currentState is
				when idle =>
					increment <= "1000"; -- set PC to 0
					stateOut <= "000";
					ld_r <= '0'; -- load alu result
					nextState <= fetch;
					
				when fetch =>
					ld_r <= '1';
					alu_opsel <= "000000";
					increment <= "0001"; -- increment program counter, move to next instruction
					nextState <= fetch2;
					stateOut <= "001";
					
				when fetch2 =>
					ld_r <= '0'; -- disable
					-- instruction passed through instruction register
					increment <= "0000";
					stateOut <= "010";
					nextState <= decode;
					
				when decode => -- actual decode, am, operand, opcode now available 
					
					increment <= "0000";
					
					
					increment <= "0000";
					stateOut <= "011"; 
					nextState <= decode2;
					
				when decode2 => -- note names tbd
					-- allow one cycle for control unit to receive inputs
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "100";
					nextState <= execute;
				
				when execute =>
					-- read opcode here
					case opcodeIn is
						when andr =>
							case address_method is 
								when am_immediate =>
									-- Rz <- Rx AND Operand
									rf_sel <= "0011"; -- set to aluout
									alu_opsel <= alu_and&"010"; -- op1- operand, op2- Rx
									nextState <= aluOperation;
								
								when am_register =>
									-- Rz <- Rz and Rx
									rf_sel <= "0011"; -- set to aluout
									alu_opsel <= alu_and&"001"; -- op1- Rx, op2- Rz
									nextState <= aluOperation;
									
								when others =>
									rf_sel <= "0011";
									alu_opsel <= alu_and&"111";
									nextState <= aluOperation;
							end case;
							
						when orr =>
							rf_sel <= "0011";
							nextState <= aluOperation;
							case address_method is
								when am_immediate =>
									rf_sel <= "0011";
									alu_opsel <= alu_or&"010";
								when am_register =>
									alu_opsel <= alu_or&"001";
								when others =>
							end case;
								
						when ldr =>
							alu_opsel <= "000001";
							case address_method is
								when am_inherent =>
									-- do nothing
								when am_immediate =>
									-- Rz <- Operand
									rf_sel <= "0000"; -- set to operand
									ld_r <= '1';
									nextState <= fetch;
									
								when am_direct =>
									-- Rz <- M[Operand]
									rf_sel <= "1001"; -- set to M[Operand]
									ld_r <= '1';
									nextState <= fetch;
								when am_register =>
									-- Rz <- Rx
									rf_sel <= "1000"; -- set to Rx
									ld_r <= '1';
									nextState <= fetch;
							end case;
						
						when others =>
							alu_opsel <= "111000";
					end case;
					
					increment <= "0000";
					stateOut <= "101";
				
				when aluOperation =>
					nextState <= loadAluResult;
					stateOut <= "110";
					
				when loadAluResult =>
					--ld_r <= '1';
					rf_sel <= "0011";
					stateOut <= "111";
					nextState <= fetch;
					
				when others =>
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "000"; 
					nextState <= idle;
			end case;
		end if;
		currentState <= nextState;
	end process;
	
	clkOut <= clk;
	
	
end architecture behavioral;
