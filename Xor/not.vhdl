LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY not IS PORT( 
	A       : IN  std_logic; 
	F       : OUT std_logic 
); END not;

ARCHITECTURE logic OF not IS 
BEGIN 
	F <= not A;
END logic;