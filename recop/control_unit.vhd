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
        present_sz_jmp : in bit_2;
        clkOut : out bit_1; -- clock
		  
        
		  -- fsm output
		  stateOut : out bit_4 := "0000";
		  
        -- program counter signals
        increment : out bit_4 := "1000"; -- increment program counter
        
        -- alu signals
        alu_opsel : out bit_7 := "0000000";
        
        -- load register 
        ld_r : out bit_1 := '0'; 
      
        clr_z_flag : out bit_1;
        dm_wr : out bit_1;
        
        rf_sel : out bit_4 := "0000";
        rf_init : out bit_1;
        z : out bit_1;
        dpcr_lsb_sel : out bit_1;
        dpcr_wr : out bit_1;
		  
		  -- store data signals
		  dataSel : out bit_1;
		  addrSel : out bit_2;
		  wren : out bit_1
		  
        -- ... and so on for other control signals
    );
end entity control_unit;

architecture behavioral of control_unit is
	
    type cuStates is (idle, fetch, fetch2, decode, decode2, decode3, selStore, delayStore, storeData, execution, loadAluResult, storeAluResult);
	 signal currentState : cuStates := fetch; -- initialise in idle state
	 signal nextState : cuStates;

 begin
	 
	 OUTPUTS : process(currentState, address_method, opcodeIn, clk) is
	 begin

		if rising_edge(clk) then
			case currentState is
				when idle =>
					increment <= "1000"; -- set PC to 0
					stateOut <= "0000";
					ld_r <= '0'; -- load alu result
					clr_z_flag <= '0';
					nextState <= fetch;
					
				when fetch =>
					wren <= '0';
					ld_r <= '0';
					clr_z_flag <= '0';
--					alu_opsel <= "1110000";
					if (opcodeIn = jmp) or (opcodeIn = present) or (opcodeIn = sz) then
						-- count already sorted, proceed to next fetch step
						if present_sz_jmp = "01" and opcodeIn = present then
							increment <= "0101"; -- jump to operand
						elsif present_sz_jmp = "00" and opcodeIn = present then
							increment <= "0001"; -- next
						elsif present_sz_jmp = "10" and opcodeIn = sz then
							increment <= "0101"; -- jump to operand
						elsif present_sz_jmp = "00" and opcodeIn = sz then
							increment <= "0001"; -- next
						end if;
					else
						increment <= "0001"; -- increment program counter, move to next instruction
					end if;
					
					nextState <= fetch2;
					stateOut <= "0001";
					
				when fetch2 =>
					ld_r <= '0'; -- disable
					-- instruction passed through instruction register
					increment <= "0000"; -- stop incrementing
					stateOut <= "0010";
					nextState <= decode;
					
				when decode => -- actual decode, am, operand, opcode now available 
					-- increment <= "0000";
					stateOut <= "0011"; 
					nextState <= decode2;
					
				when decode2 => -- note names tbd
					-- allow one cycle for control unit to receive inputs
					ld_r <= '0';
					-- increment <= "0000";
					stateOut <= "0100";
					nextState <= decode3;
				
				when decode3 =>
					-- read opcode here
					-- alu_opsel <= "1110000"; -- default value
					case opcodeIn is
						when andr =>
							nextState <= execution;
							rf_sel <= "0011";
							case address_method is 
								when am_immediate =>
									-- Rz <- Rx AND Operand
									alu_opsel <= alu_and&"0100"; -- op1- operand, op2- Rx
								
								when am_register =>
									-- Rz <- Rz and Rx
									alu_opsel <= alu_and&"0001"; -- op1- Rx, op2- Rz
									
								when others =>
									alu_opsel <= alu_and&"1101";
							end case;
							
						when orr =>
							rf_sel <= "0011";
							nextState <= execution;
							case address_method is
								when am_immediate =>
									alu_opsel <= alu_or&"0100"; -- Rz <- Rz - Operand
								when am_register =>
									alu_opsel <= alu_or&"0001";
								when others =>
							end case;
							
						when addr =>
							rf_sel <= "0011";
							nextState <= execution;
							case address_method is
								when am_immediate =>
									alu_opsel <= alu_add&"0100"; -- Rz <- Rz - Operand
								when am_register =>
									alu_opsel <= alu_add&"0001";
								when others =>
							end case;
							
						when subvr =>
							-- subv is stored
							rf_sel <= "0011";
							nextState <= execution;
							alu_opsel <= alu_sub&"0100"; -- Rz <- Rx - Operand
						
						when subr =>
							-- result is not stored
							rf_sel <= "0011";
							ld_r <= '0';
							nextState <= execution;
							alu_opsel <= alu_sub&"0101"; -- Rz - Operand
							
						when max =>
							-- only one case
							rf_sel <= "0011";
							alu_opsel <= alu_max&"0101"; -- operand and rz
							nextState <= execution;
								
						when str =>
							nextState <= selStore;
							stateOut <= "0101";
							
							case address_method is 
								when am_immediate =>
									-- M[Rz] <- Operand
									addrSel <= "00";
									dataSel <= '1';
								when am_direct =>
									-- M[Operand] <- Rx
									addrSel <= "10";
									dataSel <= '0';
								when am_register =>
									-- M[Rz] <- Rx
									addrSel <= "00";
									dataSel <= '0';
								when others =>
							end case;
							
						when jmp =>
							case address_method is 
								when am_immediate => 
									-- JMP OPERAND
									increment <= "0101";
								when am_register =>
									-- JMP Rxdata
									increment <= "0100";
									nextState <= execution; -- need to read Rx
								when others =>
							end case;
							
						when present =>
							-- only one case- PC <- Operand if RzData = 0
							nextState <= execution; 
						
						when sz =>
							-- only one case- PC <- Operand if Z = 1, else next
							nextState <= execution;
							
						when ldr =>
							nextState <= execution;
							case address_method is
								when am_inherent =>
									-- do nothing
								when am_immediate =>
									-- Rz <- Operand
									rf_sel <= "0000"; -- set to operand

								when am_direct => -- NEED TO FIX THIS ONE
									-- Rz <- M[Operand]
									rf_sel <= "1001"; -- set to M[Operand]

								when am_register =>
									-- Rz <- Rx
									rf_sel <= "1000"; -- set to Rx
							end case;
							
						when noop =>
							nextState <= fetch;
						
						when clfz =>
							clr_z_flag <= '1'; -- clear z flag
							nextState <= fetch;
							
						when others =>
							alu_opsel <= "1110000";
					end case;
					
					if opcodeIn = jmp then
						stateOut <= "0001";
						nextState <= fetch; -- move to next instruction
					elsif opcodeIn = present then
						-- move to next state, no need to set increment 
						stateOut <= "0001";
					elsif opcodeIn = clfz then
						-- move to next state, don't disable clr_z_flag
						stateOut <= "0101";
					else
						increment <= "0000";
						stateOut <= "0101";
						clr_z_flag <= '0';
					end if;
				
				when execution =>
					-- alu operations
					if opcodeIn = addr or opcodeIn = subvr or opcodeIn = orr or opcodeIn = andr or opcodeIn = max then
						nextState <= loadAluResult;
					
					elsif opcodeIn = subr then
						ld_r <= '0';
						nextState <= fetch;
					
					-- jmp 
					elsif opcodeIn = jmp then
						nextState <= fetch; -- PC <- Rx
						
					elsif opcodeIn = sz then
						nextState <= fetch;
						
					-- present 
					elsif opcodeIn = present then
						nextState <= fetch; 
					else
						nextState <= fetch;
						if opcodeIn = ldr then
							ld_r <= '1';
						end if;
					end if;
					
					stateOut <= "0110";
					
				when loadAluResult =>
					-- loads alu result
					stateOut <= "0111";
					nextState <= storeAluResult;
					
				when storeAluResult =>
					rf_sel <= "0011";
					ld_r <= '1'; 
					stateOut <= "1000";
					nextState <= fetch;
					
				when selStore =>
						nextState <= storeData;
						stateOut <= "1001";
						increment <= "0000";
				
				when storeData =>
					-- propogate through data mux, can read Rx and Rz
						wren <= '1'; -- store data
						nextState <= fetch;
						stateOut <= "1010";
					
				when others =>
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "0000"; 
					nextState <= idle;
			end case;
		end if;
		currentState <= nextState;
	end process;
	
	clkOut <= clk;
	
	
end architecture behavioral;
