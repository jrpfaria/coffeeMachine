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

-- DATE "06/19/2021 12:11:43"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	drinksMenuFSM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ready : IN std_logic;
	xIn0 : IN std_logic;
	xIn1 : IN std_logic;
	xIn2 : IN std_logic;
	xIn3 : IN std_logic;
	done : IN std_logic;
	refresh : IN std_logic;
	ticks : IN std_logic;
	sugaren : BUFFER std_logic;
	static : BUFFER std_logic;
	clear : BUFFER std_logic;
	drink : BUFFER std_logic_vector(15 DOWNTO 0);
	mode : BUFFER std_logic;
	preparing : BUFFER std_logic;
	fix : BUFFER std_logic
	);
END drinksMenuFSM;

ARCHITECTURE structure OF drinksMenuFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_xIn0 : std_logic;
SIGNAL ww_xIn1 : std_logic;
SIGNAL ww_xIn2 : std_logic;
SIGNAL ww_xIn3 : std_logic;
SIGNAL ww_done : std_logic;
SIGNAL ww_refresh : std_logic;
SIGNAL ww_ticks : std_logic;
SIGNAL ww_sugaren : std_logic;
SIGNAL ww_static : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_drink : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_mode : std_logic;
SIGNAL ww_preparing : std_logic;
SIGNAL ww_fix : std_logic;
SIGNAL \refresh~input_o\ : std_logic;
SIGNAL \sugaren~output_o\ : std_logic;
SIGNAL \static~output_o\ : std_logic;
SIGNAL \clear~output_o\ : std_logic;
SIGNAL \drink[0]~output_o\ : std_logic;
SIGNAL \drink[1]~output_o\ : std_logic;
SIGNAL \drink[2]~output_o\ : std_logic;
SIGNAL \drink[3]~output_o\ : std_logic;
SIGNAL \drink[4]~output_o\ : std_logic;
SIGNAL \drink[5]~output_o\ : std_logic;
SIGNAL \drink[6]~output_o\ : std_logic;
SIGNAL \drink[7]~output_o\ : std_logic;
SIGNAL \drink[8]~output_o\ : std_logic;
SIGNAL \drink[9]~output_o\ : std_logic;
SIGNAL \drink[10]~output_o\ : std_logic;
SIGNAL \drink[11]~output_o\ : std_logic;
SIGNAL \drink[12]~output_o\ : std_logic;
SIGNAL \drink[13]~output_o\ : std_logic;
SIGNAL \drink[14]~output_o\ : std_logic;
SIGNAL \drink[15]~output_o\ : std_logic;
SIGNAL \mode~output_o\ : std_logic;
SIGNAL \preparing~output_o\ : std_logic;
SIGNAL \fix~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \xIn2~input_o\ : std_logic;
SIGNAL \done~input_o\ : std_logic;
SIGNAL \xIn3~input_o\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \s_mode~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ready~input_o\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state.Choice~q\ : std_logic;
SIGNAL \s_mode~1_combout\ : std_logic;
SIGNAL \s_mode~2_combout\ : std_logic;
SIGNAL \s_mode~q\ : std_logic;
SIGNAL \s_preparing~0_combout\ : std_logic;
SIGNAL \s_preparing~q\ : std_logic;
SIGNAL \xIn0~input_o\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \xIn1~input_o\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state.Tea~q\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.HotChoc~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state.Hello~0_combout\ : std_logic;
SIGNAL \state.Hello~q\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.Coffee~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \sugaren~reg0_q\ : std_logic;
SIGNAL \ticks~input_o\ : std_logic;
SIGNAL \static~0_combout\ : std_logic;
SIGNAL \static~reg0_q\ : std_logic;
SIGNAL \drink~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \s_clear~q\ : std_logic;
SIGNAL \drink~1_combout\ : std_logic;
SIGNAL \drink[0]~reg0_q\ : std_logic;
SIGNAL \drink~2_combout\ : std_logic;
SIGNAL \drink[1]~reg0_q\ : std_logic;
SIGNAL \drink[2]~8_combout\ : std_logic;
SIGNAL \drink[2]~reg0_q\ : std_logic;
SIGNAL \drink[3]~reg0_q\ : std_logic;
SIGNAL \drink~3_combout\ : std_logic;
SIGNAL \drink[4]~reg0_q\ : std_logic;
SIGNAL \drink[5]~reg0_q\ : std_logic;
SIGNAL \drink~4_combout\ : std_logic;
SIGNAL \drink[6]~reg0_q\ : std_logic;
SIGNAL \drink[7]~reg0_q\ : std_logic;
SIGNAL \drink[8]~reg0_q\ : std_logic;
SIGNAL \drink~5_combout\ : std_logic;
SIGNAL \drink[9]~reg0_q\ : std_logic;
SIGNAL \drink~6_combout\ : std_logic;
SIGNAL \drink[10]~reg0_q\ : std_logic;
SIGNAL \drink[12]~10_combout\ : std_logic;
SIGNAL \drink[12]~reg0_q\ : std_logic;
SIGNAL \drink[13]~reg0_q\ : std_logic;
SIGNAL \drink[14]~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \fix~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ready <= ready;
ww_xIn0 <= xIn0;
ww_xIn1 <= xIn1;
ww_xIn2 <= xIn2;
ww_xIn3 <= xIn3;
ww_done <= done;
ww_refresh <= refresh;
ww_ticks <= ticks;
sugaren <= ww_sugaren;
static <= ww_static;
clear <= ww_clear;
drink <= ww_drink;
mode <= ww_mode;
preparing <= ww_preparing;
fix <= ww_fix;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

\sugaren~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sugaren~reg0_q\,
	devoe => ww_devoe,
	o => \sugaren~output_o\);

\static~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \static~reg0_q\,
	devoe => ww_devoe,
	o => \static~output_o\);

\clear~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_clear~q\,
	devoe => ww_devoe,
	o => \clear~output_o\);

\drink[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[0]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[0]~output_o\);

\drink[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[1]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[1]~output_o\);

\drink[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[2]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[2]~output_o\);

\drink[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[3]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[3]~output_o\);

\drink[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[4]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[4]~output_o\);

\drink[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[5]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[5]~output_o\);

\drink[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[6]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[6]~output_o\);

\drink[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[7]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[7]~output_o\);

\drink[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[8]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[8]~output_o\);

\drink[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[9]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[9]~output_o\);

\drink[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[10]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[10]~output_o\);

\drink[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \drink[11]~output_o\);

\drink[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[12]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[12]~output_o\);

\drink[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[13]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[13]~output_o\);

\drink[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drink[14]~reg0_q\,
	devoe => ww_devoe,
	o => \drink[14]~output_o\);

\drink[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \drink[15]~output_o\);

\mode~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_mode~q\,
	devoe => ww_devoe,
	o => \mode~output_o\);

\preparing~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_preparing~q\,
	devoe => ww_devoe,
	o => \preparing~output_o\);

\fix~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fix~reg0_q\,
	devoe => ww_devoe,
	o => \fix~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\xIn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xIn2,
	o => \xIn2~input_o\);

\done~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_done,
	o => \done~input_o\);

\xIn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xIn3,
	o => \xIn3~input_o\);

\state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (!\xIn2~input_o\ & (!\done~input_o\ & !\xIn3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xIn2~input_o\,
	datac => \done~input_o\,
	datad => \xIn3~input_o\,
	combout => \state~16_combout\);

\s_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mode~0_combout\ = (!\xIn2~input_o\ & !\done~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xIn2~input_o\,
	datad => \done~input_o\,
	combout => \s_mode~0_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\ready~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ready,
	o => \ready~input_o\);

\state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (\ready~input_o\ & (!\state.Hello~q\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ready~input_o\,
	datac => \state.Hello~q\,
	datad => \reset~input_o\,
	combout => \state~35_combout\);

\state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\state~35_combout\) # ((\state.Choice~q\ & (\state~18_combout\ & !\state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~35_combout\,
	datab => \state.Choice~q\,
	datac => \state~18_combout\,
	datad => \state~30_combout\,
	combout => \state~36_combout\);

\state.Choice\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Choice~q\);

\s_mode~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mode~1_combout\ = (\state.Hello~q\ & (!\reset~input_o\ & !\state.Choice~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	datac => \reset~input_o\,
	datad => \state.Choice~q\,
	combout => \s_mode~1_combout\);

\s_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_mode~2_combout\ = \s_mode~q\ $ (((\s_mode~0_combout\ & (\xIn3~input_o\ & \s_mode~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mode~q\,
	datab => \s_mode~0_combout\,
	datac => \xIn3~input_o\,
	datad => \s_mode~1_combout\,
	combout => \s_mode~2_combout\);

s_mode : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_mode~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_mode~q\);

\s_preparing~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_preparing~0_combout\ = (\s_mode~1_combout\ & ((\xIn2~input_o\) # ((\s_preparing~q\ & !\done~input_o\)))) # (!\s_mode~1_combout\ & (((\s_preparing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xIn2~input_o\,
	datab => \s_preparing~q\,
	datac => \s_mode~1_combout\,
	datad => \done~input_o\,
	combout => \s_preparing~0_combout\);

s_preparing : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_preparing~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_preparing~q\);

\xIn0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xIn0,
	o => \xIn0~input_o\);

\state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\s_mode~q\) # ((\s_preparing~q\) # (!\xIn0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mode~q\,
	datab => \s_preparing~q\,
	datad => \xIn0~input_o\,
	combout => \state~25_combout\);

\xIn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xIn1,
	o => \xIn1~input_o\);

\state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\state.HotChoc~q\ & (\xIn1~input_o\)) # (!\state.HotChoc~q\ & (((\state.Coffee~q\ & \xIn0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xIn1~input_o\,
	datab => \state.Coffee~q\,
	datac => \xIn0~input_o\,
	datad => \state.HotChoc~q\,
	combout => \state~23_combout\);

\state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (!\s_mode~q\ & (!\s_preparing~q\ & (\state~16_combout\ & \state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mode~q\,
	datab => \s_preparing~q\,
	datac => \state~16_combout\,
	datad => \state~23_combout\,
	combout => \state~38_combout\);

\state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (!\s_mode~q\ & !\s_preparing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_mode~q\,
	datad => \s_preparing~q\,
	combout => \state~19_combout\);

\state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\xIn1~input_o\ & ((\state~19_combout\) # ((!\state.Tea~q\)))) # (!\xIn1~input_o\ & (((\xIn0~input_o\ & !\state.Tea~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xIn1~input_o\,
	datab => \state~19_combout\,
	datac => \xIn0~input_o\,
	datad => \state.Tea~q\,
	combout => \state~20_combout\);

\state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\state.Tea~q\ & (\state~16_combout\ & ((!\state~19_combout\) # (!\xIn0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Tea~q\,
	datab => \state~16_combout\,
	datac => \xIn0~input_o\,
	datad => \state~19_combout\,
	combout => \state~21_combout\);

\state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\state~20_combout\ & ((\state.Choice~q\) # (\state~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~20_combout\,
	datab => \state.Choice~q\,
	datac => \state~21_combout\,
	combout => \state~22_combout\);

\state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (!\state~22_combout\ & (\state~18_combout\ & \state.Tea~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~22_combout\,
	datab => \state~18_combout\,
	datac => \state.Tea~q\,
	combout => \state~31_combout\);

\state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state~38_combout\ & (!\reset~input_o\ & (!\state~17_combout\))) # (!\state~38_combout\ & (((\state~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \state~17_combout\,
	datac => \state~38_combout\,
	datad => \state~31_combout\,
	combout => \state~32_combout\);

\state.Tea\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Tea~q\);

\state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (!\xIn2~input_o\ & (!\done~input_o\ & (!\xIn3~input_o\ & \xIn0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xIn2~input_o\,
	datab => \done~input_o\,
	datac => \xIn3~input_o\,
	datad => \xIn0~input_o\,
	combout => \state~37_combout\);

\state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\state.Tea~q\ & (!\s_mode~q\ & (!\s_preparing~q\ & \state~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Tea~q\,
	datab => \s_mode~q\,
	datac => \s_preparing~q\,
	datad => \state~37_combout\,
	combout => \state~17_combout\);

\state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\state~17_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~17_combout\,
	datad => \reset~input_o\,
	combout => \state~33_combout\);

\state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\state~33_combout\) # ((\state.HotChoc~q\ & (\state~18_combout\ & !\state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~33_combout\,
	datab => \state.HotChoc~q\,
	datac => \state~18_combout\,
	datad => \state~30_combout\,
	combout => \state~34_combout\);

\state.HotChoc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.HotChoc~q\);

\state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\state~16_combout\ & ((\state~25_combout\) # ((!\state.Tea~q\)))) # (!\state~16_combout\ & (((!\state.HotChoc~q\ & !\state.Tea~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~16_combout\,
	datab => \state~25_combout\,
	datac => \state.HotChoc~q\,
	datad => \state.Tea~q\,
	combout => \state~26_combout\);

\state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (\state.Coffee~q\ & (\xIn0~input_o\ & (\state~16_combout\ & \state~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Coffee~q\,
	datab => \xIn0~input_o\,
	datac => \state~16_combout\,
	datad => \state~19_combout\,
	combout => \state~27_combout\);

\state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\xIn1~input_o\ & (!\s_mode~q\ & (!\s_preparing~q\ & !\state.Coffee~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xIn1~input_o\,
	datab => \s_mode~q\,
	datac => \s_preparing~q\,
	datad => \state.Coffee~q\,
	combout => \state~28_combout\);

\state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (\state~28_combout\) # ((\state.Choice~q\ & ((\xIn0~input_o\) # (\xIn1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~28_combout\,
	datab => \state.Choice~q\,
	datac => \xIn0~input_o\,
	datad => \xIn1~input_o\,
	combout => \state~29_combout\);

\state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (\state.Hello~q\ & (\state~26_combout\ & ((\state~27_combout\) # (\state~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	datab => \state~26_combout\,
	datac => \state~27_combout\,
	datad => \state~29_combout\,
	combout => \state~30_combout\);

\state.Hello~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.Hello~0_combout\ = (\state~18_combout\ & ((\state~30_combout\ & ((!\reset~input_o\))) # (!\state~30_combout\ & (\state.Hello~q\)))) # (!\state~18_combout\ & (((!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	datab => \state~18_combout\,
	datac => \state~30_combout\,
	datad => \reset~input_o\,
	combout => \state.Hello~0_combout\);

\state.Hello\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.Hello~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Hello~q\);

\state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (!\reset~input_o\ & (!\state~17_combout\ & ((\state.Hello~q\) # (!\ready~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	datab => \ready~input_o\,
	datac => \reset~input_o\,
	datad => \state~17_combout\,
	combout => \state~18_combout\);

\state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state~18_combout\ & (!\state~38_combout\ & ((\state.Coffee~q\) # (\state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \state.Coffee~q\,
	datac => \state~22_combout\,
	datad => \state~38_combout\,
	combout => \state~24_combout\);

\state.Coffee\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Coffee~q\);

\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.Coffee~q\) # ((\sugaren~reg0_q\ & \state.Hello~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Coffee~q\,
	datab => \sugaren~reg0_q\,
	datac => \state.Hello~q\,
	combout => \Selector1~0_combout\);

\sugaren~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugaren~reg0_q\);

\ticks~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ticks,
	o => \ticks~input_o\);

\static~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \static~0_combout\ = (\state.Hello~q\) # (\ticks~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	datab => \ticks~input_o\,
	combout => \static~0_combout\);

\static~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \static~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \static~reg0_q\);

\drink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~0_combout\ = (!\state.Coffee~q\ & !\state.HotChoc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Coffee~q\,
	datad => \state.HotChoc~q\,
	combout => \drink~0_combout\);

\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\s_clear~q\ & (\state.Choice~q\)) # (!\s_clear~q\ & (((\done~input_o\ & !\xIn2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_clear~q\,
	datab => \state.Choice~q\,
	datac => \done~input_o\,
	datad => \xIn2~input_o\,
	combout => \Selector0~0_combout\);

\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\s_clear~q\ & ((\state.Tea~q\) # ((\Selector0~0_combout\) # (!\drink~0_combout\)))) # (!\s_clear~q\ & (\Selector0~0_combout\ & ((\state.Tea~q\) # (!\drink~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Tea~q\,
	datab => \drink~0_combout\,
	datac => \s_clear~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

s_clear : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector0~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_clear~q\);

\drink~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~1_combout\ = (\state.Choice~q\) # (\state.Tea~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Choice~q\,
	datab => \state.Tea~q\,
	combout => \drink~1_combout\);

\drink[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[0]~reg0_q\);

\drink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~2_combout\ = (!\state.Choice~q\ & \state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Choice~q\,
	datad => \state.Hello~q\,
	combout => \drink~2_combout\);

\drink[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[1]~reg0_q\);

\drink[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink[2]~8_combout\ = !\state.Coffee~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Coffee~q\,
	combout => \drink[2]~8_combout\);

\drink[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink[2]~8_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[2]~reg0_q\);

\drink[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.Tea~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[3]~reg0_q\);

\drink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~3_combout\ = (\state.Tea~q\) # (!\state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Tea~q\,
	datad => \state.Hello~q\,
	combout => \drink~3_combout\);

\drink[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[4]~reg0_q\);

\drink[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[5]~reg0_q\);

\drink~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~4_combout\ = (\state.Tea~q\) # (\state.HotChoc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Tea~q\,
	datad => \state.HotChoc~q\,
	combout => \drink~4_combout\);

\drink[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[6]~reg0_q\);

\drink[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.Coffee~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[7]~reg0_q\);

\drink[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.Hello~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[8]~reg0_q\);

\drink~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~5_combout\ = (\state.Coffee~q\) # (!\state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Coffee~q\,
	datad => \state.Hello~q\,
	combout => \drink~5_combout\);

\drink[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[9]~reg0_q\);

\drink~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink~6_combout\ = (\state.Coffee~q\) # (\state.Choice~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Coffee~q\,
	datab => \state.Choice~q\,
	combout => \drink~6_combout\);

\drink[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[10]~reg0_q\);

\drink[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drink[12]~10_combout\ = !\state.Hello~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Hello~q\,
	combout => \drink[12]~10_combout\);

\drink[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink[12]~10_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[12]~reg0_q\);

\drink[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.Hello~q\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[13]~reg0_q\);

\drink[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \drink~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drink[14]~reg0_q\);

\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\fix~reg0_q\ & !\state.Choice~q\)) # (!\state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fix~reg0_q\,
	datac => \state.Choice~q\,
	datad => \state.Hello~q\,
	combout => \Selector2~0_combout\);

\fix~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fix~reg0_q\);

\refresh~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_refresh,
	o => \refresh~input_o\);

ww_sugaren <= \sugaren~output_o\;

ww_static <= \static~output_o\;

ww_clear <= \clear~output_o\;

ww_drink(0) <= \drink[0]~output_o\;

ww_drink(1) <= \drink[1]~output_o\;

ww_drink(2) <= \drink[2]~output_o\;

ww_drink(3) <= \drink[3]~output_o\;

ww_drink(4) <= \drink[4]~output_o\;

ww_drink(5) <= \drink[5]~output_o\;

ww_drink(6) <= \drink[6]~output_o\;

ww_drink(7) <= \drink[7]~output_o\;

ww_drink(8) <= \drink[8]~output_o\;

ww_drink(9) <= \drink[9]~output_o\;

ww_drink(10) <= \drink[10]~output_o\;

ww_drink(11) <= \drink[11]~output_o\;

ww_drink(12) <= \drink[12]~output_o\;

ww_drink(13) <= \drink[13]~output_o\;

ww_drink(14) <= \drink[14]~output_o\;

ww_drink(15) <= \drink[15]~output_o\;

ww_mode <= \mode~output_o\;

ww_preparing <= \preparing~output_o\;

ww_fix <= \fix~output_o\;
END structure;


