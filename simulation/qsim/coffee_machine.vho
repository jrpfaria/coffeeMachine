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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/31/2021 14:43:27"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Bin7Seg IS
    PORT (
	binInput : IN std_logic_vector(3 DOWNTO 0);
	todisplay : OUT std_logic_vector(6 DOWNTO 0)
	);
END Bin7Seg;

ARCHITECTURE structure OF Bin7Seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binInput : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_todisplay : std_logic_vector(6 DOWNTO 0);
SIGNAL \todisplay[0]~output_o\ : std_logic;
SIGNAL \todisplay[1]~output_o\ : std_logic;
SIGNAL \todisplay[2]~output_o\ : std_logic;
SIGNAL \todisplay[3]~output_o\ : std_logic;
SIGNAL \todisplay[4]~output_o\ : std_logic;
SIGNAL \todisplay[5]~output_o\ : std_logic;
SIGNAL \todisplay[6]~output_o\ : std_logic;
SIGNAL \binInput[0]~input_o\ : std_logic;
SIGNAL \binInput[1]~input_o\ : std_logic;
SIGNAL \binInput[2]~input_o\ : std_logic;
SIGNAL \binInput[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_binInput <= binInput;
todisplay <= ww_todisplay;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;

\todisplay[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \todisplay[0]~output_o\);

\todisplay[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \todisplay[1]~output_o\);

\todisplay[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \todisplay[2]~output_o\);

\todisplay[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \todisplay[3]~output_o\);

\todisplay[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \todisplay[4]~output_o\);

\todisplay[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \todisplay[5]~output_o\);

\todisplay[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \todisplay[6]~output_o\);

\binInput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(0),
	o => \binInput[0]~input_o\);

\binInput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(1),
	o => \binInput[1]~input_o\);

\binInput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(2),
	o => \binInput[2]~input_o\);

\binInput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binInput(3),
	o => \binInput[3]~input_o\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\binInput[0]~input_o\) # ((\binInput[3]~input_o\) # ((\binInput[1]~input_o\ & \binInput[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux4~0_combout\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\binInput[3]~input_o\) # ((\binInput[0]~input_o\ & ((\binInput[2]~input_o\) # (!\binInput[1]~input_o\))) # (!\binInput[0]~input_o\ & (\binInput[1]~input_o\ $ (\binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux3~0_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\binInput[3]~input_o\) # (\binInput[0]~input_o\ $ (((\binInput[1]~input_o\ & !\binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux2~0_combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\binInput[3]~input_o\) # ((\binInput[1]~input_o\ & ((!\binInput[2]~input_o\))) # (!\binInput[1]~input_o\ & ((\binInput[0]~input_o\) # (\binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux1~0_combout\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\binInput[3]~input_o\ & ((\binInput[1]~input_o\ & ((!\binInput[2]~input_o\))) # (!\binInput[1]~input_o\ & (\binInput[0]~input_o\ & \binInput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binInput[0]~input_o\,
	datab => \binInput[1]~input_o\,
	datac => \binInput[2]~input_o\,
	datad => \binInput[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_todisplay(0) <= \todisplay[0]~output_o\;

ww_todisplay(1) <= \todisplay[1]~output_o\;

ww_todisplay(2) <= \todisplay[2]~output_o\;

ww_todisplay(3) <= \todisplay[3]~output_o\;

ww_todisplay(4) <= \todisplay[4]~output_o\;

ww_todisplay(5) <= \todisplay[5]~output_o\;

ww_todisplay(6) <= \todisplay[6]~output_o\;
END structure;


