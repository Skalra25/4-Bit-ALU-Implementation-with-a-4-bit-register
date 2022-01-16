-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- FILE        : MUX
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Implementation of 2x1 MUX          
-- ------------------------------------------------------------

--Library Declarations
library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity MUX is
port (A,B : in std_logic;
      sel     : in std_logic;
		F       : out std_logic);
end MUX;

--Behavioural Construct
architecture behavioral of MUX is

signal control_signal: std_logic;

begin
control_signal <= sel;
with control_signal select 
		F <=  A when '0',
				B when '1',
			  '0' when others;
end behavioral;
--End of code