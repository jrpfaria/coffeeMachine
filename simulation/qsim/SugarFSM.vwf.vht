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
-- Generated on "06/19/2021 12:02:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          sugarLevelFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sugarLevelFSM_vhd_vec_tst IS
END sugarLevelFSM_vhd_vec_tst;
ARCHITECTURE sugarLevelFSM_arch OF sugarLevelFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL cando : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL mode : STD_LOGIC;
SIGNAL refresh : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sugar : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL xIn0 : STD_LOGIC;
SIGNAL xIn1 : STD_LOGIC;
COMPONENT sugarLevelFSM
	PORT (
	busy : IN STD_LOGIC;
	cando : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	mode : IN STD_LOGIC;
	refresh : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	sugar : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	xIn0 : IN STD_LOGIC;
	xIn1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : sugarLevelFSM
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	cando => cando,
	clk => clk,
	mode => mode,
	refresh => refresh,
	reset => reset,
	sugar => sugar,
	xIn0 => xIn0,
	xIn1 => xIn1
	);

-- busy
t_prcs_busy: PROCESS
BEGIN
	busy <= '0';
	WAIT FOR 10000 ps;
	busy <= '1';
	WAIT FOR 370000 ps;
	busy <= '0';
WAIT;
END PROCESS t_prcs_busy;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- mode
t_prcs_mode: PROCESS
BEGIN
	mode <= '0';
	WAIT FOR 30000 ps;
	mode <= '1';
	WAIT FOR 260000 ps;
	mode <= '0';
WAIT;
END PROCESS t_prcs_mode;

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
	WAIT FOR 670000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- xIn0
t_prcs_xIn0: PROCESS
BEGIN
	xIn0 <= '0';
	WAIT FOR 30000 ps;
	xIn0 <= '1';
	WAIT FOR 20000 ps;
	xIn0 <= '0';
	WAIT FOR 140000 ps;
	xIn0 <= '1';
	WAIT FOR 30000 ps;
	xIn0 <= '0';
	WAIT FOR 50000 ps;
	xIn0 <= '1';
	WAIT FOR 20000 ps;
	xIn0 <= '0';
	WAIT FOR 60000 ps;
	xIn0 <= '1';
	WAIT FOR 20000 ps;
	xIn0 <= '0';
	WAIT FOR 140000 ps;
	xIn0 <= '1';
	WAIT FOR 20000 ps;
	xIn0 <= '0';
	WAIT FOR 60000 ps;
	xIn0 <= '1';
	WAIT FOR 20000 ps;
	xIn0 <= '0';
WAIT;
END PROCESS t_prcs_xIn0;

-- xIn1
t_prcs_xIn1: PROCESS
BEGIN
	xIn1 <= '0';
	WAIT FOR 110000 ps;
	xIn1 <= '1';
	WAIT FOR 30000 ps;
	xIn1 <= '0';
	WAIT FOR 290000 ps;
	xIn1 <= '1';
	WAIT FOR 20000 ps;
	xIn1 <= '0';
WAIT;
END PROCESS t_prcs_xIn1;
END sugarLevelFSM_arch;
