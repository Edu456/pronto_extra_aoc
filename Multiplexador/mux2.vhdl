LIBRARY IEEE;
USE IEEE.std_logic_1164.all;


ENTITY mux2  IS
    PORT (
        a, b, c      : IN  std_logic;
        saida        : OUT  std_logic
    );
END mux2 ;

ARCHITECTURE BEHAVIOR OF mux2  IS
BEGIN
	saida <= a when c = '0' 
	else b;
END;