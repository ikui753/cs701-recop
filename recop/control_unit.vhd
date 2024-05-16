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
	
    type cuStates is (idle, fetch, decode, execute, memory, writeback, aluOperation);
	 signal currentState : cuStates := fetch; -- initialise in idle state
	 signal nextState : cuStates;

 begin
 
	clkOut <= clk;

    
	 
	 OUTPUTS : process(currentState, address_method, opcodeIn, clk) is
	 begin

		if rising_edge(clk) then
			case currentState is
				when idle =>
					increment <= "1000"; -- set PC to 0
					stateOut <= "000";
					ld_r <= '0';
					nextState <= fetch;
					
				when fetch =>
					alu_opsel <= "000000";
					increment <= "0001"; -- increment program counter, move to next instruction
					nextState <= decode;
					ld_r <= '0';
					stateOut <= "001";
					
				when decode =>
					increment <= "0000";
					case opcodeIn is
						when ldr =>
							alu_opsel <= "000000";
							case address_method is
								when am_inherent =>
									-- do nothing
								when am_immediate =>
									-- Rz <- Operand
									rf_sel <= "0000"; -- set to operand
									--ld_r <= '1';
								when am_direct =>
									-- Rz <- M[Operand]
									rf_sel <= "1001"; -- set to M[Operand]
									--ld_r <= '1';
								when am_register =>
									-- Rz <- Rx
									rf_sel <= "1000"; -- set to Rx
									--ld_r <= '1';
							end case;
						
						when andr =>
							case address_method is 
								when am_immediate =>
									-- Rz <- Rx AND Operand
									rf_sel <= "0011"; -- set to aluout
									alu_opsel <= alu_and&"010"; -- op1- operand, op2- Rx
								
								when am_register =>
									-- Rz <- Rz and Rx
									rf_sel <= "0011"; -- set to aluout
									alu_opsel <= alu_and&"001"; -- op1- Rx, op2- Rz
									
								when others =>
							end case;
						
						when others =>
					end case;
					
					stateOut <= "010";
					nextState <= execute;
					
				when execute =>
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "011";
					nextState <= memory;
					
				when memory => -- note names tbd
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "011";
					nextState <= writeback;
				
				when writeback =>
					if opcodeIn = ldr then
						ld_r <= '1';
						nextState <= fetch;
					elsif opcodeIn = addr or opcodeIn = andr or opcodeIn = orr or opcodeIn = subr or opcodeIn = subvr then
						nextState <= aluOperation;
					else						
						increment <= "0000";
						stateOut <= "011";
						nextState <= fetch;
					end if;
				
				when aluOperation =>
					-- load alu output into Rz
					ld_r <= '1';
					nextState <= fetch;
					stateOut <= "011";
					
				when others =>
					ld_r <= '0';
					increment <= "0000";
					stateOut <= "000"; 
					nextState <= idle;
			end case;
		end if;
		currentState <= nextState;
	end process;
	
--	SWITCH_STATES : process (clk) is 
--    begin
--		if rising_edge(clk) then
--			if (reset = '1') then
--				currentState <= fetch;
--			else
--				currentState <= nextState;
--			end if;
--		end if;
--    end process;
	
	
	
	
end architecture behavioral;
