library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7Seg is
	port(binInput	: in  std_logic_vector(3 downto 0);
		  todisplay	: out std_logic_vector(6 downto 0));
end Bin7Seg;

architecture v1 of Bin7Seg is	
begin
	with binInput select
		todisplay <= 	"0001001" when "0000",	--H
							"0000110" when "0001",  --E
							"1000111" when "0010",	--L
							"1000000" when "0011",	--O
							"0000011" when "0100",	--b
							"1000110" when "0101",	--C
							"0001000" when "0110",	--A
							"0001110" when "0111",	--F
							"0000110" when others; 	--1
end v1;