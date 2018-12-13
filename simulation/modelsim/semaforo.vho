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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/12/2018 18:51:00"

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

ENTITY 	display IS
    PORT (
	clk50MHz : IN std_logic;
	rst_in : IN std_logic;
	ssd_D_c : OUT std_logic_vector(0 TO 6);
	ssd_U_c : OUT std_logic_vector(0 TO 6);
	ssd_D_p : OUT std_logic_vector(0 TO 6);
	ssd_U_p : OUT std_logic_vector(0 TO 6);
	verde : OUT std_logic;
	vermelho : OUT std_logic;
	amarelo : OUT std_logic
	);
END display;

-- Design Ports Information
-- ssd_D_c[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_c[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_c[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D_p[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U_p[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vermelho	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- amarelo	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_in	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_rst_in : std_logic;
SIGNAL ww_ssd_D_c : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_U_c : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_D_p : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_U_p : std_logic_vector(0 TO 6);
SIGNAL ww_verde : std_logic;
SIGNAL ww_vermelho : std_logic;
SIGNAL ww_amarelo : std_logic;
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|clk_1seg_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U2|Add2~0_combout\ : std_logic;
SIGNAL \U2|Add0~1_combout\ : std_logic;
SIGNAL \U1|divClock:temp[22]~q\ : std_logic;
SIGNAL \U1|divClock:temp[21]~q\ : std_logic;
SIGNAL \U1|divClock:temp[20]~q\ : std_logic;
SIGNAL \U1|divClock:temp[10]~q\ : std_logic;
SIGNAL \U1|divClock:temp[8]~q\ : std_logic;
SIGNAL \U1|divClock:temp[3]~q\ : std_logic;
SIGNAL \U1|divClock:temp[2]~q\ : std_logic;
SIGNAL \U1|divClock:temp[0]~q\ : std_logic;
SIGNAL \U1|divClock:temp[24]~q\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|temp~0_combout\ : std_logic;
SIGNAL \U1|temp~1_combout\ : std_logic;
SIGNAL \U1|temp~2_combout\ : std_logic;
SIGNAL \U1|temp~11_combout\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \ssd_D_c[6]~output_o\ : std_logic;
SIGNAL \ssd_D_c[5]~output_o\ : std_logic;
SIGNAL \ssd_D_c[4]~output_o\ : std_logic;
SIGNAL \ssd_D_c[3]~output_o\ : std_logic;
SIGNAL \ssd_D_c[2]~output_o\ : std_logic;
SIGNAL \ssd_D_c[1]~output_o\ : std_logic;
SIGNAL \ssd_D_c[0]~output_o\ : std_logic;
SIGNAL \ssd_U_c[6]~output_o\ : std_logic;
SIGNAL \ssd_U_c[5]~output_o\ : std_logic;
SIGNAL \ssd_U_c[4]~output_o\ : std_logic;
SIGNAL \ssd_U_c[3]~output_o\ : std_logic;
SIGNAL \ssd_U_c[2]~output_o\ : std_logic;
SIGNAL \ssd_U_c[1]~output_o\ : std_logic;
SIGNAL \ssd_U_c[0]~output_o\ : std_logic;
SIGNAL \ssd_D_p[6]~output_o\ : std_logic;
SIGNAL \ssd_D_p[5]~output_o\ : std_logic;
SIGNAL \ssd_D_p[4]~output_o\ : std_logic;
SIGNAL \ssd_D_p[3]~output_o\ : std_logic;
SIGNAL \ssd_D_p[2]~output_o\ : std_logic;
SIGNAL \ssd_D_p[1]~output_o\ : std_logic;
SIGNAL \ssd_D_p[0]~output_o\ : std_logic;
SIGNAL \ssd_U_p[6]~output_o\ : std_logic;
SIGNAL \ssd_U_p[5]~output_o\ : std_logic;
SIGNAL \ssd_U_p[4]~output_o\ : std_logic;
SIGNAL \ssd_U_p[3]~output_o\ : std_logic;
SIGNAL \ssd_U_p[2]~output_o\ : std_logic;
SIGNAL \ssd_U_p[1]~output_o\ : std_logic;
SIGNAL \ssd_U_p[0]~output_o\ : std_logic;
SIGNAL \verde~output_o\ : std_logic;
SIGNAL \vermelho~output_o\ : std_logic;
SIGNAL \amarelo~output_o\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \rst_in~input_o\ : std_logic;
SIGNAL \U1|divClock:temp[15]~q\ : std_logic;
SIGNAL \U1|temp~8_combout\ : std_logic;
SIGNAL \U1|divClock:temp[12]~q\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U1|divClock:temp[1]~q\ : std_logic;
SIGNAL \U1|Add0~3\ : std_logic;
SIGNAL \U1|Add0~5\ : std_logic;
SIGNAL \U1|Add0~7\ : std_logic;
SIGNAL \U1|Add0~8_combout\ : std_logic;
SIGNAL \U1|divClock:temp[4]~q\ : std_logic;
SIGNAL \U1|Add0~9\ : std_logic;
SIGNAL \U1|Add0~10_combout\ : std_logic;
SIGNAL \U1|divClock:temp[5]~q\ : std_logic;
SIGNAL \U1|Add0~11\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|temp~10_combout\ : std_logic;
SIGNAL \U1|divClock:temp[6]~q\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|divClock:temp[7]~q\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|divClock:temp[9]~q\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|temp~9_combout\ : std_logic;
SIGNAL \U1|divClock:temp[11]~q\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|temp~7_combout\ : std_logic;
SIGNAL \U1|divClock:temp[13]~q\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|temp~6_combout\ : std_logic;
SIGNAL \U1|divClock:temp[14]~q\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|divClock:temp[23]~q\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|temp~5_combout\ : std_logic;
SIGNAL \U1|divClock:temp[16]~q\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|divClock:temp[17]~q\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|temp~4_combout\ : std_logic;
SIGNAL \U1|divClock:temp[18]~q\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|temp~3_combout\ : std_logic;
SIGNAL \U1|divClock:temp[19]~q\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|divClock:temp[25]~q\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~0_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~1_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~q\ : std_logic;
SIGNAL \U1|clk_1seg_temp~clkctrl_outclk\ : std_logic;
SIGNAL \U2|P1:tempAmarelo[1]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempAmarelo[1]~q\ : std_logic;
SIGNAL \U2|P1:tempAmarelo[0]~2_combout\ : std_logic;
SIGNAL \U2|P1:tempAmarelo[0]~q\ : std_logic;
SIGNAL \U2|P1:tempU_vd[0]~3_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[1]~2_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[1]~q\ : std_logic;
SIGNAL \U2|P1:tempU_vd[0]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[0]~q\ : std_logic;
SIGNAL \U2|P1:tempU_vd[2]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[2]~q\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[3]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vd[3]~q\ : std_logic;
SIGNAL \U2|Equal3~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[1]~4_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[1]~5_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[2]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[2]~q\ : std_logic;
SIGNAL \U2|P1:tempU_vm[1]~6_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[1]~q\ : std_logic;
SIGNAL \U2|P1:tempU_vm[3]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[3]~q\ : std_logic;
SIGNAL \U2|Equal4~0_combout\ : std_logic;
SIGNAL \U2|Equal1~0_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vm[0]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vm[0]~1_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vm[0]~q\ : std_logic;
SIGNAL \U2|P1:tempD_vm[1]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vm[1]~q\ : std_logic;
SIGNAL \U2|P1~1_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[0]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[0]~1_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[0]~2_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[0]~q\ : std_logic;
SIGNAL \U2|P1:tempD_vd[1]~2_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[1]~3_combout\ : std_logic;
SIGNAL \U2|P1:tempD_vd[1]~q\ : std_logic;
SIGNAL \U2|P1~0_combout\ : std_logic;
SIGNAL \U2|tempD~0_combout\ : std_logic;
SIGNAL \U2|tempD~1_combout\ : std_logic;
SIGNAL \U2|P1:tempD[0]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempD[0]~1_combout\ : std_logic;
SIGNAL \U2|P1:tempD[1]~q\ : std_logic;
SIGNAL \U2|tempD~2_combout\ : std_logic;
SIGNAL \U2|P1:tempD[0]~q\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[0]~0_combout\ : std_logic;
SIGNAL \U2|P1:tempU_vm[0]~q\ : std_logic;
SIGNAL \U2|Add2~2_combout\ : std_logic;
SIGNAL \U2|tempU~4_combout\ : std_logic;
SIGNAL \U2|P1:tempU[0]~0_combout\ : std_logic;
SIGNAL \U2|tempU~5_combout\ : std_logic;
SIGNAL \U2|P1:tempU[0]~1_combout\ : std_logic;
SIGNAL \U2|P1:tempU[3]~q\ : std_logic;
SIGNAL \U2|Add2~1_combout\ : std_logic;
SIGNAL \U2|tempU~3_combout\ : std_logic;
SIGNAL \U2|P1:tempU[2]~q\ : std_logic;
SIGNAL \U2|tempU~0_combout\ : std_logic;
SIGNAL \U2|tempU~1_combout\ : std_logic;
SIGNAL \U2|P1:tempU[0]~q\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|tempU~2_combout\ : std_logic;
SIGNAL \U2|P1:tempU[1]~q\ : std_logic;
SIGNAL \U3|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mux3~0_combout\ : std_logic;
SIGNAL \U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|Mux1~0_combout\ : std_logic;
SIGNAL \U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|verde~0_combout\ : std_logic;
SIGNAL \U2|verde~q\ : std_logic;
SIGNAL \U2|vermelho~0_combout\ : std_logic;
SIGNAL \U2|vermelho~q\ : std_logic;
SIGNAL \U2|amarelo~0_combout\ : std_logic;
SIGNAL \U2|amarelo~q\ : std_logic;
SIGNAL \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\ : std_logic;
SIGNAL \U3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_P1:tempD[1]~q\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst_in <= rst_in;
ssd_D_c <= ww_ssd_D_c;
ssd_U_c <= ww_ssd_U_c;
ssd_D_p <= ww_ssd_D_p;
ssd_U_p <= ww_ssd_U_p;
verde <= ww_verde;
vermelho <= ww_vermelho;
amarelo <= ww_amarelo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

\U1|clk_1seg_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_1seg_temp~q\);
\U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\ <= NOT \U1|clk_1seg_temp~clkctrl_outclk\;
\U3|ALT_INV_Mux6~0_combout\ <= NOT \U3|Mux6~0_combout\;
\U2|ALT_INV_P1:tempD[1]~q\ <= NOT \U2|P1:tempD[1]~q\;

-- Location: LCCOMB_X80_Y15_N6
\U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|divClock:temp[0]~q\ $ (VCC)
-- \U1|Add0~1\ = CARRY(\U1|divClock:temp[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[0]~q\,
	datad => VCC,
	combout => \U1|Add0~0_combout\,
	cout => \U1|Add0~1\);

-- Location: LCCOMB_X80_Y15_N12
\U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|divClock:temp[3]~q\ & (!\U1|Add0~5\)) # (!\U1|divClock:temp[3]~q\ & ((\U1|Add0~5\) # (GND)))
-- \U1|Add0~7\ = CARRY((!\U1|Add0~5\) # (!\U1|divClock:temp[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[3]~q\,
	datad => VCC,
	cin => \U1|Add0~5\,
	combout => \U1|Add0~6_combout\,
	cout => \U1|Add0~7\);

-- Location: LCCOMB_X80_Y15_N26
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|divClock:temp[10]~q\ & (\U1|Add0~19\ $ (GND))) # (!\U1|divClock:temp[10]~q\ & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|divClock:temp[10]~q\ & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[10]~q\,
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: LCCOMB_X76_Y1_N24
\U2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~0_combout\ = \U2|P1:tempU_vm[0]~q\ $ (\U2|P1:tempU_vm[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempU_vm[0]~q\,
	datad => \U2|P1:tempU_vm[1]~q\,
	combout => \U2|Add2~0_combout\);

-- Location: LCCOMB_X73_Y1_N2
\U2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~1_combout\ = \U2|P1:tempU_vd[2]~q\ $ (((\U2|P1:tempU_vd[1]~q\) # (\U2|P1:tempU_vd[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vd[2]~q\,
	datac => \U2|P1:tempU_vd[1]~q\,
	datad => \U2|P1:tempU_vd[0]~q\,
	combout => \U2|Add0~1_combout\);

-- Location: FF_X79_Y14_N11
\U1|divClock:temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[22]~q\);

-- Location: FF_X79_Y14_N13
\U1|divClock:temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~1_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[21]~q\);

-- Location: FF_X80_Y14_N31
\U1|divClock:temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~2_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[20]~q\);

-- Location: FF_X80_Y15_N27
\U1|divClock:temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[10]~q\);

-- Location: FF_X80_Y15_N23
\U1|divClock:temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[8]~q\);

-- Location: FF_X80_Y15_N13
\U1|divClock:temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[3]~q\);

-- Location: FF_X80_Y15_N11
\U1|divClock:temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[2]~q\);

-- Location: FF_X80_Y15_N7
\U1|divClock:temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[0]~q\);

-- Location: FF_X79_Y14_N15
\U1|divClock:temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~11_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[24]~q\);

-- Location: LCCOMB_X79_Y15_N30
\U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (!\U1|Add0~8_combout\ & (!\U1|Add0~6_combout\ & (!\U1|Add0~20_combout\ & \U1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~8_combout\,
	datab => \U1|Add0~6_combout\,
	datac => \U1|Add0~20_combout\,
	datad => \U1|Add0~12_combout\,
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X79_Y14_N10
\U1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~0_combout\ = (\U1|Add0~44_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~44_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~0_combout\);

-- Location: LCCOMB_X79_Y14_N12
\U1|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~1_combout\ = (\U1|Add0~42_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~42_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~1_combout\);

-- Location: LCCOMB_X80_Y14_N30
\U1|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~2_combout\ = (\U1|Add0~40_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~40_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~2_combout\);

-- Location: LCCOMB_X79_Y14_N14
\U1|temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~11_combout\ = (\U1|Add0~48_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~48_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~11_combout\);

-- Location: IOIBUF_X0_Y36_N15
\clk50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G4
\clk50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: IOOBUF_X54_Y0_N23
\ssd_D_c[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_P1:tempD[1]~q\,
	devoe => ww_devoe,
	o => \ssd_D_c[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\ssd_D_c[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_c[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ssd_D_c[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|P1:tempD[0]~q\,
	devoe => ww_devoe,
	o => \ssd_D_c[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ssd_D_c[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_c[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\ssd_D_c[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_c[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\ssd_D_c[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd_D_c[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ssd_D_c[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_c[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\ssd_U_c[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\ssd_U_c[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\ssd_U_c[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\ssd_U_c[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\ssd_U_c[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\ssd_U_c[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\ssd_U_c[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_c[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\ssd_D_p[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_P1:tempD[1]~q\,
	devoe => ww_devoe,
	o => \ssd_D_p[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\ssd_D_p[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_p[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\ssd_D_p[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|P1:tempD[0]~q\,
	devoe => ww_devoe,
	o => \ssd_D_p[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\ssd_D_p[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_p[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\ssd_D_p[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_p[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\ssd_D_p[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd_D_p[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\ssd_D_p[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D_p[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ssd_U_p[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ssd_U_p[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ssd_U_p[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ssd_U_p[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ssd_U_p[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\ssd_U_p[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\ssd_U_p[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U_p[0]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\verde~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|verde~q\,
	devoe => ww_devoe,
	o => \verde~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\vermelho~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|vermelho~q\,
	devoe => ww_devoe,
	o => \vermelho~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\amarelo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|amarelo~q\,
	devoe => ww_devoe,
	o => \amarelo~output_o\);

-- Location: LCCOMB_X80_Y14_N14
\U1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~40_combout\ = (\U1|divClock:temp[20]~q\ & (\U1|Add0~39\ $ (GND))) # (!\U1|divClock:temp[20]~q\ & (!\U1|Add0~39\ & VCC))
-- \U1|Add0~41\ = CARRY((\U1|divClock:temp[20]~q\ & !\U1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[20]~q\,
	datad => VCC,
	cin => \U1|Add0~39\,
	combout => \U1|Add0~40_combout\,
	cout => \U1|Add0~41\);

-- Location: LCCOMB_X80_Y14_N16
\U1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|divClock:temp[21]~q\ & (!\U1|Add0~41\)) # (!\U1|divClock:temp[21]~q\ & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|divClock:temp[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[21]~q\,
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X80_Y14_N18
\U1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|divClock:temp[22]~q\ & (\U1|Add0~43\ $ (GND))) # (!\U1|divClock:temp[22]~q\ & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|divClock:temp[22]~q\ & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[22]~q\,
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: IOIBUF_X115_Y17_N1
\rst_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_in,
	o => \rst_in~input_o\);

-- Location: FF_X80_Y14_N5
\U1|divClock:temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~30_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[15]~q\);

-- Location: LCCOMB_X80_Y15_N0
\U1|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~8_combout\ = (\U1|Add0~24_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~8_combout\);

-- Location: FF_X80_Y15_N1
\U1|divClock:temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~8_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[12]~q\);

-- Location: LCCOMB_X80_Y15_N8
\U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = (\U1|divClock:temp[1]~q\ & (!\U1|Add0~1\)) # (!\U1|divClock:temp[1]~q\ & ((\U1|Add0~1\) # (GND)))
-- \U1|Add0~3\ = CARRY((!\U1|Add0~1\) # (!\U1|divClock:temp[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[1]~q\,
	datad => VCC,
	cin => \U1|Add0~1\,
	combout => \U1|Add0~2_combout\,
	cout => \U1|Add0~3\);

-- Location: FF_X80_Y15_N9
\U1|divClock:temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[1]~q\);

-- Location: LCCOMB_X80_Y15_N10
\U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = (\U1|divClock:temp[2]~q\ & (\U1|Add0~3\ $ (GND))) # (!\U1|divClock:temp[2]~q\ & (!\U1|Add0~3\ & VCC))
-- \U1|Add0~5\ = CARRY((\U1|divClock:temp[2]~q\ & !\U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[2]~q\,
	datad => VCC,
	cin => \U1|Add0~3\,
	combout => \U1|Add0~4_combout\,
	cout => \U1|Add0~5\);

-- Location: LCCOMB_X80_Y15_N14
\U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~8_combout\ = (\U1|divClock:temp[4]~q\ & (\U1|Add0~7\ $ (GND))) # (!\U1|divClock:temp[4]~q\ & (!\U1|Add0~7\ & VCC))
-- \U1|Add0~9\ = CARRY((\U1|divClock:temp[4]~q\ & !\U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[4]~q\,
	datad => VCC,
	cin => \U1|Add0~7\,
	combout => \U1|Add0~8_combout\,
	cout => \U1|Add0~9\);

-- Location: FF_X80_Y15_N15
\U1|divClock:temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[4]~q\);

-- Location: LCCOMB_X80_Y15_N16
\U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~10_combout\ = (\U1|divClock:temp[5]~q\ & (!\U1|Add0~9\)) # (!\U1|divClock:temp[5]~q\ & ((\U1|Add0~9\) # (GND)))
-- \U1|Add0~11\ = CARRY((!\U1|Add0~9\) # (!\U1|divClock:temp[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[5]~q\,
	datad => VCC,
	cin => \U1|Add0~9\,
	combout => \U1|Add0~10_combout\,
	cout => \U1|Add0~11\);

-- Location: FF_X80_Y15_N17
\U1|divClock:temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[5]~q\);

-- Location: LCCOMB_X80_Y15_N18
\U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~12_combout\ = (\U1|divClock:temp[6]~q\ & (\U1|Add0~11\ $ (GND))) # (!\U1|divClock:temp[6]~q\ & (!\U1|Add0~11\ & VCC))
-- \U1|Add0~13\ = CARRY((\U1|divClock:temp[6]~q\ & !\U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[6]~q\,
	datad => VCC,
	cin => \U1|Add0~11\,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~13\);

-- Location: LCCOMB_X80_Y15_N4
\U1|temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~10_combout\ = (\U1|Add0~12_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~12_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~10_combout\);

-- Location: FF_X80_Y15_N5
\U1|divClock:temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~10_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[6]~q\);

-- Location: LCCOMB_X80_Y15_N20
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|divClock:temp[7]~q\ & (!\U1|Add0~13\)) # (!\U1|divClock:temp[7]~q\ & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|divClock:temp[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[7]~q\,
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: FF_X80_Y15_N21
\U1|divClock:temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[7]~q\);

-- Location: LCCOMB_X80_Y15_N22
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|divClock:temp[8]~q\ & (\U1|Add0~15\ $ (GND))) # (!\U1|divClock:temp[8]~q\ & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|divClock:temp[8]~q\ & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[8]~q\,
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: LCCOMB_X80_Y15_N24
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|divClock:temp[9]~q\ & (!\U1|Add0~17\)) # (!\U1|divClock:temp[9]~q\ & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|divClock:temp[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[9]~q\,
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: FF_X80_Y15_N25
\U1|divClock:temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[9]~q\);

-- Location: LCCOMB_X80_Y15_N28
\U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~22_combout\ = (\U1|divClock:temp[11]~q\ & (!\U1|Add0~21\)) # (!\U1|divClock:temp[11]~q\ & ((\U1|Add0~21\) # (GND)))
-- \U1|Add0~23\ = CARRY((!\U1|Add0~21\) # (!\U1|divClock:temp[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[11]~q\,
	datad => VCC,
	cin => \U1|Add0~21\,
	combout => \U1|Add0~22_combout\,
	cout => \U1|Add0~23\);

-- Location: LCCOMB_X80_Y15_N2
\U1|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~9_combout\ = (\U1|Add0~22_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~22_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~9_combout\);

-- Location: FF_X80_Y15_N3
\U1|divClock:temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~9_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[11]~q\);

-- Location: LCCOMB_X80_Y15_N30
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|divClock:temp[12]~q\ & (\U1|Add0~23\ $ (GND))) # (!\U1|divClock:temp[12]~q\ & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|divClock:temp[12]~q\ & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[12]~q\,
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X80_Y14_N0
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|divClock:temp[13]~q\ & (!\U1|Add0~25\)) # (!\U1|divClock:temp[13]~q\ & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|divClock:temp[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[13]~q\,
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X79_Y14_N18
\U1|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~7_combout\ = (\U1|Add0~26_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~26_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~7_combout\);

-- Location: FF_X79_Y14_N19
\U1|divClock:temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~7_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[13]~q\);

-- Location: LCCOMB_X80_Y14_N2
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|divClock:temp[14]~q\ & (\U1|Add0~27\ $ (GND))) # (!\U1|divClock:temp[14]~q\ & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|divClock:temp[14]~q\ & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[14]~q\,
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X80_Y14_N28
\U1|temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~6_combout\ = (\U1|Add0~28_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~28_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~6_combout\);

-- Location: FF_X80_Y14_N29
\U1|divClock:temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~6_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[14]~q\);

-- Location: LCCOMB_X80_Y14_N4
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|divClock:temp[15]~q\ & (!\U1|Add0~29\)) # (!\U1|divClock:temp[15]~q\ & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|divClock:temp[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[15]~q\,
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X80_Y14_N6
\U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|divClock:temp[16]~q\ & (\U1|Add0~31\ $ (GND))) # (!\U1|divClock:temp[16]~q\ & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|divClock:temp[16]~q\ & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[16]~q\,
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X79_Y14_N4
\U1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (\U1|Add0~28_combout\ & (!\U1|Add0~34_combout\ & (!\U1|Add0~30_combout\ & \U1|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~28_combout\,
	datab => \U1|Add0~34_combout\,
	datac => \U1|Add0~30_combout\,
	datad => \U1|Add0~32_combout\,
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X80_Y14_N20
\U1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~46_combout\ = (\U1|divClock:temp[23]~q\ & (!\U1|Add0~45\)) # (!\U1|divClock:temp[23]~q\ & ((\U1|Add0~45\) # (GND)))
-- \U1|Add0~47\ = CARRY((!\U1|Add0~45\) # (!\U1|divClock:temp[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[23]~q\,
	datad => VCC,
	cin => \U1|Add0~45\,
	combout => \U1|Add0~46_combout\,
	cout => \U1|Add0~47\);

-- Location: FF_X80_Y14_N21
\U1|divClock:temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[23]~q\);

-- Location: LCCOMB_X80_Y14_N22
\U1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|divClock:temp[24]~q\ & (\U1|Add0~47\ $ (GND))) # (!\U1|divClock:temp[24]~q\ & (!\U1|Add0~47\ & VCC))
-- \U1|Add0~49\ = CARRY((\U1|divClock:temp[24]~q\ & !\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[24]~q\,
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: LCCOMB_X79_Y14_N22
\U1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|Equal0~5_combout\ & (\U1|Add0~44_combout\ & (\U1|Equal0~6_combout\ & \U1|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~5_combout\,
	datab => \U1|Add0~44_combout\,
	datac => \U1|Equal0~6_combout\,
	datad => \U1|Add0~48_combout\,
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X79_Y14_N24
\U1|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~5_combout\ = (\U1|Add0~32_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~32_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~5_combout\);

-- Location: FF_X79_Y14_N25
\U1|divClock:temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~5_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[16]~q\);

-- Location: LCCOMB_X80_Y14_N8
\U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|divClock:temp[17]~q\ & (!\U1|Add0~33\)) # (!\U1|divClock:temp[17]~q\ & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|divClock:temp[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[17]~q\,
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: FF_X80_Y14_N9
\U1|divClock:temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[17]~q\);

-- Location: LCCOMB_X80_Y14_N10
\U1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|divClock:temp[18]~q\ & (\U1|Add0~35\ $ (GND))) # (!\U1|divClock:temp[18]~q\ & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|divClock:temp[18]~q\ & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[18]~q\,
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X79_Y14_N6
\U1|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~4_combout\ = (\U1|Add0~36_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Add0~36_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~4_combout\);

-- Location: FF_X79_Y14_N7
\U1|divClock:temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~4_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[18]~q\);

-- Location: LCCOMB_X80_Y14_N12
\U1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|divClock:temp[19]~q\ & (!\U1|Add0~37\)) # (!\U1|divClock:temp[19]~q\ & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|divClock:temp[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[19]~q\,
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X79_Y14_N20
\U1|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~3_combout\ = (\U1|Add0~38_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Add0~38_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~3_combout\);

-- Location: FF_X79_Y14_N21
\U1|divClock:temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~3_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[19]~q\);

-- Location: LCCOMB_X80_Y14_N26
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|Add0~38_combout\ & (\U1|Add0~40_combout\ & (\U1|Add0~36_combout\ & \U1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~38_combout\,
	datab => \U1|Add0~40_combout\,
	datac => \U1|Add0~36_combout\,
	datad => \U1|Add0~42_combout\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X79_Y14_N8
\U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = (!\U1|Add0~0_combout\ & (\U1|Add0~26_combout\ & (\U1|Add0~24_combout\ & \U1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~0_combout\,
	datab => \U1|Add0~26_combout\,
	datac => \U1|Add0~24_combout\,
	datad => \U1|Add0~22_combout\,
	combout => \U1|Equal0~2_combout\);

-- Location: LCCOMB_X79_Y15_N22
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|Add0~14_combout\ & (!\U1|Add0~16_combout\ & (!\U1|Add0~10_combout\ & !\U1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~14_combout\,
	datab => \U1|Add0~16_combout\,
	datac => \U1|Add0~10_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X79_Y14_N26
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (!\U1|Add0~2_combout\ & (!\U1|Add0~4_combout\ & (\U1|Equal0~2_combout\ & \U1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~2_combout\,
	datab => \U1|Add0~4_combout\,
	datac => \U1|Equal0~2_combout\,
	datad => \U1|Equal0~1_combout\,
	combout => \U1|Equal0~3_combout\);

-- Location: FF_X80_Y14_N25
\U1|divClock:temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~50_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[25]~q\);

-- Location: LCCOMB_X80_Y14_N24
\U1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~50_combout\ = \U1|Add0~49\ $ (\U1|divClock:temp[25]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|divClock:temp[25]~q\,
	cin => \U1|Add0~49\,
	combout => \U1|Add0~50_combout\);

-- Location: LCCOMB_X79_Y14_N0
\U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = (!\U1|Add0~46_combout\ & (\U1|Equal0~0_combout\ & (\U1|Equal0~3_combout\ & !\U1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~46_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|Equal0~3_combout\,
	datad => \U1|Add0~50_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LCCOMB_X79_Y14_N30
\U1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (((!\U1|Add0~32_combout\ & !\U1|Add0~30_combout\)) # (!\U1|Equal0~0_combout\)) # (!\U1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~32_combout\,
	datab => \U1|Add0~30_combout\,
	datac => \U1|Add0~34_combout\,
	datad => \U1|Equal0~0_combout\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X79_Y15_N0
\U1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (((!\U1|Add0~26_combout\) # (!\U1|Add0~24_combout\)) # (!\U1|Add0~22_combout\)) # (!\U1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~20_combout\,
	datab => \U1|Add0~22_combout\,
	datac => \U1|Add0~24_combout\,
	datad => \U1|Add0~26_combout\,
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X79_Y15_N12
\U1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (\U1|LessThan0~1_combout\) # ((!\U1|Add0~12_combout\ & \U1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~12_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|LessThan0~1_combout\,
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X79_Y14_N2
\U1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~3_combout\ = (\U1|LessThan0~0_combout\) # ((!\U1|Add0~32_combout\ & (!\U1|Add0~28_combout\ & \U1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~32_combout\,
	datab => \U1|Add0~28_combout\,
	datac => \U1|LessThan0~0_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|LessThan0~3_combout\);

-- Location: LCCOMB_X79_Y14_N16
\U1|clk_1seg_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_1seg_temp~0_combout\ = (!\U1|Add0~48_combout\ & (((!\U1|Add0~44_combout\ & \U1|LessThan0~3_combout\)) # (!\U1|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~48_combout\,
	datab => \U1|Add0~44_combout\,
	datac => \U1|Add0~46_combout\,
	datad => \U1|LessThan0~3_combout\,
	combout => \U1|clk_1seg_temp~0_combout\);

-- Location: LCCOMB_X79_Y14_N28
\U1|clk_1seg_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_1seg_temp~1_combout\ = (\U1|Equal0~7_combout\ & (!\U1|Equal0~4_combout\ & ((\U1|Add0~50_combout\) # (!\U1|clk_1seg_temp~0_combout\)))) # (!\U1|Equal0~7_combout\ & (((\U1|Add0~50_combout\) # (!\U1|clk_1seg_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Equal0~4_combout\,
	datac => \U1|Add0~50_combout\,
	datad => \U1|clk_1seg_temp~0_combout\,
	combout => \U1|clk_1seg_temp~1_combout\);

-- Location: FF_X79_Y14_N29
\U1|clk_1seg_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|clk_1seg_temp~1_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clk_1seg_temp~q\);

-- Location: CLKCTRL_G15
\U1|clk_1seg_temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|clk_1seg_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|clk_1seg_temp~clkctrl_outclk\);

-- Location: LCCOMB_X73_Y1_N16
\U2|P1:tempAmarelo[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempAmarelo[1]~0_combout\ = (\U2|P1~0_combout\ & (\U2|P1:tempAmarelo[1]~q\ $ (\U2|P1:tempAmarelo[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempAmarelo[1]~q\,
	datad => \U2|P1:tempAmarelo[0]~q\,
	combout => \U2|P1:tempAmarelo[1]~0_combout\);

-- Location: FF_X73_Y1_N17
\U2|P1:tempAmarelo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempAmarelo[1]~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempAmarelo[1]~q\);

-- Location: LCCOMB_X73_Y1_N10
\U2|P1:tempAmarelo[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempAmarelo[0]~2_combout\ = (\U2|P1~0_combout\ & (!\U2|P1:tempAmarelo[0]~q\ & !\U2|P1:tempAmarelo[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempAmarelo[0]~q\,
	datad => \U2|P1:tempAmarelo[1]~q\,
	combout => \U2|P1:tempAmarelo[0]~2_combout\);

-- Location: FF_X73_Y1_N11
\U2|P1:tempAmarelo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempAmarelo[0]~2_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempAmarelo[0]~q\);

-- Location: LCCOMB_X74_Y1_N18
\U2|P1:tempU_vd[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vd[0]~3_combout\ = (\U2|P1~0_combout\ & (((\U2|P1:tempAmarelo[0]~q\) # (!\U2|P1~1_combout\)) # (!\U2|P1:tempAmarelo[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempAmarelo[1]~q\,
	datab => \U2|P1:tempAmarelo[0]~q\,
	datac => \U2|P1~0_combout\,
	datad => \U2|P1~1_combout\,
	combout => \U2|P1:tempU_vd[0]~3_combout\);

-- Location: LCCOMB_X74_Y1_N20
\U2|P1:tempU_vd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vd[1]~2_combout\ = (\U2|P1:tempU_vd[0]~3_combout\ & (((\U2|P1:tempU_vd[1]~q\)))) # (!\U2|P1:tempU_vd[0]~3_combout\ & (!\U2|Equal3~0_combout\ & (\U2|P1:tempU_vd[0]~q\ $ (!\U2|P1:tempU_vd[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vd[0]~q\,
	datab => \U2|Equal3~0_combout\,
	datac => \U2|P1:tempU_vd[1]~q\,
	datad => \U2|P1:tempU_vd[0]~3_combout\,
	combout => \U2|P1:tempU_vd[1]~2_combout\);

-- Location: FF_X74_Y1_N21
\U2|P1:tempU_vd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vd[1]~2_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vd[1]~q\);

-- Location: LCCOMB_X74_Y1_N26
\U2|P1:tempU_vd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vd[0]~0_combout\ = (\U2|Equal3~0_combout\ & (\U2|P1~0_combout\)) # (!\U2|Equal3~0_combout\ & ((!\U2|P1:tempU_vd[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempU_vd[0]~q\,
	datad => \U2|Equal3~0_combout\,
	combout => \U2|P1:tempU_vd[0]~0_combout\);

-- Location: FF_X74_Y1_N27
\U2|P1:tempU_vd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vd[0]~0_combout\,
	asdata => \U2|P1:tempU_vd[0]~q\,
	clrn => \rst_in~input_o\,
	sload => \U2|P1:tempU_vd[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vd[0]~q\);

-- Location: LCCOMB_X74_Y1_N30
\U2|P1:tempU_vd[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vd[2]~0_combout\ = (\U2|P1:tempU_vd[0]~3_combout\ & (((\U2|P1:tempU_vd[2]~q\)))) # (!\U2|P1:tempU_vd[0]~3_combout\ & (!\U2|Add0~1_combout\ & (!\U2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~1_combout\,
	datab => \U2|Equal3~0_combout\,
	datac => \U2|P1:tempU_vd[2]~q\,
	datad => \U2|P1:tempU_vd[0]~3_combout\,
	combout => \U2|P1:tempU_vd[2]~0_combout\);

-- Location: FF_X74_Y1_N31
\U2|P1:tempU_vd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vd[2]~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vd[2]~q\);

-- Location: LCCOMB_X74_Y1_N6
\U2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = \U2|P1:tempU_vd[3]~q\ $ (((\U2|P1:tempU_vd[0]~q\) # ((\U2|P1:tempU_vd[1]~q\) # (\U2|P1:tempU_vd[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vd[0]~q\,
	datab => \U2|P1:tempU_vd[1]~q\,
	datac => \U2|P1:tempU_vd[3]~q\,
	datad => \U2|P1:tempU_vd[2]~q\,
	combout => \U2|Add0~2_combout\);

-- Location: LCCOMB_X74_Y1_N16
\U2|P1:tempU_vd[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vd[3]~0_combout\ = (\U2|Equal3~0_combout\ & (\U2|P1~0_combout\)) # (!\U2|Equal3~0_combout\ & ((!\U2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|P1~0_combout\,
	datad => \U2|Add0~2_combout\,
	combout => \U2|P1:tempU_vd[3]~0_combout\);

-- Location: FF_X74_Y1_N17
\U2|P1:tempU_vd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vd[3]~0_combout\,
	asdata => \U2|P1:tempU_vd[3]~q\,
	clrn => \rst_in~input_o\,
	sload => \U2|P1:tempU_vd[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vd[3]~q\);

-- Location: LCCOMB_X74_Y1_N10
\U2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal3~0_combout\ = (!\U2|P1:tempU_vd[2]~q\ & (!\U2|P1:tempU_vd[1]~q\ & (!\U2|P1:tempU_vd[0]~q\ & !\U2|P1:tempU_vd[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vd[2]~q\,
	datab => \U2|P1:tempU_vd[1]~q\,
	datac => \U2|P1:tempU_vd[0]~q\,
	datad => \U2|P1:tempU_vd[3]~q\,
	combout => \U2|Equal3~0_combout\);

-- Location: LCCOMB_X75_Y1_N24
\U2|P1:tempU_vm[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[1]~4_combout\ = (!\U2|Equal4~0_combout\ & (((\U2|P1:tempD_vd[0]~q\) # (!\U2|Equal3~0_combout\)) # (!\U2|P1:tempD_vd[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vd[1]~q\,
	datab => \U2|P1:tempD_vd[0]~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal3~0_combout\,
	combout => \U2|P1:tempU_vm[1]~4_combout\);

-- Location: LCCOMB_X75_Y1_N14
\U2|P1:tempU_vm[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[1]~5_combout\ = (\U2|P1~0_combout\ & (((\U2|P1~1_combout\) # (\U2|P1:tempAmarelo[0]~q\)) # (!\U2|P1:tempAmarelo[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempAmarelo[1]~q\,
	datab => \U2|P1~1_combout\,
	datac => \U2|P1:tempAmarelo[0]~q\,
	datad => \U2|P1~0_combout\,
	combout => \U2|P1:tempU_vm[1]~5_combout\);

-- Location: LCCOMB_X75_Y1_N18
\U2|P1:tempU_vm[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[2]~0_combout\ = (\U2|P1:tempU_vm[1]~5_combout\ & (((\U2|P1:tempU_vm[2]~q\)))) # (!\U2|P1:tempU_vm[1]~5_combout\ & (!\U2|Add2~1_combout\ & (\U2|P1:tempU_vm[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~1_combout\,
	datab => \U2|P1:tempU_vm[1]~4_combout\,
	datac => \U2|P1:tempU_vm[2]~q\,
	datad => \U2|P1:tempU_vm[1]~5_combout\,
	combout => \U2|P1:tempU_vm[2]~0_combout\);

-- Location: FF_X75_Y1_N19
\U2|P1:tempU_vm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vm[2]~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vm[2]~q\);

-- Location: LCCOMB_X75_Y1_N8
\U2|P1:tempU_vm[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[1]~6_combout\ = (\U2|P1:tempU_vm[1]~5_combout\ & (((\U2|P1:tempU_vm[1]~q\)))) # (!\U2|P1:tempU_vm[1]~5_combout\ & (\U2|P1:tempU_vm[1]~4_combout\ & (\U2|P1:tempU_vm[0]~q\ $ (!\U2|P1:tempU_vm[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vm[0]~q\,
	datab => \U2|P1:tempU_vm[1]~4_combout\,
	datac => \U2|P1:tempU_vm[1]~q\,
	datad => \U2|P1:tempU_vm[1]~5_combout\,
	combout => \U2|P1:tempU_vm[1]~6_combout\);

-- Location: FF_X75_Y1_N9
\U2|P1:tempU_vm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vm[1]~6_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vm[1]~q\);

-- Location: LCCOMB_X75_Y1_N0
\U2|P1:tempU_vm[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[3]~0_combout\ = (\U2|P1:tempU_vm[1]~4_combout\ & (!\U2|Add2~2_combout\)) # (!\U2|P1:tempU_vm[1]~4_combout\ & ((\U2|P1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~2_combout\,
	datab => \U2|P1:tempU_vm[1]~4_combout\,
	datad => \U2|P1~0_combout\,
	combout => \U2|P1:tempU_vm[3]~0_combout\);

-- Location: FF_X75_Y1_N1
\U2|P1:tempU_vm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vm[3]~0_combout\,
	asdata => \U2|P1:tempU_vm[3]~q\,
	clrn => \rst_in~input_o\,
	sload => \U2|P1:tempU_vm[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vm[3]~q\);

-- Location: LCCOMB_X75_Y1_N2
\U2|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal4~0_combout\ = (!\U2|P1:tempU_vm[0]~q\ & (!\U2|P1:tempU_vm[2]~q\ & (!\U2|P1:tempU_vm[1]~q\ & !\U2|P1:tempU_vm[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vm[0]~q\,
	datab => \U2|P1:tempU_vm[2]~q\,
	datac => \U2|P1:tempU_vm[1]~q\,
	datad => \U2|P1:tempU_vm[3]~q\,
	combout => \U2|Equal4~0_combout\);

-- Location: LCCOMB_X73_Y1_N12
\U2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Equal1~0_combout\ = (\U2|P1:tempAmarelo[1]~q\ & !\U2|P1:tempAmarelo[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempAmarelo[1]~q\,
	datad => \U2|P1:tempAmarelo[0]~q\,
	combout => \U2|Equal1~0_combout\);

-- Location: LCCOMB_X73_Y1_N24
\U2|P1:tempD_vm[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vm[0]~0_combout\ = (\U2|Equal4~0_combout\ & (\U2|Equal1~0_combout\ & ((!\U2|P1:tempD_vm[0]~q\) # (!\U2|P1:tempD_vm[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[1]~q\,
	datab => \U2|P1:tempD_vm[0]~q\,
	datac => \U2|Equal4~0_combout\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|P1:tempD_vm[0]~0_combout\);

-- Location: LCCOMB_X73_Y1_N8
\U2|P1:tempD_vm[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vm[0]~1_combout\ = (\U2|P1~0_combout\ & ((\U2|P1:tempD_vm[0]~q\ & ((\U2|P1:tempD_vm[1]~q\) # (!\U2|P1:tempD_vm[0]~0_combout\))) # (!\U2|P1:tempD_vm[0]~q\ & ((\U2|P1:tempD_vm[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[1]~q\,
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempD_vm[0]~q\,
	datad => \U2|P1:tempD_vm[0]~0_combout\,
	combout => \U2|P1:tempD_vm[0]~1_combout\);

-- Location: FF_X73_Y1_N9
\U2|P1:tempD_vm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempD_vm[0]~1_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD_vm[0]~q\);

-- Location: LCCOMB_X73_Y1_N26
\U2|P1:tempD_vm[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vm[1]~0_combout\ = (\U2|P1~0_combout\ & ((\U2|P1:tempD_vm[1]~q\) # ((\U2|P1:tempD_vm[0]~q\ & \U2|P1:tempD_vm[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[0]~q\,
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempD_vm[1]~q\,
	datad => \U2|P1:tempD_vm[0]~0_combout\,
	combout => \U2|P1:tempD_vm[1]~0_combout\);

-- Location: FF_X73_Y1_N27
\U2|P1:tempD_vm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempD_vm[1]~0_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD_vm[1]~q\);

-- Location: LCCOMB_X75_Y1_N28
\U2|P1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1~1_combout\ = (\U2|P1:tempD_vm[0]~q\ & (\U2|P1:tempD_vm[1]~q\ & \U2|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempD_vm[0]~q\,
	datac => \U2|P1:tempD_vm[1]~q\,
	datad => \U2|Equal4~0_combout\,
	combout => \U2|P1~1_combout\);

-- Location: LCCOMB_X75_Y1_N16
\U2|P1:tempD_vd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vd[0]~0_combout\ = (!\U2|P1:tempD_vd[1]~q\ & (!\U2|P1:tempD_vd[0]~q\ & \U2|P1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vd[1]~q\,
	datac => \U2|P1:tempD_vd[0]~q\,
	datad => \U2|P1~1_combout\,
	combout => \U2|P1:tempD_vd[0]~0_combout\);

-- Location: LCCOMB_X74_Y1_N28
\U2|P1:tempD_vd[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vd[0]~1_combout\ = (\U2|P1:tempD_vd[0]~q\ & (((!\U2|P1~1_combout\) # (!\U2|Equal3~0_combout\)) # (!\U2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|P1:tempD_vd[0]~q\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|P1~1_combout\,
	combout => \U2|P1:tempD_vd[0]~1_combout\);

-- Location: LCCOMB_X74_Y1_N4
\U2|P1:tempD_vd[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vd[0]~2_combout\ = (\U2|P1:tempD_vd[0]~1_combout\) # ((\U2|Equal1~0_combout\ & (\U2|P1:tempD_vd[0]~0_combout\ & \U2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|P1:tempD_vd[0]~0_combout\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|P1:tempD_vd[0]~1_combout\,
	combout => \U2|P1:tempD_vd[0]~2_combout\);

-- Location: FF_X74_Y1_N5
\U2|P1:tempD_vd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempD_vd[0]~2_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD_vd[0]~q\);

-- Location: LCCOMB_X75_Y1_N6
\U2|P1:tempD_vd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vd[1]~2_combout\ = (\U2|Equal3~0_combout\ & (\U2|P1~1_combout\ & ((\U2|Equal1~0_combout\) # (!\U2|P1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|P1~1_combout\,
	datac => \U2|Equal1~0_combout\,
	datad => \U2|P1~0_combout\,
	combout => \U2|P1:tempD_vd[1]~2_combout\);

-- Location: LCCOMB_X75_Y1_N12
\U2|P1:tempD_vd[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD_vd[1]~3_combout\ = (\U2|P1:tempD_vd[0]~q\ & (((\U2|P1:tempD_vd[1]~q\)))) # (!\U2|P1:tempD_vd[0]~q\ & ((\U2|P1:tempD_vd[1]~q\ & (!\U2|Equal3~0_combout\ & !\U2|P1:tempD_vd[1]~2_combout\)) # (!\U2|P1:tempD_vd[1]~q\ & 
-- ((\U2|P1:tempD_vd[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|P1:tempD_vd[0]~q\,
	datac => \U2|P1:tempD_vd[1]~q\,
	datad => \U2|P1:tempD_vd[1]~2_combout\,
	combout => \U2|P1:tempD_vd[1]~3_combout\);

-- Location: FF_X75_Y1_N13
\U2|P1:tempD_vd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempD_vd[1]~3_combout\,
	clrn => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD_vd[1]~q\);

-- Location: LCCOMB_X74_Y1_N8
\U2|P1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1~0_combout\ = (\U2|P1:tempD_vd[0]~q\) # ((!\U2|Equal3~0_combout\) # (!\U2|P1:tempD_vd[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempD_vd[0]~q\,
	datac => \U2|P1:tempD_vd[1]~q\,
	datad => \U2|Equal3~0_combout\,
	combout => \U2|P1~0_combout\);

-- Location: LCCOMB_X75_Y1_N10
\U2|tempD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempD~0_combout\ = (!\U2|P1:tempD_vd[1]~q\ & (\U2|P1:tempD_vd[0]~q\ & \U2|P1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vd[1]~q\,
	datac => \U2|P1:tempD_vd[0]~q\,
	datad => \U2|P1~1_combout\,
	combout => \U2|tempD~0_combout\);

-- Location: LCCOMB_X73_Y1_N28
\U2|tempD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempD~1_combout\ = (\U2|P1~0_combout\ & ((\U2|tempD~0_combout\) # ((!\U2|P1:tempD_vm[0]~q\ & !\U2|P1:tempD_vm[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[0]~q\,
	datab => \U2|P1~0_combout\,
	datac => \U2|P1:tempD_vm[1]~q\,
	datad => \U2|tempD~0_combout\,
	combout => \U2|tempD~1_combout\);

-- Location: LCCOMB_X73_Y1_N18
\U2|P1:tempD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD[0]~0_combout\ = (\U2|P1:tempD_vm[1]~q\ & (\U2|P1:tempD_vm[0]~q\ & (!\U2|Equal3~0_combout\ & \U2|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[1]~q\,
	datab => \U2|P1:tempD_vm[0]~q\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|Equal4~0_combout\,
	combout => \U2|P1:tempD[0]~0_combout\);

-- Location: LCCOMB_X73_Y1_N14
\U2|P1:tempD[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempD[0]~1_combout\ = ((\U2|Equal1~0_combout\ & (\U2|Equal4~0_combout\ & !\U2|P1:tempD[0]~0_combout\))) # (!\U2|P1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal1~0_combout\,
	datab => \U2|Equal4~0_combout\,
	datac => \U2|P1~0_combout\,
	datad => \U2|P1:tempD[0]~0_combout\,
	combout => \U2|P1:tempD[0]~1_combout\);

-- Location: FF_X73_Y1_N29
\U2|P1:tempD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempD~1_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempD[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD[1]~q\);

-- Location: LCCOMB_X73_Y1_N30
\U2|tempD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempD~2_combout\ = (\U2|P1~0_combout\ & ((\U2|P1:tempD_vd[0]~0_combout\) # ((!\U2|P1:tempD_vm[1]~q\ & \U2|P1:tempD_vm[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempD_vm[1]~q\,
	datab => \U2|P1:tempD_vm[0]~q\,
	datac => \U2|P1~0_combout\,
	datad => \U2|P1:tempD_vd[0]~0_combout\,
	combout => \U2|tempD~2_combout\);

-- Location: FF_X73_Y1_N31
\U2|P1:tempD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempD~2_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempD[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempD[0]~q\);

-- Location: LCCOMB_X73_Y1_N20
\U4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = (\U2|P1:tempD[0]~q\) # (\U2|P1:tempD[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|P1:tempD[0]~q\,
	datad => \U2|P1:tempD[1]~q\,
	combout => \U4|Mux5~0_combout\);

-- Location: LCCOMB_X73_Y1_N6
\U4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U2|P1:tempD[0]~q\ & !\U2|P1:tempD[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|P1:tempD[0]~q\,
	datad => \U2|P1:tempD[1]~q\,
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X73_Y1_N0
\U4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (!\U2|P1:tempD[0]~q\ & \U2|P1:tempD[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|P1:tempD[0]~q\,
	datad => \U2|P1:tempD[1]~q\,
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y1_N22
\U2|P1:tempU_vm[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU_vm[0]~0_combout\ = (\U2|P1:tempU_vm[1]~4_combout\ & ((!\U2|P1:tempU_vm[0]~q\))) # (!\U2|P1:tempU_vm[1]~4_combout\ & (\U2|P1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1~0_combout\,
	datac => \U2|P1:tempU_vm[0]~q\,
	datad => \U2|P1:tempU_vm[1]~4_combout\,
	combout => \U2|P1:tempU_vm[0]~0_combout\);

-- Location: FF_X75_Y1_N23
\U2|P1:tempU_vm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|P1:tempU_vm[0]~0_combout\,
	asdata => \U2|P1:tempU_vm[0]~q\,
	clrn => \rst_in~input_o\,
	sload => \U2|P1:tempU_vm[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU_vm[0]~q\);

-- Location: LCCOMB_X76_Y1_N16
\U2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~2_combout\ = \U2|P1:tempU_vm[3]~q\ $ (((\U2|P1:tempU_vm[1]~q\) # ((\U2|P1:tempU_vm[2]~q\) # (\U2|P1:tempU_vm[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU_vm[1]~q\,
	datab => \U2|P1:tempU_vm[2]~q\,
	datac => \U2|P1:tempU_vm[3]~q\,
	datad => \U2|P1:tempU_vm[0]~q\,
	combout => \U2|Add2~2_combout\);

-- Location: LCCOMB_X75_Y1_N20
\U2|tempU~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~4_combout\ = (\U2|P1~1_combout\ & (!\U2|Add0~2_combout\)) # (!\U2|P1~1_combout\ & ((!\U2|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~1_combout\,
	datac => \U2|Add0~2_combout\,
	datad => \U2|Add2~2_combout\,
	combout => \U2|tempU~4_combout\);

-- Location: LCCOMB_X74_Y1_N2
\U2|P1:tempU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU[0]~0_combout\ = (\U2|P1~0_combout\ & (((!\U2|Equal3~0_combout\ & \U2|P1~1_combout\)) # (!\U2|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal4~0_combout\,
	datab => \U2|P1~0_combout\,
	datac => \U2|Equal3~0_combout\,
	datad => \U2|P1~1_combout\,
	combout => \U2|P1:tempU[0]~0_combout\);

-- Location: LCCOMB_X74_Y1_N22
\U2|tempU~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~5_combout\ = (\U2|P1:tempU[0]~0_combout\ & ((\U2|tempU~4_combout\))) # (!\U2|P1:tempU[0]~0_combout\ & (\U2|P1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~0_combout\,
	datac => \U2|tempU~4_combout\,
	datad => \U2|P1:tempU[0]~0_combout\,
	combout => \U2|tempU~5_combout\);

-- Location: LCCOMB_X74_Y1_N12
\U2|P1:tempU[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|P1:tempU[0]~1_combout\ = (\U2|Equal1~0_combout\) # ((\U2|Equal3~0_combout\ & (!\U2|P1:tempD_vd[0]~q\ & \U2|P1:tempD_vd[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Equal3~0_combout\,
	datab => \U2|P1:tempD_vd[0]~q\,
	datac => \U2|P1:tempD_vd[1]~q\,
	datad => \U2|Equal1~0_combout\,
	combout => \U2|P1:tempU[0]~1_combout\);

-- Location: FF_X74_Y1_N23
\U2|P1:tempU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempU~5_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempU[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU[3]~q\);

-- Location: LCCOMB_X76_Y1_N26
\U2|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~1_combout\ = \U2|P1:tempU_vm[2]~q\ $ (((\U2|P1:tempU_vm[0]~q\) # (\U2|P1:tempU_vm[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempU_vm[0]~q\,
	datac => \U2|P1:tempU_vm[2]~q\,
	datad => \U2|P1:tempU_vm[1]~q\,
	combout => \U2|Add2~1_combout\);

-- Location: LCCOMB_X74_Y1_N24
\U2|tempU~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~3_combout\ = (\U2|P1:tempU[0]~0_combout\ & ((\U2|P1~1_combout\ & (!\U2|Add0~1_combout\)) # (!\U2|P1~1_combout\ & ((!\U2|Add2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~1_combout\,
	datab => \U2|P1~1_combout\,
	datac => \U2|Add2~1_combout\,
	datad => \U2|P1:tempU[0]~0_combout\,
	combout => \U2|tempU~3_combout\);

-- Location: FF_X74_Y1_N25
\U2|P1:tempU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempU~3_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempU[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU[2]~q\);

-- Location: LCCOMB_X75_Y1_N30
\U2|tempU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~0_combout\ = (!\U2|P1:tempU_vm[0]~q\ & ((!\U2|P1~1_combout\) # (!\U2|P1:tempU_vd[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1:tempU_vm[0]~q\,
	datac => \U2|P1:tempU_vd[0]~q\,
	datad => \U2|P1~1_combout\,
	combout => \U2|tempU~0_combout\);

-- Location: LCCOMB_X74_Y1_N0
\U2|tempU~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~1_combout\ = (\U2|P1:tempU[0]~0_combout\ & ((\U2|tempU~0_combout\))) # (!\U2|P1:tempU[0]~0_combout\ & (\U2|P1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|P1~0_combout\,
	datac => \U2|tempU~0_combout\,
	datad => \U2|P1:tempU[0]~0_combout\,
	combout => \U2|tempU~1_combout\);

-- Location: FF_X74_Y1_N1
\U2|P1:tempU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempU~1_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempU[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU[0]~q\);

-- Location: LCCOMB_X73_Y1_N4
\U2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|P1:tempU_vd[1]~q\ $ (\U2|P1:tempU_vd[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|P1:tempU_vd[1]~q\,
	datad => \U2|P1:tempU_vd[0]~q\,
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X74_Y1_N14
\U2|tempU~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tempU~2_combout\ = (\U2|P1:tempU[0]~0_combout\ & ((\U2|P1~1_combout\ & ((!\U2|Add0~0_combout\))) # (!\U2|P1~1_combout\ & (!\U2|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~0_combout\,
	datab => \U2|P1~1_combout\,
	datac => \U2|Add0~0_combout\,
	datad => \U2|P1:tempU[0]~0_combout\,
	combout => \U2|tempU~2_combout\);

-- Location: FF_X74_Y1_N15
\U2|P1:tempU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|tempU~2_combout\,
	clrn => \rst_in~input_o\,
	ena => \U2|P1:tempU[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|P1:tempU[1]~q\);

-- Location: LCCOMB_X77_Y1_N12
\U3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux6~0_combout\ = (\U2|P1:tempU[2]~q\ & (!\U2|P1:tempU[3]~q\ & ((!\U2|P1:tempU[1]~q\) # (!\U2|P1:tempU[0]~q\)))) # (!\U2|P1:tempU[2]~q\ & (\U2|P1:tempU[3]~q\ $ (((\U2|P1:tempU[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y1_N14
\U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux5~0_combout\ = (\U2|P1:tempU[2]~q\ & ((\U2|P1:tempU[3]~q\) # ((\U2|P1:tempU[0]~q\ & \U2|P1:tempU[1]~q\)))) # (!\U2|P1:tempU[2]~q\ & ((\U2|P1:tempU[1]~q\) # ((!\U2|P1:tempU[3]~q\ & \U2|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y1_N24
\U3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux4~0_combout\ = (\U2|P1:tempU[0]~q\) # ((\U2|P1:tempU[1]~q\ & (\U2|P1:tempU[3]~q\)) # (!\U2|P1:tempU[1]~q\ & ((\U2|P1:tempU[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y1_N6
\U3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux3~0_combout\ = (\U2|P1:tempU[1]~q\ & ((\U2|P1:tempU[3]~q\) # ((\U2|P1:tempU[2]~q\ & \U2|P1:tempU[0]~q\)))) # (!\U2|P1:tempU[1]~q\ & (\U2|P1:tempU[2]~q\ $ (((!\U2|P1:tempU[3]~q\ & \U2|P1:tempU[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y1_N28
\U3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux2~0_combout\ = (\U2|P1:tempU[2]~q\ & (\U2|P1:tempU[3]~q\)) # (!\U2|P1:tempU[2]~q\ & (\U2|P1:tempU[1]~q\ & ((\U2|P1:tempU[3]~q\) # (!\U2|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y1_N26
\U3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux1~0_combout\ = (\U2|P1:tempU[3]~q\ & ((\U2|P1:tempU[2]~q\) # ((\U2|P1:tempU[1]~q\)))) # (!\U2|P1:tempU[3]~q\ & (\U2|P1:tempU[2]~q\ & (\U2|P1:tempU[0]~q\ $ (\U2|P1:tempU[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y1_N20
\U3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Mux0~0_combout\ = (\U2|P1:tempU[1]~q\ & (\U2|P1:tempU[3]~q\)) # (!\U2|P1:tempU[1]~q\ & (\U2|P1:tempU[2]~q\ $ (((!\U2|P1:tempU[3]~q\ & \U2|P1:tempU[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1:tempU[3]~q\,
	datab => \U2|P1:tempU[2]~q\,
	datac => \U2|P1:tempU[0]~q\,
	datad => \U2|P1:tempU[1]~q\,
	combout => \U3|Mux0~0_combout\);

-- Location: LCCOMB_X75_Y1_N4
\U2|verde~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|verde~0_combout\ = (\U2|P1~0_combout\ & ((\U2|verde~q\) # ((\U2|Equal1~0_combout\ & \U2|P1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1~0_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|verde~q\,
	datad => \U2|P1~1_combout\,
	combout => \U2|verde~0_combout\);

-- Location: FF_X75_Y1_N5
\U2|verde\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|verde~0_combout\,
	ena => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|verde~q\);

-- Location: LCCOMB_X75_Y1_N26
\U2|vermelho~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|vermelho~0_combout\ = (\U2|P1~0_combout\ & ((\U2|Equal1~0_combout\ & ((!\U2|P1~1_combout\))) # (!\U2|Equal1~0_combout\ & (\U2|vermelho~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|P1~0_combout\,
	datab => \U2|Equal1~0_combout\,
	datac => \U2|vermelho~q\,
	datad => \U2|P1~1_combout\,
	combout => \U2|vermelho~0_combout\);

-- Location: FF_X75_Y1_N27
\U2|vermelho\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|vermelho~0_combout\,
	ena => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|vermelho~q\);

-- Location: LCCOMB_X77_Y1_N18
\U2|amarelo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|amarelo~0_combout\ = !\U2|P1:tempU[0]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|P1:tempU[0]~1_combout\,
	combout => \U2|amarelo~0_combout\);

-- Location: FF_X77_Y1_N19
\U2|amarelo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|amarelo~0_combout\,
	ena => \rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|amarelo~q\);

ww_ssd_D_c(6) <= \ssd_D_c[6]~output_o\;

ww_ssd_D_c(5) <= \ssd_D_c[5]~output_o\;

ww_ssd_D_c(4) <= \ssd_D_c[4]~output_o\;

ww_ssd_D_c(3) <= \ssd_D_c[3]~output_o\;

ww_ssd_D_c(2) <= \ssd_D_c[2]~output_o\;

ww_ssd_D_c(1) <= \ssd_D_c[1]~output_o\;

ww_ssd_D_c(0) <= \ssd_D_c[0]~output_o\;

ww_ssd_U_c(6) <= \ssd_U_c[6]~output_o\;

ww_ssd_U_c(5) <= \ssd_U_c[5]~output_o\;

ww_ssd_U_c(4) <= \ssd_U_c[4]~output_o\;

ww_ssd_U_c(3) <= \ssd_U_c[3]~output_o\;

ww_ssd_U_c(2) <= \ssd_U_c[2]~output_o\;

ww_ssd_U_c(1) <= \ssd_U_c[1]~output_o\;

ww_ssd_U_c(0) <= \ssd_U_c[0]~output_o\;

ww_ssd_D_p(6) <= \ssd_D_p[6]~output_o\;

ww_ssd_D_p(5) <= \ssd_D_p[5]~output_o\;

ww_ssd_D_p(4) <= \ssd_D_p[4]~output_o\;

ww_ssd_D_p(3) <= \ssd_D_p[3]~output_o\;

ww_ssd_D_p(2) <= \ssd_D_p[2]~output_o\;

ww_ssd_D_p(1) <= \ssd_D_p[1]~output_o\;

ww_ssd_D_p(0) <= \ssd_D_p[0]~output_o\;

ww_ssd_U_p(6) <= \ssd_U_p[6]~output_o\;

ww_ssd_U_p(5) <= \ssd_U_p[5]~output_o\;

ww_ssd_U_p(4) <= \ssd_U_p[4]~output_o\;

ww_ssd_U_p(3) <= \ssd_U_p[3]~output_o\;

ww_ssd_U_p(2) <= \ssd_U_p[2]~output_o\;

ww_ssd_U_p(1) <= \ssd_U_p[1]~output_o\;

ww_ssd_U_p(0) <= \ssd_U_p[0]~output_o\;

ww_verde <= \verde~output_o\;

ww_vermelho <= \vermelho~output_o\;

ww_amarelo <= \amarelo~output_o\;
END structure;


