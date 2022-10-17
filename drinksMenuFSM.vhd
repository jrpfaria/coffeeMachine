library ieee;
use ieee.std_logic_1164.all;

entity drinksMenuFSM is
	port(clk 		: in  std_logic;
		  reset  	: in 	std_logic;
		  ready		: in 	std_logic;
		  xIn0		: in  std_logic;
		  xIn1		: in  std_logic;
		  xIn2		: in  std_logic;
		  xIn3		: in  std_logic;
		  done		: in 	std_logic;
		  refresh	: in  std_logic;
		  ticks  	: in  std_logic;
		  sugaren   : out std_logic;
		  static	   : out std_logic;
		  clear		: out std_logic;
		  drink		: out std_logic_vector(15 downto 0);
		  mode		: out std_logic;
		  preparing	: out std_logic;
		  fix 		: out std_logic);
end drinksMenuFSM;

architecture v1 of drinksMenuFSM is

		type TState is (Hello, Choice, Coffee, Tea, HotChoc);
		signal state: TState;
		signal s_mode: std_logic := '0';
		signal s_preparing: std_logic := '0';
		signal s_clear: std_logic := '0';
		signal s_refresh: std_logic := refresh;
			
begin 
		
		process(clk)
		
		begin 
			if(rising_edge(clk)) then
				if (reset = '1' or s_refresh = '1') then
					state <= Hello;
				else
					case state is
						when Hello => 
							drink <= x"1_2_3_4"; -- H_E_L_O
							static <= ticks;
							s_clear <= '0';
							sugaren <= '0';
							fix <= '1';
							if (ready = '1') then
								state <= Choice;
							end if;
							
						when Choice =>
							drink <= x"2_5_2_5"; -- E_b_E_b
							static <= '1';
							s_refresh <= '0';
							fix <= '0';
							if (xIn0 = '1' or xIn1 = '1') then
								state <= Coffee;
							end if;
							
						when Coffee =>
							drink <= x"6_7_8_2"; -- C_A_F_E
							static <= '1';
							sugaren <= '1';
							if (xIn2 = '1') then
								s_preparing <= '1';
							elsif (done = '1') then
								s_preparing <= '0';
								s_clear <= '1';
							elsif (xIn3 = '1') then
								s_mode <= not s_mode;
							elsif (xIn0 = '1' and s_mode = '0' and s_preparing = '0') then
								state <= Tea;
							end if;	
						
						when Tea =>
							drink <= x"6_1_7_F"; -- C_H_A_null
							static <= '1';
							if (xIn2 = '1') then
								s_preparing <= '1';
							elsif (done = '1') then
								s_preparing <= '0';
								s_clear <= '1';
							elsif (xIn3 = '1') then
								s_mode <= not s_mode;
							elsif (xIn0 = '1' and s_mode = '0' and s_preparing = '0') then
								state <= HotChoc;
							elsif (xIn1 = '1' and s_mode = '0' and s_preparing = '0') then
								state <= Coffee;
							end if;
						
						when HotChoc =>
							drink <= x"6_1_4_6"; -- C_H_O_C
							static <= '1';
							if (xIn2 = '1') then
								s_preparing <= '1';
							elsif (done = '1') then
								s_preparing <= '0';
								s_clear <= '1';
							elsif (xIn3 = '1') then
								s_mode <= not s_mode;
							elsif (xIn1 = '1' and s_mode = '0' and s_preparing = '0') then
								state <= Tea;
							end if;
							
					end case;
				end if;
			end if;
			
			clear <= s_clear;
			mode <= s_mode;
			preparing <= s_preparing;
			
		end process;
	
	end v1;