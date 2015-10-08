-- Descp. Compares two 3bit numbers and outputs the smallest one
--
-- entity name: g05_minimum3
--
-- Version 1.0
-- Author: Felix Dube; felix.dube@mail.mcgill.ca & Auguste Lalande; auguste.lalande@mail.mcgill.ca
-- Date: October 5, 2015

library ieee;
use ieee.std_logic_1164.all;

entity g05_minimum3 is
	Port( N, M : in std_logic_vector(2 downto 0);
			min : out std_logic_vector(2 downto 0)
	);
end g05_minimum3;

architecture behavior of g05_minimum3 is
	signal AltB, AeqB, AgtB : std_logic;
	signal i : std_logic_vector(2 downto 0);
	begin
		i <= N XNOR M;
		AeqB <= i(0) AND i(1) AND i(2);
		AgtB <= (N(2) AND NOT M(2)) OR 
					(N(1) AND NOT M(1) AND i(2)) OR 
					(N(0) AND NOT M(0) AND i(2) AND i(1));
		AltB <= AeqB NOR AgtB;
		min <= M when AltB = '0' else N;
		
end behavior;
