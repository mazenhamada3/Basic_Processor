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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/07/2025 22:39:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Enhanced_Processor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Enhanced_Processor_vhd_vec_tst IS
END Enhanced_Processor_vhd_vec_tst;
ARCHITECTURE Enhanced_Processor_arch OF Enhanced_Processor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL alu_out_debug : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL DATA_IN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ir_debug : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pc_debug : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
COMPONENT Enhanced_Processor
	PORT (
	alu_out_debug : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	CLK : IN STD_LOGIC;
	DATA_IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DATA_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ir_debug : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_debug : INOUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Enhanced_Processor
	PORT MAP (
-- list connections between master ports and signals
	alu_out_debug => alu_out_debug,
	CLK => CLK,
	DATA_IN => DATA_IN,
	DATA_OUT => DATA_OUT,
	ir_debug => ir_debug,
	pc_debug => pc_debug,
	RESET => RESET
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 50000 ps;
	CLK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- DATA_IN[15]
t_prcs_DATA_IN_15: PROCESS
BEGIN
	DATA_IN(15) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_15;
-- DATA_IN[14]
t_prcs_DATA_IN_14: PROCESS
BEGIN
	DATA_IN(14) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_14;
-- DATA_IN[13]
t_prcs_DATA_IN_13: PROCESS
BEGIN
	DATA_IN(13) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_13;
-- DATA_IN[12]
t_prcs_DATA_IN_12: PROCESS
BEGIN
	DATA_IN(12) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_12;
-- DATA_IN[11]
t_prcs_DATA_IN_11: PROCESS
BEGIN
	DATA_IN(11) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_11;
-- DATA_IN[10]
t_prcs_DATA_IN_10: PROCESS
BEGIN
	DATA_IN(10) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_10;
-- DATA_IN[9]
t_prcs_DATA_IN_9: PROCESS
BEGIN
	DATA_IN(9) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_9;
-- DATA_IN[8]
t_prcs_DATA_IN_8: PROCESS
BEGIN
	DATA_IN(8) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_8;
-- DATA_IN[7]
t_prcs_DATA_IN_7: PROCESS
BEGIN
	DATA_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_7;
-- DATA_IN[6]
t_prcs_DATA_IN_6: PROCESS
BEGIN
	DATA_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_6;
-- DATA_IN[5]
t_prcs_DATA_IN_5: PROCESS
BEGIN
	DATA_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_5;
-- DATA_IN[4]
t_prcs_DATA_IN_4: PROCESS
BEGIN
	DATA_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_4;
-- DATA_IN[3]
t_prcs_DATA_IN_3: PROCESS
BEGIN
	DATA_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_3;
-- DATA_IN[2]
t_prcs_DATA_IN_2: PROCESS
BEGIN
	DATA_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_2;
-- DATA_IN[1]
t_prcs_DATA_IN_1: PROCESS
BEGIN
	DATA_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_1;
-- DATA_IN[0]
t_prcs_DATA_IN_0: PROCESS
BEGIN
	DATA_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_0;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
-- alu_out_debug[15]
t_prcs_alu_out_debug_15: PROCESS
BEGIN
	alu_out_debug(15) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_15;
-- alu_out_debug[14]
t_prcs_alu_out_debug_14: PROCESS
BEGIN
	alu_out_debug(14) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_14;
-- alu_out_debug[13]
t_prcs_alu_out_debug_13: PROCESS
BEGIN
	alu_out_debug(13) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_13;
-- alu_out_debug[12]
t_prcs_alu_out_debug_12: PROCESS
BEGIN
	alu_out_debug(12) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_12;
-- alu_out_debug[11]
t_prcs_alu_out_debug_11: PROCESS
BEGIN
	alu_out_debug(11) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_11;
-- alu_out_debug[10]
t_prcs_alu_out_debug_10: PROCESS
BEGIN
	alu_out_debug(10) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_10;
-- alu_out_debug[9]
t_prcs_alu_out_debug_9: PROCESS
BEGIN
	alu_out_debug(9) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_9;
-- alu_out_debug[8]
t_prcs_alu_out_debug_8: PROCESS
BEGIN
	alu_out_debug(8) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_8;
-- alu_out_debug[7]
t_prcs_alu_out_debug_7: PROCESS
BEGIN
	alu_out_debug(7) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_7;
-- alu_out_debug[6]
t_prcs_alu_out_debug_6: PROCESS
BEGIN
	alu_out_debug(6) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_6;
-- alu_out_debug[5]
t_prcs_alu_out_debug_5: PROCESS
BEGIN
	alu_out_debug(5) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_5;
-- alu_out_debug[4]
t_prcs_alu_out_debug_4: PROCESS
BEGIN
	alu_out_debug(4) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_4;
-- alu_out_debug[3]
t_prcs_alu_out_debug_3: PROCESS
BEGIN
	alu_out_debug(3) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_3;
-- alu_out_debug[2]
t_prcs_alu_out_debug_2: PROCESS
BEGIN
	alu_out_debug(2) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_2;
-- alu_out_debug[1]
t_prcs_alu_out_debug_1: PROCESS
BEGIN
	alu_out_debug(1) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_1;
-- alu_out_debug[0]
t_prcs_alu_out_debug_0: PROCESS
BEGIN
	alu_out_debug(0) <= 'Z';
WAIT;
END PROCESS t_prcs_alu_out_debug_0;
-- ir_debug[15]
t_prcs_ir_debug_15: PROCESS
BEGIN
	ir_debug(15) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_15;
-- ir_debug[14]
t_prcs_ir_debug_14: PROCESS
BEGIN
	ir_debug(14) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_14;
-- ir_debug[13]
t_prcs_ir_debug_13: PROCESS
BEGIN
	ir_debug(13) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_13;
-- ir_debug[12]
t_prcs_ir_debug_12: PROCESS
BEGIN
	ir_debug(12) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_12;
-- ir_debug[11]
t_prcs_ir_debug_11: PROCESS
BEGIN
	ir_debug(11) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_11;
-- ir_debug[10]
t_prcs_ir_debug_10: PROCESS
BEGIN
	ir_debug(10) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_10;
-- ir_debug[9]
t_prcs_ir_debug_9: PROCESS
BEGIN
	ir_debug(9) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_9;
-- ir_debug[8]
t_prcs_ir_debug_8: PROCESS
BEGIN
	ir_debug(8) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_8;
-- ir_debug[7]
t_prcs_ir_debug_7: PROCESS
BEGIN
	ir_debug(7) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_7;
-- ir_debug[6]
t_prcs_ir_debug_6: PROCESS
BEGIN
	ir_debug(6) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_6;
-- ir_debug[5]
t_prcs_ir_debug_5: PROCESS
BEGIN
	ir_debug(5) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_5;
-- ir_debug[4]
t_prcs_ir_debug_4: PROCESS
BEGIN
	ir_debug(4) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_4;
-- ir_debug[3]
t_prcs_ir_debug_3: PROCESS
BEGIN
	ir_debug(3) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_3;
-- ir_debug[2]
t_prcs_ir_debug_2: PROCESS
BEGIN
	ir_debug(2) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_2;
-- ir_debug[1]
t_prcs_ir_debug_1: PROCESS
BEGIN
	ir_debug(1) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_1;
-- ir_debug[0]
t_prcs_ir_debug_0: PROCESS
BEGIN
	ir_debug(0) <= 'Z';
WAIT;
END PROCESS t_prcs_ir_debug_0;
-- pc_debug[11]
t_prcs_pc_debug_11: PROCESS
BEGIN
	pc_debug(11) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_11;
-- pc_debug[10]
t_prcs_pc_debug_10: PROCESS
BEGIN
	pc_debug(10) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_10;
-- pc_debug[9]
t_prcs_pc_debug_9: PROCESS
BEGIN
	pc_debug(9) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_9;
-- pc_debug[8]
t_prcs_pc_debug_8: PROCESS
BEGIN
	pc_debug(8) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_8;
-- pc_debug[7]
t_prcs_pc_debug_7: PROCESS
BEGIN
	pc_debug(7) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_7;
-- pc_debug[6]
t_prcs_pc_debug_6: PROCESS
BEGIN
	pc_debug(6) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_6;
-- pc_debug[5]
t_prcs_pc_debug_5: PROCESS
BEGIN
	pc_debug(5) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_5;
-- pc_debug[4]
t_prcs_pc_debug_4: PROCESS
BEGIN
	pc_debug(4) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_4;
-- pc_debug[3]
t_prcs_pc_debug_3: PROCESS
BEGIN
	pc_debug(3) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_3;
-- pc_debug[2]
t_prcs_pc_debug_2: PROCESS
BEGIN
	pc_debug(2) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_2;
-- pc_debug[1]
t_prcs_pc_debug_1: PROCESS
BEGIN
	pc_debug(1) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_1;
-- pc_debug[0]
t_prcs_pc_debug_0: PROCESS
BEGIN
	pc_debug(0) <= 'Z';
WAIT;
END PROCESS t_prcs_pc_debug_0;
END Enhanced_Processor_arch;
