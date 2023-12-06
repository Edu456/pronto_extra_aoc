LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


entity or is
	port(
		a, b	    : in std_logic;
		z		    : out std_logic
	);
end entity;	

-
architecture main of or is
begin
	z <= a or b;
end architecture;