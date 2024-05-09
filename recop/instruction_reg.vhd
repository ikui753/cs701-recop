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
        address_method : out bit_2; -- am
        opcode : out bit_6; -- opcode
        rz : out bit_4; -- rz
        rx : out bit_4; -- rx
        operand : out bit_16
    );
end instruction_reg;

architecture behaviour of instruction_reg is
    type state_type is (WAIT_FIRST_HALF, WAIT_SECOND_HALF, OUTPUT);
    signal state : state_type := WAIT_FIRST_HALF; -- Initial state
    signal decoded_address_method : bit_2;
    signal decoded_opcode : bit_6;
    signal decoded_rz : bit_4;
    signal decoded_rx : bit_4;
    signal decoded_operand : bit_16;
    --signal counter : integer range 0 to 2 := 0; -- Counter to track clock cycles

begin
    process(clock)
    begin
        if rising_edge(clock) then
            case state is
                when WAIT_FIRST_HALF =>
                    -- First clock cycle, wait for the first half of the instruction
                    decoded_address_method <= instruction(15 downto 14);
                    decoded_opcode <= instruction(13 downto 8);
                    decoded_rz <= instruction(7 downto 4);
                    decoded_rx <= instruction(3 downto 0);
                    state <= WAIT_SECOND_HALF; -- Move to the next state
                when WAIT_SECOND_HALF =>
                    -- Second clock cycle, wait for the second half of the instruction
                    decoded_operand <= instruction(15 downto 0);
                    state <= OUTPUT; -- Move to the next state
                when OUTPUT =>
                    -- Third clock cycle, output the decoded instruction
                    address_method <= decoded_address_method;
                    opcode <= decoded_opcode;
                    rz <= decoded_rz;
                    rx <= decoded_rx;
                    operand <= decoded_operand;
                    state <= WAIT_FIRST_HALF; -- Move back to the initial state for the next instruction
            end case;
        end if;
    end process;
end architecture;
