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

-- DATE "03/10/2022 00:00:16"

-- 
-- Device: Altera 10CX220YF780I5G Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10GX;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10GX.CYCLONE10GX_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab7Extension IS
    PORT (
	A : OUT std_logic;
	s1 : OUT std_logic;
	s2 : OUT std_logic;
	s0 : OUT std_logic;
	P : OUT std_logic;
	set : IN std_logic;
	rst : IN std_logic;
	CLK : IN std_logic;
	T : IN std_logic
	);
END Lab7Extension;

-- Design Ports Information
-- A	=>  Location: PIN_AF2,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AA1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- s2	=>  Location: PIN_AE1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AH3,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- P	=>  Location: PIN_Y5,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- set	=>  Location: PIN_G1,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M4,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AA7,	 I/O Standard: 1.8 V,	 Current Strength: Default
-- T	=>  Location: PIN_U3,	 I/O Standard: 1.8 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab7Extension IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_P : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL \A~pad_padout\ : std_logic;
SIGNAL \A~padSIMOUT\ : std_logic;
SIGNAL \s1~pad_padout\ : std_logic;
SIGNAL \s1~padSIMOUT\ : std_logic;
SIGNAL \s2~pad_padout\ : std_logic;
SIGNAL \s2~padSIMOUT\ : std_logic;
SIGNAL \s0~pad_padout\ : std_logic;
SIGNAL \s0~padSIMOUT\ : std_logic;
SIGNAL \P~pad_padout\ : std_logic;
SIGNAL \P~padSIMOUT\ : std_logic;
SIGNAL \set~pad_padout\ : std_logic;
SIGNAL \rst~pad_padout\ : std_logic;
SIGNAL \CLK~pad_padout\ : std_logic;
SIGNAL \T~pad_padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst~_emulated_q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \nslinst7~combout\ : std_logic;
SIGNAL \inst2~3_combout\ : std_logic;
SIGNAL \inst2~_emulated_q\ : std_logic;
SIGNAL \inst2~2_combout\ : std_logic;
SIGNAL \nslnst5~combout\ : std_logic;
SIGNAL \inst1~1_combout\ : std_logic;
SIGNAL \inst1~_emulated_q\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \ALT_INV_T~input_o\ : std_logic;
SIGNAL \ALT_INV_inst1~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst1~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~2_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_inst~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_nslinst7~combout\ : std_logic;
SIGNAL \ALT_INV_nslnst5~combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_set~input_o\ : std_logic;

BEGIN

A <= ww_A;
s1 <= ww_s1;
s2 <= ww_s2;
s0 <= ww_s0;
P <= ww_P;
ww_set <= set;
ww_rst <= rst;
ww_CLK <= CLK;
ww_T <= T;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_T~input_o\ <= NOT \T~input_o\;
\ALT_INV_inst1~0_combout\ <= NOT \inst1~0_combout\;
\ALT_INV_inst1~_emulated_q\ <= NOT \inst1~_emulated_q\;
\ALT_INV_inst2~0_combout\ <= NOT \inst2~0_combout\;
\ALT_INV_inst2~1_combout\ <= NOT \inst2~1_combout\;
\ALT_INV_inst2~2_combout\ <= NOT \inst2~2_combout\;
\ALT_INV_inst2~_emulated_q\ <= NOT \inst2~_emulated_q\;
\ALT_INV_inst~0_combout\ <= NOT \inst~0_combout\;
\ALT_INV_inst~_emulated_q\ <= NOT \inst~_emulated_q\;
\ALT_INV_nslinst7~combout\ <= NOT \nslinst7~combout\;
\ALT_INV_nslnst5~combout\ <= NOT \nslnst5~combout\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_set~input_o\ <= NOT \set~input_o\;

-- Location: IOOBUF_X102_Y15_N33
\A~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst37~0_combout\,
	devoe => ww_devoe,
	O => ww_A);

-- Location: IOOBUF_X102_Y15_N48
\s1~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst1~0_combout\,
	devoe => ww_devoe,
	O => ww_s1);

-- Location: IOOBUF_X102_Y14_N33
\s2~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst~0_combout\,
	devoe => ww_devoe,
	O => ww_s2);

-- Location: IOOBUF_X102_Y17_N18
\s0~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst2~2_combout\,
	devoe => ww_devoe,
	O => ww_s0);

-- Location: IOOBUF_X102_Y11_N63
\P~output\ : cyclone10gx_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	I => \inst26~combout\,
	devoe => ww_devoe,
	O => ww_P);

-- Location: IOIBUF_X102_Y42_N32
\set~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_set,
	O => \set~input_o\);

-- Location: IOIBUF_X102_Y44_N47
\rst~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_rst,
	O => \rst~input_o\);

-- Location: LABCELL_X100_Y25_N42
\inst2~1\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = ( \inst2~1_combout\ & ( \rst~input_o\ ) ) # ( !\inst2~1_combout\ & ( (!\set~input_o\ & \rst~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_set~input_o\,
	DATAB => \ALT_INV_rst~input_o\,
	DATAF => \ALT_INV_inst2~1_combout\,
	COMBOUT => \inst2~1_combout\);

-- Location: IOIBUF_X102_Y7_N47
\CLK~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_CLK,
	O => \CLK~input_o\);

-- Location: CLKCTRL_3A_G_I23
\CLK~inputCLKENA0\ : cyclone10gx_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	INCLK => \CLK~input_o\,
	OUTCLK => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X102_Y43_N17
\T~input\ : cyclone10gx_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	I => ww_T,
	O => \T~input_o\);

-- Location: LABCELL_X100_Y25_N57
\inst~1\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = ( \T~input_o\ & ( !\inst2~1_combout\ ) ) # ( !\T~input_o\ & ( \inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \ALT_INV_inst2~1_combout\,
	DATAF => \ALT_INV_T~input_o\,
	COMBOUT => \inst~1_combout\);

-- Location: LABCELL_X100_Y25_N45
\inst2~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (!\set~input_o\) # (!\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_set~input_o\,
	DATAB => \ALT_INV_rst~input_o\,
	COMBOUT => \inst2~0_combout\);

-- Location: FF_X100_Y25_N58
\inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \CLK~inputCLKENA0_outclk\,
	D => \inst~1_combout\,
	CLRN => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \inst~_emulated_q\);

-- Location: LABCELL_X100_Y25_N3
\inst~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = ( \inst~_emulated_q\ & ( (\rst~input_o\ & ((!\inst2~1_combout\) # (!\set~input_o\))) ) ) # ( !\inst~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (\inst2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000011000011110000001100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_inst2~1_combout\,
	DATAC => \ALT_INV_rst~input_o\,
	DATAD => \ALT_INV_set~input_o\,
	DATAF => \ALT_INV_inst~_emulated_q\,
	COMBOUT => \inst~0_combout\);

-- Location: LABCELL_X100_Y25_N48
nslinst7 : cyclone10gx_lcell_comb
-- Equation(s):
-- \nslinst7~combout\ = ( !\inst1~0_combout\ & ( !\inst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAE => \ALT_INV_inst1~0_combout\,
	DATAF => \ALT_INV_inst~0_combout\,
	COMBOUT => \nslinst7~combout\);

-- Location: LABCELL_X100_Y25_N33
\inst2~3\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst2~3_combout\ = ( \nslinst7~combout\ & ( !\inst2~1_combout\ ) ) # ( !\nslinst7~combout\ & ( \inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \ALT_INV_inst2~1_combout\,
	DATAF => \ALT_INV_nslinst7~combout\,
	COMBOUT => \inst2~3_combout\);

-- Location: FF_X100_Y25_N34
\inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \CLK~inputCLKENA0_outclk\,
	D => \inst2~3_combout\,
	CLRN => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \inst2~_emulated_q\);

-- Location: LABCELL_X100_Y25_N18
\inst2~2\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst2~2_combout\ = ( \inst2~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (!\inst2~1_combout\))) ) ) # ( !\inst2~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (\inst2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001100110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_set~input_o\,
	DATAB => \ALT_INV_rst~input_o\,
	DATAD => \ALT_INV_inst2~1_combout\,
	DATAF => \ALT_INV_inst2~_emulated_q\,
	COMBOUT => \inst2~2_combout\);

-- Location: LABCELL_X100_Y25_N39
nslnst5 : cyclone10gx_lcell_comb
-- Equation(s):
-- \nslnst5~combout\ = ( !\inst2~2_combout\ & ( \inst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAE => \ALT_INV_inst2~2_combout\,
	DATAF => \ALT_INV_inst~0_combout\,
	COMBOUT => \nslnst5~combout\);

-- Location: LABCELL_X100_Y25_N24
\inst1~1\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst1~1_combout\ = ( \nslnst5~combout\ & ( !\inst2~1_combout\ ) ) # ( !\nslnst5~combout\ & ( \inst2~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAB => \ALT_INV_inst2~1_combout\,
	DATAF => \ALT_INV_nslnst5~combout\,
	COMBOUT => \inst1~1_combout\);

-- Location: FF_X100_Y25_N26
\inst1~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	CLK => \CLK~inputCLKENA0_outclk\,
	D => \inst1~1_combout\,
	CLRN => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	Q => \inst1~_emulated_q\);

-- Location: LABCELL_X100_Y25_N6
\inst1~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = ( \inst1~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (!\inst2~1_combout\))) ) ) # ( !\inst1~_emulated_q\ & ( (\rst~input_o\ & ((!\set~input_o\) # (\inst2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000110011001000100011001100110011001000100011001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAA => \ALT_INV_set~input_o\,
	DATAB => \ALT_INV_rst~input_o\,
	DATAD => \ALT_INV_inst2~1_combout\,
	DATAF => \ALT_INV_inst1~_emulated_q\,
	COMBOUT => \inst1~0_combout\);

-- Location: LABCELL_X101_Y25_N12
\inst37~0\ : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = ( \inst~0_combout\ & ( \inst2~2_combout\ & ( !\inst1~0_combout\ ) ) ) # ( \inst~0_combout\ & ( !\inst2~2_combout\ & ( !\inst1~0_combout\ ) ) ) # ( !\inst~0_combout\ & ( !\inst2~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \ALT_INV_inst1~0_combout\,
	DATAE => \ALT_INV_inst~0_combout\,
	DATAF => \ALT_INV_inst2~2_combout\,
	COMBOUT => \inst37~0_combout\);

-- Location: LABCELL_X101_Y25_N18
inst26 : cyclone10gx_lcell_comb
-- Equation(s):
-- \inst26~combout\ = ( \inst~0_combout\ & ( \inst2~2_combout\ & ( !\inst1~0_combout\ ) ) ) # ( !\inst~0_combout\ & ( !\inst2~2_combout\ & ( \inst1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	DATAC => \ALT_INV_inst1~0_combout\,
	DATAE => \ALT_INV_inst~0_combout\,
	DATAF => \ALT_INV_inst2~2_combout\,
	COMBOUT => \inst26~combout\);
END structure;


