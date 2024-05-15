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
		pm_outdata: out bit_16;
		
		--dm_rd: in bit_1 := '0';
		dm_address: in bit_16 := X"0000";
		dm_outdata: out bit_16 := X"0000";
		operand_outdata : out bit_16;
		dm_wr: in bit_1 := '0';
		dm_indata: in bit_16 := X"0000";
		state : in bit_3
		
		);
end memory;

architecture beh of memory is
	type memory_array is array (0 to 9) of bit_16;
	signal memory: memory_array:=(
	--	X"abcd",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",X"0000",
	--X"0002",
	--am_immediate&present&X"d"&X"d",
	--X"0000",
	--am_immediate&andr&X"d"&X"d",
	--X"0002",
	--am_immediate&present&X"d"&X"d",
	--am_register&ldr&X"0"&X"9",
	--X"0006",
	--am_direct&str&X"c"&X"3",
	--am_register&ldr&X"0"&X"c",
	--am_register&str&X"c"&X"c",
	--am_register&ldr&X"0"&X"7",
	--X"aaaa",
	--am_immediate&str&X"7"&X"7",
	-- X"0002",
	-- am_immediate&sz&X"0"&X"0",
	-- am_inherent&clfz&X"0"&X"0",
	-- X"0000",
	-- am_immediate&andr&X"d"&X"d",
	-- X"0002",
	-- am_immediate&sz&X"b"&X"b",
	-- am_register&datacall&X"b"&X"b",
	-- X"1234",
	-- am_immediate&datacall&X"b"&X"b",	
	-- X"001f",
	-- am_direct&ldr&X"6"&X"7",
--	X"0015",
--	am_direct&ldr&X"0"&X"0",
--	X"0015");
--	am_direct&strpc&X"0"&X"0",
--	X"0001",
--	am_immediate&max&X"c"&X"c",
--	am_register&ssop&X"4"&X"4",
--	am_register&lsip&X"4"&X"4",
--	am_register&ssvop&X"3"&X"3",
--	am_inherent&cer&X"0"&X"0",
--	am_inherent&ceot&X"0"&X"0",
--	am_inherent&seot&X"0"&X"0",
--	am_register&ler&X"3"&X"3",
--	X"0008",
--	am_immediate&ldr&X"e"&X"e",
--	X"400a",
--	am_immediate&subvr&X"1"&X"8",
--	X"000b");
--	am_immediate&andr&X"0"&X"0",
--	am_register&orr&X"2"&X"a",
--	am_register&addr&X"5"&X"2");
	x"0000", -- no operation
	x"0000", -- no operation
	am_immediate&ldr&x"1"&x"0",
	x"0007", -- ldr Rz Operand
	am_immediate&ldr&x"2"&x"0",
	x"0005",
	am_register&orr&x"1"&x"2",
	x"0000",
	am_immediate&ldr& x"3"&x"0",
	x"0004");
--	am_immediate&jmp&x"0"&x"0",
--	x"0008", -- jump 8
--	am_immediate&ldr&x"1"&x"0",
--	x"0005",
--	am_immediate&ldr&x"1"&x"0",
--	x"0004",
--	am_immediate&ldr&x"2"&x"0",
--	x"0003", -- ldr 1, 0, 3
--	am_direct&ldr&x"3"&x"0",
--	x"0001",
--	am_register&ldr&x"2"&x"1",
--	x"0000"); 
	

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
		if rising_edge(clk) and state = "010" then
			if dm_wr = '1' then
				memory(to_integer(unsigned(dm_address)))<= dm_indata; -- memory is an array
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) and state = "010" then
			pm_outdata <= memory(to_integer(unsigned(pm_address))); -- memory is an array
			operand_outdata <= memory(to_integer(unsigned(pm_address) + 1));
			dm_outdata <= memory(to_integer(unsigned(pm_address) + 1)); -- currently unused
		end if;
	end process;

	
end beh;
