-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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
-- Generated on "01/24/2018 15:12:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          NEO
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY NEO_vhd_vec_tst IS
END NEO_vhd_vec_tst;
ARCHITECTURE NEO_arch OF NEO_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL entrada_PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL habilitaPC : STD_LOGIC;
SIGNAL out_estado : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL saida_BdRA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_BdRB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_ExtensorSinal2p8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_ExtensorSinal4p8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MemDados : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MemInstr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MUXbdRegin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MUXfonteA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_MUXfonteB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_RegA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_RegB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_RegULAout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL saida_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL zeroULA : STD_LOGIC;
COMPONENT NEO
	PORT (
	clock : IN STD_LOGIC;
	entrada_PC : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	habilitaPC : BUFFER STD_LOGIC;
	out_estado : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	reset : IN STD_LOGIC;
	saida_BdRA : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_BdRB : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_ExtensorSinal2p8 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_ExtensorSinal4p8 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MDR : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MemDados : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MemInstr : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MUXbdRegin : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MUXfonteA : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_MUXfonteB : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_PC : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_RegA : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_RegB : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_RegULAout : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	saida_ULA : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	zeroULA : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : NEO
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	entrada_PC => entrada_PC,
	habilitaPC => habilitaPC,
	out_estado => out_estado,
	reset => reset,
	saida_BdRA => saida_BdRA,
	saida_BdRB => saida_BdRB,
	saida_ExtensorSinal2p8 => saida_ExtensorSinal2p8,
	saida_ExtensorSinal4p8 => saida_ExtensorSinal4p8,
	saida_MDR => saida_MDR,
	saida_MemDados => saida_MemDados,
	saida_MemInstr => saida_MemInstr,
	saida_MUXbdRegin => saida_MUXbdRegin,
	saida_MUXfonteA => saida_MUXfonteA,
	saida_MUXfonteB => saida_MUXfonteB,
	saida_PC => saida_PC,
	saida_RegA => saida_RegA,
	saida_RegB => saida_RegB,
	saida_RegULAout => saida_RegULAout,
	saida_ULA => saida_ULA,
	zeroULA => zeroULA
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END NEO_arch;
