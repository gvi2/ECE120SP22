-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.1 Build 263 12/14/2018 SJ Pro Edition"

-- DATE "02/10/2022 16:31:29"

-- 
-- Device: Altera 10CX220YF780I5G Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10GX;
LIBRARY IEEE;
USE CYCLONE10GX.CYCLONE10GX_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab3assignment IS
    PORT (
	Cout : OUT std_logic;
	s : OUT std_logic;
	Cin : IN std_logic;
	B : IN std_logic;
	A : IN std_logic
	);
END Lab3assignment;

-- Design Ports Information
-- Cout	=>  Location: PIN_AB5,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- s	=>  Location: PIN_AG3,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U8,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- B	=>  Location: PIN_T7,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- A	=>  Location: PIN_R5,	 I/O Standard: 1.8 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3assignment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL \Cout~pad_padout\ : std_logic;
SIGNAL \Cout~padSIMOUT\ : std_logic;
SIGNAL \s~pad_padout\ : std_logic;
SIGNAL \s~padSIMOUT\ : std_logic;
SIGNAL \Cin~pad_padout\ : std_logic;
SIGNAL \B~pad_padout\ : std_logic;
SIGNAL \A~pad_padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;

BEGIN

Cout <= ww_Cout;
s <= ww_s;
ww_Cin <= Cin;
ww_B <= B;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;

-- Location: IOOBUF_X102_Y13_N48
\Cout~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst3~0_combout\,
	devoe => ww_devoe,
	O => ww_Cout);

-- Location: IOOBUF_X102_Y6_N33
\s~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst18~0_combout\,
	devoe => ww_devoe,
	O => ww_s);

-- Location: IOIBUF_X102_Y38_N62
\A~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_A,
	O => \A~input_o\);

-- Location: IOIBUF_X102_Y40_N62
\B~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_B,
	O => \B~input_o\);

-- Location: IOIBUF_X102_Y33_N62
\Cin~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_Cin,
	O => \Cin~input_o\);

-- Location: LABCELL_X101_Y53_N27
\inst3~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = ( \Cin~input_o\ & ( (\B~input_o\) # (\A~input_o\) ) ) # ( !\Cin~input_o\ & ( (\A~input_o\ & \B~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_A~input_o\,
	DATAC => \ALT_INV_B~input_o\,
	DATAF => \ALT_INV_Cin~input_o\,
	COMBOUT => \inst3~0_combout\);

-- Location: LABCELL_X101_Y53_N42
\inst18~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = ( \Cin~input_o\ & ( !\B~input_o\ $ (\A~input_o\) ) ) # ( !\Cin~input_o\ & ( !\B~input_o\ $ (!\A~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_B~input_o\,
	DATAC => \ALT_INV_A~input_o\,
	DATAF => \ALT_INV_Cin~input_o\,
	COMBOUT => \inst18~0_combout\);
END structure;


