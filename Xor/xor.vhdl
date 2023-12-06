LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

entity xor is
	port(
		a, b	: in std_logic;
		z		: out std_logic
	);
end entity;	

architecture main of xor is	

	component and
	port (
		a, b        : in std_logic;
		z           : out std_logic);
	end component;
	
	component or
	port (
		a, b        : in std_logic;
		z           : out std_logic);
	end component;
		
	component not
	port (
		A           : IN  std_logic;
		F           : OUT std_logic);
	end component;
		

signal Saida_notA, Saida_notB       : std_logic;
signal Saida_and1, Saida_and2       : std_logic;

begin
		
	notA: not_gate 
		port map(A => a,F => Saida_notA);
	notB: not_gate 
		port map(A => b,F => Saida_notB);
	and1: and_gate 
		port map(a => Saida_notA,b => b,z => Saida_and1);
	and2: and_gate 
		port map(b => Saida_notB,a => a,z => Saida_and2);
	orfinal: or_gate 
		port map(a => Saida_and1, b => Saida_and2, z => z);
		
end architecture;