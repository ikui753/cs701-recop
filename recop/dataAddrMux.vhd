library ieee;
use ieee.std_logic_1164.all;

use IEEE.numeric_std.all;

use work.recop_types.all;
use work.various_constants.all;

entity dataAddrMux is
	port (
		clk	: 	in bit_1;
		rzData : in bit_16;
		rxData : in bit_16;
		operand : in bit_16;
		
		addrSel : in bit_2;
		dataSel : in bit_1;
		
		addrOut : out bit_16;
		dataOut : out bit_16;
		presentJmp : out bit_1
	);
	
end entity dataAddrMux;

architecture behaviour of dataAddrMux is
begin
	process (clk)
	begin
		if rising_edge(clk) then
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
				when '0' =>
					dataOut <= rxData;
				when '1' =>
					dataOut <= operand;
				when others =>
			end case;
			
			-- check for presentJmp condition
			if rzData = x"0000" then
				presentJmp <= '1';
			else 
				presentJmp <= '0';
			end if;
			
		end if;
	end process;
end architecture;