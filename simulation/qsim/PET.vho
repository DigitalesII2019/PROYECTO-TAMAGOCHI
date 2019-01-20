-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Standard Edition"

-- DATE "01/11/2019 15:44:23"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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

ENTITY 	mss_clock_seg IS
    PORT (
	clock : IN std_logic;
	clock_seg : IN std_logic;
	clock_s : OUT std_logic
	);
END mss_clock_seg;

ARCHITECTURE structure OF mss_clock_seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_clock_seg : std_logic;
SIGNAL ww_clock_s : std_logic;
SIGNAL \clock_s~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock_seg~input_o\ : std_logic;
SIGNAL \y~6_combout\ : std_logic;
SIGNAL \y.Tb~q\ : std_logic;
SIGNAL \y~5_combout\ : std_logic;
SIGNAL \y.Tc~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_clock_seg <= clock_seg;
clock_s <= ww_clock_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \y.Tc~q\,
	devoe => ww_devoe,
	o => \clock_s~output_o\);

\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clock_seg~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_seg,
	o => \clock_seg~input_o\);

\y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \y~6_combout\ = (\clock_seg~input_o\ & !\y.Tc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_seg~input_o\,
	datad => \y.Tc~q\,
	combout => \y~6_combout\);

\y.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.Tb~q\);

\y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \y~5_combout\ = (!\clock_seg~input_o\ & \y.Tb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_seg~input_o\,
	datad => \y.Tb~q\,
	combout => \y~5_combout\);

\y.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.Tc~q\);

ww_clock_s <= \clock_s~output_o\;
END structure;


