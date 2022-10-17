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

-- DATE "06/21/2021 14:02:01"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DrinksControlUnitDemo IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DrinksControlUnitDemo;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksControlUnitDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \timer|s_count[0]~28_combout\ : std_logic;
SIGNAL \timer|s_count[5]~30_combout\ : std_logic;
SIGNAL \timer|s_count[0]~29\ : std_logic;
SIGNAL \timer|s_count[1]~31_combout\ : std_logic;
SIGNAL \timer|s_count[1]~32\ : std_logic;
SIGNAL \timer|s_count[2]~33_combout\ : std_logic;
SIGNAL \timer|s_count[2]~34\ : std_logic;
SIGNAL \timer|s_count[3]~35_combout\ : std_logic;
SIGNAL \timer|s_count[3]~36\ : std_logic;
SIGNAL \timer|s_count[4]~37_combout\ : std_logic;
SIGNAL \timer|s_count[4]~38\ : std_logic;
SIGNAL \timer|s_count[5]~39_combout\ : std_logic;
SIGNAL \timer|s_count[5]~40\ : std_logic;
SIGNAL \timer|s_count[6]~41_combout\ : std_logic;
SIGNAL \timer|s_count[6]~42\ : std_logic;
SIGNAL \timer|s_count[7]~43_combout\ : std_logic;
SIGNAL \timer|s_count[7]~44\ : std_logic;
SIGNAL \timer|s_count[8]~45_combout\ : std_logic;
SIGNAL \timer|s_count[8]~46\ : std_logic;
SIGNAL \timer|s_count[9]~47_combout\ : std_logic;
SIGNAL \timer|s_count[9]~48\ : std_logic;
SIGNAL \timer|s_count[10]~49_combout\ : std_logic;
SIGNAL \timer|s_count[10]~50\ : std_logic;
SIGNAL \timer|s_count[11]~51_combout\ : std_logic;
SIGNAL \timer|s_count[11]~52\ : std_logic;
SIGNAL \timer|s_count[12]~53_combout\ : std_logic;
SIGNAL \timer|s_count[12]~54\ : std_logic;
SIGNAL \timer|s_count[13]~55_combout\ : std_logic;
SIGNAL \timer|s_count[13]~56\ : std_logic;
SIGNAL \timer|s_count[14]~57_combout\ : std_logic;
SIGNAL \timer|s_count[14]~58\ : std_logic;
SIGNAL \timer|s_count[15]~59_combout\ : std_logic;
SIGNAL \timer|s_count[15]~60\ : std_logic;
SIGNAL \timer|s_count[16]~61_combout\ : std_logic;
SIGNAL \timer|s_count[16]~62\ : std_logic;
SIGNAL \timer|s_count[17]~63_combout\ : std_logic;
SIGNAL \timer|s_count[17]~64\ : std_logic;
SIGNAL \timer|s_count[18]~65_combout\ : std_logic;
SIGNAL \timer|s_count[18]~66\ : std_logic;
SIGNAL \timer|s_count[19]~67_combout\ : std_logic;
SIGNAL \timer|s_count[19]~68\ : std_logic;
SIGNAL \timer|s_count[20]~69_combout\ : std_logic;
SIGNAL \timer|s_count[20]~70\ : std_logic;
SIGNAL \timer|s_count[21]~71_combout\ : std_logic;
SIGNAL \timer|s_count[21]~72\ : std_logic;
SIGNAL \timer|s_count[22]~73_combout\ : std_logic;
SIGNAL \timer|s_count[22]~74\ : std_logic;
SIGNAL \timer|s_count[23]~75_combout\ : std_logic;
SIGNAL \timer|Equal1~6_combout\ : std_logic;
SIGNAL \timer|Equal1~5_combout\ : std_logic;
SIGNAL \timer|s_count[23]~76\ : std_logic;
SIGNAL \timer|s_count[24]~77_combout\ : std_logic;
SIGNAL \timer|s_count[24]~78\ : std_logic;
SIGNAL \timer|s_count[25]~79_combout\ : std_logic;
SIGNAL \timer|s_count[25]~80\ : std_logic;
SIGNAL \timer|s_count[26]~81_combout\ : std_logic;
SIGNAL \timer|s_count[26]~82\ : std_logic;
SIGNAL \timer|s_count[27]~83_combout\ : std_logic;
SIGNAL \timer|Equal1~7_combout\ : std_logic;
SIGNAL \timer|Equal1~3_combout\ : std_logic;
SIGNAL \timer|Equal1~0_combout\ : std_logic;
SIGNAL \timer|Equal1~1_combout\ : std_logic;
SIGNAL \timer|Equal1~2_combout\ : std_logic;
SIGNAL \timer|Equal1~4_combout\ : std_logic;
SIGNAL \timer|Equal1~8_combout\ : std_logic;
SIGNAL \drinksFSM|state.Hello~3_combout\ : std_logic;
SIGNAL \drinksFSM|state~18_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \debouncer2|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer2|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer2|s_previousIn~q\ : std_logic;
SIGNAL \debouncer2|Add0~0_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer2|Add0~1\ : std_logic;
SIGNAL \debouncer2|Add0~2_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer2|Add0~3\ : std_logic;
SIGNAL \debouncer2|Add0~4_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer2|Add0~5\ : std_logic;
SIGNAL \debouncer2|Add0~6_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer2|Add0~7\ : std_logic;
SIGNAL \debouncer2|Add0~9\ : std_logic;
SIGNAL \debouncer2|Add0~10_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer2|Add0~11\ : std_logic;
SIGNAL \debouncer2|Add0~12_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer2|Add0~13\ : std_logic;
SIGNAL \debouncer2|Add0~14_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer2|Add0~15\ : std_logic;
SIGNAL \debouncer2|Add0~16_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer2|Add0~17\ : std_logic;
SIGNAL \debouncer2|Add0~18_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer2|Add0~19\ : std_logic;
SIGNAL \debouncer2|Add0~20_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer2|Add0~21\ : std_logic;
SIGNAL \debouncer2|Add0~22_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer2|Add0~23\ : std_logic;
SIGNAL \debouncer2|Add0~24_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer2|Add0~25\ : std_logic;
SIGNAL \debouncer2|Add0~26_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer2|Add0~41\ : std_logic;
SIGNAL \debouncer2|Add0~42_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer2|Add0~27\ : std_logic;
SIGNAL \debouncer2|Add0~28_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer2|Add0~29\ : std_logic;
SIGNAL \debouncer2|Add0~30_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer2|Add0~31\ : std_logic;
SIGNAL \debouncer2|Add0~32_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer2|Add0~33\ : std_logic;
SIGNAL \debouncer2|Add0~34_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer2|Add0~35\ : std_logic;
SIGNAL \debouncer2|Add0~36_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[7]~2_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[7]~3_combout\ : std_logic;
SIGNAL \debouncer2|Add0~37\ : std_logic;
SIGNAL \debouncer2|Add0~38_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer2|Add0~39\ : std_logic;
SIGNAL \debouncer2|Add0~40_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer2|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[7]~0_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer2|Add0~43\ : std_logic;
SIGNAL \debouncer2|Add0~44_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt[7]~4_combout\ : std_logic;
SIGNAL \debouncer2|Add0~8_combout\ : std_logic;
SIGNAL \debouncer2|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer2|s_pulsedOut~q\ : std_logic;
SIGNAL \drinksFSM|drink~1_combout\ : std_logic;
SIGNAL \drinksFSM|s_mode~0_combout\ : std_logic;
SIGNAL \timerdrink|s_count[0]~29_combout\ : std_logic;
SIGNAL \timerdrink|s_count[20]~72\ : std_logic;
SIGNAL \timerdrink|s_count[21]~73_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~6_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~5_combout\ : std_logic;
SIGNAL \timerdrink|s_count[24]~80\ : std_logic;
SIGNAL \timerdrink|s_count[25]~81_combout\ : std_logic;
SIGNAL \timerdrink|s_count[25]~82\ : std_logic;
SIGNAL \timerdrink|s_count[26]~83_combout\ : std_logic;
SIGNAL \timerdrink|s_count[26]~84\ : std_logic;
SIGNAL \timerdrink|s_count[27]~85_combout\ : std_logic;
SIGNAL \timerdrink|s_count[27]~86\ : std_logic;
SIGNAL \timerdrink|s_count[28]~87_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~7_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~8_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~9_combout\ : std_logic;
SIGNAL \timerdrink|s_count[4]~32_combout\ : std_logic;
SIGNAL \timerdrink|s_count[21]~74\ : std_logic;
SIGNAL \timerdrink|s_count[22]~75_combout\ : std_logic;
SIGNAL \timerdrink|s_count[22]~76\ : std_logic;
SIGNAL \timerdrink|s_count[23]~77_combout\ : std_logic;
SIGNAL \timerdrink|s_count[23]~78\ : std_logic;
SIGNAL \timerdrink|s_count[24]~79_combout\ : std_logic;
SIGNAL \timerdrink|Equal1~2_combout\ : std_logic;
SIGNAL \timerdrink|Equal1~1_combout\ : std_logic;
SIGNAL \timerdrink|Equal1~0_combout\ : std_logic;
SIGNAL \timerdrink|Equal1~3_combout\ : std_logic;
SIGNAL \timerdrink|Equal1~4_combout\ : std_logic;
SIGNAL \timerdrink|s_count[4]~31_combout\ : std_logic;
SIGNAL \timerdrink|s_count[0]~30\ : std_logic;
SIGNAL \timerdrink|s_count[1]~33_combout\ : std_logic;
SIGNAL \timerdrink|s_count[1]~34\ : std_logic;
SIGNAL \timerdrink|s_count[2]~35_combout\ : std_logic;
SIGNAL \timerdrink|s_count[2]~36\ : std_logic;
SIGNAL \timerdrink|s_count[3]~37_combout\ : std_logic;
SIGNAL \timerdrink|s_count[3]~38\ : std_logic;
SIGNAL \timerdrink|s_count[4]~39_combout\ : std_logic;
SIGNAL \timerdrink|s_count[4]~40\ : std_logic;
SIGNAL \timerdrink|s_count[5]~41_combout\ : std_logic;
SIGNAL \timerdrink|s_count[5]~42\ : std_logic;
SIGNAL \timerdrink|s_count[6]~43_combout\ : std_logic;
SIGNAL \timerdrink|s_count[6]~44\ : std_logic;
SIGNAL \timerdrink|s_count[7]~45_combout\ : std_logic;
SIGNAL \timerdrink|s_count[7]~46\ : std_logic;
SIGNAL \timerdrink|s_count[8]~47_combout\ : std_logic;
SIGNAL \timerdrink|s_count[8]~48\ : std_logic;
SIGNAL \timerdrink|s_count[9]~49_combout\ : std_logic;
SIGNAL \timerdrink|s_count[9]~50\ : std_logic;
SIGNAL \timerdrink|s_count[10]~51_combout\ : std_logic;
SIGNAL \timerdrink|s_count[10]~52\ : std_logic;
SIGNAL \timerdrink|s_count[11]~53_combout\ : std_logic;
SIGNAL \timerdrink|s_count[11]~54\ : std_logic;
SIGNAL \timerdrink|s_count[12]~55_combout\ : std_logic;
SIGNAL \timerdrink|s_count[12]~56\ : std_logic;
SIGNAL \timerdrink|s_count[13]~57_combout\ : std_logic;
SIGNAL \timerdrink|s_count[13]~58\ : std_logic;
SIGNAL \timerdrink|s_count[14]~59_combout\ : std_logic;
SIGNAL \timerdrink|s_count[14]~60\ : std_logic;
SIGNAL \timerdrink|s_count[15]~61_combout\ : std_logic;
SIGNAL \timerdrink|s_count[15]~62\ : std_logic;
SIGNAL \timerdrink|s_count[16]~63_combout\ : std_logic;
SIGNAL \timerdrink|s_count[16]~64\ : std_logic;
SIGNAL \timerdrink|s_count[17]~65_combout\ : std_logic;
SIGNAL \timerdrink|s_count[17]~66\ : std_logic;
SIGNAL \timerdrink|s_count[18]~67_combout\ : std_logic;
SIGNAL \timerdrink|s_count[18]~68\ : std_logic;
SIGNAL \timerdrink|s_count[19]~69_combout\ : std_logic;
SIGNAL \timerdrink|s_count[19]~70\ : std_logic;
SIGNAL \timerdrink|s_count[20]~71_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~3_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~2_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~1_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~0_combout\ : std_logic;
SIGNAL \timerdrink|Equal0~4_combout\ : std_logic;
SIGNAL \timerdrink|expirou~combout\ : std_logic;
SIGNAL \drinksFSM|s_preparing~0_combout\ : std_logic;
SIGNAL \drinksFSM|s_preparing~q\ : std_logic;
SIGNAL \debouncer3|Add0~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \debouncer3|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer3|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer3|s_previousIn~q\ : std_logic;
SIGNAL \debouncer3|Add0~5\ : std_logic;
SIGNAL \debouncer3|Add0~6_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer3|Add0~7\ : std_logic;
SIGNAL \debouncer3|Add0~8_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer3|Add0~9\ : std_logic;
SIGNAL \debouncer3|Add0~10_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer3|Add0~11\ : std_logic;
SIGNAL \debouncer3|Add0~12_combout\ : std_logic;
SIGNAL \debouncer3|Add0~15\ : std_logic;
SIGNAL \debouncer3|Add0~16_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer3|Add0~17\ : std_logic;
SIGNAL \debouncer3|Add0~18_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer3|Add0~19\ : std_logic;
SIGNAL \debouncer3|Add0~20_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer3|Add0~21\ : std_logic;
SIGNAL \debouncer3|Add0~22_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer3|Add0~23\ : std_logic;
SIGNAL \debouncer3|Add0~24_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer3|Add0~25\ : std_logic;
SIGNAL \debouncer3|Add0~26_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer3|Add0~27\ : std_logic;
SIGNAL \debouncer3|Add0~28_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer3|Add0~29\ : std_logic;
SIGNAL \debouncer3|Add0~30_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer3|Add0~31\ : std_logic;
SIGNAL \debouncer3|Add0~32_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer3|Add0~33\ : std_logic;
SIGNAL \debouncer3|Add0~34_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer3|Add0~35\ : std_logic;
SIGNAL \debouncer3|Add0~36_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer3|Add0~37\ : std_logic;
SIGNAL \debouncer3|Add0~38_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer3|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer3|Add0~13\ : std_logic;
SIGNAL \debouncer3|Add0~14_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \debouncer3|Add0~39\ : std_logic;
SIGNAL \debouncer3|Add0~40_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer3|Add0~41\ : std_logic;
SIGNAL \debouncer3|Add0~42_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer3|Add0~43\ : std_logic;
SIGNAL \debouncer3|Add0~44_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt[1]~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer3|Add0~1\ : std_logic;
SIGNAL \debouncer3|Add0~2_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer3|Add0~3\ : std_logic;
SIGNAL \debouncer3|Add0~4_combout\ : std_logic;
SIGNAL \debouncer3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer3|s_pulsedOut~q\ : std_logic;
SIGNAL \drinksFSM|s_mode~1_combout\ : std_logic;
SIGNAL \drinksFSM|s_mode~2_combout\ : std_logic;
SIGNAL \drinksFSM|s_mode~q\ : std_logic;
SIGNAL \sugarFSM|cando~combout\ : std_logic;
SIGNAL \drinksFSM|state~20_combout\ : std_logic;
SIGNAL \drinksFSM|state~21_combout\ : std_logic;
SIGNAL \drinksFSM|state~19_combout\ : std_logic;
SIGNAL \debouncer0|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debouncer0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer0|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer0|s_previousIn~q\ : std_logic;
SIGNAL \debouncer0|Add0~9\ : std_logic;
SIGNAL \debouncer0|Add0~10_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer0|Add0~11\ : std_logic;
SIGNAL \debouncer0|Add0~12_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer0|Add0~13\ : std_logic;
SIGNAL \debouncer0|Add0~14_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer0|Add0~15\ : std_logic;
SIGNAL \debouncer0|Add0~16_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer0|Add0~17\ : std_logic;
SIGNAL \debouncer0|Add0~18_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer0|Add0~19\ : std_logic;
SIGNAL \debouncer0|Add0~20_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer0|Add0~21\ : std_logic;
SIGNAL \debouncer0|Add0~22_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer0|Add0~23\ : std_logic;
SIGNAL \debouncer0|Add0~24_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer0|Add0~25\ : std_logic;
SIGNAL \debouncer0|Add0~26_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer0|Add0~27\ : std_logic;
SIGNAL \debouncer0|Add0~28_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer0|Add0~29\ : std_logic;
SIGNAL \debouncer0|Add0~30_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer0|Add0~31\ : std_logic;
SIGNAL \debouncer0|Add0~32_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer0|Add0~33\ : std_logic;
SIGNAL \debouncer0|Add0~34_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer0|Add0~35\ : std_logic;
SIGNAL \debouncer0|Add0~36_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer0|Add0~37\ : std_logic;
SIGNAL \debouncer0|Add0~38_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer0|Add0~39\ : std_logic;
SIGNAL \debouncer0|Add0~41\ : std_logic;
SIGNAL \debouncer0|Add0~42_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[8]~2_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[8]~3_combout\ : std_logic;
SIGNAL \debouncer0|Add0~40_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer0|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[8]~0_combout\ : std_logic;
SIGNAL \debouncer0|Add0~43\ : std_logic;
SIGNAL \debouncer0|Add0~44_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt[8]~4_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer0|Add0~1\ : std_logic;
SIGNAL \debouncer0|Add0~2_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer0|Add0~3\ : std_logic;
SIGNAL \debouncer0|Add0~4_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer0|Add0~5\ : std_logic;
SIGNAL \debouncer0|Add0~6_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer0|Add0~7\ : std_logic;
SIGNAL \debouncer0|Add0~8_combout\ : std_logic;
SIGNAL \debouncer0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer0|s_pulsedOut~q\ : std_logic;
SIGNAL \drinksFSM|state~26_combout\ : std_logic;
SIGNAL \debouncer1|Add0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \debouncer1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \debouncer1|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncer1|s_previousIn~q\ : std_logic;
SIGNAL \debouncer1|Add0~5\ : std_logic;
SIGNAL \debouncer1|Add0~6_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncer1|Add0~7\ : std_logic;
SIGNAL \debouncer1|Add0~8_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncer1|Add0~9\ : std_logic;
SIGNAL \debouncer1|Add0~10_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncer1|Add0~11\ : std_logic;
SIGNAL \debouncer1|Add0~12_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncer1|Add0~13\ : std_logic;
SIGNAL \debouncer1|Add0~14_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncer1|Add0~15\ : std_logic;
SIGNAL \debouncer1|Add0~16_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncer1|Add0~17\ : std_logic;
SIGNAL \debouncer1|Add0~18_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncer1|Add0~19\ : std_logic;
SIGNAL \debouncer1|Add0~20_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncer1|Add0~21\ : std_logic;
SIGNAL \debouncer1|Add0~22_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncer1|Add0~23\ : std_logic;
SIGNAL \debouncer1|Add0~24_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncer1|Add0~25\ : std_logic;
SIGNAL \debouncer1|Add0~26_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \debouncer1|Add0~27\ : std_logic;
SIGNAL \debouncer1|Add0~28_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \debouncer1|Add0~29\ : std_logic;
SIGNAL \debouncer1|Add0~30_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncer1|Add0~31\ : std_logic;
SIGNAL \debouncer1|Add0~32_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncer1|Add0~33\ : std_logic;
SIGNAL \debouncer1|Add0~34_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncer1|Add0~35\ : std_logic;
SIGNAL \debouncer1|Add0~36_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncer1|Add0~41\ : std_logic;
SIGNAL \debouncer1|Add0~42_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[10]~2_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[10]~3_combout\ : std_logic;
SIGNAL \debouncer1|Add0~37\ : std_logic;
SIGNAL \debouncer1|Add0~38_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \debouncer1|Add0~39\ : std_logic;
SIGNAL \debouncer1|Add0~40_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer1|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[10]~0_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncer1|Add0~43\ : std_logic;
SIGNAL \debouncer1|Add0~44_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt[10]~4_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \debouncer1|Add0~1\ : std_logic;
SIGNAL \debouncer1|Add0~2_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncer1|Add0~3\ : std_logic;
SIGNAL \debouncer1|Add0~4_combout\ : std_logic;
SIGNAL \debouncer1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncer1|s_pulsedOut~q\ : std_logic;
SIGNAL \drinksFSM|state~25_combout\ : std_logic;
SIGNAL \drinksFSM|state~27_combout\ : std_logic;
SIGNAL \drinksFSM|state~28_combout\ : std_logic;
SIGNAL \drinksFSM|state.Coffee~q\ : std_logic;
SIGNAL \drinksFSM|state~22_combout\ : std_logic;
SIGNAL \drinksFSM|state~23_combout\ : std_logic;
SIGNAL \drinksFSM|state~24_combout\ : std_logic;
SIGNAL \drinksFSM|state~40_combout\ : std_logic;
SIGNAL \drinksFSM|state~36_combout\ : std_logic;
SIGNAL \drinksFSM|state~37_combout\ : std_logic;
SIGNAL \drinksFSM|state.Tea~q\ : std_logic;
SIGNAL \drinksFSM|state~29_combout\ : std_logic;
SIGNAL \drinksFSM|state~39_combout\ : std_logic;
SIGNAL \drinksFSM|state~35_combout\ : std_logic;
SIGNAL \drinksFSM|state.Choice~q\ : std_logic;
SIGNAL \drinksFSM|s_clear~0_combout\ : std_logic;
SIGNAL \drinksFSM|drink~3_combout\ : std_logic;
SIGNAL \drinksFSM|s_clear~1_combout\ : std_logic;
SIGNAL \drinksFSM|s_clear~2_combout\ : std_logic;
SIGNAL \drinksFSM|s_clear~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \drinksFSM|state~41_combout\ : std_logic;
SIGNAL \drinksFSM|state~38_combout\ : std_logic;
SIGNAL \drinksFSM|state.HotChoc~q\ : std_logic;
SIGNAL \drinksFSM|state~30_combout\ : std_logic;
SIGNAL \drinksFSM|state~31_combout\ : std_logic;
SIGNAL \drinksFSM|state~32_combout\ : std_logic;
SIGNAL \drinksFSM|state~33_combout\ : std_logic;
SIGNAL \drinksFSM|state~34_combout\ : std_logic;
SIGNAL \drinksFSM|state.Hello~2_combout\ : std_logic;
SIGNAL \drinksFSM|state.Hello~q\ : std_logic;
SIGNAL \drinksFSM|Selector2~0_combout\ : std_logic;
SIGNAL \drinksFSM|fix~q\ : std_logic;
SIGNAL \resettimer|Add0~1_combout\ : std_logic;
SIGNAL \resettimer|Add0~9_combout\ : std_logic;
SIGNAL \resettimer|Add0~0_combout\ : std_logic;
SIGNAL \resettimer|Add0~2\ : std_logic;
SIGNAL \resettimer|Add0~3_combout\ : std_logic;
SIGNAL \resettimer|Add0~8_combout\ : std_logic;
SIGNAL \resettimer|Add0~4\ : std_logic;
SIGNAL \resettimer|Add0~5_combout\ : std_logic;
SIGNAL \resettimer|Add0~7_combout\ : std_logic;
SIGNAL \resettimer|Add0~6\ : std_logic;
SIGNAL \resettimer|Add0~10_combout\ : std_logic;
SIGNAL \resettimer|Add0~12_combout\ : std_logic;
SIGNAL \resettimer|Add0~11\ : std_logic;
SIGNAL \resettimer|Add0~13_combout\ : std_logic;
SIGNAL \resettimer|Add0~15_combout\ : std_logic;
SIGNAL \resettimer|Add0~14\ : std_logic;
SIGNAL \resettimer|Add0~16_combout\ : std_logic;
SIGNAL \resettimer|Add0~18_combout\ : std_logic;
SIGNAL \resettimer|Add0~17\ : std_logic;
SIGNAL \resettimer|Add0~19_combout\ : std_logic;
SIGNAL \resettimer|Add0~21_combout\ : std_logic;
SIGNAL \resettimer|Add0~20\ : std_logic;
SIGNAL \resettimer|Add0~22_combout\ : std_logic;
SIGNAL \resettimer|Add0~24_combout\ : std_logic;
SIGNAL \resettimer|Add0~23\ : std_logic;
SIGNAL \resettimer|Add0~25_combout\ : std_logic;
SIGNAL \resettimer|Add0~36_combout\ : std_logic;
SIGNAL \resettimer|Add0~26\ : std_logic;
SIGNAL \resettimer|Add0~27_combout\ : std_logic;
SIGNAL \resettimer|Add0~29_combout\ : std_logic;
SIGNAL \resettimer|Add0~28\ : std_logic;
SIGNAL \resettimer|Add0~30_combout\ : std_logic;
SIGNAL \resettimer|Add0~32_combout\ : std_logic;
SIGNAL \resettimer|Add0~31\ : std_logic;
SIGNAL \resettimer|Add0~33_combout\ : std_logic;
SIGNAL \resettimer|Add0~35_combout\ : std_logic;
SIGNAL \resettimer|Add0~34\ : std_logic;
SIGNAL \resettimer|Add0~37_combout\ : std_logic;
SIGNAL \resettimer|Add0~42_combout\ : std_logic;
SIGNAL \resettimer|Add0~38\ : std_logic;
SIGNAL \resettimer|Add0~39_combout\ : std_logic;
SIGNAL \resettimer|Add0~41_combout\ : std_logic;
SIGNAL \resettimer|Add0~40\ : std_logic;
SIGNAL \resettimer|Add0~43_combout\ : std_logic;
SIGNAL \resettimer|Add0~45_combout\ : std_logic;
SIGNAL \resettimer|Add0~44\ : std_logic;
SIGNAL \resettimer|Add0~46_combout\ : std_logic;
SIGNAL \resettimer|Add0~48_combout\ : std_logic;
SIGNAL \resettimer|Add0~47\ : std_logic;
SIGNAL \resettimer|Add0~49_combout\ : std_logic;
SIGNAL \resettimer|Add0~51_combout\ : std_logic;
SIGNAL \resettimer|Add0~50\ : std_logic;
SIGNAL \resettimer|Add0~52_combout\ : std_logic;
SIGNAL \resettimer|Add0~54_combout\ : std_logic;
SIGNAL \resettimer|Add0~53\ : std_logic;
SIGNAL \resettimer|Add0~55_combout\ : std_logic;
SIGNAL \resettimer|Add0~57_combout\ : std_logic;
SIGNAL \resettimer|Add0~56\ : std_logic;
SIGNAL \resettimer|Add0~58_combout\ : std_logic;
SIGNAL \resettimer|Add0~60_combout\ : std_logic;
SIGNAL \resettimer|Equal1~5_combout\ : std_logic;
SIGNAL \resettimer|Add0~59\ : std_logic;
SIGNAL \resettimer|Add0~61_combout\ : std_logic;
SIGNAL \resettimer|Add0~63_combout\ : std_logic;
SIGNAL \resettimer|Add0~62\ : std_logic;
SIGNAL \resettimer|Add0~64_combout\ : std_logic;
SIGNAL \resettimer|Add0~66_combout\ : std_logic;
SIGNAL \resettimer|Add0~65\ : std_logic;
SIGNAL \resettimer|Add0~67_combout\ : std_logic;
SIGNAL \resettimer|Add0~69_combout\ : std_logic;
SIGNAL \resettimer|Add0~68\ : std_logic;
SIGNAL \resettimer|Add0~70_combout\ : std_logic;
SIGNAL \resettimer|Add0~72_combout\ : std_logic;
SIGNAL \resettimer|Equal1~6_combout\ : std_logic;
SIGNAL \resettimer|Add0~71\ : std_logic;
SIGNAL \resettimer|Add0~73_combout\ : std_logic;
SIGNAL \resettimer|Add0~75_combout\ : std_logic;
SIGNAL \resettimer|Add0~74\ : std_logic;
SIGNAL \resettimer|Add0~76_combout\ : std_logic;
SIGNAL \resettimer|Add0~78_combout\ : std_logic;
SIGNAL \resettimer|Add0~77\ : std_logic;
SIGNAL \resettimer|Add0~79_combout\ : std_logic;
SIGNAL \resettimer|Add0~81_combout\ : std_logic;
SIGNAL \resettimer|Add0~80\ : std_logic;
SIGNAL \resettimer|Add0~82_combout\ : std_logic;
SIGNAL \resettimer|Add0~84_combout\ : std_logic;
SIGNAL \resettimer|Equal1~7_combout\ : std_logic;
SIGNAL \resettimer|Equal1~3_combout\ : std_logic;
SIGNAL \resettimer|Equal1~0_combout\ : std_logic;
SIGNAL \resettimer|Equal1~1_combout\ : std_logic;
SIGNAL \resettimer|Equal1~2_combout\ : std_logic;
SIGNAL \resettimer|Equal1~4_combout\ : std_logic;
SIGNAL \resettimer|Equal1~8_combout\ : std_logic;
SIGNAL \resettimer|s_decorre~0_combout\ : std_logic;
SIGNAL \resettimer|s_decorre~q\ : std_logic;
SIGNAL \timerdrink|s_decorre~3_combout\ : std_logic;
SIGNAL \timerdrink|s_decorre~2_combout\ : std_logic;
SIGNAL \timerdrink|s_decorre~q\ : std_logic;
SIGNAL \drinksFSM|Selector1~0_combout\ : std_logic;
SIGNAL \drinksFSM|sugaren~q\ : std_logic;
SIGNAL \sugarFSM|state~18_combout\ : std_logic;
SIGNAL \sugarFSM|state~21_combout\ : std_logic;
SIGNAL \sugarFSM|state.E0~q\ : std_logic;
SIGNAL \sugarFSM|state~13_combout\ : std_logic;
SIGNAL \sugarFSM|process_0~0_combout\ : std_logic;
SIGNAL \sugarFSM|state~15_combout\ : std_logic;
SIGNAL \sugarFSM|state~16_combout\ : std_logic;
SIGNAL \sugarFSM|state~17_combout\ : std_logic;
SIGNAL \sugarFSM|state.E1~q\ : std_logic;
SIGNAL \sugarFSM|state~19_combout\ : std_logic;
SIGNAL \sugarFSM|state~20_combout\ : std_logic;
SIGNAL \sugarFSM|state.E2~q\ : std_logic;
SIGNAL \sugarFSM|state~12_combout\ : std_logic;
SIGNAL \sugarFSM|state~14_combout\ : std_logic;
SIGNAL \sugarFSM|state.E3~q\ : std_logic;
SIGNAL \sugarFSM|sugar[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay0|todisplay[4]~0_combout\ : std_logic;
SIGNAL \sugarFSM|sugar~0_combout\ : std_logic;
SIGNAL \hexdisplay1|todisplay[4]~0_combout\ : std_logic;
SIGNAL \sugarFSM|sugar[10]~2_combout\ : std_logic;
SIGNAL \hexdisplay2|todisplay[4]~0_combout\ : std_logic;
SIGNAL \drinksFSM|drink[2]~8_combout\ : std_logic;
SIGNAL \drinksFSM|drink~0_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux6~0_combout\ : std_logic;
SIGNAL \bin7enable|Add0~0_combout\ : std_logic;
SIGNAL \bin7enable|Add0~1\ : std_logic;
SIGNAL \bin7enable|Add0~2_combout\ : std_logic;
SIGNAL \bin7enable|Add0~3\ : std_logic;
SIGNAL \bin7enable|Add0~4_combout\ : std_logic;
SIGNAL \bin7enable|Add0~5\ : std_logic;
SIGNAL \bin7enable|Add0~6_combout\ : std_logic;
SIGNAL \bin7enable|Add0~7\ : std_logic;
SIGNAL \bin7enable|Add0~8_combout\ : std_logic;
SIGNAL \bin7enable|Add0~9\ : std_logic;
SIGNAL \bin7enable|Add0~10_combout\ : std_logic;
SIGNAL \bin7enable|Add0~11\ : std_logic;
SIGNAL \bin7enable|Add0~12_combout\ : std_logic;
SIGNAL \bin7enable|Add0~13\ : std_logic;
SIGNAL \bin7enable|Add0~14_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~2_combout\ : std_logic;
SIGNAL \bin7enable|Add0~15\ : std_logic;
SIGNAL \bin7enable|Add0~16_combout\ : std_logic;
SIGNAL \bin7enable|Add0~17\ : std_logic;
SIGNAL \bin7enable|Add0~18_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~1_combout\ : std_logic;
SIGNAL \bin7enable|Add0~19\ : std_logic;
SIGNAL \bin7enable|Add0~20_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~7_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~9_combout\ : std_logic;
SIGNAL \bin7enable|Add0~21\ : std_logic;
SIGNAL \bin7enable|Add0~22_combout\ : std_logic;
SIGNAL \bin7enable|Add0~23\ : std_logic;
SIGNAL \bin7enable|Add0~24_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~6_combout\ : std_logic;
SIGNAL \bin7enable|Add0~25\ : std_logic;
SIGNAL \bin7enable|Add0~26_combout\ : std_logic;
SIGNAL \bin7enable|Add0~27\ : std_logic;
SIGNAL \bin7enable|Add0~28_combout\ : std_logic;
SIGNAL \bin7enable|Add0~29\ : std_logic;
SIGNAL \bin7enable|Add0~30_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~5_combout\ : std_logic;
SIGNAL \bin7enable|Add0~31\ : std_logic;
SIGNAL \bin7enable|Add0~32_combout\ : std_logic;
SIGNAL \bin7enable|Add0~33\ : std_logic;
SIGNAL \bin7enable|Add0~34_combout\ : std_logic;
SIGNAL \bin7enable|Add0~35\ : std_logic;
SIGNAL \bin7enable|Add0~36_combout\ : std_logic;
SIGNAL \bin7enable|Add0~37\ : std_logic;
SIGNAL \bin7enable|Add0~38_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~0_combout\ : std_logic;
SIGNAL \bin7enable|Add0~39\ : std_logic;
SIGNAL \bin7enable|Add0~40_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~4_combout\ : std_logic;
SIGNAL \bin7enable|Add0~41\ : std_logic;
SIGNAL \bin7enable|Add0~42_combout\ : std_logic;
SIGNAL \bin7enable|Add0~43\ : std_logic;
SIGNAL \bin7enable|Add0~44_combout\ : std_logic;
SIGNAL \bin7enable|Add0~45\ : std_logic;
SIGNAL \bin7enable|Add0~46_combout\ : std_logic;
SIGNAL \bin7enable|s_divCounter~3_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~7_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~8_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~2_combout\ : std_logic;
SIGNAL \bin7enable|Add0~47\ : std_logic;
SIGNAL \bin7enable|Add0~48_combout\ : std_logic;
SIGNAL \bin7enable|Add0~49\ : std_logic;
SIGNAL \bin7enable|Add0~50_combout\ : std_logic;
SIGNAL \bin7enable|Add0~51\ : std_logic;
SIGNAL \bin7enable|Add0~52_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~1_combout\ : std_logic;
SIGNAL \bin7enable|Add0~53\ : std_logic;
SIGNAL \bin7enable|Add0~54_combout\ : std_logic;
SIGNAL \bin7enable|Add0~55\ : std_logic;
SIGNAL \bin7enable|Add0~56_combout\ : std_logic;
SIGNAL \bin7enable|Add0~57\ : std_logic;
SIGNAL \bin7enable|Add0~58_combout\ : std_logic;
SIGNAL \bin7enable|Add0~59\ : std_logic;
SIGNAL \bin7enable|Add0~60_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~0_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~3_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~4_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~5_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~6_combout\ : std_logic;
SIGNAL \bin7enable|Equal0~10_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~0_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~1_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~2_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~3_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~4_combout\ : std_logic;
SIGNAL \bin7enable|clkOut~q\ : std_logic;
SIGNAL \drinksFSM|static~0_combout\ : std_logic;
SIGNAL \drinksFSM|static~q\ : std_logic;
SIGNAL \hexdisplay4|todisplay[0]~0_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay4|todisplay[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay4|todisplay[2]~2_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay4|todisplay[3]~3_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay4|todisplay[4]~4_combout\ : std_logic;
SIGNAL \hexdisplay4|Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay4|todisplay[6]~5_combout\ : std_logic;
SIGNAL \drinksFSM|drink~4_combout\ : std_logic;
SIGNAL \drinksFSM|drink~2_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux6~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[0]~0_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux5~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux4~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[2]~2_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux3~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[3]~3_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux2~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[4]~4_combout\ : std_logic;
SIGNAL \hexdisplay5|Mux0~0_combout\ : std_logic;
SIGNAL \hexdisplay5|todisplay[6]~5_combout\ : std_logic;
SIGNAL \drinksFSM|drink~5_combout\ : std_logic;
SIGNAL \drinksFSM|drink~6_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[0]~0_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[2]~2_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[3]~3_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[4]~4_combout\ : std_logic;
SIGNAL \hexdisplay6|todisplay[6]~5_combout\ : std_logic;
SIGNAL \drinksFSM|drink[12]~10_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[0]~0_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[1]~1_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[2]~2_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[3]~3_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[4]~4_combout\ : std_logic;
SIGNAL \hexdisplay7|todisplay[6]~5_combout\ : std_logic;
SIGNAL \timerdrink|s_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \sugarFSM|sugar\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \bin7enable|s_divCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \resettimer|s_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \drinksFSM|drink\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \timer|s_count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \debouncer2|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \debouncer3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \drinksFSM|ALT_INV_sugaren~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\drinksFSM|ALT_INV_sugaren~q\ <= NOT \drinksFSM|sugaren~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \resettimer|s_decorre~q\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerdrink|s_decorre~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay0|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay1|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay1|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay2|todisplay[4]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drinksFSM|ALT_INV_sugaren~q\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \drinksFSM|ALT_INV_sugaren~q\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay4|todisplay[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay5|todisplay[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay6|todisplay[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hexdisplay7|todisplay[6]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X85_Y14_N4
\timer|s_count[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[0]~28_combout\ = \timer|s_count\(0) $ (VCC)
-- \timer|s_count[0]~29\ = CARRY(\timer|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(0),
	datad => VCC,
	combout => \timer|s_count[0]~28_combout\,
	cout => \timer|s_count[0]~29\);

-- Location: LCCOMB_X86_Y13_N14
\timer|s_count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[5]~30_combout\ = (\SW[17]~input_o\) # (!\timer|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \timer|Equal1~8_combout\,
	combout => \timer|s_count[5]~30_combout\);

-- Location: FF_X85_Y14_N5
\timer|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[0]~28_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(0));

-- Location: LCCOMB_X85_Y14_N6
\timer|s_count[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[1]~31_combout\ = (\timer|s_count\(1) & (!\timer|s_count[0]~29\)) # (!\timer|s_count\(1) & ((\timer|s_count[0]~29\) # (GND)))
-- \timer|s_count[1]~32\ = CARRY((!\timer|s_count[0]~29\) # (!\timer|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(1),
	datad => VCC,
	cin => \timer|s_count[0]~29\,
	combout => \timer|s_count[1]~31_combout\,
	cout => \timer|s_count[1]~32\);

-- Location: FF_X85_Y14_N7
\timer|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[1]~31_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(1));

-- Location: LCCOMB_X85_Y14_N8
\timer|s_count[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[2]~33_combout\ = (\timer|s_count\(2) & (\timer|s_count[1]~32\ $ (GND))) # (!\timer|s_count\(2) & (!\timer|s_count[1]~32\ & VCC))
-- \timer|s_count[2]~34\ = CARRY((\timer|s_count\(2) & !\timer|s_count[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(2),
	datad => VCC,
	cin => \timer|s_count[1]~32\,
	combout => \timer|s_count[2]~33_combout\,
	cout => \timer|s_count[2]~34\);

-- Location: FF_X85_Y14_N9
\timer|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[2]~33_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(2));

-- Location: LCCOMB_X85_Y14_N10
\timer|s_count[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[3]~35_combout\ = (\timer|s_count\(3) & (!\timer|s_count[2]~34\)) # (!\timer|s_count\(3) & ((\timer|s_count[2]~34\) # (GND)))
-- \timer|s_count[3]~36\ = CARRY((!\timer|s_count[2]~34\) # (!\timer|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(3),
	datad => VCC,
	cin => \timer|s_count[2]~34\,
	combout => \timer|s_count[3]~35_combout\,
	cout => \timer|s_count[3]~36\);

-- Location: FF_X85_Y14_N11
\timer|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[3]~35_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(3));

-- Location: LCCOMB_X85_Y14_N12
\timer|s_count[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[4]~37_combout\ = (\timer|s_count\(4) & (\timer|s_count[3]~36\ $ (GND))) # (!\timer|s_count\(4) & (!\timer|s_count[3]~36\ & VCC))
-- \timer|s_count[4]~38\ = CARRY((\timer|s_count\(4) & !\timer|s_count[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(4),
	datad => VCC,
	cin => \timer|s_count[3]~36\,
	combout => \timer|s_count[4]~37_combout\,
	cout => \timer|s_count[4]~38\);

-- Location: FF_X85_Y14_N13
\timer|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[4]~37_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(4));

-- Location: LCCOMB_X85_Y14_N14
\timer|s_count[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[5]~39_combout\ = (\timer|s_count\(5) & (!\timer|s_count[4]~38\)) # (!\timer|s_count\(5) & ((\timer|s_count[4]~38\) # (GND)))
-- \timer|s_count[5]~40\ = CARRY((!\timer|s_count[4]~38\) # (!\timer|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(5),
	datad => VCC,
	cin => \timer|s_count[4]~38\,
	combout => \timer|s_count[5]~39_combout\,
	cout => \timer|s_count[5]~40\);

-- Location: FF_X85_Y14_N15
\timer|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[5]~39_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(5));

-- Location: LCCOMB_X85_Y14_N16
\timer|s_count[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[6]~41_combout\ = (\timer|s_count\(6) & (\timer|s_count[5]~40\ $ (GND))) # (!\timer|s_count\(6) & (!\timer|s_count[5]~40\ & VCC))
-- \timer|s_count[6]~42\ = CARRY((\timer|s_count\(6) & !\timer|s_count[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(6),
	datad => VCC,
	cin => \timer|s_count[5]~40\,
	combout => \timer|s_count[6]~41_combout\,
	cout => \timer|s_count[6]~42\);

-- Location: FF_X85_Y14_N17
\timer|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[6]~41_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(6));

-- Location: LCCOMB_X85_Y14_N18
\timer|s_count[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[7]~43_combout\ = (\timer|s_count\(7) & (!\timer|s_count[6]~42\)) # (!\timer|s_count\(7) & ((\timer|s_count[6]~42\) # (GND)))
-- \timer|s_count[7]~44\ = CARRY((!\timer|s_count[6]~42\) # (!\timer|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(7),
	datad => VCC,
	cin => \timer|s_count[6]~42\,
	combout => \timer|s_count[7]~43_combout\,
	cout => \timer|s_count[7]~44\);

-- Location: FF_X85_Y14_N19
\timer|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[7]~43_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(7));

-- Location: LCCOMB_X85_Y14_N20
\timer|s_count[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[8]~45_combout\ = (\timer|s_count\(8) & (\timer|s_count[7]~44\ $ (GND))) # (!\timer|s_count\(8) & (!\timer|s_count[7]~44\ & VCC))
-- \timer|s_count[8]~46\ = CARRY((\timer|s_count\(8) & !\timer|s_count[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(8),
	datad => VCC,
	cin => \timer|s_count[7]~44\,
	combout => \timer|s_count[8]~45_combout\,
	cout => \timer|s_count[8]~46\);

-- Location: FF_X85_Y14_N21
\timer|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[8]~45_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(8));

-- Location: LCCOMB_X85_Y14_N22
\timer|s_count[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[9]~47_combout\ = (\timer|s_count\(9) & (!\timer|s_count[8]~46\)) # (!\timer|s_count\(9) & ((\timer|s_count[8]~46\) # (GND)))
-- \timer|s_count[9]~48\ = CARRY((!\timer|s_count[8]~46\) # (!\timer|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(9),
	datad => VCC,
	cin => \timer|s_count[8]~46\,
	combout => \timer|s_count[9]~47_combout\,
	cout => \timer|s_count[9]~48\);

-- Location: FF_X85_Y14_N23
\timer|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[9]~47_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(9));

-- Location: LCCOMB_X85_Y14_N24
\timer|s_count[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[10]~49_combout\ = (\timer|s_count\(10) & (\timer|s_count[9]~48\ $ (GND))) # (!\timer|s_count\(10) & (!\timer|s_count[9]~48\ & VCC))
-- \timer|s_count[10]~50\ = CARRY((\timer|s_count\(10) & !\timer|s_count[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(10),
	datad => VCC,
	cin => \timer|s_count[9]~48\,
	combout => \timer|s_count[10]~49_combout\,
	cout => \timer|s_count[10]~50\);

-- Location: FF_X85_Y14_N25
\timer|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[10]~49_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(10));

-- Location: LCCOMB_X85_Y14_N26
\timer|s_count[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[11]~51_combout\ = (\timer|s_count\(11) & (!\timer|s_count[10]~50\)) # (!\timer|s_count\(11) & ((\timer|s_count[10]~50\) # (GND)))
-- \timer|s_count[11]~52\ = CARRY((!\timer|s_count[10]~50\) # (!\timer|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(11),
	datad => VCC,
	cin => \timer|s_count[10]~50\,
	combout => \timer|s_count[11]~51_combout\,
	cout => \timer|s_count[11]~52\);

-- Location: FF_X85_Y14_N27
\timer|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[11]~51_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(11));

-- Location: LCCOMB_X85_Y14_N28
\timer|s_count[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[12]~53_combout\ = (\timer|s_count\(12) & (\timer|s_count[11]~52\ $ (GND))) # (!\timer|s_count\(12) & (!\timer|s_count[11]~52\ & VCC))
-- \timer|s_count[12]~54\ = CARRY((\timer|s_count\(12) & !\timer|s_count[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(12),
	datad => VCC,
	cin => \timer|s_count[11]~52\,
	combout => \timer|s_count[12]~53_combout\,
	cout => \timer|s_count[12]~54\);

-- Location: FF_X85_Y14_N29
\timer|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[12]~53_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(12));

-- Location: LCCOMB_X85_Y14_N30
\timer|s_count[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[13]~55_combout\ = (\timer|s_count\(13) & (!\timer|s_count[12]~54\)) # (!\timer|s_count\(13) & ((\timer|s_count[12]~54\) # (GND)))
-- \timer|s_count[13]~56\ = CARRY((!\timer|s_count[12]~54\) # (!\timer|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(13),
	datad => VCC,
	cin => \timer|s_count[12]~54\,
	combout => \timer|s_count[13]~55_combout\,
	cout => \timer|s_count[13]~56\);

-- Location: FF_X85_Y14_N31
\timer|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[13]~55_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(13));

-- Location: LCCOMB_X85_Y13_N0
\timer|s_count[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[14]~57_combout\ = (\timer|s_count\(14) & (\timer|s_count[13]~56\ $ (GND))) # (!\timer|s_count\(14) & (!\timer|s_count[13]~56\ & VCC))
-- \timer|s_count[14]~58\ = CARRY((\timer|s_count\(14) & !\timer|s_count[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(14),
	datad => VCC,
	cin => \timer|s_count[13]~56\,
	combout => \timer|s_count[14]~57_combout\,
	cout => \timer|s_count[14]~58\);

-- Location: FF_X85_Y13_N1
\timer|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[14]~57_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(14));

-- Location: LCCOMB_X85_Y13_N2
\timer|s_count[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[15]~59_combout\ = (\timer|s_count\(15) & (!\timer|s_count[14]~58\)) # (!\timer|s_count\(15) & ((\timer|s_count[14]~58\) # (GND)))
-- \timer|s_count[15]~60\ = CARRY((!\timer|s_count[14]~58\) # (!\timer|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(15),
	datad => VCC,
	cin => \timer|s_count[14]~58\,
	combout => \timer|s_count[15]~59_combout\,
	cout => \timer|s_count[15]~60\);

-- Location: FF_X85_Y13_N3
\timer|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[15]~59_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(15));

-- Location: LCCOMB_X85_Y13_N4
\timer|s_count[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[16]~61_combout\ = (\timer|s_count\(16) & (\timer|s_count[15]~60\ $ (GND))) # (!\timer|s_count\(16) & (!\timer|s_count[15]~60\ & VCC))
-- \timer|s_count[16]~62\ = CARRY((\timer|s_count\(16) & !\timer|s_count[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(16),
	datad => VCC,
	cin => \timer|s_count[15]~60\,
	combout => \timer|s_count[16]~61_combout\,
	cout => \timer|s_count[16]~62\);

-- Location: FF_X85_Y13_N5
\timer|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[16]~61_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(16));

-- Location: LCCOMB_X85_Y13_N6
\timer|s_count[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[17]~63_combout\ = (\timer|s_count\(17) & (!\timer|s_count[16]~62\)) # (!\timer|s_count\(17) & ((\timer|s_count[16]~62\) # (GND)))
-- \timer|s_count[17]~64\ = CARRY((!\timer|s_count[16]~62\) # (!\timer|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(17),
	datad => VCC,
	cin => \timer|s_count[16]~62\,
	combout => \timer|s_count[17]~63_combout\,
	cout => \timer|s_count[17]~64\);

-- Location: FF_X85_Y13_N7
\timer|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[17]~63_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(17));

-- Location: LCCOMB_X85_Y13_N8
\timer|s_count[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[18]~65_combout\ = (\timer|s_count\(18) & (\timer|s_count[17]~64\ $ (GND))) # (!\timer|s_count\(18) & (!\timer|s_count[17]~64\ & VCC))
-- \timer|s_count[18]~66\ = CARRY((\timer|s_count\(18) & !\timer|s_count[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(18),
	datad => VCC,
	cin => \timer|s_count[17]~64\,
	combout => \timer|s_count[18]~65_combout\,
	cout => \timer|s_count[18]~66\);

-- Location: FF_X85_Y13_N9
\timer|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[18]~65_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(18));

-- Location: LCCOMB_X85_Y13_N10
\timer|s_count[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[19]~67_combout\ = (\timer|s_count\(19) & (!\timer|s_count[18]~66\)) # (!\timer|s_count\(19) & ((\timer|s_count[18]~66\) # (GND)))
-- \timer|s_count[19]~68\ = CARRY((!\timer|s_count[18]~66\) # (!\timer|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(19),
	datad => VCC,
	cin => \timer|s_count[18]~66\,
	combout => \timer|s_count[19]~67_combout\,
	cout => \timer|s_count[19]~68\);

-- Location: FF_X85_Y13_N11
\timer|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[19]~67_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(19));

-- Location: LCCOMB_X85_Y13_N12
\timer|s_count[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[20]~69_combout\ = (\timer|s_count\(20) & (\timer|s_count[19]~68\ $ (GND))) # (!\timer|s_count\(20) & (!\timer|s_count[19]~68\ & VCC))
-- \timer|s_count[20]~70\ = CARRY((\timer|s_count\(20) & !\timer|s_count[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(20),
	datad => VCC,
	cin => \timer|s_count[19]~68\,
	combout => \timer|s_count[20]~69_combout\,
	cout => \timer|s_count[20]~70\);

-- Location: FF_X85_Y13_N13
\timer|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[20]~69_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(20));

-- Location: LCCOMB_X85_Y13_N14
\timer|s_count[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[21]~71_combout\ = (\timer|s_count\(21) & (!\timer|s_count[20]~70\)) # (!\timer|s_count\(21) & ((\timer|s_count[20]~70\) # (GND)))
-- \timer|s_count[21]~72\ = CARRY((!\timer|s_count[20]~70\) # (!\timer|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(21),
	datad => VCC,
	cin => \timer|s_count[20]~70\,
	combout => \timer|s_count[21]~71_combout\,
	cout => \timer|s_count[21]~72\);

-- Location: FF_X85_Y13_N15
\timer|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[21]~71_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(21));

-- Location: LCCOMB_X85_Y13_N16
\timer|s_count[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[22]~73_combout\ = (\timer|s_count\(22) & (\timer|s_count[21]~72\ $ (GND))) # (!\timer|s_count\(22) & (!\timer|s_count[21]~72\ & VCC))
-- \timer|s_count[22]~74\ = CARRY((\timer|s_count\(22) & !\timer|s_count[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(22),
	datad => VCC,
	cin => \timer|s_count[21]~72\,
	combout => \timer|s_count[22]~73_combout\,
	cout => \timer|s_count[22]~74\);

-- Location: FF_X85_Y13_N17
\timer|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[22]~73_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(22));

-- Location: LCCOMB_X85_Y13_N18
\timer|s_count[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[23]~75_combout\ = (\timer|s_count\(23) & (!\timer|s_count[22]~74\)) # (!\timer|s_count\(23) & ((\timer|s_count[22]~74\) # (GND)))
-- \timer|s_count[23]~76\ = CARRY((!\timer|s_count[22]~74\) # (!\timer|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(23),
	datad => VCC,
	cin => \timer|s_count[22]~74\,
	combout => \timer|s_count[23]~75_combout\,
	cout => \timer|s_count[23]~76\);

-- Location: FF_X85_Y13_N19
\timer|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[23]~75_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(23));

-- Location: LCCOMB_X85_Y13_N30
\timer|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~6_combout\ = (\timer|s_count\(20)) # (((!\timer|s_count\(22)) # (!\timer|s_count\(21))) # (!\timer|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(20),
	datab => \timer|s_count\(23),
	datac => \timer|s_count\(21),
	datad => \timer|s_count\(22),
	combout => \timer|Equal1~6_combout\);

-- Location: LCCOMB_X85_Y13_N28
\timer|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~5_combout\ = (\timer|s_count\(19)) # (((\timer|s_count\(16)) # (!\timer|s_count\(17))) # (!\timer|s_count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(19),
	datab => \timer|s_count\(18),
	datac => \timer|s_count\(16),
	datad => \timer|s_count\(17),
	combout => \timer|Equal1~5_combout\);

-- Location: LCCOMB_X85_Y13_N20
\timer|s_count[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[24]~77_combout\ = (\timer|s_count\(24) & (\timer|s_count[23]~76\ $ (GND))) # (!\timer|s_count\(24) & (!\timer|s_count[23]~76\ & VCC))
-- \timer|s_count[24]~78\ = CARRY((\timer|s_count\(24) & !\timer|s_count[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(24),
	datad => VCC,
	cin => \timer|s_count[23]~76\,
	combout => \timer|s_count[24]~77_combout\,
	cout => \timer|s_count[24]~78\);

-- Location: FF_X85_Y13_N21
\timer|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[24]~77_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(24));

-- Location: LCCOMB_X85_Y13_N22
\timer|s_count[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[25]~79_combout\ = (\timer|s_count\(25) & (!\timer|s_count[24]~78\)) # (!\timer|s_count\(25) & ((\timer|s_count[24]~78\) # (GND)))
-- \timer|s_count[25]~80\ = CARRY((!\timer|s_count[24]~78\) # (!\timer|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(25),
	datad => VCC,
	cin => \timer|s_count[24]~78\,
	combout => \timer|s_count[25]~79_combout\,
	cout => \timer|s_count[25]~80\);

-- Location: FF_X85_Y13_N23
\timer|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[25]~79_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(25));

-- Location: LCCOMB_X85_Y13_N24
\timer|s_count[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[26]~81_combout\ = (\timer|s_count\(26) & (\timer|s_count[25]~80\ $ (GND))) # (!\timer|s_count\(26) & (!\timer|s_count[25]~80\ & VCC))
-- \timer|s_count[26]~82\ = CARRY((\timer|s_count\(26) & !\timer|s_count[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer|s_count\(26),
	datad => VCC,
	cin => \timer|s_count[25]~80\,
	combout => \timer|s_count[26]~81_combout\,
	cout => \timer|s_count[26]~82\);

-- Location: FF_X85_Y13_N25
\timer|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[26]~81_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(26));

-- Location: LCCOMB_X85_Y13_N26
\timer|s_count[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|s_count[27]~83_combout\ = \timer|s_count\(27) $ (\timer|s_count[26]~82\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(27),
	cin => \timer|s_count[26]~82\,
	combout => \timer|s_count[27]~83_combout\);

-- Location: FF_X85_Y13_N27
\timer|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timer|s_count[27]~83_combout\,
	sclr => \timer|s_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer|s_count\(27));

-- Location: LCCOMB_X86_Y13_N30
\timer|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~7_combout\ = (((\timer|s_count\(24)) # (!\timer|s_count\(26))) # (!\timer|s_count\(25))) # (!\timer|s_count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(27),
	datab => \timer|s_count\(25),
	datac => \timer|s_count\(26),
	datad => \timer|s_count\(24),
	combout => \timer|Equal1~7_combout\);

-- Location: LCCOMB_X86_Y13_N22
\timer|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~3_combout\ = (\timer|s_count\(14)) # (((!\timer|s_count\(15)) # (!\timer|s_count\(12))) # (!\timer|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(14),
	datab => \timer|s_count\(13),
	datac => \timer|s_count\(12),
	datad => \timer|s_count\(15),
	combout => \timer|Equal1~3_combout\);

-- Location: LCCOMB_X85_Y14_N0
\timer|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~0_combout\ = (\timer|s_count\(3)) # ((\timer|s_count\(2)) # ((\timer|s_count\(0)) # (\timer|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(3),
	datab => \timer|s_count\(2),
	datac => \timer|s_count\(0),
	datad => \timer|s_count\(1),
	combout => \timer|Equal1~0_combout\);

-- Location: LCCOMB_X86_Y13_N8
\timer|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~1_combout\ = (\timer|s_count\(5)) # ((\timer|s_count\(6)) # ((\timer|s_count\(4)) # (!\timer|s_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(5),
	datab => \timer|s_count\(6),
	datac => \timer|s_count\(4),
	datad => \timer|s_count\(7),
	combout => \timer|Equal1~1_combout\);

-- Location: LCCOMB_X85_Y14_N2
\timer|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~2_combout\ = (\timer|s_count\(11)) # ((\timer|s_count\(8)) # ((\timer|s_count\(10)) # (!\timer|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|s_count\(11),
	datab => \timer|s_count\(8),
	datac => \timer|s_count\(9),
	datad => \timer|s_count\(10),
	combout => \timer|Equal1~2_combout\);

-- Location: LCCOMB_X86_Y13_N24
\timer|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~4_combout\ = (\timer|Equal1~3_combout\) # ((\timer|Equal1~0_combout\) # ((\timer|Equal1~1_combout\) # (\timer|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal1~3_combout\,
	datab => \timer|Equal1~0_combout\,
	datac => \timer|Equal1~1_combout\,
	datad => \timer|Equal1~2_combout\,
	combout => \timer|Equal1~4_combout\);

-- Location: LCCOMB_X86_Y13_N28
\timer|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer|Equal1~8_combout\ = (\timer|Equal1~6_combout\) # ((\timer|Equal1~5_combout\) # ((\timer|Equal1~7_combout\) # (\timer|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer|Equal1~6_combout\,
	datab => \timer|Equal1~5_combout\,
	datac => \timer|Equal1~7_combout\,
	datad => \timer|Equal1~4_combout\,
	combout => \timer|Equal1~8_combout\);

-- Location: LCCOMB_X86_Y13_N20
\drinksFSM|state.Hello~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state.Hello~3_combout\ = (\drinksFSM|state.Hello~q\) # (!\timer|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Hello~q\,
	datad => \timer|Equal1~8_combout\,
	combout => \drinksFSM|state.Hello~3_combout\);

-- Location: LCCOMB_X89_Y13_N20
\drinksFSM|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~18_combout\ = (!\drinksFSM|state.Hello~q\ & !\timer|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Hello~q\,
	datad => \timer|Equal1~8_combout\,
	combout => \drinksFSM|state~18_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X98_Y43_N26
\debouncer2|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_dirtyIn~0_combout\ = !\KEY[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[2]~input_o\,
	combout => \debouncer2|s_dirtyIn~0_combout\);

-- Location: FF_X98_Y43_N27
\debouncer2|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_dirtyIn~q\);

-- Location: FF_X96_Y43_N19
\debouncer2|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer2|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_previousIn~q\);

-- Location: LCCOMB_X96_Y43_N10
\debouncer2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~0_combout\ = \debouncer2|s_debounceCnt\(0) $ (VCC)
-- \debouncer2|Add0~1\ = CARRY(\debouncer2|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer2|Add0~0_combout\,
	cout => \debouncer2|Add0~1\);

-- Location: LCCOMB_X95_Y43_N0
\debouncer2|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~24_combout\ = (\debouncer2|Add0~0_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~0_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~24_combout\);

-- Location: FF_X95_Y43_N1
\debouncer2|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~24_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(0));

-- Location: LCCOMB_X96_Y43_N12
\debouncer2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~2_combout\ = (\debouncer2|s_debounceCnt\(1) & (\debouncer2|Add0~1\ & VCC)) # (!\debouncer2|s_debounceCnt\(1) & (!\debouncer2|Add0~1\))
-- \debouncer2|Add0~3\ = CARRY((!\debouncer2|s_debounceCnt\(1) & !\debouncer2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer2|Add0~1\,
	combout => \debouncer2|Add0~2_combout\,
	cout => \debouncer2|Add0~3\);

-- Location: LCCOMB_X96_Y43_N0
\debouncer2|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~20_combout\ = (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|Add0~2_combout\,
	combout => \debouncer2|s_debounceCnt~20_combout\);

-- Location: FF_X96_Y43_N1
\debouncer2|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~20_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(1));

-- Location: LCCOMB_X96_Y43_N14
\debouncer2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~4_combout\ = (\debouncer2|s_debounceCnt\(2) & ((GND) # (!\debouncer2|Add0~3\))) # (!\debouncer2|s_debounceCnt\(2) & (\debouncer2|Add0~3\ $ (GND)))
-- \debouncer2|Add0~5\ = CARRY((\debouncer2|s_debounceCnt\(2)) # (!\debouncer2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer2|Add0~3\,
	combout => \debouncer2|Add0~4_combout\,
	cout => \debouncer2|Add0~5\);

-- Location: LCCOMB_X96_Y43_N2
\debouncer2|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~21_combout\ = (\debouncer2|Add0~4_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~4_combout\,
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~21_combout\);

-- Location: FF_X96_Y43_N3
\debouncer2|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~21_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y43_N16
\debouncer2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~6_combout\ = (\debouncer2|s_debounceCnt\(3) & (\debouncer2|Add0~5\ & VCC)) # (!\debouncer2|s_debounceCnt\(3) & (!\debouncer2|Add0~5\))
-- \debouncer2|Add0~7\ = CARRY((!\debouncer2|s_debounceCnt\(3) & !\debouncer2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer2|Add0~5\,
	combout => \debouncer2|Add0~6_combout\,
	cout => \debouncer2|Add0~7\);

-- Location: LCCOMB_X96_Y43_N4
\debouncer2|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~22_combout\ = (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|Add0~6_combout\,
	combout => \debouncer2|s_debounceCnt~22_combout\);

-- Location: FF_X96_Y43_N5
\debouncer2|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~22_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(3));

-- Location: LCCOMB_X96_Y43_N18
\debouncer2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~8_combout\ = (\debouncer2|s_debounceCnt\(4) & ((GND) # (!\debouncer2|Add0~7\))) # (!\debouncer2|s_debounceCnt\(4) & (\debouncer2|Add0~7\ $ (GND)))
-- \debouncer2|Add0~9\ = CARRY((\debouncer2|s_debounceCnt\(4)) # (!\debouncer2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer2|Add0~7\,
	combout => \debouncer2|Add0~8_combout\,
	cout => \debouncer2|Add0~9\);

-- Location: LCCOMB_X96_Y43_N20
\debouncer2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~10_combout\ = (\debouncer2|s_debounceCnt\(5) & (\debouncer2|Add0~9\ & VCC)) # (!\debouncer2|s_debounceCnt\(5) & (!\debouncer2|Add0~9\))
-- \debouncer2|Add0~11\ = CARRY((!\debouncer2|s_debounceCnt\(5) & !\debouncer2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer2|Add0~9\,
	combout => \debouncer2|Add0~10_combout\,
	cout => \debouncer2|Add0~11\);

-- Location: LCCOMB_X95_Y43_N14
\debouncer2|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~27_combout\ = (\debouncer2|Add0~10_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~10_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~27_combout\);

-- Location: FF_X95_Y43_N15
\debouncer2|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~27_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y43_N22
\debouncer2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~12_combout\ = (\debouncer2|s_debounceCnt\(6) & ((GND) # (!\debouncer2|Add0~11\))) # (!\debouncer2|s_debounceCnt\(6) & (\debouncer2|Add0~11\ $ (GND)))
-- \debouncer2|Add0~13\ = CARRY((\debouncer2|s_debounceCnt\(6)) # (!\debouncer2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer2|Add0~11\,
	combout => \debouncer2|Add0~12_combout\,
	cout => \debouncer2|Add0~13\);

-- Location: LCCOMB_X97_Y43_N20
\debouncer2|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~1_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~12_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[7]~0_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datad => \debouncer2|Add0~12_combout\,
	combout => \debouncer2|s_debounceCnt~1_combout\);

-- Location: FF_X97_Y43_N21
\debouncer2|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~1_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(6));

-- Location: LCCOMB_X96_Y43_N24
\debouncer2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~14_combout\ = (\debouncer2|s_debounceCnt\(7) & (\debouncer2|Add0~13\ & VCC)) # (!\debouncer2|s_debounceCnt\(7) & (!\debouncer2|Add0~13\))
-- \debouncer2|Add0~15\ = CARRY((!\debouncer2|s_debounceCnt\(7) & !\debouncer2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer2|Add0~13\,
	combout => \debouncer2|Add0~14_combout\,
	cout => \debouncer2|Add0~15\);

-- Location: LCCOMB_X95_Y43_N4
\debouncer2|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~12_combout\ = (\debouncer2|Add0~14_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~14_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~12_combout\);

-- Location: FF_X95_Y43_N5
\debouncer2|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~12_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(7));

-- Location: LCCOMB_X96_Y43_N26
\debouncer2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~16_combout\ = (\debouncer2|s_debounceCnt\(8) & ((GND) # (!\debouncer2|Add0~15\))) # (!\debouncer2|s_debounceCnt\(8) & (\debouncer2|Add0~15\ $ (GND)))
-- \debouncer2|Add0~17\ = CARRY((\debouncer2|s_debounceCnt\(8)) # (!\debouncer2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer2|Add0~15\,
	combout => \debouncer2|Add0~16_combout\,
	cout => \debouncer2|Add0~17\);

-- Location: LCCOMB_X95_Y43_N26
\debouncer2|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~13_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~16_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|s_debounceCnt[7]~0_combout\,
	datad => \debouncer2|Add0~16_combout\,
	combout => \debouncer2|s_debounceCnt~13_combout\);

-- Location: FF_X95_Y43_N27
\debouncer2|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~13_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(8));

-- Location: LCCOMB_X96_Y43_N28
\debouncer2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~18_combout\ = (\debouncer2|s_debounceCnt\(9) & (\debouncer2|Add0~17\ & VCC)) # (!\debouncer2|s_debounceCnt\(9) & (!\debouncer2|Add0~17\))
-- \debouncer2|Add0~19\ = CARRY((!\debouncer2|s_debounceCnt\(9) & !\debouncer2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer2|Add0~17\,
	combout => \debouncer2|Add0~18_combout\,
	cout => \debouncer2|Add0~19\);

-- Location: LCCOMB_X95_Y43_N16
\debouncer2|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~14_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~18_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|s_debounceCnt[7]~0_combout\,
	datad => \debouncer2|Add0~18_combout\,
	combout => \debouncer2|s_debounceCnt~14_combout\);

-- Location: FF_X95_Y43_N17
\debouncer2|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~14_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y43_N30
\debouncer2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~20_combout\ = (\debouncer2|s_debounceCnt\(10) & ((GND) # (!\debouncer2|Add0~19\))) # (!\debouncer2|s_debounceCnt\(10) & (\debouncer2|Add0~19\ $ (GND)))
-- \debouncer2|Add0~21\ = CARRY((\debouncer2|s_debounceCnt\(10)) # (!\debouncer2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer2|Add0~19\,
	combout => \debouncer2|Add0~20_combout\,
	cout => \debouncer2|Add0~21\);

-- Location: LCCOMB_X95_Y43_N6
\debouncer2|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~15_combout\ = (\debouncer2|Add0~20_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~20_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y43_N7
\debouncer2|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~15_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(10));

-- Location: LCCOMB_X95_Y43_N12
\debouncer2|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~2_combout\ = (!\debouncer2|s_debounceCnt\(8) & (!\debouncer2|s_debounceCnt\(9) & (!\debouncer2|s_debounceCnt\(7) & !\debouncer2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(8),
	datab => \debouncer2|s_debounceCnt\(9),
	datac => \debouncer2|s_debounceCnt\(7),
	datad => \debouncer2|s_debounceCnt\(10),
	combout => \debouncer2|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X96_Y42_N0
\debouncer2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~22_combout\ = (\debouncer2|s_debounceCnt\(11) & (\debouncer2|Add0~21\ & VCC)) # (!\debouncer2|s_debounceCnt\(11) & (!\debouncer2|Add0~21\))
-- \debouncer2|Add0~23\ = CARRY((!\debouncer2|s_debounceCnt\(11) & !\debouncer2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer2|Add0~21\,
	combout => \debouncer2|Add0~22_combout\,
	cout => \debouncer2|Add0~23\);

-- Location: LCCOMB_X97_Y43_N30
\debouncer2|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~16_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~22_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[7]~0_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datad => \debouncer2|Add0~22_combout\,
	combout => \debouncer2|s_debounceCnt~16_combout\);

-- Location: FF_X97_Y43_N31
\debouncer2|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~16_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(11));

-- Location: LCCOMB_X96_Y42_N2
\debouncer2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~24_combout\ = (\debouncer2|s_debounceCnt\(12) & ((GND) # (!\debouncer2|Add0~23\))) # (!\debouncer2|s_debounceCnt\(12) & (\debouncer2|Add0~23\ $ (GND)))
-- \debouncer2|Add0~25\ = CARRY((\debouncer2|s_debounceCnt\(12)) # (!\debouncer2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer2|Add0~23\,
	combout => \debouncer2|Add0~24_combout\,
	cout => \debouncer2|Add0~25\);

-- Location: LCCOMB_X95_Y43_N30
\debouncer2|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~8_combout\ = (\debouncer2|Add0~24_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~24_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~8_combout\);

-- Location: FF_X95_Y43_N31
\debouncer2|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~8_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y42_N4
\debouncer2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~26_combout\ = (\debouncer2|s_debounceCnt\(13) & (\debouncer2|Add0~25\ & VCC)) # (!\debouncer2|s_debounceCnt\(13) & (!\debouncer2|Add0~25\))
-- \debouncer2|Add0~27\ = CARRY((!\debouncer2|s_debounceCnt\(13) & !\debouncer2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer2|Add0~25\,
	combout => \debouncer2|Add0~26_combout\,
	cout => \debouncer2|Add0~27\);

-- Location: LCCOMB_X95_Y43_N24
\debouncer2|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~9_combout\ = (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|Add0~26_combout\,
	combout => \debouncer2|s_debounceCnt~9_combout\);

-- Location: FF_X95_Y43_N25
\debouncer2|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~9_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(13));

-- Location: LCCOMB_X96_Y42_N18
\debouncer2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~40_combout\ = (\debouncer2|s_debounceCnt\(20) & ((GND) # (!\debouncer2|Add0~39\))) # (!\debouncer2|s_debounceCnt\(20) & (\debouncer2|Add0~39\ $ (GND)))
-- \debouncer2|Add0~41\ = CARRY((\debouncer2|s_debounceCnt\(20)) # (!\debouncer2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer2|Add0~39\,
	combout => \debouncer2|Add0~40_combout\,
	cout => \debouncer2|Add0~41\);

-- Location: LCCOMB_X96_Y42_N20
\debouncer2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~42_combout\ = (\debouncer2|s_debounceCnt\(21) & (\debouncer2|Add0~41\ & VCC)) # (!\debouncer2|s_debounceCnt\(21) & (!\debouncer2|Add0~41\))
-- \debouncer2|Add0~43\ = CARRY((!\debouncer2|s_debounceCnt\(21) & !\debouncer2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer2|Add0~41\,
	combout => \debouncer2|Add0~42_combout\,
	cout => \debouncer2|Add0~43\);

-- Location: LCCOMB_X96_Y42_N28
\debouncer2|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[21]~11_combout\ = (\debouncer2|Add0~42_combout\ & (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|s_debounceCnt[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~42_combout\,
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|s_debounceCnt[7]~3_combout\,
	combout => \debouncer2|s_debounceCnt[21]~11_combout\);

-- Location: FF_X96_Y42_N29
\debouncer2|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(21));

-- Location: LCCOMB_X95_Y43_N18
\debouncer2|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~1_combout\ = (!\debouncer2|s_debounceCnt\(12) & (!\debouncer2|s_debounceCnt\(13) & (!\debouncer2|s_debounceCnt\(21) & !\debouncer2|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(12),
	datab => \debouncer2|s_debounceCnt\(13),
	datac => \debouncer2|s_debounceCnt\(21),
	datad => \debouncer2|s_debounceCnt\(20),
	combout => \debouncer2|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y42_N6
\debouncer2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~28_combout\ = (\debouncer2|s_debounceCnt\(14) & ((GND) # (!\debouncer2|Add0~27\))) # (!\debouncer2|s_debounceCnt\(14) & (\debouncer2|Add0~27\ $ (GND)))
-- \debouncer2|Add0~29\ = CARRY((\debouncer2|s_debounceCnt\(14)) # (!\debouncer2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer2|Add0~27\,
	combout => \debouncer2|Add0~28_combout\,
	cout => \debouncer2|Add0~29\);

-- Location: LCCOMB_X97_Y43_N28
\debouncer2|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~17_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~28_combout\) # (!\debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[7]~0_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datad => \debouncer2|Add0~28_combout\,
	combout => \debouncer2|s_debounceCnt~17_combout\);

-- Location: FF_X97_Y43_N29
\debouncer2|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~17_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(14));

-- Location: LCCOMB_X96_Y42_N8
\debouncer2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~30_combout\ = (\debouncer2|s_debounceCnt\(15) & (\debouncer2|Add0~29\ & VCC)) # (!\debouncer2|s_debounceCnt\(15) & (!\debouncer2|Add0~29\))
-- \debouncer2|Add0~31\ = CARRY((!\debouncer2|s_debounceCnt\(15) & !\debouncer2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer2|Add0~29\,
	combout => \debouncer2|Add0~30_combout\,
	cout => \debouncer2|Add0~31\);

-- Location: LCCOMB_X95_Y43_N8
\debouncer2|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~5_combout\ = (\debouncer2|Add0~30_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|Add0~30_combout\,
	datad => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~5_combout\);

-- Location: FF_X95_Y43_N9
\debouncer2|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~5_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(15));

-- Location: LCCOMB_X96_Y42_N10
\debouncer2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~32_combout\ = (\debouncer2|s_debounceCnt\(16) & ((GND) # (!\debouncer2|Add0~31\))) # (!\debouncer2|s_debounceCnt\(16) & (\debouncer2|Add0~31\ $ (GND)))
-- \debouncer2|Add0~33\ = CARRY((\debouncer2|s_debounceCnt\(16)) # (!\debouncer2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer2|Add0~31\,
	combout => \debouncer2|Add0~32_combout\,
	cout => \debouncer2|Add0~33\);

-- Location: LCCOMB_X95_Y43_N22
\debouncer2|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~6_combout\ = (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|Add0~32_combout\,
	combout => \debouncer2|s_debounceCnt~6_combout\);

-- Location: FF_X95_Y43_N23
\debouncer2|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~6_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y42_N12
\debouncer2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~34_combout\ = (\debouncer2|s_debounceCnt\(17) & (\debouncer2|Add0~33\ & VCC)) # (!\debouncer2|s_debounceCnt\(17) & (!\debouncer2|Add0~33\))
-- \debouncer2|Add0~35\ = CARRY((!\debouncer2|s_debounceCnt\(17) & !\debouncer2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer2|Add0~33\,
	combout => \debouncer2|Add0~34_combout\,
	cout => \debouncer2|Add0~35\);

-- Location: LCCOMB_X96_Y42_N24
\debouncer2|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~7_combout\ = (\debouncer2|Add0~34_combout\ & \debouncer2|s_debounceCnt[7]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|Add0~34_combout\,
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	combout => \debouncer2|s_debounceCnt~7_combout\);

-- Location: FF_X96_Y42_N25
\debouncer2|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~7_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y42_N14
\debouncer2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~36_combout\ = (\debouncer2|s_debounceCnt\(18) & ((GND) # (!\debouncer2|Add0~35\))) # (!\debouncer2|s_debounceCnt\(18) & (\debouncer2|Add0~35\ $ (GND)))
-- \debouncer2|Add0~37\ = CARRY((\debouncer2|s_debounceCnt\(18)) # (!\debouncer2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer2|Add0~35\,
	combout => \debouncer2|Add0~36_combout\,
	cout => \debouncer2|Add0~37\);

-- Location: LCCOMB_X96_Y42_N26
\debouncer2|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[18]~18_combout\ = (\debouncer2|s_debounceCnt[7]~0_combout\ & (\debouncer2|s_debounceCnt[7]~3_combout\ & ((\debouncer2|Add0~36_combout\) # (!\debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_previousIn~q\,
	datab => \debouncer2|Add0~36_combout\,
	datac => \debouncer2|s_debounceCnt[7]~0_combout\,
	datad => \debouncer2|s_debounceCnt[7]~3_combout\,
	combout => \debouncer2|s_debounceCnt[18]~18_combout\);

-- Location: FF_X96_Y42_N27
\debouncer2|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y43_N4
\debouncer2|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~3_combout\ = (!\debouncer2|s_debounceCnt\(19) & (!\debouncer2|s_debounceCnt\(14) & (!\debouncer2|s_debounceCnt\(11) & !\debouncer2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(19),
	datab => \debouncer2|s_debounceCnt\(14),
	datac => \debouncer2|s_debounceCnt\(11),
	datad => \debouncer2|s_debounceCnt\(18),
	combout => \debouncer2|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X95_Y43_N28
\debouncer2|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~0_combout\ = (!\debouncer2|s_debounceCnt\(16) & (!\debouncer2|s_debounceCnt\(15) & (!\debouncer2|s_debounceCnt\(6) & !\debouncer2|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(16),
	datab => \debouncer2|s_debounceCnt\(15),
	datac => \debouncer2|s_debounceCnt\(6),
	datad => \debouncer2|s_debounceCnt\(17),
	combout => \debouncer2|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X95_Y43_N2
\debouncer2|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~4_combout\ = (\debouncer2|s_pulsedOut~2_combout\ & (\debouncer2|s_pulsedOut~1_combout\ & (\debouncer2|s_pulsedOut~3_combout\ & \debouncer2|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~2_combout\,
	datab => \debouncer2|s_pulsedOut~1_combout\,
	datac => \debouncer2|s_pulsedOut~3_combout\,
	datad => \debouncer2|s_pulsedOut~0_combout\,
	combout => \debouncer2|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X95_Y43_N20
\debouncer2|s_debounceCnt[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[7]~2_combout\ = ((\debouncer2|s_debounceCnt\(5)) # ((\debouncer2|s_debounceCnt\(0)) # (!\debouncer2|s_pulsedOut~4_combout\))) # (!\debouncer2|s_pulsedOut~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~5_combout\,
	datab => \debouncer2|s_debounceCnt\(5),
	datac => \debouncer2|s_debounceCnt\(0),
	datad => \debouncer2|s_pulsedOut~4_combout\,
	combout => \debouncer2|s_debounceCnt[7]~2_combout\);

-- Location: LCCOMB_X95_Y43_N10
\debouncer2|s_debounceCnt[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[7]~3_combout\ = (\debouncer2|s_debounceCnt\(22)) # (((\debouncer2|s_debounceCnt[7]~2_combout\) # (!\debouncer2|s_dirtyIn~q\)) # (!\debouncer2|s_previousIn~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|s_dirtyIn~q\,
	datad => \debouncer2|s_debounceCnt[7]~2_combout\,
	combout => \debouncer2|s_debounceCnt[7]~3_combout\);

-- Location: LCCOMB_X96_Y42_N16
\debouncer2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~38_combout\ = (\debouncer2|s_debounceCnt\(19) & (\debouncer2|Add0~37\ & VCC)) # (!\debouncer2|s_debounceCnt\(19) & (!\debouncer2|Add0~37\))
-- \debouncer2|Add0~39\ = CARRY((!\debouncer2|s_debounceCnt\(19) & !\debouncer2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer2|Add0~37\,
	combout => \debouncer2|Add0~38_combout\,
	cout => \debouncer2|Add0~39\);

-- Location: LCCOMB_X97_Y43_N6
\debouncer2|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[19]~19_combout\ = (\debouncer2|s_debounceCnt[7]~3_combout\ & (\debouncer2|s_debounceCnt[7]~0_combout\ & ((\debouncer2|Add0~38_combout\) # (!\debouncer2|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[7]~3_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|Add0~38_combout\,
	datad => \debouncer2|s_debounceCnt[7]~0_combout\,
	combout => \debouncer2|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y43_N7
\debouncer2|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(19));

-- Location: LCCOMB_X96_Y42_N30
\debouncer2|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[20]~10_combout\ = (\debouncer2|Add0~40_combout\ & (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|s_debounceCnt[7]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|Add0~40_combout\,
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|s_debounceCnt[7]~3_combout\,
	combout => \debouncer2|s_debounceCnt[20]~10_combout\);

-- Location: FF_X96_Y42_N31
\debouncer2|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y43_N2
\debouncer2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~4_combout\ = (\debouncer2|s_debounceCnt\(12)) # ((\debouncer2|s_debounceCnt\(13)) # ((\debouncer2|s_debounceCnt\(11) & \debouncer2|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(11),
	datab => \debouncer2|s_debounceCnt\(12),
	datac => \debouncer2|s_debounceCnt\(10),
	datad => \debouncer2|s_debounceCnt\(13),
	combout => \debouncer2|LessThan0~4_combout\);

-- Location: LCCOMB_X97_Y43_N16
\debouncer2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~5_combout\ = (\debouncer2|s_debounceCnt\(16)) # ((\debouncer2|s_debounceCnt\(15)) # ((\debouncer2|s_debounceCnt\(14) & \debouncer2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(16),
	datab => \debouncer2|s_debounceCnt\(14),
	datac => \debouncer2|s_debounceCnt\(15),
	datad => \debouncer2|LessThan0~4_combout\,
	combout => \debouncer2|LessThan0~5_combout\);

-- Location: LCCOMB_X97_Y43_N22
\debouncer2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~6_combout\ = (\debouncer2|s_debounceCnt\(18) & (\debouncer2|s_debounceCnt\(19) & ((\debouncer2|s_debounceCnt\(17)) # (\debouncer2|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(18),
	datab => \debouncer2|s_debounceCnt\(19),
	datac => \debouncer2|s_debounceCnt\(17),
	datad => \debouncer2|LessThan0~5_combout\,
	combout => \debouncer2|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y43_N18
\debouncer2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~1_combout\ = (\debouncer2|s_debounceCnt\(11) & \debouncer2|s_debounceCnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt\(11),
	datad => \debouncer2|s_debounceCnt\(9),
	combout => \debouncer2|LessThan0~1_combout\);

-- Location: LCCOMB_X97_Y43_N8
\debouncer2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~0_combout\ = (\debouncer2|s_debounceCnt\(19) & (\debouncer2|s_debounceCnt\(14) & (\debouncer2|s_debounceCnt\(8) & \debouncer2|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(19),
	datab => \debouncer2|s_debounceCnt\(14),
	datac => \debouncer2|s_debounceCnt\(8),
	datad => \debouncer2|s_debounceCnt\(18),
	combout => \debouncer2|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y43_N2
\debouncer2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~2_combout\ = (\debouncer2|s_debounceCnt\(6) & ((\debouncer2|s_debounceCnt\(5)) # ((\debouncer2|s_debounceCnt\(0)) # (!\debouncer2|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(5),
	datab => \debouncer2|s_debounceCnt\(0),
	datac => \debouncer2|s_debounceCnt\(6),
	datad => \debouncer2|s_pulsedOut~5_combout\,
	combout => \debouncer2|LessThan0~2_combout\);

-- Location: LCCOMB_X97_Y43_N24
\debouncer2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~3_combout\ = (\debouncer2|LessThan0~1_combout\ & (\debouncer2|LessThan0~0_combout\ & ((\debouncer2|s_debounceCnt\(7)) # (\debouncer2|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(7),
	datab => \debouncer2|LessThan0~1_combout\,
	datac => \debouncer2|LessThan0~0_combout\,
	datad => \debouncer2|LessThan0~2_combout\,
	combout => \debouncer2|LessThan0~3_combout\);

-- Location: LCCOMB_X97_Y43_N12
\debouncer2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|LessThan0~7_combout\ = (\debouncer2|s_debounceCnt\(20)) # ((\debouncer2|s_debounceCnt\(21)) # ((\debouncer2|LessThan0~6_combout\) # (\debouncer2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(20),
	datab => \debouncer2|s_debounceCnt\(21),
	datac => \debouncer2|LessThan0~6_combout\,
	datad => \debouncer2|LessThan0~3_combout\,
	combout => \debouncer2|LessThan0~7_combout\);

-- Location: LCCOMB_X97_Y43_N10
\debouncer2|s_debounceCnt[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[7]~0_combout\ = (\debouncer2|s_dirtyIn~q\ & ((!\debouncer2|LessThan0~7_combout\) # (!\debouncer2|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt\(22),
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[7]~0_combout\);

-- Location: LCCOMB_X97_Y43_N14
\debouncer2|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[22]~25_combout\ = (\debouncer2|s_dirtyIn~q\ & ((\debouncer2|s_debounceCnt\(22) & ((!\debouncer2|LessThan0~7_combout\))) # (!\debouncer2|s_debounceCnt\(22) & (\debouncer2|s_debounceCnt[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(22),
	datab => \debouncer2|s_dirtyIn~q\,
	datac => \debouncer2|s_debounceCnt[7]~2_combout\,
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X96_Y42_N22
\debouncer2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|Add0~44_combout\ = \debouncer2|Add0~43\ $ (\debouncer2|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer2|s_debounceCnt\(22),
	cin => \debouncer2|Add0~43\,
	combout => \debouncer2|Add0~44_combout\);

-- Location: LCCOMB_X97_Y43_N26
\debouncer2|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[22]~26_combout\ = (\debouncer2|s_previousIn~q\ & (((\debouncer2|s_debounceCnt[22]~25_combout\ & \debouncer2|Add0~44_combout\)))) # (!\debouncer2|s_previousIn~q\ & (\debouncer2|s_debounceCnt[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt[7]~0_combout\,
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|s_debounceCnt[22]~25_combout\,
	datad => \debouncer2|Add0~44_combout\,
	combout => \debouncer2|s_debounceCnt[22]~26_combout\);

-- Location: FF_X97_Y43_N27
\debouncer2|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(22));

-- Location: LCCOMB_X97_Y43_N0
\debouncer2|s_debounceCnt[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt[7]~4_combout\ = (\debouncer2|s_dirtyIn~q\ & (\debouncer2|s_previousIn~q\ & ((!\debouncer2|LessThan0~7_combout\) # (!\debouncer2|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_dirtyIn~q\,
	datab => \debouncer2|s_previousIn~q\,
	datac => \debouncer2|s_debounceCnt\(22),
	datad => \debouncer2|LessThan0~7_combout\,
	combout => \debouncer2|s_debounceCnt[7]~4_combout\);

-- Location: LCCOMB_X96_Y43_N6
\debouncer2|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_debounceCnt~23_combout\ = (\debouncer2|s_debounceCnt[7]~4_combout\ & \debouncer2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer2|s_debounceCnt[7]~4_combout\,
	datad => \debouncer2|Add0~8_combout\,
	combout => \debouncer2|s_debounceCnt~23_combout\);

-- Location: FF_X96_Y43_N7
\debouncer2|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_debounceCnt~23_combout\,
	ena => \debouncer2|s_debounceCnt[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_debounceCnt\(4));

-- Location: LCCOMB_X96_Y43_N8
\debouncer2|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~5_combout\ = (!\debouncer2|s_debounceCnt\(4) & (!\debouncer2|s_debounceCnt\(1) & (!\debouncer2|s_debounceCnt\(3) & !\debouncer2|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_debounceCnt\(4),
	datab => \debouncer2|s_debounceCnt\(1),
	datac => \debouncer2|s_debounceCnt\(3),
	datad => \debouncer2|s_debounceCnt\(2),
	combout => \debouncer2|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X98_Y43_N28
\debouncer2|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~6_combout\ = (\debouncer2|s_dirtyIn~q\ & (\debouncer2|s_debounceCnt\(0) & (!\debouncer2|s_debounceCnt\(22) & \debouncer2|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_dirtyIn~q\,
	datab => \debouncer2|s_debounceCnt\(0),
	datac => \debouncer2|s_debounceCnt\(22),
	datad => \debouncer2|s_previousIn~q\,
	combout => \debouncer2|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X98_Y43_N4
\debouncer2|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer2|s_pulsedOut~7_combout\ = (\debouncer2|s_pulsedOut~5_combout\ & (\debouncer2|s_pulsedOut~6_combout\ & (\debouncer2|s_pulsedOut~4_combout\ & !\debouncer2|s_debounceCnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~5_combout\,
	datab => \debouncer2|s_pulsedOut~6_combout\,
	datac => \debouncer2|s_pulsedOut~4_combout\,
	datad => \debouncer2|s_debounceCnt\(5),
	combout => \debouncer2|s_pulsedOut~7_combout\);

-- Location: FF_X98_Y43_N5
\debouncer2|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer2|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer2|s_pulsedOut~q\);

-- Location: LCCOMB_X89_Y13_N2
\drinksFSM|drink~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~1_combout\ = (\drinksFSM|state.Hello~q\ & !\drinksFSM|state.Choice~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Hello~q\,
	datad => \drinksFSM|state.Choice~q\,
	combout => \drinksFSM|drink~1_combout\);

-- Location: LCCOMB_X90_Y13_N4
\drinksFSM|s_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_mode~0_combout\ = (!\SW[17]~input_o\ & (\drinksFSM|drink~1_combout\ & ((\resettimer|Equal1~8_combout\) # (!\drinksFSM|s_clear~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_clear~q\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|drink~1_combout\,
	datad => \resettimer|Equal1~8_combout\,
	combout => \drinksFSM|s_mode~0_combout\);

-- Location: LCCOMB_X91_Y15_N4
\timerdrink|s_count[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[0]~29_combout\ = \timerdrink|s_count\(0) $ (VCC)
-- \timerdrink|s_count[0]~30\ = CARRY(\timerdrink|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(0),
	datad => VCC,
	combout => \timerdrink|s_count[0]~29_combout\,
	cout => \timerdrink|s_count[0]~30\);

-- Location: LCCOMB_X91_Y14_N12
\timerdrink|s_count[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[20]~71_combout\ = (\timerdrink|s_count\(20) & (\timerdrink|s_count[19]~70\ $ (GND))) # (!\timerdrink|s_count\(20) & (!\timerdrink|s_count[19]~70\ & VCC))
-- \timerdrink|s_count[20]~72\ = CARRY((\timerdrink|s_count\(20) & !\timerdrink|s_count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(20),
	datad => VCC,
	cin => \timerdrink|s_count[19]~70\,
	combout => \timerdrink|s_count[20]~71_combout\,
	cout => \timerdrink|s_count[20]~72\);

-- Location: LCCOMB_X91_Y14_N14
\timerdrink|s_count[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[21]~73_combout\ = (\timerdrink|s_count\(21) & (!\timerdrink|s_count[20]~72\)) # (!\timerdrink|s_count\(21) & ((\timerdrink|s_count[20]~72\) # (GND)))
-- \timerdrink|s_count[21]~74\ = CARRY((!\timerdrink|s_count[20]~72\) # (!\timerdrink|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(21),
	datad => VCC,
	cin => \timerdrink|s_count[20]~72\,
	combout => \timerdrink|s_count[21]~73_combout\,
	cout => \timerdrink|s_count[21]~74\);

-- Location: LCCOMB_X90_Y14_N22
\timerdrink|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~6_combout\ = (!\timerdrink|s_count\(18) & (!\timerdrink|s_count\(19) & (!\timerdrink|s_count\(16) & !\timerdrink|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(18),
	datab => \timerdrink|s_count\(19),
	datac => \timerdrink|s_count\(16),
	datad => \timerdrink|s_count\(22),
	combout => \timerdrink|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y14_N20
\timerdrink|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~5_combout\ = (!\timerdrink|s_count\(13) & (!\timerdrink|s_count\(8) & (!\timerdrink|s_count\(14) & !\timerdrink|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(13),
	datab => \timerdrink|s_count\(8),
	datac => \timerdrink|s_count\(14),
	datad => \timerdrink|s_count\(10),
	combout => \timerdrink|Equal0~5_combout\);

-- Location: LCCOMB_X91_Y14_N20
\timerdrink|s_count[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[24]~79_combout\ = (\timerdrink|s_count\(24) & (\timerdrink|s_count[23]~78\ $ (GND))) # (!\timerdrink|s_count\(24) & (!\timerdrink|s_count[23]~78\ & VCC))
-- \timerdrink|s_count[24]~80\ = CARRY((\timerdrink|s_count\(24) & !\timerdrink|s_count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(24),
	datad => VCC,
	cin => \timerdrink|s_count[23]~78\,
	combout => \timerdrink|s_count[24]~79_combout\,
	cout => \timerdrink|s_count[24]~80\);

-- Location: LCCOMB_X91_Y14_N22
\timerdrink|s_count[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[25]~81_combout\ = (\timerdrink|s_count\(25) & (!\timerdrink|s_count[24]~80\)) # (!\timerdrink|s_count\(25) & ((\timerdrink|s_count[24]~80\) # (GND)))
-- \timerdrink|s_count[25]~82\ = CARRY((!\timerdrink|s_count[24]~80\) # (!\timerdrink|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(25),
	datad => VCC,
	cin => \timerdrink|s_count[24]~80\,
	combout => \timerdrink|s_count[25]~81_combout\,
	cout => \timerdrink|s_count[25]~82\);

-- Location: FF_X91_Y14_N23
\timerdrink|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[25]~81_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(25));

-- Location: LCCOMB_X91_Y14_N24
\timerdrink|s_count[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[26]~83_combout\ = (\timerdrink|s_count\(26) & (\timerdrink|s_count[25]~82\ $ (GND))) # (!\timerdrink|s_count\(26) & (!\timerdrink|s_count[25]~82\ & VCC))
-- \timerdrink|s_count[26]~84\ = CARRY((\timerdrink|s_count\(26) & !\timerdrink|s_count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(26),
	datad => VCC,
	cin => \timerdrink|s_count[25]~82\,
	combout => \timerdrink|s_count[26]~83_combout\,
	cout => \timerdrink|s_count[26]~84\);

-- Location: FF_X91_Y14_N25
\timerdrink|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[26]~83_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(26));

-- Location: LCCOMB_X91_Y14_N26
\timerdrink|s_count[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[27]~85_combout\ = (\timerdrink|s_count\(27) & (!\timerdrink|s_count[26]~84\)) # (!\timerdrink|s_count\(27) & ((\timerdrink|s_count[26]~84\) # (GND)))
-- \timerdrink|s_count[27]~86\ = CARRY((!\timerdrink|s_count[26]~84\) # (!\timerdrink|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(27),
	datad => VCC,
	cin => \timerdrink|s_count[26]~84\,
	combout => \timerdrink|s_count[27]~85_combout\,
	cout => \timerdrink|s_count[27]~86\);

-- Location: FF_X91_Y14_N27
\timerdrink|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[27]~85_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(27));

-- Location: LCCOMB_X91_Y14_N28
\timerdrink|s_count[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[28]~87_combout\ = \timerdrink|s_count[27]~86\ $ (!\timerdrink|s_count\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timerdrink|s_count\(28),
	cin => \timerdrink|s_count[27]~86\,
	combout => \timerdrink|s_count[28]~87_combout\);

-- Location: FF_X91_Y14_N29
\timerdrink|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[28]~87_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(28));

-- Location: LCCOMB_X90_Y14_N0
\timerdrink|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~7_combout\ = (!\timerdrink|s_count\(24) & (!\timerdrink|s_count\(27) & (!\timerdrink|s_count\(23) & !\timerdrink|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(24),
	datab => \timerdrink|s_count\(27),
	datac => \timerdrink|s_count\(23),
	datad => \timerdrink|s_count\(26),
	combout => \timerdrink|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y14_N26
\timerdrink|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~8_combout\ = (!\timerdrink|s_count\(28) & \timerdrink|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(28),
	datad => \timerdrink|Equal0~7_combout\,
	combout => \timerdrink|Equal0~8_combout\);

-- Location: LCCOMB_X90_Y14_N16
\timerdrink|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~9_combout\ = (\timerdrink|Equal0~6_combout\ & (\timerdrink|Equal0~5_combout\ & (\timerdrink|Equal0~8_combout\ & \timerdrink|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal0~6_combout\,
	datab => \timerdrink|Equal0~5_combout\,
	datac => \timerdrink|Equal0~8_combout\,
	datad => \timerdrink|Equal0~4_combout\,
	combout => \timerdrink|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y13_N22
\timerdrink|s_count[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[4]~32_combout\ = ((\sugarFSM|cando~combout\ & ((\drinksFSM|s_preparing~q\) # (!\timerdrink|Equal0~9_combout\)))) # (!\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_preparing~q\,
	datab => \sugarFSM|cando~combout\,
	datac => \timerdrink|Equal0~9_combout\,
	datad => \comb~0_combout\,
	combout => \timerdrink|s_count[4]~32_combout\);

-- Location: FF_X91_Y14_N15
\timerdrink|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[21]~73_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(21));

-- Location: LCCOMB_X91_Y14_N16
\timerdrink|s_count[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[22]~75_combout\ = (\timerdrink|s_count\(22) & (\timerdrink|s_count[21]~74\ $ (GND))) # (!\timerdrink|s_count\(22) & (!\timerdrink|s_count[21]~74\ & VCC))
-- \timerdrink|s_count[22]~76\ = CARRY((\timerdrink|s_count\(22) & !\timerdrink|s_count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(22),
	datad => VCC,
	cin => \timerdrink|s_count[21]~74\,
	combout => \timerdrink|s_count[22]~75_combout\,
	cout => \timerdrink|s_count[22]~76\);

-- Location: FF_X91_Y14_N17
\timerdrink|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[22]~75_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(22));

-- Location: LCCOMB_X91_Y14_N18
\timerdrink|s_count[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[23]~77_combout\ = (\timerdrink|s_count\(23) & (!\timerdrink|s_count[22]~76\)) # (!\timerdrink|s_count\(23) & ((\timerdrink|s_count[22]~76\) # (GND)))
-- \timerdrink|s_count[23]~78\ = CARRY((!\timerdrink|s_count[22]~76\) # (!\timerdrink|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(23),
	datad => VCC,
	cin => \timerdrink|s_count[22]~76\,
	combout => \timerdrink|s_count[23]~77_combout\,
	cout => \timerdrink|s_count[23]~78\);

-- Location: FF_X91_Y14_N19
\timerdrink|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[23]~77_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(23));

-- Location: FF_X91_Y14_N21
\timerdrink|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[24]~79_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(24));

-- Location: LCCOMB_X90_Y14_N10
\timerdrink|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal1~2_combout\ = (\timerdrink|s_count\(24) & (\timerdrink|s_count\(27) & (\timerdrink|s_count\(23) & \timerdrink|s_count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(24),
	datab => \timerdrink|s_count\(27),
	datac => \timerdrink|s_count\(23),
	datad => \timerdrink|s_count\(26),
	combout => \timerdrink|Equal1~2_combout\);

-- Location: LCCOMB_X90_Y14_N4
\timerdrink|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal1~1_combout\ = (\timerdrink|s_count\(18) & (\timerdrink|s_count\(19) & (\timerdrink|s_count\(16) & \timerdrink|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(18),
	datab => \timerdrink|s_count\(19),
	datac => \timerdrink|s_count\(16),
	datad => \timerdrink|s_count\(22),
	combout => \timerdrink|Equal1~1_combout\);

-- Location: LCCOMB_X90_Y14_N2
\timerdrink|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal1~0_combout\ = (\timerdrink|s_count\(13) & (\timerdrink|s_count\(14) & (\timerdrink|s_count\(8) & \timerdrink|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(13),
	datab => \timerdrink|s_count\(14),
	datac => \timerdrink|s_count\(8),
	datad => \timerdrink|s_count\(10),
	combout => \timerdrink|Equal1~0_combout\);

-- Location: LCCOMB_X90_Y14_N8
\timerdrink|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal1~3_combout\ = (\timerdrink|Equal1~2_combout\ & (\timerdrink|s_count\(28) & (\timerdrink|Equal1~1_combout\ & \timerdrink|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal1~2_combout\,
	datab => \timerdrink|s_count\(28),
	datac => \timerdrink|Equal1~1_combout\,
	datad => \timerdrink|Equal1~0_combout\,
	combout => \timerdrink|Equal1~3_combout\);

-- Location: LCCOMB_X90_Y14_N30
\timerdrink|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal1~4_combout\ = (\timerdrink|Equal1~3_combout\ & \timerdrink|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerdrink|Equal1~3_combout\,
	datad => \timerdrink|Equal0~4_combout\,
	combout => \timerdrink|Equal1~4_combout\);

-- Location: LCCOMB_X90_Y13_N8
\timerdrink|s_count[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[4]~31_combout\ = ((\timerdrink|Equal0~9_combout\ & ((!\drinksFSM|s_preparing~q\))) # (!\timerdrink|Equal0~9_combout\ & (\timerdrink|Equal1~4_combout\))) # (!\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal1~4_combout\,
	datab => \timerdrink|Equal0~9_combout\,
	datac => \drinksFSM|s_preparing~q\,
	datad => \comb~0_combout\,
	combout => \timerdrink|s_count[4]~31_combout\);

-- Location: FF_X91_Y15_N5
\timerdrink|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[0]~29_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(0));

-- Location: LCCOMB_X91_Y15_N6
\timerdrink|s_count[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[1]~33_combout\ = (\timerdrink|s_count\(1) & (!\timerdrink|s_count[0]~30\)) # (!\timerdrink|s_count\(1) & ((\timerdrink|s_count[0]~30\) # (GND)))
-- \timerdrink|s_count[1]~34\ = CARRY((!\timerdrink|s_count[0]~30\) # (!\timerdrink|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(1),
	datad => VCC,
	cin => \timerdrink|s_count[0]~30\,
	combout => \timerdrink|s_count[1]~33_combout\,
	cout => \timerdrink|s_count[1]~34\);

-- Location: FF_X91_Y15_N7
\timerdrink|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[1]~33_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(1));

-- Location: LCCOMB_X91_Y15_N8
\timerdrink|s_count[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[2]~35_combout\ = (\timerdrink|s_count\(2) & (\timerdrink|s_count[1]~34\ $ (GND))) # (!\timerdrink|s_count\(2) & (!\timerdrink|s_count[1]~34\ & VCC))
-- \timerdrink|s_count[2]~36\ = CARRY((\timerdrink|s_count\(2) & !\timerdrink|s_count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(2),
	datad => VCC,
	cin => \timerdrink|s_count[1]~34\,
	combout => \timerdrink|s_count[2]~35_combout\,
	cout => \timerdrink|s_count[2]~36\);

-- Location: FF_X91_Y15_N9
\timerdrink|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[2]~35_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(2));

-- Location: LCCOMB_X91_Y15_N10
\timerdrink|s_count[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[3]~37_combout\ = (\timerdrink|s_count\(3) & (!\timerdrink|s_count[2]~36\)) # (!\timerdrink|s_count\(3) & ((\timerdrink|s_count[2]~36\) # (GND)))
-- \timerdrink|s_count[3]~38\ = CARRY((!\timerdrink|s_count[2]~36\) # (!\timerdrink|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(3),
	datad => VCC,
	cin => \timerdrink|s_count[2]~36\,
	combout => \timerdrink|s_count[3]~37_combout\,
	cout => \timerdrink|s_count[3]~38\);

-- Location: FF_X91_Y15_N11
\timerdrink|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[3]~37_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(3));

-- Location: LCCOMB_X91_Y15_N12
\timerdrink|s_count[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[4]~39_combout\ = (\timerdrink|s_count\(4) & (\timerdrink|s_count[3]~38\ $ (GND))) # (!\timerdrink|s_count\(4) & (!\timerdrink|s_count[3]~38\ & VCC))
-- \timerdrink|s_count[4]~40\ = CARRY((\timerdrink|s_count\(4) & !\timerdrink|s_count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(4),
	datad => VCC,
	cin => \timerdrink|s_count[3]~38\,
	combout => \timerdrink|s_count[4]~39_combout\,
	cout => \timerdrink|s_count[4]~40\);

-- Location: FF_X91_Y15_N13
\timerdrink|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[4]~39_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(4));

-- Location: LCCOMB_X91_Y15_N14
\timerdrink|s_count[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[5]~41_combout\ = (\timerdrink|s_count\(5) & (!\timerdrink|s_count[4]~40\)) # (!\timerdrink|s_count\(5) & ((\timerdrink|s_count[4]~40\) # (GND)))
-- \timerdrink|s_count[5]~42\ = CARRY((!\timerdrink|s_count[4]~40\) # (!\timerdrink|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(5),
	datad => VCC,
	cin => \timerdrink|s_count[4]~40\,
	combout => \timerdrink|s_count[5]~41_combout\,
	cout => \timerdrink|s_count[5]~42\);

-- Location: FF_X91_Y15_N15
\timerdrink|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[5]~41_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(5));

-- Location: LCCOMB_X91_Y15_N16
\timerdrink|s_count[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[6]~43_combout\ = (\timerdrink|s_count\(6) & (\timerdrink|s_count[5]~42\ $ (GND))) # (!\timerdrink|s_count\(6) & (!\timerdrink|s_count[5]~42\ & VCC))
-- \timerdrink|s_count[6]~44\ = CARRY((\timerdrink|s_count\(6) & !\timerdrink|s_count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(6),
	datad => VCC,
	cin => \timerdrink|s_count[5]~42\,
	combout => \timerdrink|s_count[6]~43_combout\,
	cout => \timerdrink|s_count[6]~44\);

-- Location: FF_X91_Y15_N17
\timerdrink|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[6]~43_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(6));

-- Location: LCCOMB_X91_Y15_N18
\timerdrink|s_count[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[7]~45_combout\ = (\timerdrink|s_count\(7) & (!\timerdrink|s_count[6]~44\)) # (!\timerdrink|s_count\(7) & ((\timerdrink|s_count[6]~44\) # (GND)))
-- \timerdrink|s_count[7]~46\ = CARRY((!\timerdrink|s_count[6]~44\) # (!\timerdrink|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(7),
	datad => VCC,
	cin => \timerdrink|s_count[6]~44\,
	combout => \timerdrink|s_count[7]~45_combout\,
	cout => \timerdrink|s_count[7]~46\);

-- Location: FF_X91_Y15_N19
\timerdrink|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[7]~45_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(7));

-- Location: LCCOMB_X91_Y15_N20
\timerdrink|s_count[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[8]~47_combout\ = (\timerdrink|s_count\(8) & (\timerdrink|s_count[7]~46\ $ (GND))) # (!\timerdrink|s_count\(8) & (!\timerdrink|s_count[7]~46\ & VCC))
-- \timerdrink|s_count[8]~48\ = CARRY((\timerdrink|s_count\(8) & !\timerdrink|s_count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(8),
	datad => VCC,
	cin => \timerdrink|s_count[7]~46\,
	combout => \timerdrink|s_count[8]~47_combout\,
	cout => \timerdrink|s_count[8]~48\);

-- Location: FF_X91_Y15_N21
\timerdrink|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[8]~47_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(8));

-- Location: LCCOMB_X91_Y15_N22
\timerdrink|s_count[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[9]~49_combout\ = (\timerdrink|s_count\(9) & (!\timerdrink|s_count[8]~48\)) # (!\timerdrink|s_count\(9) & ((\timerdrink|s_count[8]~48\) # (GND)))
-- \timerdrink|s_count[9]~50\ = CARRY((!\timerdrink|s_count[8]~48\) # (!\timerdrink|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(9),
	datad => VCC,
	cin => \timerdrink|s_count[8]~48\,
	combout => \timerdrink|s_count[9]~49_combout\,
	cout => \timerdrink|s_count[9]~50\);

-- Location: FF_X91_Y15_N23
\timerdrink|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[9]~49_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(9));

-- Location: LCCOMB_X91_Y15_N24
\timerdrink|s_count[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[10]~51_combout\ = (\timerdrink|s_count\(10) & (\timerdrink|s_count[9]~50\ $ (GND))) # (!\timerdrink|s_count\(10) & (!\timerdrink|s_count[9]~50\ & VCC))
-- \timerdrink|s_count[10]~52\ = CARRY((\timerdrink|s_count\(10) & !\timerdrink|s_count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(10),
	datad => VCC,
	cin => \timerdrink|s_count[9]~50\,
	combout => \timerdrink|s_count[10]~51_combout\,
	cout => \timerdrink|s_count[10]~52\);

-- Location: FF_X91_Y15_N25
\timerdrink|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[10]~51_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(10));

-- Location: LCCOMB_X91_Y15_N26
\timerdrink|s_count[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[11]~53_combout\ = (\timerdrink|s_count\(11) & (!\timerdrink|s_count[10]~52\)) # (!\timerdrink|s_count\(11) & ((\timerdrink|s_count[10]~52\) # (GND)))
-- \timerdrink|s_count[11]~54\ = CARRY((!\timerdrink|s_count[10]~52\) # (!\timerdrink|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(11),
	datad => VCC,
	cin => \timerdrink|s_count[10]~52\,
	combout => \timerdrink|s_count[11]~53_combout\,
	cout => \timerdrink|s_count[11]~54\);

-- Location: FF_X90_Y14_N25
\timerdrink|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerdrink|s_count[11]~53_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	sload => VCC,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(11));

-- Location: LCCOMB_X91_Y15_N28
\timerdrink|s_count[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[12]~55_combout\ = (\timerdrink|s_count\(12) & (\timerdrink|s_count[11]~54\ $ (GND))) # (!\timerdrink|s_count\(12) & (!\timerdrink|s_count[11]~54\ & VCC))
-- \timerdrink|s_count[12]~56\ = CARRY((\timerdrink|s_count\(12) & !\timerdrink|s_count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(12),
	datad => VCC,
	cin => \timerdrink|s_count[11]~54\,
	combout => \timerdrink|s_count[12]~55_combout\,
	cout => \timerdrink|s_count[12]~56\);

-- Location: FF_X90_Y14_N15
\timerdrink|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \timerdrink|s_count[12]~55_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	sload => VCC,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(12));

-- Location: LCCOMB_X91_Y15_N30
\timerdrink|s_count[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[13]~57_combout\ = (\timerdrink|s_count\(13) & (!\timerdrink|s_count[12]~56\)) # (!\timerdrink|s_count\(13) & ((\timerdrink|s_count[12]~56\) # (GND)))
-- \timerdrink|s_count[13]~58\ = CARRY((!\timerdrink|s_count[12]~56\) # (!\timerdrink|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(13),
	datad => VCC,
	cin => \timerdrink|s_count[12]~56\,
	combout => \timerdrink|s_count[13]~57_combout\,
	cout => \timerdrink|s_count[13]~58\);

-- Location: FF_X91_Y15_N31
\timerdrink|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[13]~57_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(13));

-- Location: LCCOMB_X91_Y14_N0
\timerdrink|s_count[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[14]~59_combout\ = (\timerdrink|s_count\(14) & (\timerdrink|s_count[13]~58\ $ (GND))) # (!\timerdrink|s_count\(14) & (!\timerdrink|s_count[13]~58\ & VCC))
-- \timerdrink|s_count[14]~60\ = CARRY((\timerdrink|s_count\(14) & !\timerdrink|s_count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(14),
	datad => VCC,
	cin => \timerdrink|s_count[13]~58\,
	combout => \timerdrink|s_count[14]~59_combout\,
	cout => \timerdrink|s_count[14]~60\);

-- Location: FF_X91_Y14_N1
\timerdrink|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[14]~59_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(14));

-- Location: LCCOMB_X91_Y14_N2
\timerdrink|s_count[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[15]~61_combout\ = (\timerdrink|s_count\(15) & (!\timerdrink|s_count[14]~60\)) # (!\timerdrink|s_count\(15) & ((\timerdrink|s_count[14]~60\) # (GND)))
-- \timerdrink|s_count[15]~62\ = CARRY((!\timerdrink|s_count[14]~60\) # (!\timerdrink|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(15),
	datad => VCC,
	cin => \timerdrink|s_count[14]~60\,
	combout => \timerdrink|s_count[15]~61_combout\,
	cout => \timerdrink|s_count[15]~62\);

-- Location: FF_X91_Y14_N3
\timerdrink|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[15]~61_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(15));

-- Location: LCCOMB_X91_Y14_N4
\timerdrink|s_count[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[16]~63_combout\ = (\timerdrink|s_count\(16) & (\timerdrink|s_count[15]~62\ $ (GND))) # (!\timerdrink|s_count\(16) & (!\timerdrink|s_count[15]~62\ & VCC))
-- \timerdrink|s_count[16]~64\ = CARRY((\timerdrink|s_count\(16) & !\timerdrink|s_count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(16),
	datad => VCC,
	cin => \timerdrink|s_count[15]~62\,
	combout => \timerdrink|s_count[16]~63_combout\,
	cout => \timerdrink|s_count[16]~64\);

-- Location: FF_X91_Y14_N5
\timerdrink|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[16]~63_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(16));

-- Location: LCCOMB_X91_Y14_N6
\timerdrink|s_count[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[17]~65_combout\ = (\timerdrink|s_count\(17) & (!\timerdrink|s_count[16]~64\)) # (!\timerdrink|s_count\(17) & ((\timerdrink|s_count[16]~64\) # (GND)))
-- \timerdrink|s_count[17]~66\ = CARRY((!\timerdrink|s_count[16]~64\) # (!\timerdrink|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(17),
	datad => VCC,
	cin => \timerdrink|s_count[16]~64\,
	combout => \timerdrink|s_count[17]~65_combout\,
	cout => \timerdrink|s_count[17]~66\);

-- Location: FF_X91_Y14_N7
\timerdrink|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[17]~65_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(17));

-- Location: LCCOMB_X91_Y14_N8
\timerdrink|s_count[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[18]~67_combout\ = (\timerdrink|s_count\(18) & (\timerdrink|s_count[17]~66\ $ (GND))) # (!\timerdrink|s_count\(18) & (!\timerdrink|s_count[17]~66\ & VCC))
-- \timerdrink|s_count[18]~68\ = CARRY((\timerdrink|s_count\(18) & !\timerdrink|s_count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|s_count\(18),
	datad => VCC,
	cin => \timerdrink|s_count[17]~66\,
	combout => \timerdrink|s_count[18]~67_combout\,
	cout => \timerdrink|s_count[18]~68\);

-- Location: FF_X91_Y14_N9
\timerdrink|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[18]~67_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(18));

-- Location: LCCOMB_X91_Y14_N10
\timerdrink|s_count[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_count[19]~69_combout\ = (\timerdrink|s_count\(19) & (!\timerdrink|s_count[18]~68\)) # (!\timerdrink|s_count\(19) & ((\timerdrink|s_count[18]~68\) # (GND)))
-- \timerdrink|s_count[19]~70\ = CARRY((!\timerdrink|s_count[18]~68\) # (!\timerdrink|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(19),
	datad => VCC,
	cin => \timerdrink|s_count[18]~68\,
	combout => \timerdrink|s_count[19]~69_combout\,
	cout => \timerdrink|s_count[19]~70\);

-- Location: FF_X91_Y14_N11
\timerdrink|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[19]~69_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(19));

-- Location: FF_X91_Y14_N13
\timerdrink|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_count[20]~71_combout\,
	sclr => \timerdrink|s_count[4]~31_combout\,
	ena => \timerdrink|s_count[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_count\(20));

-- Location: LCCOMB_X91_Y14_N30
\timerdrink|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~3_combout\ = (!\timerdrink|s_count\(20) & (!\timerdrink|s_count\(21) & (!\timerdrink|s_count\(25) & !\timerdrink|s_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(20),
	datab => \timerdrink|s_count\(21),
	datac => \timerdrink|s_count\(25),
	datad => \timerdrink|s_count\(17),
	combout => \timerdrink|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y14_N28
\timerdrink|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~2_combout\ = (!\timerdrink|s_count\(15) & (!\timerdrink|s_count\(11) & (!\timerdrink|s_count\(12) & !\timerdrink|s_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(15),
	datab => \timerdrink|s_count\(11),
	datac => \timerdrink|s_count\(12),
	datad => \timerdrink|s_count\(9),
	combout => \timerdrink|Equal0~2_combout\);

-- Location: LCCOMB_X91_Y15_N2
\timerdrink|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~1_combout\ = (!\timerdrink|s_count\(4) & (!\timerdrink|s_count\(7) & (!\timerdrink|s_count\(5) & !\timerdrink|s_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(4),
	datab => \timerdrink|s_count\(7),
	datac => \timerdrink|s_count\(5),
	datad => \timerdrink|s_count\(6),
	combout => \timerdrink|Equal0~1_combout\);

-- Location: LCCOMB_X91_Y15_N0
\timerdrink|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~0_combout\ = (!\timerdrink|s_count\(3) & (!\timerdrink|s_count\(2) & (!\timerdrink|s_count\(0) & !\timerdrink|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|s_count\(3),
	datab => \timerdrink|s_count\(2),
	datac => \timerdrink|s_count\(0),
	datad => \timerdrink|s_count\(1),
	combout => \timerdrink|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y14_N6
\timerdrink|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|Equal0~4_combout\ = (\timerdrink|Equal0~3_combout\ & (\timerdrink|Equal0~2_combout\ & (\timerdrink|Equal0~1_combout\ & \timerdrink|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal0~3_combout\,
	datab => \timerdrink|Equal0~2_combout\,
	datac => \timerdrink|Equal0~1_combout\,
	datad => \timerdrink|Equal0~0_combout\,
	combout => \timerdrink|Equal0~4_combout\);

-- Location: LCCOMB_X89_Y14_N14
\timerdrink|expirou\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|expirou~combout\ = (\timerdrink|Equal0~4_combout\ & (\timerdrink|Equal1~3_combout\ & \sugarFSM|cando~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal0~4_combout\,
	datac => \timerdrink|Equal1~3_combout\,
	datad => \sugarFSM|cando~combout\,
	combout => \timerdrink|expirou~combout\);

-- Location: LCCOMB_X90_Y13_N30
\drinksFSM|s_preparing~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_preparing~0_combout\ = (\drinksFSM|s_mode~0_combout\ & ((\debouncer2|s_pulsedOut~q\) # ((\drinksFSM|s_preparing~q\ & !\timerdrink|expirou~combout\)))) # (!\drinksFSM|s_mode~0_combout\ & (\drinksFSM|s_preparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_preparing~q\,
	datab => \debouncer2|s_pulsedOut~q\,
	datac => \drinksFSM|s_mode~0_combout\,
	datad => \timerdrink|expirou~combout\,
	combout => \drinksFSM|s_preparing~0_combout\);

-- Location: FF_X90_Y13_N11
\drinksFSM|s_preparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|s_preparing~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|s_preparing~q\);

-- Location: LCCOMB_X109_Y27_N10
\debouncer3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~0_combout\ = \debouncer3|s_debounceCnt\(0) $ (VCC)
-- \debouncer3|Add0~1\ = CARRY(\debouncer3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer3|Add0~0_combout\,
	cout => \debouncer3|Add0~1\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X107_Y27_N14
\debouncer3|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_dirtyIn~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[3]~input_o\,
	combout => \debouncer3|s_dirtyIn~0_combout\);

-- Location: FF_X107_Y27_N15
\debouncer3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_dirtyIn~q\);

-- Location: FF_X109_Y27_N21
\debouncer3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_previousIn~q\);

-- Location: LCCOMB_X109_Y27_N14
\debouncer3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~4_combout\ = (\debouncer3|s_debounceCnt\(2) & ((GND) # (!\debouncer3|Add0~3\))) # (!\debouncer3|s_debounceCnt\(2) & (\debouncer3|Add0~3\ $ (GND)))
-- \debouncer3|Add0~5\ = CARRY((\debouncer3|s_debounceCnt\(2)) # (!\debouncer3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer3|Add0~3\,
	combout => \debouncer3|Add0~4_combout\,
	cout => \debouncer3|Add0~5\);

-- Location: LCCOMB_X109_Y27_N16
\debouncer3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~6_combout\ = (\debouncer3|s_debounceCnt\(3) & (\debouncer3|Add0~5\ & VCC)) # (!\debouncer3|s_debounceCnt\(3) & (!\debouncer3|Add0~5\))
-- \debouncer3|Add0~7\ = CARRY((!\debouncer3|s_debounceCnt\(3) & !\debouncer3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer3|Add0~5\,
	combout => \debouncer3|Add0~6_combout\,
	cout => \debouncer3|Add0~7\);

-- Location: LCCOMB_X109_Y27_N8
\debouncer3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~22_combout\ = (\debouncer3|Add0~6_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~6_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~22_combout\);

-- Location: FF_X109_Y27_N9
\debouncer3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~22_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(3));

-- Location: LCCOMB_X109_Y27_N18
\debouncer3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~8_combout\ = (\debouncer3|s_debounceCnt\(4) & ((GND) # (!\debouncer3|Add0~7\))) # (!\debouncer3|s_debounceCnt\(4) & (\debouncer3|Add0~7\ $ (GND)))
-- \debouncer3|Add0~9\ = CARRY((\debouncer3|s_debounceCnt\(4)) # (!\debouncer3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer3|Add0~7\,
	combout => \debouncer3|Add0~8_combout\,
	cout => \debouncer3|Add0~9\);

-- Location: LCCOMB_X110_Y27_N14
\debouncer3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~23_combout\ = (\debouncer3|s_debounceCnt[1]~4_combout\ & \debouncer3|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|s_debounceCnt[1]~4_combout\,
	datad => \debouncer3|Add0~8_combout\,
	combout => \debouncer3|s_debounceCnt~23_combout\);

-- Location: FF_X110_Y27_N15
\debouncer3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~23_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(4));

-- Location: LCCOMB_X109_Y27_N20
\debouncer3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~10_combout\ = (\debouncer3|s_debounceCnt\(5) & (\debouncer3|Add0~9\ & VCC)) # (!\debouncer3|s_debounceCnt\(5) & (!\debouncer3|Add0~9\))
-- \debouncer3|Add0~11\ = CARRY((!\debouncer3|s_debounceCnt\(5) & !\debouncer3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer3|Add0~9\,
	combout => \debouncer3|Add0~10_combout\,
	cout => \debouncer3|Add0~11\);

-- Location: LCCOMB_X108_Y27_N12
\debouncer3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~27_combout\ = (\debouncer3|Add0~10_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~10_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y27_N13
\debouncer3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~27_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(5));

-- Location: LCCOMB_X109_Y27_N22
\debouncer3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~12_combout\ = (\debouncer3|s_debounceCnt\(6) & ((GND) # (!\debouncer3|Add0~11\))) # (!\debouncer3|s_debounceCnt\(6) & (\debouncer3|Add0~11\ $ (GND)))
-- \debouncer3|Add0~13\ = CARRY((\debouncer3|s_debounceCnt\(6)) # (!\debouncer3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer3|Add0~11\,
	combout => \debouncer3|Add0~12_combout\,
	cout => \debouncer3|Add0~13\);

-- Location: LCCOMB_X109_Y27_N24
\debouncer3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~14_combout\ = (\debouncer3|s_debounceCnt\(7) & (\debouncer3|Add0~13\ & VCC)) # (!\debouncer3|s_debounceCnt\(7) & (!\debouncer3|Add0~13\))
-- \debouncer3|Add0~15\ = CARRY((!\debouncer3|s_debounceCnt\(7) & !\debouncer3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer3|Add0~13\,
	combout => \debouncer3|Add0~14_combout\,
	cout => \debouncer3|Add0~15\);

-- Location: LCCOMB_X109_Y27_N26
\debouncer3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~16_combout\ = (\debouncer3|s_debounceCnt\(8) & ((GND) # (!\debouncer3|Add0~15\))) # (!\debouncer3|s_debounceCnt\(8) & (\debouncer3|Add0~15\ $ (GND)))
-- \debouncer3|Add0~17\ = CARRY((\debouncer3|s_debounceCnt\(8)) # (!\debouncer3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer3|Add0~15\,
	combout => \debouncer3|Add0~16_combout\,
	cout => \debouncer3|Add0~17\);

-- Location: LCCOMB_X108_Y27_N16
\debouncer3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~13_combout\ = (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~16_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|s_debounceCnt[1]~0_combout\,
	datad => \debouncer3|Add0~16_combout\,
	combout => \debouncer3|s_debounceCnt~13_combout\);

-- Location: FF_X108_Y27_N17
\debouncer3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~13_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(8));

-- Location: LCCOMB_X109_Y27_N28
\debouncer3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~18_combout\ = (\debouncer3|s_debounceCnt\(9) & (\debouncer3|Add0~17\ & VCC)) # (!\debouncer3|s_debounceCnt\(9) & (!\debouncer3|Add0~17\))
-- \debouncer3|Add0~19\ = CARRY((!\debouncer3|s_debounceCnt\(9) & !\debouncer3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer3|Add0~17\,
	combout => \debouncer3|Add0~18_combout\,
	cout => \debouncer3|Add0~19\);

-- Location: LCCOMB_X108_Y27_N14
\debouncer3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~14_combout\ = (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~18_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|s_debounceCnt[1]~0_combout\,
	datad => \debouncer3|Add0~18_combout\,
	combout => \debouncer3|s_debounceCnt~14_combout\);

-- Location: FF_X108_Y27_N15
\debouncer3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~14_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(9));

-- Location: LCCOMB_X109_Y27_N30
\debouncer3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~20_combout\ = (\debouncer3|s_debounceCnt\(10) & ((GND) # (!\debouncer3|Add0~19\))) # (!\debouncer3|s_debounceCnt\(10) & (\debouncer3|Add0~19\ $ (GND)))
-- \debouncer3|Add0~21\ = CARRY((\debouncer3|s_debounceCnt\(10)) # (!\debouncer3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer3|Add0~19\,
	combout => \debouncer3|Add0~20_combout\,
	cout => \debouncer3|Add0~21\);

-- Location: LCCOMB_X108_Y27_N0
\debouncer3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~15_combout\ = (\debouncer3|Add0~20_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~20_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~15_combout\);

-- Location: FF_X108_Y27_N1
\debouncer3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~15_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(10));

-- Location: LCCOMB_X109_Y26_N0
\debouncer3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~22_combout\ = (\debouncer3|s_debounceCnt\(11) & (\debouncer3|Add0~21\ & VCC)) # (!\debouncer3|s_debounceCnt\(11) & (!\debouncer3|Add0~21\))
-- \debouncer3|Add0~23\ = CARRY((!\debouncer3|s_debounceCnt\(11) & !\debouncer3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer3|Add0~21\,
	combout => \debouncer3|Add0~22_combout\,
	cout => \debouncer3|Add0~23\);

-- Location: LCCOMB_X108_Y27_N24
\debouncer3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~16_combout\ = (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~22_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|s_debounceCnt[1]~0_combout\,
	datad => \debouncer3|Add0~22_combout\,
	combout => \debouncer3|s_debounceCnt~16_combout\);

-- Location: FF_X108_Y27_N25
\debouncer3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~16_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(11));

-- Location: LCCOMB_X109_Y26_N2
\debouncer3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~24_combout\ = (\debouncer3|s_debounceCnt\(12) & ((GND) # (!\debouncer3|Add0~23\))) # (!\debouncer3|s_debounceCnt\(12) & (\debouncer3|Add0~23\ $ (GND)))
-- \debouncer3|Add0~25\ = CARRY((\debouncer3|s_debounceCnt\(12)) # (!\debouncer3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer3|Add0~23\,
	combout => \debouncer3|Add0~24_combout\,
	cout => \debouncer3|Add0~25\);

-- Location: LCCOMB_X108_Y27_N4
\debouncer3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~8_combout\ = (\debouncer3|Add0~24_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~24_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~8_combout\);

-- Location: FF_X108_Y27_N5
\debouncer3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~8_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(12));

-- Location: LCCOMB_X109_Y26_N4
\debouncer3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~26_combout\ = (\debouncer3|s_debounceCnt\(13) & (\debouncer3|Add0~25\ & VCC)) # (!\debouncer3|s_debounceCnt\(13) & (!\debouncer3|Add0~25\))
-- \debouncer3|Add0~27\ = CARRY((!\debouncer3|s_debounceCnt\(13) & !\debouncer3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer3|Add0~25\,
	combout => \debouncer3|Add0~26_combout\,
	cout => \debouncer3|Add0~27\);

-- Location: LCCOMB_X108_Y27_N22
\debouncer3|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~9_combout\ = (\debouncer3|Add0~26_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~26_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~9_combout\);

-- Location: FF_X108_Y27_N23
\debouncer3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~9_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(13));

-- Location: LCCOMB_X109_Y26_N6
\debouncer3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~28_combout\ = (\debouncer3|s_debounceCnt\(14) & ((GND) # (!\debouncer3|Add0~27\))) # (!\debouncer3|s_debounceCnt\(14) & (\debouncer3|Add0~27\ $ (GND)))
-- \debouncer3|Add0~29\ = CARRY((\debouncer3|s_debounceCnt\(14)) # (!\debouncer3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer3|Add0~27\,
	combout => \debouncer3|Add0~28_combout\,
	cout => \debouncer3|Add0~29\);

-- Location: LCCOMB_X108_Y27_N10
\debouncer3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~17_combout\ = (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~28_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|Add0~28_combout\,
	datac => \debouncer3|s_debounceCnt[1]~0_combout\,
	combout => \debouncer3|s_debounceCnt~17_combout\);

-- Location: FF_X108_Y27_N11
\debouncer3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~17_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(14));

-- Location: LCCOMB_X109_Y26_N8
\debouncer3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~30_combout\ = (\debouncer3|s_debounceCnt\(15) & (\debouncer3|Add0~29\ & VCC)) # (!\debouncer3|s_debounceCnt\(15) & (!\debouncer3|Add0~29\))
-- \debouncer3|Add0~31\ = CARRY((!\debouncer3|s_debounceCnt\(15) & !\debouncer3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer3|Add0~29\,
	combout => \debouncer3|Add0~30_combout\,
	cout => \debouncer3|Add0~31\);

-- Location: LCCOMB_X110_Y27_N10
\debouncer3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~5_combout\ = (\debouncer3|s_debounceCnt[1]~4_combout\ & \debouncer3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|s_debounceCnt[1]~4_combout\,
	datad => \debouncer3|Add0~30_combout\,
	combout => \debouncer3|s_debounceCnt~5_combout\);

-- Location: FF_X110_Y27_N11
\debouncer3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~5_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(15));

-- Location: LCCOMB_X109_Y26_N10
\debouncer3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~32_combout\ = (\debouncer3|s_debounceCnt\(16) & ((GND) # (!\debouncer3|Add0~31\))) # (!\debouncer3|s_debounceCnt\(16) & (\debouncer3|Add0~31\ $ (GND)))
-- \debouncer3|Add0~33\ = CARRY((\debouncer3|s_debounceCnt\(16)) # (!\debouncer3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer3|Add0~31\,
	combout => \debouncer3|Add0~32_combout\,
	cout => \debouncer3|Add0~33\);

-- Location: LCCOMB_X110_Y27_N8
\debouncer3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~6_combout\ = (\debouncer3|s_debounceCnt[1]~4_combout\ & \debouncer3|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|s_debounceCnt[1]~4_combout\,
	datad => \debouncer3|Add0~32_combout\,
	combout => \debouncer3|s_debounceCnt~6_combout\);

-- Location: FF_X110_Y27_N9
\debouncer3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~6_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(16));

-- Location: LCCOMB_X109_Y26_N12
\debouncer3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~34_combout\ = (\debouncer3|s_debounceCnt\(17) & (\debouncer3|Add0~33\ & VCC)) # (!\debouncer3|s_debounceCnt\(17) & (!\debouncer3|Add0~33\))
-- \debouncer3|Add0~35\ = CARRY((!\debouncer3|s_debounceCnt\(17) & !\debouncer3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer3|Add0~33\,
	combout => \debouncer3|Add0~34_combout\,
	cout => \debouncer3|Add0~35\);

-- Location: LCCOMB_X110_Y27_N26
\debouncer3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~7_combout\ = (\debouncer3|s_debounceCnt[1]~4_combout\ & \debouncer3|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[1]~4_combout\,
	datac => \debouncer3|Add0~34_combout\,
	combout => \debouncer3|s_debounceCnt~7_combout\);

-- Location: FF_X110_Y27_N27
\debouncer3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~7_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(17));

-- Location: LCCOMB_X109_Y26_N14
\debouncer3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~36_combout\ = (\debouncer3|s_debounceCnt\(18) & ((GND) # (!\debouncer3|Add0~35\))) # (!\debouncer3|s_debounceCnt\(18) & (\debouncer3|Add0~35\ $ (GND)))
-- \debouncer3|Add0~37\ = CARRY((\debouncer3|s_debounceCnt\(18)) # (!\debouncer3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer3|Add0~35\,
	combout => \debouncer3|Add0~36_combout\,
	cout => \debouncer3|Add0~37\);

-- Location: LCCOMB_X110_Y27_N12
\debouncer3|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[18]~18_combout\ = (\debouncer3|s_debounceCnt[1]~3_combout\ & (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~36_combout\) # (!\debouncer3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[1]~3_combout\,
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~36_combout\,
	datad => \debouncer3|s_debounceCnt[1]~0_combout\,
	combout => \debouncer3|s_debounceCnt[18]~18_combout\);

-- Location: FF_X110_Y27_N13
\debouncer3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(18));

-- Location: LCCOMB_X109_Y26_N16
\debouncer3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~38_combout\ = (\debouncer3|s_debounceCnt\(19) & (\debouncer3|Add0~37\ & VCC)) # (!\debouncer3|s_debounceCnt\(19) & (!\debouncer3|Add0~37\))
-- \debouncer3|Add0~39\ = CARRY((!\debouncer3|s_debounceCnt\(19) & !\debouncer3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer3|Add0~37\,
	combout => \debouncer3|Add0~38_combout\,
	cout => \debouncer3|Add0~39\);

-- Location: LCCOMB_X109_Y26_N26
\debouncer3|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[19]~19_combout\ = (\debouncer3|s_debounceCnt[1]~3_combout\ & (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~38_combout\) # (!\debouncer3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|Add0~38_combout\,
	datac => \debouncer3|s_debounceCnt[1]~3_combout\,
	datad => \debouncer3|s_debounceCnt[1]~0_combout\,
	combout => \debouncer3|s_debounceCnt[19]~19_combout\);

-- Location: FF_X109_Y26_N27
\debouncer3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(19));

-- Location: LCCOMB_X108_Y27_N2
\debouncer3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~4_combout\ = (\debouncer3|s_debounceCnt\(13)) # ((\debouncer3|s_debounceCnt\(12)) # ((\debouncer3|s_debounceCnt\(11) & \debouncer3|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(13),
	datab => \debouncer3|s_debounceCnt\(11),
	datac => \debouncer3|s_debounceCnt\(12),
	datad => \debouncer3|s_debounceCnt\(10),
	combout => \debouncer3|LessThan0~4_combout\);

-- Location: LCCOMB_X110_Y27_N18
\debouncer3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~5_combout\ = (\debouncer3|s_debounceCnt\(15)) # ((\debouncer3|s_debounceCnt\(16)) # ((\debouncer3|s_debounceCnt\(14) & \debouncer3|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(15),
	datab => \debouncer3|s_debounceCnt\(16),
	datac => \debouncer3|s_debounceCnt\(14),
	datad => \debouncer3|LessThan0~4_combout\,
	combout => \debouncer3|LessThan0~5_combout\);

-- Location: LCCOMB_X110_Y27_N4
\debouncer3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~6_combout\ = (\debouncer3|s_debounceCnt\(19) & (\debouncer3|s_debounceCnt\(18) & ((\debouncer3|s_debounceCnt\(17)) # (\debouncer3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(19),
	datab => \debouncer3|s_debounceCnt\(18),
	datac => \debouncer3|s_debounceCnt\(17),
	datad => \debouncer3|LessThan0~5_combout\,
	combout => \debouncer3|LessThan0~6_combout\);

-- Location: LCCOMB_X110_Y27_N20
\debouncer3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~0_combout\ = (\debouncer3|s_debounceCnt\(18) & (\debouncer3|s_debounceCnt\(8) & (\debouncer3|s_debounceCnt\(14) & \debouncer3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(18),
	datab => \debouncer3|s_debounceCnt\(8),
	datac => \debouncer3|s_debounceCnt\(14),
	datad => \debouncer3|s_debounceCnt\(19),
	combout => \debouncer3|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y27_N30
\debouncer3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~1_combout\ = (\debouncer3|s_debounceCnt\(9) & \debouncer3|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|s_debounceCnt\(9),
	datad => \debouncer3|s_debounceCnt\(11),
	combout => \debouncer3|LessThan0~1_combout\);

-- Location: LCCOMB_X110_Y27_N6
\debouncer3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~2_combout\ = (\debouncer3|s_debounceCnt\(6) & ((\debouncer3|s_debounceCnt\(5)) # ((\debouncer3|s_debounceCnt\(0)) # (!\debouncer3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(5),
	datab => \debouncer3|s_debounceCnt\(6),
	datac => \debouncer3|s_debounceCnt\(0),
	datad => \debouncer3|s_pulsedOut~5_combout\,
	combout => \debouncer3|LessThan0~2_combout\);

-- Location: LCCOMB_X110_Y27_N28
\debouncer3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~3_combout\ = (\debouncer3|LessThan0~0_combout\ & (\debouncer3|LessThan0~1_combout\ & ((\debouncer3|s_debounceCnt\(7)) # (\debouncer3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(7),
	datab => \debouncer3|LessThan0~0_combout\,
	datac => \debouncer3|LessThan0~1_combout\,
	datad => \debouncer3|LessThan0~2_combout\,
	combout => \debouncer3|LessThan0~3_combout\);

-- Location: LCCOMB_X110_Y27_N30
\debouncer3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|LessThan0~7_combout\ = (\debouncer3|s_debounceCnt\(21)) # ((\debouncer3|s_debounceCnt\(20)) # ((\debouncer3|LessThan0~6_combout\) # (\debouncer3|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(21),
	datab => \debouncer3|s_debounceCnt\(20),
	datac => \debouncer3|LessThan0~6_combout\,
	datad => \debouncer3|LessThan0~3_combout\,
	combout => \debouncer3|LessThan0~7_combout\);

-- Location: LCCOMB_X110_Y27_N24
\debouncer3|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[1]~0_combout\ = (\debouncer3|s_dirtyIn~q\ & ((!\debouncer3|s_debounceCnt\(22)) # (!\debouncer3|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_dirtyIn~q\,
	datac => \debouncer3|LessThan0~7_combout\,
	datad => \debouncer3|s_debounceCnt\(22),
	combout => \debouncer3|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X110_Y27_N0
\debouncer3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~1_combout\ = (\debouncer3|s_debounceCnt[1]~0_combout\ & ((\debouncer3|Add0~12_combout\) # (!\debouncer3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|Add0~12_combout\,
	datad => \debouncer3|s_debounceCnt[1]~0_combout\,
	combout => \debouncer3|s_debounceCnt~1_combout\);

-- Location: FF_X110_Y27_N1
\debouncer3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~1_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y27_N26
\debouncer3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~12_combout\ = (\debouncer3|Add0~14_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~14_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~12_combout\);

-- Location: FF_X108_Y27_N27
\debouncer3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~12_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y27_N30
\debouncer3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~2_combout\ = (!\debouncer3|s_debounceCnt\(7) & (!\debouncer3|s_debounceCnt\(10) & (!\debouncer3|s_debounceCnt\(9) & !\debouncer3|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(7),
	datab => \debouncer3|s_debounceCnt\(10),
	datac => \debouncer3|s_debounceCnt\(9),
	datad => \debouncer3|s_debounceCnt\(8),
	combout => \debouncer3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X110_Y27_N16
\debouncer3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~0_combout\ = (!\debouncer3|s_debounceCnt\(15) & (!\debouncer3|s_debounceCnt\(16) & (!\debouncer3|s_debounceCnt\(17) & !\debouncer3|s_debounceCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(15),
	datab => \debouncer3|s_debounceCnt\(16),
	datac => \debouncer3|s_debounceCnt\(17),
	datad => \debouncer3|s_debounceCnt\(6),
	combout => \debouncer3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X108_Y27_N8
\debouncer3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~3_combout\ = (!\debouncer3|s_debounceCnt\(14) & (!\debouncer3|s_debounceCnt\(11) & (!\debouncer3|s_debounceCnt\(19) & !\debouncer3|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(14),
	datab => \debouncer3|s_debounceCnt\(11),
	datac => \debouncer3|s_debounceCnt\(19),
	datad => \debouncer3|s_debounceCnt\(18),
	combout => \debouncer3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X108_Y27_N20
\debouncer3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~1_combout\ = (!\debouncer3|s_debounceCnt\(13) & (!\debouncer3|s_debounceCnt\(12) & (!\debouncer3|s_debounceCnt\(20) & !\debouncer3|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(13),
	datab => \debouncer3|s_debounceCnt\(12),
	datac => \debouncer3|s_debounceCnt\(20),
	datad => \debouncer3|s_debounceCnt\(21),
	combout => \debouncer3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X108_Y27_N18
\debouncer3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~4_combout\ = (\debouncer3|s_pulsedOut~2_combout\ & (\debouncer3|s_pulsedOut~0_combout\ & (\debouncer3|s_pulsedOut~3_combout\ & \debouncer3|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_pulsedOut~2_combout\,
	datab => \debouncer3|s_pulsedOut~0_combout\,
	datac => \debouncer3|s_pulsedOut~3_combout\,
	datad => \debouncer3|s_pulsedOut~1_combout\,
	combout => \debouncer3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X108_Y27_N28
\debouncer3|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[1]~2_combout\ = (\debouncer3|s_debounceCnt\(0)) # ((\debouncer3|s_debounceCnt\(5)) # ((!\debouncer3|s_pulsedOut~4_combout\) # (!\debouncer3|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(0),
	datab => \debouncer3|s_debounceCnt\(5),
	datac => \debouncer3|s_pulsedOut~5_combout\,
	datad => \debouncer3|s_pulsedOut~4_combout\,
	combout => \debouncer3|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X108_Y27_N6
\debouncer3|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[1]~3_combout\ = ((\debouncer3|s_debounceCnt\(22)) # ((\debouncer3|s_debounceCnt[1]~2_combout\) # (!\debouncer3|s_previousIn~q\))) # (!\debouncer3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_dirtyIn~q\,
	datab => \debouncer3|s_debounceCnt\(22),
	datac => \debouncer3|s_previousIn~q\,
	datad => \debouncer3|s_debounceCnt[1]~2_combout\,
	combout => \debouncer3|s_debounceCnt[1]~3_combout\);

-- Location: LCCOMB_X109_Y26_N18
\debouncer3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~40_combout\ = (\debouncer3|s_debounceCnt\(20) & ((GND) # (!\debouncer3|Add0~39\))) # (!\debouncer3|s_debounceCnt\(20) & (\debouncer3|Add0~39\ $ (GND)))
-- \debouncer3|Add0~41\ = CARRY((\debouncer3|s_debounceCnt\(20)) # (!\debouncer3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer3|Add0~39\,
	combout => \debouncer3|Add0~40_combout\,
	cout => \debouncer3|Add0~41\);

-- Location: LCCOMB_X110_Y27_N2
\debouncer3|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[20]~10_combout\ = (\debouncer3|s_debounceCnt[1]~4_combout\ & (\debouncer3|s_debounceCnt[1]~3_combout\ & \debouncer3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt[1]~4_combout\,
	datab => \debouncer3|s_debounceCnt[1]~3_combout\,
	datac => \debouncer3|Add0~40_combout\,
	combout => \debouncer3|s_debounceCnt[20]~10_combout\);

-- Location: FF_X110_Y27_N3
\debouncer3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y26_N20
\debouncer3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~42_combout\ = (\debouncer3|s_debounceCnt\(21) & (\debouncer3|Add0~41\ & VCC)) # (!\debouncer3|s_debounceCnt\(21) & (!\debouncer3|Add0~41\))
-- \debouncer3|Add0~43\ = CARRY((!\debouncer3|s_debounceCnt\(21) & !\debouncer3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer3|Add0~41\,
	combout => \debouncer3|Add0~42_combout\,
	cout => \debouncer3|Add0~43\);

-- Location: LCCOMB_X109_Y26_N24
\debouncer3|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[21]~11_combout\ = (\debouncer3|Add0~42_combout\ & (\debouncer3|s_debounceCnt[1]~3_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|Add0~42_combout\,
	datac => \debouncer3|s_debounceCnt[1]~3_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt[21]~11_combout\);

-- Location: FF_X109_Y26_N25
\debouncer3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y26_N22
\debouncer3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~44_combout\ = \debouncer3|Add0~43\ $ (\debouncer3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer3|s_debounceCnt\(22),
	cin => \debouncer3|Add0~43\,
	combout => \debouncer3|Add0~44_combout\);

-- Location: LCCOMB_X109_Y26_N30
\debouncer3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[22]~25_combout\ = (\debouncer3|s_dirtyIn~q\ & ((\debouncer3|s_debounceCnt\(22) & (!\debouncer3|LessThan0~7_combout\)) # (!\debouncer3|s_debounceCnt\(22) & ((\debouncer3|s_debounceCnt[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_dirtyIn~q\,
	datab => \debouncer3|s_debounceCnt\(22),
	datac => \debouncer3|LessThan0~7_combout\,
	datad => \debouncer3|s_debounceCnt[1]~2_combout\,
	combout => \debouncer3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X109_Y26_N28
\debouncer3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[22]~26_combout\ = (\debouncer3|s_previousIn~q\ & (\debouncer3|Add0~44_combout\ & (\debouncer3|s_debounceCnt[22]~25_combout\))) # (!\debouncer3|s_previousIn~q\ & (((\debouncer3|s_debounceCnt[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|Add0~44_combout\,
	datac => \debouncer3|s_debounceCnt[22]~25_combout\,
	datad => \debouncer3|s_debounceCnt[1]~0_combout\,
	combout => \debouncer3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X109_Y26_N29
\debouncer3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(22));

-- Location: LCCOMB_X110_Y27_N22
\debouncer3|s_debounceCnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt[1]~4_combout\ = (\debouncer3|s_previousIn~q\ & (\debouncer3|s_dirtyIn~q\ & ((!\debouncer3|LessThan0~7_combout\) # (!\debouncer3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(22),
	datab => \debouncer3|s_previousIn~q\,
	datac => \debouncer3|LessThan0~7_combout\,
	datad => \debouncer3|s_dirtyIn~q\,
	combout => \debouncer3|s_debounceCnt[1]~4_combout\);

-- Location: LCCOMB_X109_Y27_N4
\debouncer3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~24_combout\ = (\debouncer3|Add0~0_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~0_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~24_combout\);

-- Location: FF_X109_Y27_N5
\debouncer3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~24_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(0));

-- Location: LCCOMB_X109_Y27_N12
\debouncer3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|Add0~2_combout\ = (\debouncer3|s_debounceCnt\(1) & (\debouncer3|Add0~1\ & VCC)) # (!\debouncer3|s_debounceCnt\(1) & (!\debouncer3|Add0~1\))
-- \debouncer3|Add0~3\ = CARRY((!\debouncer3|s_debounceCnt\(1) & !\debouncer3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer3|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer3|Add0~1\,
	combout => \debouncer3|Add0~2_combout\,
	cout => \debouncer3|Add0~3\);

-- Location: LCCOMB_X109_Y27_N0
\debouncer3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~20_combout\ = (\debouncer3|Add0~2_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|Add0~2_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~20_combout\);

-- Location: FF_X109_Y27_N1
\debouncer3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~20_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(1));

-- Location: LCCOMB_X109_Y27_N6
\debouncer3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_debounceCnt~21_combout\ = (\debouncer3|Add0~4_combout\ & \debouncer3|s_debounceCnt[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer3|Add0~4_combout\,
	datad => \debouncer3|s_debounceCnt[1]~4_combout\,
	combout => \debouncer3|s_debounceCnt~21_combout\);

-- Location: FF_X109_Y27_N7
\debouncer3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_debounceCnt~21_combout\,
	ena => \debouncer3|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_debounceCnt\(2));

-- Location: LCCOMB_X109_Y27_N2
\debouncer3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~5_combout\ = (!\debouncer3|s_debounceCnt\(2) & (!\debouncer3|s_debounceCnt\(1) & (!\debouncer3|s_debounceCnt\(4) & !\debouncer3|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_debounceCnt\(2),
	datab => \debouncer3|s_debounceCnt\(1),
	datac => \debouncer3|s_debounceCnt\(4),
	datad => \debouncer3|s_debounceCnt\(3),
	combout => \debouncer3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X107_Y27_N0
\debouncer3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~6_combout\ = (\debouncer3|s_previousIn~q\ & (\debouncer3|s_dirtyIn~q\ & (\debouncer3|s_debounceCnt\(0) & !\debouncer3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_previousIn~q\,
	datab => \debouncer3|s_dirtyIn~q\,
	datac => \debouncer3|s_debounceCnt\(0),
	datad => \debouncer3|s_debounceCnt\(22),
	combout => \debouncer3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X107_Y27_N20
\debouncer3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer3|s_pulsedOut~7_combout\ = (\debouncer3|s_pulsedOut~5_combout\ & (\debouncer3|s_pulsedOut~6_combout\ & (!\debouncer3|s_debounceCnt\(5) & \debouncer3|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer3|s_pulsedOut~5_combout\,
	datab => \debouncer3|s_pulsedOut~6_combout\,
	datac => \debouncer3|s_debounceCnt\(5),
	datad => \debouncer3|s_pulsedOut~4_combout\,
	combout => \debouncer3|s_pulsedOut~7_combout\);

-- Location: FF_X107_Y27_N21
\debouncer3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer3|s_pulsedOut~q\);

-- Location: LCCOMB_X89_Y14_N4
\drinksFSM|s_mode~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_mode~1_combout\ = (!\timerdrink|expirou~combout\ & (!\debouncer2|s_pulsedOut~q\ & \debouncer3|s_pulsedOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timerdrink|expirou~combout\,
	datac => \debouncer2|s_pulsedOut~q\,
	datad => \debouncer3|s_pulsedOut~q\,
	combout => \drinksFSM|s_mode~1_combout\);

-- Location: LCCOMB_X90_Y13_N6
\drinksFSM|s_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_mode~2_combout\ = \drinksFSM|s_mode~q\ $ (((\comb~0_combout\ & (\drinksFSM|drink~1_combout\ & \drinksFSM|s_mode~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \drinksFSM|drink~1_combout\,
	datac => \drinksFSM|s_mode~q\,
	datad => \drinksFSM|s_mode~1_combout\,
	combout => \drinksFSM|s_mode~2_combout\);

-- Location: FF_X90_Y13_N7
\drinksFSM|s_mode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|s_mode~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|s_mode~q\);

-- Location: LCCOMB_X90_Y13_N26
\sugarFSM|cando\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|cando~combout\ = (\drinksFSM|s_preparing~q\ & ((!\drinksFSM|s_mode~q\))) # (!\drinksFSM|s_preparing~q\ & (\sugarFSM|cando~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_preparing~q\,
	datab => \sugarFSM|cando~combout\,
	datad => \drinksFSM|s_mode~q\,
	combout => \sugarFSM|cando~combout\);

-- Location: LCCOMB_X90_Y14_N12
\drinksFSM|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~20_combout\ = (!\timerdrink|Equal0~4_combout\) # (!\timerdrink|Equal1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timerdrink|Equal1~3_combout\,
	datad => \timerdrink|Equal0~4_combout\,
	combout => \drinksFSM|state~20_combout\);

-- Location: LCCOMB_X90_Y13_N12
\drinksFSM|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~21_combout\ = (!\debouncer2|s_pulsedOut~q\ & (!\debouncer3|s_pulsedOut~q\ & ((\drinksFSM|state~20_combout\) # (!\sugarFSM|cando~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer2|s_pulsedOut~q\,
	datab => \sugarFSM|cando~combout\,
	datac => \debouncer3|s_pulsedOut~q\,
	datad => \drinksFSM|state~20_combout\,
	combout => \drinksFSM|state~21_combout\);

-- Location: LCCOMB_X90_Y13_N0
\drinksFSM|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~19_combout\ = (!\drinksFSM|s_preparing~q\ & !\drinksFSM|s_mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|s_preparing~q\,
	datad => \drinksFSM|s_mode~q\,
	combout => \drinksFSM|state~19_combout\);

-- Location: LCCOMB_X88_Y32_N10
\debouncer0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~0_combout\ = \debouncer0|s_debounceCnt\(0) $ (VCC)
-- \debouncer0|Add0~1\ = CARRY(\debouncer0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer0|Add0~0_combout\,
	cout => \debouncer0|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X90_Y31_N4
\debouncer0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \debouncer0|s_dirtyIn~0_combout\);

-- Location: FF_X90_Y31_N5
\debouncer0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_dirtyIn~q\);

-- Location: FF_X90_Y31_N31
\debouncer0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_previousIn~q\);

-- Location: LCCOMB_X88_Y32_N18
\debouncer0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~8_combout\ = (\debouncer0|s_debounceCnt\(4) & ((GND) # (!\debouncer0|Add0~7\))) # (!\debouncer0|s_debounceCnt\(4) & (\debouncer0|Add0~7\ $ (GND)))
-- \debouncer0|Add0~9\ = CARRY((\debouncer0|s_debounceCnt\(4)) # (!\debouncer0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer0|Add0~7\,
	combout => \debouncer0|Add0~8_combout\,
	cout => \debouncer0|Add0~9\);

-- Location: LCCOMB_X88_Y32_N20
\debouncer0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~10_combout\ = (\debouncer0|s_debounceCnt\(5) & (\debouncer0|Add0~9\ & VCC)) # (!\debouncer0|s_debounceCnt\(5) & (!\debouncer0|Add0~9\))
-- \debouncer0|Add0~11\ = CARRY((!\debouncer0|s_debounceCnt\(5) & !\debouncer0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer0|Add0~9\,
	combout => \debouncer0|Add0~10_combout\,
	cout => \debouncer0|Add0~11\);

-- Location: LCCOMB_X89_Y31_N18
\debouncer0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~27_combout\ = (\debouncer0|Add0~10_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|Add0~10_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~27_combout\);

-- Location: FF_X89_Y31_N19
\debouncer0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~27_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(5));

-- Location: LCCOMB_X88_Y32_N22
\debouncer0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~12_combout\ = (\debouncer0|s_debounceCnt\(6) & ((GND) # (!\debouncer0|Add0~11\))) # (!\debouncer0|s_debounceCnt\(6) & (\debouncer0|Add0~11\ $ (GND)))
-- \debouncer0|Add0~13\ = CARRY((\debouncer0|s_debounceCnt\(6)) # (!\debouncer0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer0|Add0~11\,
	combout => \debouncer0|Add0~12_combout\,
	cout => \debouncer0|Add0~13\);

-- Location: LCCOMB_X89_Y31_N24
\debouncer0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~1_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & ((\debouncer0|Add0~12_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[8]~0_combout\,
	datad => \debouncer0|Add0~12_combout\,
	combout => \debouncer0|s_debounceCnt~1_combout\);

-- Location: FF_X89_Y31_N25
\debouncer0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~1_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(6));

-- Location: LCCOMB_X88_Y32_N24
\debouncer0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~14_combout\ = (\debouncer0|s_debounceCnt\(7) & (\debouncer0|Add0~13\ & VCC)) # (!\debouncer0|s_debounceCnt\(7) & (!\debouncer0|Add0~13\))
-- \debouncer0|Add0~15\ = CARRY((!\debouncer0|s_debounceCnt\(7) & !\debouncer0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer0|Add0~13\,
	combout => \debouncer0|Add0~14_combout\,
	cout => \debouncer0|Add0~15\);

-- Location: LCCOMB_X89_Y31_N8
\debouncer0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~12_combout\ = (\debouncer0|Add0~14_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~14_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~12_combout\);

-- Location: FF_X89_Y31_N9
\debouncer0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~12_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(7));

-- Location: LCCOMB_X88_Y32_N26
\debouncer0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~16_combout\ = (\debouncer0|s_debounceCnt\(8) & ((GND) # (!\debouncer0|Add0~15\))) # (!\debouncer0|s_debounceCnt\(8) & (\debouncer0|Add0~15\ $ (GND)))
-- \debouncer0|Add0~17\ = CARRY((\debouncer0|s_debounceCnt\(8)) # (!\debouncer0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer0|Add0~15\,
	combout => \debouncer0|Add0~16_combout\,
	cout => \debouncer0|Add0~17\);

-- Location: LCCOMB_X89_Y31_N14
\debouncer0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~13_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & ((\debouncer0|Add0~16_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~16_combout\,
	datad => \debouncer0|s_debounceCnt[8]~0_combout\,
	combout => \debouncer0|s_debounceCnt~13_combout\);

-- Location: FF_X89_Y31_N15
\debouncer0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~13_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(8));

-- Location: LCCOMB_X88_Y32_N28
\debouncer0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~18_combout\ = (\debouncer0|s_debounceCnt\(9) & (\debouncer0|Add0~17\ & VCC)) # (!\debouncer0|s_debounceCnt\(9) & (!\debouncer0|Add0~17\))
-- \debouncer0|Add0~19\ = CARRY((!\debouncer0|s_debounceCnt\(9) & !\debouncer0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer0|Add0~17\,
	combout => \debouncer0|Add0~18_combout\,
	cout => \debouncer0|Add0~19\);

-- Location: LCCOMB_X89_Y31_N0
\debouncer0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~14_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & ((\debouncer0|Add0~18_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~18_combout\,
	datad => \debouncer0|s_debounceCnt[8]~0_combout\,
	combout => \debouncer0|s_debounceCnt~14_combout\);

-- Location: FF_X89_Y31_N1
\debouncer0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~14_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(9));

-- Location: LCCOMB_X88_Y32_N30
\debouncer0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~20_combout\ = (\debouncer0|s_debounceCnt\(10) & ((GND) # (!\debouncer0|Add0~19\))) # (!\debouncer0|s_debounceCnt\(10) & (\debouncer0|Add0~19\ $ (GND)))
-- \debouncer0|Add0~21\ = CARRY((\debouncer0|s_debounceCnt\(10)) # (!\debouncer0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer0|Add0~19\,
	combout => \debouncer0|Add0~20_combout\,
	cout => \debouncer0|Add0~21\);

-- Location: LCCOMB_X89_Y31_N10
\debouncer0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~15_combout\ = (\debouncer0|Add0~20_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~20_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~15_combout\);

-- Location: FF_X89_Y31_N11
\debouncer0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~15_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(10));

-- Location: LCCOMB_X88_Y31_N0
\debouncer0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~22_combout\ = (\debouncer0|s_debounceCnt\(11) & (\debouncer0|Add0~21\ & VCC)) # (!\debouncer0|s_debounceCnt\(11) & (!\debouncer0|Add0~21\))
-- \debouncer0|Add0~23\ = CARRY((!\debouncer0|s_debounceCnt\(11) & !\debouncer0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer0|Add0~21\,
	combout => \debouncer0|Add0~22_combout\,
	cout => \debouncer0|Add0~23\);

-- Location: LCCOMB_X87_Y31_N0
\debouncer0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~16_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & ((\debouncer0|Add0~22_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~0_combout\,
	datac => \debouncer0|Add0~22_combout\,
	datad => \debouncer0|s_previousIn~q\,
	combout => \debouncer0|s_debounceCnt~16_combout\);

-- Location: FF_X87_Y31_N1
\debouncer0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~16_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(11));

-- Location: LCCOMB_X88_Y31_N2
\debouncer0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~24_combout\ = (\debouncer0|s_debounceCnt\(12) & ((GND) # (!\debouncer0|Add0~23\))) # (!\debouncer0|s_debounceCnt\(12) & (\debouncer0|Add0~23\ $ (GND)))
-- \debouncer0|Add0~25\ = CARRY((\debouncer0|s_debounceCnt\(12)) # (!\debouncer0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer0|Add0~23\,
	combout => \debouncer0|Add0~24_combout\,
	cout => \debouncer0|Add0~25\);

-- Location: LCCOMB_X89_Y31_N22
\debouncer0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~8_combout\ = (\debouncer0|Add0~24_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~24_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~8_combout\);

-- Location: FF_X89_Y31_N23
\debouncer0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~8_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(12));

-- Location: LCCOMB_X88_Y31_N4
\debouncer0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~26_combout\ = (\debouncer0|s_debounceCnt\(13) & (\debouncer0|Add0~25\ & VCC)) # (!\debouncer0|s_debounceCnt\(13) & (!\debouncer0|Add0~25\))
-- \debouncer0|Add0~27\ = CARRY((!\debouncer0|s_debounceCnt\(13) & !\debouncer0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer0|Add0~25\,
	combout => \debouncer0|Add0~26_combout\,
	cout => \debouncer0|Add0~27\);

-- Location: LCCOMB_X89_Y31_N4
\debouncer0|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~9_combout\ = (\debouncer0|Add0~26_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~26_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~9_combout\);

-- Location: FF_X89_Y31_N5
\debouncer0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~9_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(13));

-- Location: LCCOMB_X88_Y31_N6
\debouncer0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~28_combout\ = (\debouncer0|s_debounceCnt\(14) & ((GND) # (!\debouncer0|Add0~27\))) # (!\debouncer0|s_debounceCnt\(14) & (\debouncer0|Add0~27\ $ (GND)))
-- \debouncer0|Add0~29\ = CARRY((\debouncer0|s_debounceCnt\(14)) # (!\debouncer0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer0|Add0~27\,
	combout => \debouncer0|Add0~28_combout\,
	cout => \debouncer0|Add0~29\);

-- Location: LCCOMB_X87_Y31_N14
\debouncer0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~17_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & ((\debouncer0|Add0~28_combout\) # (!\debouncer0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[8]~0_combout\,
	datad => \debouncer0|Add0~28_combout\,
	combout => \debouncer0|s_debounceCnt~17_combout\);

-- Location: FF_X87_Y31_N15
\debouncer0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~17_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(14));

-- Location: LCCOMB_X88_Y31_N8
\debouncer0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~30_combout\ = (\debouncer0|s_debounceCnt\(15) & (\debouncer0|Add0~29\ & VCC)) # (!\debouncer0|s_debounceCnt\(15) & (!\debouncer0|Add0~29\))
-- \debouncer0|Add0~31\ = CARRY((!\debouncer0|s_debounceCnt\(15) & !\debouncer0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer0|Add0~29\,
	combout => \debouncer0|Add0~30_combout\,
	cout => \debouncer0|Add0~31\);

-- Location: LCCOMB_X88_Y31_N24
\debouncer0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~5_combout\ = (\debouncer0|Add0~30_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~30_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~5_combout\);

-- Location: FF_X88_Y31_N25
\debouncer0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~5_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(15));

-- Location: LCCOMB_X88_Y31_N10
\debouncer0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~32_combout\ = (\debouncer0|s_debounceCnt\(16) & ((GND) # (!\debouncer0|Add0~31\))) # (!\debouncer0|s_debounceCnt\(16) & (\debouncer0|Add0~31\ $ (GND)))
-- \debouncer0|Add0~33\ = CARRY((\debouncer0|s_debounceCnt\(16)) # (!\debouncer0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer0|Add0~31\,
	combout => \debouncer0|Add0~32_combout\,
	cout => \debouncer0|Add0~33\);

-- Location: LCCOMB_X89_Y31_N26
\debouncer0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~6_combout\ = (\debouncer0|Add0~32_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|Add0~32_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~6_combout\);

-- Location: FF_X89_Y31_N27
\debouncer0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~6_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(16));

-- Location: LCCOMB_X88_Y31_N12
\debouncer0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~34_combout\ = (\debouncer0|s_debounceCnt\(17) & (\debouncer0|Add0~33\ & VCC)) # (!\debouncer0|s_debounceCnt\(17) & (!\debouncer0|Add0~33\))
-- \debouncer0|Add0~35\ = CARRY((!\debouncer0|s_debounceCnt\(17) & !\debouncer0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer0|Add0~33\,
	combout => \debouncer0|Add0~34_combout\,
	cout => \debouncer0|Add0~35\);

-- Location: LCCOMB_X88_Y31_N26
\debouncer0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~7_combout\ = (\debouncer0|s_debounceCnt[8]~4_combout\ & \debouncer0|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt[8]~4_combout\,
	datad => \debouncer0|Add0~34_combout\,
	combout => \debouncer0|s_debounceCnt~7_combout\);

-- Location: FF_X88_Y31_N27
\debouncer0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~7_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(17));

-- Location: LCCOMB_X88_Y31_N14
\debouncer0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~36_combout\ = (\debouncer0|s_debounceCnt\(18) & ((GND) # (!\debouncer0|Add0~35\))) # (!\debouncer0|s_debounceCnt\(18) & (\debouncer0|Add0~35\ $ (GND)))
-- \debouncer0|Add0~37\ = CARRY((\debouncer0|s_debounceCnt\(18)) # (!\debouncer0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer0|Add0~35\,
	combout => \debouncer0|Add0~36_combout\,
	cout => \debouncer0|Add0~37\);

-- Location: LCCOMB_X87_Y31_N4
\debouncer0|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[18]~18_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & (\debouncer0|s_debounceCnt[8]~3_combout\ & ((\debouncer0|Add0~36_combout\) # (!\debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~0_combout\,
	datab => \debouncer0|s_debounceCnt[8]~3_combout\,
	datac => \debouncer0|Add0~36_combout\,
	datad => \debouncer0|s_previousIn~q\,
	combout => \debouncer0|s_debounceCnt[18]~18_combout\);

-- Location: FF_X87_Y31_N5
\debouncer0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(18));

-- Location: LCCOMB_X88_Y31_N16
\debouncer0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~38_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|Add0~37\ & VCC)) # (!\debouncer0|s_debounceCnt\(19) & (!\debouncer0|Add0~37\))
-- \debouncer0|Add0~39\ = CARRY((!\debouncer0|s_debounceCnt\(19) & !\debouncer0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer0|Add0~37\,
	combout => \debouncer0|Add0~38_combout\,
	cout => \debouncer0|Add0~39\);

-- Location: LCCOMB_X87_Y31_N6
\debouncer0|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[19]~19_combout\ = (\debouncer0|s_debounceCnt[8]~0_combout\ & (\debouncer0|s_debounceCnt[8]~3_combout\ & ((\debouncer0|Add0~38_combout\) # (!\debouncer0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_debounceCnt[8]~3_combout\,
	datad => \debouncer0|Add0~38_combout\,
	combout => \debouncer0|s_debounceCnt[19]~19_combout\);

-- Location: FF_X87_Y31_N7
\debouncer0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(19));

-- Location: LCCOMB_X88_Y31_N18
\debouncer0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~40_combout\ = (\debouncer0|s_debounceCnt\(20) & ((GND) # (!\debouncer0|Add0~39\))) # (!\debouncer0|s_debounceCnt\(20) & (\debouncer0|Add0~39\ $ (GND)))
-- \debouncer0|Add0~41\ = CARRY((\debouncer0|s_debounceCnt\(20)) # (!\debouncer0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer0|Add0~39\,
	combout => \debouncer0|Add0~40_combout\,
	cout => \debouncer0|Add0~41\);

-- Location: LCCOMB_X88_Y31_N20
\debouncer0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~42_combout\ = (\debouncer0|s_debounceCnt\(21) & (\debouncer0|Add0~41\ & VCC)) # (!\debouncer0|s_debounceCnt\(21) & (!\debouncer0|Add0~41\))
-- \debouncer0|Add0~43\ = CARRY((!\debouncer0|s_debounceCnt\(21) & !\debouncer0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer0|Add0~41\,
	combout => \debouncer0|Add0~42_combout\,
	cout => \debouncer0|Add0~43\);

-- Location: LCCOMB_X88_Y31_N28
\debouncer0|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[21]~11_combout\ = (\debouncer0|s_debounceCnt[8]~3_combout\ & (\debouncer0|s_debounceCnt[8]~4_combout\ & \debouncer0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~3_combout\,
	datab => \debouncer0|s_debounceCnt[8]~4_combout\,
	datad => \debouncer0|Add0~42_combout\,
	combout => \debouncer0|s_debounceCnt[21]~11_combout\);

-- Location: FF_X88_Y31_N29
\debouncer0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(21));

-- Location: LCCOMB_X89_Y31_N30
\debouncer0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~1_combout\ = (!\debouncer0|s_debounceCnt\(12) & (!\debouncer0|s_debounceCnt\(13) & (!\debouncer0|s_debounceCnt\(20) & !\debouncer0|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(12),
	datab => \debouncer0|s_debounceCnt\(13),
	datac => \debouncer0|s_debounceCnt\(20),
	datad => \debouncer0|s_debounceCnt\(21),
	combout => \debouncer0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X89_Y31_N20
\debouncer0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~2_combout\ = (!\debouncer0|s_debounceCnt\(10) & (!\debouncer0|s_debounceCnt\(9) & (!\debouncer0|s_debounceCnt\(7) & !\debouncer0|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(10),
	datab => \debouncer0|s_debounceCnt\(9),
	datac => \debouncer0|s_debounceCnt\(7),
	datad => \debouncer0|s_debounceCnt\(8),
	combout => \debouncer0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X87_Y31_N8
\debouncer0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~3_combout\ = (!\debouncer0|s_debounceCnt\(19) & (!\debouncer0|s_debounceCnt\(18) & (!\debouncer0|s_debounceCnt\(14) & !\debouncer0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datab => \debouncer0|s_debounceCnt\(18),
	datac => \debouncer0|s_debounceCnt\(14),
	datad => \debouncer0|s_debounceCnt\(11),
	combout => \debouncer0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X89_Y31_N28
\debouncer0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~0_combout\ = (!\debouncer0|s_debounceCnt\(16) & (!\debouncer0|s_debounceCnt\(6) & (!\debouncer0|s_debounceCnt\(17) & !\debouncer0|s_debounceCnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(16),
	datab => \debouncer0|s_debounceCnt\(6),
	datac => \debouncer0|s_debounceCnt\(17),
	datad => \debouncer0|s_debounceCnt\(15),
	combout => \debouncer0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X89_Y31_N6
\debouncer0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~4_combout\ = (\debouncer0|s_pulsedOut~1_combout\ & (\debouncer0|s_pulsedOut~2_combout\ & (\debouncer0|s_pulsedOut~3_combout\ & \debouncer0|s_pulsedOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~1_combout\,
	datab => \debouncer0|s_pulsedOut~2_combout\,
	datac => \debouncer0|s_pulsedOut~3_combout\,
	datad => \debouncer0|s_pulsedOut~0_combout\,
	combout => \debouncer0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X89_Y31_N16
\debouncer0|s_debounceCnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[8]~2_combout\ = (\debouncer0|s_debounceCnt\(0)) # ((\debouncer0|s_debounceCnt\(5)) # ((!\debouncer0|s_pulsedOut~4_combout\) # (!\debouncer0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datab => \debouncer0|s_debounceCnt\(5),
	datac => \debouncer0|s_pulsedOut~5_combout\,
	datad => \debouncer0|s_pulsedOut~4_combout\,
	combout => \debouncer0|s_debounceCnt[8]~2_combout\);

-- Location: LCCOMB_X89_Y31_N2
\debouncer0|s_debounceCnt[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[8]~3_combout\ = ((\debouncer0|s_debounceCnt\(22)) # ((\debouncer0|s_debounceCnt[8]~2_combout\) # (!\debouncer0|s_previousIn~q\))) # (!\debouncer0|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_dirtyIn~q\,
	datab => \debouncer0|s_debounceCnt\(22),
	datac => \debouncer0|s_previousIn~q\,
	datad => \debouncer0|s_debounceCnt[8]~2_combout\,
	combout => \debouncer0|s_debounceCnt[8]~3_combout\);

-- Location: LCCOMB_X86_Y31_N28
\debouncer0|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[20]~10_combout\ = (\debouncer0|s_debounceCnt[8]~3_combout\ & (\debouncer0|Add0~40_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt[8]~3_combout\,
	datac => \debouncer0|Add0~40_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt[20]~10_combout\);

-- Location: FF_X86_Y31_N29
\debouncer0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(20));

-- Location: LCCOMB_X87_Y31_N30
\debouncer0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~4_combout\ = (\debouncer0|s_debounceCnt\(13)) # ((\debouncer0|s_debounceCnt\(12)) # ((\debouncer0|s_debounceCnt\(11) & \debouncer0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(13),
	datab => \debouncer0|s_debounceCnt\(11),
	datac => \debouncer0|s_debounceCnt\(12),
	datad => \debouncer0|s_debounceCnt\(10),
	combout => \debouncer0|LessThan0~4_combout\);

-- Location: LCCOMB_X87_Y31_N16
\debouncer0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~5_combout\ = (\debouncer0|s_debounceCnt\(16)) # ((\debouncer0|s_debounceCnt\(15)) # ((\debouncer0|LessThan0~4_combout\ & \debouncer0|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|LessThan0~4_combout\,
	datab => \debouncer0|s_debounceCnt\(16),
	datac => \debouncer0|s_debounceCnt\(14),
	datad => \debouncer0|s_debounceCnt\(15),
	combout => \debouncer0|LessThan0~5_combout\);

-- Location: LCCOMB_X87_Y31_N22
\debouncer0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~6_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|s_debounceCnt\(18) & ((\debouncer0|s_debounceCnt\(17)) # (\debouncer0|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datab => \debouncer0|s_debounceCnt\(18),
	datac => \debouncer0|s_debounceCnt\(17),
	datad => \debouncer0|LessThan0~5_combout\,
	combout => \debouncer0|LessThan0~6_combout\);

-- Location: LCCOMB_X87_Y31_N12
\debouncer0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~1_combout\ = (\debouncer0|s_debounceCnt\(9) & \debouncer0|s_debounceCnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|s_debounceCnt\(9),
	datad => \debouncer0|s_debounceCnt\(11),
	combout => \debouncer0|LessThan0~1_combout\);

-- Location: LCCOMB_X87_Y31_N18
\debouncer0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~0_combout\ = (\debouncer0|s_debounceCnt\(19) & (\debouncer0|s_debounceCnt\(18) & (\debouncer0|s_debounceCnt\(14) & \debouncer0|s_debounceCnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(19),
	datab => \debouncer0|s_debounceCnt\(18),
	datac => \debouncer0|s_debounceCnt\(14),
	datad => \debouncer0|s_debounceCnt\(8),
	combout => \debouncer0|LessThan0~0_combout\);

-- Location: LCCOMB_X87_Y31_N2
\debouncer0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~2_combout\ = (\debouncer0|s_debounceCnt\(6) & ((\debouncer0|s_debounceCnt\(0)) # ((\debouncer0|s_debounceCnt\(5)) # (!\debouncer0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datab => \debouncer0|s_debounceCnt\(5),
	datac => \debouncer0|s_debounceCnt\(6),
	datad => \debouncer0|s_pulsedOut~5_combout\,
	combout => \debouncer0|LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y31_N20
\debouncer0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~3_combout\ = (\debouncer0|LessThan0~1_combout\ & (\debouncer0|LessThan0~0_combout\ & ((\debouncer0|s_debounceCnt\(7)) # (\debouncer0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|LessThan0~1_combout\,
	datab => \debouncer0|LessThan0~0_combout\,
	datac => \debouncer0|s_debounceCnt\(7),
	datad => \debouncer0|LessThan0~2_combout\,
	combout => \debouncer0|LessThan0~3_combout\);

-- Location: LCCOMB_X87_Y31_N28
\debouncer0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|LessThan0~7_combout\ = (\debouncer0|s_debounceCnt\(20)) # ((\debouncer0|s_debounceCnt\(21)) # ((\debouncer0|LessThan0~6_combout\) # (\debouncer0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(20),
	datab => \debouncer0|s_debounceCnt\(21),
	datac => \debouncer0|LessThan0~6_combout\,
	datad => \debouncer0|LessThan0~3_combout\,
	combout => \debouncer0|LessThan0~7_combout\);

-- Location: LCCOMB_X87_Y31_N26
\debouncer0|s_debounceCnt[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[8]~0_combout\ = (\debouncer0|s_dirtyIn~q\ & ((!\debouncer0|LessThan0~7_combout\) # (!\debouncer0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(22),
	datac => \debouncer0|s_dirtyIn~q\,
	datad => \debouncer0|LessThan0~7_combout\,
	combout => \debouncer0|s_debounceCnt[8]~0_combout\);

-- Location: LCCOMB_X88_Y31_N22
\debouncer0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~44_combout\ = \debouncer0|s_debounceCnt\(22) $ (\debouncer0|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(22),
	cin => \debouncer0|Add0~43\,
	combout => \debouncer0|Add0~44_combout\);

-- Location: LCCOMB_X87_Y31_N10
\debouncer0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[22]~25_combout\ = (\debouncer0|s_dirtyIn~q\ & ((\debouncer0|s_debounceCnt\(22) & ((!\debouncer0|LessThan0~7_combout\))) # (!\debouncer0|s_debounceCnt\(22) & (\debouncer0|s_debounceCnt[8]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~2_combout\,
	datab => \debouncer0|s_dirtyIn~q\,
	datac => \debouncer0|s_debounceCnt\(22),
	datad => \debouncer0|LessThan0~7_combout\,
	combout => \debouncer0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X88_Y31_N30
\debouncer0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[22]~26_combout\ = (\debouncer0|s_previousIn~q\ & (((\debouncer0|Add0~44_combout\ & \debouncer0|s_debounceCnt[22]~25_combout\)))) # (!\debouncer0|s_previousIn~q\ & (\debouncer0|s_debounceCnt[8]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt[8]~0_combout\,
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|Add0~44_combout\,
	datad => \debouncer0|s_debounceCnt[22]~25_combout\,
	combout => \debouncer0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X88_Y31_N31
\debouncer0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(22));

-- Location: LCCOMB_X87_Y31_N24
\debouncer0|s_debounceCnt[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt[8]~4_combout\ = (\debouncer0|s_previousIn~q\ & (\debouncer0|s_dirtyIn~q\ & ((!\debouncer0|LessThan0~7_combout\) # (!\debouncer0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(22),
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_dirtyIn~q\,
	datad => \debouncer0|LessThan0~7_combout\,
	combout => \debouncer0|s_debounceCnt[8]~4_combout\);

-- Location: LCCOMB_X89_Y31_N12
\debouncer0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~24_combout\ = (\debouncer0|Add0~0_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~0_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~24_combout\);

-- Location: FF_X89_Y31_N13
\debouncer0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~24_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(0));

-- Location: LCCOMB_X88_Y32_N12
\debouncer0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~2_combout\ = (\debouncer0|s_debounceCnt\(1) & (\debouncer0|Add0~1\ & VCC)) # (!\debouncer0|s_debounceCnt\(1) & (!\debouncer0|Add0~1\))
-- \debouncer0|Add0~3\ = CARRY((!\debouncer0|s_debounceCnt\(1) & !\debouncer0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer0|Add0~1\,
	combout => \debouncer0|Add0~2_combout\,
	cout => \debouncer0|Add0~3\);

-- Location: LCCOMB_X88_Y32_N8
\debouncer0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~20_combout\ = (\debouncer0|Add0~2_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|Add0~2_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~20_combout\);

-- Location: FF_X88_Y32_N9
\debouncer0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~20_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(1));

-- Location: LCCOMB_X88_Y32_N14
\debouncer0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~4_combout\ = (\debouncer0|s_debounceCnt\(2) & ((GND) # (!\debouncer0|Add0~3\))) # (!\debouncer0|s_debounceCnt\(2) & (\debouncer0|Add0~3\ $ (GND)))
-- \debouncer0|Add0~5\ = CARRY((\debouncer0|s_debounceCnt\(2)) # (!\debouncer0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer0|Add0~3\,
	combout => \debouncer0|Add0~4_combout\,
	cout => \debouncer0|Add0~5\);

-- Location: LCCOMB_X88_Y32_N2
\debouncer0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~21_combout\ = (\debouncer0|Add0~4_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|Add0~4_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~21_combout\);

-- Location: FF_X88_Y32_N3
\debouncer0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~21_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(2));

-- Location: LCCOMB_X88_Y32_N16
\debouncer0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|Add0~6_combout\ = (\debouncer0|s_debounceCnt\(3) & (\debouncer0|Add0~5\ & VCC)) # (!\debouncer0|s_debounceCnt\(3) & (!\debouncer0|Add0~5\))
-- \debouncer0|Add0~7\ = CARRY((!\debouncer0|s_debounceCnt\(3) & !\debouncer0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer0|Add0~5\,
	combout => \debouncer0|Add0~6_combout\,
	cout => \debouncer0|Add0~7\);

-- Location: LCCOMB_X88_Y32_N0
\debouncer0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~22_combout\ = (\debouncer0|Add0~6_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer0|Add0~6_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~22_combout\);

-- Location: FF_X88_Y32_N1
\debouncer0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~22_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(3));

-- Location: LCCOMB_X88_Y32_N6
\debouncer0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_debounceCnt~23_combout\ = (\debouncer0|Add0~8_combout\ & \debouncer0|s_debounceCnt[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer0|Add0~8_combout\,
	datad => \debouncer0|s_debounceCnt[8]~4_combout\,
	combout => \debouncer0|s_debounceCnt~23_combout\);

-- Location: FF_X88_Y32_N7
\debouncer0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_debounceCnt~23_combout\,
	ena => \debouncer0|s_debounceCnt[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_debounceCnt\(4));

-- Location: LCCOMB_X88_Y32_N4
\debouncer0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~5_combout\ = (!\debouncer0|s_debounceCnt\(4) & (!\debouncer0|s_debounceCnt\(2) & (!\debouncer0|s_debounceCnt\(1) & !\debouncer0|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(4),
	datab => \debouncer0|s_debounceCnt\(2),
	datac => \debouncer0|s_debounceCnt\(1),
	datad => \debouncer0|s_debounceCnt\(3),
	combout => \debouncer0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X90_Y31_N18
\debouncer0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~6_combout\ = (\debouncer0|s_debounceCnt\(0) & (\debouncer0|s_previousIn~q\ & (\debouncer0|s_dirtyIn~q\ & !\debouncer0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_debounceCnt\(0),
	datab => \debouncer0|s_previousIn~q\,
	datac => \debouncer0|s_dirtyIn~q\,
	datad => \debouncer0|s_debounceCnt\(22),
	combout => \debouncer0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X90_Y31_N0
\debouncer0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer0|s_pulsedOut~7_combout\ = (\debouncer0|s_pulsedOut~5_combout\ & (\debouncer0|s_pulsedOut~4_combout\ & (!\debouncer0|s_debounceCnt\(5) & \debouncer0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~5_combout\,
	datab => \debouncer0|s_pulsedOut~4_combout\,
	datac => \debouncer0|s_debounceCnt\(5),
	datad => \debouncer0|s_pulsedOut~6_combout\,
	combout => \debouncer0|s_pulsedOut~7_combout\);

-- Location: FF_X90_Y31_N1
\debouncer0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer0|s_pulsedOut~q\);

-- Location: LCCOMB_X89_Y13_N26
\drinksFSM|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~26_combout\ = (\drinksFSM|state.Choice~q\) # (\drinksFSM|state~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|state.Choice~q\,
	datad => \drinksFSM|state~21_combout\,
	combout => \drinksFSM|state~26_combout\);

-- Location: LCCOMB_X98_Y14_N10
\debouncer1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~0_combout\ = \debouncer1|s_debounceCnt\(0) $ (VCC)
-- \debouncer1|Add0~1\ = CARRY(\debouncer1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncer1|Add0~0_combout\,
	cout => \debouncer1|Add0~1\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X95_Y13_N24
\debouncer1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \debouncer1|s_dirtyIn~0_combout\);

-- Location: FF_X95_Y13_N25
\debouncer1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_dirtyIn~q\);

-- Location: FF_X97_Y13_N5
\debouncer1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \debouncer1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_previousIn~q\);

-- Location: LCCOMB_X98_Y14_N14
\debouncer1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~4_combout\ = (\debouncer1|s_debounceCnt\(2) & ((GND) # (!\debouncer1|Add0~3\))) # (!\debouncer1|s_debounceCnt\(2) & (\debouncer1|Add0~3\ $ (GND)))
-- \debouncer1|Add0~5\ = CARRY((\debouncer1|s_debounceCnt\(2)) # (!\debouncer1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncer1|Add0~3\,
	combout => \debouncer1|Add0~4_combout\,
	cout => \debouncer1|Add0~5\);

-- Location: LCCOMB_X98_Y14_N16
\debouncer1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~6_combout\ = (\debouncer1|s_debounceCnt\(3) & (\debouncer1|Add0~5\ & VCC)) # (!\debouncer1|s_debounceCnt\(3) & (!\debouncer1|Add0~5\))
-- \debouncer1|Add0~7\ = CARRY((!\debouncer1|s_debounceCnt\(3) & !\debouncer1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncer1|Add0~5\,
	combout => \debouncer1|Add0~6_combout\,
	cout => \debouncer1|Add0~7\);

-- Location: LCCOMB_X98_Y14_N4
\debouncer1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~22_combout\ = (\debouncer1|Add0~6_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~6_combout\,
	datac => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~22_combout\);

-- Location: FF_X98_Y14_N5
\debouncer1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~22_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(3));

-- Location: LCCOMB_X98_Y14_N18
\debouncer1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~8_combout\ = (\debouncer1|s_debounceCnt\(4) & ((GND) # (!\debouncer1|Add0~7\))) # (!\debouncer1|s_debounceCnt\(4) & (\debouncer1|Add0~7\ $ (GND)))
-- \debouncer1|Add0~9\ = CARRY((\debouncer1|s_debounceCnt\(4)) # (!\debouncer1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncer1|Add0~7\,
	combout => \debouncer1|Add0~8_combout\,
	cout => \debouncer1|Add0~9\);

-- Location: LCCOMB_X98_Y14_N2
\debouncer1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~23_combout\ = (\debouncer1|Add0~8_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~8_combout\,
	datac => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y14_N3
\debouncer1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~23_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y14_N20
\debouncer1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~10_combout\ = (\debouncer1|s_debounceCnt\(5) & (\debouncer1|Add0~9\ & VCC)) # (!\debouncer1|s_debounceCnt\(5) & (!\debouncer1|Add0~9\))
-- \debouncer1|Add0~11\ = CARRY((!\debouncer1|s_debounceCnt\(5) & !\debouncer1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncer1|Add0~9\,
	combout => \debouncer1|Add0~10_combout\,
	cout => \debouncer1|Add0~11\);

-- Location: LCCOMB_X97_Y13_N12
\debouncer1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~27_combout\ = (\debouncer1|Add0~10_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~10_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~27_combout\);

-- Location: FF_X97_Y13_N13
\debouncer1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~27_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(5));

-- Location: LCCOMB_X98_Y14_N22
\debouncer1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~12_combout\ = (\debouncer1|s_debounceCnt\(6) & ((GND) # (!\debouncer1|Add0~11\))) # (!\debouncer1|s_debounceCnt\(6) & (\debouncer1|Add0~11\ $ (GND)))
-- \debouncer1|Add0~13\ = CARRY((\debouncer1|s_debounceCnt\(6)) # (!\debouncer1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncer1|Add0~11\,
	combout => \debouncer1|Add0~12_combout\,
	cout => \debouncer1|Add0~13\);

-- Location: LCCOMB_X97_Y13_N8
\debouncer1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~1_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~12_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~12_combout\,
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[10]~0_combout\,
	combout => \debouncer1|s_debounceCnt~1_combout\);

-- Location: FF_X97_Y13_N9
\debouncer1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~1_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(6));

-- Location: LCCOMB_X98_Y14_N24
\debouncer1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~14_combout\ = (\debouncer1|s_debounceCnt\(7) & (\debouncer1|Add0~13\ & VCC)) # (!\debouncer1|s_debounceCnt\(7) & (!\debouncer1|Add0~13\))
-- \debouncer1|Add0~15\ = CARRY((!\debouncer1|s_debounceCnt\(7) & !\debouncer1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncer1|Add0~13\,
	combout => \debouncer1|Add0~14_combout\,
	cout => \debouncer1|Add0~15\);

-- Location: LCCOMB_X97_Y13_N16
\debouncer1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~12_combout\ = (\debouncer1|Add0~14_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~14_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~12_combout\);

-- Location: FF_X97_Y13_N17
\debouncer1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~12_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(7));

-- Location: LCCOMB_X98_Y14_N26
\debouncer1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~16_combout\ = (\debouncer1|s_debounceCnt\(8) & ((GND) # (!\debouncer1|Add0~15\))) # (!\debouncer1|s_debounceCnt\(8) & (\debouncer1|Add0~15\ $ (GND)))
-- \debouncer1|Add0~17\ = CARRY((\debouncer1|s_debounceCnt\(8)) # (!\debouncer1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncer1|Add0~15\,
	combout => \debouncer1|Add0~16_combout\,
	cout => \debouncer1|Add0~17\);

-- Location: LCCOMB_X96_Y13_N0
\debouncer1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~13_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~16_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~16_combout\,
	datac => \debouncer1|s_debounceCnt[10]~0_combout\,
	datad => \debouncer1|s_previousIn~q\,
	combout => \debouncer1|s_debounceCnt~13_combout\);

-- Location: FF_X96_Y13_N1
\debouncer1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~13_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(8));

-- Location: LCCOMB_X98_Y14_N28
\debouncer1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~18_combout\ = (\debouncer1|s_debounceCnt\(9) & (\debouncer1|Add0~17\ & VCC)) # (!\debouncer1|s_debounceCnt\(9) & (!\debouncer1|Add0~17\))
-- \debouncer1|Add0~19\ = CARRY((!\debouncer1|s_debounceCnt\(9) & !\debouncer1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncer1|Add0~17\,
	combout => \debouncer1|Add0~18_combout\,
	cout => \debouncer1|Add0~19\);

-- Location: LCCOMB_X96_Y13_N30
\debouncer1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~14_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~18_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|s_debounceCnt[10]~0_combout\,
	datad => \debouncer1|Add0~18_combout\,
	combout => \debouncer1|s_debounceCnt~14_combout\);

-- Location: FF_X96_Y13_N31
\debouncer1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~14_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(9));

-- Location: LCCOMB_X98_Y14_N30
\debouncer1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~20_combout\ = (\debouncer1|s_debounceCnt\(10) & ((GND) # (!\debouncer1|Add0~19\))) # (!\debouncer1|s_debounceCnt\(10) & (\debouncer1|Add0~19\ $ (GND)))
-- \debouncer1|Add0~21\ = CARRY((\debouncer1|s_debounceCnt\(10)) # (!\debouncer1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncer1|Add0~19\,
	combout => \debouncer1|Add0~20_combout\,
	cout => \debouncer1|Add0~21\);

-- Location: LCCOMB_X95_Y13_N14
\debouncer1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~15_combout\ = (\debouncer1|Add0~20_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~20_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~15_combout\);

-- Location: FF_X95_Y13_N15
\debouncer1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~15_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(10));

-- Location: LCCOMB_X98_Y13_N0
\debouncer1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~22_combout\ = (\debouncer1|s_debounceCnt\(11) & (\debouncer1|Add0~21\ & VCC)) # (!\debouncer1|s_debounceCnt\(11) & (!\debouncer1|Add0~21\))
-- \debouncer1|Add0~23\ = CARRY((!\debouncer1|s_debounceCnt\(11) & !\debouncer1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncer1|Add0~21\,
	combout => \debouncer1|Add0~22_combout\,
	cout => \debouncer1|Add0~23\);

-- Location: LCCOMB_X96_Y13_N26
\debouncer1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~16_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~22_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|Add0~22_combout\,
	datad => \debouncer1|s_debounceCnt[10]~0_combout\,
	combout => \debouncer1|s_debounceCnt~16_combout\);

-- Location: FF_X96_Y13_N27
\debouncer1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~16_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(11));

-- Location: LCCOMB_X98_Y13_N2
\debouncer1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~24_combout\ = (\debouncer1|s_debounceCnt\(12) & ((GND) # (!\debouncer1|Add0~23\))) # (!\debouncer1|s_debounceCnt\(12) & (\debouncer1|Add0~23\ $ (GND)))
-- \debouncer1|Add0~25\ = CARRY((\debouncer1|s_debounceCnt\(12)) # (!\debouncer1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncer1|Add0~23\,
	combout => \debouncer1|Add0~24_combout\,
	cout => \debouncer1|Add0~25\);

-- Location: LCCOMB_X97_Y13_N22
\debouncer1|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~8_combout\ = (\debouncer1|s_debounceCnt[10]~4_combout\ & \debouncer1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt[10]~4_combout\,
	datad => \debouncer1|Add0~24_combout\,
	combout => \debouncer1|s_debounceCnt~8_combout\);

-- Location: FF_X97_Y13_N23
\debouncer1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~8_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(12));

-- Location: LCCOMB_X98_Y13_N4
\debouncer1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~26_combout\ = (\debouncer1|s_debounceCnt\(13) & (\debouncer1|Add0~25\ & VCC)) # (!\debouncer1|s_debounceCnt\(13) & (!\debouncer1|Add0~25\))
-- \debouncer1|Add0~27\ = CARRY((!\debouncer1|s_debounceCnt\(13) & !\debouncer1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncer1|Add0~25\,
	combout => \debouncer1|Add0~26_combout\,
	cout => \debouncer1|Add0~27\);

-- Location: LCCOMB_X98_Y13_N28
\debouncer1|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~9_combout\ = (\debouncer1|Add0~26_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~26_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~9_combout\);

-- Location: FF_X98_Y13_N29
\debouncer1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~9_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(13));

-- Location: LCCOMB_X98_Y13_N6
\debouncer1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~28_combout\ = (\debouncer1|s_debounceCnt\(14) & ((GND) # (!\debouncer1|Add0~27\))) # (!\debouncer1|s_debounceCnt\(14) & (\debouncer1|Add0~27\ $ (GND)))
-- \debouncer1|Add0~29\ = CARRY((\debouncer1|s_debounceCnt\(14)) # (!\debouncer1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncer1|Add0~27\,
	combout => \debouncer1|Add0~28_combout\,
	cout => \debouncer1|Add0~29\);

-- Location: LCCOMB_X97_Y13_N14
\debouncer1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~17_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~28_combout\) # (!\debouncer1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|Add0~28_combout\,
	datad => \debouncer1|s_debounceCnt[10]~0_combout\,
	combout => \debouncer1|s_debounceCnt~17_combout\);

-- Location: FF_X97_Y13_N15
\debouncer1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~17_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(14));

-- Location: LCCOMB_X98_Y13_N8
\debouncer1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~30_combout\ = (\debouncer1|s_debounceCnt\(15) & (\debouncer1|Add0~29\ & VCC)) # (!\debouncer1|s_debounceCnt\(15) & (!\debouncer1|Add0~29\))
-- \debouncer1|Add0~31\ = CARRY((!\debouncer1|s_debounceCnt\(15) & !\debouncer1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncer1|Add0~29\,
	combout => \debouncer1|Add0~30_combout\,
	cout => \debouncer1|Add0~31\);

-- Location: LCCOMB_X96_Y13_N4
\debouncer1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~5_combout\ = (\debouncer1|Add0~30_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~30_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~5_combout\);

-- Location: FF_X96_Y13_N5
\debouncer1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~5_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(15));

-- Location: LCCOMB_X98_Y13_N10
\debouncer1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~32_combout\ = (\debouncer1|s_debounceCnt\(16) & ((GND) # (!\debouncer1|Add0~31\))) # (!\debouncer1|s_debounceCnt\(16) & (\debouncer1|Add0~31\ $ (GND)))
-- \debouncer1|Add0~33\ = CARRY((\debouncer1|s_debounceCnt\(16)) # (!\debouncer1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncer1|Add0~31\,
	combout => \debouncer1|Add0~32_combout\,
	cout => \debouncer1|Add0~33\);

-- Location: LCCOMB_X96_Y13_N2
\debouncer1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~6_combout\ = (\debouncer1|Add0~32_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~32_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~6_combout\);

-- Location: FF_X96_Y13_N3
\debouncer1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~6_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(16));

-- Location: LCCOMB_X98_Y13_N12
\debouncer1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~34_combout\ = (\debouncer1|s_debounceCnt\(17) & (\debouncer1|Add0~33\ & VCC)) # (!\debouncer1|s_debounceCnt\(17) & (!\debouncer1|Add0~33\))
-- \debouncer1|Add0~35\ = CARRY((!\debouncer1|s_debounceCnt\(17) & !\debouncer1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncer1|Add0~33\,
	combout => \debouncer1|Add0~34_combout\,
	cout => \debouncer1|Add0~35\);

-- Location: LCCOMB_X96_Y13_N12
\debouncer1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~7_combout\ = (\debouncer1|Add0~34_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncer1|Add0~34_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~7_combout\);

-- Location: FF_X96_Y13_N13
\debouncer1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~7_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(17));

-- Location: LCCOMB_X98_Y13_N14
\debouncer1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~36_combout\ = (\debouncer1|s_debounceCnt\(18) & ((GND) # (!\debouncer1|Add0~35\))) # (!\debouncer1|s_debounceCnt\(18) & (\debouncer1|Add0~35\ $ (GND)))
-- \debouncer1|Add0~37\ = CARRY((\debouncer1|s_debounceCnt\(18)) # (!\debouncer1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncer1|Add0~35\,
	combout => \debouncer1|Add0~36_combout\,
	cout => \debouncer1|Add0~37\);

-- Location: LCCOMB_X96_Y13_N28
\debouncer1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[18]~18_combout\ = (\debouncer1|s_debounceCnt[10]~3_combout\ & (\debouncer1|s_debounceCnt[10]~0_combout\ & ((\debouncer1|Add0~36_combout\) # (!\debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt[10]~3_combout\,
	datab => \debouncer1|s_previousIn~q\,
	datac => \debouncer1|s_debounceCnt[10]~0_combout\,
	datad => \debouncer1|Add0~36_combout\,
	combout => \debouncer1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X96_Y13_N29
\debouncer1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(18));

-- Location: LCCOMB_X96_Y13_N10
\debouncer1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~3_combout\ = (!\debouncer1|s_debounceCnt\(11) & (!\debouncer1|s_debounceCnt\(18) & (!\debouncer1|s_debounceCnt\(14) & !\debouncer1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(11),
	datab => \debouncer1|s_debounceCnt\(18),
	datac => \debouncer1|s_debounceCnt\(14),
	datad => \debouncer1|s_debounceCnt\(19),
	combout => \debouncer1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X96_Y13_N18
\debouncer1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~0_combout\ = (!\debouncer1|s_debounceCnt\(17) & (!\debouncer1|s_debounceCnt\(6) & (!\debouncer1|s_debounceCnt\(15) & !\debouncer1|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(17),
	datab => \debouncer1|s_debounceCnt\(6),
	datac => \debouncer1|s_debounceCnt\(15),
	datad => \debouncer1|s_debounceCnt\(16),
	combout => \debouncer1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y13_N8
\debouncer1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~2_combout\ = (!\debouncer1|s_debounceCnt\(10) & (!\debouncer1|s_debounceCnt\(8) & (!\debouncer1|s_debounceCnt\(9) & !\debouncer1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(10),
	datab => \debouncer1|s_debounceCnt\(8),
	datac => \debouncer1|s_debounceCnt\(9),
	datad => \debouncer1|s_debounceCnt\(7),
	combout => \debouncer1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X98_Y13_N18
\debouncer1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~40_combout\ = (\debouncer1|s_debounceCnt\(20) & ((GND) # (!\debouncer1|Add0~39\))) # (!\debouncer1|s_debounceCnt\(20) & (\debouncer1|Add0~39\ $ (GND)))
-- \debouncer1|Add0~41\ = CARRY((\debouncer1|s_debounceCnt\(20)) # (!\debouncer1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncer1|Add0~39\,
	combout => \debouncer1|Add0~40_combout\,
	cout => \debouncer1|Add0~41\);

-- Location: LCCOMB_X98_Y13_N20
\debouncer1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~42_combout\ = (\debouncer1|s_debounceCnt\(21) & (\debouncer1|Add0~41\ & VCC)) # (!\debouncer1|s_debounceCnt\(21) & (!\debouncer1|Add0~41\))
-- \debouncer1|Add0~43\ = CARRY((!\debouncer1|s_debounceCnt\(21) & !\debouncer1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncer1|Add0~41\,
	combout => \debouncer1|Add0~42_combout\,
	cout => \debouncer1|Add0~43\);

-- Location: LCCOMB_X98_Y13_N24
\debouncer1|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[21]~11_combout\ = (\debouncer1|s_debounceCnt[10]~3_combout\ & (\debouncer1|s_debounceCnt[10]~4_combout\ & \debouncer1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt[10]~3_combout\,
	datac => \debouncer1|s_debounceCnt[10]~4_combout\,
	datad => \debouncer1|Add0~42_combout\,
	combout => \debouncer1|s_debounceCnt[21]~11_combout\);

-- Location: FF_X98_Y13_N25
\debouncer1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(21));

-- Location: LCCOMB_X98_Y13_N30
\debouncer1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~1_combout\ = (!\debouncer1|s_debounceCnt\(20) & (!\debouncer1|s_debounceCnt\(21) & (!\debouncer1|s_debounceCnt\(13) & !\debouncer1|s_debounceCnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(20),
	datab => \debouncer1|s_debounceCnt\(21),
	datac => \debouncer1|s_debounceCnt\(13),
	datad => \debouncer1|s_debounceCnt\(12),
	combout => \debouncer1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X96_Y13_N16
\debouncer1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~4_combout\ = (\debouncer1|s_pulsedOut~3_combout\ & (\debouncer1|s_pulsedOut~0_combout\ & (\debouncer1|s_pulsedOut~2_combout\ & \debouncer1|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~3_combout\,
	datab => \debouncer1|s_pulsedOut~0_combout\,
	datac => \debouncer1|s_pulsedOut~2_combout\,
	datad => \debouncer1|s_pulsedOut~1_combout\,
	combout => \debouncer1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X97_Y13_N10
\debouncer1|s_debounceCnt[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[10]~2_combout\ = (\debouncer1|s_debounceCnt\(5)) # ((\debouncer1|s_debounceCnt\(0)) # ((!\debouncer1|s_pulsedOut~5_combout\) # (!\debouncer1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(5),
	datab => \debouncer1|s_debounceCnt\(0),
	datac => \debouncer1|s_pulsedOut~4_combout\,
	datad => \debouncer1|s_pulsedOut~5_combout\,
	combout => \debouncer1|s_debounceCnt[10]~2_combout\);

-- Location: LCCOMB_X97_Y13_N4
\debouncer1|s_debounceCnt[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[10]~3_combout\ = ((\debouncer1|s_debounceCnt\(22)) # ((\debouncer1|s_debounceCnt[10]~2_combout\) # (!\debouncer1|s_previousIn~q\))) # (!\debouncer1|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_dirtyIn~q\,
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_debounceCnt[10]~2_combout\,
	combout => \debouncer1|s_debounceCnt[10]~3_combout\);

-- Location: LCCOMB_X98_Y13_N16
\debouncer1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~38_combout\ = (\debouncer1|s_debounceCnt\(19) & (\debouncer1|Add0~37\ & VCC)) # (!\debouncer1|s_debounceCnt\(19) & (!\debouncer1|Add0~37\))
-- \debouncer1|Add0~39\ = CARRY((!\debouncer1|s_debounceCnt\(19) & !\debouncer1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncer1|Add0~37\,
	combout => \debouncer1|Add0~38_combout\,
	cout => \debouncer1|Add0~39\);

-- Location: LCCOMB_X97_Y13_N28
\debouncer1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[19]~19_combout\ = (\debouncer1|s_debounceCnt[10]~0_combout\ & (\debouncer1|s_debounceCnt[10]~3_combout\ & ((\debouncer1|Add0~38_combout\) # (!\debouncer1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_previousIn~q\,
	datab => \debouncer1|s_debounceCnt[10]~0_combout\,
	datac => \debouncer1|s_debounceCnt[10]~3_combout\,
	datad => \debouncer1|Add0~38_combout\,
	combout => \debouncer1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X97_Y13_N29
\debouncer1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y13_N26
\debouncer1|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[20]~10_combout\ = (\debouncer1|Add0~40_combout\ & (\debouncer1|s_debounceCnt[10]~3_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~40_combout\,
	datac => \debouncer1|s_debounceCnt[10]~3_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt[20]~10_combout\);

-- Location: FF_X98_Y13_N27
\debouncer1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(20));

-- Location: LCCOMB_X96_Y13_N24
\debouncer1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~3_combout\ = (\debouncer1|s_debounceCnt\(8) & (\debouncer1|s_debounceCnt\(18) & (\debouncer1|s_debounceCnt\(14) & \debouncer1|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(8),
	datab => \debouncer1|s_debounceCnt\(18),
	datac => \debouncer1|s_debounceCnt\(14),
	datad => \debouncer1|s_debounceCnt\(19),
	combout => \debouncer1|LessThan0~3_combout\);

-- Location: LCCOMB_X96_Y13_N14
\debouncer1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~4_combout\ = (\debouncer1|s_debounceCnt\(9) & (\debouncer1|s_debounceCnt\(11) & \debouncer1|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(9),
	datac => \debouncer1|s_debounceCnt\(11),
	datad => \debouncer1|LessThan0~3_combout\,
	combout => \debouncer1|LessThan0~4_combout\);

-- Location: LCCOMB_X97_Y13_N26
\debouncer1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~5_combout\ = (\debouncer1|s_debounceCnt\(6) & ((\debouncer1|s_debounceCnt\(5)) # ((\debouncer1|s_debounceCnt\(0)) # (!\debouncer1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(5),
	datab => \debouncer1|s_debounceCnt\(0),
	datac => \debouncer1|s_debounceCnt\(6),
	datad => \debouncer1|s_pulsedOut~5_combout\,
	combout => \debouncer1|LessThan0~5_combout\);

-- Location: LCCOMB_X96_Y13_N6
\debouncer1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~0_combout\ = (\debouncer1|s_debounceCnt\(12)) # ((\debouncer1|s_debounceCnt\(13)) # ((\debouncer1|s_debounceCnt\(11) & \debouncer1|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(11),
	datab => \debouncer1|s_debounceCnt\(12),
	datac => \debouncer1|s_debounceCnt\(13),
	datad => \debouncer1|s_debounceCnt\(10),
	combout => \debouncer1|LessThan0~0_combout\);

-- Location: LCCOMB_X96_Y13_N20
\debouncer1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~1_combout\ = (\debouncer1|s_debounceCnt\(15)) # ((\debouncer1|s_debounceCnt\(16)) # ((\debouncer1|s_debounceCnt\(14) & \debouncer1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(15),
	datab => \debouncer1|s_debounceCnt\(16),
	datac => \debouncer1|s_debounceCnt\(14),
	datad => \debouncer1|LessThan0~0_combout\,
	combout => \debouncer1|LessThan0~1_combout\);

-- Location: LCCOMB_X96_Y13_N22
\debouncer1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~2_combout\ = (\debouncer1|s_debounceCnt\(19) & (\debouncer1|s_debounceCnt\(18) & ((\debouncer1|s_debounceCnt\(17)) # (\debouncer1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(17),
	datab => \debouncer1|s_debounceCnt\(19),
	datac => \debouncer1|s_debounceCnt\(18),
	datad => \debouncer1|LessThan0~1_combout\,
	combout => \debouncer1|LessThan0~2_combout\);

-- Location: LCCOMB_X97_Y13_N0
\debouncer1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~6_combout\ = (\debouncer1|LessThan0~2_combout\) # ((\debouncer1|LessThan0~4_combout\ & ((\debouncer1|s_debounceCnt\(7)) # (\debouncer1|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|LessThan0~4_combout\,
	datab => \debouncer1|s_debounceCnt\(7),
	datac => \debouncer1|LessThan0~5_combout\,
	datad => \debouncer1|LessThan0~2_combout\,
	combout => \debouncer1|LessThan0~6_combout\);

-- Location: LCCOMB_X97_Y13_N6
\debouncer1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|LessThan0~7_combout\ = (\debouncer1|s_debounceCnt\(20)) # ((\debouncer1|s_debounceCnt\(21)) # (\debouncer1|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(20),
	datac => \debouncer1|s_debounceCnt\(21),
	datad => \debouncer1|LessThan0~6_combout\,
	combout => \debouncer1|LessThan0~7_combout\);

-- Location: LCCOMB_X97_Y13_N20
\debouncer1|s_debounceCnt[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[10]~0_combout\ = (\debouncer1|s_dirtyIn~q\ & ((!\debouncer1|LessThan0~7_combout\) # (!\debouncer1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_dirtyIn~q\,
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[10]~0_combout\);

-- Location: LCCOMB_X97_Y13_N30
\debouncer1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[22]~25_combout\ = (\debouncer1|s_dirtyIn~q\ & ((\debouncer1|s_debounceCnt\(22) & ((!\debouncer1|LessThan0~7_combout\))) # (!\debouncer1|s_debounceCnt\(22) & (\debouncer1|s_debounceCnt[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt[10]~2_combout\,
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_dirtyIn~q\,
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X98_Y13_N22
\debouncer1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~44_combout\ = \debouncer1|Add0~43\ $ (\debouncer1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer1|s_debounceCnt\(22),
	cin => \debouncer1|Add0~43\,
	combout => \debouncer1|Add0~44_combout\);

-- Location: LCCOMB_X97_Y13_N18
\debouncer1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[22]~26_combout\ = (\debouncer1|s_previousIn~q\ & (((\debouncer1|s_debounceCnt[22]~25_combout\ & \debouncer1|Add0~44_combout\)))) # (!\debouncer1|s_previousIn~q\ & (\debouncer1|s_debounceCnt[10]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_previousIn~q\,
	datab => \debouncer1|s_debounceCnt[10]~0_combout\,
	datac => \debouncer1|s_debounceCnt[22]~25_combout\,
	datad => \debouncer1|Add0~44_combout\,
	combout => \debouncer1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X97_Y13_N19
\debouncer1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(22));

-- Location: LCCOMB_X97_Y13_N24
\debouncer1|s_debounceCnt[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt[10]~4_combout\ = (\debouncer1|s_dirtyIn~q\ & (\debouncer1|s_previousIn~q\ & ((!\debouncer1|LessThan0~7_combout\) # (!\debouncer1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_dirtyIn~q\,
	datab => \debouncer1|s_debounceCnt\(22),
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|LessThan0~7_combout\,
	combout => \debouncer1|s_debounceCnt[10]~4_combout\);

-- Location: LCCOMB_X97_Y13_N2
\debouncer1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~24_combout\ = (\debouncer1|Add0~0_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~0_combout\,
	datad => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y13_N3
\debouncer1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~24_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(0));

-- Location: LCCOMB_X98_Y14_N12
\debouncer1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|Add0~2_combout\ = (\debouncer1|s_debounceCnt\(1) & (\debouncer1|Add0~1\ & VCC)) # (!\debouncer1|s_debounceCnt\(1) & (!\debouncer1|Add0~1\))
-- \debouncer1|Add0~3\ = CARRY((!\debouncer1|s_debounceCnt\(1) & !\debouncer1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncer1|Add0~1\,
	combout => \debouncer1|Add0~2_combout\,
	cout => \debouncer1|Add0~3\);

-- Location: LCCOMB_X98_Y14_N0
\debouncer1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~20_combout\ = (\debouncer1|Add0~2_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|Add0~2_combout\,
	datac => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~20_combout\);

-- Location: FF_X98_Y14_N1
\debouncer1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~20_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(1));

-- Location: LCCOMB_X98_Y14_N6
\debouncer1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_debounceCnt~21_combout\ = (\debouncer1|Add0~4_combout\ & \debouncer1|s_debounceCnt[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer1|Add0~4_combout\,
	datac => \debouncer1|s_debounceCnt[10]~4_combout\,
	combout => \debouncer1|s_debounceCnt~21_combout\);

-- Location: FF_X98_Y14_N7
\debouncer1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_debounceCnt~21_combout\,
	ena => \debouncer1|s_debounceCnt[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_debounceCnt\(2));

-- Location: LCCOMB_X98_Y14_N8
\debouncer1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~5_combout\ = (!\debouncer1|s_debounceCnt\(2) & (!\debouncer1|s_debounceCnt\(1) & (!\debouncer1|s_debounceCnt\(3) & !\debouncer1|s_debounceCnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(2),
	datab => \debouncer1|s_debounceCnt\(1),
	datac => \debouncer1|s_debounceCnt\(3),
	datad => \debouncer1|s_debounceCnt\(4),
	combout => \debouncer1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X95_Y13_N18
\debouncer1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~6_combout\ = (!\debouncer1|s_debounceCnt\(22) & (\debouncer1|s_debounceCnt\(0) & (\debouncer1|s_previousIn~q\ & \debouncer1|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_debounceCnt\(22),
	datab => \debouncer1|s_debounceCnt\(0),
	datac => \debouncer1|s_previousIn~q\,
	datad => \debouncer1|s_dirtyIn~q\,
	combout => \debouncer1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X95_Y13_N16
\debouncer1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer1|s_pulsedOut~7_combout\ = (\debouncer1|s_pulsedOut~5_combout\ & (\debouncer1|s_pulsedOut~6_combout\ & (!\debouncer1|s_debounceCnt\(5) & \debouncer1|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer1|s_pulsedOut~5_combout\,
	datab => \debouncer1|s_pulsedOut~6_combout\,
	datac => \debouncer1|s_debounceCnt\(5),
	datad => \debouncer1|s_pulsedOut~4_combout\,
	combout => \debouncer1|s_pulsedOut~7_combout\);

-- Location: FF_X95_Y13_N17
\debouncer1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \debouncer1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer1|s_pulsedOut~q\);

-- Location: LCCOMB_X88_Y13_N14
\drinksFSM|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~25_combout\ = (\drinksFSM|state.Choice~q\ & ((\debouncer1|s_pulsedOut~q\) # ((!\drinksFSM|state.Tea~q\ & \debouncer0|s_pulsedOut~q\)))) # (!\drinksFSM|state.Choice~q\ & (\drinksFSM|state.Tea~q\ & (\debouncer1|s_pulsedOut~q\ & 
-- !\debouncer0|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Choice~q\,
	datab => \drinksFSM|state.Tea~q\,
	datac => \debouncer1|s_pulsedOut~q\,
	datad => \debouncer0|s_pulsedOut~q\,
	combout => \drinksFSM|state~25_combout\);

-- Location: LCCOMB_X89_Y13_N18
\drinksFSM|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~27_combout\ = (\drinksFSM|state~25_combout\ & (((\drinksFSM|state~19_combout\ & \drinksFSM|state~26_combout\)) # (!\drinksFSM|state.Tea~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~19_combout\,
	datab => \drinksFSM|state.Tea~q\,
	datac => \drinksFSM|state~26_combout\,
	datad => \drinksFSM|state~25_combout\,
	combout => \drinksFSM|state~27_combout\);

-- Location: LCCOMB_X89_Y13_N12
\drinksFSM|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~28_combout\ = (\drinksFSM|state~24_combout\ & ((\drinksFSM|state.Coffee~q\) # (\drinksFSM|state~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~24_combout\,
	datac => \drinksFSM|state.Coffee~q\,
	datad => \drinksFSM|state~27_combout\,
	combout => \drinksFSM|state~28_combout\);

-- Location: FF_X89_Y13_N13
\drinksFSM|state.Coffee\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|state.Coffee~q\);

-- Location: LCCOMB_X88_Y13_N12
\drinksFSM|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~22_combout\ = (\drinksFSM|state.HotChoc~q\ & (((\debouncer1|s_pulsedOut~q\)))) # (!\drinksFSM|state.HotChoc~q\ & (\drinksFSM|state.Coffee~q\ & ((\debouncer0|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.HotChoc~q\,
	datab => \drinksFSM|state.Coffee~q\,
	datac => \debouncer1|s_pulsedOut~q\,
	datad => \debouncer0|s_pulsedOut~q\,
	combout => \drinksFSM|state~22_combout\);

-- Location: LCCOMB_X89_Y13_N30
\drinksFSM|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~23_combout\ = ((!\drinksFSM|state~22_combout\ & ((!\debouncer0|s_pulsedOut~q\) # (!\drinksFSM|state.Tea~q\)))) # (!\drinksFSM|state~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~22_combout\,
	datab => \drinksFSM|state.Tea~q\,
	datac => \drinksFSM|state~21_combout\,
	datad => \debouncer0|s_pulsedOut~q\,
	combout => \drinksFSM|state~23_combout\);

-- Location: LCCOMB_X89_Y13_N22
\drinksFSM|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~24_combout\ = (\comb~0_combout\ & (!\drinksFSM|state~18_combout\ & ((\drinksFSM|state~23_combout\) # (!\drinksFSM|state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~19_combout\,
	datab => \comb~0_combout\,
	datac => \drinksFSM|state~23_combout\,
	datad => \drinksFSM|state~18_combout\,
	combout => \drinksFSM|state~24_combout\);

-- Location: LCCOMB_X89_Y13_N14
\drinksFSM|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~40_combout\ = (\drinksFSM|state~22_combout\ & (!\drinksFSM|s_mode~q\ & (\drinksFSM|state~21_combout\ & !\drinksFSM|s_preparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~22_combout\,
	datab => \drinksFSM|s_mode~q\,
	datac => \drinksFSM|state~21_combout\,
	datad => \drinksFSM|s_preparing~q\,
	combout => \drinksFSM|state~40_combout\);

-- Location: LCCOMB_X89_Y13_N6
\drinksFSM|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~36_combout\ = (!\drinksFSM|state~29_combout\ & (\drinksFSM|state~40_combout\ & \comb~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~29_combout\,
	datab => \drinksFSM|state~40_combout\,
	datad => \comb~0_combout\,
	combout => \drinksFSM|state~36_combout\);

-- Location: LCCOMB_X89_Y13_N8
\drinksFSM|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~37_combout\ = (\drinksFSM|state~24_combout\ & ((\drinksFSM|state~27_combout\ & (\drinksFSM|state~36_combout\)) # (!\drinksFSM|state~27_combout\ & ((\drinksFSM|state.Tea~q\))))) # (!\drinksFSM|state~24_combout\ & 
-- (\drinksFSM|state~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~24_combout\,
	datab => \drinksFSM|state~36_combout\,
	datac => \drinksFSM|state.Tea~q\,
	datad => \drinksFSM|state~27_combout\,
	combout => \drinksFSM|state~37_combout\);

-- Location: FF_X89_Y13_N9
\drinksFSM|state.Tea\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|state.Tea~q\);

-- Location: LCCOMB_X90_Y13_N24
\drinksFSM|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~29_combout\ = (\drinksFSM|state~21_combout\ & (\drinksFSM|state~19_combout\ & (\debouncer0|s_pulsedOut~q\ & \drinksFSM|state.Tea~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~21_combout\,
	datab => \drinksFSM|state~19_combout\,
	datac => \debouncer0|s_pulsedOut~q\,
	datad => \drinksFSM|state.Tea~q\,
	combout => \drinksFSM|state~29_combout\);

-- Location: LCCOMB_X89_Y13_N28
\drinksFSM|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~39_combout\ = (\comb~0_combout\ & ((\drinksFSM|state.Choice~q\) # ((!\drinksFSM|state.Hello~q\ & !\timer|Equal1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Choice~q\,
	datab => \drinksFSM|state.Hello~q\,
	datac => \comb~0_combout\,
	datad => \timer|Equal1~8_combout\,
	combout => \drinksFSM|state~39_combout\);

-- Location: LCCOMB_X90_Y13_N28
\drinksFSM|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~35_combout\ = (\drinksFSM|state~39_combout\ & ((\drinksFSM|state~18_combout\) # ((!\drinksFSM|state~34_combout\ & !\drinksFSM|state~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~18_combout\,
	datab => \drinksFSM|state~34_combout\,
	datac => \drinksFSM|state~29_combout\,
	datad => \drinksFSM|state~39_combout\,
	combout => \drinksFSM|state~35_combout\);

-- Location: FF_X90_Y13_N29
\drinksFSM|state.Choice\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|state.Choice~q\);

-- Location: LCCOMB_X89_Y14_N20
\drinksFSM|s_clear~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_clear~0_combout\ = (\drinksFSM|s_clear~q\) # ((!\debouncer2|s_pulsedOut~q\ & \timerdrink|expirou~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|s_clear~q\,
	datac => \debouncer2|s_pulsedOut~q\,
	datad => \timerdrink|expirou~combout\,
	combout => \drinksFSM|s_clear~0_combout\);

-- Location: LCCOMB_X88_Y13_N4
\drinksFSM|drink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~3_combout\ = (!\drinksFSM|state.Coffee~q\ & !\drinksFSM|state.HotChoc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Coffee~q\,
	datad => \drinksFSM|state.HotChoc~q\,
	combout => \drinksFSM|drink~3_combout\);

-- Location: LCCOMB_X89_Y14_N2
\drinksFSM|s_clear~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_clear~1_combout\ = (\drinksFSM|s_clear~0_combout\ & (\comb~0_combout\ & ((\drinksFSM|state.Tea~q\) # (!\drinksFSM|drink~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_clear~0_combout\,
	datab => \drinksFSM|state.Tea~q\,
	datac => \drinksFSM|drink~3_combout\,
	datad => \comb~0_combout\,
	combout => \drinksFSM|s_clear~1_combout\);

-- Location: LCCOMB_X89_Y14_N8
\drinksFSM|s_clear~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|s_clear~2_combout\ = (\drinksFSM|s_clear~1_combout\) # ((\drinksFSM|s_clear~q\ & ((\drinksFSM|state.Choice~q\) # (!\comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Choice~q\,
	datab => \drinksFSM|s_clear~1_combout\,
	datac => \drinksFSM|s_clear~q\,
	datad => \comb~0_combout\,
	combout => \drinksFSM|s_clear~2_combout\);

-- Location: FF_X89_Y14_N9
\drinksFSM|s_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|s_clear~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|s_clear~q\);

-- Location: LCCOMB_X90_Y13_N20
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\SW[17]~input_o\ & ((\resettimer|Equal1~8_combout\) # (!\drinksFSM|s_clear~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_clear~q\,
	datab => \SW[17]~input_o\,
	datad => \resettimer|Equal1~8_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X89_Y13_N24
\drinksFSM|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~41_combout\ = (\drinksFSM|state.HotChoc~q\ & ((\drinksFSM|state.Hello~q\) # (\timer|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.HotChoc~q\,
	datab => \drinksFSM|state.Hello~q\,
	datad => \timer|Equal1~8_combout\,
	combout => \drinksFSM|state~41_combout\);

-- Location: LCCOMB_X89_Y13_N4
\drinksFSM|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~38_combout\ = (\comb~0_combout\ & ((\drinksFSM|state~29_combout\) # ((!\drinksFSM|state~34_combout\ & \drinksFSM|state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \drinksFSM|state~29_combout\,
	datac => \drinksFSM|state~34_combout\,
	datad => \drinksFSM|state~41_combout\,
	combout => \drinksFSM|state~38_combout\);

-- Location: FF_X89_Y13_N5
\drinksFSM|state.HotChoc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|state.HotChoc~q\);

-- Location: LCCOMB_X90_Y13_N10
\drinksFSM|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~30_combout\ = (!\drinksFSM|s_mode~q\ & (!\drinksFSM|state.Coffee~q\ & (!\drinksFSM|s_preparing~q\ & \debouncer1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_mode~q\,
	datab => \drinksFSM|state.Coffee~q\,
	datac => \drinksFSM|s_preparing~q\,
	datad => \debouncer1|s_pulsedOut~q\,
	combout => \drinksFSM|state~30_combout\);

-- Location: LCCOMB_X90_Y13_N16
\drinksFSM|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~31_combout\ = (\drinksFSM|state~30_combout\) # ((\drinksFSM|state.Choice~q\ & ((\debouncer0|s_pulsedOut~q\) # (\debouncer1|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~q\,
	datab => \debouncer1|s_pulsedOut~q\,
	datac => \drinksFSM|state~30_combout\,
	datad => \drinksFSM|state.Choice~q\,
	combout => \drinksFSM|state~31_combout\);

-- Location: LCCOMB_X89_Y13_N10
\drinksFSM|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~32_combout\ = (\drinksFSM|state~19_combout\ & (\debouncer0|s_pulsedOut~q\ & ((\drinksFSM|state.Coffee~q\) # (\drinksFSM|state.Tea~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Coffee~q\,
	datab => \drinksFSM|state~19_combout\,
	datac => \drinksFSM|state.Tea~q\,
	datad => \debouncer0|s_pulsedOut~q\,
	combout => \drinksFSM|state~32_combout\);

-- Location: LCCOMB_X90_Y13_N18
\drinksFSM|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~33_combout\ = (\drinksFSM|state~21_combout\ & ((\drinksFSM|state~32_combout\ & ((!\drinksFSM|state.Tea~q\))) # (!\drinksFSM|state~32_combout\ & (\drinksFSM|state~31_combout\)))) # (!\drinksFSM|state~21_combout\ & 
-- (\drinksFSM|state~31_combout\ & (!\drinksFSM|state.Tea~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state~31_combout\,
	datab => \drinksFSM|state.Tea~q\,
	datac => \drinksFSM|state~32_combout\,
	datad => \drinksFSM|state~21_combout\,
	combout => \drinksFSM|state~33_combout\);

-- Location: LCCOMB_X90_Y13_N2
\drinksFSM|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state~34_combout\ = (\drinksFSM|state.Hello~q\ & (\drinksFSM|state~33_combout\ & ((\drinksFSM|state~21_combout\) # (!\drinksFSM|state.HotChoc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.HotChoc~q\,
	datab => \drinksFSM|state~21_combout\,
	datac => \drinksFSM|state.Hello~q\,
	datad => \drinksFSM|state~33_combout\,
	combout => \drinksFSM|state~34_combout\);

-- Location: LCCOMB_X90_Y13_N14
\drinksFSM|state.Hello~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|state.Hello~2_combout\ = (\comb~0_combout\ & ((\drinksFSM|state.Hello~3_combout\) # ((\drinksFSM|state~34_combout\) # (\drinksFSM|state~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Hello~3_combout\,
	datab => \drinksFSM|state~34_combout\,
	datac => \drinksFSM|state~29_combout\,
	datad => \comb~0_combout\,
	combout => \drinksFSM|state.Hello~2_combout\);

-- Location: FF_X90_Y13_N15
\drinksFSM|state.Hello\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|state.Hello~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|state.Hello~q\);

-- Location: LCCOMB_X89_Y13_N0
\drinksFSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|Selector2~0_combout\ = ((\drinksFSM|fix~q\ & !\drinksFSM|state.Choice~q\)) # (!\drinksFSM|state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Hello~q\,
	datac => \drinksFSM|fix~q\,
	datad => \drinksFSM|state.Choice~q\,
	combout => \drinksFSM|Selector2~0_combout\);

-- Location: FF_X89_Y13_N1
\drinksFSM|fix\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|Selector2~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|fix~q\);

-- Location: LCCOMB_X94_Y14_N4
\resettimer|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~1_combout\ = \resettimer|s_count\(0) $ (VCC)
-- \resettimer|Add0~2\ = CARRY(\resettimer|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(0),
	datad => VCC,
	combout => \resettimer|Add0~1_combout\,
	cout => \resettimer|Add0~2\);

-- Location: LCCOMB_X92_Y14_N26
\resettimer|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~9_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~1_combout\,
	combout => \resettimer|Add0~9_combout\);

-- Location: LCCOMB_X92_Y13_N24
\resettimer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~0_combout\ = (\SW[17]~input_o\) # ((\drinksFSM|fix~q\) # (\drinksFSM|s_clear~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \drinksFSM|s_clear~q\,
	combout => \resettimer|Add0~0_combout\);

-- Location: FF_X92_Y14_N27
\resettimer|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~9_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(0));

-- Location: LCCOMB_X94_Y14_N6
\resettimer|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~3_combout\ = (\resettimer|s_count\(1) & (!\resettimer|Add0~2\)) # (!\resettimer|s_count\(1) & ((\resettimer|Add0~2\) # (GND)))
-- \resettimer|Add0~4\ = CARRY((!\resettimer|Add0~2\) # (!\resettimer|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(1),
	datad => VCC,
	cin => \resettimer|Add0~2\,
	combout => \resettimer|Add0~3_combout\,
	cout => \resettimer|Add0~4\);

-- Location: LCCOMB_X92_Y14_N8
\resettimer|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~8_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~3_combout\,
	combout => \resettimer|Add0~8_combout\);

-- Location: FF_X92_Y14_N9
\resettimer|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~8_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(1));

-- Location: LCCOMB_X94_Y14_N8
\resettimer|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~5_combout\ = (\resettimer|s_count\(2) & (\resettimer|Add0~4\ $ (GND))) # (!\resettimer|s_count\(2) & (!\resettimer|Add0~4\ & VCC))
-- \resettimer|Add0~6\ = CARRY((\resettimer|s_count\(2) & !\resettimer|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(2),
	datad => VCC,
	cin => \resettimer|Add0~4\,
	combout => \resettimer|Add0~5_combout\,
	cout => \resettimer|Add0~6\);

-- Location: LCCOMB_X92_Y14_N10
\resettimer|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~7_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~5_combout\,
	combout => \resettimer|Add0~7_combout\);

-- Location: FF_X92_Y14_N11
\resettimer|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~7_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(2));

-- Location: LCCOMB_X94_Y14_N10
\resettimer|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~10_combout\ = (\resettimer|s_count\(3) & (!\resettimer|Add0~6\)) # (!\resettimer|s_count\(3) & ((\resettimer|Add0~6\) # (GND)))
-- \resettimer|Add0~11\ = CARRY((!\resettimer|Add0~6\) # (!\resettimer|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(3),
	datad => VCC,
	cin => \resettimer|Add0~6\,
	combout => \resettimer|Add0~10_combout\,
	cout => \resettimer|Add0~11\);

-- Location: LCCOMB_X92_Y14_N20
\resettimer|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~12_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~10_combout\,
	combout => \resettimer|Add0~12_combout\);

-- Location: FF_X92_Y14_N21
\resettimer|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~12_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(3));

-- Location: LCCOMB_X94_Y14_N12
\resettimer|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~13_combout\ = (\resettimer|s_count\(4) & (\resettimer|Add0~11\ $ (GND))) # (!\resettimer|s_count\(4) & (!\resettimer|Add0~11\ & VCC))
-- \resettimer|Add0~14\ = CARRY((\resettimer|s_count\(4) & !\resettimer|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(4),
	datad => VCC,
	cin => \resettimer|Add0~11\,
	combout => \resettimer|Add0~13_combout\,
	cout => \resettimer|Add0~14\);

-- Location: LCCOMB_X92_Y14_N28
\resettimer|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~15_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~13_combout\,
	combout => \resettimer|Add0~15_combout\);

-- Location: FF_X92_Y14_N29
\resettimer|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~15_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(4));

-- Location: LCCOMB_X94_Y14_N14
\resettimer|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~16_combout\ = (\resettimer|s_count\(5) & (!\resettimer|Add0~14\)) # (!\resettimer|s_count\(5) & ((\resettimer|Add0~14\) # (GND)))
-- \resettimer|Add0~17\ = CARRY((!\resettimer|Add0~14\) # (!\resettimer|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(5),
	datad => VCC,
	cin => \resettimer|Add0~14\,
	combout => \resettimer|Add0~16_combout\,
	cout => \resettimer|Add0~17\);

-- Location: LCCOMB_X92_Y14_N22
\resettimer|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~18_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~16_combout\,
	combout => \resettimer|Add0~18_combout\);

-- Location: FF_X92_Y14_N23
\resettimer|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~18_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(5));

-- Location: LCCOMB_X94_Y14_N16
\resettimer|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~19_combout\ = (\resettimer|s_count\(6) & (\resettimer|Add0~17\ $ (GND))) # (!\resettimer|s_count\(6) & (!\resettimer|Add0~17\ & VCC))
-- \resettimer|Add0~20\ = CARRY((\resettimer|s_count\(6) & !\resettimer|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(6),
	datad => VCC,
	cin => \resettimer|Add0~17\,
	combout => \resettimer|Add0~19_combout\,
	cout => \resettimer|Add0~20\);

-- Location: LCCOMB_X92_Y14_N24
\resettimer|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~21_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~19_combout\,
	combout => \resettimer|Add0~21_combout\);

-- Location: FF_X92_Y14_N25
\resettimer|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~21_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(6));

-- Location: LCCOMB_X94_Y14_N18
\resettimer|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~22_combout\ = (\resettimer|s_count\(7) & (!\resettimer|Add0~20\)) # (!\resettimer|s_count\(7) & ((\resettimer|Add0~20\) # (GND)))
-- \resettimer|Add0~23\ = CARRY((!\resettimer|Add0~20\) # (!\resettimer|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(7),
	datad => VCC,
	cin => \resettimer|Add0~20\,
	combout => \resettimer|Add0~22_combout\,
	cout => \resettimer|Add0~23\);

-- Location: LCCOMB_X92_Y14_N6
\resettimer|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~24_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~22_combout\,
	combout => \resettimer|Add0~24_combout\);

-- Location: FF_X92_Y14_N7
\resettimer|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~24_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(7));

-- Location: LCCOMB_X94_Y14_N20
\resettimer|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~25_combout\ = (\resettimer|s_count\(8) & (\resettimer|Add0~23\ $ (GND))) # (!\resettimer|s_count\(8) & (!\resettimer|Add0~23\ & VCC))
-- \resettimer|Add0~26\ = CARRY((\resettimer|s_count\(8) & !\resettimer|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(8),
	datad => VCC,
	cin => \resettimer|Add0~23\,
	combout => \resettimer|Add0~25_combout\,
	cout => \resettimer|Add0~26\);

-- Location: LCCOMB_X92_Y14_N16
\resettimer|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~36_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~25_combout\,
	combout => \resettimer|Add0~36_combout\);

-- Location: FF_X92_Y14_N17
\resettimer|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~36_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(8));

-- Location: LCCOMB_X94_Y14_N22
\resettimer|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~27_combout\ = (\resettimer|s_count\(9) & (!\resettimer|Add0~26\)) # (!\resettimer|s_count\(9) & ((\resettimer|Add0~26\) # (GND)))
-- \resettimer|Add0~28\ = CARRY((!\resettimer|Add0~26\) # (!\resettimer|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(9),
	datad => VCC,
	cin => \resettimer|Add0~26\,
	combout => \resettimer|Add0~27_combout\,
	cout => \resettimer|Add0~28\);

-- Location: LCCOMB_X92_Y14_N14
\resettimer|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~29_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~27_combout\,
	combout => \resettimer|Add0~29_combout\);

-- Location: FF_X92_Y14_N15
\resettimer|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~29_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(9));

-- Location: LCCOMB_X94_Y14_N24
\resettimer|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~30_combout\ = (\resettimer|s_count\(10) & (\resettimer|Add0~28\ $ (GND))) # (!\resettimer|s_count\(10) & (!\resettimer|Add0~28\ & VCC))
-- \resettimer|Add0~31\ = CARRY((\resettimer|s_count\(10) & !\resettimer|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(10),
	datad => VCC,
	cin => \resettimer|Add0~28\,
	combout => \resettimer|Add0~30_combout\,
	cout => \resettimer|Add0~31\);

-- Location: LCCOMB_X92_Y14_N4
\resettimer|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~32_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~30_combout\,
	combout => \resettimer|Add0~32_combout\);

-- Location: FF_X92_Y14_N5
\resettimer|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~32_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(10));

-- Location: LCCOMB_X94_Y14_N26
\resettimer|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~33_combout\ = (\resettimer|s_count\(11) & (!\resettimer|Add0~31\)) # (!\resettimer|s_count\(11) & ((\resettimer|Add0~31\) # (GND)))
-- \resettimer|Add0~34\ = CARRY((!\resettimer|Add0~31\) # (!\resettimer|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(11),
	datad => VCC,
	cin => \resettimer|Add0~31\,
	combout => \resettimer|Add0~33_combout\,
	cout => \resettimer|Add0~34\);

-- Location: LCCOMB_X92_Y14_N2
\resettimer|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~35_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~33_combout\,
	combout => \resettimer|Add0~35_combout\);

-- Location: FF_X92_Y14_N3
\resettimer|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~35_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(11));

-- Location: LCCOMB_X94_Y14_N28
\resettimer|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~37_combout\ = (\resettimer|s_count\(12) & (\resettimer|Add0~34\ $ (GND))) # (!\resettimer|s_count\(12) & (!\resettimer|Add0~34\ & VCC))
-- \resettimer|Add0~38\ = CARRY((\resettimer|s_count\(12) & !\resettimer|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(12),
	datad => VCC,
	cin => \resettimer|Add0~34\,
	combout => \resettimer|Add0~37_combout\,
	cout => \resettimer|Add0~38\);

-- Location: LCCOMB_X91_Y13_N14
\resettimer|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~42_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~37_combout\,
	combout => \resettimer|Add0~42_combout\);

-- Location: FF_X91_Y13_N15
\resettimer|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~42_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(12));

-- Location: LCCOMB_X94_Y14_N30
\resettimer|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~39_combout\ = (\resettimer|s_count\(13) & (!\resettimer|Add0~38\)) # (!\resettimer|s_count\(13) & ((\resettimer|Add0~38\) # (GND)))
-- \resettimer|Add0~40\ = CARRY((!\resettimer|Add0~38\) # (!\resettimer|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(13),
	datad => VCC,
	cin => \resettimer|Add0~38\,
	combout => \resettimer|Add0~39_combout\,
	cout => \resettimer|Add0~40\);

-- Location: LCCOMB_X91_Y13_N0
\resettimer|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~41_combout\ = (\resettimer|Equal1~8_combout\ & (!\drinksFSM|fix~q\ & (\resettimer|Add0~39_combout\ & !\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Add0~39_combout\,
	datad => \SW[17]~input_o\,
	combout => \resettimer|Add0~41_combout\);

-- Location: FF_X91_Y13_N1
\resettimer|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~41_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(13));

-- Location: LCCOMB_X94_Y13_N0
\resettimer|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~43_combout\ = (\resettimer|s_count\(14) & (\resettimer|Add0~40\ $ (GND))) # (!\resettimer|s_count\(14) & (!\resettimer|Add0~40\ & VCC))
-- \resettimer|Add0~44\ = CARRY((\resettimer|s_count\(14) & !\resettimer|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(14),
	datad => VCC,
	cin => \resettimer|Add0~40\,
	combout => \resettimer|Add0~43_combout\,
	cout => \resettimer|Add0~44\);

-- Location: LCCOMB_X91_Y13_N24
\resettimer|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~45_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~43_combout\,
	combout => \resettimer|Add0~45_combout\);

-- Location: FF_X91_Y13_N25
\resettimer|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~45_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(14));

-- Location: LCCOMB_X94_Y13_N2
\resettimer|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~46_combout\ = (\resettimer|s_count\(15) & (!\resettimer|Add0~44\)) # (!\resettimer|s_count\(15) & ((\resettimer|Add0~44\) # (GND)))
-- \resettimer|Add0~47\ = CARRY((!\resettimer|Add0~44\) # (!\resettimer|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(15),
	datad => VCC,
	cin => \resettimer|Add0~44\,
	combout => \resettimer|Add0~46_combout\,
	cout => \resettimer|Add0~47\);

-- Location: LCCOMB_X91_Y13_N22
\resettimer|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~48_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (\resettimer|Add0~46_combout\ & !\drinksFSM|fix~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \resettimer|Add0~46_combout\,
	datad => \drinksFSM|fix~q\,
	combout => \resettimer|Add0~48_combout\);

-- Location: FF_X91_Y13_N23
\resettimer|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~48_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(15));

-- Location: LCCOMB_X94_Y13_N4
\resettimer|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~49_combout\ = (\resettimer|s_count\(16) & (\resettimer|Add0~47\ $ (GND))) # (!\resettimer|s_count\(16) & (!\resettimer|Add0~47\ & VCC))
-- \resettimer|Add0~50\ = CARRY((\resettimer|s_count\(16) & !\resettimer|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(16),
	datad => VCC,
	cin => \resettimer|Add0~47\,
	combout => \resettimer|Add0~49_combout\,
	cout => \resettimer|Add0~50\);

-- Location: LCCOMB_X91_Y13_N28
\resettimer|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~51_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~49_combout\,
	combout => \resettimer|Add0~51_combout\);

-- Location: FF_X91_Y13_N29
\resettimer|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~51_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(16));

-- Location: LCCOMB_X94_Y13_N6
\resettimer|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~52_combout\ = (\resettimer|s_count\(17) & (!\resettimer|Add0~50\)) # (!\resettimer|s_count\(17) & ((\resettimer|Add0~50\) # (GND)))
-- \resettimer|Add0~53\ = CARRY((!\resettimer|Add0~50\) # (!\resettimer|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(17),
	datad => VCC,
	cin => \resettimer|Add0~50\,
	combout => \resettimer|Add0~52_combout\,
	cout => \resettimer|Add0~53\);

-- Location: LCCOMB_X92_Y13_N20
\resettimer|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~54_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~52_combout\,
	combout => \resettimer|Add0~54_combout\);

-- Location: FF_X92_Y13_N21
\resettimer|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~54_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(17));

-- Location: LCCOMB_X94_Y13_N8
\resettimer|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~55_combout\ = (\resettimer|s_count\(18) & (\resettimer|Add0~53\ $ (GND))) # (!\resettimer|s_count\(18) & (!\resettimer|Add0~53\ & VCC))
-- \resettimer|Add0~56\ = CARRY((\resettimer|s_count\(18) & !\resettimer|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(18),
	datad => VCC,
	cin => \resettimer|Add0~53\,
	combout => \resettimer|Add0~55_combout\,
	cout => \resettimer|Add0~56\);

-- Location: LCCOMB_X91_Y13_N2
\resettimer|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~57_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~55_combout\,
	combout => \resettimer|Add0~57_combout\);

-- Location: FF_X91_Y13_N3
\resettimer|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~57_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(18));

-- Location: LCCOMB_X94_Y13_N10
\resettimer|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~58_combout\ = (\resettimer|s_count\(19) & (!\resettimer|Add0~56\)) # (!\resettimer|s_count\(19) & ((\resettimer|Add0~56\) # (GND)))
-- \resettimer|Add0~59\ = CARRY((!\resettimer|Add0~56\) # (!\resettimer|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(19),
	datad => VCC,
	cin => \resettimer|Add0~56\,
	combout => \resettimer|Add0~58_combout\,
	cout => \resettimer|Add0~59\);

-- Location: LCCOMB_X91_Y13_N12
\resettimer|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~60_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~58_combout\,
	combout => \resettimer|Add0~60_combout\);

-- Location: FF_X91_Y13_N13
\resettimer|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~60_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(19));

-- Location: LCCOMB_X91_Y13_N30
\resettimer|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~5_combout\ = (\resettimer|s_count\(19)) # ((\resettimer|s_count\(18)) # ((\resettimer|s_count\(17)) # (\resettimer|s_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(19),
	datab => \resettimer|s_count\(18),
	datac => \resettimer|s_count\(17),
	datad => \resettimer|s_count\(16),
	combout => \resettimer|Equal1~5_combout\);

-- Location: LCCOMB_X94_Y13_N12
\resettimer|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~61_combout\ = (\resettimer|s_count\(20) & (\resettimer|Add0~59\ $ (GND))) # (!\resettimer|s_count\(20) & (!\resettimer|Add0~59\ & VCC))
-- \resettimer|Add0~62\ = CARRY((\resettimer|s_count\(20) & !\resettimer|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(20),
	datad => VCC,
	cin => \resettimer|Add0~59\,
	combout => \resettimer|Add0~61_combout\,
	cout => \resettimer|Add0~62\);

-- Location: LCCOMB_X91_Y13_N16
\resettimer|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~63_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~61_combout\,
	combout => \resettimer|Add0~63_combout\);

-- Location: FF_X91_Y13_N17
\resettimer|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~63_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(20));

-- Location: LCCOMB_X94_Y13_N14
\resettimer|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~64_combout\ = (\resettimer|s_count\(21) & (!\resettimer|Add0~62\)) # (!\resettimer|s_count\(21) & ((\resettimer|Add0~62\) # (GND)))
-- \resettimer|Add0~65\ = CARRY((!\resettimer|Add0~62\) # (!\resettimer|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(21),
	datad => VCC,
	cin => \resettimer|Add0~62\,
	combout => \resettimer|Add0~64_combout\,
	cout => \resettimer|Add0~65\);

-- Location: LCCOMB_X91_Y13_N6
\resettimer|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~66_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~64_combout\,
	combout => \resettimer|Add0~66_combout\);

-- Location: FF_X91_Y13_N7
\resettimer|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~66_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(21));

-- Location: LCCOMB_X94_Y13_N16
\resettimer|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~67_combout\ = (\resettimer|s_count\(22) & (\resettimer|Add0~65\ $ (GND))) # (!\resettimer|s_count\(22) & (!\resettimer|Add0~65\ & VCC))
-- \resettimer|Add0~68\ = CARRY((\resettimer|s_count\(22) & !\resettimer|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(22),
	datad => VCC,
	cin => \resettimer|Add0~65\,
	combout => \resettimer|Add0~67_combout\,
	cout => \resettimer|Add0~68\);

-- Location: LCCOMB_X91_Y13_N4
\resettimer|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~69_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~67_combout\,
	combout => \resettimer|Add0~69_combout\);

-- Location: FF_X91_Y13_N5
\resettimer|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~69_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(22));

-- Location: LCCOMB_X94_Y13_N18
\resettimer|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~70_combout\ = (\resettimer|s_count\(23) & (!\resettimer|Add0~68\)) # (!\resettimer|s_count\(23) & ((\resettimer|Add0~68\) # (GND)))
-- \resettimer|Add0~71\ = CARRY((!\resettimer|Add0~68\) # (!\resettimer|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(23),
	datad => VCC,
	cin => \resettimer|Add0~68\,
	combout => \resettimer|Add0~70_combout\,
	cout => \resettimer|Add0~71\);

-- Location: LCCOMB_X91_Y13_N18
\resettimer|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~72_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & \resettimer|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \drinksFSM|fix~q\,
	datad => \resettimer|Add0~70_combout\,
	combout => \resettimer|Add0~72_combout\);

-- Location: FF_X91_Y13_N19
\resettimer|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~72_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(23));

-- Location: LCCOMB_X91_Y13_N8
\resettimer|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~6_combout\ = (((!\resettimer|s_count\(20)) # (!\resettimer|s_count\(22))) # (!\resettimer|s_count\(23))) # (!\resettimer|s_count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(21),
	datab => \resettimer|s_count\(23),
	datac => \resettimer|s_count\(22),
	datad => \resettimer|s_count\(20),
	combout => \resettimer|Equal1~6_combout\);

-- Location: LCCOMB_X94_Y13_N20
\resettimer|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~73_combout\ = (\resettimer|s_count\(24) & (\resettimer|Add0~71\ $ (GND))) # (!\resettimer|s_count\(24) & (!\resettimer|Add0~71\ & VCC))
-- \resettimer|Add0~74\ = CARRY((\resettimer|s_count\(24) & !\resettimer|Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(24),
	datad => VCC,
	cin => \resettimer|Add0~71\,
	combout => \resettimer|Add0~73_combout\,
	cout => \resettimer|Add0~74\);

-- Location: LCCOMB_X92_Y13_N18
\resettimer|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~75_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~73_combout\,
	combout => \resettimer|Add0~75_combout\);

-- Location: FF_X92_Y13_N19
\resettimer|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~75_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(24));

-- Location: LCCOMB_X94_Y13_N22
\resettimer|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~76_combout\ = (\resettimer|s_count\(25) & (!\resettimer|Add0~74\)) # (!\resettimer|s_count\(25) & ((\resettimer|Add0~74\) # (GND)))
-- \resettimer|Add0~77\ = CARRY((!\resettimer|Add0~74\) # (!\resettimer|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(25),
	datad => VCC,
	cin => \resettimer|Add0~74\,
	combout => \resettimer|Add0~76_combout\,
	cout => \resettimer|Add0~77\);

-- Location: LCCOMB_X92_Y13_N12
\resettimer|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~78_combout\ = (!\SW[17]~input_o\ & (!\drinksFSM|fix~q\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \drinksFSM|fix~q\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~76_combout\,
	combout => \resettimer|Add0~78_combout\);

-- Location: FF_X92_Y13_N13
\resettimer|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~78_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(25));

-- Location: LCCOMB_X94_Y13_N24
\resettimer|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~79_combout\ = (\resettimer|s_count\(26) & (\resettimer|Add0~77\ $ (GND))) # (!\resettimer|s_count\(26) & (!\resettimer|Add0~77\ & VCC))
-- \resettimer|Add0~80\ = CARRY((\resettimer|s_count\(26) & !\resettimer|Add0~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \resettimer|s_count\(26),
	datad => VCC,
	cin => \resettimer|Add0~77\,
	combout => \resettimer|Add0~79_combout\,
	cout => \resettimer|Add0~80\);

-- Location: LCCOMB_X94_Y13_N28
\resettimer|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~81_combout\ = (!\drinksFSM|fix~q\ & (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & \resettimer|Add0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|fix~q\,
	datab => \SW[17]~input_o\,
	datac => \resettimer|Equal1~8_combout\,
	datad => \resettimer|Add0~79_combout\,
	combout => \resettimer|Add0~81_combout\);

-- Location: FF_X94_Y13_N29
\resettimer|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~81_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(26));

-- Location: LCCOMB_X94_Y13_N26
\resettimer|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~82_combout\ = \resettimer|s_count\(27) $ (\resettimer|Add0~80\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(27),
	cin => \resettimer|Add0~80\,
	combout => \resettimer|Add0~82_combout\);

-- Location: LCCOMB_X94_Y13_N30
\resettimer|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Add0~84_combout\ = (\resettimer|Equal1~8_combout\ & (!\SW[17]~input_o\ & (\resettimer|Add0~82_combout\ & !\drinksFSM|fix~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~8_combout\,
	datab => \SW[17]~input_o\,
	datac => \resettimer|Add0~82_combout\,
	datad => \drinksFSM|fix~q\,
	combout => \resettimer|Add0~84_combout\);

-- Location: FF_X94_Y13_N31
\resettimer|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|Add0~84_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_count\(27));

-- Location: LCCOMB_X92_Y13_N30
\resettimer|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~7_combout\ = (\resettimer|s_count\(25)) # ((\resettimer|s_count\(24)) # ((\resettimer|s_count\(26)) # (!\resettimer|s_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(25),
	datab => \resettimer|s_count\(24),
	datac => \resettimer|s_count\(26),
	datad => \resettimer|s_count\(27),
	combout => \resettimer|Equal1~7_combout\);

-- Location: LCCOMB_X91_Y13_N20
\resettimer|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~3_combout\ = ((\resettimer|s_count\(13)) # ((!\resettimer|s_count\(14)) # (!\resettimer|s_count\(12)))) # (!\resettimer|s_count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(15),
	datab => \resettimer|s_count\(13),
	datac => \resettimer|s_count\(12),
	datad => \resettimer|s_count\(14),
	combout => \resettimer|Equal1~3_combout\);

-- Location: LCCOMB_X92_Y14_N30
\resettimer|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~0_combout\ = (\resettimer|s_count\(2)) # ((\resettimer|s_count\(1)) # ((\resettimer|s_count\(0)) # (\resettimer|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(2),
	datab => \resettimer|s_count\(1),
	datac => \resettimer|s_count\(0),
	datad => \resettimer|s_count\(3),
	combout => \resettimer|Equal1~0_combout\);

-- Location: LCCOMB_X92_Y14_N12
\resettimer|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~1_combout\ = ((\resettimer|s_count\(4)) # ((\resettimer|s_count\(5)) # (\resettimer|s_count\(6)))) # (!\resettimer|s_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(7),
	datab => \resettimer|s_count\(4),
	datac => \resettimer|s_count\(5),
	datad => \resettimer|s_count\(6),
	combout => \resettimer|Equal1~1_combout\);

-- Location: LCCOMB_X92_Y14_N18
\resettimer|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~2_combout\ = (\resettimer|s_count\(10)) # ((\resettimer|s_count\(11)) # ((\resettimer|s_count\(9)) # (!\resettimer|s_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|s_count\(10),
	datab => \resettimer|s_count\(11),
	datac => \resettimer|s_count\(9),
	datad => \resettimer|s_count\(8),
	combout => \resettimer|Equal1~2_combout\);

-- Location: LCCOMB_X91_Y13_N10
\resettimer|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~4_combout\ = (\resettimer|Equal1~3_combout\) # ((\resettimer|Equal1~0_combout\) # ((\resettimer|Equal1~1_combout\) # (\resettimer|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~3_combout\,
	datab => \resettimer|Equal1~0_combout\,
	datac => \resettimer|Equal1~1_combout\,
	datad => \resettimer|Equal1~2_combout\,
	combout => \resettimer|Equal1~4_combout\);

-- Location: LCCOMB_X91_Y13_N26
\resettimer|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|Equal1~8_combout\ = (\resettimer|Equal1~5_combout\) # ((\resettimer|Equal1~6_combout\) # ((\resettimer|Equal1~7_combout\) # (\resettimer|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resettimer|Equal1~5_combout\,
	datab => \resettimer|Equal1~6_combout\,
	datac => \resettimer|Equal1~7_combout\,
	datad => \resettimer|Equal1~4_combout\,
	combout => \resettimer|Equal1~8_combout\);

-- Location: LCCOMB_X92_Y14_N0
\resettimer|s_decorre~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \resettimer|s_decorre~0_combout\ = (!\SW[17]~input_o\ & (\resettimer|Equal1~8_combout\ & !\drinksFSM|fix~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \resettimer|Equal1~8_combout\,
	datac => \drinksFSM|fix~q\,
	combout => \resettimer|s_decorre~0_combout\);

-- Location: FF_X92_Y14_N1
\resettimer|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \resettimer|s_decorre~0_combout\,
	ena => \resettimer|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resettimer|s_decorre~q\);

-- Location: LCCOMB_X90_Y14_N18
\timerdrink|s_decorre~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_decorre~3_combout\ = (\timerdrink|Equal0~9_combout\ & (((!\drinksFSM|s_preparing~q\)))) # (!\timerdrink|Equal0~9_combout\ & (\timerdrink|Equal0~4_combout\ & (\timerdrink|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerdrink|Equal0~4_combout\,
	datab => \timerdrink|Equal0~9_combout\,
	datac => \timerdrink|Equal1~3_combout\,
	datad => \drinksFSM|s_preparing~q\,
	combout => \timerdrink|s_decorre~3_combout\);

-- Location: LCCOMB_X89_Y14_N28
\timerdrink|s_decorre~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerdrink|s_decorre~2_combout\ = (\comb~0_combout\ & ((\sugarFSM|cando~combout\ & ((!\timerdrink|s_decorre~3_combout\))) # (!\sugarFSM|cando~combout\ & (\timerdrink|s_decorre~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|cando~combout\,
	datab => \comb~0_combout\,
	datac => \timerdrink|s_decorre~q\,
	datad => \timerdrink|s_decorre~3_combout\,
	combout => \timerdrink|s_decorre~2_combout\);

-- Location: FF_X89_Y14_N29
\timerdrink|s_decorre\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \timerdrink|s_decorre~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerdrink|s_decorre~q\);

-- Location: LCCOMB_X88_Y13_N0
\drinksFSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|Selector1~0_combout\ = (\drinksFSM|state.Coffee~q\) # ((\drinksFSM|sugaren~q\ & \drinksFSM|state.Hello~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|state.Coffee~q\,
	datac => \drinksFSM|sugaren~q\,
	datad => \drinksFSM|state.Hello~q\,
	combout => \drinksFSM|Selector1~0_combout\);

-- Location: FF_X88_Y13_N1
\drinksFSM|sugaren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|Selector1~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|sugaren~q\);

-- Location: LCCOMB_X90_Y15_N16
\sugarFSM|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~18_combout\ = ((\drinksFSM|s_mode~q\ & (\sugarFSM|state.E1~q\ & \debouncer1|s_pulsedOut~q\))) # (!\sugarFSM|state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|s_mode~q\,
	datab => \sugarFSM|state.E0~q\,
	datac => \sugarFSM|state.E1~q\,
	datad => \debouncer1|s_pulsedOut~q\,
	combout => \sugarFSM|state~18_combout\);

-- Location: LCCOMB_X90_Y15_N2
\sugarFSM|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~21_combout\ = (\comb~0_combout\ & (((\debouncer0|s_pulsedOut~q\ & \drinksFSM|s_mode~q\)) # (!\sugarFSM|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~q\,
	datab => \sugarFSM|state~18_combout\,
	datac => \comb~0_combout\,
	datad => \drinksFSM|s_mode~q\,
	combout => \sugarFSM|state~21_combout\);

-- Location: FF_X90_Y15_N3
\sugarFSM|state.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|state.E0~q\);

-- Location: LCCOMB_X90_Y15_N4
\sugarFSM|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~13_combout\ = (\drinksFSM|s_mode~q\ & \debouncer1|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|s_mode~q\,
	datad => \debouncer1|s_pulsedOut~q\,
	combout => \sugarFSM|state~13_combout\);

-- Location: LCCOMB_X90_Y15_N18
\sugarFSM|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|process_0~0_combout\ = (\drinksFSM|s_mode~q\ & \debouncer0|s_pulsedOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|s_mode~q\,
	datad => \debouncer0|s_pulsedOut~q\,
	combout => \sugarFSM|process_0~0_combout\);

-- Location: LCCOMB_X90_Y15_N12
\sugarFSM|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~15_combout\ = (\sugarFSM|process_0~0_combout\ & (!\sugarFSM|state.E0~q\)) # (!\sugarFSM|process_0~0_combout\ & (((\sugarFSM|state.E2~q\ & \sugarFSM|state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|state.E0~q\,
	datab => \sugarFSM|state.E2~q\,
	datac => \sugarFSM|state~13_combout\,
	datad => \sugarFSM|process_0~0_combout\,
	combout => \sugarFSM|state~15_combout\);

-- Location: LCCOMB_X90_Y15_N14
\sugarFSM|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~16_combout\ = (\drinksFSM|s_mode~q\ & ((\debouncer0|s_pulsedOut~q\) # (\debouncer1|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~q\,
	datac => \drinksFSM|s_mode~q\,
	datad => \debouncer1|s_pulsedOut~q\,
	combout => \sugarFSM|state~16_combout\);

-- Location: LCCOMB_X90_Y15_N8
\sugarFSM|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~17_combout\ = (\comb~0_combout\ & ((\sugarFSM|state~15_combout\) # ((!\sugarFSM|state~16_combout\ & \sugarFSM|state.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|state~15_combout\,
	datab => \sugarFSM|state~16_combout\,
	datac => \sugarFSM|state.E1~q\,
	datad => \comb~0_combout\,
	combout => \sugarFSM|state~17_combout\);

-- Location: FF_X90_Y15_N9
\sugarFSM|state.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|state.E1~q\);

-- Location: LCCOMB_X90_Y15_N26
\sugarFSM|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~19_combout\ = (\sugarFSM|state.E3~q\ & ((\sugarFSM|state~13_combout\) # ((\sugarFSM|state.E1~q\ & \sugarFSM|process_0~0_combout\)))) # (!\sugarFSM|state.E3~q\ & (\sugarFSM|state.E1~q\ & ((\sugarFSM|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|state.E3~q\,
	datab => \sugarFSM|state.E1~q\,
	datac => \sugarFSM|state~13_combout\,
	datad => \sugarFSM|process_0~0_combout\,
	combout => \sugarFSM|state~19_combout\);

-- Location: LCCOMB_X90_Y15_N20
\sugarFSM|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~20_combout\ = (\comb~0_combout\ & ((\sugarFSM|state~19_combout\) # ((!\sugarFSM|state~16_combout\ & \sugarFSM|state.E2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|state~19_combout\,
	datab => \sugarFSM|state~16_combout\,
	datac => \sugarFSM|state.E2~q\,
	datad => \comb~0_combout\,
	combout => \sugarFSM|state~20_combout\);

-- Location: FF_X90_Y15_N21
\sugarFSM|state.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|state.E2~q\);

-- Location: LCCOMB_X90_Y15_N10
\sugarFSM|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~12_combout\ = (\debouncer0|s_pulsedOut~q\ & (\drinksFSM|s_mode~q\ & \sugarFSM|state.E2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer0|s_pulsedOut~q\,
	datac => \drinksFSM|s_mode~q\,
	datad => \sugarFSM|state.E2~q\,
	combout => \sugarFSM|state~12_combout\);

-- Location: LCCOMB_X90_Y15_N30
\sugarFSM|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|state~14_combout\ = (\comb~0_combout\ & ((\sugarFSM|state~12_combout\) # ((!\sugarFSM|state~13_combout\ & \sugarFSM|state.E3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sugarFSM|state~12_combout\,
	datab => \sugarFSM|state~13_combout\,
	datac => \sugarFSM|state.E3~q\,
	datad => \comb~0_combout\,
	combout => \sugarFSM|state~14_combout\);

-- Location: FF_X90_Y15_N31
\sugarFSM|state.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|state.E3~q\);

-- Location: LCCOMB_X90_Y15_N28
\sugarFSM|sugar[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|sugar[1]~1_combout\ = !\sugarFSM|state.E3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sugarFSM|state.E3~q\,
	combout => \sugarFSM|sugar[1]~1_combout\);

-- Location: FF_X90_Y15_N29
\sugarFSM|sugar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|sugar[1]~1_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|sugar\(1));

-- Location: LCCOMB_X90_Y15_N22
\hexdisplay0|todisplay[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay0|todisplay[4]~0_combout\ = (\sugarFSM|sugar\(1)) # (!\drinksFSM|sugaren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|sugaren~q\,
	datad => \sugarFSM|sugar\(1),
	combout => \hexdisplay0|todisplay[4]~0_combout\);

-- Location: LCCOMB_X90_Y15_N0
\sugarFSM|sugar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|sugar~0_combout\ = (\sugarFSM|state.E1~q\) # (!\sugarFSM|state.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sugarFSM|state.E1~q\,
	datad => \sugarFSM|state.E0~q\,
	combout => \sugarFSM|sugar~0_combout\);

-- Location: FF_X90_Y15_N1
\sugarFSM|sugar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|sugar~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|sugar\(5));

-- Location: LCCOMB_X90_Y15_N6
\hexdisplay1|todisplay[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay1|todisplay[4]~0_combout\ = (\sugarFSM|sugar\(5)) # (!\drinksFSM|sugaren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|sugaren~q\,
	datad => \sugarFSM|sugar\(5),
	combout => \hexdisplay1|todisplay[4]~0_combout\);

-- Location: LCCOMB_X89_Y14_N30
\sugarFSM|sugar[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sugarFSM|sugar[10]~2_combout\ = !\sugarFSM|state.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sugarFSM|state.E0~q\,
	combout => \sugarFSM|sugar[10]~2_combout\);

-- Location: FF_X89_Y14_N31
\sugarFSM|sugar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \sugarFSM|sugar[10]~2_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sugarFSM|sugar\(10));

-- Location: LCCOMB_X90_Y15_N24
\hexdisplay2|todisplay[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay2|todisplay[4]~0_combout\ = (\sugarFSM|sugar\(10)) # (!\drinksFSM|sugaren~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|sugaren~q\,
	datad => \sugarFSM|sugar\(10),
	combout => \hexdisplay2|todisplay[4]~0_combout\);

-- Location: LCCOMB_X88_Y13_N6
\drinksFSM|drink[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink[2]~8_combout\ = !\drinksFSM|state.Coffee~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Coffee~q\,
	combout => \drinksFSM|drink[2]~8_combout\);

-- Location: FF_X88_Y13_N7
\drinksFSM|drink[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|drink[2]~8_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(2));

-- Location: LCCOMB_X90_Y14_N24
\drinksFSM|drink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~0_combout\ = (\drinksFSM|state.Tea~q\) # (\drinksFSM|state.Choice~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Tea~q\,
	datab => \drinksFSM|state.Choice~q\,
	combout => \drinksFSM|drink~0_combout\);

-- Location: FF_X89_Y13_N25
\drinksFSM|drink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|drink~0_combout\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(0));

-- Location: FF_X90_Y13_N1
\drinksFSM|drink[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|drink~1_combout\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(14));

-- Location: FF_X89_Y13_N27
\drinksFSM|drink[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|state.Tea~q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(3));

-- Location: LCCOMB_X88_Y13_N8
\hexdisplay4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux6~0_combout\ = (\drinksFSM|drink\(2) & (!\drinksFSM|drink\(3) & ((\drinksFSM|drink\(14)) # (!\drinksFSM|drink\(0))))) # (!\drinksFSM|drink\(2) & (!\drinksFSM|drink\(0) & (\drinksFSM|drink\(14) $ (\drinksFSM|drink\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux6~0_combout\);

-- Location: LCCOMB_X100_Y2_N2
\bin7enable|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~0_combout\ = \bin7enable|s_divCounter\(0) $ (VCC)
-- \bin7enable|Add0~1\ = CARRY(\bin7enable|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(0),
	datad => VCC,
	combout => \bin7enable|Add0~0_combout\,
	cout => \bin7enable|Add0~1\);

-- Location: FF_X100_Y2_N3
\bin7enable|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(0));

-- Location: LCCOMB_X100_Y2_N4
\bin7enable|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~2_combout\ = (\bin7enable|s_divCounter\(1) & (!\bin7enable|Add0~1\)) # (!\bin7enable|s_divCounter\(1) & ((\bin7enable|Add0~1\) # (GND)))
-- \bin7enable|Add0~3\ = CARRY((!\bin7enable|Add0~1\) # (!\bin7enable|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(1),
	datad => VCC,
	cin => \bin7enable|Add0~1\,
	combout => \bin7enable|Add0~2_combout\,
	cout => \bin7enable|Add0~3\);

-- Location: FF_X100_Y2_N5
\bin7enable|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(1));

-- Location: LCCOMB_X100_Y2_N6
\bin7enable|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~4_combout\ = (\bin7enable|s_divCounter\(2) & (\bin7enable|Add0~3\ $ (GND))) # (!\bin7enable|s_divCounter\(2) & (!\bin7enable|Add0~3\ & VCC))
-- \bin7enable|Add0~5\ = CARRY((\bin7enable|s_divCounter\(2) & !\bin7enable|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(2),
	datad => VCC,
	cin => \bin7enable|Add0~3\,
	combout => \bin7enable|Add0~4_combout\,
	cout => \bin7enable|Add0~5\);

-- Location: FF_X100_Y2_N7
\bin7enable|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(2));

-- Location: LCCOMB_X100_Y2_N8
\bin7enable|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~6_combout\ = (\bin7enable|s_divCounter\(3) & (!\bin7enable|Add0~5\)) # (!\bin7enable|s_divCounter\(3) & ((\bin7enable|Add0~5\) # (GND)))
-- \bin7enable|Add0~7\ = CARRY((!\bin7enable|Add0~5\) # (!\bin7enable|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(3),
	datad => VCC,
	cin => \bin7enable|Add0~5\,
	combout => \bin7enable|Add0~6_combout\,
	cout => \bin7enable|Add0~7\);

-- Location: FF_X100_Y2_N9
\bin7enable|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(3));

-- Location: LCCOMB_X100_Y2_N10
\bin7enable|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~8_combout\ = (\bin7enable|s_divCounter\(4) & (\bin7enable|Add0~7\ $ (GND))) # (!\bin7enable|s_divCounter\(4) & (!\bin7enable|Add0~7\ & VCC))
-- \bin7enable|Add0~9\ = CARRY((\bin7enable|s_divCounter\(4) & !\bin7enable|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(4),
	datad => VCC,
	cin => \bin7enable|Add0~7\,
	combout => \bin7enable|Add0~8_combout\,
	cout => \bin7enable|Add0~9\);

-- Location: FF_X100_Y2_N11
\bin7enable|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(4));

-- Location: LCCOMB_X100_Y2_N12
\bin7enable|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~10_combout\ = (\bin7enable|s_divCounter\(5) & (!\bin7enable|Add0~9\)) # (!\bin7enable|s_divCounter\(5) & ((\bin7enable|Add0~9\) # (GND)))
-- \bin7enable|Add0~11\ = CARRY((!\bin7enable|Add0~9\) # (!\bin7enable|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(5),
	datad => VCC,
	cin => \bin7enable|Add0~9\,
	combout => \bin7enable|Add0~10_combout\,
	cout => \bin7enable|Add0~11\);

-- Location: FF_X100_Y2_N13
\bin7enable|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(5));

-- Location: LCCOMB_X100_Y2_N14
\bin7enable|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~12_combout\ = (\bin7enable|s_divCounter\(6) & (\bin7enable|Add0~11\ $ (GND))) # (!\bin7enable|s_divCounter\(6) & (!\bin7enable|Add0~11\ & VCC))
-- \bin7enable|Add0~13\ = CARRY((\bin7enable|s_divCounter\(6) & !\bin7enable|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(6),
	datad => VCC,
	cin => \bin7enable|Add0~11\,
	combout => \bin7enable|Add0~12_combout\,
	cout => \bin7enable|Add0~13\);

-- Location: FF_X100_Y2_N15
\bin7enable|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(6));

-- Location: LCCOMB_X100_Y2_N16
\bin7enable|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~14_combout\ = (\bin7enable|s_divCounter\(7) & (!\bin7enable|Add0~13\)) # (!\bin7enable|s_divCounter\(7) & ((\bin7enable|Add0~13\) # (GND)))
-- \bin7enable|Add0~15\ = CARRY((!\bin7enable|Add0~13\) # (!\bin7enable|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(7),
	datad => VCC,
	cin => \bin7enable|Add0~13\,
	combout => \bin7enable|Add0~14_combout\,
	cout => \bin7enable|Add0~15\);

-- Location: LCCOMB_X99_Y1_N2
\bin7enable|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~2_combout\ = (\bin7enable|Add0~14_combout\ & !\bin7enable|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7enable|Add0~14_combout\,
	datad => \bin7enable|Equal0~10_combout\,
	combout => \bin7enable|s_divCounter~2_combout\);

-- Location: FF_X99_Y1_N3
\bin7enable|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(7));

-- Location: LCCOMB_X100_Y2_N18
\bin7enable|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~16_combout\ = (\bin7enable|s_divCounter\(8) & (\bin7enable|Add0~15\ $ (GND))) # (!\bin7enable|s_divCounter\(8) & (!\bin7enable|Add0~15\ & VCC))
-- \bin7enable|Add0~17\ = CARRY((\bin7enable|s_divCounter\(8) & !\bin7enable|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(8),
	datad => VCC,
	cin => \bin7enable|Add0~15\,
	combout => \bin7enable|Add0~16_combout\,
	cout => \bin7enable|Add0~17\);

-- Location: FF_X100_Y2_N19
\bin7enable|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(8));

-- Location: LCCOMB_X100_Y2_N20
\bin7enable|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~18_combout\ = (\bin7enable|s_divCounter\(9) & (!\bin7enable|Add0~17\)) # (!\bin7enable|s_divCounter\(9) & ((\bin7enable|Add0~17\) # (GND)))
-- \bin7enable|Add0~19\ = CARRY((!\bin7enable|Add0~17\) # (!\bin7enable|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(9),
	datad => VCC,
	cin => \bin7enable|Add0~17\,
	combout => \bin7enable|Add0~18_combout\,
	cout => \bin7enable|Add0~19\);

-- Location: LCCOMB_X101_Y1_N0
\bin7enable|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~1_combout\ = (\bin7enable|Add0~18_combout\ & !\bin7enable|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7enable|Add0~18_combout\,
	datad => \bin7enable|Equal0~10_combout\,
	combout => \bin7enable|s_divCounter~1_combout\);

-- Location: FF_X101_Y1_N1
\bin7enable|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(9));

-- Location: LCCOMB_X100_Y2_N22
\bin7enable|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~20_combout\ = (\bin7enable|s_divCounter\(10) & (\bin7enable|Add0~19\ $ (GND))) # (!\bin7enable|s_divCounter\(10) & (!\bin7enable|Add0~19\ & VCC))
-- \bin7enable|Add0~21\ = CARRY((\bin7enable|s_divCounter\(10) & !\bin7enable|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(10),
	datad => VCC,
	cin => \bin7enable|Add0~19\,
	combout => \bin7enable|Add0~20_combout\,
	cout => \bin7enable|Add0~21\);

-- Location: LCCOMB_X99_Y1_N4
\bin7enable|s_divCounter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~7_combout\ = (!\bin7enable|Equal0~10_combout\ & \bin7enable|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|Equal0~10_combout\,
	datad => \bin7enable|Add0~20_combout\,
	combout => \bin7enable|s_divCounter~7_combout\);

-- Location: FF_X99_Y1_N5
\bin7enable|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(10));

-- Location: LCCOMB_X99_Y1_N10
\bin7enable|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~9_combout\ = (\bin7enable|s_divCounter\(10) & (\bin7enable|s_divCounter\(6) & !\bin7enable|s_divCounter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(10),
	datac => \bin7enable|s_divCounter\(6),
	datad => \bin7enable|s_divCounter\(8),
	combout => \bin7enable|Equal0~9_combout\);

-- Location: LCCOMB_X100_Y2_N24
\bin7enable|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~22_combout\ = (\bin7enable|s_divCounter\(11) & (!\bin7enable|Add0~21\)) # (!\bin7enable|s_divCounter\(11) & ((\bin7enable|Add0~21\) # (GND)))
-- \bin7enable|Add0~23\ = CARRY((!\bin7enable|Add0~21\) # (!\bin7enable|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(11),
	datad => VCC,
	cin => \bin7enable|Add0~21\,
	combout => \bin7enable|Add0~22_combout\,
	cout => \bin7enable|Add0~23\);

-- Location: FF_X100_Y2_N25
\bin7enable|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(11));

-- Location: LCCOMB_X100_Y2_N26
\bin7enable|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~24_combout\ = (\bin7enable|s_divCounter\(12) & (\bin7enable|Add0~23\ $ (GND))) # (!\bin7enable|s_divCounter\(12) & (!\bin7enable|Add0~23\ & VCC))
-- \bin7enable|Add0~25\ = CARRY((\bin7enable|s_divCounter\(12) & !\bin7enable|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(12),
	datad => VCC,
	cin => \bin7enable|Add0~23\,
	combout => \bin7enable|Add0~24_combout\,
	cout => \bin7enable|Add0~25\);

-- Location: LCCOMB_X99_Y1_N0
\bin7enable|s_divCounter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~6_combout\ = (!\bin7enable|Equal0~10_combout\ & \bin7enable|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|Equal0~10_combout\,
	datad => \bin7enable|Add0~24_combout\,
	combout => \bin7enable|s_divCounter~6_combout\);

-- Location: FF_X99_Y1_N1
\bin7enable|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(12));

-- Location: LCCOMB_X100_Y2_N28
\bin7enable|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~26_combout\ = (\bin7enable|s_divCounter\(13) & (!\bin7enable|Add0~25\)) # (!\bin7enable|s_divCounter\(13) & ((\bin7enable|Add0~25\) # (GND)))
-- \bin7enable|Add0~27\ = CARRY((!\bin7enable|Add0~25\) # (!\bin7enable|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(13),
	datad => VCC,
	cin => \bin7enable|Add0~25\,
	combout => \bin7enable|Add0~26_combout\,
	cout => \bin7enable|Add0~27\);

-- Location: FF_X100_Y2_N29
\bin7enable|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(13));

-- Location: LCCOMB_X100_Y2_N30
\bin7enable|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~28_combout\ = (\bin7enable|s_divCounter\(14) & (\bin7enable|Add0~27\ $ (GND))) # (!\bin7enable|s_divCounter\(14) & (!\bin7enable|Add0~27\ & VCC))
-- \bin7enable|Add0~29\ = CARRY((\bin7enable|s_divCounter\(14) & !\bin7enable|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(14),
	datad => VCC,
	cin => \bin7enable|Add0~27\,
	combout => \bin7enable|Add0~28_combout\,
	cout => \bin7enable|Add0~29\);

-- Location: FF_X100_Y2_N31
\bin7enable|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(14));

-- Location: LCCOMB_X100_Y1_N0
\bin7enable|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~30_combout\ = (\bin7enable|s_divCounter\(15) & (!\bin7enable|Add0~29\)) # (!\bin7enable|s_divCounter\(15) & ((\bin7enable|Add0~29\) # (GND)))
-- \bin7enable|Add0~31\ = CARRY((!\bin7enable|Add0~29\) # (!\bin7enable|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(15),
	datad => VCC,
	cin => \bin7enable|Add0~29\,
	combout => \bin7enable|Add0~30_combout\,
	cout => \bin7enable|Add0~31\);

-- Location: LCCOMB_X99_Y1_N6
\bin7enable|s_divCounter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~5_combout\ = (\bin7enable|Add0~30_combout\ & !\bin7enable|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7enable|Add0~30_combout\,
	datad => \bin7enable|Equal0~10_combout\,
	combout => \bin7enable|s_divCounter~5_combout\);

-- Location: FF_X99_Y1_N7
\bin7enable|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(15));

-- Location: LCCOMB_X100_Y1_N2
\bin7enable|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~32_combout\ = (\bin7enable|s_divCounter\(16) & (\bin7enable|Add0~31\ $ (GND))) # (!\bin7enable|s_divCounter\(16) & (!\bin7enable|Add0~31\ & VCC))
-- \bin7enable|Add0~33\ = CARRY((\bin7enable|s_divCounter\(16) & !\bin7enable|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(16),
	datad => VCC,
	cin => \bin7enable|Add0~31\,
	combout => \bin7enable|Add0~32_combout\,
	cout => \bin7enable|Add0~33\);

-- Location: FF_X100_Y1_N3
\bin7enable|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(16));

-- Location: LCCOMB_X100_Y1_N4
\bin7enable|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~34_combout\ = (\bin7enable|s_divCounter\(17) & (!\bin7enable|Add0~33\)) # (!\bin7enable|s_divCounter\(17) & ((\bin7enable|Add0~33\) # (GND)))
-- \bin7enable|Add0~35\ = CARRY((!\bin7enable|Add0~33\) # (!\bin7enable|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(17),
	datad => VCC,
	cin => \bin7enable|Add0~33\,
	combout => \bin7enable|Add0~34_combout\,
	cout => \bin7enable|Add0~35\);

-- Location: FF_X100_Y1_N5
\bin7enable|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(17));

-- Location: LCCOMB_X100_Y1_N6
\bin7enable|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~36_combout\ = (\bin7enable|s_divCounter\(18) & (\bin7enable|Add0~35\ $ (GND))) # (!\bin7enable|s_divCounter\(18) & (!\bin7enable|Add0~35\ & VCC))
-- \bin7enable|Add0~37\ = CARRY((\bin7enable|s_divCounter\(18) & !\bin7enable|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(18),
	datad => VCC,
	cin => \bin7enable|Add0~35\,
	combout => \bin7enable|Add0~36_combout\,
	cout => \bin7enable|Add0~37\);

-- Location: FF_X100_Y1_N7
\bin7enable|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(18));

-- Location: LCCOMB_X100_Y1_N8
\bin7enable|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~38_combout\ = (\bin7enable|s_divCounter\(19) & (!\bin7enable|Add0~37\)) # (!\bin7enable|s_divCounter\(19) & ((\bin7enable|Add0~37\) # (GND)))
-- \bin7enable|Add0~39\ = CARRY((!\bin7enable|Add0~37\) # (!\bin7enable|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(19),
	datad => VCC,
	cin => \bin7enable|Add0~37\,
	combout => \bin7enable|Add0~38_combout\,
	cout => \bin7enable|Add0~39\);

-- Location: LCCOMB_X101_Y1_N4
\bin7enable|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~0_combout\ = (\bin7enable|Add0~38_combout\ & !\bin7enable|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|Add0~38_combout\,
	datad => \bin7enable|Equal0~10_combout\,
	combout => \bin7enable|s_divCounter~0_combout\);

-- Location: FF_X101_Y1_N5
\bin7enable|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(19));

-- Location: LCCOMB_X100_Y1_N10
\bin7enable|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~40_combout\ = (\bin7enable|s_divCounter\(20) & (\bin7enable|Add0~39\ $ (GND))) # (!\bin7enable|s_divCounter\(20) & (!\bin7enable|Add0~39\ & VCC))
-- \bin7enable|Add0~41\ = CARRY((\bin7enable|s_divCounter\(20) & !\bin7enable|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(20),
	datad => VCC,
	cin => \bin7enable|Add0~39\,
	combout => \bin7enable|Add0~40_combout\,
	cout => \bin7enable|Add0~41\);

-- Location: LCCOMB_X99_Y1_N14
\bin7enable|s_divCounter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~4_combout\ = (\bin7enable|Add0~40_combout\ & !\bin7enable|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bin7enable|Add0~40_combout\,
	datad => \bin7enable|Equal0~10_combout\,
	combout => \bin7enable|s_divCounter~4_combout\);

-- Location: FF_X99_Y1_N15
\bin7enable|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(20));

-- Location: LCCOMB_X100_Y1_N12
\bin7enable|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~42_combout\ = (\bin7enable|s_divCounter\(21) & (!\bin7enable|Add0~41\)) # (!\bin7enable|s_divCounter\(21) & ((\bin7enable|Add0~41\) # (GND)))
-- \bin7enable|Add0~43\ = CARRY((!\bin7enable|Add0~41\) # (!\bin7enable|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(21),
	datad => VCC,
	cin => \bin7enable|Add0~41\,
	combout => \bin7enable|Add0~42_combout\,
	cout => \bin7enable|Add0~43\);

-- Location: FF_X100_Y1_N13
\bin7enable|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(21));

-- Location: LCCOMB_X100_Y1_N14
\bin7enable|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~44_combout\ = (\bin7enable|s_divCounter\(22) & (\bin7enable|Add0~43\ $ (GND))) # (!\bin7enable|s_divCounter\(22) & (!\bin7enable|Add0~43\ & VCC))
-- \bin7enable|Add0~45\ = CARRY((\bin7enable|s_divCounter\(22) & !\bin7enable|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(22),
	datad => VCC,
	cin => \bin7enable|Add0~43\,
	combout => \bin7enable|Add0~44_combout\,
	cout => \bin7enable|Add0~45\);

-- Location: FF_X100_Y1_N15
\bin7enable|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(22));

-- Location: LCCOMB_X100_Y1_N16
\bin7enable|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~46_combout\ = (\bin7enable|s_divCounter\(23) & (!\bin7enable|Add0~45\)) # (!\bin7enable|s_divCounter\(23) & ((\bin7enable|Add0~45\) # (GND)))
-- \bin7enable|Add0~47\ = CARRY((!\bin7enable|Add0~45\) # (!\bin7enable|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(23),
	datad => VCC,
	cin => \bin7enable|Add0~45\,
	combout => \bin7enable|Add0~46_combout\,
	cout => \bin7enable|Add0~47\);

-- Location: LCCOMB_X99_Y1_N16
\bin7enable|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|s_divCounter~3_combout\ = (!\bin7enable|Equal0~10_combout\ & \bin7enable|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|Equal0~10_combout\,
	datad => \bin7enable|Add0~46_combout\,
	combout => \bin7enable|s_divCounter~3_combout\);

-- Location: FF_X99_Y1_N17
\bin7enable|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(23));

-- Location: LCCOMB_X99_Y1_N18
\bin7enable|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~7_combout\ = (!\bin7enable|s_divCounter\(18) & (\bin7enable|s_divCounter\(20) & (!\bin7enable|s_divCounter\(22) & \bin7enable|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(18),
	datab => \bin7enable|s_divCounter\(20),
	datac => \bin7enable|s_divCounter\(22),
	datad => \bin7enable|s_divCounter\(23),
	combout => \bin7enable|Equal0~7_combout\);

-- Location: LCCOMB_X99_Y1_N8
\bin7enable|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~8_combout\ = (\bin7enable|s_divCounter\(15) & (\bin7enable|s_divCounter\(12) & (!\bin7enable|s_divCounter\(14) & !\bin7enable|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(15),
	datab => \bin7enable|s_divCounter\(12),
	datac => \bin7enable|s_divCounter\(14),
	datad => \bin7enable|s_divCounter\(11),
	combout => \bin7enable|Equal0~8_combout\);

-- Location: LCCOMB_X101_Y1_N22
\bin7enable|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~2_combout\ = (!\bin7enable|s_divCounter\(13) & (\bin7enable|s_divCounter\(19) & (!\bin7enable|s_divCounter\(17) & !\bin7enable|s_divCounter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(13),
	datab => \bin7enable|s_divCounter\(19),
	datac => \bin7enable|s_divCounter\(17),
	datad => \bin7enable|s_divCounter\(16),
	combout => \bin7enable|Equal0~2_combout\);

-- Location: LCCOMB_X100_Y1_N18
\bin7enable|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~48_combout\ = (\bin7enable|s_divCounter\(24) & (\bin7enable|Add0~47\ $ (GND))) # (!\bin7enable|s_divCounter\(24) & (!\bin7enable|Add0~47\ & VCC))
-- \bin7enable|Add0~49\ = CARRY((\bin7enable|s_divCounter\(24) & !\bin7enable|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(24),
	datad => VCC,
	cin => \bin7enable|Add0~47\,
	combout => \bin7enable|Add0~48_combout\,
	cout => \bin7enable|Add0~49\);

-- Location: FF_X100_Y1_N19
\bin7enable|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(24));

-- Location: LCCOMB_X100_Y1_N20
\bin7enable|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~50_combout\ = (\bin7enable|s_divCounter\(25) & (!\bin7enable|Add0~49\)) # (!\bin7enable|s_divCounter\(25) & ((\bin7enable|Add0~49\) # (GND)))
-- \bin7enable|Add0~51\ = CARRY((!\bin7enable|Add0~49\) # (!\bin7enable|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(25),
	datad => VCC,
	cin => \bin7enable|Add0~49\,
	combout => \bin7enable|Add0~50_combout\,
	cout => \bin7enable|Add0~51\);

-- Location: FF_X100_Y1_N21
\bin7enable|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(25));

-- Location: LCCOMB_X100_Y1_N22
\bin7enable|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~52_combout\ = (\bin7enable|s_divCounter\(26) & (\bin7enable|Add0~51\ $ (GND))) # (!\bin7enable|s_divCounter\(26) & (!\bin7enable|Add0~51\ & VCC))
-- \bin7enable|Add0~53\ = CARRY((\bin7enable|s_divCounter\(26) & !\bin7enable|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(26),
	datad => VCC,
	cin => \bin7enable|Add0~51\,
	combout => \bin7enable|Add0~52_combout\,
	cout => \bin7enable|Add0~53\);

-- Location: FF_X100_Y1_N23
\bin7enable|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(26));

-- Location: LCCOMB_X101_Y1_N18
\bin7enable|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~1_combout\ = (!\bin7enable|s_divCounter\(21) & (!\bin7enable|s_divCounter\(24) & (!\bin7enable|s_divCounter\(25) & !\bin7enable|s_divCounter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(21),
	datab => \bin7enable|s_divCounter\(24),
	datac => \bin7enable|s_divCounter\(25),
	datad => \bin7enable|s_divCounter\(26),
	combout => \bin7enable|Equal0~1_combout\);

-- Location: LCCOMB_X100_Y1_N24
\bin7enable|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~54_combout\ = (\bin7enable|s_divCounter\(27) & (!\bin7enable|Add0~53\)) # (!\bin7enable|s_divCounter\(27) & ((\bin7enable|Add0~53\) # (GND)))
-- \bin7enable|Add0~55\ = CARRY((!\bin7enable|Add0~53\) # (!\bin7enable|s_divCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(27),
	datad => VCC,
	cin => \bin7enable|Add0~53\,
	combout => \bin7enable|Add0~54_combout\,
	cout => \bin7enable|Add0~55\);

-- Location: FF_X100_Y1_N25
\bin7enable|s_divCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(27));

-- Location: LCCOMB_X100_Y1_N26
\bin7enable|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~56_combout\ = (\bin7enable|s_divCounter\(28) & (\bin7enable|Add0~55\ $ (GND))) # (!\bin7enable|s_divCounter\(28) & (!\bin7enable|Add0~55\ & VCC))
-- \bin7enable|Add0~57\ = CARRY((\bin7enable|s_divCounter\(28) & !\bin7enable|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(28),
	datad => VCC,
	cin => \bin7enable|Add0~55\,
	combout => \bin7enable|Add0~56_combout\,
	cout => \bin7enable|Add0~57\);

-- Location: FF_X100_Y1_N27
\bin7enable|s_divCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(28));

-- Location: LCCOMB_X100_Y1_N28
\bin7enable|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~58_combout\ = (\bin7enable|s_divCounter\(29) & (!\bin7enable|Add0~57\)) # (!\bin7enable|s_divCounter\(29) & ((\bin7enable|Add0~57\) # (GND)))
-- \bin7enable|Add0~59\ = CARRY((!\bin7enable|Add0~57\) # (!\bin7enable|s_divCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|s_divCounter\(29),
	datad => VCC,
	cin => \bin7enable|Add0~57\,
	combout => \bin7enable|Add0~58_combout\,
	cout => \bin7enable|Add0~59\);

-- Location: FF_X100_Y1_N29
\bin7enable|s_divCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(29));

-- Location: LCCOMB_X100_Y1_N30
\bin7enable|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Add0~60_combout\ = \bin7enable|s_divCounter\(30) $ (!\bin7enable|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(30),
	cin => \bin7enable|Add0~59\,
	combout => \bin7enable|Add0~60_combout\);

-- Location: FF_X100_Y1_N31
\bin7enable|s_divCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|s_divCounter\(30));

-- Location: LCCOMB_X101_Y1_N8
\bin7enable|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~0_combout\ = (!\bin7enable|s_divCounter\(28) & (!\bin7enable|s_divCounter\(29) & (!\bin7enable|s_divCounter\(27) & !\bin7enable|s_divCounter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(28),
	datab => \bin7enable|s_divCounter\(29),
	datac => \bin7enable|s_divCounter\(27),
	datad => \bin7enable|s_divCounter\(30),
	combout => \bin7enable|Equal0~0_combout\);

-- Location: LCCOMB_X101_Y2_N8
\bin7enable|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~3_combout\ = (\bin7enable|s_divCounter\(5) & \bin7enable|s_divCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(5),
	datad => \bin7enable|s_divCounter\(4),
	combout => \bin7enable|Equal0~3_combout\);

-- Location: LCCOMB_X100_Y2_N0
\bin7enable|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~4_combout\ = (\bin7enable|s_divCounter\(2) & (\bin7enable|s_divCounter\(1) & (\bin7enable|s_divCounter\(3) & \bin7enable|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(2),
	datab => \bin7enable|s_divCounter\(1),
	datac => \bin7enable|s_divCounter\(3),
	datad => \bin7enable|s_divCounter\(0),
	combout => \bin7enable|Equal0~4_combout\);

-- Location: LCCOMB_X101_Y1_N10
\bin7enable|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~5_combout\ = (!\bin7enable|s_divCounter\(7) & (\bin7enable|s_divCounter\(9) & (\bin7enable|Equal0~3_combout\ & \bin7enable|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(7),
	datab => \bin7enable|s_divCounter\(9),
	datac => \bin7enable|Equal0~3_combout\,
	datad => \bin7enable|Equal0~4_combout\,
	combout => \bin7enable|Equal0~5_combout\);

-- Location: LCCOMB_X101_Y1_N12
\bin7enable|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~6_combout\ = (\bin7enable|Equal0~2_combout\ & (\bin7enable|Equal0~1_combout\ & (\bin7enable|Equal0~0_combout\ & \bin7enable|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|Equal0~2_combout\,
	datab => \bin7enable|Equal0~1_combout\,
	datac => \bin7enable|Equal0~0_combout\,
	datad => \bin7enable|Equal0~5_combout\,
	combout => \bin7enable|Equal0~6_combout\);

-- Location: LCCOMB_X99_Y1_N24
\bin7enable|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|Equal0~10_combout\ = (\bin7enable|Equal0~9_combout\ & (\bin7enable|Equal0~7_combout\ & (\bin7enable|Equal0~8_combout\ & \bin7enable|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|Equal0~9_combout\,
	datab => \bin7enable|Equal0~7_combout\,
	datac => \bin7enable|Equal0~8_combout\,
	datad => \bin7enable|Equal0~6_combout\,
	combout => \bin7enable|Equal0~10_combout\);

-- Location: LCCOMB_X99_Y1_N28
\bin7enable|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|clkOut~0_combout\ = (\bin7enable|s_divCounter\(18) & (!\bin7enable|s_divCounter\(20) & (\bin7enable|s_divCounter\(22) & !\bin7enable|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(18),
	datab => \bin7enable|s_divCounter\(20),
	datac => \bin7enable|s_divCounter\(22),
	datad => \bin7enable|s_divCounter\(23),
	combout => \bin7enable|clkOut~0_combout\);

-- Location: LCCOMB_X99_Y1_N22
\bin7enable|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|clkOut~1_combout\ = (!\bin7enable|s_divCounter\(15) & (!\bin7enable|s_divCounter\(12) & (\bin7enable|s_divCounter\(14) & \bin7enable|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|s_divCounter\(15),
	datab => \bin7enable|s_divCounter\(12),
	datac => \bin7enable|s_divCounter\(14),
	datad => \bin7enable|s_divCounter\(11),
	combout => \bin7enable|clkOut~1_combout\);

-- Location: LCCOMB_X99_Y1_N26
\bin7enable|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|clkOut~2_combout\ = (\bin7enable|clkOut~1_combout\ & (!\bin7enable|s_divCounter\(10) & (!\bin7enable|s_divCounter\(6) & \bin7enable|s_divCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|clkOut~1_combout\,
	datab => \bin7enable|s_divCounter\(10),
	datac => \bin7enable|s_divCounter\(6),
	datad => \bin7enable|s_divCounter\(8),
	combout => \bin7enable|clkOut~2_combout\);

-- Location: LCCOMB_X99_Y1_N20
\bin7enable|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|clkOut~3_combout\ = (\bin7enable|clkOut~q\) # ((\bin7enable|clkOut~0_combout\ & (\bin7enable|clkOut~2_combout\ & \bin7enable|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin7enable|clkOut~q\,
	datab => \bin7enable|clkOut~0_combout\,
	datac => \bin7enable|clkOut~2_combout\,
	datad => \bin7enable|Equal0~6_combout\,
	combout => \bin7enable|clkOut~3_combout\);

-- Location: LCCOMB_X99_Y1_N12
\bin7enable|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bin7enable|clkOut~4_combout\ = (!\bin7enable|Equal0~10_combout\ & \bin7enable|clkOut~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bin7enable|Equal0~10_combout\,
	datad => \bin7enable|clkOut~3_combout\,
	combout => \bin7enable|clkOut~4_combout\);

-- Location: FF_X99_Y1_N13
\bin7enable|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \bin7enable|clkOut~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bin7enable|clkOut~q\);

-- Location: LCCOMB_X89_Y13_N16
\drinksFSM|static~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|static~0_combout\ = (\drinksFSM|state.Hello~q\) # (\bin7enable|clkOut~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Hello~q\,
	datad => \bin7enable|clkOut~q\,
	combout => \drinksFSM|static~0_combout\);

-- Location: FF_X89_Y13_N17
\drinksFSM|static\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|static~0_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|static~q\);

-- Location: LCCOMB_X87_Y13_N16
\hexdisplay4|todisplay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[0]~0_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay4|Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay4|Mux6~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay4|todisplay[0]~0_combout\);

-- Location: LCCOMB_X88_Y13_N22
\hexdisplay4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux5~0_combout\ = (!\drinksFSM|drink\(3) & ((\drinksFSM|drink\(2) & (\drinksFSM|drink\(0) $ (!\drinksFSM|drink\(14)))) # (!\drinksFSM|drink\(2) & (\drinksFSM|drink\(0) & !\drinksFSM|drink\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y13_N28
\hexdisplay4|todisplay[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[1]~1_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay4|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay4|Mux5~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay4|todisplay[1]~1_combout\);

-- Location: LCCOMB_X88_Y13_N10
\hexdisplay4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux4~0_combout\ = (!\drinksFSM|drink\(3) & ((\drinksFSM|drink\(2) & ((\drinksFSM|drink\(0)) # (!\drinksFSM|drink\(14)))) # (!\drinksFSM|drink\(2) & (\drinksFSM|drink\(0) & !\drinksFSM|drink\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux4~0_combout\);

-- Location: LCCOMB_X87_Y13_N14
\hexdisplay4|todisplay[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[2]~2_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay4|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay4|Mux4~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay4|todisplay[2]~2_combout\);

-- Location: LCCOMB_X88_Y13_N24
\hexdisplay4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux3~0_combout\ = (!\drinksFSM|drink\(3) & ((\drinksFSM|drink\(2) & ((!\drinksFSM|drink\(14)) # (!\drinksFSM|drink\(0)))) # (!\drinksFSM|drink\(2) & ((\drinksFSM|drink\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y13_N8
\hexdisplay4|todisplay[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[3]~3_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay4|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexdisplay4|Mux3~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay4|todisplay[3]~3_combout\);

-- Location: LCCOMB_X88_Y13_N30
\hexdisplay4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux2~0_combout\ = (\drinksFSM|drink\(2) & (((!\drinksFSM|drink\(3))))) # (!\drinksFSM|drink\(2) & ((\drinksFSM|drink\(14) & ((!\drinksFSM|drink\(3)))) # (!\drinksFSM|drink\(14) & ((\drinksFSM|drink\(0)) # (\drinksFSM|drink\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y12_N28
\hexdisplay4|todisplay[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[4]~4_combout\ = (!\hexdisplay4|Mux2~0_combout\) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \drinksFSM|static~q\,
	datac => \hexdisplay4|Mux2~0_combout\,
	combout => \hexdisplay4|todisplay[4]~4_combout\);

-- Location: LCCOMB_X88_Y13_N20
\hexdisplay4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|Mux0~0_combout\ = (\drinksFSM|drink\(0) & (!\drinksFSM|drink\(3) & ((\drinksFSM|drink\(2)) # (!\drinksFSM|drink\(14))))) # (!\drinksFSM|drink\(0) & (!\drinksFSM|drink\(2) & (\drinksFSM|drink\(14) $ (\drinksFSM|drink\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(2),
	datab => \drinksFSM|drink\(0),
	datac => \drinksFSM|drink\(14),
	datad => \drinksFSM|drink\(3),
	combout => \hexdisplay4|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y13_N6
\hexdisplay4|todisplay[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay4|todisplay[6]~5_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay4|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay4|Mux0~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay4|todisplay[6]~5_combout\);

-- Location: LCCOMB_X88_Y13_N2
\drinksFSM|drink~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~4_combout\ = (\drinksFSM|state.Tea~q\) # (\drinksFSM|state.HotChoc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Tea~q\,
	datad => \drinksFSM|state.HotChoc~q\,
	combout => \drinksFSM|drink~4_combout\);

-- Location: FF_X88_Y13_N3
\drinksFSM|drink[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|drink~4_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(6));

-- Location: LCCOMB_X88_Y13_N18
\drinksFSM|drink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~2_combout\ = (\drinksFSM|state.Tea~q\) # (!\drinksFSM|state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Tea~q\,
	datad => \drinksFSM|state.Hello~q\,
	combout => \drinksFSM|drink~2_combout\);

-- Location: FF_X88_Y13_N19
\drinksFSM|drink[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|drink~2_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(4));

-- Location: FF_X90_Y13_N27
\drinksFSM|drink[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|state.Coffee~q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(7));

-- Location: FF_X88_Y13_N5
\drinksFSM|drink[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \drinksFSM|drink~3_combout\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(5));

-- Location: LCCOMB_X87_Y13_N24
\hexdisplay5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux6~0_combout\ = (\drinksFSM|drink\(6) & ((\drinksFSM|drink\(7)) # ((\drinksFSM|drink\(4) & !\drinksFSM|drink\(5))))) # (!\drinksFSM|drink\(6) & ((\drinksFSM|drink\(4)) # (\drinksFSM|drink\(7) $ (!\drinksFSM|drink\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y13_N30
\hexdisplay5|todisplay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[0]~0_combout\ = (\hexdisplay5|Mux6~0_combout\) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexdisplay5|Mux6~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay5|todisplay[0]~0_combout\);

-- Location: LCCOMB_X87_Y13_N20
\hexdisplay5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux5~0_combout\ = (!\drinksFSM|drink\(7) & ((\drinksFSM|drink\(6) & (\drinksFSM|drink\(4) $ (!\drinksFSM|drink\(5)))) # (!\drinksFSM|drink\(6) & (\drinksFSM|drink\(4) & !\drinksFSM|drink\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux5~0_combout\);

-- Location: LCCOMB_X87_Y13_N18
\hexdisplay5|todisplay[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[1]~1_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay5|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hexdisplay5|Mux5~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay5|todisplay[1]~1_combout\);

-- Location: LCCOMB_X87_Y13_N12
\hexdisplay5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux4~0_combout\ = (!\drinksFSM|drink\(7) & ((\drinksFSM|drink\(6) & ((\drinksFSM|drink\(4)) # (!\drinksFSM|drink\(5)))) # (!\drinksFSM|drink\(6) & (\drinksFSM|drink\(4) & !\drinksFSM|drink\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y12_N18
\hexdisplay5|todisplay[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[2]~2_combout\ = (!\hexdisplay5|Mux4~0_combout\) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|static~q\,
	datad => \hexdisplay5|Mux4~0_combout\,
	combout => \hexdisplay5|todisplay[2]~2_combout\);

-- Location: LCCOMB_X87_Y13_N26
\hexdisplay5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux3~0_combout\ = (!\drinksFSM|drink\(7) & ((\drinksFSM|drink\(6) & ((!\drinksFSM|drink\(5)) # (!\drinksFSM|drink\(4)))) # (!\drinksFSM|drink\(6) & ((\drinksFSM|drink\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y13_N28
\hexdisplay5|todisplay[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[3]~3_combout\ = (!\drinksFSM|static~q\) # (!\hexdisplay5|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay5|Mux3~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay5|todisplay[3]~3_combout\);

-- Location: LCCOMB_X87_Y13_N10
\hexdisplay5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux2~0_combout\ = (\drinksFSM|drink\(6) & (((\drinksFSM|drink\(7))))) # (!\drinksFSM|drink\(6) & ((\drinksFSM|drink\(7) & ((\drinksFSM|drink\(5)))) # (!\drinksFSM|drink\(7) & (!\drinksFSM|drink\(4) & !\drinksFSM|drink\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux2~0_combout\);

-- Location: LCCOMB_X87_Y13_N0
\hexdisplay5|todisplay[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[4]~4_combout\ = (\hexdisplay5|Mux2~0_combout\) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hexdisplay5|Mux2~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay5|todisplay[4]~4_combout\);

-- Location: LCCOMB_X87_Y13_N22
\hexdisplay5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|Mux0~0_combout\ = (\drinksFSM|drink\(4) & ((\drinksFSM|drink\(7)) # ((!\drinksFSM|drink\(6) & \drinksFSM|drink\(5))))) # (!\drinksFSM|drink\(4) & ((\drinksFSM|drink\(6)) # (\drinksFSM|drink\(7) $ (!\drinksFSM|drink\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(6),
	datab => \drinksFSM|drink\(4),
	datac => \drinksFSM|drink\(7),
	datad => \drinksFSM|drink\(5),
	combout => \hexdisplay5|Mux0~0_combout\);

-- Location: LCCOMB_X87_Y13_N4
\hexdisplay5|todisplay[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay5|todisplay[6]~5_combout\ = (\hexdisplay5|Mux0~0_combout\) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hexdisplay5|Mux0~0_combout\,
	datad => \drinksFSM|static~q\,
	combout => \hexdisplay5|todisplay[6]~5_combout\);

-- Location: LCCOMB_X88_Y13_N16
\drinksFSM|drink~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~5_combout\ = (\drinksFSM|state.Coffee~q\) # (!\drinksFSM|state.Hello~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Coffee~q\,
	datad => \drinksFSM|state.Hello~q\,
	combout => \drinksFSM|drink~5_combout\);

-- Location: FF_X89_Y13_N3
\drinksFSM|drink[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|drink~5_combout\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(9));

-- Location: FF_X90_Y13_N21
\drinksFSM|drink[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|state.Hello~q\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(13));

-- Location: LCCOMB_X88_Y13_N26
\drinksFSM|drink~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink~6_combout\ = (\drinksFSM|state.Choice~q\) # (\drinksFSM|state.Coffee~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|state.Choice~q\,
	datac => \drinksFSM|state.Coffee~q\,
	combout => \drinksFSM|drink~6_combout\);

-- Location: FF_X89_Y13_N21
\drinksFSM|drink[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|drink~6_combout\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(10));

-- Location: LCCOMB_X89_Y11_N20
\hexdisplay6|todisplay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[0]~0_combout\ = ((\drinksFSM|drink\(9) & (\drinksFSM|drink\(13) & !\drinksFSM|drink\(10))) # (!\drinksFSM|drink\(9) & ((\drinksFSM|drink\(13)) # (!\drinksFSM|drink\(10))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[0]~0_combout\);

-- Location: LCCOMB_X89_Y11_N2
\hexdisplay6|todisplay[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[1]~1_combout\ = ((\drinksFSM|drink\(9) & ((!\drinksFSM|drink\(10)) # (!\drinksFSM|drink\(13)))) # (!\drinksFSM|drink\(9) & (\drinksFSM|drink\(13) $ (!\drinksFSM|drink\(10))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[1]~1_combout\);

-- Location: LCCOMB_X89_Y11_N28
\hexdisplay6|todisplay[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[2]~2_combout\ = ((\drinksFSM|drink\(9) & ((!\drinksFSM|drink\(10)) # (!\drinksFSM|drink\(13)))) # (!\drinksFSM|drink\(9) & (!\drinksFSM|drink\(13) & !\drinksFSM|drink\(10)))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[2]~2_combout\);

-- Location: LCCOMB_X89_Y11_N18
\hexdisplay6|todisplay[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[3]~3_combout\ = ((\drinksFSM|drink\(9) & (\drinksFSM|drink\(13) & \drinksFSM|drink\(10))) # (!\drinksFSM|drink\(9) & ((!\drinksFSM|drink\(10))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[3]~3_combout\);

-- Location: LCCOMB_X89_Y11_N8
\hexdisplay6|todisplay[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[4]~4_combout\ = ((!\drinksFSM|drink\(9) & (!\drinksFSM|drink\(13) & !\drinksFSM|drink\(10)))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[4]~4_combout\);

-- Location: LCCOMB_X89_Y11_N30
\hexdisplay6|todisplay[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay6|todisplay[6]~5_combout\ = (\drinksFSM|drink\(13) $ (((\drinksFSM|drink\(10)) # (!\drinksFSM|drink\(9))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(9),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(10),
	combout => \hexdisplay6|todisplay[6]~5_combout\);

-- Location: LCCOMB_X86_Y13_N10
\drinksFSM|drink[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \drinksFSM|drink[12]~10_combout\ = !\drinksFSM|state.Hello~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \drinksFSM|state.Hello~q\,
	combout => \drinksFSM|drink[12]~10_combout\);

-- Location: FF_X89_Y13_N7
\drinksFSM|drink[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \drinksFSM|drink[12]~10_combout\,
	sload => VCC,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \drinksFSM|drink\(12));

-- Location: LCCOMB_X89_Y11_N16
\hexdisplay7|todisplay[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[0]~0_combout\ = ((\drinksFSM|drink\(14) & (!\drinksFSM|drink\(13) & \drinksFSM|drink\(12))) # (!\drinksFSM|drink\(14) & ((\drinksFSM|drink\(12)) # (!\drinksFSM|drink\(13))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[0]~0_combout\);

-- Location: LCCOMB_X89_Y11_N10
\hexdisplay7|todisplay[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[1]~1_combout\ = ((\drinksFSM|drink\(14) & (\drinksFSM|drink\(13) $ (\drinksFSM|drink\(12)))) # (!\drinksFSM|drink\(14) & ((\drinksFSM|drink\(13)) # (!\drinksFSM|drink\(12))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[1]~1_combout\);

-- Location: LCCOMB_X89_Y11_N4
\hexdisplay7|todisplay[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[2]~2_combout\ = ((\drinksFSM|drink\(14) & (\drinksFSM|drink\(13) & !\drinksFSM|drink\(12))) # (!\drinksFSM|drink\(14) & ((\drinksFSM|drink\(13)) # (!\drinksFSM|drink\(12))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[2]~2_combout\);

-- Location: LCCOMB_X89_Y11_N26
\hexdisplay7|todisplay[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[3]~3_combout\ = ((\drinksFSM|drink\(14) & (\drinksFSM|drink\(13) & \drinksFSM|drink\(12))) # (!\drinksFSM|drink\(14) & (!\drinksFSM|drink\(13)))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[3]~3_combout\);

-- Location: LCCOMB_X89_Y11_N12
\hexdisplay7|todisplay[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[4]~4_combout\ = ((!\drinksFSM|drink\(14) & (!\drinksFSM|drink\(13) & !\drinksFSM|drink\(12)))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[4]~4_combout\);

-- Location: LCCOMB_X89_Y11_N22
\hexdisplay7|todisplay[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hexdisplay7|todisplay[6]~5_combout\ = (\drinksFSM|drink\(12) $ (((\drinksFSM|drink\(14)) # (!\drinksFSM|drink\(13))))) # (!\drinksFSM|static~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \drinksFSM|drink\(14),
	datab => \drinksFSM|drink\(13),
	datac => \drinksFSM|static~q\,
	datad => \drinksFSM|drink\(12),
	combout => \hexdisplay7|todisplay[6]~5_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


