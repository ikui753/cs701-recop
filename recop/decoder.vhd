library ieee;
use ieee.std_logic_1164.all;
use work.recop_types.all;

entity decoder is
	port (
		-- dpcr : in bit_32; 
		sopFromRecop : in bit_16; -- from RECOP 
		sipFromNios : in bit_10; -- from FPGA SW
		
		SignalToNios : out bit_10; -- to NIOS LED
		sipToRecop : out bit_16 -- to RECOP
		
	);
end entity;


architecture beh of decoder is
begin

	sipToRecop <= "000000"&sipFromNios;
	SignalToNios <= "0000011111";
	
end architecture;