--Library Declarations
library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity MUX4 is
port (A,B,C,D : in std_logic;
      sel     : in std_logic_vector(1 downto 0);
		F       : out std_logic);
end MUX4;

--Behavioural Construct
architecture behavioral of MUX4 is

signal control_signal: std_logic_vector (1 downto 0);

begin
control_signal <= sel(1 downto 0);
with control_signal select 
		F <=  A when "00",
				B when "01",
				C when "10",
				D when "11",
				'0' when others;
end behavioral;
--End of code