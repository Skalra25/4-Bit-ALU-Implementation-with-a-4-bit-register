-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- FILE        : ALU	
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Arithmetic unit implementing
--               Full adder and full subtractor
-- ------------------------------------------------------------

--Library Declarations
library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity ALU is 
port (A,B,
		C_in,B_in : in std_logic;
		sel : in std_logic;
		C_out,
		B_out :out std_logic;
		F   : out std_logic);
end ALU;

--Behavioural Construct
architecture struct of ALU is

component F_Subtractor is
port (A, B, B_in : in std_logic;
		D , B_out  : out std_logic);
end component;

component Full_Adder is
port(X, Y, Zin : in std_logic;
     S, Zout   : out std_logic);
end component;

component MUX is 
port (A,B : in std_logic;
      sel     : in std_logic;
		F       : out std_logic);
end component;

signal add, sub : std_logic;

begin

	FAdder0 : Full_Adder port map (A, B, C_in, add, C_out);
	FSub0   : F_Subtractor port map (A, B, B_in, sub, B_out);
	MUX0    : MUX port map (add, sub, sel, F);

end struct;
--End of code
