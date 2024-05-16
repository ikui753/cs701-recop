library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.recop_types.all;
use work.various_constants.all;
use work.opcodes.all;

entity instruction_reg is
    port(
            clock : in bit_1; -- clock
            instruction : in bit_32; -- full instruction
				state : in bit_4;
            address_method : out bit_2; -- am
            opcode : out bit_6; -- opcode
            rz : out bit_4; -- rz
            rx : out bit_4; -- rx
            operand : out bit_16
    );
end instruction_reg;

architecture behaviour of instruction_reg is

begin
    process(clock)
    begin
        if rising_edge(clock) then
				if state = "0001" then 
				  address_method <= instruction(31 downto 30);
				  opcode <= instruction(29 downto 24);
				  rz <= instruction(23 downto 20);
				  rx <= instruction(19 downto 16);
				  operand <= instruction(15 downto 0); -- need to do a check to see if instruction has an operand
				end if;
		  end if;
    end process;
end architecture;