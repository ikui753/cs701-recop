library ieee;
use ieee.std_logic_1164.all; 

library work;

entity control_unit is
    port(
        clk: in std_logic;
        opcodeIn :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    );
end control_unit;

architecture Behavioral of control_unit is
    signal opcode : std_logic_vector(5 downto 0);

    case opcode is
    when "001000" => -- AND

    when "001100" => -- OR

    when "111000" => -- ADD

    when "000011" => -- SUBV

    when "000100" => -- SUB

    when "000000" => -- LDR

    when "000010" => -- STR

    --when "011000" => -- JMP

    --when "011100" => -- PRESENT

    --when "101000" => --DCALLBL

    --when "101001" => -- 

    --when "010100" =>

    --when "010000" =>

    --when "111100" =>

    --when "111110" =>

    --when "111111" =>

    --when "110110" =>

    --when "111011" =>

    --when "110111" =>

    --when "111010" =>

    --when "110100" =>

    --when "011110" =>

    --when "011101" =>
    
    when others =>
        
    end case;

        


 
