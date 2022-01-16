-- ------------------------------------------------------------
-- TITLE       : LAB 8
-- PROJECT     : Skalra_LAB8_Shift_RegisterALU	
-- AUTHOR      : Sagal Singh Kalra
-- DATE        : 28/07/2021
-- DESCRIPTION : Port mapping ALU and D_Flip_Flop
-- ------------------------------------------------------------

--Library Declarations
library IEEE;
use IEEE.std_logic_1164.all;

--Entity and I/O declarations
entity Skalra_LAB8_Shift_RegisterALU is 
port (A,B   : in std_logic_vector(3 downto 0);
		C_in  : in std_logic;
		B_in  : in std_logic;
		clk,
		rst   : in std_logic;
 		S_out,
		B_out : out std_logic;
		sel   : in std_logic;
		H     : out std_logic_vector(0 to 6);
		Q     : out std_logic_vector(3 downto 0));
end Skalra_LAB8_Shift_RegisterALU;

--Behavioural Construct
architecture struct of Skalra_LAB8_Shift_RegisterALU is
component ALU is
port (A,B,
		C_in,B_in : in std_logic;
		sel : in std_logic;
		C_out,
		B_out :out std_logic;
		F   : out std_logic);
end component;

component D_Flip_Flop is
port (D, clk, rst : in std_logic;
		Q_A : out std_logic);
end component; 

component BCD_HEX	is
port ( INP : in std_logic_vector (3 downto 0);
		 HEX : out std_logic_vector (0 to 6));
end component;
		 
signal C : std_logic_vector(2 downto 0);
signal Bw : std_logic_vector(2 downto 0);
signal F_out : std_logic_vector(3 downto 0);
signal inp : std_logic_vector(3 downto 0);

begin

	ALU0 : ALU port map (A(0),B(0),C_in,B_in, sel,C(0), Bw(0), F_out(0));
	ALU1 : ALU port map (A(1),B(1),C(0),Bw(0),sel,C(1), Bw(1), F_out(1));
	ALU2 : ALU port map (A(2),B(2),C(1),Bw(1),sel,C(2), Bw(2), F_out(2));
	ALU3 : ALU port map (A(3),B(3),C(2),Bw(2),sel,S_out, B_out,F_out(3));	

	DFF0 : D_Flip_Flop port map (F_out(0), clk, rst, inp(0));
	DFF1 : D_Flip_Flop port map (F_out(1), clk, rst, inp(1));
	DFF2 : D_Flip_Flop port map (F_out(2), clk, rst, inp(2));
	DFF3 : D_Flip_Flop port map (F_out(3), clk, rst, inp(3));
	
	Q(0) <= inp(0);
	Q(1) <= inp(1);
	Q(2) <= inp(2);
	Q(3) <= inp(3);
	
	SevenSegment : BCD_HEX port map (inp , H);
end struct;
--End of code