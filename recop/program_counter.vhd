library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity program_counter is
    port (
        -- takes in current count, outputs count
        increment : in bit_4; -- control signal to move onto the next instruction
        clock : in bit_1; -- clock signal
		  in_count : in bit_16; -- default count value
        alu_count : in bit_16; -- current count
		  rx_count : in bit_16;
		  operand_count : in bit_16;
		  rz_data : in bit_16; -- rz data
		  z	: in bit_1; -- Z, for SZ Operand
		  reset : in bit_1;
		  state : in bit_4;
        out_count : out bit_16 -- output count
    );
end program_counter;

architecture pc of program_counter is
begin
    process(clock, increment, state)
begin
    if rising_edge(clock) then 
		if state = "0001" then
			 if reset = '1' then
				out_count <= x"0000";
			 else
				  case increment is
						when "0000" =>
							 out_count <= in_count; -- don't increment instruction/ count
						when "0001" =>
							 out_count <= in_count + 1; -- normal operation, go to next instruction
						when "0010" =>
							 out_count <= alu_count;
						when "0100" =>
							 out_count <= rx_count;
						when "0101" =>
							 out_count <= operand_count;
						when "0110" =>
							 -- PRESENT Rz #Operand -> jump to operand if Rz = 0
							 if rz_data = "0000000000000000" then
								  out_count <= operand_count;
							 else
								  out_count <= in_count + 1;
							 end if;
						when "0111" => -- SZ Operand- jump to operand location if Z = 1, else normal execution
							 if z = '1' then
								  out_count <= operand_count;
							 else
								  out_count <= in_count + 1; -- continue normal execution
							 end if;
						when "1000" =>
							out_count <= x"0000"; -- reset to 0
						when others =>
							 out_count <= x"0000"; -- reset
				  end case;
			
			  end if;
		else
			out_count <= in_count;
		end if;
    end if;
end process;

end architecture;
