library ieee;
use ieee.std_logic_1164.all;

entity sugarLevelFSM is
	port(clk 	: in  std_logic;
		  reset  : in 	std_logic;
		  xIn0	: in  std_logic;
		  xIn1	: in  std_logic;
		  mode 	: in  std_logic;
		  busy	: in  std_logic;
		  refresh: in  std_logic;
		  cando	: out std_logic;
		  sugar	: out std_logic_vector(15 downto 0));
end sugarLevelFSM;

architecture v1 of sugarLevelFSM is

		type TState is (E0, E1, E2, E3);
		signal state: TState;
		signal s_refresh: std_logic:= refresh;
			
begin 
		
		process(clk, busy)
		
		begin 
			
			if (busy = '1') then
					if (mode = '1') then
						cando <= '0';
					else
						cando <= '1';
					end if;
			end if;
			if(rising_edge (clk)) then 
				if (reset = '1' or s_refresh = '1') then
					state <= E0;
				else
					case state is
						when E0 =>
							s_refresh <= '0';
							sugar <= x"9_F_F_F"; -- 1_null_null_null
							if (xIn0 = '1' and mode = '1') then
								state <= E1;
							end if;	
						
						when E1 =>
							sugar <= x"9_9_F_F"; -- 1_1_null_null
							if (xIn0 = '1' and mode = '1') then
								state <= E2;
							elsif (xIn1 = '1' and mode = '1') then
								state <= E0;
							end if;
							
						when E2 =>
							sugar <= x"9_9_9_F"; -- 1_1_1_null
							if (xIn0 = '1' and mode = '1') then
								state <= E3;
							elsif (xIn1 = '1' and mode = '1') then
								state <= E1;
							end if;
						
						when E3 =>
							sugar <= x"9_9_9_9"; -- 1_1_1_1
							if (xIn1 = '1' and mode = '1') then
								state <= E2;
							end if;
					end case;
				end if;
			end if;
		end process;
	end v1;