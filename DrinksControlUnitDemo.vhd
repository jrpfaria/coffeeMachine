library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DrinksControlUnitDemo is
port(CLOCK_50 : in std_logic;
	  KEY 	  : in  std_logic_vector(3 downto 0);
	  SW		  : in  std_logic_vector(17 downto 0);
	  LEDG	  : out  std_logic_vector(7 downto 0);	  LEDR	  : out  std_logic_vector(17 downto 0);
	  HEX0 	  : out std_logic_vector(6 downto 0);
	  HEX1 	  : out std_logic_vector(6 downto 0);
	  HEX2 	  : out std_logic_vector(6 downto 0);
	  HEX3 	  : out std_logic_vector(6 downto 0);
	  HEX4 	  : out std_logic_vector(6 downto 0);
	  HEX5 	  : out std_logic_vector(6 downto 0);
	  HEX6 	  : out std_logic_vector(6 downto 0);
	  HEX7 	  : out std_logic_vector(6 downto 0));
	  
end DrinksControlUnitDemo;

architecture v1 of DrinksControlUnitDemo is

	signal s_enable		  : std_logic; 							-- Responsible for the blinking / static hex display
	signal s_drink 		  : std_logic_vector(15 downto 0);	-- Gives the bin7seg modules info on which drink to display
	signal s_sugar 		  : std_logic_vector(15 downto 0);	-- Gives the bin7seg modules info on the sugar level
	signal s_debouncedKEY0 : std_logic;								
	signal s_debouncedKEY1 : std_logic;								-- Makes sure the Keys are all permanently debounced so that there's
	signal s_debouncedKEY2 : std_logic;								-- no problems with inputs along the code
	signal s_debouncedKEY3 : std_logic;								
	signal s_timer			  : std_logic;								-- Tells the main state machine it can change from its 1st to 2nd state
	signal s_ticking		  : std_logic;								-- Makes the hex displays blink
	signal s_makedrink     : std_logic;								-- Turns on the red led when the user decides to get a specific drink
	signal s_mode			  : std_logic;								-- Makes sure that each FSM works separately from the other
	signal s_counting		  : std_logic;								-- Stops the timer for the drink preparation when the sugar mode is activated
	signal s_done 			  : std_logic;								-- Signals that the drink is ready
	signal s_reset			  : std_logic;								-- Starts a new timer after the drink is ready in order to prepare a self reset
	signal s_sugardisplay  : std_logic;								-- Just an enable for the sugar hex displays, aesthetic porpuses only
	signal s_clean			  : std_logic;								-- Restarts the machine by itself
	signal s_fix			  : std_logic;								-- Same as the above just to ensure all the leds would turn off
	
begin	
	
-- DRINK DISPLAY
drinksFSM: entity work.drinksMenuFSM(v1)
					port map(clk => CLOCK_50,
								reset => SW(17) or s_clean,
								ready => s_timer,
								xIn3 => s_debouncedKEY3,
								xIn2 => s_debouncedKEY2,
								xIn0 => s_debouncedKEY0,
								xIn1 => s_debouncedKEY1,
								done => s_done,
								refresh => s_clean,
								ticks => s_ticking,
								sugaren => s_sugardisplay,
								static => s_enable,
								clear => s_reset,
								drink => s_drink,
								fix => s_fix,
								mode => s_mode,
								preparing => s_makedrink);

hexdisplay7: entity work.Bin7Seg(v1)
						port map(enable => s_enable,
									binInput => s_drink(15 downto 12),
									todisplay => HEX7);
						
hexdisplay6: entity work.Bin7Seg(v1)
						port map(enable => s_enable,
									binInput => s_drink(11 downto 8),
									todisplay => HEX6);

hexdisplay5: entity work.Bin7Seg(v1)
						port map(enable => s_enable,
									binInput => s_drink(7 downto 4),
									todisplay => HEX5);

hexdisplay4: entity work.Bin7Seg(v1)
						port map(enable => s_enable,
									binInput => s_drink(3 downto 0),
									todisplay => HEX4);
							  
-- SUGAR DISPLAY
sugarFSM: entity work.sugarLevelFSM(v1)
					port map(clk => CLOCK_50,
								reset => SW(17) or s_clean,
								xIn0 => s_debouncedKEY0,
								xIn1 => s_debouncedKEY1,
								mode => s_mode,
								refresh => s_clean,
								busy => s_makedrink,
								cando => s_counting,
								sugar => s_sugar);
						
hexdisplay3: entity work.Bin7Seg(v1)
						port map(enable => s_sugardisplay,
									binInput => s_sugar(15 downto 12),
									todisplay => HEX3);
						
hexdisplay2: entity work.Bin7Seg(v1)
						port map(enable => s_sugardisplay,
									binInput => s_sugar(11 downto 8),
									todisplay => HEX2);

hexdisplay1: entity work.Bin7Seg(v1)
						port map(enable => s_sugardisplay,
									binInput => s_sugar(7 downto 4),
									todisplay => HEX1);

hexdisplay0: entity work.Bin7Seg(v1)
						port map(enable => s_sugardisplay,
									binInput => s_sugar(3 downto 0),
									todisplay => HEX0);
						
-- DEBOUNCERS
debouncer0: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(0),
								pulsedOut => s_debouncedKEY0);
								
debouncer1: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(1),
								pulsedOut => s_debouncedKEY1);
								
debouncer2: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(2),
								pulsedOut => s_debouncedKEY2);

debouncer3: entity work.DebounceUnit(Behavioral)
					generic map(kHzClkFreq		=> 5e4,
							  	   mSecMinInWidth => 100,
								   inPolarity		=> '0',
									outPolarity		=> '1')
					port map(refClk	 => CLOCK_50,
								dirtyIn	 => KEY(3),
								pulsedOut => s_debouncedKEY3);
								
-- CLOCKS
bin7enable: entity work.ClkDividerN(RTL)
					generic map(k 	=> 10e6)
					port map(clkIn	=> CLOCK_50,
							   clkOut => s_ticking);

timer: 	entity work.TimerUnit(Behavioral)
				generic map(kHzClkFreq	=> 5e4,
								mSecLength	=> 5e3,
								outPolarity => '1')
				port map(clk => CLOCK_50,
							reset => SW(17),	
							start	=> '1', 
							enable => '1',
							decorre	=> open,
							expirou	=> s_timer);
							
timerdrink: 	entity work.TimerUnit(Behavioral)
						generic map(kHzClkFreq	=> 5e4,
										mSecLength	=> 1e4,
										outPolarity => '1')
						port map(clk => CLOCK_50,
									reset => SW(17) or s_clean,	
									start	=> s_makedrink,
									enable => s_counting,
									decorre	=> LEDR(0),
									expirou	=> s_done);

resettimer: 	entity work.TimerUnit(Behavioral)
						generic map(kHzClkFreq	=> 5e4,
										mSecLength	=> 3e3,
										outPolarity => '1')
						port map(clk => CLOCK_50,
									reset => SW(17) or s_fix,	
									start	=> s_reset,
									enable => s_reset,
									decorre	=> LEDG(7),
									expirou	=> s_clean);
		
end v1;