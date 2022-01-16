-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- FILE        : Full_Adder
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Implementation of Full Adder          
-- ------------------------------------------------------------

--Library Declaration
library IEEE;
use IEEE.std_logic_1164.all;

--Entity Declaration with I/O
entity Full_Adder is
port(X, Y, Zin : in std_logic;
     S, Zout   : out std_logic);
end Full_Adder;

--Structural Construct
architecture behavioral of Full_Adder is
begin 
	S    <= (Zin xor (X xor Y));
	Zout <= ((X and Y) or (Zin and Y) 
				or (Zin and X)); 
end behavioral;
--End of code