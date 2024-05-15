-- Zoran Salcic

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.recop_types.all;
use work.various_constants.all;
use work.opcodes.all;

entity memory is
	port (
		clk: in bit_1 := '0';
		--pm_rd: in bit_1 := '0';
		pm_address: in bit_16;
		instr: out bit_32;
		
		--dm_rd: in bit_1 := '0';
		dm_address: in bit_16 := X"0000";
		dm_wr: in bit_1 := '0';
		dm_indata: in bit_16 := X"0000";
		state : in bit_3
		
		--dm_outdata: out bit_32 := X"00000000"
		);
end memory;

architecture beh of memory is
	type memory_array is array (0 to 1) of bit_32;
	signal memory: memory_array:=(
	--	X"abcd",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",
	--X"0002",
	am_immediate&present&X"d"&X"d"&X"0000",
	am_immediate&andr&X"d"&X"d"&X"0002"
	);

begin
	-- process (clk)
	-- begin
		-- if rising_edge(clk) then
			-- if pm_rd = '1' then
				-- pm_data <= memory(to_integer(unsigned(pm_address)));
			-- end if;
			-- if dm_rd = '1' then
				-- dm_data <= memory(to_integer(unsigned(dm_address)));
			-- end if;
		-- end if;
	-- end process;
	process (clk)
	begin
		if rising_edge(clk) and state = "001" then
			if dm_wr = '1' then
				memory(to_integer(unsigned(dm_address)))<= dm_indata; -- memory is an array
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) and state = "001" then
			instr <= memory(to_integer(unsigned(pm_address))); -- memory is an array
			--operand_outdata <= memory(to_integer(unsigned(pm_address) + 1));
			--dm_outdata <= memory(to_integer(unsigned(pm_address) + 1)); -- currently unused
		end if;
	end process;

	
end beh;
