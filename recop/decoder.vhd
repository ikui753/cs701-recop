library ieee;
use ieee.std_logic_1164.all;
use work.recop_types.all;

entity decoder is
	port (
		-- dpcr : in bit_32; 
		sopFromRecop : in bit_16; -- from RECOP 
		sipFromNios : in bit_10; -- from FPGA SW
		
		sopToNios : out bit_10; -- to NIOS LED
		sipToRecop : out bit_16 -- to RECOP
		
	);
end entity;


architecture beh of decoder is
begin

	sipToRecop <= "000000"&sipFromNios;
	sopToNios <= sopFromRecop(9 downto 0);
	
end architecture;