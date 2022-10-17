-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/19/2021 12:11:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          drinksMenuFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY drinksMenuFSM_vhd_vec_tst IS
END drinksMenuFSM_vhd_vec_tst;
ARCHITECTURE drinksMenuFSM_arch OF drinksMenuFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL drink : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL fix : STD_LOGIC;
SIGNAL mode : STD_LOGIC;
SIGNAL preparing : STD_LOGIC;
SIGNAL ready : STD_LOGIC;
SIGNAL refresh : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL static : STD_LOGIC;
SIGNAL sugaren : STD_LOGIC;
SIGNAL ticks : STD_LOGIC;
SIGNAL xIn0 : STD_LOGIC;
SIGNAL xIn1 : STD_LOGIC;
SIGNAL xIn2 : STD_LOGIC;
SIGNAL xIn3 : STD_LOGIC;
COMPONENT drinksMenuFSM
	PORT (
	clear : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	done : IN STD_LOGIC;
	drink : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	fix : BUFFER STD_LOGIC;
	mode : BUFFER STD_LOGIC;
	preparing : BUFFER STD_LOGIC;
	ready : IN STD_LOGIC;
	refresh : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	static : BUFFER STD_LOGIC;
	sugaren : BUFFER STD_LOGIC;
	ticks : IN STD_LOGIC;
	xIn0 : IN STD_LOGIC;
	xIn1 : IN STD_LOGIC;
	xIn2 : IN STD_LOGIC;
	xIn3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : drinksMenuFSM
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clk => clk,
	done => done,
	drink => drink,
	fix => fix,
	mode => mode,
	preparing => preparing,
	ready => ready,
	refresh => refresh,
	reset => reset,
	static => static,
	sugaren => sugaren,
	ticks => ticks,
	xIn0 => xIn0,
	xIn1 => xIn1,
	xIn2 => xIn2,
	xIn3 => xIn3
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		clk <= '0';
		WAIT FOR 30000 ps;
		clk <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 30000 ps;
	clk <= '1';
WAIT;
END PROCESS t_prcs_clk;

-- done
t_prcs_done: PROCESS
BEGIN
	done <= '0';
WAIT;
END PROCESS t_prcs_done;

-- ready
t_prcs_ready: PROCESS
BEGIN
	ready <= '0';
	WAIT FOR 20000 ps;
	ready <= '1';
	WAIT FOR 40000 ps;
	ready <= '0';
WAIT;
END PROCESS t_prcs_ready;

-- refresh
t_prcs_refresh: PROCESS
BEGIN
	refresh <= '0';
WAIT;
END PROCESS t_prcs_refresh;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 800000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- ticks
t_prcs_ticks: PROCESS
BEGIN
	ticks <= '0';
WAIT;
END PROCESS t_prcs_ticks;

-- xIn3
t_prcs_xIn3: PROCESS
BEGIN
	xIn3 <= '0';
	WAIT FOR 320000 ps;
	xIn3 <= '1';
	WAIT FOR 40000 ps;
	xIn3 <= '0';
	WAIT FOR 80000 ps;
	xIn3 <= '1';
	WAIT FOR 40000 ps;
	xIn3 <= '0';
	WAIT FOR 80000 ps;
	xIn3 <= '1';
	WAIT FOR 40000 ps;
	xIn3 <= '0';
WAIT;
END PROCESS t_prcs_xIn3;

-- xIn0
t_prcs_xIn0: PROCESS
BEGIN
	xIn0 <= '0';
	WAIT FOR 140000 ps;
	xIn0 <= '1';
	WAIT FOR 40000 ps;
	xIn0 <= '0';
	WAIT FOR 20000 ps;
	xIn0 <= '1';
	WAIT FOR 40000 ps;
	xIn0 <= '0';
	WAIT FOR 140000 ps;
	xIn0 <= '1';
	WAIT FOR 40000 ps;
	xIn0 <= '0';
	WAIT FOR 500000 ps;
	xIn0 <= '1';
	WAIT FOR 40000 ps;
	xIn0 <= '0';
WAIT;
END PROCESS t_prcs_xIn0;

-- xIn1
t_prcs_xIn1: PROCESS
BEGIN
	xIn1 <= '0';
	WAIT FOR 260000 ps;
	xIn1 <= '1';
	WAIT FOR 40000 ps;
	xIn1 <= '0';
WAIT;
END PROCESS t_prcs_xIn1;

-- xIn2
t_prcs_xIn2: PROCESS
BEGIN
	xIn2 <= '0';
	WAIT FOR 500000 ps;
	xIn2 <= '1';
	WAIT FOR 40000 ps;
	xIn2 <= '0';
	WAIT FOR 100000 ps;
	xIn2 <= '1';
	WAIT FOR 40000 ps;
	xIn2 <= '0';
WAIT;
END PROCESS t_prcs_xIn2;
END drinksMenuFSM_arch;
