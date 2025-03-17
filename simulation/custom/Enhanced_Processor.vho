-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "01/08/2025 11:58:01"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Enhanced_Processor IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	DATA_IN : IN std_logic_vector(15 DOWNTO 0);
	DATA_OUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END Enhanced_Processor;

-- Design Ports Information
-- DATA_OUT[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[12]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[13]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT[15]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[6]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[7]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[11]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Enhanced_Processor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_DATA_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DATA_IN[0]~input_o\ : std_logic;
SIGNAL \DATA_IN[1]~input_o\ : std_logic;
SIGNAL \DATA_IN[2]~input_o\ : std_logic;
SIGNAL \DATA_IN[3]~input_o\ : std_logic;
SIGNAL \DATA_IN[4]~input_o\ : std_logic;
SIGNAL \DATA_IN[5]~input_o\ : std_logic;
SIGNAL \DATA_IN[6]~input_o\ : std_logic;
SIGNAL \DATA_IN[7]~input_o\ : std_logic;
SIGNAL \DATA_IN[8]~input_o\ : std_logic;
SIGNAL \DATA_IN[9]~input_o\ : std_logic;
SIGNAL \DATA_IN[10]~input_o\ : std_logic;
SIGNAL \DATA_IN[11]~input_o\ : std_logic;
SIGNAL \DATA_IN[12]~input_o\ : std_logic;
SIGNAL \DATA_IN[13]~input_o\ : std_logic;
SIGNAL \DATA_IN[14]~input_o\ : std_logic;
SIGNAL \DATA_IN[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \DATA_OUT[0]~output_o\ : std_logic;
SIGNAL \DATA_OUT[1]~output_o\ : std_logic;
SIGNAL \DATA_OUT[2]~output_o\ : std_logic;
SIGNAL \DATA_OUT[3]~output_o\ : std_logic;
SIGNAL \DATA_OUT[4]~output_o\ : std_logic;
SIGNAL \DATA_OUT[5]~output_o\ : std_logic;
SIGNAL \DATA_OUT[6]~output_o\ : std_logic;
SIGNAL \DATA_OUT[7]~output_o\ : std_logic;
SIGNAL \DATA_OUT[8]~output_o\ : std_logic;
SIGNAL \DATA_OUT[9]~output_o\ : std_logic;
SIGNAL \DATA_OUT[10]~output_o\ : std_logic;
SIGNAL \DATA_OUT[11]~output_o\ : std_logic;
SIGNAL \DATA_OUT[12]~output_o\ : std_logic;
SIGNAL \DATA_OUT[13]~output_o\ : std_logic;
SIGNAL \DATA_OUT[14]~output_o\ : std_logic;
SIGNAL \DATA_OUT[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~12_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \Address[7]~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \PC[0]~13\ : std_logic;
SIGNAL \PC[1]~14_combout\ : std_logic;
SIGNAL \PC[1]~15\ : std_logic;
SIGNAL \PC[2]~16_combout\ : std_logic;
SIGNAL \PC[2]~17\ : std_logic;
SIGNAL \PC[3]~18_combout\ : std_logic;
SIGNAL \PC[3]~19\ : std_logic;
SIGNAL \PC[4]~20_combout\ : std_logic;
SIGNAL \PC[4]~21\ : std_logic;
SIGNAL \PC[5]~22_combout\ : std_logic;
SIGNAL \PC[5]~23\ : std_logic;
SIGNAL \PC[6]~24_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Address[11]~0_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\ : std_logic;
SIGNAL \IR[4]~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \PC[6]~25\ : std_logic;
SIGNAL \PC[7]~26_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \PC[7]~27\ : std_logic;
SIGNAL \PC[8]~28_combout\ : std_logic;
SIGNAL \PC[8]~29\ : std_logic;
SIGNAL \PC[9]~30_combout\ : std_logic;
SIGNAL \PC[9]~31\ : std_logic;
SIGNAL \PC[10]~32_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \PC[10]~33\ : std_logic;
SIGNAL \PC[11]~34_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\ : std_logic;
SIGNAL \OpCode[0]~0_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~0_combout\ : std_logic;
SIGNAL \AC[0]~0_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~0_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~1_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~2_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~4_cout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~5_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~40_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~39_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\ : std_logic;
SIGNAL \OpCode[1]~feeder_combout\ : std_logic;
SIGNAL \AC[0]~6_combout\ : std_logic;
SIGNAL \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\ : std_logic;
SIGNAL \IR[14]~feeder_combout\ : std_logic;
SIGNAL \AC[0]~7_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~1_combout\ : std_logic;
SIGNAL \AC[1]~1_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~7_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~6\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~8_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~10_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~9\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~11_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~2_combout\ : std_logic;
SIGNAL \AC[3]~2_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~13_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~12\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~14_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~15\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~16_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~17\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~18_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~20_combout\ : std_logic;
SIGNAL \AC[9]~8_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~19\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~21_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~23_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~22\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~24_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~26_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~25\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~27_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~29_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~28\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~30_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~32_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~31\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~33_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~35_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~34\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~36_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~38_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~3_combout\ : std_logic;
SIGNAL \AC[12]~3_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~39_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~37\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~40_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~4_combout\ : std_logic;
SIGNAL \AC[13]~4_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~42_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~41\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~43_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|ALU_OUT~5_combout\ : std_logic;
SIGNAL \AC[14]~5_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~45_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~44\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~46_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~47\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~48_combout\ : std_logic;
SIGNAL \ALU_INSTANCE|Add0~50_combout\ : std_logic;
SIGNAL AC : std_logic_vector(15 DOWNTO 0);
SIGNAL PC : std_logic_vector(11 DOWNTO 0);
SIGNAL Address : std_logic_vector(11 DOWNTO 0);
SIGNAL OpCode : std_logic_vector(3 DOWNTO 0);
SIGNAL STATE : std_logic_vector(2 DOWNTO 0);
SIGNAL IR : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_DATA_IN <= DATA_IN;
DATA_OUT <= ww_DATA_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y15_N2
\DATA_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(0),
	devoe => ww_devoe,
	o => \DATA_OUT[0]~output_o\);

-- Location: IOOBUF_X10_Y16_N9
\DATA_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(1),
	devoe => ww_devoe,
	o => \DATA_OUT[1]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\DATA_OUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(2),
	devoe => ww_devoe,
	o => \DATA_OUT[2]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\DATA_OUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(3),
	devoe => ww_devoe,
	o => \DATA_OUT[3]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\DATA_OUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(4),
	devoe => ww_devoe,
	o => \DATA_OUT[4]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\DATA_OUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(5),
	devoe => ww_devoe,
	o => \DATA_OUT[5]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\DATA_OUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(6),
	devoe => ww_devoe,
	o => \DATA_OUT[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\DATA_OUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(7),
	devoe => ww_devoe,
	o => \DATA_OUT[7]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\DATA_OUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(8),
	devoe => ww_devoe,
	o => \DATA_OUT[8]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\DATA_OUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(9),
	devoe => ww_devoe,
	o => \DATA_OUT[9]~output_o\);

-- Location: IOOBUF_X10_Y17_N9
\DATA_OUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(10),
	devoe => ww_devoe,
	o => \DATA_OUT[10]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\DATA_OUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(11),
	devoe => ww_devoe,
	o => \DATA_OUT[11]~output_o\);

-- Location: IOOBUF_X10_Y16_N2
\DATA_OUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(12),
	devoe => ww_devoe,
	o => \DATA_OUT[12]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\DATA_OUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(13),
	devoe => ww_devoe,
	o => \DATA_OUT[13]~output_o\);

-- Location: IOOBUF_X10_Y18_N9
\DATA_OUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(14),
	devoe => ww_devoe,
	o => \DATA_OUT[14]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\DATA_OUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => AC(15),
	devoe => ww_devoe,
	o => \DATA_OUT[15]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y15_N2
\PC[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[0]~12_combout\ = PC(0) $ (VCC)
-- \PC[0]~13\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~12_combout\,
	cout => \PC[0]~13\);

-- Location: IOIBUF_X0_Y6_N22
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y15_N4
\Address[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Address[7]~1_combout\ = (!STATE(0) & !STATE(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STATE(0),
	datad => STATE(2),
	combout => \Address[7]~1_combout\);

-- Location: FF_X11_Y15_N5
\STATE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address[7]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(0));

-- Location: LCCOMB_X11_Y15_N10
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!STATE(2) & (STATE(0) $ (STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => STATE(0),
	datac => STATE(1),
	combout => \Mux13~0_combout\);

-- Location: FF_X11_Y15_N11
\STATE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(1));

-- Location: LCCOMB_X11_Y15_N12
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (STATE(0) & (!STATE(2) & STATE(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(0),
	datac => STATE(2),
	datad => STATE(1),
	combout => \Mux12~0_combout\);

-- Location: FF_X11_Y15_N13
\STATE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux12~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STATE(2));

-- Location: LCCOMB_X11_Y15_N2
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!STATE(2) & (STATE(0) & !STATE(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datac => STATE(0),
	datad => STATE(1),
	combout => \Mux19~0_combout\);

-- Location: FF_X15_Y15_N3
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[0]~12_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X15_Y15_N4
\PC[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[1]~14_combout\ = (PC(1) & (!\PC[0]~13\)) # (!PC(1) & ((\PC[0]~13\) # (GND)))
-- \PC[1]~15\ = CARRY((!\PC[0]~13\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~13\,
	combout => \PC[1]~14_combout\,
	cout => \PC[1]~15\);

-- Location: FF_X15_Y15_N5
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[1]~14_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X15_Y15_N6
\PC[2]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[2]~16_combout\ = (PC(2) & (\PC[1]~15\ & VCC)) # (!PC(2) & (!\PC[1]~15\))
-- \PC[2]~17\ = CARRY((!PC(2) & !\PC[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datad => VCC,
	cin => \PC[1]~15\,
	combout => \PC[2]~16_combout\,
	cout => \PC[2]~17\);

-- Location: FF_X15_Y15_N7
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[2]~16_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X15_Y15_N8
\PC[3]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[3]~18_combout\ = (PC(3) & (!\PC[2]~17\)) # (!PC(3) & ((\PC[2]~17\) # (GND)))
-- \PC[3]~19\ = CARRY((!\PC[2]~17\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~17\,
	combout => \PC[3]~18_combout\,
	cout => \PC[3]~19\);

-- Location: FF_X15_Y15_N9
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[3]~18_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X15_Y15_N10
\PC[4]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[4]~20_combout\ = (PC(4) & (\PC[3]~19\ $ (GND))) # (!PC(4) & (!\PC[3]~19\ & VCC))
-- \PC[4]~21\ = CARRY((PC(4) & !\PC[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~19\,
	combout => \PC[4]~20_combout\,
	cout => \PC[4]~21\);

-- Location: FF_X15_Y15_N11
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[4]~20_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X15_Y15_N12
\PC[5]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[5]~22_combout\ = (PC(5) & ((GND) # (!\PC[4]~21\))) # (!PC(5) & (\PC[4]~21\ $ (GND)))
-- \PC[5]~23\ = CARRY((PC(5)) # (!\PC[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \PC[4]~21\,
	combout => \PC[5]~22_combout\,
	cout => \PC[5]~23\);

-- Location: FF_X15_Y15_N13
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[5]~22_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X15_Y15_N14
\PC[6]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[6]~24_combout\ = (PC(6) & (\PC[5]~23\ & VCC)) # (!PC(6) & (!\PC[5]~23\))
-- \PC[6]~25\ = CARRY((!PC(6) & !\PC[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \PC[5]~23\,
	combout => \PC[6]~24_combout\,
	cout => \PC[6]~25\);

-- Location: FF_X15_Y15_N15
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[6]~24_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X14_Y15_N14
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!PC(6) & !STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(6),
	datad => STATE(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X11_Y15_N28
\Address[11]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Address[11]~0_combout\ = (!STATE(0) & (!\RESET~input_o\ & !STATE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STATE(0),
	datac => \RESET~input_o\,
	datad => STATE(2),
	combout => \Address[11]~0_combout\);

-- Location: FF_X14_Y15_N15
\Address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(6));

-- Location: LCCOMB_X13_Y15_N0
\MEMORY_INSTANCE|MEMORY_BLOCK~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (\MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ & Address(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	datac => Address(0),
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\);

-- Location: LCCOMB_X11_Y15_N24
\IR[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR[4]~0_combout\ = (!STATE(2) & (STATE(0) & (!\RESET~input_o\ & !STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => STATE(0),
	datac => \RESET~input_o\,
	datad => STATE(1),
	combout => \IR[4]~0_combout\);

-- Location: FF_X13_Y15_N1
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: LCCOMB_X14_Y15_N20
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (STATE(1) & (IR(0))) # (!STATE(1) & ((PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => IR(0),
	datad => PC(0),
	combout => \Mux11~0_combout\);

-- Location: FF_X14_Y15_N21
\Address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(0));

-- Location: LCCOMB_X14_Y15_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!PC(5) & !STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(5),
	datad => STATE(1),
	combout => \Mux6~0_combout\);

-- Location: FF_X14_Y15_N13
\Address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(5));

-- Location: LCCOMB_X13_Y15_N26
\MEMORY_INSTANCE|MEMORY_BLOCK~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\ = (Address(0) & (Address(1) & (\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\))) # (!Address(0) & ((\MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\) # ((Address(1) & \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(0),
	datab => Address(1),
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\);

-- Location: LCCOMB_X13_Y15_N18
\MEMORY_INSTANCE|MEMORY_BLOCK~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\);

-- Location: FF_X13_Y15_N19
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: LCCOMB_X14_Y15_N2
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (STATE(1) & (IR(1))) # (!STATE(1) & ((PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => IR(1),
	datad => PC(1),
	combout => \Mux10~0_combout\);

-- Location: FF_X14_Y15_N3
\Address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(1));

-- Location: LCCOMB_X14_Y15_N4
\MEMORY_INSTANCE|MEMORY_BLOCK~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\ = (!Address(5) & (!Address(6) & (!Address(2) & !Address(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(5),
	datab => Address(6),
	datac => Address(2),
	datad => Address(1),
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\);

-- Location: LCCOMB_X13_Y15_N2
\MEMORY_INSTANCE|MEMORY_BLOCK~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ & (!Address(0) & \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	datac => Address(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\);

-- Location: FF_X13_Y15_N3
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X14_Y15_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (STATE(1) & ((IR(3)))) # (!STATE(1) & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => PC(3),
	datad => IR(3),
	combout => \Mux8~0_combout\);

-- Location: FF_X14_Y15_N23
\Address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(3));

-- Location: LCCOMB_X14_Y15_N18
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (STATE(1) & ((IR(2)))) # (!STATE(1) & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => PC(4),
	datad => IR(2),
	combout => \Mux7~0_combout\);

-- Location: FF_X14_Y15_N19
\Address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(4));

-- Location: LCCOMB_X15_Y15_N16
\PC[7]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[7]~26_combout\ = (PC(7) & (!\PC[6]~25\)) # (!PC(7) & ((\PC[6]~25\) # (GND)))
-- \PC[7]~27\ = CARRY((!\PC[6]~25\) # (!PC(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	datad => VCC,
	cin => \PC[6]~25\,
	combout => \PC[7]~26_combout\,
	cout => \PC[7]~27\);

-- Location: FF_X15_Y15_N17
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[7]~26_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X14_Y15_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!STATE(1) & PC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datac => PC(7),
	combout => \Mux4~0_combout\);

-- Location: FF_X14_Y15_N29
\Address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(7));

-- Location: LCCOMB_X15_Y15_N18
\PC[8]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[8]~28_combout\ = (PC(8) & (\PC[7]~27\ $ (GND))) # (!PC(8) & (!\PC[7]~27\ & VCC))
-- \PC[8]~29\ = CARRY((PC(8) & !\PC[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datad => VCC,
	cin => \PC[7]~27\,
	combout => \PC[8]~28_combout\,
	cout => \PC[8]~29\);

-- Location: FF_X15_Y15_N19
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[8]~28_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X15_Y15_N20
\PC[9]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[9]~30_combout\ = (PC(9) & (!\PC[8]~29\)) # (!PC(9) & ((\PC[8]~29\) # (GND)))
-- \PC[9]~31\ = CARRY((!\PC[8]~29\) # (!PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(9),
	datad => VCC,
	cin => \PC[8]~29\,
	combout => \PC[9]~30_combout\,
	cout => \PC[9]~31\);

-- Location: FF_X15_Y15_N21
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[9]~30_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X15_Y15_N22
\PC[10]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[10]~32_combout\ = (PC(10) & (\PC[9]~31\ $ (GND))) # (!PC(10) & (!\PC[9]~31\ & VCC))
-- \PC[10]~33\ = CARRY((PC(10) & !\PC[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(10),
	datad => VCC,
	cin => \PC[9]~31\,
	combout => \PC[10]~32_combout\,
	cout => \PC[10]~33\);

-- Location: FF_X15_Y15_N23
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[10]~32_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X15_Y15_N30
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (PC(10) & !STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(10),
	datad => STATE(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X15_Y15_N31
\Address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(10));

-- Location: LCCOMB_X15_Y15_N24
\PC[11]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PC[11]~34_combout\ = \PC[10]~33\ $ (PC(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(11),
	cin => \PC[10]~33\,
	combout => \PC[11]~34_combout\);

-- Location: FF_X15_Y15_N25
\PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PC[11]~34_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(11));

-- Location: LCCOMB_X15_Y15_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!STATE(1) & PC(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datad => PC(11),
	combout => \Mux0~0_combout\);

-- Location: FF_X15_Y15_N1
\Address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(11));

-- Location: LCCOMB_X15_Y15_N28
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (PC(8) & !STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(8),
	datad => STATE(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X15_Y15_N27
\Address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Mux3~0_combout\,
	sload => VCC,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(8));

-- Location: LCCOMB_X14_Y15_N6
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (PC(9) & !STATE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(9),
	datad => STATE(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X15_Y15_N29
\Address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Mux2~0_combout\,
	sload => VCC,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(9));

-- Location: LCCOMB_X15_Y15_N26
\MEMORY_INSTANCE|MEMORY_BLOCK~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\ = (!Address(10) & (!Address(11) & (!Address(8) & !Address(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(10),
	datab => Address(11),
	datac => Address(8),
	datad => Address(9),
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\);

-- Location: LCCOMB_X14_Y15_N24
\MEMORY_INSTANCE|MEMORY_BLOCK~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ = (!Address(3) & (!Address(4) & (!Address(7) & \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(3),
	datab => Address(4),
	datac => Address(7),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\);

-- Location: LCCOMB_X13_Y15_N14
\MEMORY_INSTANCE|MEMORY_BLOCK~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ & (Address(0) & \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	datac => Address(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\);

-- Location: FF_X13_Y15_N15
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: LCCOMB_X14_Y15_N8
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (STATE(1) & (IR(2))) # (!STATE(1) & ((!PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(1),
	datab => IR(2),
	datad => PC(2),
	combout => \Mux9~0_combout\);

-- Location: FF_X14_Y15_N9
\Address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \Address[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Address(2));

-- Location: LCCOMB_X14_Y15_N10
\MEMORY_INSTANCE|MEMORY_BLOCK~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ = (Address(6) & (Address(2) & Address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Address(6),
	datac => Address(2),
	datad => Address(5),
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\);

-- Location: LCCOMB_X13_Y15_N30
\MEMORY_INSTANCE|MEMORY_BLOCK~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (!Address(0) & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datac => Address(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\);

-- Location: FF_X13_Y15_N31
\IR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(12));

-- Location: LCCOMB_X11_Y15_N6
\OpCode[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OpCode[0]~0_combout\ = (!STATE(2) & (!STATE(0) & (!\RESET~input_o\ & STATE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datab => STATE(0),
	datac => \RESET~input_o\,
	datad => STATE(1),
	combout => \OpCode[0]~0_combout\);

-- Location: FF_X12_Y15_N13
\OpCode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => IR(12),
	sload => VCC,
	ena => \OpCode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OpCode(0));

-- Location: LCCOMB_X13_Y15_N6
\ALU_INSTANCE|ALU_OUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~0_combout\ = AC(0) $ (((\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (\MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ & Address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	datac => Address(0),
	datad => AC(0),
	combout => \ALU_INSTANCE|ALU_OUT~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\AC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[0]~0_combout\ = (OpCode(0) & ((\MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\))) # (!OpCode(0) & (\ALU_INSTANCE|ALU_OUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(0),
	datab => \ALU_INSTANCE|ALU_OUT~0_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~32_combout\,
	combout => \AC[0]~0_combout\);

-- Location: LCCOMB_X14_Y15_N26
\ALU_INSTANCE|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~0_combout\ = (Address(3)) # (((Address(4)) # (!Address(6))) # (!Address(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(3),
	datab => Address(0),
	datac => Address(6),
	datad => Address(4),
	combout => \ALU_INSTANCE|Add0~0_combout\);

-- Location: LCCOMB_X14_Y15_N16
\ALU_INSTANCE|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~1_combout\ = ((Address(7)) # (!Address(2))) # (!Address(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(5),
	datac => Address(2),
	datad => Address(7),
	combout => \ALU_INSTANCE|Add0~1_combout\);

-- Location: LCCOMB_X12_Y15_N12
\ALU_INSTANCE|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~2_combout\ = OpCode(0) $ (((!\ALU_INSTANCE|Add0~0_combout\ & (\MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\ & !\ALU_INSTANCE|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~0_combout\,
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\,
	datac => OpCode(0),
	datad => \ALU_INSTANCE|Add0~1_combout\,
	combout => \ALU_INSTANCE|Add0~2_combout\);

-- Location: LCCOMB_X12_Y15_N16
\ALU_INSTANCE|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~4_cout\ = CARRY(OpCode(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OpCode(0),
	datad => VCC,
	cout => \ALU_INSTANCE|Add0~4_cout\);

-- Location: LCCOMB_X12_Y15_N18
\ALU_INSTANCE|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~5_combout\ = (\ALU_INSTANCE|Add0~2_combout\ & ((AC(0) & (\ALU_INSTANCE|Add0~4_cout\ & VCC)) # (!AC(0) & (!\ALU_INSTANCE|Add0~4_cout\)))) # (!\ALU_INSTANCE|Add0~2_combout\ & ((AC(0) & (!\ALU_INSTANCE|Add0~4_cout\)) # (!AC(0) & 
-- ((\ALU_INSTANCE|Add0~4_cout\) # (GND)))))
-- \ALU_INSTANCE|Add0~6\ = CARRY((\ALU_INSTANCE|Add0~2_combout\ & (!AC(0) & !\ALU_INSTANCE|Add0~4_cout\)) # (!\ALU_INSTANCE|Add0~2_combout\ & ((!\ALU_INSTANCE|Add0~4_cout\) # (!AC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~2_combout\,
	datab => AC(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~4_cout\,
	combout => \ALU_INSTANCE|Add0~5_combout\,
	cout => \ALU_INSTANCE|Add0~6\);

-- Location: LCCOMB_X14_Y15_N30
\MEMORY_INSTANCE|MEMORY_BLOCK~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~40_combout\ = (Address(2) & (!Address(3) & (Address(1) $ (Address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(2),
	datab => Address(1),
	datac => Address(3),
	datad => Address(0),
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~40_combout\);

-- Location: LCCOMB_X13_Y14_N24
\MEMORY_INSTANCE|MEMORY_BLOCK~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~39_combout\ = (!Address(7) & (!Address(4) & \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(7),
	datac => Address(4),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~30_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~39_combout\);

-- Location: LCCOMB_X13_Y14_N18
\MEMORY_INSTANCE|MEMORY_BLOCK~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\ = (Address(6) & (Address(5) & (\MEMORY_INSTANCE|MEMORY_BLOCK~40_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(6),
	datab => Address(5),
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~40_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~39_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\);

-- Location: FF_X13_Y14_N5
\IR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\,
	sload => VCC,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(13));

-- Location: LCCOMB_X12_Y15_N6
\OpCode[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \OpCode[1]~feeder_combout\ = IR(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => IR(13),
	combout => \OpCode[1]~feeder_combout\);

-- Location: FF_X12_Y15_N7
\OpCode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \OpCode[1]~feeder_combout\,
	ena => \OpCode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OpCode(1));

-- Location: LCCOMB_X11_Y15_N22
\AC[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[0]~6_combout\ = (STATE(2) & (!STATE(0) & !STATE(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STATE(2),
	datac => STATE(0),
	datad => STATE(1),
	combout => \AC[0]~6_combout\);

-- Location: LCCOMB_X14_Y15_N0
\MEMORY_INSTANCE|MEMORY_BLOCK~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\ = (\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (Address(0) & (Address(1) & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datab => Address(0),
	datac => Address(1),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\);

-- Location: LCCOMB_X13_Y15_N10
\IR[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \IR[14]~feeder_combout\ = \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\,
	combout => \IR[14]~feeder_combout\);

-- Location: FF_X13_Y15_N11
\IR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \IR[14]~feeder_combout\,
	ena => \IR[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(14));

-- Location: FF_X12_Y15_N1
\OpCode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => IR(14),
	sload => VCC,
	ena => \OpCode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OpCode(2));

-- Location: LCCOMB_X12_Y13_N0
\AC[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[0]~7_combout\ = (\AC[0]~6_combout\ & (OpCode(2) $ (((OpCode(1)) # (OpCode(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[0]~6_combout\,
	datab => OpCode(1),
	datac => OpCode(2),
	datad => OpCode(0),
	combout => \AC[0]~7_combout\);

-- Location: FF_X13_Y15_N29
\AC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[0]~0_combout\,
	asdata => \ALU_INSTANCE|Add0~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(0));

-- Location: LCCOMB_X13_Y15_N12
\ALU_INSTANCE|ALU_OUT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~1_combout\ = AC(1) $ (((\MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => AC(1),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|ALU_OUT~1_combout\);

-- Location: LCCOMB_X13_Y15_N22
\AC[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[1]~1_combout\ = (OpCode(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\)) # (!OpCode(0) & ((\ALU_INSTANCE|ALU_OUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(0),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~35_combout\,
	datad => \ALU_INSTANCE|ALU_OUT~1_combout\,
	combout => \AC[1]~1_combout\);

-- Location: LCCOMB_X13_Y15_N20
\ALU_INSTANCE|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~7_combout\ = OpCode(0) $ (((\MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(0),
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~34_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|Add0~7_combout\);

-- Location: LCCOMB_X12_Y15_N20
\ALU_INSTANCE|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~8_combout\ = ((\ALU_INSTANCE|Add0~7_combout\ $ (AC(1) $ (!\ALU_INSTANCE|Add0~6\)))) # (GND)
-- \ALU_INSTANCE|Add0~9\ = CARRY((\ALU_INSTANCE|Add0~7_combout\ & ((AC(1)) # (!\ALU_INSTANCE|Add0~6\))) # (!\ALU_INSTANCE|Add0~7_combout\ & (AC(1) & !\ALU_INSTANCE|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~7_combout\,
	datab => AC(1),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~6\,
	combout => \ALU_INSTANCE|Add0~8_combout\,
	cout => \ALU_INSTANCE|Add0~9\);

-- Location: FF_X13_Y15_N23
\AC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[1]~1_combout\,
	asdata => \ALU_INSTANCE|Add0~8_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(1));

-- Location: LCCOMB_X12_Y15_N10
\ALU_INSTANCE|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~10_combout\ = OpCode(0) $ (((Address(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(0),
	datab => OpCode(0),
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|Add0~10_combout\);

-- Location: LCCOMB_X12_Y15_N22
\ALU_INSTANCE|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~11_combout\ = (\ALU_INSTANCE|Add0~10_combout\ & ((AC(2) & (\ALU_INSTANCE|Add0~9\ & VCC)) # (!AC(2) & (!\ALU_INSTANCE|Add0~9\)))) # (!\ALU_INSTANCE|Add0~10_combout\ & ((AC(2) & (!\ALU_INSTANCE|Add0~9\)) # (!AC(2) & 
-- ((\ALU_INSTANCE|Add0~9\) # (GND)))))
-- \ALU_INSTANCE|Add0~12\ = CARRY((\ALU_INSTANCE|Add0~10_combout\ & (!AC(2) & !\ALU_INSTANCE|Add0~9\)) # (!\ALU_INSTANCE|Add0~10_combout\ & ((!\ALU_INSTANCE|Add0~9\) # (!AC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~10_combout\,
	datab => AC(2),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~9\,
	combout => \ALU_INSTANCE|Add0~11_combout\,
	cout => \ALU_INSTANCE|Add0~12\);

-- Location: LCCOMB_X12_Y15_N0
\Mux61~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!OpCode(2) & ((OpCode(1) & ((\ALU_INSTANCE|Add0~11_combout\))) # (!OpCode(1) & (\MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(1),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\,
	datac => OpCode(2),
	datad => \ALU_INSTANCE|Add0~11_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X12_Y15_N8
\Mux61~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Mux61~0_combout\) # ((OpCode(2) & (\MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\ $ (AC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(2),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\,
	datac => AC(2),
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: FF_X12_Y15_N9
\AC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux61~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(2));

-- Location: LCCOMB_X13_Y15_N8
\ALU_INSTANCE|ALU_OUT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~2_combout\ = AC(3) $ (((!Address(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(0),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	datac => AC(3),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	combout => \ALU_INSTANCE|ALU_OUT~2_combout\);

-- Location: LCCOMB_X13_Y15_N4
\AC[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[3]~2_combout\ = (OpCode(0) & ((\MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\))) # (!OpCode(0) & (\ALU_INSTANCE|ALU_OUT~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(0),
	datab => \ALU_INSTANCE|ALU_OUT~2_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~37_combout\,
	combout => \AC[3]~2_combout\);

-- Location: LCCOMB_X12_Y15_N4
\ALU_INSTANCE|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~13_combout\ = OpCode(0) $ (((!Address(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\ & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Address(0),
	datab => OpCode(0),
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~33_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|Add0~13_combout\);

-- Location: LCCOMB_X12_Y15_N24
\ALU_INSTANCE|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~14_combout\ = ((AC(3) $ (\ALU_INSTANCE|Add0~13_combout\ $ (!\ALU_INSTANCE|Add0~12\)))) # (GND)
-- \ALU_INSTANCE|Add0~15\ = CARRY((AC(3) & ((\ALU_INSTANCE|Add0~13_combout\) # (!\ALU_INSTANCE|Add0~12\))) # (!AC(3) & (\ALU_INSTANCE|Add0~13_combout\ & !\ALU_INSTANCE|Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(3),
	datab => \ALU_INSTANCE|Add0~13_combout\,
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~12\,
	combout => \ALU_INSTANCE|Add0~14_combout\,
	cout => \ALU_INSTANCE|Add0~15\);

-- Location: FF_X13_Y15_N5
\AC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[3]~2_combout\,
	asdata => \ALU_INSTANCE|Add0~14_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(3));

-- Location: LCCOMB_X12_Y15_N26
\ALU_INSTANCE|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~16_combout\ = (\ALU_INSTANCE|Add0~10_combout\ & ((AC(4) & (\ALU_INSTANCE|Add0~15\ & VCC)) # (!AC(4) & (!\ALU_INSTANCE|Add0~15\)))) # (!\ALU_INSTANCE|Add0~10_combout\ & ((AC(4) & (!\ALU_INSTANCE|Add0~15\)) # (!AC(4) & 
-- ((\ALU_INSTANCE|Add0~15\) # (GND)))))
-- \ALU_INSTANCE|Add0~17\ = CARRY((\ALU_INSTANCE|Add0~10_combout\ & (!AC(4) & !\ALU_INSTANCE|Add0~15\)) # (!\ALU_INSTANCE|Add0~10_combout\ & ((!\ALU_INSTANCE|Add0~15\) # (!AC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~10_combout\,
	datab => AC(4),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~15\,
	combout => \ALU_INSTANCE|Add0~16_combout\,
	cout => \ALU_INSTANCE|Add0~17\);

-- Location: LCCOMB_X12_Y15_N2
\Mux59~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (!OpCode(2) & ((OpCode(1) & (\ALU_INSTANCE|Add0~16_combout\)) # (!OpCode(1) & ((\MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(1),
	datab => OpCode(2),
	datac => \ALU_INSTANCE|Add0~16_combout\,
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X12_Y15_N14
\Mux59~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\Mux59~0_combout\) # ((OpCode(2) & (\MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\ $ (AC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(2),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~36_combout\,
	datac => AC(4),
	datad => \Mux59~0_combout\,
	combout => \Mux59~1_combout\);

-- Location: FF_X12_Y15_N15
\AC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux59~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(4));

-- Location: LCCOMB_X12_Y15_N28
\ALU_INSTANCE|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~18_combout\ = ((AC(5) $ (OpCode(0) $ (!\ALU_INSTANCE|Add0~17\)))) # (GND)
-- \ALU_INSTANCE|Add0~19\ = CARRY((AC(5) & ((OpCode(0)) # (!\ALU_INSTANCE|Add0~17\))) # (!AC(5) & (OpCode(0) & !\ALU_INSTANCE|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(5),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~17\,
	combout => \ALU_INSTANCE|Add0~18_combout\,
	cout => \ALU_INSTANCE|Add0~19\);

-- Location: LCCOMB_X11_Y15_N16
\ALU_INSTANCE|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~20_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(1),
	datad => \ALU_INSTANCE|Add0~18_combout\,
	combout => \ALU_INSTANCE|Add0~20_combout\);

-- Location: LCCOMB_X12_Y13_N6
\AC[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[9]~8_combout\ = (\AC[0]~6_combout\ & (!OpCode(2) & ((OpCode(0)) # (OpCode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AC[0]~6_combout\,
	datab => OpCode(0),
	datac => OpCode(2),
	datad => OpCode(1),
	combout => \AC[9]~8_combout\);

-- Location: FF_X11_Y15_N17
\AC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~20_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(5));

-- Location: LCCOMB_X12_Y15_N30
\ALU_INSTANCE|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~21_combout\ = (AC(6) & ((OpCode(0) & (\ALU_INSTANCE|Add0~19\ & VCC)) # (!OpCode(0) & (!\ALU_INSTANCE|Add0~19\)))) # (!AC(6) & ((OpCode(0) & (!\ALU_INSTANCE|Add0~19\)) # (!OpCode(0) & ((\ALU_INSTANCE|Add0~19\) # (GND)))))
-- \ALU_INSTANCE|Add0~22\ = CARRY((AC(6) & (!OpCode(0) & !\ALU_INSTANCE|Add0~19\)) # (!AC(6) & ((!\ALU_INSTANCE|Add0~19\) # (!OpCode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(6),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~19\,
	combout => \ALU_INSTANCE|Add0~21_combout\,
	cout => \ALU_INSTANCE|Add0~22\);

-- Location: LCCOMB_X11_Y15_N14
\ALU_INSTANCE|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~23_combout\ = (\ALU_INSTANCE|Add0~21_combout\ & OpCode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_INSTANCE|Add0~21_combout\,
	datad => OpCode(1),
	combout => \ALU_INSTANCE|Add0~23_combout\);

-- Location: FF_X11_Y15_N15
\AC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~23_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(6));

-- Location: LCCOMB_X12_Y14_N0
\ALU_INSTANCE|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~24_combout\ = ((AC(7) $ (OpCode(0) $ (!\ALU_INSTANCE|Add0~22\)))) # (GND)
-- \ALU_INSTANCE|Add0~25\ = CARRY((AC(7) & ((OpCode(0)) # (!\ALU_INSTANCE|Add0~22\))) # (!AC(7) & (OpCode(0) & !\ALU_INSTANCE|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(7),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~22\,
	combout => \ALU_INSTANCE|Add0~24_combout\,
	cout => \ALU_INSTANCE|Add0~25\);

-- Location: LCCOMB_X12_Y14_N28
\ALU_INSTANCE|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~26_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OpCode(1),
	datad => \ALU_INSTANCE|Add0~24_combout\,
	combout => \ALU_INSTANCE|Add0~26_combout\);

-- Location: FF_X12_Y14_N29
\AC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~26_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(7));

-- Location: LCCOMB_X12_Y14_N2
\ALU_INSTANCE|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~27_combout\ = (AC(8) & ((OpCode(0) & (\ALU_INSTANCE|Add0~25\ & VCC)) # (!OpCode(0) & (!\ALU_INSTANCE|Add0~25\)))) # (!AC(8) & ((OpCode(0) & (!\ALU_INSTANCE|Add0~25\)) # (!OpCode(0) & ((\ALU_INSTANCE|Add0~25\) # (GND)))))
-- \ALU_INSTANCE|Add0~28\ = CARRY((AC(8) & (!OpCode(0) & !\ALU_INSTANCE|Add0~25\)) # (!AC(8) & ((!\ALU_INSTANCE|Add0~25\) # (!OpCode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(8),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~25\,
	combout => \ALU_INSTANCE|Add0~27_combout\,
	cout => \ALU_INSTANCE|Add0~28\);

-- Location: LCCOMB_X12_Y14_N30
\ALU_INSTANCE|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~29_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OpCode(1),
	datad => \ALU_INSTANCE|Add0~27_combout\,
	combout => \ALU_INSTANCE|Add0~29_combout\);

-- Location: FF_X12_Y14_N31
\AC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~29_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(8));

-- Location: LCCOMB_X12_Y14_N4
\ALU_INSTANCE|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~30_combout\ = ((AC(9) $ (OpCode(0) $ (!\ALU_INSTANCE|Add0~28\)))) # (GND)
-- \ALU_INSTANCE|Add0~31\ = CARRY((AC(9) & ((OpCode(0)) # (!\ALU_INSTANCE|Add0~28\))) # (!AC(9) & (OpCode(0) & !\ALU_INSTANCE|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(9),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~28\,
	combout => \ALU_INSTANCE|Add0~30_combout\,
	cout => \ALU_INSTANCE|Add0~31\);

-- Location: LCCOMB_X12_Y14_N24
\ALU_INSTANCE|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~32_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(1),
	datac => \ALU_INSTANCE|Add0~30_combout\,
	combout => \ALU_INSTANCE|Add0~32_combout\);

-- Location: FF_X12_Y14_N25
\AC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~32_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(9));

-- Location: LCCOMB_X12_Y14_N6
\ALU_INSTANCE|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~33_combout\ = (AC(10) & ((OpCode(0) & (\ALU_INSTANCE|Add0~31\ & VCC)) # (!OpCode(0) & (!\ALU_INSTANCE|Add0~31\)))) # (!AC(10) & ((OpCode(0) & (!\ALU_INSTANCE|Add0~31\)) # (!OpCode(0) & ((\ALU_INSTANCE|Add0~31\) # (GND)))))
-- \ALU_INSTANCE|Add0~34\ = CARRY((AC(10) & (!OpCode(0) & !\ALU_INSTANCE|Add0~31\)) # (!AC(10) & ((!\ALU_INSTANCE|Add0~31\) # (!OpCode(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(10),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~31\,
	combout => \ALU_INSTANCE|Add0~33_combout\,
	cout => \ALU_INSTANCE|Add0~34\);

-- Location: LCCOMB_X11_Y14_N16
\ALU_INSTANCE|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~35_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OpCode(1),
	datad => \ALU_INSTANCE|Add0~33_combout\,
	combout => \ALU_INSTANCE|Add0~35_combout\);

-- Location: FF_X11_Y14_N17
\AC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~35_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(10));

-- Location: LCCOMB_X12_Y14_N8
\ALU_INSTANCE|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~36_combout\ = ((AC(11) $ (OpCode(0) $ (!\ALU_INSTANCE|Add0~34\)))) # (GND)
-- \ALU_INSTANCE|Add0~37\ = CARRY((AC(11) & ((OpCode(0)) # (!\ALU_INSTANCE|Add0~34\))) # (!AC(11) & (OpCode(0) & !\ALU_INSTANCE|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(11),
	datab => OpCode(0),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~34\,
	combout => \ALU_INSTANCE|Add0~36_combout\,
	cout => \ALU_INSTANCE|Add0~37\);

-- Location: LCCOMB_X12_Y14_N26
\ALU_INSTANCE|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~38_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(1),
	datac => \ALU_INSTANCE|Add0~36_combout\,
	combout => \ALU_INSTANCE|Add0~38_combout\);

-- Location: FF_X12_Y14_N27
\AC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~38_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(11));

-- Location: LCCOMB_X13_Y15_N24
\ALU_INSTANCE|ALU_OUT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~3_combout\ = AC(12) $ (((\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (!Address(0) & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datab => AC(12),
	datac => Address(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|ALU_OUT~3_combout\);

-- Location: LCCOMB_X12_Y14_N22
\AC[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[12]~3_combout\ = (OpCode(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\)) # (!OpCode(0) & ((\ALU_INSTANCE|ALU_OUT~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~38_combout\,
	datab => OpCode(0),
	datad => \ALU_INSTANCE|ALU_OUT~3_combout\,
	combout => \AC[12]~3_combout\);

-- Location: LCCOMB_X13_Y15_N16
\ALU_INSTANCE|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~39_combout\ = OpCode(0) $ (((\MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\ & (!Address(0) & \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OpCode(0),
	datab => \MEMORY_INSTANCE|MEMORY_BLOCK~29_combout\,
	datac => Address(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~31_combout\,
	combout => \ALU_INSTANCE|Add0~39_combout\);

-- Location: LCCOMB_X12_Y14_N10
\ALU_INSTANCE|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~40_combout\ = (AC(12) & ((\ALU_INSTANCE|Add0~39_combout\ & (\ALU_INSTANCE|Add0~37\ & VCC)) # (!\ALU_INSTANCE|Add0~39_combout\ & (!\ALU_INSTANCE|Add0~37\)))) # (!AC(12) & ((\ALU_INSTANCE|Add0~39_combout\ & (!\ALU_INSTANCE|Add0~37\)) # 
-- (!\ALU_INSTANCE|Add0~39_combout\ & ((\ALU_INSTANCE|Add0~37\) # (GND)))))
-- \ALU_INSTANCE|Add0~41\ = CARRY((AC(12) & (!\ALU_INSTANCE|Add0~39_combout\ & !\ALU_INSTANCE|Add0~37\)) # (!AC(12) & ((!\ALU_INSTANCE|Add0~37\) # (!\ALU_INSTANCE|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(12),
	datab => \ALU_INSTANCE|Add0~39_combout\,
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~37\,
	combout => \ALU_INSTANCE|Add0~40_combout\,
	cout => \ALU_INSTANCE|Add0~41\);

-- Location: FF_X12_Y14_N23
\AC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[12]~3_combout\,
	asdata => \ALU_INSTANCE|Add0~40_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(12));

-- Location: LCCOMB_X13_Y14_N16
\ALU_INSTANCE|ALU_OUT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~4_combout\ = \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\ $ (AC(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\,
	datad => AC(13),
	combout => \ALU_INSTANCE|ALU_OUT~4_combout\);

-- Location: LCCOMB_X12_Y14_N20
\AC[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[13]~4_combout\ = (OpCode(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\)) # (!OpCode(0) & ((\ALU_INSTANCE|ALU_OUT~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\,
	datab => OpCode(0),
	datad => \ALU_INSTANCE|ALU_OUT~4_combout\,
	combout => \AC[13]~4_combout\);

-- Location: LCCOMB_X13_Y14_N30
\ALU_INSTANCE|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~42_combout\ = OpCode(0) $ (\MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OpCode(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~41_combout\,
	combout => \ALU_INSTANCE|Add0~42_combout\);

-- Location: LCCOMB_X12_Y14_N12
\ALU_INSTANCE|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~43_combout\ = ((\ALU_INSTANCE|Add0~42_combout\ $ (AC(13) $ (!\ALU_INSTANCE|Add0~41\)))) # (GND)
-- \ALU_INSTANCE|Add0~44\ = CARRY((\ALU_INSTANCE|Add0~42_combout\ & ((AC(13)) # (!\ALU_INSTANCE|Add0~41\))) # (!\ALU_INSTANCE|Add0~42_combout\ & (AC(13) & !\ALU_INSTANCE|Add0~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~42_combout\,
	datab => AC(13),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~41\,
	combout => \ALU_INSTANCE|Add0~43_combout\,
	cout => \ALU_INSTANCE|Add0~44\);

-- Location: FF_X12_Y14_N21
\AC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[13]~4_combout\,
	asdata => \ALU_INSTANCE|Add0~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(13));

-- Location: LCCOMB_X13_Y14_N28
\ALU_INSTANCE|ALU_OUT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|ALU_OUT~5_combout\ = AC(14) $ (\MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => AC(14),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\,
	combout => \ALU_INSTANCE|ALU_OUT~5_combout\);

-- Location: LCCOMB_X12_Y14_N18
\AC[14]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AC[14]~5_combout\ = (OpCode(0) & (\MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\)) # (!OpCode(0) & ((\ALU_INSTANCE|ALU_OUT~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\,
	datab => OpCode(0),
	datad => \ALU_INSTANCE|ALU_OUT~5_combout\,
	combout => \AC[14]~5_combout\);

-- Location: LCCOMB_X13_Y14_N2
\ALU_INSTANCE|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~45_combout\ = OpCode(0) $ (\MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OpCode(0),
	datad => \MEMORY_INSTANCE|MEMORY_BLOCK~42_combout\,
	combout => \ALU_INSTANCE|Add0~45_combout\);

-- Location: LCCOMB_X12_Y14_N14
\ALU_INSTANCE|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~46_combout\ = (\ALU_INSTANCE|Add0~45_combout\ & ((AC(14) & (\ALU_INSTANCE|Add0~44\ & VCC)) # (!AC(14) & (!\ALU_INSTANCE|Add0~44\)))) # (!\ALU_INSTANCE|Add0~45_combout\ & ((AC(14) & (!\ALU_INSTANCE|Add0~44\)) # (!AC(14) & 
-- ((\ALU_INSTANCE|Add0~44\) # (GND)))))
-- \ALU_INSTANCE|Add0~47\ = CARRY((\ALU_INSTANCE|Add0~45_combout\ & (!AC(14) & !\ALU_INSTANCE|Add0~44\)) # (!\ALU_INSTANCE|Add0~45_combout\ & ((!\ALU_INSTANCE|Add0~44\) # (!AC(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_INSTANCE|Add0~45_combout\,
	datab => AC(14),
	datad => VCC,
	cin => \ALU_INSTANCE|Add0~44\,
	combout => \ALU_INSTANCE|Add0~46_combout\,
	cout => \ALU_INSTANCE|Add0~47\);

-- Location: FF_X12_Y14_N19
\AC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \AC[14]~5_combout\,
	asdata => \ALU_INSTANCE|Add0~46_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => OpCode(1),
	ena => \AC[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(14));

-- Location: LCCOMB_X12_Y14_N16
\ALU_INSTANCE|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~48_combout\ = AC(15) $ (\ALU_INSTANCE|Add0~47\ $ (!OpCode(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => AC(15),
	datad => OpCode(0),
	cin => \ALU_INSTANCE|Add0~47\,
	combout => \ALU_INSTANCE|Add0~48_combout\);

-- Location: LCCOMB_X11_Y14_N10
\ALU_INSTANCE|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU_INSTANCE|Add0~50_combout\ = (OpCode(1) & \ALU_INSTANCE|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OpCode(1),
	datad => \ALU_INSTANCE|Add0~48_combout\,
	combout => \ALU_INSTANCE|Add0~50_combout\);

-- Location: FF_X11_Y14_N11
\AC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ALU_INSTANCE|Add0~50_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \AC[9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => AC(15));

-- Location: IOIBUF_X6_Y0_N8
\DATA_IN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(0),
	o => \DATA_IN[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\DATA_IN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(1),
	o => \DATA_IN[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N22
\DATA_IN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(2),
	o => \DATA_IN[2]~input_o\);

-- Location: IOIBUF_X24_Y25_N22
\DATA_IN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(3),
	o => \DATA_IN[3]~input_o\);

-- Location: IOIBUF_X22_Y25_N22
\DATA_IN[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(4),
	o => \DATA_IN[4]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\DATA_IN[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(5),
	o => \DATA_IN[5]~input_o\);

-- Location: IOIBUF_X31_Y14_N22
\DATA_IN[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(6),
	o => \DATA_IN[6]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\DATA_IN[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(7),
	o => \DATA_IN[7]~input_o\);

-- Location: IOIBUF_X19_Y25_N22
\DATA_IN[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(8),
	o => \DATA_IN[8]~input_o\);

-- Location: IOIBUF_X19_Y25_N8
\DATA_IN[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(9),
	o => \DATA_IN[9]~input_o\);

-- Location: IOIBUF_X11_Y25_N29
\DATA_IN[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(10),
	o => \DATA_IN[10]~input_o\);

-- Location: IOIBUF_X31_Y3_N8
\DATA_IN[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(11),
	o => \DATA_IN[11]~input_o\);

-- Location: IOIBUF_X19_Y25_N15
\DATA_IN[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(12),
	o => \DATA_IN[12]~input_o\);

-- Location: IOIBUF_X11_Y25_N22
\DATA_IN[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(13),
	o => \DATA_IN[13]~input_o\);

-- Location: IOIBUF_X15_Y25_N15
\DATA_IN[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(14),
	o => \DATA_IN[14]~input_o\);

-- Location: IOIBUF_X31_Y12_N15
\DATA_IN[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN(15),
	o => \DATA_IN[15]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_DATA_OUT(0) <= \DATA_OUT[0]~output_o\;

ww_DATA_OUT(1) <= \DATA_OUT[1]~output_o\;

ww_DATA_OUT(2) <= \DATA_OUT[2]~output_o\;

ww_DATA_OUT(3) <= \DATA_OUT[3]~output_o\;

ww_DATA_OUT(4) <= \DATA_OUT[4]~output_o\;

ww_DATA_OUT(5) <= \DATA_OUT[5]~output_o\;

ww_DATA_OUT(6) <= \DATA_OUT[6]~output_o\;

ww_DATA_OUT(7) <= \DATA_OUT[7]~output_o\;

ww_DATA_OUT(8) <= \DATA_OUT[8]~output_o\;

ww_DATA_OUT(9) <= \DATA_OUT[9]~output_o\;

ww_DATA_OUT(10) <= \DATA_OUT[10]~output_o\;

ww_DATA_OUT(11) <= \DATA_OUT[11]~output_o\;

ww_DATA_OUT(12) <= \DATA_OUT[12]~output_o\;

ww_DATA_OUT(13) <= \DATA_OUT[13]~output_o\;

ww_DATA_OUT(14) <= \DATA_OUT[14]~output_o\;

ww_DATA_OUT(15) <= \DATA_OUT[15]~output_o\;
END structure;


