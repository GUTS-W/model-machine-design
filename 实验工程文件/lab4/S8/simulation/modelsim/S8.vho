-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/06/2023 15:10:18"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	S8 IS
    PORT (
	S8 : OUT std_logic;
	W2 : IN std_logic;
	T1 : IN std_logic;
	DIV : IN std_logic
	);
END S8;

-- Design Ports Information
-- S8	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W2	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIV	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF S8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S8 : std_logic;
SIGNAL ww_W2 : std_logic;
SIGNAL ww_T1 : std_logic;
SIGNAL ww_DIV : std_logic;
SIGNAL \S8~output_o\ : std_logic;
SIGNAL \W2~input_o\ : std_logic;
SIGNAL \DIV~input_o\ : std_logic;
SIGNAL \T1~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;

BEGIN

S8 <= ww_S8;
ww_W2 <= W2;
ww_T1 <= T1;
ww_DIV <= DIV;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\S8~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \S8~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\W2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W2,
	o => \W2~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\DIV~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIV,
	o => \DIV~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\T1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T1,
	o => \T1~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\inst~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\W2~input_o\ & (\DIV~input_o\ & \T1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \W2~input_o\,
	datac => \DIV~input_o\,
	datad => \T1~input_o\,
	combout => \inst~0_combout\);

ww_S8 <= \S8~output_o\;
END structure;


