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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/10/2019 18:00:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PET
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PET_vhd_vec_tst IS
END PET_vhd_vec_tst;
ARCHITECTURE PET_arch OF PET_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL banio : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL clock_manual : STD_LOGIC;
SIGNAL comer : STD_LOGIC;
SIGNAL dormir : STD_LOGIC;
SIGNAL enter : STD_LOGIC;
SIGNAL jugar : STD_LOGIC;
SIGNAL LuzAmarilla : STD_LOGIC;
SIGNAL LuzRoja : STD_LOGIC;
SIGNAL LuzVerde : STD_LOGIC;
SIGNAL mostrar : STD_LOGIC;
SIGNAL num_bcd : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL num_h : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pre_muestra : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL set : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT PET
	PORT (
	banio : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	clock_manual : IN STD_LOGIC;
	comer : IN STD_LOGIC;
	dormir : IN STD_LOGIC;
	enter : IN STD_LOGIC;
	jugar : IN STD_LOGIC;
	LuzAmarilla : OUT STD_LOGIC;
	LuzRoja : OUT STD_LOGIC;
	LuzVerde : OUT STD_LOGIC;
	mostrar : IN STD_LOGIC;
	num_bcd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	num_h : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pre_muestra : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	set : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PET
	PORT MAP (
-- list connections between master ports and signals
	banio => banio,
	clock => clock,
	clock_manual => clock_manual,
	comer => comer,
	dormir => dormir,
	enter => enter,
	jugar => jugar,
	LuzAmarilla => LuzAmarilla,
	LuzRoja => LuzRoja,
	LuzVerde => LuzVerde,
	mostrar => mostrar,
	num_bcd => num_bcd,
	num_h => num_h,
	pre_muestra => pre_muestra,
	reset => reset,
	set => set,
	start => start
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 10000 ps;
	start <= '1';
	WAIT FOR 10000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '0';
	WAIT FOR 30000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 60000 ps;
	set <= '1';
	WAIT FOR 20000 ps;
	set <= '0';
	WAIT FOR 20000 ps;
	set <= '1';
	WAIT FOR 20000 ps;
	set <= '0';
	WAIT FOR 20000 ps;
	set <= '1';
	WAIT FOR 20000 ps;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;

-- enter
t_prcs_enter: PROCESS
BEGIN
	enter <= '0';
	WAIT FOR 210000 ps;
	enter <= '1';
	WAIT FOR 10000 ps;
	enter <= '0';
	WAIT FOR 10000 ps;
	enter <= '1';
	WAIT FOR 10000 ps;
	enter <= '0';
WAIT;
END PROCESS t_prcs_enter;

-- comer
t_prcs_comer: PROCESS
BEGIN
	comer <= '0';
WAIT;
END PROCESS t_prcs_comer;

-- jugar
t_prcs_jugar: PROCESS
BEGIN
	jugar <= '0';
WAIT;
END PROCESS t_prcs_jugar;

-- banio
t_prcs_banio: PROCESS
BEGIN
	banio <= '0';
	WAIT FOR 280000 ps;
	banio <= '1';
	WAIT FOR 20000 ps;
	banio <= '0';
	WAIT FOR 180000 ps;
	banio <= '1';
	WAIT FOR 20000 ps;
	banio <= '0';
WAIT;
END PROCESS t_prcs_banio;

-- dormir
t_prcs_dormir: PROCESS
BEGIN
	dormir <= '0';
WAIT;
END PROCESS t_prcs_dormir;

-- mostrar
t_prcs_mostrar: PROCESS
BEGIN
	mostrar <= '0';
	WAIT FOR 1140000 ps;
	mostrar <= '1';
	WAIT FOR 20000 ps;
	mostrar <= '0';
WAIT;
END PROCESS t_prcs_mostrar;
END PET_arch;
