LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity and is
	port(
		a, b	: in std_logic;
		z		: out std_logic
	);
end entity;	


architecture main of and is
begin
	     z <= a and b;
end architecture;