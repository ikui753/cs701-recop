-- Zoran Salcic

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;

-- various registers of recop
entity registers is
    port (
		clk : in bit_1;
		reset : in bit_1;
		dpcr: out bit_32;
		r7 : in bit_16;
		rx : in bit_16;
		ir_operand : in bit_16;
		dpcr_lsb_sel : in bit_1;
		dpcr_wr : in bit_1;


		-- sip souce and registered outputs
		sip_r : out bit_10;
		sip : in bit_10;
		-- sop and write enable signal
		sop : out bit_16;
		sop_wr : in bit_1

		);
end registers;

architecture beh of registers is

  begin
	-- dpcr
	process (clk, reset)
	begin
		if reset = '1' then
			dpcr <= X"00000000";
		elsif rising_edge(clk) then 
			if dpcr_wr = '1' then
				-- write to dpcr. lower byte depends on select signal
				case dpcr_lsb_sel is
				when '0' =>
					dpcr <= rx&r7;
				when '1' =>
					dpcr <= rx&ir_operand;
				when others =>
				end case;
			end if;
		end if;
	end process;
	
	-- sip
	process (clk, reset)
	begin
		if reset = '1' then
			sip_r <= "0000000000";
		elsif rising_edge(clk) then 
		-- register the sip signal with the system's clock
			sip_r <= sip;
		end if;
	end process;
	
	-- sop
	process (clk, reset)
	begin
		if reset = '1' then
			sop <= X"0000";
		elsif rising_edge(clk) then 
			if sop_wr = '1' then
				-- write Rx into SOP upon write signal 
				sop <= rx;
			end if;
		end if;
	end process;
	
end beh;
