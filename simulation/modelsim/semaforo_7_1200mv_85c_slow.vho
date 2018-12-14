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

-- DATE "12/14/2018 14:43:44"

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

ENTITY 	semaforo IS
    PORT (
	clk50MHz : IN std_logic;
	rst_in : IN std_logic;
	s1_in : IN std_logic;
	s2_in : IN std_logic;
	b1_in : IN std_logic;
	b2_in : IN std_logic;
	ssd_D : OUT std_logic_vector(0 TO 6);
	ssd_Dp : OUT std_logic_vector(0 TO 6);
	ssd_U : OUT std_logic_vector(0 TO 6);
	ssd_Up : OUT std_logic_vector(0 TO 6);
	ssd_st : OUT std_logic_vector(0 TO 6);
	count_out : OUT std_logic_vector(6 DOWNTO 0);
	CVM : OUT std_logic;
	CVD : OUT std_logic;
	CAM : OUT std_logic;
	PVM : OUT std_logic;
	PVD : OUT std_logic;
	LUZ : OUT std_logic;
	clk_out_1s : OUT std_logic;
	count_fim_vd : OUT std_logic;
	count_fim_vm : OUT std_logic
	);
END semaforo;

-- Design Ports Information
-- ssd_D[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_D[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Dp[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_U[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_Up[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_st[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_out[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CVM	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CVD	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAM	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PVM	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PVD	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LUZ	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_out_1s	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_fim_vd	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count_fim_vm	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1_in	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2_in	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_in	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_in	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2_in	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
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
SIGNAL ww_s1_in : std_logic;
SIGNAL ww_s2_in : std_logic;
SIGNAL ww_b1_in : std_logic;
SIGNAL ww_b2_in : std_logic;
SIGNAL ww_ssd_D : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_Dp : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_U : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_Up : std_logic_vector(0 TO 6);
SIGNAL ww_ssd_st : std_logic_vector(0 TO 6);
SIGNAL ww_count_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CVM : std_logic;
SIGNAL ww_CVD : std_logic;
SIGNAL ww_CAM : std_logic;
SIGNAL ww_PVM : std_logic;
SIGNAL ww_PVD : std_logic;
SIGNAL ww_LUZ : std_logic;
SIGNAL ww_clk_out_1s : std_logic;
SIGNAL ww_count_fim_vd : std_logic;
SIGNAL ww_count_fim_vm : std_logic;
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|clk_1seg_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|presenca~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|presenca~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U2|U1|Add0~1_combout\ : std_logic;
SIGNAL \U6|Selector3~4_combout\ : std_logic;
SIGNAL \U1|divClock:temp[20]~q\ : std_logic;
SIGNAL \U1|divClock:temp[19]~q\ : std_logic;
SIGNAL \U1|divClock:temp[18]~q\ : std_logic;
SIGNAL \U1|divClock:temp[17]~q\ : std_logic;
SIGNAL \U1|divClock:temp[16]~q\ : std_logic;
SIGNAL \U1|divClock:temp[15]~q\ : std_logic;
SIGNAL \U1|divClock:temp[14]~q\ : std_logic;
SIGNAL \U1|divClock:temp[13]~q\ : std_logic;
SIGNAL \U1|divClock:temp[12]~q\ : std_logic;
SIGNAL \U1|divClock:temp[9]~q\ : std_logic;
SIGNAL \U1|divClock:temp[7]~q\ : std_logic;
SIGNAL \U1|divClock:temp[3]~q\ : std_logic;
SIGNAL \U1|divClock:temp[2]~q\ : std_logic;
SIGNAL \U1|divClock:temp[0]~q\ : std_logic;
SIGNAL \U1|temp~3_combout\ : std_logic;
SIGNAL \U1|temp~4_combout\ : std_logic;
SIGNAL \U1|temp~5_combout\ : std_logic;
SIGNAL \U1|temp~6_combout\ : std_logic;
SIGNAL \U1|temp~7_combout\ : std_logic;
SIGNAL \U1|temp~8_combout\ : std_logic;
SIGNAL \U1|temp~9_combout\ : std_logic;
SIGNAL \U4|tempo_temp~0_combout\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \ssd_D[6]~output_o\ : std_logic;
SIGNAL \ssd_D[5]~output_o\ : std_logic;
SIGNAL \ssd_D[4]~output_o\ : std_logic;
SIGNAL \ssd_D[3]~output_o\ : std_logic;
SIGNAL \ssd_D[2]~output_o\ : std_logic;
SIGNAL \ssd_D[1]~output_o\ : std_logic;
SIGNAL \ssd_D[0]~output_o\ : std_logic;
SIGNAL \ssd_Dp[6]~output_o\ : std_logic;
SIGNAL \ssd_Dp[5]~output_o\ : std_logic;
SIGNAL \ssd_Dp[4]~output_o\ : std_logic;
SIGNAL \ssd_Dp[3]~output_o\ : std_logic;
SIGNAL \ssd_Dp[2]~output_o\ : std_logic;
SIGNAL \ssd_Dp[1]~output_o\ : std_logic;
SIGNAL \ssd_Dp[0]~output_o\ : std_logic;
SIGNAL \ssd_U[6]~output_o\ : std_logic;
SIGNAL \ssd_U[5]~output_o\ : std_logic;
SIGNAL \ssd_U[4]~output_o\ : std_logic;
SIGNAL \ssd_U[3]~output_o\ : std_logic;
SIGNAL \ssd_U[2]~output_o\ : std_logic;
SIGNAL \ssd_U[1]~output_o\ : std_logic;
SIGNAL \ssd_U[0]~output_o\ : std_logic;
SIGNAL \ssd_Up[6]~output_o\ : std_logic;
SIGNAL \ssd_Up[5]~output_o\ : std_logic;
SIGNAL \ssd_Up[4]~output_o\ : std_logic;
SIGNAL \ssd_Up[3]~output_o\ : std_logic;
SIGNAL \ssd_Up[2]~output_o\ : std_logic;
SIGNAL \ssd_Up[1]~output_o\ : std_logic;
SIGNAL \ssd_Up[0]~output_o\ : std_logic;
SIGNAL \ssd_st[6]~output_o\ : std_logic;
SIGNAL \ssd_st[5]~output_o\ : std_logic;
SIGNAL \ssd_st[4]~output_o\ : std_logic;
SIGNAL \ssd_st[3]~output_o\ : std_logic;
SIGNAL \ssd_st[2]~output_o\ : std_logic;
SIGNAL \ssd_st[1]~output_o\ : std_logic;
SIGNAL \ssd_st[0]~output_o\ : std_logic;
SIGNAL \count_out[0]~output_o\ : std_logic;
SIGNAL \count_out[1]~output_o\ : std_logic;
SIGNAL \count_out[2]~output_o\ : std_logic;
SIGNAL \count_out[3]~output_o\ : std_logic;
SIGNAL \count_out[4]~output_o\ : std_logic;
SIGNAL \count_out[5]~output_o\ : std_logic;
SIGNAL \count_out[6]~output_o\ : std_logic;
SIGNAL \CVM~output_o\ : std_logic;
SIGNAL \CVD~output_o\ : std_logic;
SIGNAL \CAM~output_o\ : std_logic;
SIGNAL \PVM~output_o\ : std_logic;
SIGNAL \PVD~output_o\ : std_logic;
SIGNAL \LUZ~output_o\ : std_logic;
SIGNAL \clk_out_1s~output_o\ : std_logic;
SIGNAL \count_fim_vd~output_o\ : std_logic;
SIGNAL \count_fim_vm~output_o\ : std_logic;
SIGNAL \U1|Add0~1\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \rst_in~input_o\ : std_logic;
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
SIGNAL \U1|temp~11_combout\ : std_logic;
SIGNAL \U1|divClock:temp[6]~q\ : std_logic;
SIGNAL \U1|Add0~13\ : std_logic;
SIGNAL \U1|Add0~15\ : std_logic;
SIGNAL \U1|Add0~16_combout\ : std_logic;
SIGNAL \U1|divClock:temp[8]~q\ : std_logic;
SIGNAL \U1|Add0~17\ : std_logic;
SIGNAL \U1|Add0~19\ : std_logic;
SIGNAL \U1|Add0~20_combout\ : std_logic;
SIGNAL \U1|divClock:temp[10]~q\ : std_logic;
SIGNAL \U1|Add0~21\ : std_logic;
SIGNAL \U1|Add0~22_combout\ : std_logic;
SIGNAL \U1|temp~1_combout\ : std_logic;
SIGNAL \U1|divClock:temp[22]~q\ : std_logic;
SIGNAL \U1|temp~2_combout\ : std_logic;
SIGNAL \U1|divClock:temp[21]~q\ : std_logic;
SIGNAL \U1|Add0~39\ : std_logic;
SIGNAL \U1|Add0~41\ : std_logic;
SIGNAL \U1|Add0~43\ : std_logic;
SIGNAL \U1|Add0~44_combout\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Equal0~5_combout\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|Add0~34_combout\ : std_logic;
SIGNAL \U1|Add0~28_combout\ : std_logic;
SIGNAL \U1|Equal0~6_combout\ : std_logic;
SIGNAL \U1|Equal0~7_combout\ : std_logic;
SIGNAL \U1|temp~10_combout\ : std_logic;
SIGNAL \U1|divClock:temp[11]~q\ : std_logic;
SIGNAL \U1|Add0~23\ : std_logic;
SIGNAL \U1|Add0~25\ : std_logic;
SIGNAL \U1|Add0~27\ : std_logic;
SIGNAL \U1|Add0~29\ : std_logic;
SIGNAL \U1|Add0~31\ : std_logic;
SIGNAL \U1|Add0~33\ : std_logic;
SIGNAL \U1|Add0~35\ : std_logic;
SIGNAL \U1|Add0~37\ : std_logic;
SIGNAL \U1|Add0~38_combout\ : std_logic;
SIGNAL \U1|Add0~40_combout\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add0~14_combout\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Add0~26_combout\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|divClock:temp[25]~q\ : std_logic;
SIGNAL \U1|Add0~45\ : std_logic;
SIGNAL \U1|Add0~46_combout\ : std_logic;
SIGNAL \U1|divClock:temp[23]~q\ : std_logic;
SIGNAL \U1|Add0~47\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|temp~0_combout\ : std_logic;
SIGNAL \U1|divClock:temp[24]~q\ : std_logic;
SIGNAL \U1|Add0~49\ : std_logic;
SIGNAL \U1|Add0~50_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|Add0~32_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~0_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~1_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~2_combout\ : std_logic;
SIGNAL \U1|clk_1seg_temp~q\ : std_logic;
SIGNAL \U1|clk_1seg_temp~clkctrl_outclk\ : std_logic;
SIGNAL \U2|U1|P1:tempD[0]~2_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempD[0]~q\ : std_logic;
SIGNAL \U2|U3|Mux5~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempU[0]~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempU[0]~q\ : std_logic;
SIGNAL \b2_in~input_o\ : std_logic;
SIGNAL \b1_in~input_o\ : std_logic;
SIGNAL \U6|botao~combout\ : std_logic;
SIGNAL \U2|U1|count_fim~0_combout\ : std_logic;
SIGNAL \U2|U1|count_fim~q\ : std_logic;
SIGNAL \U6|Selector2~0_combout\ : std_logic;
SIGNAL \U5|presenca~1_combout\ : std_logic;
SIGNAL \U5|tempo_temp[0]~2_combout\ : std_logic;
SIGNAL \s2_in~input_o\ : std_logic;
SIGNAL \U5|presenca~0_combout\ : std_logic;
SIGNAL \U5|presenca~0clkctrl_outclk\ : std_logic;
SIGNAL \U5|tempo_temp~1_combout\ : std_logic;
SIGNAL \U5|Add0~0_combout\ : std_logic;
SIGNAL \U5|tempo_temp~0_combout\ : std_logic;
SIGNAL \U5|Equal0~0_combout\ : std_logic;
SIGNAL \U5|presenca~3_combout\ : std_logic;
SIGNAL \U5|presenca~_emulated_q\ : std_logic;
SIGNAL \U5|presenca~2_combout\ : std_logic;
SIGNAL \s1_in~input_o\ : std_logic;
SIGNAL \U4|presenca~1_combout\ : std_logic;
SIGNAL \U4|tempo_temp[0]~2_combout\ : std_logic;
SIGNAL \U4|presenca~0_combout\ : std_logic;
SIGNAL \U4|presenca~0clkctrl_outclk\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \U4|tempo_temp~1_combout\ : std_logic;
SIGNAL \U4|Equal0~0_combout\ : std_logic;
SIGNAL \U4|presenca~3_combout\ : std_logic;
SIGNAL \U4|presenca~_emulated_q\ : std_logic;
SIGNAL \U4|presenca~2_combout\ : std_logic;
SIGNAL \U6|pr_state~15_combout\ : std_logic;
SIGNAL \U6|pr_state.st2~q\ : std_logic;
SIGNAL \U6|timer[6]~0_combout\ : std_logic;
SIGNAL \U6|count~7_combout\ : std_logic;
SIGNAL \U6|Add0~1\ : std_logic;
SIGNAL \U6|Add0~3\ : std_logic;
SIGNAL \U6|Add0~4_combout\ : std_logic;
SIGNAL \U6|count~6_combout\ : std_logic;
SIGNAL \U6|Add0~5\ : std_logic;
SIGNAL \U6|Add0~6_combout\ : std_logic;
SIGNAL \U6|Add0~2_combout\ : std_logic;
SIGNAL \U6|LessThan0~0_combout\ : std_logic;
SIGNAL \U6|LessThan0~1_combout\ : std_logic;
SIGNAL \U6|count~10_combout\ : std_logic;
SIGNAL \U6|Add0~7\ : std_logic;
SIGNAL \U6|Add0~8_combout\ : std_logic;
SIGNAL \U6|count~8_combout\ : std_logic;
SIGNAL \U6|Add0~9\ : std_logic;
SIGNAL \U6|Add0~11\ : std_logic;
SIGNAL \U6|Add0~12_combout\ : std_logic;
SIGNAL \U6|count~9_combout\ : std_logic;
SIGNAL \U6|Add0~10_combout\ : std_logic;
SIGNAL \U6|LessThan0~2_combout\ : std_logic;
SIGNAL \U6|pr_state.st3~q\ : std_logic;
SIGNAL \U6|load_vd~0_combout\ : std_logic;
SIGNAL \U6|Selector3~5_combout\ : std_logic;
SIGNAL \U6|pr_state.st4~q\ : std_logic;
SIGNAL \U6|Selector0~2_combout\ : std_logic;
SIGNAL \U6|Selector0~3_combout\ : std_logic;
SIGNAL \U6|pr_state.st0~q\ : std_logic;
SIGNAL \U6|Selector4~0_combout\ : std_logic;
SIGNAL \U6|pr_state.wait1~q\ : std_logic;
SIGNAL \U6|Selector1~0_combout\ : std_logic;
SIGNAL \U6|Selector1~1_combout\ : std_logic;
SIGNAL \U6|pr_state.st1~q\ : std_logic;
SIGNAL \U2|U1|P1:tempU[3]~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempU[3]~q\ : std_logic;
SIGNAL \U2|U1|P1:tempU[1]~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempU[1]~q\ : std_logic;
SIGNAL \U2|U1|Add0~0_combout\ : std_logic;
SIGNAL \U2|U1|tempU~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempU[2]~q\ : std_logic;
SIGNAL \U2|U1|P1:tempU[2]~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempD[1]~0_combout\ : std_logic;
SIGNAL \U2|U1|P1:tempD[1]~q\ : std_logic;
SIGNAL \U2|U3|Mux0~0_combout\ : std_logic;
SIGNAL \U2|U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[2]~5_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[0]~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[2]~4_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[0]~q\ : std_logic;
SIGNAL \U3|U1|P1:tempU[1]~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[1]~q\ : std_logic;
SIGNAL \U3|U1|Add0~1_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[3]~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[3]~q\ : std_logic;
SIGNAL \U3|U1|Add0~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[2]~6_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempU[2]~q\ : std_logic;
SIGNAL \U3|U1|Equal1~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempD[0]~2_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempD[0]~q\ : std_logic;
SIGNAL \U3|U1|P1:tempD[1]~0_combout\ : std_logic;
SIGNAL \U3|U1|P1:tempD[1]~q\ : std_logic;
SIGNAL \U3|U3|Mux5~0_combout\ : std_logic;
SIGNAL \U3|U3|Mux2~0_combout\ : std_logic;
SIGNAL \U3|U3|Mux2~1_combout\ : std_logic;
SIGNAL \U2|U2|Mux6~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux5~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux4~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux3~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux2~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux1~0_combout\ : std_logic;
SIGNAL \U2|U2|Mux0~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux6~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux5~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux4~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux3~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux2~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux1~0_combout\ : std_logic;
SIGNAL \U3|U2|Mux0~0_combout\ : std_logic;
SIGNAL \U7|Mux6~0_combout\ : std_logic;
SIGNAL \U6|WideOr0~0_combout\ : std_logic;
SIGNAL \U7|Mux5~0_combout\ : std_logic;
SIGNAL \U7|Mux4~0_combout\ : std_logic;
SIGNAL \U7|Mux3~0_combout\ : std_logic;
SIGNAL \U7|Mux2~0_combout\ : std_logic;
SIGNAL \U7|Mux1~0_combout\ : std_logic;
SIGNAL \U6|Add0~0_combout\ : std_logic;
SIGNAL \U6|count~4_combout\ : std_logic;
SIGNAL \U6|count_out[0]~0_combout\ : std_logic;
SIGNAL \U6|Selector5~0_combout\ : std_logic;
SIGNAL \U6|count~5_combout\ : std_logic;
SIGNAL \U6|count_out[0]~1\ : std_logic;
SIGNAL \U6|count_out[1]~2_combout\ : std_logic;
SIGNAL \U6|count_out[1]~3\ : std_logic;
SIGNAL \U6|count_out[2]~4_combout\ : std_logic;
SIGNAL \U6|count_out[2]~5\ : std_logic;
SIGNAL \U6|count_out[3]~6_combout\ : std_logic;
SIGNAL \U6|count_out[3]~7\ : std_logic;
SIGNAL \U6|count_out[4]~8_combout\ : std_logic;
SIGNAL \U6|count_out[4]~9\ : std_logic;
SIGNAL \U6|count_out[5]~10_combout\ : std_logic;
SIGNAL \U6|count_out[5]~11\ : std_logic;
SIGNAL \U6|count_out[6]~12_combout\ : std_logic;
SIGNAL \U6|WideOr6~0_combout\ : std_logic;
SIGNAL \U3|U1|count_fim~0_combout\ : std_logic;
SIGNAL \U3|U1|count_fim~q\ : std_logic;
SIGNAL \U5|tempo_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|tempo_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U6|st_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U6|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U4|ALT_INV_presenca~0clkctrl_outclk\ : std_logic;
SIGNAL \U5|ALT_INV_presenca~0clkctrl_outclk\ : std_logic;
SIGNAL \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst_in~input_o\ : std_logic;
SIGNAL \U2|U1|ALT_INV_count_fim~q\ : std_logic;
SIGNAL \U3|U1|ALT_INV_count_fim~q\ : std_logic;
SIGNAL \U1|ALT_INV_clk_1seg_temp~q\ : std_logic;
SIGNAL \U6|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U6|ALT_INV_pr_state.st3~q\ : std_logic;
SIGNAL \U3|U2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U2|U2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U3|U1|ALT_INV_P1:tempD[1]~q\ : std_logic;
SIGNAL \U2|U3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U2|U1|ALT_INV_P1:tempD[1]~q\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst_in <= rst_in;
ww_s1_in <= s1_in;
ww_s2_in <= s2_in;
ww_b1_in <= b1_in;
ww_b2_in <= b2_in;
ssd_D <= ww_ssd_D;
ssd_Dp <= ww_ssd_Dp;
ssd_U <= ww_ssd_U;
ssd_Up <= ww_ssd_Up;
ssd_st <= ww_ssd_st;
count_out <= ww_count_out;
CVM <= ww_CVM;
CVD <= ww_CVD;
CAM <= ww_CAM;
PVM <= ww_PVM;
PVD <= ww_PVD;
LUZ <= ww_LUZ;
clk_out_1s <= ww_clk_out_1s;
count_fim_vd <= ww_count_fim_vd;
count_fim_vm <= ww_count_fim_vm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

\U1|clk_1seg_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|clk_1seg_temp~q\);

\U5|presenca~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U5|presenca~0_combout\);

\U4|presenca~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U4|presenca~0_combout\);
\U4|ALT_INV_presenca~0clkctrl_outclk\ <= NOT \U4|presenca~0clkctrl_outclk\;
\U5|ALT_INV_presenca~0clkctrl_outclk\ <= NOT \U5|presenca~0clkctrl_outclk\;
\U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\ <= NOT \U1|clk_1seg_temp~clkctrl_outclk\;
\ALT_INV_rst_in~input_o\ <= NOT \rst_in~input_o\;
\U2|U1|ALT_INV_count_fim~q\ <= NOT \U2|U1|count_fim~q\;
\U3|U1|ALT_INV_count_fim~q\ <= NOT \U3|U1|count_fim~q\;
\U1|ALT_INV_clk_1seg_temp~q\ <= NOT \U1|clk_1seg_temp~q\;
\U6|ALT_INV_WideOr6~0_combout\ <= NOT \U6|WideOr6~0_combout\;
\U7|ALT_INV_Mux3~0_combout\ <= NOT \U7|Mux3~0_combout\;
\U7|ALT_INV_Mux5~0_combout\ <= NOT \U7|Mux5~0_combout\;
\U7|ALT_INV_Mux6~0_combout\ <= NOT \U7|Mux6~0_combout\;
\U6|ALT_INV_pr_state.st3~q\ <= NOT \U6|pr_state.st3~q\;
\U3|U2|ALT_INV_Mux6~0_combout\ <= NOT \U3|U2|Mux6~0_combout\;
\U2|U2|ALT_INV_Mux6~0_combout\ <= NOT \U2|U2|Mux6~0_combout\;
\U3|U1|ALT_INV_P1:tempD[1]~q\ <= NOT \U3|U1|P1:tempD[1]~q\;
\U2|U3|ALT_INV_Mux5~0_combout\ <= NOT \U2|U3|Mux5~0_combout\;
\U2|U1|ALT_INV_P1:tempD[1]~q\ <= NOT \U2|U1|P1:tempD[1]~q\;

-- Location: LCCOMB_X102_Y30_N6
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

-- Location: LCCOMB_X102_Y30_N10
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

-- Location: LCCOMB_X102_Y29_N10
\U1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|divClock:temp[18]~q\ & (\U1|Add0~35\ $ (GND))) # (!\U1|divClock:temp[18]~q\ & (!\U1|Add0~35\ & VCC))
-- \U1|Add0~37\ = CARRY((\U1|divClock:temp[18]~q\ & !\U1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[18]~q\,
	datad => VCC,
	cin => \U1|Add0~35\,
	combout => \U1|Add0~36_combout\,
	cout => \U1|Add0~37\);

-- Location: LCCOMB_X74_Y8_N26
\U2|U1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~1_combout\ = \U2|U1|P1:tempU[3]~q\ $ (((\U2|U1|P1:tempU[1]~q\) # ((\U2|U1|P1:tempU[0]~q\) # (\U2|U1|P1:tempU[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U1|Add0~1_combout\);

-- Location: LCCOMB_X82_Y12_N6
\U6|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector3~4_combout\ = (\U3|U1|count_fim~q\ & (\U6|pr_state.st4~q\ & ((\U5|presenca~2_combout\) # (\U4|presenca~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|count_fim~q\,
	datab => \U6|pr_state.st4~q\,
	datac => \U5|presenca~2_combout\,
	datad => \U4|presenca~2_combout\,
	combout => \U6|Selector3~4_combout\);

-- Location: FF_X100_Y29_N27
\U1|divClock:temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~3_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[20]~q\);

-- Location: FF_X101_Y29_N13
\U1|divClock:temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~4_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[19]~q\);

-- Location: FF_X101_Y29_N17
\U1|divClock:temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~5_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[18]~q\);

-- Location: FF_X102_Y29_N9
\U1|divClock:temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~34_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[17]~q\);

-- Location: FF_X101_Y29_N9
\U1|divClock:temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[16]~q\);

-- Location: FF_X102_Y29_N5
\U1|divClock:temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~30_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[15]~q\);

-- Location: FF_X101_Y29_N27
\U1|divClock:temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~7_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[14]~q\);

-- Location: FF_X102_Y29_N27
\U1|divClock:temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[13]~q\);

-- Location: FF_X101_Y29_N3
\U1|divClock:temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~9_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[12]~q\);

-- Location: FF_X102_Y30_N25
\U1|divClock:temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~18_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[9]~q\);

-- Location: FF_X102_Y30_N21
\U1|divClock:temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~14_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[7]~q\);

-- Location: FF_X102_Y30_N13
\U1|divClock:temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[3]~q\);

-- Location: FF_X102_Y30_N11
\U1|divClock:temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~4_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[2]~q\);

-- Location: FF_X102_Y30_N7
\U1|divClock:temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[0]~q\);

-- Location: FF_X84_Y12_N11
\U4|tempo_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U4|tempo_temp~0_combout\,
	clrn => \U4|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|tempo_temp\(3));

-- Location: LCCOMB_X100_Y29_N26
\U1|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~3_combout\ = (\U1|Add0~40_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~40_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~3_combout\);

-- Location: LCCOMB_X101_Y29_N12
\U1|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~4_combout\ = (\U1|Add0~38_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~38_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~4_combout\);

-- Location: LCCOMB_X101_Y29_N16
\U1|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~5_combout\ = (\U1|Add0~36_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~36_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~5_combout\);

-- Location: LCCOMB_X101_Y29_N8
\U1|temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~6_combout\ = (\U1|Add0~32_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~32_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~6_combout\);

-- Location: LCCOMB_X101_Y29_N26
\U1|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~7_combout\ = (\U1|Add0~28_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~28_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~7_combout\);

-- Location: LCCOMB_X102_Y29_N26
\U1|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~8_combout\ = (\U1|Add0~26_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~26_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~8_combout\);

-- Location: LCCOMB_X101_Y29_N2
\U1|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~9_combout\ = (\U1|Add0~24_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~9_combout\);

-- Location: LCCOMB_X84_Y12_N10
\U4|tempo_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|tempo_temp~0_combout\ = (\U4|tempo_temp\(1) & (\U4|tempo_temp\(3) $ (((\U4|tempo_temp\(0) & \U4|tempo_temp\(2)))))) # (!\U4|tempo_temp\(1) & (\U4|tempo_temp\(3) & ((\U4|tempo_temp\(2)) # (!\U4|tempo_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|tempo_temp\(1),
	datab => \U4|tempo_temp\(0),
	datac => \U4|tempo_temp\(3),
	datad => \U4|tempo_temp\(2),
	combout => \U4|tempo_temp~0_combout\);

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
\ssd_D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|ALT_INV_P1:tempD[1]~q\,
	devoe => ww_devoe,
	o => \ssd_D[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\ssd_D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ssd_D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|P1:tempD[0]~q\,
	devoe => ww_devoe,
	o => \ssd_D[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ssd_D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\ssd_D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\ssd_D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd_D[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ssd_D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_D[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\ssd_Dp[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U1|ALT_INV_P1:tempD[1]~q\,
	devoe => ww_devoe,
	o => \ssd_Dp[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\ssd_Dp[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Dp[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\ssd_Dp[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U1|P1:tempD[0]~q\,
	devoe => ww_devoe,
	o => \ssd_Dp[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\ssd_Dp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Dp[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\ssd_Dp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \ssd_Dp[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\ssd_Dp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ssd_Dp[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\ssd_Dp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Dp[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\ssd_U[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\ssd_U[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\ssd_U[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\ssd_U[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\ssd_U[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\ssd_U[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\ssd_U[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_U[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\ssd_Up[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\ssd_Up[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\ssd_Up[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\ssd_Up[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\ssd_Up[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\ssd_Up[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\ssd_Up[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_Up[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\ssd_st[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\ssd_st[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\ssd_st[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\ssd_st[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\ssd_st[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\ssd_st[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\ssd_st[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_st[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\count_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \count_out[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\count_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[1]~2_combout\,
	devoe => ww_devoe,
	o => \count_out[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\count_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[2]~4_combout\,
	devoe => ww_devoe,
	o => \count_out[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\count_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[3]~6_combout\,
	devoe => ww_devoe,
	o => \count_out[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\count_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[4]~8_combout\,
	devoe => ww_devoe,
	o => \count_out[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\count_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[5]~10_combout\,
	devoe => ww_devoe,
	o => \count_out[5]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\count_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|count_out[6]~12_combout\,
	devoe => ww_devoe,
	o => \count_out[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\CVM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|pr_state.st3~q\,
	devoe => ww_devoe,
	o => \CVM~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\CVD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \CVD~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\CAM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|pr_state.st1~q\,
	devoe => ww_devoe,
	o => \CAM~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\PVM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_pr_state.st3~q\,
	devoe => ww_devoe,
	o => \PVM~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\PVD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|pr_state.st3~q\,
	devoe => ww_devoe,
	o => \PVD~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\LUZ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \LUZ~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\clk_out_1s~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_clk_1seg_temp~q\,
	devoe => ww_devoe,
	o => \clk_out_1s~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\count_fim_vd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U1|ALT_INV_count_fim~q\,
	devoe => ww_devoe,
	o => \count_fim_vd~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\count_fim_vm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U1|ALT_INV_count_fim~q\,
	devoe => ww_devoe,
	o => \count_fim_vm~output_o\);

-- Location: LCCOMB_X102_Y30_N8
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

-- Location: FF_X102_Y30_N9
\U1|divClock:temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[1]~q\);

-- Location: LCCOMB_X102_Y30_N12
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

-- Location: LCCOMB_X102_Y30_N14
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

-- Location: FF_X102_Y30_N15
\U1|divClock:temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[4]~q\);

-- Location: LCCOMB_X102_Y30_N16
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

-- Location: FF_X102_Y30_N17
\U1|divClock:temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~10_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[5]~q\);

-- Location: LCCOMB_X102_Y30_N18
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

-- Location: LCCOMB_X102_Y30_N0
\U1|temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~11_combout\ = (\U1|Add0~12_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Equal0~7_combout\,
	datab => \U1|Add0~12_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~11_combout\);

-- Location: FF_X102_Y30_N1
\U1|divClock:temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~11_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[6]~q\);

-- Location: LCCOMB_X102_Y30_N20
\U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~14_combout\ = (\U1|divClock:temp[7]~q\ & (!\U1|Add0~13\)) # (!\U1|divClock:temp[7]~q\ & ((\U1|Add0~13\) # (GND)))
-- \U1|Add0~15\ = CARRY((!\U1|Add0~13\) # (!\U1|divClock:temp[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[7]~q\,
	datad => VCC,
	cin => \U1|Add0~13\,
	combout => \U1|Add0~14_combout\,
	cout => \U1|Add0~15\);

-- Location: LCCOMB_X102_Y30_N22
\U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~16_combout\ = (\U1|divClock:temp[8]~q\ & (\U1|Add0~15\ $ (GND))) # (!\U1|divClock:temp[8]~q\ & (!\U1|Add0~15\ & VCC))
-- \U1|Add0~17\ = CARRY((\U1|divClock:temp[8]~q\ & !\U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[8]~q\,
	datad => VCC,
	cin => \U1|Add0~15\,
	combout => \U1|Add0~16_combout\,
	cout => \U1|Add0~17\);

-- Location: FF_X102_Y30_N23
\U1|divClock:temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~16_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[8]~q\);

-- Location: LCCOMB_X102_Y30_N24
\U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|divClock:temp[9]~q\ & (!\U1|Add0~17\)) # (!\U1|divClock:temp[9]~q\ & ((\U1|Add0~17\) # (GND)))
-- \U1|Add0~19\ = CARRY((!\U1|Add0~17\) # (!\U1|divClock:temp[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[9]~q\,
	datad => VCC,
	cin => \U1|Add0~17\,
	combout => \U1|Add0~18_combout\,
	cout => \U1|Add0~19\);

-- Location: LCCOMB_X102_Y30_N26
\U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~20_combout\ = (\U1|divClock:temp[10]~q\ & (\U1|Add0~19\ $ (GND))) # (!\U1|divClock:temp[10]~q\ & (!\U1|Add0~19\ & VCC))
-- \U1|Add0~21\ = CARRY((\U1|divClock:temp[10]~q\ & !\U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[10]~q\,
	datad => VCC,
	cin => \U1|Add0~19\,
	combout => \U1|Add0~20_combout\,
	cout => \U1|Add0~21\);

-- Location: FF_X102_Y30_N27
\U1|divClock:temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~20_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[10]~q\);

-- Location: LCCOMB_X102_Y30_N28
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

-- Location: LCCOMB_X100_Y29_N10
\U1|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~1_combout\ = (\U1|Add0~44_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~44_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~1_combout\);

-- Location: FF_X100_Y29_N11
\U1|divClock:temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~1_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[22]~q\);

-- Location: LCCOMB_X100_Y29_N28
\U1|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~2_combout\ = (\U1|Add0~42_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~42_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~2_combout\);

-- Location: FF_X100_Y29_N29
\U1|divClock:temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[21]~q\);

-- Location: LCCOMB_X102_Y29_N12
\U1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~38_combout\ = (\U1|divClock:temp[19]~q\ & (!\U1|Add0~37\)) # (!\U1|divClock:temp[19]~q\ & ((\U1|Add0~37\) # (GND)))
-- \U1|Add0~39\ = CARRY((!\U1|Add0~37\) # (!\U1|divClock:temp[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[19]~q\,
	datad => VCC,
	cin => \U1|Add0~37\,
	combout => \U1|Add0~38_combout\,
	cout => \U1|Add0~39\);

-- Location: LCCOMB_X102_Y29_N14
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

-- Location: LCCOMB_X102_Y29_N16
\U1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~42_combout\ = (\U1|divClock:temp[21]~q\ & (!\U1|Add0~41\)) # (!\U1|divClock:temp[21]~q\ & ((\U1|Add0~41\) # (GND)))
-- \U1|Add0~43\ = CARRY((!\U1|Add0~41\) # (!\U1|divClock:temp[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[21]~q\,
	datad => VCC,
	cin => \U1|Add0~41\,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~43\);

-- Location: LCCOMB_X102_Y29_N18
\U1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~44_combout\ = (\U1|divClock:temp[22]~q\ & (\U1|Add0~43\ $ (GND))) # (!\U1|divClock:temp[22]~q\ & (!\U1|Add0~43\ & VCC))
-- \U1|Add0~45\ = CARRY((\U1|divClock:temp[22]~q\ & !\U1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[22]~q\,
	datad => VCC,
	cin => \U1|Add0~43\,
	combout => \U1|Add0~44_combout\,
	cout => \U1|Add0~45\);

-- Location: LCCOMB_X102_Y30_N4
\U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~5_combout\ = (!\U1|Add0~20_combout\ & (\U1|Add0~12_combout\ & (!\U1|Add0~6_combout\ & !\U1|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~20_combout\,
	datab => \U1|Add0~12_combout\,
	datac => \U1|Add0~6_combout\,
	datad => \U1|Add0~8_combout\,
	combout => \U1|Equal0~5_combout\);

-- Location: LCCOMB_X102_Y29_N4
\U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|divClock:temp[15]~q\ & (!\U1|Add0~29\)) # (!\U1|divClock:temp[15]~q\ & ((\U1|Add0~29\) # (GND)))
-- \U1|Add0~31\ = CARRY((!\U1|Add0~29\) # (!\U1|divClock:temp[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[15]~q\,
	datad => VCC,
	cin => \U1|Add0~29\,
	combout => \U1|Add0~30_combout\,
	cout => \U1|Add0~31\);

-- Location: LCCOMB_X102_Y29_N8
\U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~34_combout\ = (\U1|divClock:temp[17]~q\ & (!\U1|Add0~33\)) # (!\U1|divClock:temp[17]~q\ & ((\U1|Add0~33\) # (GND)))
-- \U1|Add0~35\ = CARRY((!\U1|Add0~33\) # (!\U1|divClock:temp[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[17]~q\,
	datad => VCC,
	cin => \U1|Add0~33\,
	combout => \U1|Add0~34_combout\,
	cout => \U1|Add0~35\);

-- Location: LCCOMB_X102_Y29_N2
\U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~28_combout\ = (\U1|divClock:temp[14]~q\ & (\U1|Add0~27\ $ (GND))) # (!\U1|divClock:temp[14]~q\ & (!\U1|Add0~27\ & VCC))
-- \U1|Add0~29\ = CARRY((\U1|divClock:temp[14]~q\ & !\U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[14]~q\,
	datad => VCC,
	cin => \U1|Add0~27\,
	combout => \U1|Add0~28_combout\,
	cout => \U1|Add0~29\);

-- Location: LCCOMB_X102_Y29_N28
\U1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~6_combout\ = (\U1|Add0~32_combout\ & (!\U1|Add0~30_combout\ & (!\U1|Add0~34_combout\ & \U1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~32_combout\,
	datab => \U1|Add0~30_combout\,
	datac => \U1|Add0~34_combout\,
	datad => \U1|Add0~28_combout\,
	combout => \U1|Equal0~6_combout\);

-- Location: LCCOMB_X102_Y29_N30
\U1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~7_combout\ = (\U1|Add0~48_combout\ & (\U1|Add0~44_combout\ & (\U1|Equal0~5_combout\ & \U1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~48_combout\,
	datab => \U1|Add0~44_combout\,
	datac => \U1|Equal0~5_combout\,
	datad => \U1|Equal0~6_combout\,
	combout => \U1|Equal0~7_combout\);

-- Location: LCCOMB_X101_Y29_N0
\U1|temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~10_combout\ = (\U1|Add0~22_combout\ & ((!\U1|Equal0~4_combout\) # (!\U1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~22_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|Equal0~4_combout\,
	combout => \U1|temp~10_combout\);

-- Location: FF_X101_Y29_N1
\U1|divClock:temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~10_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[11]~q\);

-- Location: LCCOMB_X102_Y30_N30
\U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|divClock:temp[12]~q\ & (\U1|Add0~23\ $ (GND))) # (!\U1|divClock:temp[12]~q\ & (!\U1|Add0~23\ & VCC))
-- \U1|Add0~25\ = CARRY((\U1|divClock:temp[12]~q\ & !\U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[12]~q\,
	datad => VCC,
	cin => \U1|Add0~23\,
	combout => \U1|Add0~24_combout\,
	cout => \U1|Add0~25\);

-- Location: LCCOMB_X102_Y29_N0
\U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~26_combout\ = (\U1|divClock:temp[13]~q\ & (!\U1|Add0~25\)) # (!\U1|divClock:temp[13]~q\ & ((\U1|Add0~25\) # (GND)))
-- \U1|Add0~27\ = CARRY((!\U1|Add0~25\) # (!\U1|divClock:temp[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[13]~q\,
	datad => VCC,
	cin => \U1|Add0~25\,
	combout => \U1|Add0~26_combout\,
	cout => \U1|Add0~27\);

-- Location: LCCOMB_X102_Y29_N6
\U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~32_combout\ = (\U1|divClock:temp[16]~q\ & (\U1|Add0~31\ $ (GND))) # (!\U1|divClock:temp[16]~q\ & (!\U1|Add0~31\ & VCC))
-- \U1|Add0~33\ = CARRY((\U1|divClock:temp[16]~q\ & !\U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|divClock:temp[16]~q\,
	datad => VCC,
	cin => \U1|Add0~31\,
	combout => \U1|Add0~32_combout\,
	cout => \U1|Add0~33\);

-- Location: LCCOMB_X101_Y29_N4
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|Add0~36_combout\ & (\U1|Add0~38_combout\ & (\U1|Add0~40_combout\ & \U1|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~36_combout\,
	datab => \U1|Add0~38_combout\,
	datac => \U1|Add0~40_combout\,
	datad => \U1|Add0~42_combout\,
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X102_Y30_N2
\U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = (!\U1|Add0~10_combout\ & (!\U1|Add0~14_combout\ & (!\U1|Add0~16_combout\ & !\U1|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~10_combout\,
	datab => \U1|Add0~14_combout\,
	datac => \U1|Add0~16_combout\,
	datad => \U1|Add0~18_combout\,
	combout => \U1|Equal0~1_combout\);

-- Location: LCCOMB_X101_Y29_N6
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

-- Location: LCCOMB_X101_Y29_N30
\U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = (!\U1|Add0~4_combout\ & (!\U1|Add0~2_combout\ & (\U1|Equal0~1_combout\ & \U1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \U1|Add0~2_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Equal0~2_combout\,
	combout => \U1|Equal0~3_combout\);

-- Location: FF_X102_Y29_N25
\U1|divClock:temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~50_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[25]~q\);

-- Location: LCCOMB_X102_Y29_N20
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

-- Location: FF_X102_Y29_N21
\U1|divClock:temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|Add0~46_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[23]~q\);

-- Location: LCCOMB_X102_Y29_N22
\U1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Add0~48_combout\ = (\U1|divClock:temp[24]~q\ & (\U1|Add0~47\ $ (GND))) # (!\U1|divClock:temp[24]~q\ & (!\U1|Add0~47\ & VCC))
-- \U1|Add0~49\ = CARRY((\U1|divClock:temp[24]~q\ & !\U1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|divClock:temp[24]~q\,
	datad => VCC,
	cin => \U1|Add0~47\,
	combout => \U1|Add0~48_combout\,
	cout => \U1|Add0~49\);

-- Location: LCCOMB_X100_Y29_N4
\U1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|temp~0_combout\ = (\U1|Add0~48_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~48_combout\,
	datac => \U1|Equal0~4_combout\,
	datad => \U1|Equal0~7_combout\,
	combout => \U1|temp~0_combout\);

-- Location: FF_X100_Y29_N5
\U1|divClock:temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|temp~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|divClock:temp[24]~q\);

-- Location: LCCOMB_X102_Y29_N24
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

-- Location: LCCOMB_X101_Y29_N14
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

-- Location: LCCOMB_X101_Y29_N22
\U1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (((!\U1|Add0~22_combout\) # (!\U1|Add0~20_combout\)) # (!\U1|Add0~26_combout\)) # (!\U1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~24_combout\,
	datab => \U1|Add0~26_combout\,
	datac => \U1|Add0~20_combout\,
	datad => \U1|Add0~22_combout\,
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X101_Y29_N20
\U1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = ((!\U1|Add0~28_combout\ & (!\U1|Add0~12_combout\ & \U1|Equal0~1_combout\))) # (!\U1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~28_combout\,
	datab => \U1|Add0~12_combout\,
	datac => \U1|Equal0~1_combout\,
	datad => \U1|Add0~30_combout\,
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X101_Y29_N18
\U1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (!\U1|Add0~32_combout\ & ((\U1|LessThan0~0_combout\) # ((!\U1|Add0~28_combout\ & \U1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~28_combout\,
	datab => \U1|Add0~32_combout\,
	datac => \U1|LessThan0~1_combout\,
	datad => \U1|LessThan0~0_combout\,
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X101_Y29_N10
\U1|clk_1seg_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_1seg_temp~0_combout\ = (\U1|Add0~34_combout\ & (\U1|Equal0~0_combout\ & !\U1|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Add0~34_combout\,
	datac => \U1|Equal0~0_combout\,
	datad => \U1|LessThan0~2_combout\,
	combout => \U1|clk_1seg_temp~0_combout\);

-- Location: LCCOMB_X101_Y29_N24
\U1|clk_1seg_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_1seg_temp~1_combout\ = (\U1|Add0~50_combout\) # ((\U1|Add0~46_combout\ & ((\U1|Add0~44_combout\) # (\U1|clk_1seg_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~46_combout\,
	datab => \U1|Add0~50_combout\,
	datac => \U1|Add0~44_combout\,
	datad => \U1|clk_1seg_temp~0_combout\,
	combout => \U1|clk_1seg_temp~1_combout\);

-- Location: LCCOMB_X101_Y29_N28
\U1|clk_1seg_temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|clk_1seg_temp~2_combout\ = (\U1|Add0~48_combout\ & (((!\U1|Equal0~7_combout\)) # (!\U1|Equal0~4_combout\))) # (!\U1|Add0~48_combout\ & (\U1|clk_1seg_temp~1_combout\ & ((!\U1|Equal0~7_combout\) # (!\U1|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~48_combout\,
	datab => \U1|Equal0~4_combout\,
	datac => \U1|Equal0~7_combout\,
	datad => \U1|clk_1seg_temp~1_combout\,
	combout => \U1|clk_1seg_temp~2_combout\);

-- Location: FF_X101_Y29_N29
\U1|clk_1seg_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U1|clk_1seg_temp~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clk_1seg_temp~q\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X80_Y12_N6
\U2|U1|P1:tempD[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempD[0]~2_combout\ = (\U6|pr_state.st1~q\) # ((\U2|U1|P1:tempD[0]~q\ & ((!\U2|U1|P1:tempU[2]~0_combout\))) # (!\U2|U1|P1:tempD[0]~q\ & (\U2|U1|P1:tempD[1]~q\ & \U2|U1|P1:tempU[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st1~q\,
	datab => \U2|U1|P1:tempD[1]~q\,
	datac => \U2|U1|P1:tempD[0]~q\,
	datad => \U2|U1|P1:tempU[2]~0_combout\,
	combout => \U2|U1|P1:tempD[0]~2_combout\);

-- Location: FF_X80_Y12_N7
\U2|U1|P1:tempD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|P1:tempD[0]~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempD[0]~q\);

-- Location: LCCOMB_X80_Y12_N8
\U2|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U3|Mux5~0_combout\ = (!\U2|U1|P1:tempD[1]~q\ & !\U2|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|U1|P1:tempD[1]~q\,
	datad => \U2|U1|P1:tempD[0]~q\,
	combout => \U2|U3|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y8_N4
\U2|U1|P1:tempU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempU[0]~0_combout\ = (!\U6|pr_state.st1~q\ & (!\U2|U1|P1:tempU[0]~q\ & ((!\U2|U3|Mux5~0_combout\) # (!\U2|U1|P1:tempU[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st1~q\,
	datab => \U2|U1|P1:tempU[2]~0_combout\,
	datac => \U2|U1|P1:tempU[0]~q\,
	datad => \U2|U3|Mux5~0_combout\,
	combout => \U2|U1|P1:tempU[0]~0_combout\);

-- Location: FF_X74_Y8_N5
\U2|U1|P1:tempU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|P1:tempU[0]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempU[0]~q\);

-- Location: IOIBUF_X115_Y35_N22
\b2_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2_in,
	o => \b2_in~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\b1_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1_in,
	o => \b1_in~input_o\);

-- Location: LCCOMB_X82_Y12_N0
\U6|botao\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|botao~combout\ = (!\b1_in~input_o\) # (!\b2_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2_in~input_o\,
	datad => \b1_in~input_o\,
	combout => \U6|botao~combout\);

-- Location: LCCOMB_X82_Y12_N18
\U2|U1|count_fim~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|count_fim~0_combout\ = (\U6|pr_state.st1~q\) # ((\U2|U1|count_fim~q\ & ((!\U2|U1|P1:tempU[2]~0_combout\) # (!\U2|U3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U3|Mux5~0_combout\,
	datab => \U6|pr_state.st1~q\,
	datac => \U2|U1|count_fim~q\,
	datad => \U2|U1|P1:tempU[2]~0_combout\,
	combout => \U2|U1|count_fim~0_combout\);

-- Location: FF_X82_Y12_N19
\U2|U1|count_fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|count_fim~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|count_fim~q\);

-- Location: LCCOMB_X82_Y12_N8
\U6|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector2~0_combout\ = (\U6|pr_state.st1~q\) # ((\U6|pr_state.st3~q\ & \U2|U1|count_fim~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st1~q\,
	datad => \U2|U1|count_fim~q\,
	combout => \U6|Selector2~0_combout\);

-- Location: LCCOMB_X83_Y12_N18
\U5|presenca~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|presenca~1_combout\ = (!\rst_in~input_o\ & ((\s2_in~input_o\) # (\U5|presenca~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2_in~input_o\,
	datac => \rst_in~input_o\,
	datad => \U5|presenca~1_combout\,
	combout => \U5|presenca~1_combout\);

-- Location: LCCOMB_X83_Y12_N12
\U5|tempo_temp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|tempo_temp[0]~2_combout\ = !\U5|tempo_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|tempo_temp\(0),
	combout => \U5|tempo_temp[0]~2_combout\);

-- Location: IOIBUF_X115_Y13_N1
\s2_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2_in,
	o => \s2_in~input_o\);

-- Location: LCCOMB_X114_Y16_N2
\U5|presenca~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|presenca~0_combout\ = (\s2_in~input_o\) # (\rst_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s2_in~input_o\,
	datad => \rst_in~input_o\,
	combout => \U5|presenca~0_combout\);

-- Location: CLKCTRL_G5
\U5|presenca~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U5|presenca~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U5|presenca~0clkctrl_outclk\);

-- Location: FF_X83_Y12_N13
\U5|tempo_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U5|tempo_temp[0]~2_combout\,
	clrn => \U5|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|tempo_temp\(0));

-- Location: LCCOMB_X83_Y12_N6
\U5|tempo_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|tempo_temp~1_combout\ = (\U5|tempo_temp\(1) & (((!\U5|tempo_temp\(0))))) # (!\U5|tempo_temp\(1) & (\U5|tempo_temp\(0) & ((\U5|tempo_temp\(2)) # (!\U5|tempo_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|tempo_temp\(3),
	datab => \U5|tempo_temp\(2),
	datac => \U5|tempo_temp\(1),
	datad => \U5|tempo_temp\(0),
	combout => \U5|tempo_temp~1_combout\);

-- Location: FF_X83_Y12_N7
\U5|tempo_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U5|tempo_temp~1_combout\,
	clrn => \U5|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|tempo_temp\(1));

-- Location: LCCOMB_X83_Y12_N20
\U5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Add0~0_combout\ = \U5|tempo_temp\(2) $ (((\U5|tempo_temp\(0) & \U5|tempo_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|tempo_temp\(0),
	datac => \U5|tempo_temp\(2),
	datad => \U5|tempo_temp\(1),
	combout => \U5|Add0~0_combout\);

-- Location: FF_X83_Y12_N21
\U5|tempo_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U5|Add0~0_combout\,
	clrn => \U5|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|tempo_temp\(2));

-- Location: LCCOMB_X83_Y12_N22
\U5|tempo_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|tempo_temp~0_combout\ = (\U5|tempo_temp\(0) & ((\U5|tempo_temp\(2) & (\U5|tempo_temp\(3) $ (\U5|tempo_temp\(1)))) # (!\U5|tempo_temp\(2) & (\U5|tempo_temp\(3) & \U5|tempo_temp\(1))))) # (!\U5|tempo_temp\(0) & (((\U5|tempo_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|tempo_temp\(0),
	datab => \U5|tempo_temp\(2),
	datac => \U5|tempo_temp\(3),
	datad => \U5|tempo_temp\(1),
	combout => \U5|tempo_temp~0_combout\);

-- Location: FF_X83_Y12_N23
\U5|tempo_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U5|tempo_temp~0_combout\,
	clrn => \U5|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|tempo_temp\(3));

-- Location: LCCOMB_X83_Y12_N16
\U5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Equal0~0_combout\ = (\U5|tempo_temp\(0) & (!\U5|tempo_temp\(2) & (\U5|tempo_temp\(3) & !\U5|tempo_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|tempo_temp\(0),
	datab => \U5|tempo_temp\(2),
	datac => \U5|tempo_temp\(3),
	datad => \U5|tempo_temp\(1),
	combout => \U5|Equal0~0_combout\);

-- Location: LCCOMB_X83_Y12_N28
\U5|presenca~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|presenca~3_combout\ = \U5|presenca~1_combout\ $ (((\U5|presenca~2_combout\ & !\U5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|presenca~2_combout\,
	datab => \U5|presenca~1_combout\,
	datad => \U5|Equal0~0_combout\,
	combout => \U5|presenca~3_combout\);

-- Location: FF_X83_Y12_N29
\U5|presenca~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U5|presenca~3_combout\,
	clrn => \U5|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|presenca~_emulated_q\);

-- Location: LCCOMB_X83_Y12_N10
\U5|presenca~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|presenca~2_combout\ = (!\rst_in~input_o\ & ((\s2_in~input_o\) # (\U5|presenca~1_combout\ $ (\U5|presenca~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2_in~input_o\,
	datab => \U5|presenca~1_combout\,
	datac => \rst_in~input_o\,
	datad => \U5|presenca~_emulated_q\,
	combout => \U5|presenca~2_combout\);

-- Location: IOIBUF_X115_Y14_N8
\s1_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_in,
	o => \s1_in~input_o\);

-- Location: LCCOMB_X84_Y12_N18
\U4|presenca~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|presenca~1_combout\ = (!\rst_in~input_o\ & ((\s1_in~input_o\) # (\U4|presenca~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_in~input_o\,
	datac => \s1_in~input_o\,
	datad => \U4|presenca~1_combout\,
	combout => \U4|presenca~1_combout\);

-- Location: LCCOMB_X84_Y12_N20
\U4|tempo_temp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|tempo_temp[0]~2_combout\ = !\U4|tempo_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|tempo_temp\(0),
	combout => \U4|tempo_temp[0]~2_combout\);

-- Location: LCCOMB_X114_Y16_N4
\U4|presenca~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|presenca~0_combout\ = (\s1_in~input_o\) # (\rst_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s1_in~input_o\,
	datad => \rst_in~input_o\,
	combout => \U4|presenca~0_combout\);

-- Location: CLKCTRL_G9
\U4|presenca~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U4|presenca~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U4|presenca~0clkctrl_outclk\);

-- Location: FF_X84_Y12_N21
\U4|tempo_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U4|tempo_temp[0]~2_combout\,
	clrn => \U4|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|tempo_temp\(0));

-- Location: LCCOMB_X84_Y12_N28
\U4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = \U4|tempo_temp\(2) $ (((\U4|tempo_temp\(1) & \U4|tempo_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|tempo_temp\(1),
	datac => \U4|tempo_temp\(2),
	datad => \U4|tempo_temp\(0),
	combout => \U4|Add0~0_combout\);

-- Location: FF_X84_Y12_N29
\U4|tempo_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U4|Add0~0_combout\,
	clrn => \U4|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|tempo_temp\(2));

-- Location: LCCOMB_X84_Y12_N26
\U4|tempo_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|tempo_temp~1_combout\ = (\U4|tempo_temp\(0) & (!\U4|tempo_temp\(1) & ((\U4|tempo_temp\(2)) # (!\U4|tempo_temp\(3))))) # (!\U4|tempo_temp\(0) & (((\U4|tempo_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|tempo_temp\(3),
	datab => \U4|tempo_temp\(0),
	datac => \U4|tempo_temp\(1),
	datad => \U4|tempo_temp\(2),
	combout => \U4|tempo_temp~1_combout\);

-- Location: FF_X84_Y12_N27
\U4|tempo_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U4|tempo_temp~1_combout\,
	clrn => \U4|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|tempo_temp\(1));

-- Location: LCCOMB_X84_Y12_N8
\U4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Equal0~0_combout\ = (\U4|tempo_temp\(3) & (\U4|tempo_temp\(0) & (!\U4|tempo_temp\(1) & !\U4|tempo_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|tempo_temp\(3),
	datab => \U4|tempo_temp\(0),
	datac => \U4|tempo_temp\(1),
	datad => \U4|tempo_temp\(2),
	combout => \U4|Equal0~0_combout\);

-- Location: LCCOMB_X84_Y12_N12
\U4|presenca~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|presenca~3_combout\ = \U4|presenca~1_combout\ $ (((!\U4|Equal0~0_combout\ & \U4|presenca~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|presenca~1_combout\,
	datac => \U4|Equal0~0_combout\,
	datad => \U4|presenca~2_combout\,
	combout => \U4|presenca~3_combout\);

-- Location: FF_X84_Y12_N13
\U4|presenca~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U4|presenca~3_combout\,
	clrn => \U4|ALT_INV_presenca~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|presenca~_emulated_q\);

-- Location: LCCOMB_X84_Y12_N6
\U4|presenca~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|presenca~2_combout\ = (!\rst_in~input_o\ & ((\s1_in~input_o\) # (\U4|presenca~1_combout\ $ (\U4|presenca~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1_in~input_o\,
	datab => \U4|presenca~1_combout\,
	datac => \rst_in~input_o\,
	datad => \U4|presenca~_emulated_q\,
	combout => \U4|presenca~2_combout\);

-- Location: LCCOMB_X82_Y12_N30
\U6|pr_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|pr_state~15_combout\ = (\U6|Selector1~0_combout\ & ((\U5|presenca~2_combout\) # (\U4|presenca~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Selector1~0_combout\,
	datac => \U5|presenca~2_combout\,
	datad => \U4|presenca~2_combout\,
	combout => \U6|pr_state~15_combout\);

-- Location: FF_X81_Y12_N19
\U6|pr_state.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	asdata => \U6|pr_state~15_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => VCC,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.st2~q\);

-- Location: LCCOMB_X82_Y12_N2
\U6|timer[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|timer[6]~0_combout\ = (\U6|pr_state.st2~q\ & ((\U4|presenca~2_combout\) # ((\U5|presenca~2_combout\) # (!\U6|botao~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|presenca~2_combout\,
	datab => \U6|botao~combout\,
	datac => \U5|presenca~2_combout\,
	datad => \U6|pr_state.st2~q\,
	combout => \U6|timer[6]~0_combout\);

-- Location: LCCOMB_X81_Y12_N8
\U6|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~7_combout\ = (\U6|Add0~6_combout\ & !\U6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Add0~6_combout\,
	datad => \U6|LessThan0~2_combout\,
	combout => \U6|count~7_combout\);

-- Location: FF_X81_Y12_N9
\U6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~7_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(3));

-- Location: LCCOMB_X81_Y12_N18
\U6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~0_combout\ = \U6|count\(0) $ (VCC)
-- \U6|Add0~1\ = CARRY(\U6|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(0),
	datad => VCC,
	combout => \U6|Add0~0_combout\,
	cout => \U6|Add0~1\);

-- Location: LCCOMB_X81_Y12_N20
\U6|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~2_combout\ = (\U6|count\(1) & (!\U6|Add0~1\)) # (!\U6|count\(1) & ((\U6|Add0~1\) # (GND)))
-- \U6|Add0~3\ = CARRY((!\U6|Add0~1\) # (!\U6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(1),
	datad => VCC,
	cin => \U6|Add0~1\,
	combout => \U6|Add0~2_combout\,
	cout => \U6|Add0~3\);

-- Location: LCCOMB_X81_Y12_N22
\U6|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~4_combout\ = (\U6|count\(2) & (\U6|Add0~3\ $ (GND))) # (!\U6|count\(2) & (!\U6|Add0~3\ & VCC))
-- \U6|Add0~5\ = CARRY((\U6|count\(2) & !\U6|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(2),
	datad => VCC,
	cin => \U6|Add0~3\,
	combout => \U6|Add0~4_combout\,
	cout => \U6|Add0~5\);

-- Location: LCCOMB_X81_Y12_N2
\U6|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~6_combout\ = (\U6|Add0~4_combout\ & !\U6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|Add0~4_combout\,
	datad => \U6|LessThan0~2_combout\,
	combout => \U6|count~6_combout\);

-- Location: FF_X81_Y12_N3
\U6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(2));

-- Location: LCCOMB_X81_Y12_N24
\U6|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~6_combout\ = (\U6|count\(3) & (!\U6|Add0~5\)) # (!\U6|count\(3) & ((\U6|Add0~5\) # (GND)))
-- \U6|Add0~7\ = CARRY((!\U6|Add0~5\) # (!\U6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(3),
	datad => VCC,
	cin => \U6|Add0~5\,
	combout => \U6|Add0~6_combout\,
	cout => \U6|Add0~7\);

-- Location: LCCOMB_X81_Y12_N0
\U6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~0_combout\ = (\U6|Add0~0_combout\ & ((\U6|Add0~2_combout\) # ((!\U6|pr_state.st1~q\ & !\U6|Add0~12_combout\)))) # (!\U6|Add0~0_combout\ & (\U6|Add0~2_combout\ & ((\U6|pr_state.st1~q\) # (!\U6|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add0~0_combout\,
	datab => \U6|Add0~2_combout\,
	datac => \U6|pr_state.st1~q\,
	datad => \U6|Add0~12_combout\,
	combout => \U6|LessThan0~0_combout\);

-- Location: LCCOMB_X81_Y12_N10
\U6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~1_combout\ = (\U6|Add0~8_combout\) # ((\U6|Add0~6_combout\) # ((\U6|Add0~4_combout\) # (\U6|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add0~8_combout\,
	datab => \U6|Add0~6_combout\,
	datac => \U6|Add0~4_combout\,
	datad => \U6|LessThan0~0_combout\,
	combout => \U6|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y12_N24
\U6|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~10_combout\ = (\U6|Add0~12_combout\ & (\U6|timer[6]~0_combout\ & ((!\U6|LessThan0~1_combout\) # (!\U6|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Add0~12_combout\,
	datab => \U6|Add0~10_combout\,
	datac => \U6|timer[6]~0_combout\,
	datad => \U6|LessThan0~1_combout\,
	combout => \U6|count~10_combout\);

-- Location: FF_X82_Y12_N25
\U6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~10_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(6));

-- Location: LCCOMB_X81_Y12_N26
\U6|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~8_combout\ = (\U6|count\(4) & (\U6|Add0~7\ $ (GND))) # (!\U6|count\(4) & (!\U6|Add0~7\ & VCC))
-- \U6|Add0~9\ = CARRY((\U6|count\(4) & !\U6|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(4),
	datad => VCC,
	cin => \U6|Add0~7\,
	combout => \U6|Add0~8_combout\,
	cout => \U6|Add0~9\);

-- Location: LCCOMB_X81_Y12_N14
\U6|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~8_combout\ = (\U6|Add0~8_combout\ & !\U6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|Add0~8_combout\,
	datad => \U6|LessThan0~2_combout\,
	combout => \U6|count~8_combout\);

-- Location: FF_X81_Y12_N15
\U6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~8_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(4));

-- Location: LCCOMB_X81_Y12_N28
\U6|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~10_combout\ = (\U6|count\(5) & (!\U6|Add0~9\)) # (!\U6|count\(5) & ((\U6|Add0~9\) # (GND)))
-- \U6|Add0~11\ = CARRY((!\U6|Add0~9\) # (!\U6|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(5),
	datad => VCC,
	cin => \U6|Add0~9\,
	combout => \U6|Add0~10_combout\,
	cout => \U6|Add0~11\);

-- Location: LCCOMB_X81_Y12_N30
\U6|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Add0~12_combout\ = \U6|Add0~11\ $ (!\U6|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U6|count\(6),
	cin => \U6|Add0~11\,
	combout => \U6|Add0~12_combout\);

-- Location: LCCOMB_X81_Y12_N4
\U6|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~9_combout\ = (\U6|timer[6]~0_combout\ & (\U6|Add0~10_combout\ & ((!\U6|LessThan0~1_combout\) # (!\U6|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|timer[6]~0_combout\,
	datab => \U6|Add0~10_combout\,
	datac => \U6|Add0~12_combout\,
	datad => \U6|LessThan0~1_combout\,
	combout => \U6|count~9_combout\);

-- Location: FF_X81_Y12_N5
\U6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~9_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(5));

-- Location: LCCOMB_X81_Y12_N16
\U6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~2_combout\ = (\U6|timer[6]~0_combout\ & (\U6|Add0~10_combout\ & (\U6|Add0~12_combout\ & \U6|LessThan0~1_combout\))) # (!\U6|timer[6]~0_combout\ & ((\U6|Add0~10_combout\) # ((\U6|Add0~12_combout\) # (\U6|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|timer[6]~0_combout\,
	datab => \U6|Add0~10_combout\,
	datac => \U6|Add0~12_combout\,
	datad => \U6|LessThan0~1_combout\,
	combout => \U6|LessThan0~2_combout\);

-- Location: FF_X81_Y12_N31
\U6|pr_state.st3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	asdata => \U6|Selector2~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => VCC,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.st3~q\);

-- Location: LCCOMB_X82_Y12_N28
\U6|load_vd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|load_vd~0_combout\ = (\U2|U1|count_fim~q\) # (!\U6|pr_state.st3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|count_fim~q\,
	datad => \U6|pr_state.st3~q\,
	combout => \U6|load_vd~0_combout\);

-- Location: LCCOMB_X82_Y12_N16
\U6|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector3~5_combout\ = ((\U6|Selector3~4_combout\ & (\b2_in~input_o\ & \b1_in~input_o\))) # (!\U6|load_vd~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Selector3~4_combout\,
	datab => \U6|load_vd~0_combout\,
	datac => \b2_in~input_o\,
	datad => \b1_in~input_o\,
	combout => \U6|Selector3~5_combout\);

-- Location: FF_X82_Y12_N17
\U6|pr_state.st4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|Selector3~5_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.st4~q\);

-- Location: LCCOMB_X82_Y12_N26
\U6|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector0~2_combout\ = (\U6|pr_state.st4~q\ & (((!\U5|presenca~2_combout\ & !\U4|presenca~2_combout\)) # (!\U3|U1|count_fim~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|count_fim~q\,
	datab => \U6|pr_state.st4~q\,
	datac => \U5|presenca~2_combout\,
	datad => \U4|presenca~2_combout\,
	combout => \U6|Selector0~2_combout\);

-- Location: LCCOMB_X82_Y12_N10
\U6|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector0~3_combout\ = (!\U6|Selector0~2_combout\ & (((\U6|pr_state.st0~q\) # (!\b1_in~input_o\)) # (!\b2_in~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2_in~input_o\,
	datab => \U6|pr_state.st0~q\,
	datac => \U6|Selector0~2_combout\,
	datad => \b1_in~input_o\,
	combout => \U6|Selector0~3_combout\);

-- Location: FF_X81_Y12_N21
\U6|pr_state.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	asdata => \U6|Selector0~3_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => VCC,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.st0~q\);

-- Location: LCCOMB_X82_Y12_N22
\U6|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector4~0_combout\ = (\U6|botao~combout\ & ((\U6|Selector3~4_combout\) # ((\U6|pr_state.wait1~q\) # (!\U6|pr_state.st0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Selector3~4_combout\,
	datab => \U6|botao~combout\,
	datac => \U6|pr_state.wait1~q\,
	datad => \U6|pr_state.st0~q\,
	combout => \U6|Selector4~0_combout\);

-- Location: FF_X82_Y12_N23
\U6|pr_state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|Selector4~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.wait1~q\);

-- Location: LCCOMB_X82_Y12_N4
\U6|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector1~0_combout\ = (\b2_in~input_o\ & (\U6|pr_state.wait1~q\ & \b1_in~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2_in~input_o\,
	datac => \U6|pr_state.wait1~q\,
	datad => \b1_in~input_o\,
	combout => \U6|Selector1~0_combout\);

-- Location: LCCOMB_X82_Y12_N20
\U6|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector1~1_combout\ = (\U6|pr_state.st2~q\) # ((!\U4|presenca~2_combout\ & (\U6|Selector1~0_combout\ & !\U5|presenca~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|presenca~2_combout\,
	datab => \U6|Selector1~0_combout\,
	datac => \U5|presenca~2_combout\,
	datad => \U6|pr_state.st2~q\,
	combout => \U6|Selector1~1_combout\);

-- Location: FF_X81_Y12_N1
\U6|pr_state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	asdata => \U6|Selector1~1_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => VCC,
	ena => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|pr_state.st1~q\);

-- Location: LCCOMB_X74_Y8_N22
\U2|U1|P1:tempU[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempU[3]~0_combout\ = (!\U6|pr_state.st1~q\ & ((\U2|U1|P1:tempU[2]~0_combout\ & ((!\U2|U3|Mux5~0_combout\))) # (!\U2|U1|P1:tempU[2]~0_combout\ & (!\U2|U1|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|Add0~1_combout\,
	datab => \U2|U1|P1:tempU[2]~0_combout\,
	datac => \U6|pr_state.st1~q\,
	datad => \U2|U3|Mux5~0_combout\,
	combout => \U2|U1|P1:tempU[3]~0_combout\);

-- Location: FF_X74_Y8_N23
\U2|U1|P1:tempU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|P1:tempU[3]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempU[3]~q\);

-- Location: LCCOMB_X74_Y8_N10
\U2|U1|P1:tempU[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempU[1]~0_combout\ = (!\U6|pr_state.st1~q\ & (!\U2|U1|P1:tempU[2]~0_combout\ & (\U2|U1|P1:tempU[1]~q\ $ (!\U2|U1|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st1~q\,
	datab => \U2|U1|P1:tempU[2]~0_combout\,
	datac => \U2|U1|P1:tempU[1]~q\,
	datad => \U2|U1|P1:tempU[0]~q\,
	combout => \U2|U1|P1:tempU[1]~0_combout\);

-- Location: FF_X74_Y8_N11
\U2|U1|P1:tempU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|P1:tempU[1]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempU[1]~q\);

-- Location: LCCOMB_X74_Y8_N20
\U2|U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|Add0~0_combout\ = \U2|U1|P1:tempU[2]~q\ $ (((\U2|U1|P1:tempU[0]~q\) # (\U2|U1|P1:tempU[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|P1:tempU[2]~q\,
	datac => \U2|U1|P1:tempU[0]~q\,
	datad => \U2|U1|P1:tempU[1]~q\,
	combout => \U2|U1|Add0~0_combout\);

-- Location: LCCOMB_X74_Y8_N28
\U2|U1|tempU~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|tempU~0_combout\ = (!\U2|U1|Add0~0_combout\ & (!\U6|pr_state.st1~q\ & !\U2|U1|P1:tempU[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|Add0~0_combout\,
	datac => \U6|pr_state.st1~q\,
	datad => \U2|U1|P1:tempU[2]~0_combout\,
	combout => \U2|U1|tempU~0_combout\);

-- Location: FF_X74_Y8_N29
\U2|U1|P1:tempU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|tempU~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempU[2]~q\);

-- Location: LCCOMB_X74_Y8_N18
\U2|U1|P1:tempU[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempU[2]~0_combout\ = (!\U2|U1|P1:tempU[1]~q\ & (!\U2|U1|P1:tempU[0]~q\ & (!\U2|U1|P1:tempU[3]~q\ & !\U2|U1|P1:tempU[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U1|P1:tempU[2]~0_combout\);

-- Location: LCCOMB_X80_Y12_N4
\U2|U1|P1:tempD[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U1|P1:tempD[1]~0_combout\ = (\U6|pr_state.st1~q\) # ((\U2|U1|P1:tempD[1]~q\ & ((\U2|U1|P1:tempD[0]~q\) # (!\U2|U1|P1:tempU[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st1~q\,
	datab => \U2|U1|P1:tempU[2]~0_combout\,
	datac => \U2|U1|P1:tempD[1]~q\,
	datad => \U2|U1|P1:tempD[0]~q\,
	combout => \U2|U1|P1:tempD[1]~0_combout\);

-- Location: FF_X80_Y12_N5
\U2|U1|P1:tempD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U2|U1|P1:tempD[1]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|U1|P1:tempD[1]~q\);

-- Location: LCCOMB_X66_Y1_N28
\U2|U3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U3|Mux0~0_combout\ = (!\U2|U1|P1:tempD[1]~q\ & \U2|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|P1:tempD[1]~q\,
	datad => \U2|U1|P1:tempD[0]~q\,
	combout => \U2|U3|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y1_N10
\U2|U3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U3|Mux2~0_combout\ = (\U2|U1|P1:tempD[1]~q\ & !\U2|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|U1|P1:tempD[1]~q\,
	datad => \U2|U1|P1:tempD[0]~q\,
	combout => \U2|U3|Mux2~0_combout\);

-- Location: LCCOMB_X82_Y8_N16
\U3|U1|P1:tempU[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[2]~5_combout\ = (!\U3|U1|Equal1~0_combout\ & ((\U2|U1|count_fim~q\) # (!\U6|pr_state.st3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|Equal1~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datad => \U2|U1|count_fim~q\,
	combout => \U3|U1|P1:tempU[2]~5_combout\);

-- Location: LCCOMB_X82_Y8_N0
\U3|U1|P1:tempU[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[0]~0_combout\ = (\U3|U1|P1:tempU[2]~5_combout\ & ((!\U3|U1|P1:tempU[0]~q\))) # (!\U3|U1|P1:tempU[2]~5_combout\ & (\U6|load_vd~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|load_vd~0_combout\,
	datac => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[2]~5_combout\,
	combout => \U3|U1|P1:tempU[0]~0_combout\);

-- Location: LCCOMB_X83_Y8_N26
\U3|U1|P1:tempU[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[2]~4_combout\ = (!\U3|U1|P1:tempD[1]~q\ & (!\U3|U1|P1:tempD[0]~q\ & (\U3|U1|Equal1~0_combout\ & \U6|load_vd~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempD[1]~q\,
	datab => \U3|U1|P1:tempD[0]~q\,
	datac => \U3|U1|Equal1~0_combout\,
	datad => \U6|load_vd~0_combout\,
	combout => \U3|U1|P1:tempU[2]~4_combout\);

-- Location: FF_X82_Y8_N1
\U3|U1|P1:tempU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempU[0]~0_combout\,
	asdata => \U3|U1|P1:tempU[0]~q\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => \U3|U1|P1:tempU[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempU[0]~q\);

-- Location: LCCOMB_X82_Y8_N12
\U3|U1|P1:tempU[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[1]~0_combout\ = (\U3|U1|P1:tempU[2]~5_combout\ & (!\U3|U1|P1:tempU[2]~4_combout\ & (\U3|U1|P1:tempU[0]~q\ $ (!\U3|U1|P1:tempU[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[0]~q\,
	datab => \U3|U1|P1:tempU[2]~5_combout\,
	datac => \U3|U1|P1:tempU[1]~q\,
	datad => \U3|U1|P1:tempU[2]~4_combout\,
	combout => \U3|U1|P1:tempU[1]~0_combout\);

-- Location: FF_X82_Y8_N13
\U3|U1|P1:tempU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempU[1]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempU[1]~q\);

-- Location: LCCOMB_X82_Y8_N14
\U3|U1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|Add0~1_combout\ = \U3|U1|P1:tempU[3]~q\ $ (((\U3|U1|P1:tempU[2]~q\) # ((\U3|U1|P1:tempU[0]~q\) # (\U3|U1|P1:tempU[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[2]~q\,
	datab => \U3|U1|P1:tempU[3]~q\,
	datac => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U1|Add0~1_combout\);

-- Location: LCCOMB_X82_Y8_N18
\U3|U1|P1:tempU[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[3]~0_combout\ = (\U3|U1|P1:tempU[2]~5_combout\ & ((!\U3|U1|Add0~1_combout\))) # (!\U3|U1|P1:tempU[2]~5_combout\ & (\U6|load_vd~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|load_vd~0_combout\,
	datab => \U3|U1|Add0~1_combout\,
	datad => \U3|U1|P1:tempU[2]~5_combout\,
	combout => \U3|U1|P1:tempU[3]~0_combout\);

-- Location: FF_X82_Y8_N19
\U3|U1|P1:tempU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempU[3]~0_combout\,
	asdata => \U3|U1|P1:tempU[3]~q\,
	clrn => \ALT_INV_rst_in~input_o\,
	sload => \U3|U1|P1:tempU[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempU[3]~q\);

-- Location: LCCOMB_X82_Y8_N8
\U3|U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|Add0~0_combout\ = \U3|U1|P1:tempU[2]~q\ $ (((\U3|U1|P1:tempU[0]~q\) # (\U3|U1|P1:tempU[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[2]~q\,
	datab => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U1|Add0~0_combout\);

-- Location: LCCOMB_X82_Y8_N26
\U3|U1|P1:tempU[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempU[2]~6_combout\ = (!\U3|U1|Equal1~0_combout\ & (!\U3|U1|Add0~0_combout\ & ((\U2|U1|count_fim~q\) # (!\U6|pr_state.st3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|Equal1~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U3|U1|Add0~0_combout\,
	datad => \U2|U1|count_fim~q\,
	combout => \U3|U1|P1:tempU[2]~6_combout\);

-- Location: FF_X82_Y8_N27
\U3|U1|P1:tempU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempU[2]~6_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempU[2]~q\);

-- Location: LCCOMB_X82_Y8_N6
\U3|U1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|Equal1~0_combout\ = (!\U3|U1|P1:tempU[1]~q\ & (!\U3|U1|P1:tempU[3]~q\ & (!\U3|U1|P1:tempU[2]~q\ & !\U3|U1|P1:tempU[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[1]~q\,
	datab => \U3|U1|P1:tempU[3]~q\,
	datac => \U3|U1|P1:tempU[2]~q\,
	datad => \U3|U1|P1:tempU[0]~q\,
	combout => \U3|U1|Equal1~0_combout\);

-- Location: LCCOMB_X83_Y8_N22
\U3|U1|P1:tempD[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempD[0]~2_combout\ = (\U6|load_vd~0_combout\ & ((\U3|U1|Equal1~0_combout\ & (\U3|U1|P1:tempD[1]~q\ & !\U3|U1|P1:tempD[0]~q\)) # (!\U3|U1|Equal1~0_combout\ & ((\U3|U1|P1:tempD[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempD[1]~q\,
	datab => \U3|U1|Equal1~0_combout\,
	datac => \U3|U1|P1:tempD[0]~q\,
	datad => \U6|load_vd~0_combout\,
	combout => \U3|U1|P1:tempD[0]~2_combout\);

-- Location: FF_X83_Y8_N23
\U3|U1|P1:tempD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempD[0]~2_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempD[0]~q\);

-- Location: LCCOMB_X83_Y8_N12
\U3|U1|P1:tempD[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|P1:tempD[1]~0_combout\ = ((\U3|U1|P1:tempD[1]~q\ & ((\U3|U1|P1:tempD[0]~q\) # (!\U3|U1|Equal1~0_combout\)))) # (!\U6|load_vd~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|Equal1~0_combout\,
	datab => \U6|load_vd~0_combout\,
	datac => \U3|U1|P1:tempD[1]~q\,
	datad => \U3|U1|P1:tempD[0]~q\,
	combout => \U3|U1|P1:tempD[1]~0_combout\);

-- Location: FF_X83_Y8_N13
\U3|U1|P1:tempD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|P1:tempD[1]~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|P1:tempD[1]~q\);

-- Location: LCCOMB_X83_Y8_N28
\U3|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U3|Mux5~0_combout\ = (\U3|U1|P1:tempD[1]~q\) # (\U3|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempD[1]~q\,
	datad => \U3|U1|P1:tempD[0]~q\,
	combout => \U3|U3|Mux5~0_combout\);

-- Location: LCCOMB_X76_Y1_N24
\U3|U3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U3|Mux2~0_combout\ = (!\U3|U1|P1:tempD[1]~q\ & \U3|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U1|P1:tempD[1]~q\,
	datad => \U3|U1|P1:tempD[0]~q\,
	combout => \U3|U3|Mux2~0_combout\);

-- Location: LCCOMB_X76_Y1_N26
\U3|U3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U3|Mux2~1_combout\ = (\U3|U1|P1:tempD[1]~q\ & !\U3|U1|P1:tempD[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|U1|P1:tempD[1]~q\,
	datad => \U3|U1|P1:tempD[0]~q\,
	combout => \U3|U3|Mux2~1_combout\);

-- Location: LCCOMB_X74_Y8_N0
\U2|U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux6~0_combout\ = (\U2|U1|P1:tempU[1]~q\ & (!\U2|U1|P1:tempU[3]~q\ & ((!\U2|U1|P1:tempU[2]~q\) # (!\U2|U1|P1:tempU[0]~q\)))) # (!\U2|U1|P1:tempU[1]~q\ & ((\U2|U1|P1:tempU[3]~q\ $ (\U2|U1|P1:tempU[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux6~0_combout\);

-- Location: LCCOMB_X74_Y8_N14
\U2|U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux5~0_combout\ = (\U2|U1|P1:tempU[0]~q\ & ((\U2|U1|P1:tempU[1]~q\) # (\U2|U1|P1:tempU[3]~q\ $ (!\U2|U1|P1:tempU[2]~q\)))) # (!\U2|U1|P1:tempU[0]~q\ & ((\U2|U1|P1:tempU[2]~q\ & ((\U2|U1|P1:tempU[3]~q\))) # (!\U2|U1|P1:tempU[2]~q\ & 
-- (\U2|U1|P1:tempU[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y8_N16
\U2|U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux4~0_combout\ = (\U2|U1|P1:tempU[0]~q\) # ((\U2|U1|P1:tempU[1]~q\ & (\U2|U1|P1:tempU[3]~q\)) # (!\U2|U1|P1:tempU[1]~q\ & ((\U2|U1|P1:tempU[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y8_N2
\U2|U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux3~0_combout\ = (\U2|U1|P1:tempU[1]~q\ & ((\U2|U1|P1:tempU[3]~q\) # ((\U2|U1|P1:tempU[0]~q\ & \U2|U1|P1:tempU[2]~q\)))) # (!\U2|U1|P1:tempU[1]~q\ & (\U2|U1|P1:tempU[2]~q\ $ (((\U2|U1|P1:tempU[0]~q\ & !\U2|U1|P1:tempU[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y8_N24
\U2|U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux2~0_combout\ = (\U2|U1|P1:tempU[2]~q\ & (((\U2|U1|P1:tempU[3]~q\)))) # (!\U2|U1|P1:tempU[2]~q\ & (\U2|U1|P1:tempU[1]~q\ & ((\U2|U1|P1:tempU[3]~q\) # (!\U2|U1|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y8_N6
\U2|U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux1~0_combout\ = (\U2|U1|P1:tempU[3]~q\ & ((\U2|U1|P1:tempU[1]~q\) # ((\U2|U1|P1:tempU[2]~q\)))) # (!\U2|U1|P1:tempU[3]~q\ & (\U2|U1|P1:tempU[2]~q\ & (\U2|U1|P1:tempU[1]~q\ $ (\U2|U1|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y8_N8
\U2|U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|U2|Mux0~0_combout\ = (\U2|U1|P1:tempU[1]~q\ & (((\U2|U1|P1:tempU[3]~q\)))) # (!\U2|U1|P1:tempU[1]~q\ & (\U2|U1|P1:tempU[2]~q\ $ (((\U2|U1|P1:tempU[0]~q\ & !\U2|U1|P1:tempU[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|U1|P1:tempU[1]~q\,
	datab => \U2|U1|P1:tempU[0]~q\,
	datac => \U2|U1|P1:tempU[3]~q\,
	datad => \U2|U1|P1:tempU[2]~q\,
	combout => \U2|U2|Mux0~0_combout\);

-- Location: LCCOMB_X82_Y8_N4
\U3|U2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux6~0_combout\ = (\U3|U1|P1:tempU[2]~q\ & (!\U3|U1|P1:tempU[3]~q\ & ((!\U3|U1|P1:tempU[1]~q\) # (!\U3|U1|P1:tempU[0]~q\)))) # (!\U3|U1|P1:tempU[2]~q\ & (\U3|U1|P1:tempU[3]~q\ $ (((\U3|U1|P1:tempU[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[2]~q\,
	datab => \U3|U1|P1:tempU[3]~q\,
	datac => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux6~0_combout\);

-- Location: LCCOMB_X82_Y8_N22
\U3|U2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux5~0_combout\ = (\U3|U1|P1:tempU[0]~q\ & ((\U3|U1|P1:tempU[1]~q\) # (\U3|U1|P1:tempU[3]~q\ $ (!\U3|U1|P1:tempU[2]~q\)))) # (!\U3|U1|P1:tempU[0]~q\ & ((\U3|U1|P1:tempU[2]~q\ & (\U3|U1|P1:tempU[3]~q\)) # (!\U3|U1|P1:tempU[2]~q\ & 
-- ((\U3|U1|P1:tempU[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[3]~q\,
	datab => \U3|U1|P1:tempU[0]~q\,
	datac => \U3|U1|P1:tempU[2]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux5~0_combout\);

-- Location: LCCOMB_X82_Y8_N28
\U3|U2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux4~0_combout\ = (\U3|U1|P1:tempU[0]~q\) # ((\U3|U1|P1:tempU[1]~q\ & ((\U3|U1|P1:tempU[3]~q\))) # (!\U3|U1|P1:tempU[1]~q\ & (\U3|U1|P1:tempU[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[2]~q\,
	datab => \U3|U1|P1:tempU[3]~q\,
	datac => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux4~0_combout\);

-- Location: LCCOMB_X82_Y8_N10
\U3|U2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux3~0_combout\ = (\U3|U1|P1:tempU[1]~q\ & ((\U3|U1|P1:tempU[3]~q\) # ((\U3|U1|P1:tempU[2]~q\ & \U3|U1|P1:tempU[0]~q\)))) # (!\U3|U1|P1:tempU[1]~q\ & (\U3|U1|P1:tempU[2]~q\ $ (((!\U3|U1|P1:tempU[3]~q\ & \U3|U1|P1:tempU[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[2]~q\,
	datab => \U3|U1|P1:tempU[3]~q\,
	datac => \U3|U1|P1:tempU[0]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux3~0_combout\);

-- Location: LCCOMB_X82_Y8_N20
\U3|U2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux2~0_combout\ = (\U3|U1|P1:tempU[2]~q\ & (\U3|U1|P1:tempU[3]~q\)) # (!\U3|U1|P1:tempU[2]~q\ & (\U3|U1|P1:tempU[1]~q\ & ((\U3|U1|P1:tempU[3]~q\) # (!\U3|U1|P1:tempU[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[3]~q\,
	datab => \U3|U1|P1:tempU[0]~q\,
	datac => \U3|U1|P1:tempU[2]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux2~0_combout\);

-- Location: LCCOMB_X82_Y8_N30
\U3|U2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux1~0_combout\ = (\U3|U1|P1:tempU[3]~q\ & (((\U3|U1|P1:tempU[2]~q\) # (\U3|U1|P1:tempU[1]~q\)))) # (!\U3|U1|P1:tempU[3]~q\ & (\U3|U1|P1:tempU[2]~q\ & (\U3|U1|P1:tempU[0]~q\ $ (\U3|U1|P1:tempU[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[3]~q\,
	datab => \U3|U1|P1:tempU[0]~q\,
	datac => \U3|U1|P1:tempU[2]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux1~0_combout\);

-- Location: LCCOMB_X82_Y8_N24
\U3|U2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U2|Mux0~0_combout\ = (\U3|U1|P1:tempU[1]~q\ & (\U3|U1|P1:tempU[3]~q\)) # (!\U3|U1|P1:tempU[1]~q\ & (\U3|U1|P1:tempU[2]~q\ $ (((!\U3|U1|P1:tempU[3]~q\ & \U3|U1|P1:tempU[0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|P1:tempU[3]~q\,
	datab => \U3|U1|P1:tempU[0]~q\,
	datac => \U3|U1|P1:tempU[2]~q\,
	datad => \U3|U1|P1:tempU[1]~q\,
	combout => \U3|U2|Mux0~0_combout\);

-- Location: LCCOMB_X83_Y8_N14
\U7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux6~0_combout\ = (\U6|pr_state.st4~q\) # ((\U6|pr_state.st2~q\) # ((\U6|pr_state.wait1~q\) # (\U6|pr_state.st3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st4~q\,
	datab => \U6|pr_state.st2~q\,
	datac => \U6|pr_state.wait1~q\,
	datad => \U6|pr_state.st3~q\,
	combout => \U7|Mux6~0_combout\);

-- Location: LCCOMB_X83_Y8_N10
\U6|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|WideOr0~0_combout\ = (!\U6|pr_state.st4~q\ & \U6|pr_state.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|pr_state.st4~q\,
	datad => \U6|pr_state.st0~q\,
	combout => \U6|WideOr0~0_combout\);

-- Location: LCCOMB_X83_Y8_N16
\U6|st_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|st_out\(2) = (\U6|pr_state.wait1~q\) # (\U6|pr_state.st4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.wait1~q\,
	datac => \U6|pr_state.st4~q\,
	combout => \U6|st_out\(2));

-- Location: LCCOMB_X83_Y8_N24
\U7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux5~0_combout\ = (\U6|st_out\(2)) # ((!\U6|WideOr0~0_combout\ & (!\U6|pr_state.st3~q\ & !\U6|pr_state.st2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|WideOr0~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st2~q\,
	datad => \U6|st_out\(2),
	combout => \U7|Mux5~0_combout\);

-- Location: LCCOMB_X83_Y8_N2
\U7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux4~0_combout\ = (!\U6|pr_state.st2~q\ & ((\U6|WideOr0~0_combout\) # ((!\U6|pr_state.st3~q\ & \U6|st_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|WideOr0~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st2~q\,
	datad => \U6|st_out\(2),
	combout => \U7|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y8_N0
\U7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux3~0_combout\ = (\U6|pr_state.st3~q\) # ((\U6|pr_state.st2~q\) # (\U6|WideOr0~0_combout\ $ (!\U6|st_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|WideOr0~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st2~q\,
	datad => \U6|st_out\(2),
	combout => \U7|Mux3~0_combout\);

-- Location: LCCOMB_X83_Y8_N6
\U7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux2~0_combout\ = (!\U6|st_out\(2) & ((\U6|pr_state.st2~q\) # ((!\U6|WideOr0~0_combout\ & \U6|pr_state.st3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|WideOr0~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st2~q\,
	datad => \U6|st_out\(2),
	combout => \U7|Mux2~0_combout\);

-- Location: LCCOMB_X83_Y8_N8
\U7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|Mux1~0_combout\ = (\U6|st_out\(2) & ((\U6|pr_state.st2~q\) # (\U6|WideOr0~0_combout\ $ (\U6|pr_state.st3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|WideOr0~0_combout\,
	datab => \U6|pr_state.st3~q\,
	datac => \U6|pr_state.st2~q\,
	datad => \U6|st_out\(2),
	combout => \U7|Mux1~0_combout\);

-- Location: LCCOMB_X81_Y12_N6
\U6|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~4_combout\ = (\U6|Add0~0_combout\ & !\U6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Add0~0_combout\,
	datad => \U6|LessThan0~2_combout\,
	combout => \U6|count~4_combout\);

-- Location: FF_X81_Y12_N7
\U6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~4_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(0));

-- Location: LCCOMB_X80_Y12_N10
\U6|count_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[0]~0_combout\ = (\U6|pr_state.st1~q\ & (\U6|count\(0) $ (GND))) # (!\U6|pr_state.st1~q\ & ((GND) # (!\U6|count\(0))))
-- \U6|count_out[0]~1\ = CARRY((!\U6|count\(0)) # (!\U6|pr_state.st1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|pr_state.st1~q\,
	datab => \U6|count\(0),
	datad => VCC,
	combout => \U6|count_out[0]~0_combout\,
	cout => \U6|count_out[0]~1\);

-- Location: LCCOMB_X80_Y12_N30
\U6|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Selector5~0_combout\ = (\U6|timer[6]~0_combout\) # (\U6|pr_state.st1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|timer[6]~0_combout\,
	datad => \U6|pr_state.st1~q\,
	combout => \U6|Selector5~0_combout\);

-- Location: LCCOMB_X81_Y12_N12
\U6|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count~5_combout\ = (\U6|Add0~2_combout\ & !\U6|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|Add0~2_combout\,
	datad => \U6|LessThan0~2_combout\,
	combout => \U6|count~5_combout\);

-- Location: FF_X81_Y12_N13
\U6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U6|count~5_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(1));

-- Location: LCCOMB_X80_Y12_N12
\U6|count_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[1]~2_combout\ = (\U6|Selector5~0_combout\ & ((\U6|count\(1) & (!\U6|count_out[0]~1\)) # (!\U6|count\(1) & (\U6|count_out[0]~1\ & VCC)))) # (!\U6|Selector5~0_combout\ & ((\U6|count\(1) & ((\U6|count_out[0]~1\) # (GND))) # (!\U6|count\(1) & 
-- (!\U6|count_out[0]~1\))))
-- \U6|count_out[1]~3\ = CARRY((\U6|Selector5~0_combout\ & (\U6|count\(1) & !\U6|count_out[0]~1\)) # (!\U6|Selector5~0_combout\ & ((\U6|count\(1)) # (!\U6|count_out[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|Selector5~0_combout\,
	datab => \U6|count\(1),
	datad => VCC,
	cin => \U6|count_out[0]~1\,
	combout => \U6|count_out[1]~2_combout\,
	cout => \U6|count_out[1]~3\);

-- Location: LCCOMB_X80_Y12_N14
\U6|count_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[2]~4_combout\ = (\U6|count\(2) & (!\U6|count_out[1]~3\ & VCC)) # (!\U6|count\(2) & (\U6|count_out[1]~3\ $ (GND)))
-- \U6|count_out[2]~5\ = CARRY((!\U6|count\(2) & !\U6|count_out[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(2),
	datad => VCC,
	cin => \U6|count_out[1]~3\,
	combout => \U6|count_out[2]~4_combout\,
	cout => \U6|count_out[2]~5\);

-- Location: LCCOMB_X80_Y12_N16
\U6|count_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[3]~6_combout\ = (\U6|count\(3) & ((\U6|count_out[2]~5\) # (GND))) # (!\U6|count\(3) & (!\U6|count_out[2]~5\))
-- \U6|count_out[3]~7\ = CARRY((\U6|count\(3)) # (!\U6|count_out[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(3),
	datad => VCC,
	cin => \U6|count_out[2]~5\,
	combout => \U6|count_out[3]~6_combout\,
	cout => \U6|count_out[3]~7\);

-- Location: LCCOMB_X80_Y12_N18
\U6|count_out[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[4]~8_combout\ = (\U6|count\(4) & (!\U6|count_out[3]~7\ & VCC)) # (!\U6|count\(4) & (\U6|count_out[3]~7\ $ (GND)))
-- \U6|count_out[4]~9\ = CARRY((!\U6|count\(4) & !\U6|count_out[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(4),
	datad => VCC,
	cin => \U6|count_out[3]~7\,
	combout => \U6|count_out[4]~8_combout\,
	cout => \U6|count_out[4]~9\);

-- Location: LCCOMB_X80_Y12_N20
\U6|count_out[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[5]~10_combout\ = (\U6|count\(5) & ((\U6|timer[6]~0_combout\ & (!\U6|count_out[4]~9\)) # (!\U6|timer[6]~0_combout\ & ((\U6|count_out[4]~9\) # (GND))))) # (!\U6|count\(5) & ((\U6|timer[6]~0_combout\ & (\U6|count_out[4]~9\ & VCC)) # 
-- (!\U6|timer[6]~0_combout\ & (!\U6|count_out[4]~9\))))
-- \U6|count_out[5]~11\ = CARRY((\U6|count\(5) & ((!\U6|count_out[4]~9\) # (!\U6|timer[6]~0_combout\))) # (!\U6|count\(5) & (!\U6|timer[6]~0_combout\ & !\U6|count_out[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(5),
	datab => \U6|timer[6]~0_combout\,
	datad => VCC,
	cin => \U6|count_out[4]~9\,
	combout => \U6|count_out[5]~10_combout\,
	cout => \U6|count_out[5]~11\);

-- Location: LCCOMB_X80_Y12_N22
\U6|count_out[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count_out[6]~12_combout\ = \U6|count\(6) $ (\U6|timer[6]~0_combout\ $ (\U6|count_out[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(6),
	datab => \U6|timer[6]~0_combout\,
	cin => \U6|count_out[5]~11\,
	combout => \U6|count_out[6]~12_combout\);

-- Location: LCCOMB_X82_Y12_N14
\U6|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|WideOr6~0_combout\ = ((\U6|pr_state.st1~q\) # (\U6|pr_state.st3~q\)) # (!\U6|pr_state.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|pr_state.st0~q\,
	datac => \U6|pr_state.st1~q\,
	datad => \U6|pr_state.st3~q\,
	combout => \U6|WideOr6~0_combout\);

-- Location: LCCOMB_X82_Y12_N12
\U3|U1|count_fim~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|U1|count_fim~0_combout\ = ((\U3|U1|count_fim~q\ & ((\U3|U3|Mux5~0_combout\) # (!\U3|U1|Equal1~0_combout\)))) # (!\U6|load_vd~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|U1|Equal1~0_combout\,
	datab => \U6|load_vd~0_combout\,
	datac => \U3|U1|count_fim~q\,
	datad => \U3|U3|Mux5~0_combout\,
	combout => \U3|U1|count_fim~0_combout\);

-- Location: FF_X82_Y12_N13
\U3|U1|count_fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|ALT_INV_clk_1seg_temp~clkctrl_outclk\,
	d => \U3|U1|count_fim~0_combout\,
	clrn => \ALT_INV_rst_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|U1|count_fim~q\);

ww_ssd_D(6) <= \ssd_D[6]~output_o\;

ww_ssd_D(5) <= \ssd_D[5]~output_o\;

ww_ssd_D(4) <= \ssd_D[4]~output_o\;

ww_ssd_D(3) <= \ssd_D[3]~output_o\;

ww_ssd_D(2) <= \ssd_D[2]~output_o\;

ww_ssd_D(1) <= \ssd_D[1]~output_o\;

ww_ssd_D(0) <= \ssd_D[0]~output_o\;

ww_ssd_Dp(6) <= \ssd_Dp[6]~output_o\;

ww_ssd_Dp(5) <= \ssd_Dp[5]~output_o\;

ww_ssd_Dp(4) <= \ssd_Dp[4]~output_o\;

ww_ssd_Dp(3) <= \ssd_Dp[3]~output_o\;

ww_ssd_Dp(2) <= \ssd_Dp[2]~output_o\;

ww_ssd_Dp(1) <= \ssd_Dp[1]~output_o\;

ww_ssd_Dp(0) <= \ssd_Dp[0]~output_o\;

ww_ssd_U(6) <= \ssd_U[6]~output_o\;

ww_ssd_U(5) <= \ssd_U[5]~output_o\;

ww_ssd_U(4) <= \ssd_U[4]~output_o\;

ww_ssd_U(3) <= \ssd_U[3]~output_o\;

ww_ssd_U(2) <= \ssd_U[2]~output_o\;

ww_ssd_U(1) <= \ssd_U[1]~output_o\;

ww_ssd_U(0) <= \ssd_U[0]~output_o\;

ww_ssd_Up(6) <= \ssd_Up[6]~output_o\;

ww_ssd_Up(5) <= \ssd_Up[5]~output_o\;

ww_ssd_Up(4) <= \ssd_Up[4]~output_o\;

ww_ssd_Up(3) <= \ssd_Up[3]~output_o\;

ww_ssd_Up(2) <= \ssd_Up[2]~output_o\;

ww_ssd_Up(1) <= \ssd_Up[1]~output_o\;

ww_ssd_Up(0) <= \ssd_Up[0]~output_o\;

ww_ssd_st(6) <= \ssd_st[6]~output_o\;

ww_ssd_st(5) <= \ssd_st[5]~output_o\;

ww_ssd_st(4) <= \ssd_st[4]~output_o\;

ww_ssd_st(3) <= \ssd_st[3]~output_o\;

ww_ssd_st(2) <= \ssd_st[2]~output_o\;

ww_ssd_st(1) <= \ssd_st[1]~output_o\;

ww_ssd_st(0) <= \ssd_st[0]~output_o\;

ww_count_out(0) <= \count_out[0]~output_o\;

ww_count_out(1) <= \count_out[1]~output_o\;

ww_count_out(2) <= \count_out[2]~output_o\;

ww_count_out(3) <= \count_out[3]~output_o\;

ww_count_out(4) <= \count_out[4]~output_o\;

ww_count_out(5) <= \count_out[5]~output_o\;

ww_count_out(6) <= \count_out[6]~output_o\;

ww_CVM <= \CVM~output_o\;

ww_CVD <= \CVD~output_o\;

ww_CAM <= \CAM~output_o\;

ww_PVM <= \PVM~output_o\;

ww_PVD <= \PVD~output_o\;

ww_LUZ <= \LUZ~output_o\;

ww_clk_out_1s <= \clk_out_1s~output_o\;

ww_count_fim_vd <= \count_fim_vd~output_o\;

ww_count_fim_vm <= \count_fim_vm~output_o\;
END structure;


