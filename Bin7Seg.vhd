library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7Seg is
	port(enable 	: in  std_logic;
		  binInput	: in  std_logic_vector(3 downto 0);
		  todisplay	: out std_logic_vector(6 downto 0));
end Bin7Seg;

architecture v1 of Bin7Seg is
	
	signal s_toDisplay : std_logic_vector(6 downto 0);
	
begin
		with binInput select
				s_toDisplay <= "0001001" when "0001",	--H
									"0000110" when "0010",  --E
									"1000111" when "0011",	--L
									"1000000" when "0100",	--O
									"0000011" when "0101",	--b
									"1000110" when "0110",	--C
									"0001000" when "0111",	--A
									"0001110" when "1000",	--F
									"1001111" when "1001", 	--1
									"1111111" when others;  --null

		toDisplay <= s_toDisplay when (enable = '1') else (others => '1');
end v1;