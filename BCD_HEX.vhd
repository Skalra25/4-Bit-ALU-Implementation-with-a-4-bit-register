-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- FILE        : ALU	
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Arithmetic unit implementing
--               Full adder and full subtractor
-- ------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity BCD_HEX	is
port ( INP : in std_logic_vector (3 downto 0);
		 HEX : out std_logic_vector (0 to 6));
end BCD_HEX;

--Behavioural Construct
architecture behavioral of BCD_HEX is
begin
	process (INP)
		begin
			case INP is
				when "0000" => HEX <= "0000001";--"0"
				when "0001" => HEX <= "1001111";--"1"
				when "0010" => HEX <= "0010010";--"2"
				when "0011" => HEX <= "0000110";--"3"
				when "0100" => HEX <= "1001100";--"4"
				when "0101" => HEX <= "0100100";--"5"
				when "0110" => HEX <= "0100000";--"6"
				when "0111" => HEX <= "0001111";--"7"
				when "1000" => HEX <= "0000000";--"8"
				when "1001" => HEX <= "0000100";--"9"
				when "1010" => HEX <= "0001000";--"A"
				when "1011" => HEX <= "0000000";--"B"
				when "1100" => HEX <= "0110001";--"C"
				when "1101" => HEX <= "0000001";--"D"
				when "1110" => HEX <= "0110000";--"E"
				when "1111" => HEX <= "0111000";--"F"
				when others => HEX <= "XXXXXXX";--"Null"
			end case;
		end process;
end behavioral; 		 
--End of code