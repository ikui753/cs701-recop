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
        increment : in bit_3; -- control signal to move onto the next instruction
        clock : in bit_1; -- clock signal
		  in_count : in bit_16; -- default count value
        alu_count : in bit_16; -- current count
		  rx_count : in bit_16;
		  operand_count : in bit_16;
		  rz_data : in bit_16; -- rz data
		  z	: in bit_1; -- Z, for SZ Operand
        out_count : out bit_16 -- output count
    );
end program_counter;

architecture pc of program_counter is
begin
    process(clock)
    begin
        if rising_edge(clock) then
					case increment is
						when "000" =>
							out_count <= "0000000000000000"; -- initialise at 0
						when "001" =>
							out_count <= in_count + 4; -- normal operation, go to next count
						when "010" =>
							out_count <= alu_count;
						when "100" =>
							out_count <= rx_count;
						when "101" =>
							out_count <= operand_count;
						when "110" =>
							-- PRESENT Rz #Operand -> jump to operand if Rz = 0
							if rz_data = "0000000000000000" then
								out_count <= operand_count;
							else
								out_count <= in_count + 4;
							end if;
						when "111" => -- SZ Operand- jump to operand location if Z = 1, else normal execution
							if z = '1' then
								out_count <= operand_count;
							else
								out_count <= in_count + 4; -- continue normal execution
							end if;
						when others =>
							out_count <= "0000000000000000"; -- reset
					end case;
			else
				 out_count <= in_count;
        end if;
    end process;
end architecture;
