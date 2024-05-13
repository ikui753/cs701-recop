library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.recop_types.all;
use work.various_constants.all;
use work.opcodes.all;

entity instruction_reg is
    port(
        clock : in bit_1; -- clock
        instruction : in bit_16; -- full instruction
		  operandIn : in bit_16; -- operand
		  state : in bit_3;
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
        if rising_edge(clock) and state = "010" then
				  address_method <= instruction(15 downto 14);
				  opcode <= instruction(13 downto 8);
				  rz <= instruction(7 downto 4);
				  rx <= instruction(3 downto 0);
				  operand <= operandIn; -- need to do a check to see if instruction has an operand
        end if;
    end process;
end architecture;
