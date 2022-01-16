-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- FILE        : F_Subtractor
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Implementation of Full Subtractor          
-- ------------------------------------------------------------

--Library Declarations
library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity F_Subtractor is
port (A, B, B_in : in std_logic;
		D , B_out  : out std_logic);
end F_Subtractor;

--Behavioural Construct
architecture behavioral of F_Subtractor is
begin
	D     <= (A xor B) xor B_in;
	B_out <= (B_in and (not(A xor B))) or ((not A) and B);
end behavioral;
--End of code