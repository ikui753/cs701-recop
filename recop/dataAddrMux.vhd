library ieee;
use ieee.std_logic_1164.all;

use IEEE.numeric_std.all;

use work.recop_types.all;
use work.various_constants.all;
use work.opcodes.all;

entity dataAddrMux is
	port (
		clk	: 	in bit_1;
		rzData : in bit_16;
		rxData : in bit_16;
		operand : in bit_16;
		
		addrSel : in bit_2;
		dataSel : in bit_2;
		
		opcode : in bit_6;
		alu_z : in bit_1;
		pc_count : in bit_16;
		
		addrOut : out bit_16;
		dataOut : out bit_16;
		present_sz_Jmp : out bit_2
	);
	
end entity dataAddrMux;

architecture behaviour of dataAddrMux is
begin
	process (clk)
	begin
		--if rising_edge(clk) then
			-- mux to select address to be entered into data memory for store operations
			case addrSel is
				when "00" =>
					addrOut <= rzData;
				when "01" =>
					addrOut <= rxData;
				when "10" =>
					addrOut <= operand;
				when others =>
			end case;
			
			-- mux to select data to be stored in data memory for store operations 
			case dataSel is
				when "00" =>
					dataOut <= rxData;
				when "01" =>
					dataOut <= operand;
				when "10" =>
					dataOut <= pc_count; -- store pc count
				when others =>
					-- no data is to be passed
			end case;
			
			-- check for presentJmp condition
			if rzData = x"0000" and opcode = present then
				present_sz_jmp <= "01"; -- jump to operand
			elsif rzData > x"0000" and opcode = present then 
				present_sz_jmp <= "00"; -- next
			elsif alu_z = '1' and opcode = sz then
				-- sz operand if rz = 1
				present_sz_jmp <= "10";
			elsif alu_z = '0' then
				-- otherwise, next
				present_sz_jmp <= "00";
			else
				present_sz_jmp <= "00";
			end if;
			
		--end if;
	end process;
end architecture;