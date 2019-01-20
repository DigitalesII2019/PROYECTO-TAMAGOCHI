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
-- Generated on "01/11/2019 15:44:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mss_clock_seg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mss_clock_seg_vhd_vec_tst IS
END mss_clock_seg_vhd_vec_tst;
ARCHITECTURE mss_clock_seg_arch OF mss_clock_seg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL clock_s : STD_LOGIC;
SIGNAL clock_seg : STD_LOGIC;
COMPONENT mss_clock_seg
	PORT (
	clock : IN STD_LOGIC;
	clock_s : OUT STD_LOGIC;
	clock_seg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mss_clock_seg
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	clock_s => clock_s,
	clock_seg => clock_seg
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- clock_seg
t_prcs_clock_seg: PROCESS
BEGIN
LOOP
	clock_seg <= '0';
	WAIT FOR 50000 ps;
	clock_seg <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_seg;
END mss_clock_seg_arch;
