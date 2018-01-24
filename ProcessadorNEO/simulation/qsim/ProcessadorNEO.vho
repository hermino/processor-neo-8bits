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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "01/24/2018 15:12:14"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NEO IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	entrada_PC : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_PC : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MemInstr : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_BdRA : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_BdRB : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_ExtensorSinal2p8 : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_ExtensorSinal4p8 : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_RegA : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_RegB : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MUXfonteA : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MUXfonteB : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_ULA : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_RegULAout : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MemDados : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MDR : BUFFER std_logic_vector(7 DOWNTO 0);
	saida_MUXbdRegin : BUFFER std_logic_vector(7 DOWNTO 0);
	habilitaPC : BUFFER std_logic;
	zeroULA : BUFFER std_logic;
	out_estado : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END NEO;

ARCHITECTURE structure OF NEO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_entrada_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MemInstr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_BdRA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_BdRB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_ExtensorSinal2p8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_ExtensorSinal4p8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_RegA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_RegB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MUXfonteA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MUXfonteB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_RegULAout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MemDados : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_MUXbdRegin : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_habilitaPC : std_logic;
SIGNAL ww_zeroULA : std_logic;
SIGNAL ww_out_estado : std_logic_vector(2 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \entrada_PC[0]~output_o\ : std_logic;
SIGNAL \entrada_PC[1]~output_o\ : std_logic;
SIGNAL \entrada_PC[2]~output_o\ : std_logic;
SIGNAL \entrada_PC[3]~output_o\ : std_logic;
SIGNAL \entrada_PC[4]~output_o\ : std_logic;
SIGNAL \entrada_PC[5]~output_o\ : std_logic;
SIGNAL \entrada_PC[6]~output_o\ : std_logic;
SIGNAL \entrada_PC[7]~output_o\ : std_logic;
SIGNAL \saida_PC[0]~output_o\ : std_logic;
SIGNAL \saida_PC[1]~output_o\ : std_logic;
SIGNAL \saida_PC[2]~output_o\ : std_logic;
SIGNAL \saida_PC[3]~output_o\ : std_logic;
SIGNAL \saida_PC[4]~output_o\ : std_logic;
SIGNAL \saida_PC[5]~output_o\ : std_logic;
SIGNAL \saida_PC[6]~output_o\ : std_logic;
SIGNAL \saida_PC[7]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[0]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[1]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[2]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[3]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[4]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[5]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[6]~output_o\ : std_logic;
SIGNAL \saida_MemInstr[7]~output_o\ : std_logic;
SIGNAL \saida_BdRA[0]~output_o\ : std_logic;
SIGNAL \saida_BdRA[1]~output_o\ : std_logic;
SIGNAL \saida_BdRA[2]~output_o\ : std_logic;
SIGNAL \saida_BdRA[3]~output_o\ : std_logic;
SIGNAL \saida_BdRA[4]~output_o\ : std_logic;
SIGNAL \saida_BdRA[5]~output_o\ : std_logic;
SIGNAL \saida_BdRA[6]~output_o\ : std_logic;
SIGNAL \saida_BdRA[7]~output_o\ : std_logic;
SIGNAL \saida_BdRB[0]~output_o\ : std_logic;
SIGNAL \saida_BdRB[1]~output_o\ : std_logic;
SIGNAL \saida_BdRB[2]~output_o\ : std_logic;
SIGNAL \saida_BdRB[3]~output_o\ : std_logic;
SIGNAL \saida_BdRB[4]~output_o\ : std_logic;
SIGNAL \saida_BdRB[5]~output_o\ : std_logic;
SIGNAL \saida_BdRB[6]~output_o\ : std_logic;
SIGNAL \saida_BdRB[7]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[0]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[1]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[2]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[3]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[4]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[5]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[6]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal2p8[7]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[0]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[1]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[2]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[3]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[4]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[5]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[6]~output_o\ : std_logic;
SIGNAL \saida_ExtensorSinal4p8[7]~output_o\ : std_logic;
SIGNAL \saida_RegA[0]~output_o\ : std_logic;
SIGNAL \saida_RegA[1]~output_o\ : std_logic;
SIGNAL \saida_RegA[2]~output_o\ : std_logic;
SIGNAL \saida_RegA[3]~output_o\ : std_logic;
SIGNAL \saida_RegA[4]~output_o\ : std_logic;
SIGNAL \saida_RegA[5]~output_o\ : std_logic;
SIGNAL \saida_RegA[6]~output_o\ : std_logic;
SIGNAL \saida_RegA[7]~output_o\ : std_logic;
SIGNAL \saida_RegB[0]~output_o\ : std_logic;
SIGNAL \saida_RegB[1]~output_o\ : std_logic;
SIGNAL \saida_RegB[2]~output_o\ : std_logic;
SIGNAL \saida_RegB[3]~output_o\ : std_logic;
SIGNAL \saida_RegB[4]~output_o\ : std_logic;
SIGNAL \saida_RegB[5]~output_o\ : std_logic;
SIGNAL \saida_RegB[6]~output_o\ : std_logic;
SIGNAL \saida_RegB[7]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[0]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[1]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[2]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[3]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[4]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[5]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[6]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteA[7]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[0]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[1]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[2]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[3]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[4]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[5]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[6]~output_o\ : std_logic;
SIGNAL \saida_MUXfonteB[7]~output_o\ : std_logic;
SIGNAL \saida_ULA[0]~output_o\ : std_logic;
SIGNAL \saida_ULA[1]~output_o\ : std_logic;
SIGNAL \saida_ULA[2]~output_o\ : std_logic;
SIGNAL \saida_ULA[3]~output_o\ : std_logic;
SIGNAL \saida_ULA[4]~output_o\ : std_logic;
SIGNAL \saida_ULA[5]~output_o\ : std_logic;
SIGNAL \saida_ULA[6]~output_o\ : std_logic;
SIGNAL \saida_ULA[7]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[0]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[1]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[2]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[3]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[4]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[5]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[6]~output_o\ : std_logic;
SIGNAL \saida_RegULAout[7]~output_o\ : std_logic;
SIGNAL \saida_MemDados[0]~output_o\ : std_logic;
SIGNAL \saida_MemDados[1]~output_o\ : std_logic;
SIGNAL \saida_MemDados[2]~output_o\ : std_logic;
SIGNAL \saida_MemDados[3]~output_o\ : std_logic;
SIGNAL \saida_MemDados[4]~output_o\ : std_logic;
SIGNAL \saida_MemDados[5]~output_o\ : std_logic;
SIGNAL \saida_MemDados[6]~output_o\ : std_logic;
SIGNAL \saida_MemDados[7]~output_o\ : std_logic;
SIGNAL \saida_MDR[0]~output_o\ : std_logic;
SIGNAL \saida_MDR[1]~output_o\ : std_logic;
SIGNAL \saida_MDR[2]~output_o\ : std_logic;
SIGNAL \saida_MDR[3]~output_o\ : std_logic;
SIGNAL \saida_MDR[4]~output_o\ : std_logic;
SIGNAL \saida_MDR[5]~output_o\ : std_logic;
SIGNAL \saida_MDR[6]~output_o\ : std_logic;
SIGNAL \saida_MDR[7]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[0]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[1]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[2]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[3]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[4]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[5]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[6]~output_o\ : std_logic;
SIGNAL \saida_MUXbdRegin[7]~output_o\ : std_logic;
SIGNAL \habilitaPC~output_o\ : std_logic;
SIGNAL \zeroULA~output_o\ : std_logic;
SIGNAL \out_estado[0]~output_o\ : std_logic;
SIGNAL \out_estado[1]~output_o\ : std_logic;
SIGNAL \out_estado[2]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \controle|prox_estado.s6~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controle|atual_estado.s6~q\ : std_logic;
SIGNAL \controle|atual_estado.s5~q\ : std_logic;
SIGNAL \controle|prox_estado.s7~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s7~q\ : std_logic;
SIGNAL \controle|Selector0~0_combout\ : std_logic;
SIGNAL \controle|Selector0~1_combout\ : std_logic;
SIGNAL \controle|atual_estado.s0~q\ : std_logic;
SIGNAL \controle|atual_estado.s1~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s1~q\ : std_logic;
SIGNAL \controle|prox_estado.s4~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s4~q\ : std_logic;
SIGNAL \controle|WideOr4~0_combout\ : std_logic;
SIGNAL \controle|WideOr8~combout\ : std_logic;
SIGNAL \controle|ULAop[3]~1_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~60_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~21_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~61_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~29_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~62_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~37_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~45_combout\ : std_logic;
SIGNAL \controle|regEscrita~0_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[2]~2_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~20_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~28_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~36_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~52_combout\ : std_logic;
SIGNAL \controle|WideOr7~combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux6~0_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~22_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~30_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~38_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~54_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux4~0_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[1]~1_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~19_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~27_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~35_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~51_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux7~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux6~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\ : std_logic;
SIGNAL \controle|ULAfonteB[1]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~35_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~31_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~27_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~23_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~10\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Equal4~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~34_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~30_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~26_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~22_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~10\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~1_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~18_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~52_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~26_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~53_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~34_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~54_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~42_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~50_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[7]~7_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~59_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~18_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~26_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~34_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~42_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~50_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[7]~7_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~58_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~5_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~17_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~25_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~33_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~41_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~49_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[6]~6_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~17_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~25_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~33_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~41_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~49_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[6]~6_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~24_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~32_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~40_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~56_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux2~0_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~57_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|cin~0_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~15_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~23_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~31_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~39_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~47_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[4]~4_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~15_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~23_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~31_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~39_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~55_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux3~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~47_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[4]~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux5~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~4_combout\ : std_logic;
SIGNAL \controle|ULAop[2]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Equal0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux5~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux5~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux5~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux5~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Equal0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Equal0~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Equal0~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|bool~combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux12~0_combout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux0~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~51_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~16_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~24_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~32_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~40_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~48_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[5]~5_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~16_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~48_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[5]~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux11~6_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~12_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~20_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~28_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~36_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~44_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[1]~1_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~12_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~44_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Equal7~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~34_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~30_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~26_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~22_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~10\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux6~8_combout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux1~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux7~0_combout\ : std_logic;
SIGNAL \controle|ULAop[0]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux0~2_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~11_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~19_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~27_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~35_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~43_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[0]~0_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~11_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~43_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[0]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|cout~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux9~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux9~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux9~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux9~2_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~14_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~22_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~30_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~38_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~46_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[3]~3_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~14_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~46_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|output[3]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|cout~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~6_combout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux2~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \controle|prox_estado.s2~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s2~q\ : std_logic;
SIGNAL \controle|atual_estado.s3~q\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux10~10_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~13_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~21_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~29_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~37_q\ : std_logic;
SIGNAL \operavito|memoriadedados|memoria~45_combout\ : std_logic;
SIGNAL \operavito|muxescritanoBDR|output[2]~2_combout\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~13_q\ : std_logic;
SIGNAL \operavito|bancoReg|registrador~53_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|Mux5~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux7~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|Add6~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux8~4_combout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux3~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux1~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux4~0_combout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux4~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux5~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux1~1_combout\ : std_logic;
SIGNAL \controle|prox_estado.s9~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s9~q\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux6~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \controle|ULAop[1]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux4~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|Mux3~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|zero~combout\ : std_logic;
SIGNAL \operavito|habilitaPC~combout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \controle|prox_estado.s8~0_combout\ : std_logic;
SIGNAL \controle|atual_estado.s8~q\ : std_logic;
SIGNAL \operavito|muxPCfonte|Mux7~0_combout\ : std_logic;
SIGNAL \controle|WideOr4~combout\ : std_logic;
SIGNAL \controle|WideOr3~combout\ : std_logic;
SIGNAL \controle|WideOr2~combout\ : std_logic;
SIGNAL \operavito|regSaidaUla|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|regA|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|bancoReg|data_regA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|regPC|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memoriadedados|dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|bancoReg|data_regB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|regB|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|pSOMADOR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|regMDR|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|C\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G2|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~12_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[2]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_ULAfonteB[1]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[4]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemenor~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_ULAop[0]~3_combout\ : std_logic;
SIGNAL \controle|ALT_INV_ULAop[2]~2_combout\ : std_logic;
SIGNAL \controle|ALT_INV_ULAop[3]~1_combout\ : std_logic;
SIGNAL \controle|ALT_INV_ULAop[1]~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s1~q\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s0~q\ : std_logic;
SIGNAL \operavito|regMDR|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|regSaidaUla|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s7~q\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s3~q\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s5~q\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s6~q\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s4~q\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s2~q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_data_regB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|bancoReg|ALT_INV_data_regA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|memInstrucao|ALT_INV_output\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \operavito|regPC|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \controle|ALT_INV_atual_estado.s9~q\ : std_logic;
SIGNAL \controle|ALT_INV_atual_estado.s8~q\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux9~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ : std_logic;
SIGNAL \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~12_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~35_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~27_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~19_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~11_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \operavito|bancoReg|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[7]~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|ALT_INV_cin~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Add8~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[2]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cin~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[0]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[4]~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|ALT_INV_output\ : std_logic_vector(4 DOWNTO 2);
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \operavito|memInstrucao|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[2]~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~14_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_bool~combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_zero~combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~15_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux8~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~5_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~11_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux6~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~10_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~9_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~8_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~7_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~20_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~6_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \controle|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \operavito|UnLogArit|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~42_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~34_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~26_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~18_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~41_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~33_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~25_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~17_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~40_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~32_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~24_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~16_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~39_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~31_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~23_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~15_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~38_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~30_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~22_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~14_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~37_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~29_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~21_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~13_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~36_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~28_q\ : std_logic;
SIGNAL \operavito|memoriadedados|ALT_INV_memoria~20_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_clock~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
entrada_PC <= ww_entrada_PC;
saida_PC <= ww_saida_PC;
saida_MemInstr <= ww_saida_MemInstr;
saida_BdRA <= ww_saida_BdRA;
saida_BdRB <= ww_saida_BdRB;
saida_ExtensorSinal2p8 <= ww_saida_ExtensorSinal2p8;
saida_ExtensorSinal4p8 <= ww_saida_ExtensorSinal4p8;
saida_RegA <= ww_saida_RegA;
saida_RegB <= ww_saida_RegB;
saida_MUXfonteA <= ww_saida_MUXfonteA;
saida_MUXfonteB <= ww_saida_MUXfonteB;
saida_ULA <= ww_saida_ULA;
saida_RegULAout <= ww_saida_RegULAout;
saida_MemDados <= ww_saida_MemDados;
saida_MDR <= ww_saida_MDR;
saida_MUXbdRegin <= ww_saida_MUXbdRegin;
habilitaPC <= ww_habilitaPC;
zeroULA <= ww_zeroULA;
out_estado <= ww_out_estado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\operavito|regPC|output\(7) & \operavito|regPC|output\(6) & \operavito|regPC|output\(5) & \operavito|regPC|output\(4) & \operavito|regPC|output\(3) & 
\operavito|regPC|output\(2) & \operavito|regPC|output\(1) & \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\operavito|UnLogArit|ALT_INV_Mux11~6_combout\ <= NOT \operavito|UnLogArit|Mux11~6_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~5_combout\ <= NOT \operavito|UnLogArit|Mux11~5_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~4_combout\ <= NOT \operavito|UnLogArit|Mux11~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~3_combout\ <= NOT \operavito|UnLogArit|Mux11~3_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output\(1) <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|output\(1);
\operavito|UnLogArit|ALT_INV_Mux10~5_combout\ <= NOT \operavito|UnLogArit|Mux10~5_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~2_combout\ <= NOT \operavito|UnLogArit|Mux11~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~4_combout\ <= NOT \operavito|UnLogArit|Mux10~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~1_combout\ <= NOT \operavito|UnLogArit|Mux11~1_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~3_combout\ <= NOT \operavito|UnLogArit|Mux10~3_combout\;
\operavito|UnLogArit|ALT_INV_Mux11~0_combout\ <= NOT \operavito|UnLogArit|Mux11~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~2_combout\ <= NOT \operavito|UnLogArit|Mux10~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~1_combout\ <= NOT \operavito|UnLogArit|Mux10~1_combout\;
\operavito|UnLogArit|ALT_INV_Equal0~3_combout\ <= NOT \operavito|UnLogArit|Equal0~3_combout\;
\operavito|UnLogArit|ALT_INV_Equal0~2_combout\ <= NOT \operavito|UnLogArit|Equal0~2_combout\;
\operavito|UnLogArit|ALT_INV_Equal0~1_combout\ <= NOT \operavito|UnLogArit|Equal0~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux0~2_combout\ <= NOT \operavito|UnLogArit|Mux0~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux0~1_combout\ <= NOT \operavito|UnLogArit|Mux0~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux0~0_combout\ <= NOT \operavito|UnLogArit|Mux0~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~0_combout\ <= NOT \operavito|UnLogArit|Mux10~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~2_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[3]~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~12_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~11_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~10_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~9_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~8_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~7_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~6_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[2]~2_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~4_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~3_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~5_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~2_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\;
\operavito|UnLogArit|ALT_INV_Equal0~0_combout\ <= NOT \operavito|UnLogArit|Equal0~0_combout\;
\controle|ALT_INV_ULAfonteB[1]~0_combout\ <= NOT \controle|ULAfonteB[1]~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~3_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~2_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[4]~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemenor~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\;
\controle|ALT_INV_ULAop[0]~3_combout\ <= NOT \controle|ULAop[0]~3_combout\;
\controle|ALT_INV_ULAop[2]~2_combout\ <= NOT \controle|ULAop[2]~2_combout\;
\controle|ALT_INV_ULAop[3]~1_combout\ <= NOT \controle|ULAop[3]~1_combout\;
\controle|ALT_INV_ULAop[1]~0_combout\ <= NOT \controle|ULAop[1]~0_combout\;
\controle|ALT_INV_WideOr8~combout\ <= NOT \controle|WideOr8~combout\;
\controle|ALT_INV_WideOr4~0_combout\ <= NOT \controle|WideOr4~0_combout\;
\controle|ALT_INV_WideOr2~combout\ <= NOT \controle|WideOr2~combout\;
\controle|ALT_INV_WideOr3~combout\ <= NOT \controle|WideOr3~combout\;
\controle|ALT_INV_atual_estado.s1~q\ <= NOT \controle|atual_estado.s1~q\;
\controle|ALT_INV_WideOr4~combout\ <= NOT \controle|WideOr4~combout\;
\controle|ALT_INV_atual_estado.s0~q\ <= NOT \controle|atual_estado.s0~q\;
\operavito|regMDR|ALT_INV_output\(7) <= NOT \operavito|regMDR|output\(7);
\operavito|regMDR|ALT_INV_output\(6) <= NOT \operavito|regMDR|output\(6);
\operavito|regMDR|ALT_INV_output\(5) <= NOT \operavito|regMDR|output\(5);
\operavito|regMDR|ALT_INV_output\(4) <= NOT \operavito|regMDR|output\(4);
\operavito|regMDR|ALT_INV_output\(3) <= NOT \operavito|regMDR|output\(3);
\operavito|regMDR|ALT_INV_output\(2) <= NOT \operavito|regMDR|output\(2);
\operavito|regMDR|ALT_INV_output\(1) <= NOT \operavito|regMDR|output\(1);
\operavito|regMDR|ALT_INV_output\(0) <= NOT \operavito|regMDR|output\(0);
\operavito|regSaidaUla|ALT_INV_output\(7) <= NOT \operavito|regSaidaUla|output\(7);
\operavito|regSaidaUla|ALT_INV_output\(6) <= NOT \operavito|regSaidaUla|output\(6);
\operavito|regSaidaUla|ALT_INV_output\(5) <= NOT \operavito|regSaidaUla|output\(5);
\operavito|regSaidaUla|ALT_INV_output\(4) <= NOT \operavito|regSaidaUla|output\(4);
\operavito|regSaidaUla|ALT_INV_output\(3) <= NOT \operavito|regSaidaUla|output\(3);
\operavito|regSaidaUla|ALT_INV_output\(2) <= NOT \operavito|regSaidaUla|output\(2);
\operavito|regSaidaUla|ALT_INV_output\(1) <= NOT \operavito|regSaidaUla|output\(1);
\operavito|regSaidaUla|ALT_INV_output\(0) <= NOT \operavito|regSaidaUla|output\(0);
\operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux0~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux1~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux2~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux3~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux4~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux5~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux6~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\ <= NOT \operavito|muxBEntradaULA|Mux7~0_combout\;
\controle|ALT_INV_WideOr7~combout\ <= NOT \controle|WideOr7~combout\;
\controle|ALT_INV_atual_estado.s7~q\ <= NOT \controle|atual_estado.s7~q\;
\controle|ALT_INV_atual_estado.s3~q\ <= NOT \controle|atual_estado.s3~q\;
\controle|ALT_INV_atual_estado.s5~q\ <= NOT \controle|atual_estado.s5~q\;
\operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\ <= NOT \operavito|muxAEntradaULA|output[7]~7_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\ <= NOT \operavito|muxAEntradaULA|output[6]~6_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\ <= NOT \operavito|muxAEntradaULA|output[5]~5_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\ <= NOT \operavito|muxAEntradaULA|output[4]~4_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\ <= NOT \operavito|muxAEntradaULA|output[3]~3_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\ <= NOT \operavito|muxAEntradaULA|output[2]~2_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\ <= NOT \operavito|muxAEntradaULA|output[1]~1_combout\;
\operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\ <= NOT \operavito|muxAEntradaULA|output[0]~0_combout\;
\controle|ALT_INV_atual_estado.s6~q\ <= NOT \controle|atual_estado.s6~q\;
\controle|ALT_INV_atual_estado.s4~q\ <= NOT \controle|atual_estado.s4~q\;
\controle|ALT_INV_atual_estado.s2~q\ <= NOT \controle|atual_estado.s2~q\;
\operavito|bancoReg|ALT_INV_data_regB\(7) <= NOT \operavito|bancoReg|data_regB\(7);
\operavito|bancoReg|ALT_INV_data_regB\(6) <= NOT \operavito|bancoReg|data_regB\(6);
\operavito|bancoReg|ALT_INV_data_regB\(5) <= NOT \operavito|bancoReg|data_regB\(5);
\operavito|bancoReg|ALT_INV_data_regB\(4) <= NOT \operavito|bancoReg|data_regB\(4);
\operavito|bancoReg|ALT_INV_data_regB\(3) <= NOT \operavito|bancoReg|data_regB\(3);
\operavito|bancoReg|ALT_INV_data_regB\(2) <= NOT \operavito|bancoReg|data_regB\(2);
\operavito|bancoReg|ALT_INV_data_regB\(1) <= NOT \operavito|bancoReg|data_regB\(1);
\operavito|bancoReg|ALT_INV_data_regB\(0) <= NOT \operavito|bancoReg|data_regB\(0);
\operavito|bancoReg|ALT_INV_data_regA\(7) <= NOT \operavito|bancoReg|data_regA\(7);
\operavito|bancoReg|ALT_INV_data_regA\(6) <= NOT \operavito|bancoReg|data_regA\(6);
\operavito|bancoReg|ALT_INV_data_regA\(5) <= NOT \operavito|bancoReg|data_regA\(5);
\operavito|bancoReg|ALT_INV_data_regA\(4) <= NOT \operavito|bancoReg|data_regA\(4);
\operavito|bancoReg|ALT_INV_data_regA\(3) <= NOT \operavito|bancoReg|data_regA\(3);
\operavito|bancoReg|ALT_INV_data_regA\(2) <= NOT \operavito|bancoReg|data_regA\(2);
\operavito|bancoReg|ALT_INV_data_regA\(1) <= NOT \operavito|bancoReg|data_regA\(1);
\operavito|bancoReg|ALT_INV_data_regA\(0) <= NOT \operavito|bancoReg|data_regA\(0);
\operavito|memInstrucao|ALT_INV_output\(6) <= NOT \operavito|memInstrucao|output\(6);
\operavito|regPC|ALT_INV_output\(7) <= NOT \operavito|regPC|output\(7);
\operavito|regPC|ALT_INV_output\(6) <= NOT \operavito|regPC|output\(6);
\operavito|regPC|ALT_INV_output\(5) <= NOT \operavito|regPC|output\(5);
\operavito|regPC|ALT_INV_output\(4) <= NOT \operavito|regPC|output\(4);
\operavito|regPC|ALT_INV_output\(3) <= NOT \operavito|regPC|output\(3);
\operavito|regPC|ALT_INV_output\(2) <= NOT \operavito|regPC|output\(2);
\operavito|regPC|ALT_INV_output\(1) <= NOT \operavito|regPC|output\(1);
\operavito|regPC|ALT_INV_output\(0) <= NOT \operavito|regPC|output\(0);
\operavito|memInstrucao|ALT_INV_output\(3) <= NOT \operavito|memInstrucao|output\(3);
\controle|ALT_INV_atual_estado.s9~q\ <= NOT \controle|atual_estado.s9~q\;
\controle|ALT_INV_atual_estado.s8~q\ <= NOT \controle|atual_estado.s8~q\;
\operavito|UnLogArit|ALT_INV_Mux12~0_combout\ <= NOT \operavito|UnLogArit|Mux12~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux9~6_combout\ <= NOT \operavito|UnLogArit|Mux9~6_combout\;
\operavito|UnLogArit|ALT_INV_Mux9~2_combout\ <= NOT \operavito|UnLogArit|Mux9~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~10_combout\ <= NOT \operavito|UnLogArit|Mux7~10_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~6_combout\ <= NOT \operavito|UnLogArit|Mux7~6_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~13_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~9_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add6~9_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~13_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~9_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~13_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~5_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add6~5_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~9_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~5_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~1_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~5_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~1_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~1_sumout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\;
\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\;
\operavito|memoriadedados|ALT_INV_memoria~12_q\ <= NOT \operavito|memoriadedados|memoria~12_q\;
\operavito|memoriadedados|ALT_INV_memoria~35_q\ <= NOT \operavito|memoriadedados|memoria~35_q\;
\operavito|memoriadedados|ALT_INV_memoria~27_q\ <= NOT \operavito|memoriadedados|memoria~27_q\;
\operavito|memoriadedados|ALT_INV_memoria~19_q\ <= NOT \operavito|memoriadedados|memoria~19_q\;
\operavito|memoriadedados|ALT_INV_memoria~11_q\ <= NOT \operavito|memoriadedados|memoria~11_q\;
\operavito|bancoReg|ALT_INV_registrador~42_q\ <= NOT \operavito|bancoReg|registrador~42_q\;
\operavito|bancoReg|ALT_INV_registrador~34_q\ <= NOT \operavito|bancoReg|registrador~34_q\;
\operavito|bancoReg|ALT_INV_registrador~26_q\ <= NOT \operavito|bancoReg|registrador~26_q\;
\operavito|bancoReg|ALT_INV_registrador~18_q\ <= NOT \operavito|bancoReg|registrador~18_q\;
\operavito|bancoReg|ALT_INV_registrador~41_q\ <= NOT \operavito|bancoReg|registrador~41_q\;
\operavito|bancoReg|ALT_INV_registrador~33_q\ <= NOT \operavito|bancoReg|registrador~33_q\;
\operavito|bancoReg|ALT_INV_registrador~25_q\ <= NOT \operavito|bancoReg|registrador~25_q\;
\operavito|bancoReg|ALT_INV_registrador~17_q\ <= NOT \operavito|bancoReg|registrador~17_q\;
\operavito|bancoReg|ALT_INV_registrador~40_q\ <= NOT \operavito|bancoReg|registrador~40_q\;
\operavito|bancoReg|ALT_INV_registrador~32_q\ <= NOT \operavito|bancoReg|registrador~32_q\;
\operavito|bancoReg|ALT_INV_registrador~24_q\ <= NOT \operavito|bancoReg|registrador~24_q\;
\operavito|bancoReg|ALT_INV_registrador~16_q\ <= NOT \operavito|bancoReg|registrador~16_q\;
\operavito|bancoReg|ALT_INV_registrador~39_q\ <= NOT \operavito|bancoReg|registrador~39_q\;
\operavito|bancoReg|ALT_INV_registrador~31_q\ <= NOT \operavito|bancoReg|registrador~31_q\;
\operavito|bancoReg|ALT_INV_registrador~23_q\ <= NOT \operavito|bancoReg|registrador~23_q\;
\operavito|bancoReg|ALT_INV_registrador~15_q\ <= NOT \operavito|bancoReg|registrador~15_q\;
\operavito|bancoReg|ALT_INV_registrador~38_q\ <= NOT \operavito|bancoReg|registrador~38_q\;
\operavito|bancoReg|ALT_INV_registrador~30_q\ <= NOT \operavito|bancoReg|registrador~30_q\;
\operavito|bancoReg|ALT_INV_registrador~22_q\ <= NOT \operavito|bancoReg|registrador~22_q\;
\operavito|bancoReg|ALT_INV_registrador~14_q\ <= NOT \operavito|bancoReg|registrador~14_q\;
\operavito|bancoReg|ALT_INV_registrador~37_q\ <= NOT \operavito|bancoReg|registrador~37_q\;
\operavito|bancoReg|ALT_INV_registrador~29_q\ <= NOT \operavito|bancoReg|registrador~29_q\;
\operavito|bancoReg|ALT_INV_registrador~21_q\ <= NOT \operavito|bancoReg|registrador~21_q\;
\operavito|bancoReg|ALT_INV_registrador~13_q\ <= NOT \operavito|bancoReg|registrador~13_q\;
\operavito|bancoReg|ALT_INV_registrador~36_q\ <= NOT \operavito|bancoReg|registrador~36_q\;
\operavito|bancoReg|ALT_INV_registrador~28_q\ <= NOT \operavito|bancoReg|registrador~28_q\;
\operavito|bancoReg|ALT_INV_registrador~20_q\ <= NOT \operavito|bancoReg|registrador~20_q\;
\operavito|bancoReg|ALT_INV_registrador~12_q\ <= NOT \operavito|bancoReg|registrador~12_q\;
\operavito|bancoReg|ALT_INV_registrador~35_q\ <= NOT \operavito|bancoReg|registrador~35_q\;
\operavito|bancoReg|ALT_INV_registrador~27_q\ <= NOT \operavito|bancoReg|registrador~27_q\;
\operavito|bancoReg|ALT_INV_registrador~19_q\ <= NOT \operavito|bancoReg|registrador~19_q\;
\operavito|bancoReg|ALT_INV_registrador~11_q\ <= NOT \operavito|bancoReg|registrador~11_q\;
\operavito|UnLogArit|ALT_INV_Mux5~1_combout\ <= NOT \operavito|UnLogArit|Mux5~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux5~0_combout\ <= NOT \operavito|UnLogArit|Mux5~0_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output\(7) <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|output\(7);
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[7]~2_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\;
\operavito|UnLogArit|pSOMADOR|ALT_INV_cin~0_combout\ <= NOT \operavito|UnLogArit|pSOMADOR|cin~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Add8~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[2]~1_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~8_combout\ <= NOT \operavito|UnLogArit|Mux6~8_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~7_combout\ <= NOT \operavito|UnLogArit|Mux6~7_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~6_combout\ <= NOT \operavito|UnLogArit|Mux6~6_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~5_combout\ <= NOT \operavito|UnLogArit|Mux6~5_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~4_combout\ <= NOT \operavito|UnLogArit|Mux6~4_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cin~0_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~4_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~3_combout\ <= NOT \operavito|UnLogArit|Mux6~3_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~3_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~2_combout\ <= NOT \operavito|UnLogArit|Mux6~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~1_combout\ <= NOT \operavito|UnLogArit|Mux6~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~0_combout\ <= NOT \operavito|UnLogArit|Mux6~0_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[0]~0_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\;
\operavito|UnLogArit|pSOMADOR|ALT_INV_cout~1_combout\ <= NOT \operavito|UnLogArit|pSOMADOR|cout~1_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~2_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\;
\operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(5) <= NOT \operavito|UnLogArit|pSUBTRADOR|G2|output\(5);
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~5_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~4_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~4_combout\ <= NOT \operavito|UnLogArit|Mux8~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~3_combout\ <= NOT \operavito|UnLogArit|Mux8~3_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~2_combout\ <= NOT \operavito|UnLogArit|Mux8~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~1_combout\ <= NOT \operavito|UnLogArit|Mux8~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~0_combout\ <= NOT \operavito|UnLogArit|Mux8~0_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[4]~1_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\;
\operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\;
\operavito|UnLogArit|pSOMADOR|ALT_INV_output\(4) <= NOT \operavito|UnLogArit|pSOMADOR|output\(4);
\operavito|UnLogArit|ALT_INV_Mux7~3_combout\ <= NOT \operavito|UnLogArit|Mux7~3_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~11_combout\ <= NOT \operavito|UnLogArit|Mux10~11_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~3_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\;
\operavito|UnLogArit|pSOMADOR|ALT_INV_cout~0_combout\ <= NOT \operavito|UnLogArit|pSOMADOR|cout~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux9~0_combout\ <= NOT \operavito|UnLogArit|Mux9~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~2_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~1_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~1_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\;
\operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(3) <= NOT \operavito|UnLogArit|pSUBTRADOR|G2|output\(3);
\operavito|UnLogArit|ALT_INV_Mux7~2_combout\ <= NOT \operavito|UnLogArit|Mux7~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~1_combout\ <= NOT \operavito|UnLogArit|Mux7~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~0_combout\ <= NOT \operavito|UnLogArit|Mux7~0_combout\;
\operavito|memInstrucao|ALT_INV_Mux1~0_combout\ <= NOT \operavito|memInstrucao|Mux1~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~10_combout\ <= NOT \operavito|UnLogArit|Mux10~10_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~9_combout\ <= NOT \operavito|UnLogArit|Mux10~9_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~8_combout\ <= NOT \operavito|UnLogArit|Mux10~8_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~0_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~0_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\;
\operavito|UnLogArit|pSOMADOR|ALT_INV_output\(2) <= NOT \operavito|UnLogArit|pSOMADOR|output\(2);
\operavito|UnLogArit|ALT_INV_Mux10~7_combout\ <= NOT \operavito|UnLogArit|Mux10~7_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[2]~0_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0_combout\;
\operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~0_combout\ <= NOT \operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux6~1_combout\ <= NOT \operavito|muxBEntradaULA|Mux6~1_combout\;
\operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\ <= NOT \operavito|muxBEntradaULA|Mux7~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux10~6_combout\ <= NOT \operavito|UnLogArit|Mux10~6_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~3_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~2_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\;
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C\(1) <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1);
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~14_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\;
\operavito|UnLogArit|ALT_INV_bool~combout\ <= NOT \operavito|UnLogArit|bool~combout\;
\operavito|UnLogArit|ALT_INV_zero~combout\ <= NOT \operavito|UnLogArit|zero~combout\;
\operavito|UnLogArit|ALT_INV_output\(7) <= NOT \operavito|UnLogArit|output\(7);
\operavito|UnLogArit|ALT_INV_output\(6) <= NOT \operavito|UnLogArit|output\(6);
\operavito|UnLogArit|ALT_INV_output\(5) <= NOT \operavito|UnLogArit|output\(5);
\operavito|UnLogArit|ALT_INV_output\(4) <= NOT \operavito|UnLogArit|output\(4);
\operavito|UnLogArit|ALT_INV_output\(3) <= NOT \operavito|UnLogArit|output\(3);
\operavito|UnLogArit|ALT_INV_output\(2) <= NOT \operavito|UnLogArit|output\(2);
\operavito|UnLogArit|ALT_INV_output\(1) <= NOT \operavito|UnLogArit|output\(1);
\operavito|UnLogArit|ALT_INV_output\(0) <= NOT \operavito|UnLogArit|output\(0);
\operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~15_combout\ <= NOT \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~8_combout\ <= NOT \operavito|UnLogArit|Mux8~8_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~7_combout\ <= NOT \operavito|UnLogArit|Mux8~7_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~6_combout\ <= NOT \operavito|UnLogArit|Mux8~6_combout\;
\operavito|UnLogArit|ALT_INV_Mux8~5_combout\ <= NOT \operavito|UnLogArit|Mux8~5_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~5_combout\ <= NOT \operavito|UnLogArit|Mux7~5_combout\;
\operavito|UnLogArit|ALT_INV_Mux7~4_combout\ <= NOT \operavito|UnLogArit|Mux7~4_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~1_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\;
\operavito|UnLogArit|ALT_INV_Mux5~4_combout\ <= NOT \operavito|UnLogArit|Mux5~4_combout\;
\operavito|UnLogArit|ALT_INV_Mux5~3_combout\ <= NOT \operavito|UnLogArit|Mux5~3_combout\;
\operavito|UnLogArit|ALT_INV_Mux5~2_combout\ <= NOT \operavito|UnLogArit|Mux5~2_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~11_combout\ <= NOT \operavito|UnLogArit|Mux6~11_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~10_combout\ <= NOT \operavito|UnLogArit|Mux6~10_combout\;
\operavito|UnLogArit|ALT_INV_Mux6~9_combout\ <= NOT \operavito|UnLogArit|Mux6~9_combout\;
\operavito|UnLogArit|ALT_INV_Mux9~1_combout\ <= NOT \operavito|UnLogArit|Mux9~1_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~10_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~9_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal7~0_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Equal7~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal4~0_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Equal4~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~8_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~0_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~7_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~20_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\;
\operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~6_combout\ <= NOT \operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\;
\operavito|UnLogArit|ALT_INV_Mux1~0_combout\ <= NOT \operavito|UnLogArit|Mux1~0_combout\;
\controle|ALT_INV_Selector0~0_combout\ <= NOT \controle|Selector0~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux3~0_combout\ <= NOT \operavito|UnLogArit|Mux3~0_combout\;
\operavito|UnLogArit|ALT_INV_Mux4~0_combout\ <= NOT \operavito|UnLogArit|Mux4~0_combout\;
\operavito|memoriadedados|ALT_INV_memoria~42_q\ <= NOT \operavito|memoriadedados|memoria~42_q\;
\operavito|memoriadedados|ALT_INV_memoria~34_q\ <= NOT \operavito|memoriadedados|memoria~34_q\;
\operavito|memoriadedados|ALT_INV_memoria~26_q\ <= NOT \operavito|memoriadedados|memoria~26_q\;
\operavito|memoriadedados|ALT_INV_memoria~18_q\ <= NOT \operavito|memoriadedados|memoria~18_q\;
\operavito|memoriadedados|ALT_INV_memoria~41_q\ <= NOT \operavito|memoriadedados|memoria~41_q\;
\operavito|memoriadedados|ALT_INV_memoria~33_q\ <= NOT \operavito|memoriadedados|memoria~33_q\;
\operavito|memoriadedados|ALT_INV_memoria~25_q\ <= NOT \operavito|memoriadedados|memoria~25_q\;
\operavito|memoriadedados|ALT_INV_memoria~17_q\ <= NOT \operavito|memoriadedados|memoria~17_q\;
\operavito|memoriadedados|ALT_INV_memoria~40_q\ <= NOT \operavito|memoriadedados|memoria~40_q\;
\operavito|memoriadedados|ALT_INV_memoria~32_q\ <= NOT \operavito|memoriadedados|memoria~32_q\;
\operavito|memoriadedados|ALT_INV_memoria~24_q\ <= NOT \operavito|memoriadedados|memoria~24_q\;
\operavito|memoriadedados|ALT_INV_memoria~16_q\ <= NOT \operavito|memoriadedados|memoria~16_q\;
\operavito|memoriadedados|ALT_INV_memoria~39_q\ <= NOT \operavito|memoriadedados|memoria~39_q\;
\operavito|memoriadedados|ALT_INV_memoria~31_q\ <= NOT \operavito|memoriadedados|memoria~31_q\;
\operavito|memoriadedados|ALT_INV_memoria~23_q\ <= NOT \operavito|memoriadedados|memoria~23_q\;
\operavito|memoriadedados|ALT_INV_memoria~15_q\ <= NOT \operavito|memoriadedados|memoria~15_q\;
\operavito|memoriadedados|ALT_INV_memoria~38_q\ <= NOT \operavito|memoriadedados|memoria~38_q\;
\operavito|memoriadedados|ALT_INV_memoria~30_q\ <= NOT \operavito|memoriadedados|memoria~30_q\;
\operavito|memoriadedados|ALT_INV_memoria~22_q\ <= NOT \operavito|memoriadedados|memoria~22_q\;
\operavito|memoriadedados|ALT_INV_memoria~14_q\ <= NOT \operavito|memoriadedados|memoria~14_q\;
\operavito|memoriadedados|ALT_INV_memoria~37_q\ <= NOT \operavito|memoriadedados|memoria~37_q\;
\operavito|memoriadedados|ALT_INV_memoria~29_q\ <= NOT \operavito|memoriadedados|memoria~29_q\;
\operavito|memoriadedados|ALT_INV_memoria~21_q\ <= NOT \operavito|memoriadedados|memoria~21_q\;
\operavito|memoriadedados|ALT_INV_memoria~13_q\ <= NOT \operavito|memoriadedados|memoria~13_q\;
\operavito|memoriadedados|ALT_INV_memoria~36_q\ <= NOT \operavito|memoriadedados|memoria~36_q\;
\operavito|memoriadedados|ALT_INV_memoria~28_q\ <= NOT \operavito|memoriadedados|memoria~28_q\;
\operavito|memoriadedados|ALT_INV_memoria~20_q\ <= NOT \operavito|memoriadedados|memoria~20_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_clock~input_o\ <= NOT \clock~input_o\;

\entrada_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[0]~output_o\);

\entrada_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[1]~output_o\);

\entrada_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[2]~output_o\);

\entrada_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[3]~output_o\);

\entrada_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[4]~output_o\);

\entrada_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[5]~output_o\);

\entrada_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[6]~output_o\);

\entrada_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxPCfonte|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \entrada_PC[7]~output_o\);

\saida_PC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(0),
	devoe => ww_devoe,
	o => \saida_PC[0]~output_o\);

\saida_PC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(1),
	devoe => ww_devoe,
	o => \saida_PC[1]~output_o\);

\saida_PC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(2),
	devoe => ww_devoe,
	o => \saida_PC[2]~output_o\);

\saida_PC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(3),
	devoe => ww_devoe,
	o => \saida_PC[3]~output_o\);

\saida_PC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(4),
	devoe => ww_devoe,
	o => \saida_PC[4]~output_o\);

\saida_PC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(5),
	devoe => ww_devoe,
	o => \saida_PC[5]~output_o\);

\saida_PC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(6),
	devoe => ww_devoe,
	o => \saida_PC[6]~output_o\);

\saida_PC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regPC|output\(7),
	devoe => ww_devoe,
	o => \saida_PC[7]~output_o\);

\saida_MemInstr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[0]~output_o\);

\saida_MemInstr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[1]~output_o\);

\saida_MemInstr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[2]~output_o\);

\saida_MemInstr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|output\(3),
	devoe => ww_devoe,
	o => \saida_MemInstr[3]~output_o\);

\saida_MemInstr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[4]~output_o\);

\saida_MemInstr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[5]~output_o\);

\saida_MemInstr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|output\(6),
	devoe => ww_devoe,
	o => \saida_MemInstr[6]~output_o\);

\saida_MemInstr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\,
	devoe => ww_devoe,
	o => \saida_MemInstr[7]~output_o\);

\saida_BdRA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(0),
	devoe => ww_devoe,
	o => \saida_BdRA[0]~output_o\);

\saida_BdRA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(1),
	devoe => ww_devoe,
	o => \saida_BdRA[1]~output_o\);

\saida_BdRA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(2),
	devoe => ww_devoe,
	o => \saida_BdRA[2]~output_o\);

\saida_BdRA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(3),
	devoe => ww_devoe,
	o => \saida_BdRA[3]~output_o\);

\saida_BdRA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(4),
	devoe => ww_devoe,
	o => \saida_BdRA[4]~output_o\);

\saida_BdRA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(5),
	devoe => ww_devoe,
	o => \saida_BdRA[5]~output_o\);

\saida_BdRA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(6),
	devoe => ww_devoe,
	o => \saida_BdRA[6]~output_o\);

\saida_BdRA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regA\(7),
	devoe => ww_devoe,
	o => \saida_BdRA[7]~output_o\);

\saida_BdRB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(0),
	devoe => ww_devoe,
	o => \saida_BdRB[0]~output_o\);

\saida_BdRB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(1),
	devoe => ww_devoe,
	o => \saida_BdRB[1]~output_o\);

\saida_BdRB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(2),
	devoe => ww_devoe,
	o => \saida_BdRB[2]~output_o\);

\saida_BdRB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(3),
	devoe => ww_devoe,
	o => \saida_BdRB[3]~output_o\);

\saida_BdRB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(4),
	devoe => ww_devoe,
	o => \saida_BdRB[4]~output_o\);

\saida_BdRB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(5),
	devoe => ww_devoe,
	o => \saida_BdRB[5]~output_o\);

\saida_BdRB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(6),
	devoe => ww_devoe,
	o => \saida_BdRB[6]~output_o\);

\saida_BdRB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|bancoReg|data_regB\(7),
	devoe => ww_devoe,
	o => \saida_BdRB[7]~output_o\);

\saida_ExtensorSinal2p8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[0]~output_o\);

\saida_ExtensorSinal2p8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[1]~output_o\);

\saida_ExtensorSinal2p8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[2]~output_o\);

\saida_ExtensorSinal2p8[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[3]~output_o\);

\saida_ExtensorSinal2p8[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[4]~output_o\);

\saida_ExtensorSinal2p8[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[5]~output_o\);

\saida_ExtensorSinal2p8[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[6]~output_o\);

\saida_ExtensorSinal2p8[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal2p8[7]~output_o\);

\saida_ExtensorSinal4p8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[0]~output_o\);

\saida_ExtensorSinal4p8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[1]~output_o\);

\saida_ExtensorSinal4p8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[2]~output_o\);

\saida_ExtensorSinal4p8[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memInstrucao|output\(3),
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[3]~output_o\);

\saida_ExtensorSinal4p8[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[4]~output_o\);

\saida_ExtensorSinal4p8[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[5]~output_o\);

\saida_ExtensorSinal4p8[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[6]~output_o\);

\saida_ExtensorSinal4p8[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida_ExtensorSinal4p8[7]~output_o\);

\saida_RegA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(0),
	devoe => ww_devoe,
	o => \saida_RegA[0]~output_o\);

\saida_RegA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(1),
	devoe => ww_devoe,
	o => \saida_RegA[1]~output_o\);

\saida_RegA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(2),
	devoe => ww_devoe,
	o => \saida_RegA[2]~output_o\);

\saida_RegA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(3),
	devoe => ww_devoe,
	o => \saida_RegA[3]~output_o\);

\saida_RegA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(4),
	devoe => ww_devoe,
	o => \saida_RegA[4]~output_o\);

\saida_RegA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(5),
	devoe => ww_devoe,
	o => \saida_RegA[5]~output_o\);

\saida_RegA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(6),
	devoe => ww_devoe,
	o => \saida_RegA[6]~output_o\);

\saida_RegA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regA|output\(7),
	devoe => ww_devoe,
	o => \saida_RegA[7]~output_o\);

\saida_RegB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(0),
	devoe => ww_devoe,
	o => \saida_RegB[0]~output_o\);

\saida_RegB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(1),
	devoe => ww_devoe,
	o => \saida_RegB[1]~output_o\);

\saida_RegB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(2),
	devoe => ww_devoe,
	o => \saida_RegB[2]~output_o\);

\saida_RegB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(3),
	devoe => ww_devoe,
	o => \saida_RegB[3]~output_o\);

\saida_RegB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(4),
	devoe => ww_devoe,
	o => \saida_RegB[4]~output_o\);

\saida_RegB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(5),
	devoe => ww_devoe,
	o => \saida_RegB[5]~output_o\);

\saida_RegB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(6),
	devoe => ww_devoe,
	o => \saida_RegB[6]~output_o\);

\saida_RegB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regB|output\(7),
	devoe => ww_devoe,
	o => \saida_RegB[7]~output_o\);

\saida_MUXfonteA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[0]~output_o\);

\saida_MUXfonteA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[1]~output_o\);

\saida_MUXfonteA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[2]~output_o\);

\saida_MUXfonteA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[3]~output_o\);

\saida_MUXfonteA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[4]~output_o\);

\saida_MUXfonteA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[5]~output_o\);

\saida_MUXfonteA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[6]~output_o\);

\saida_MUXfonteA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxAEntradaULA|output[7]~7_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteA[7]~output_o\);

\saida_MUXfonteB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[0]~output_o\);

\saida_MUXfonteB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[1]~output_o\);

\saida_MUXfonteB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[2]~output_o\);

\saida_MUXfonteB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[3]~output_o\);

\saida_MUXfonteB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[4]~output_o\);

\saida_MUXfonteB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[5]~output_o\);

\saida_MUXfonteB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[6]~output_o\);

\saida_MUXfonteB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxBEntradaULA|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXfonteB[7]~output_o\);

\saida_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(0),
	devoe => ww_devoe,
	o => \saida_ULA[0]~output_o\);

\saida_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(1),
	devoe => ww_devoe,
	o => \saida_ULA[1]~output_o\);

\saida_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(2),
	devoe => ww_devoe,
	o => \saida_ULA[2]~output_o\);

\saida_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(3),
	devoe => ww_devoe,
	o => \saida_ULA[3]~output_o\);

\saida_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(4),
	devoe => ww_devoe,
	o => \saida_ULA[4]~output_o\);

\saida_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(5),
	devoe => ww_devoe,
	o => \saida_ULA[5]~output_o\);

\saida_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(6),
	devoe => ww_devoe,
	o => \saida_ULA[6]~output_o\);

\saida_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|output\(7),
	devoe => ww_devoe,
	o => \saida_ULA[7]~output_o\);

\saida_RegULAout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(0),
	devoe => ww_devoe,
	o => \saida_RegULAout[0]~output_o\);

\saida_RegULAout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(1),
	devoe => ww_devoe,
	o => \saida_RegULAout[1]~output_o\);

\saida_RegULAout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(2),
	devoe => ww_devoe,
	o => \saida_RegULAout[2]~output_o\);

\saida_RegULAout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(3),
	devoe => ww_devoe,
	o => \saida_RegULAout[3]~output_o\);

\saida_RegULAout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(4),
	devoe => ww_devoe,
	o => \saida_RegULAout[4]~output_o\);

\saida_RegULAout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(5),
	devoe => ww_devoe,
	o => \saida_RegULAout[5]~output_o\);

\saida_RegULAout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(6),
	devoe => ww_devoe,
	o => \saida_RegULAout[6]~output_o\);

\saida_RegULAout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regSaidaUla|output\(7),
	devoe => ww_devoe,
	o => \saida_RegULAout[7]~output_o\);

\saida_MemDados[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(0),
	devoe => ww_devoe,
	o => \saida_MemDados[0]~output_o\);

\saida_MemDados[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(1),
	devoe => ww_devoe,
	o => \saida_MemDados[1]~output_o\);

\saida_MemDados[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(2),
	devoe => ww_devoe,
	o => \saida_MemDados[2]~output_o\);

\saida_MemDados[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(3),
	devoe => ww_devoe,
	o => \saida_MemDados[3]~output_o\);

\saida_MemDados[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(4),
	devoe => ww_devoe,
	o => \saida_MemDados[4]~output_o\);

\saida_MemDados[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(5),
	devoe => ww_devoe,
	o => \saida_MemDados[5]~output_o\);

\saida_MemDados[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(6),
	devoe => ww_devoe,
	o => \saida_MemDados[6]~output_o\);

\saida_MemDados[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|memoriadedados|dataout\(7),
	devoe => ww_devoe,
	o => \saida_MemDados[7]~output_o\);

\saida_MDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(0),
	devoe => ww_devoe,
	o => \saida_MDR[0]~output_o\);

\saida_MDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(1),
	devoe => ww_devoe,
	o => \saida_MDR[1]~output_o\);

\saida_MDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(2),
	devoe => ww_devoe,
	o => \saida_MDR[2]~output_o\);

\saida_MDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(3),
	devoe => ww_devoe,
	o => \saida_MDR[3]~output_o\);

\saida_MDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(4),
	devoe => ww_devoe,
	o => \saida_MDR[4]~output_o\);

\saida_MDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(5),
	devoe => ww_devoe,
	o => \saida_MDR[5]~output_o\);

\saida_MDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(6),
	devoe => ww_devoe,
	o => \saida_MDR[6]~output_o\);

\saida_MDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|regMDR|output\(7),
	devoe => ww_devoe,
	o => \saida_MDR[7]~output_o\);

\saida_MUXbdRegin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[0]~output_o\);

\saida_MUXbdRegin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[1]~output_o\);

\saida_MUXbdRegin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[2]~output_o\);

\saida_MUXbdRegin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[3]~output_o\);

\saida_MUXbdRegin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[4]~output_o\);

\saida_MUXbdRegin[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[5]~output_o\);

\saida_MUXbdRegin[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[6]~output_o\);

\saida_MUXbdRegin[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|muxescritanoBDR|output[7]~7_combout\,
	devoe => ww_devoe,
	o => \saida_MUXbdRegin[7]~output_o\);

\habilitaPC~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|habilitaPC~combout\,
	devoe => ww_devoe,
	o => \habilitaPC~output_o\);

\zeroULA~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \operavito|UnLogArit|zero~combout\,
	devoe => ww_devoe,
	o => \zeroULA~output_o\);

\out_estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controle|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \out_estado[0]~output_o\);

\out_estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controle|ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \out_estado[1]~output_o\);

\out_estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controle|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \out_estado[2]~output_o\);

\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\controle|prox_estado.s6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s6~0_combout\ = ( \controle|atual_estado.s1~q\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\) # ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & 
-- ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\operavito|memInstrucao|output\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111100100000000000000000001111111111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|prox_estado.s6~0_combout\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\controle|atual_estado.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s6~q\);

\controle|atual_estado.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|atual_estado.s4~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s5~q\);

\controle|prox_estado.s7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s7~0_combout\ = (\controle|atual_estado.s6~q\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\) # ((!\operavito|memInstrucao|output\(6)) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(6),
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \controle|prox_estado.s7~0_combout\);

\controle|atual_estado.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s7~q\);

\controle|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Selector0~0_combout\ = ( !\controle|atual_estado.s7~q\ & ( (!\controle|atual_estado.s8~q\ & (!\controle|atual_estado.s9~q\ & (!\controle|atual_estado.s5~q\ & !\controle|atual_estado.s3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	datad => \controle|ALT_INV_atual_estado.s3~q\,
	datae => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \controle|Selector0~0_combout\);

\controle|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|Selector0~1_combout\ = ( \controle|Selector0~0_combout\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\) # ((!\operavito|memInstrucao|output\(6)) # ((!\controle|atual_estado.s6~q\) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111110111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(6),
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	datae => \controle|ALT_INV_Selector0~0_combout\,
	combout => \controle|Selector0~1_combout\);

\controle|atual_estado.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s0~q\);

\controle|atual_estado.s1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|atual_estado.s1~0_combout\ = !\controle|atual_estado.s0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s0~q\,
	combout => \controle|atual_estado.s1~0_combout\);

\controle|atual_estado.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|atual_estado.s1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s1~q\);

\controle|prox_estado.s4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s4~0_combout\ = ( \controle|atual_estado.s1~q\ & ( (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & 
-- (!\operavito|memInstrucao|output\(6) & \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|prox_estado.s4~0_combout\);

\controle|atual_estado.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s4~q\);

\controle|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr4~0_combout\ = (!\controle|atual_estado.s2~q\ & (!\controle|atual_estado.s4~q\ & !\controle|atual_estado.s6~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s2~q\,
	datab => \controle|ALT_INV_atual_estado.s4~q\,
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \controle|WideOr4~0_combout\);

\controle|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr8~combout\ = (!\controle|WideOr4~0_combout\) # (\controle|atual_estado.s8~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_WideOr4~0_combout\,
	combout => \controle|WideOr8~combout\);

\controle|ULAop[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|ULAop[3]~1_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ & \controle|WideOr8~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datab => \controle|ALT_INV_WideOr8~combout\,
	combout => \controle|ULAop[3]~1_combout\);

\operavito|bancoReg|registrador~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~60_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & (!\operavito|memInstrucao|output\(3) & ((\controle|atual_estado.s7~q\) # (\controle|atual_estado.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(3),
	datac => \controle|ALT_INV_atual_estado.s3~q\,
	datad => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \operavito|bancoReg|registrador~60_combout\);

\operavito|bancoReg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[2]~2_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~21_q\);

\operavito|bancoReg|registrador~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~61_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & (\operavito|memInstrucao|output\(3) & ((\controle|atual_estado.s7~q\) # (\controle|atual_estado.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(3),
	datac => \controle|ALT_INV_atual_estado.s3~q\,
	datad => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \operavito|bancoReg|registrador~61_combout\);

\operavito|bancoReg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[2]~2_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~29_q\);

\operavito|bancoReg|registrador~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~62_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & (\operavito|memInstrucao|output\(3) & ((\controle|atual_estado.s7~q\) # (\controle|atual_estado.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(3),
	datac => \controle|ALT_INV_atual_estado.s3~q\,
	datad => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \operavito|bancoReg|registrador~62_combout\);

\operavito|bancoReg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[2]~2_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~37_q\);

\operavito|bancoReg|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~45_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~37_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~29_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~21_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~13_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~21_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~29_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~37_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~45_combout\);

\controle|regEscrita~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|regEscrita~0_combout\ = (!\controle|atual_estado.s3~q\ & !\controle|atual_estado.s7~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \controle|regEscrita~0_combout\);

\operavito|bancoReg|data_regA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~45_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(2));

\operavito|muxAEntradaULA|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[2]~2_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(2) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(2))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(2)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(2),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(2),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[2]~2_combout\);

\operavito|regSaidaUla|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(5));

\operavito|bancoReg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[1]~1_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~20_q\);

\operavito|bancoReg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[1]~1_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~28_q\);

\operavito|bancoReg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[1]~1_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~36_q\);

\operavito|bancoReg|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~52_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~36_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~28_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~20_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~12_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~20_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~28_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~36_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~52_combout\);

\operavito|bancoReg|data_regB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~52_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(1));

\controle|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr7~combout\ = ( \controle|atual_estado.s7~q\ ) # ( !\controle|atual_estado.s7~q\ & ( (((\controle|atual_estado.s3~q\) # (\controle|atual_estado.s5~q\)) # (\controle|atual_estado.s6~q\)) # (\controle|atual_estado.s9~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s9~q\,
	datab => \controle|ALT_INV_atual_estado.s6~q\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	datad => \controle|ALT_INV_atual_estado.s3~q\,
	datae => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \controle|WideOr7~combout\);

\operavito|muxBEntradaULA|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux6~0_combout\ = ( \controle|WideOr7~combout\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (((\operavito|bancoReg|data_regB\(1))))) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & ((!\controle|atual_estado.s6~q\ & ((\operavito|bancoReg|data_regB\(1)))) # (\controle|atual_estado.s6~q\ & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001110100000000000000000000111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \operavito|bancoReg|ALT_INV_data_regB\(1),
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	datae => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux6~0_combout\);

\operavito|bancoReg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[3]~3_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~22_q\);

\operavito|bancoReg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[3]~3_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~30_q\);

\operavito|bancoReg|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[3]~3_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~38_q\);

\operavito|bancoReg|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~54_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~38_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~30_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~22_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~14_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~22_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~30_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~38_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~54_combout\);

\operavito|bancoReg|data_regB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~54_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(3));

\operavito|muxBEntradaULA|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux4~0_combout\ = (\operavito|bancoReg|data_regB\(3) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(3),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux4~0_combout\);

\operavito|muxAEntradaULA|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[1]~1_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(1) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(1))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(1)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(1),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(1),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[1]~1_combout\);

\operavito|bancoReg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[0]~0_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~19_q\);

\operavito|bancoReg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[0]~0_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~27_q\);

\operavito|bancoReg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[0]~0_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~35_q\);

\operavito|bancoReg|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~51_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~35_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~27_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~19_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~11_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~19_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~27_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~35_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~51_combout\);

\operavito|bancoReg|data_regB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~51_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(0));

\operavito|muxBEntradaULA|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux7~1_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (((\operavito|bancoReg|data_regB\(0))))) # (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & 
-- ((!\controle|atual_estado.s6~q\ & ((\operavito|bancoReg|data_regB\(0)))) # (\controle|atual_estado.s6~q\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000011110001110100001111000111010000111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \operavito|bancoReg|ALT_INV_data_regB\(0),
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxBEntradaULA|Mux7~1_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\ = ( \controle|WideOr7~combout\ & ( \operavito|muxBEntradaULA|Mux7~1_combout\ & ( !\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\ & 
-- (!\operavito|muxAEntradaULA|output[1]~1_combout\ & !\operavito|muxAEntradaULA|output[2]~2_combout\)))) ) ) ) # ( !\controle|WideOr7~combout\ & ( \operavito|muxBEntradaULA|Mux7~1_combout\ & ( !\operavito|muxAEntradaULA|output[3]~3_combout\ $ 
-- (((!\operavito|muxAEntradaULA|output[0]~0_combout\ & (!\operavito|muxAEntradaULA|output[1]~1_combout\ & !\operavito|muxAEntradaULA|output[2]~2_combout\)))) ) ) ) # ( !\controle|WideOr7~combout\ & ( !\operavito|muxBEntradaULA|Mux7~1_combout\ & ( 
-- !\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\ & (!\operavito|muxAEntradaULA|output[1]~1_combout\ & !\operavito|muxAEntradaULA|output[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111110000000000000000000000001111111100000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datae => \controle|ALT_INV_WideOr7~combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ = (!\operavito|bancoReg|data_regB\(0) & \operavito|bancoReg|data_regB\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_data_regB\(0),
	datab => \operavito|bancoReg|ALT_INV_data_regB\(1),
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ & ( (!\controle|WideOr7~combout\) # 
-- ((\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\) # (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) ) ) # ( 
-- !\controle|atual_estado.s6~q\ & ( \operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ & ( !\controle|WideOr7~combout\ ) ) ) # ( \controle|atual_estado.s6~q\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ & ( 
-- ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\) # ((!\controle|WideOr7~combout\) # (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\))) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\) ) ) ) # ( !\controle|atual_estado.s6~q\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|Equal1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111110111110000111100001111000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \controle|ALT_INV_WideOr7~combout\,
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\);

\operavito|muxBEntradaULA|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux6~1_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (((\operavito|bancoReg|data_regB\(1))))) # (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & 
-- ((!\controle|atual_estado.s6~q\ & ((\operavito|bancoReg|data_regB\(1)))) # (\controle|atual_estado.s6~q\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000011110001110100001111000111010000111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \operavito|bancoReg|ALT_INV_data_regB\(1),
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxBEntradaULA|Mux6~1_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\ = ( \operavito|muxBEntradaULA|Mux6~1_combout\ & ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\) # ((!\controle|WideOr7~combout\) # 
-- (\operavito|muxBEntradaULA|Mux7~1_combout\)))) ) ) # ( !\operavito|muxBEntradaULA|Mux6~1_combout\ & ( \operavito|muxAEntradaULA|output[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101100011001100110011001100110011011000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \controle|ALT_INV_WideOr7~combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux6~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\);

\controle|ULAfonteB[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|ULAfonteB[1]~0_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & \controle|atual_estado.s6~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \controle|ULAfonteB[1]~0_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~35_cout\ = CARRY(( GND ) + ( GND ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~35_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~31_cout\ = CARRY(( (\controle|WideOr7~combout\ & ((!\controle|ULAfonteB[1]~0_combout\ & ((\operavito|bancoReg|data_regB\(1)))) # (\controle|ULAfonteB[1]~0_combout\ & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\)))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~35_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(1),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~35_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~31_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~27_cout\ = CARRY(( (\controle|WideOr7~combout\ & (\operavito|bancoReg|data_regB\(2) & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\)))) ) + ( GND 
-- ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~31_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(2),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~31_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~27_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~23_cout\ = CARRY(( (\controle|WideOr7~combout\ & (\operavito|bancoReg|data_regB\(3) & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\)))) ) + ( GND 
-- ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~27_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(3),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~27_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~23_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\ = CARRY(( (\operavito|muxAEntradaULA|output[0]~0_combout\ & ((!\controle|WideOr7~combout\) # (\operavito|muxBEntradaULA|Mux7~1_combout\))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~23_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~23_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ = SUM(( (!\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\controle|WideOr7~combout\ & (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ (!\operavito|muxAEntradaULA|output[1]~1_combout\)))) # 
-- (\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ (((!\operavito|muxAEntradaULA|output[1]~1_combout\))))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\ = CARRY(( (!\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\controle|WideOr7~combout\ & (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ (!\operavito|muxAEntradaULA|output[1]~1_combout\)))) # 
-- (\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ (((!\operavito|muxAEntradaULA|output[1]~1_combout\))))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000101000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datac => \controle|ALT_INV_WideOr7~combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~18_cout\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\ = SUM(( (!\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\controle|WideOr7~combout\ & (!\operavito|muxAEntradaULA|output[2]~2_combout\ $ (!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)))) # 
-- (\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\operavito|muxAEntradaULA|output[2]~2_combout\ $ ((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\ ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\ = CARRY(( (!\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\controle|WideOr7~combout\ & (!\operavito|muxAEntradaULA|output[2]~2_combout\ $ (!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)))) # 
-- (\operavito|muxBEntradaULA|Mux7~1_combout\ & (!\operavito|muxAEntradaULA|output[2]~2_combout\ $ ((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~20_combout\ ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000110011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~20_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~2\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\ = SUM(( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|muxAEntradaULA|output[2]~2_combout\ & 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\))))) ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\) # (\operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\))) ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~10\ = CARRY(( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|muxAEntradaULA|output[2]~2_combout\ & 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\))))) ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\) # (\operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\))) ) + ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011010101000000000000000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~6\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~10\);

\operavito|UnLogArit|pMULTIPLICADOR|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\ = SUM(( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|muxAEntradaULA|output[2]~2_combout\ & 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\))))) ) + ( !\operavito|muxAEntradaULA|output[3]~3_combout\ $ ((((!\operavito|muxAEntradaULA|output[2]~2_combout\ & !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)) # 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Equal1~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101011010101000000000000000000110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal1~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add2~10\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ = (!\operavito|muxBEntradaULA|Mux6~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\)))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & 
-- (((\operavito|muxBEntradaULA|Mux7~0_combout\ & \operavito|UnLogArit|pMULTIPLICADOR|Add2~13_sumout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110011011000000111001101100000011100110110000001110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~1_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~13_sumout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Equal4~0_combout\ = (\operavito|bancoReg|data_regB\(2) & (\controle|WideOr7~combout\ & (!\controle|ULAfonteB[1]~0_combout\ & !\operavito|muxBEntradaULA|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_data_regB\(2),
	datab => \controle|ALT_INV_WideOr7~combout\,
	datac => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux6~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Equal4~0_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ = ( \controle|WideOr7~combout\ & ( \controle|ULAfonteB[1]~0_combout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ $ 
-- (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\) ) ) ) # ( !\controle|WideOr7~combout\ & ( \controle|ULAfonteB[1]~0_combout\ ) ) # ( \controle|WideOr7~combout\ & ( !\controle|ULAfonteB[1]~0_combout\ & ( 
-- !\operavito|bancoReg|data_regB\(0) $ (!\operavito|bancoReg|data_regB\(1)) ) ) ) # ( !\controle|WideOr7~combout\ & ( !\controle|ULAfonteB[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011111111000011111111111111110110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \operavito|bancoReg|ALT_INV_data_regB\(0),
	datad => \operavito|bancoReg|ALT_INV_data_regB\(1),
	datae => \controle|ALT_INV_WideOr7~combout\,
	dataf => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\ = (!\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\))) # (\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~6_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~9_sumout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\ = !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxAEntradaULA|output[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001111000011110000111100001111000011110000111100001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\ = (!\operavito|muxBEntradaULA|Mux6~0_combout\ & (((\operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\)))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & 
-- (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ ((!\operavito|muxAEntradaULA|output[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~1_sumout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\ = (\operavito|muxBEntradaULA|Mux6~0_combout\ & \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~1_sumout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~34_cout\ = CARRY(( GND ) + ( GND ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~34_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~30_cout\ = CARRY(( (!\controle|ULAfonteB[1]~0_combout\ & (\controle|WideOr7~combout\ & \operavito|bancoReg|data_regB\(2))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	datab => \controle|ALT_INV_WideOr7~combout\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(2),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~34_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~30_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~26_cout\ = CARRY(( (\controle|WideOr7~combout\ & (!\controle|ULAfonteB[1]~0_combout\ & \operavito|bancoReg|data_regB\(3))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datac => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(3),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~30_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~26_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~22_cout\ = CARRY(( (\operavito|muxAEntradaULA|output[0]~0_combout\ & ((!\controle|WideOr7~combout\) # (\operavito|muxBEntradaULA|Mux7~1_combout\))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~26_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~26_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~22_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\ = CARRY(( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\)) # (\operavito|muxBEntradaULA|Mux7~0_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~9_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~10_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~22_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ = SUM(( (!\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\))) # 
-- (\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & (((\operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\)))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\ = CARRY(( (!\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\))) # 
-- (\operavito|UnLogArit|pMULTIPLICADOR|produto~6_combout\ & (((\operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\)))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~5_sumout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~6_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~18_cout\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\ ) + ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ ((((!\operavito|muxBEntradaULA|Mux5~0_combout\) # 
-- (!\operavito|muxAEntradaULA|output[0]~0_combout\)) # (\operavito|muxBEntradaULA|Mux6~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\ = CARRY(( \operavito|UnLogArit|pMULTIPLICADOR|produto~7_combout\ ) + ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ ((((!\operavito|muxBEntradaULA|Mux5~0_combout\) # 
-- (!\operavito|muxAEntradaULA|output[0]~0_combout\)) # (\operavito|muxBEntradaULA|Mux6~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~7_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~2\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ ((((!\operavito|muxBEntradaULA|Mux5~0_combout\) # 
-- (!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)) # (\operavito|muxBEntradaULA|Mux6~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~10\ = CARRY(( \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ ((((!\operavito|muxBEntradaULA|Mux5~0_combout\) # 
-- (!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)) # (\operavito|muxBEntradaULA|Mux6~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001101001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~6\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~10\);

\operavito|UnLogArit|pMULTIPLICADOR|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ ) + ( !\operavito|muxAEntradaULA|output[3]~3_combout\ $ (((!\operavito|UnLogArit|pMULTIPLICADOR|Equal4~0_combout\) # 
-- ((!\operavito|muxAEntradaULA|output[2]~2_combout\ & !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal4~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add4~10\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\);

\operavito|UnLogArit|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~1_combout\ = (!\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux4~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\)) # (\operavito|muxBEntradaULA|Mux4~0_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\))))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux4~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\))) # (\operavito|muxBEntradaULA|Mux4~0_combout\ 
-- & (\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101101111000010010110111100001001011011110000100101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~13_sumout\,
	combout => \operavito|UnLogArit|Mux6~1_combout\);

\operavito|regSaidaUla|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(7));

\operavito|memoriadedados|memoria~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(7),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~18_q\);

\operavito|memoriadedados|memoria~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~52_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & \controle|atual_estado.s5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	combout => \operavito|memoriadedados|memoria~52_combout\);

\operavito|memoriadedados|memoria~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(7),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~26_q\);

\operavito|memoriadedados|memoria~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~53_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & \controle|atual_estado.s5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	combout => \operavito|memoriadedados|memoria~53_combout\);

\operavito|memoriadedados|memoria~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(7),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~34_q\);

\operavito|memoriadedados|memoria~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~54_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & \controle|atual_estado.s5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	combout => \operavito|memoriadedados|memoria~54_combout\);

\operavito|memoriadedados|memoria~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(7),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~42_q\);

\operavito|memoriadedados|memoria~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~50_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~42_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~34_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~26_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~18_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~26_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~34_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~42_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~50_combout\);

\operavito|memoriadedados|dataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~50_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(7));

\operavito|regMDR|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(7));

\operavito|muxescritanoBDR|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[7]~7_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(7))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(7),
	datac => \operavito|regMDR|ALT_INV_output\(7),
	combout => \operavito|muxescritanoBDR|output[7]~7_combout\);

\operavito|bancoReg|registrador~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~59_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & (!\operavito|memInstrucao|output\(3) & ((\controle|atual_estado.s7~q\) # (\controle|atual_estado.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(3),
	datac => \controle|ALT_INV_atual_estado.s3~q\,
	datad => \controle|ALT_INV_atual_estado.s7~q\,
	combout => \operavito|bancoReg|registrador~59_combout\);

\operavito|bancoReg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[7]~7_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~18_q\);

\operavito|bancoReg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[7]~7_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~26_q\);

\operavito|bancoReg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[7]~7_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~34_q\);

\operavito|bancoReg|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[7]~7_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~42_q\);

\operavito|bancoReg|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~50_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~42_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~34_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~26_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~18_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~26_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~34_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~42_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~50_combout\);

\operavito|bancoReg|data_regA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~50_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(7));

\operavito|muxAEntradaULA|output[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[7]~7_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(7) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(7))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(7)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(7),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(7),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[7]~7_combout\);

\operavito|bancoReg|registrador~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~58_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~42_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~34_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~26_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~18_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~26_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~34_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~42_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~58_combout\);

\operavito|bancoReg|data_regB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~58_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(7));

\operavito|muxBEntradaULA|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux0~0_combout\ = (\operavito|bancoReg|data_regB\(7) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(7),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux0~0_combout\);

\operavito|UnLogArit|Mux10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~5_combout\ = (\controle|WideOr8~combout\ & (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ $ (!\operavito|memInstrucao|output\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datab => \operavito|memInstrucao|ALT_INV_output\(6),
	datac => \controle|ALT_INV_WideOr8~combout\,
	combout => \operavito|UnLogArit|Mux10~5_combout\);

\operavito|regSaidaUla|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(6));

\operavito|memoriadedados|memoria~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(6),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~17_q\);

\operavito|memoriadedados|memoria~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(6),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~25_q\);

\operavito|memoriadedados|memoria~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(6),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~33_q\);

\operavito|memoriadedados|memoria~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(6),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~41_q\);

\operavito|memoriadedados|memoria~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~49_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~41_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~33_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~25_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~17_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~25_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~33_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~41_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~49_combout\);

\operavito|memoriadedados|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~49_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(6));

\operavito|regMDR|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(6));

\operavito|muxescritanoBDR|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[6]~6_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(6))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(6),
	datac => \operavito|regMDR|ALT_INV_output\(6),
	combout => \operavito|muxescritanoBDR|output[6]~6_combout\);

\operavito|bancoReg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[6]~6_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~17_q\);

\operavito|bancoReg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[6]~6_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~25_q\);

\operavito|bancoReg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[6]~6_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~33_q\);

\operavito|bancoReg|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[6]~6_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~41_q\);

\operavito|bancoReg|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~49_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~41_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~33_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~25_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~17_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~25_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~33_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~41_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~49_combout\);

\operavito|bancoReg|data_regA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~49_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(6));

\operavito|muxAEntradaULA|output[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[6]~6_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(6) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(6))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(6)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(6),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(6),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[6]~6_combout\);

\operavito|bancoReg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[5]~5_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~24_q\);

\operavito|bancoReg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[5]~5_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~32_q\);

\operavito|bancoReg|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[5]~5_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~40_q\);

\operavito|bancoReg|registrador~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~56_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~40_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~32_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~24_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~16_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~24_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~32_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~40_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~56_combout\);

\operavito|bancoReg|data_regB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~56_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(5));

\operavito|muxBEntradaULA|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux2~0_combout\ = (\operavito|bancoReg|data_regB\(5) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(5),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux2~0_combout\);

\operavito|bancoReg|registrador~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~57_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~41_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~33_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~25_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~17_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~25_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~33_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~41_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~57_combout\);

\operavito|bancoReg|data_regB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~57_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(6));

\operavito|muxBEntradaULA|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux1~0_combout\ = (\operavito|bancoReg|data_regB\(6) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(6),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux1~0_combout\);

\operavito|UnLogArit|pSOMADOR|cin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADOR|cin~0_combout\ = ( \operavito|UnLogArit|pSOMADOR|cout~1_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxBEntradaULA|Mux1~0_combout\ & ((\operavito|muxBEntradaULA|Mux2~0_combout\) # 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\)))) # (\operavito|muxAEntradaULA|output[6]~6_combout\ & (((\operavito|muxBEntradaULA|Mux1~0_combout\) # (\operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\))) ) ) # 
-- ( !\operavito|UnLogArit|pSOMADOR|cout~1_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxBEntradaULA|Mux2~0_combout\ & \operavito|muxBEntradaULA|Mux1~0_combout\))) # 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\ & (((\operavito|muxAEntradaULA|output[5]~5_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxBEntradaULA|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100110111111100000001001101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~1_combout\,
	combout => \operavito|UnLogArit|pSOMADOR|cin~0_combout\);

\operavito|regSaidaUla|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(4));

\operavito|memoriadedados|memoria~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(4),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~15_q\);

\operavito|memoriadedados|memoria~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(4),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~23_q\);

\operavito|memoriadedados|memoria~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(4),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~31_q\);

\operavito|memoriadedados|memoria~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(4),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~39_q\);

\operavito|memoriadedados|memoria~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~47_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~39_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~31_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~23_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~15_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~23_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~31_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~39_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~47_combout\);

\operavito|memoriadedados|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~47_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(4));

\operavito|regMDR|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(4));

\operavito|muxescritanoBDR|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[4]~4_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(4))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(4),
	datac => \operavito|regMDR|ALT_INV_output\(4),
	combout => \operavito|muxescritanoBDR|output[4]~4_combout\);

\operavito|bancoReg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[4]~4_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~15_q\);

\operavito|bancoReg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[4]~4_combout\,
	ena => \operavito|bancoReg|registrador~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~23_q\);

\operavito|bancoReg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[4]~4_combout\,
	ena => \operavito|bancoReg|registrador~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~31_q\);

\operavito|bancoReg|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[4]~4_combout\,
	ena => \operavito|bancoReg|registrador~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~39_q\);

\operavito|bancoReg|registrador~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~55_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~39_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~31_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~23_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~15_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~23_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~31_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~39_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~55_combout\);

\operavito|bancoReg|data_regB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~55_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(4));

\operavito|muxBEntradaULA|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux3~0_combout\ = (\operavito|bancoReg|data_regB\(4) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(4),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux3~0_combout\);

\operavito|UnLogArit|pSUBTRADOR|G2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ = (\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ & (!\operavito|muxBEntradaULA|Mux5~0_combout\ & !\operavito|muxBEntradaULA|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\);

\operavito|UnLogArit|pSUBTRADOR|G2|output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G2|output\(5) = !\operavito|muxBEntradaULA|Mux2~0_combout\ $ (((!\operavito|muxBEntradaULA|Mux3~0_combout\ & \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011000110110001101100011011000110110001101100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G2|output\(5));

\operavito|bancoReg|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~47_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~39_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~31_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~23_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~15_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~23_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~31_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~39_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~47_combout\);

\operavito|bancoReg|data_regA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~47_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(4));

\operavito|muxAEntradaULA|output[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[4]~4_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(4) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(4))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(4)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(4),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(4),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[4]~4_combout\);

\operavito|UnLogArit|pSUBTRADOR|G2|output[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G2|output\(3) = !\operavito|muxBEntradaULA|Mux4~0_combout\ $ (((\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ & !\operavito|muxBEntradaULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111101000000101111110100000010111111010000001011111101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G2|output\(3));

\operavito|UnLogArit|pSUBTRADOR|G3|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\ = ( \operavito|muxBEntradaULA|Mux6~1_combout\ & ( (!\operavito|muxAEntradaULA|output[0]~0_combout\ & ((!\operavito|muxAEntradaULA|output[1]~1_combout\) # ((\controle|WideOr7~combout\ & 
-- \operavito|muxBEntradaULA|Mux7~1_combout\)))) # (\operavito|muxAEntradaULA|output[0]~0_combout\ & (!\operavito|muxAEntradaULA|output[1]~1_combout\ & (\controle|WideOr7~combout\))) ) ) # ( !\operavito|muxBEntradaULA|Mux6~1_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[0]~0_combout\ & ((!\operavito|muxAEntradaULA|output[1]~1_combout\) # ((\controle|WideOr7~combout\ & !\operavito|muxBEntradaULA|Mux7~1_combout\)))) # (\operavito|muxAEntradaULA|output[0]~0_combout\ & 
-- (((\controle|WideOr7~combout\ & !\operavito|muxBEntradaULA|Mux7~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110001000100011001000111010001111100010001000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \controle|ALT_INV_WideOr7~combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux6~1_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\ & ( (\operavito|muxAEntradaULA|output[2]~2_combout\ & (!\operavito|muxBEntradaULA|Mux5~0_combout\ $ (((\operavito|muxBEntradaULA|Mux7~0_combout\ & 
-- !\operavito|muxBEntradaULA|Mux6~0_combout\))))) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\ & ( (!\operavito|muxBEntradaULA|Mux5~0_combout\ $ (((\operavito|muxBEntradaULA|Mux7~0_combout\ & !\operavito|muxBEntradaULA|Mux6~0_combout\)))) # 
-- (\operavito|muxAEntradaULA|output[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101110101010001010001000011011111011101010100010100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & 
-- (\operavito|muxBEntradaULA|Mux3~0_combout\ & ((\operavito|UnLogArit|pSUBTRADOR|G2|output\(3)) # (\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|muxAEntradaULA|output[4]~4_combout\ & (((\operavito|UnLogArit|pSUBTRADOR|G2|output\(3)) # 
-- (\operavito|muxBEntradaULA|Mux3~0_combout\)) # (\operavito|muxAEntradaULA|output[3]~3_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\ & (\operavito|muxBEntradaULA|Mux3~0_combout\ & \operavito|UnLogArit|pSUBTRADOR|G2|output\(3)))) # (\operavito|muxAEntradaULA|output[4]~4_combout\ & 
-- (((\operavito|muxAEntradaULA|output[3]~3_combout\ & \operavito|UnLogArit|pSUBTRADOR|G2|output\(3))) # (\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) ) # ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (!\operavito|muxBEntradaULA|Mux3~0_combout\ & ((\operavito|UnLogArit|pSUBTRADOR|G2|output\(3)) # (\operavito|muxAEntradaULA|output[3]~3_combout\)))) 
-- # (\operavito|muxAEntradaULA|output[4]~4_combout\ & (((!\operavito|muxBEntradaULA|Mux3~0_combout\) # (\operavito|UnLogArit|pSUBTRADOR|G2|output\(3))) # (\operavito|muxAEntradaULA|output[3]~3_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\ & 
-- (!\operavito|muxBEntradaULA|Mux3~0_combout\ & \operavito|UnLogArit|pSUBTRADOR|G2|output\(3)))) # (\operavito|muxAEntradaULA|output[4]~4_combout\ & ((!\operavito|muxBEntradaULA|Mux3~0_combout\) # ((\operavito|muxAEntradaULA|output[3]~3_combout\ & 
-- \operavito|UnLogArit|pSUBTRADOR|G2|output\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110001011100011111001100000011000101110001011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datad => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(3),
	datae => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~1_combout\,
	dataf => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|cout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxBEntradaULA|Mux1~0_combout\ $ (((!\operavito|muxBEntradaULA|Mux3~0_combout\ & 
-- !\operavito|muxBEntradaULA|Mux2~0_combout\))))) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxBEntradaULA|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000101010100000001010101000000000001010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|cin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxBEntradaULA|Mux1~0_combout\ $ (((\operavito|muxBEntradaULA|Mux2~0_combout\) # 
-- (\operavito|muxBEntradaULA|Mux3~0_combout\))))) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & \operavito|muxBEntradaULA|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010100000000010101000000000101010101000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ = ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( !\operavito|muxAEntradaULA|output[7]~7_combout\ $ 
-- ((((\operavito|muxBEntradaULA|Mux1~0_combout\) # (\operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( 
-- !\operavito|muxAEntradaULA|output[7]~7_combout\ $ (((!\operavito|muxBEntradaULA|Mux3~0_combout\ & (!\operavito|muxBEntradaULA|Mux2~0_combout\ & !\operavito|muxBEntradaULA|Mux1~0_combout\)))) ) ) ) # ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( \operavito|muxAEntradaULA|output[7]~7_combout\ ) ) ) # ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( 
-- !\operavito|muxAEntradaULA|output[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010101010101010101101010101010101001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	dataf => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|output[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|output\(7) = ( \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ & ( (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- ((!\operavito|UnLogArit|pSUBTRADOR|G2|output\(5)) # (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|UnLogArit|pSUBTRADOR|G2|output\(5) & 
-- !\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G3|output[7]~2_combout\ & ( ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|UnLogArit|pSUBTRADOR|G2|output\(5) & 
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & ((\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\) # (\operavito|UnLogArit|pSUBTRADOR|G2|output\(5))))) # 
-- (\operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111111111000000001111111111101000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(5),
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~2_combout\,
	datad => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~4_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cin~0_combout\,
	dataf => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[7]~2_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|output\(7));

\operavito|UnLogArit|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux5~0_combout\ = ( \operavito|UnLogArit|pSOMADOR|cin~0_combout\ & ( \operavito|UnLogArit|pSUBTRADOR|G3|output\(7) & ( (!\controle|ULAop[1]~0_combout\ & (!\operavito|UnLogArit|Mux10~5_combout\ & 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\ $ (\operavito|muxBEntradaULA|Mux0~0_combout\)))) # (\controle|ULAop[1]~0_combout\ & (((\operavito|UnLogArit|Mux10~5_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSOMADOR|cin~0_combout\ & ( 
-- \operavito|UnLogArit|pSUBTRADOR|G3|output\(7) & ( (!\controle|ULAop[1]~0_combout\ & (!\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ $ (!\operavito|muxBEntradaULA|Mux0~0_combout\)))) # 
-- (\controle|ULAop[1]~0_combout\ & (((\operavito|UnLogArit|Mux10~5_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSOMADOR|cin~0_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G3|output\(7) & ( (!\controle|ULAop[1]~0_combout\ & 
-- (!\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ $ (\operavito|muxBEntradaULA|Mux0~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSOMADOR|cin~0_combout\ & ( !\operavito|UnLogArit|pSUBTRADOR|G3|output\(7) & ( 
-- (!\controle|ULAop[1]~0_combout\ & (!\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ $ (!\operavito|muxBEntradaULA|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000100100000000000001100000000011111001000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	datac => \controle|ALT_INV_ULAop[1]~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	datae => \operavito|UnLogArit|pSOMADOR|ALT_INV_cin~0_combout\,
	dataf => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output\(7),
	combout => \operavito|UnLogArit|Mux5~0_combout\);

\operavito|UnLogArit|Mux10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~4_combout\ = (\controle|WideOr8~combout\ & (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ $ (((!\operavito|memInstrucao|output\(6)) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111001000000000011100100000000001110010000000000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \controle|ALT_INV_WideOr8~combout\,
	combout => \operavito|UnLogArit|Mux10~4_combout\);

\controle|ULAop[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|ULAop[2]~2_combout\ = (\operavito|memInstrucao|output\(6) & \controle|WideOr8~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|ALT_INV_output\(6),
	datab => \controle|ALT_INV_WideOr8~combout\,
	combout => \controle|ULAop[2]~2_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[7]~7_combout\ & 
-- (((\operavito|muxAEntradaULA|output[5]~5_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[6]~6_combout\))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- ((\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) # (\operavito|muxAEntradaULA|output[7]~7_combout\) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( 
-- !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (((\operavito|muxAEntradaULA|output[5]~5_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[7]~7_combout\)) # (\operavito|muxAEntradaULA|output[6]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100111111000111110000111100000111000000110000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[7]~7_combout\ & (((\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- !\operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[6]~6_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (((\operavito|muxAEntradaULA|output[7]~7_combout\)))) # (\operavito|muxAEntradaULA|output[6]~6_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)) # 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)))) # (\operavito|muxAEntradaULA|output[6]~6_combout\ & (((!\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( 
-- !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[7]~7_combout\ & ((!\operavito|muxAEntradaULA|output[6]~6_combout\) # ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- \operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011100000011100000011100000011100000011100000011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ = (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\)) # 
-- (\operavito|muxBEntradaULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[4]~4_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[7]~7_combout\) # 
-- ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (((!\operavito|muxAEntradaULA|output[7]~7_combout\)))) # (\operavito|muxAEntradaULA|output[6]~6_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) # ( 
-- \operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & 
-- \operavito|muxBEntradaULA|Mux2~0_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)))) # (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (((\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( ((\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) # (\operavito|muxAEntradaULA|output[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100001111000001111000001111000001111000001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & 
-- (!\operavito|muxAEntradaULA|output[4]~4_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((!\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (!\operavito|muxBEntradaULA|Mux4~0_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & 
-- ((!\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( (!\operavito|muxBEntradaULA|Mux3~0_combout\ & 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000011001100111100001010101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\ = ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- (\operavito|muxAEntradaULA|output[3]~3_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000000000000000000001010011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~2_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[7]~7_combout\ & 
-- ((!\operavito|muxAEntradaULA|output[6]~6_combout\) # ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( 
-- !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( 
-- !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[7]~7_combout\ & (((\operavito|muxAEntradaULA|output[5]~5_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\)) # 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000011000000010000000000000000100000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[7]~7_combout\ & 
-- ((!\operavito|muxAEntradaULA|output[5]~5_combout\) # ((!\operavito|muxAEntradaULA|output[6]~6_combout\) # (\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & ((!\operavito|muxAEntradaULA|output[5]~5_combout\) # (\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & 
-- ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & ((!\operavito|muxBEntradaULA|Mux2~0_combout\) # (\operavito|muxAEntradaULA|output[5]~5_combout\)))) ) ) ) 
-- # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (\operavito|muxAEntradaULA|output[7]~7_combout\ & (((!\operavito|muxBEntradaULA|Mux2~0_combout\) # (\operavito|muxAEntradaULA|output[6]~6_combout\)) # 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000111000000110000000110000000110000001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxAEntradaULA|output[4]~4_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxBEntradaULA|Mux4~0_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\);

\operavito|UnLogArit|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Equal0~0_combout\ = ( \controle|WideOr7~combout\ & ( \controle|ULAfonteB[1]~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxAEntradaULA|output[7]~7_combout\) ) ) ) # ( !\controle|WideOr7~combout\ & ( 
-- \controle|ULAfonteB[1]~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxAEntradaULA|output[7]~7_combout\) ) ) ) # ( \controle|WideOr7~combout\ & ( !\controle|ULAfonteB[1]~0_combout\ & ( (!\operavito|bancoReg|data_regB\(6) & 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|bancoReg|data_regB\(7) $ (\operavito|muxAEntradaULA|output[7]~7_combout\)))) # (\operavito|bancoReg|data_regB\(6) & (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (!\operavito|bancoReg|data_regB\(7) $ (\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( !\controle|WideOr7~combout\ & ( !\controle|ULAfonteB[1]~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- !\operavito|muxAEntradaULA|output[7]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000100001000010000111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_data_regB\(6),
	datab => \operavito|bancoReg|ALT_INV_data_regB\(7),
	datac => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datae => \controle|ALT_INV_WideOr7~combout\,
	dataf => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	combout => \operavito|UnLogArit|Equal0~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ = ( \controle|WideOr7~combout\ & ( !\controle|ULAfonteB[1]~0_combout\ & ( (!\operavito|bancoReg|data_regB\(7) & (\operavito|bancoReg|data_regB\(6) & 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & !\operavito|muxAEntradaULA|output[7]~7_combout\))) # (\operavito|bancoReg|data_regB\(7) & ((!\operavito|muxAEntradaULA|output[7]~7_combout\) # ((\operavito|bancoReg|data_regB\(6) & 
-- !\operavito|muxAEntradaULA|output[6]~6_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011100110001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_data_regB\(6),
	datab => \operavito|bancoReg|ALT_INV_data_regB\(7),
	datac => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datae => \controle|ALT_INV_WideOr7~combout\,
	dataf => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ = ( \operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[2]~2_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[2]~2_combout\ ) ) ) # ( \operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & ((!\operavito|muxBEntradaULA|Mux2~0_combout\ & ((\operavito|muxBEntradaULA|Mux6~0_combout\))) # (\operavito|muxBEntradaULA|Mux2~0_combout\ 
-- & (\operavito|muxAEntradaULA|output[2]~2_combout\)))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (((\operavito|muxBEntradaULA|Mux6~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxBEntradaULA|Mux6~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110100011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~1_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2_combout\ = ( \operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[1]~1_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[1]~1_combout\ ) ) ) # ( \operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & ((!\operavito|muxBEntradaULA|Mux2~0_combout\ & ((!\operavito|muxBEntradaULA|Mux7~0_combout\))) # (\operavito|muxBEntradaULA|Mux2~0_combout\ 
-- & (\operavito|muxAEntradaULA|output[1]~1_combout\)))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (((!\operavito|muxBEntradaULA|Mux7~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( !\operavito|muxBEntradaULA|Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100000111010001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~1_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( \operavito|muxBEntradaULA|Mux6~0_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~2_combout\ ) ) ) # ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~1_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~2_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxBEntradaULA|Mux2~0_combout\ & 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ $ (\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ 
-- & (\operavito|muxBEntradaULA|Mux2~0_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ $ (\operavito|muxAEntradaULA|output[7]~7_combout\)))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & 
-- (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\ & !\operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000000001001000001001000001001000000001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~3_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxBEntradaULA|Mux5~0_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~3_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ = ( \operavito|muxAEntradaULA|output[6]~6_combout\ & ( \operavito|muxAEntradaULA|output[5]~5_combout\ & ( (!\operavito|muxBEntradaULA|Mux0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux1~0_combout\ & (!\operavito|muxBEntradaULA|Mux2~0_combout\ & \operavito|muxAEntradaULA|output[7]~7_combout\))) ) ) ) # ( !\operavito|muxAEntradaULA|output[6]~6_combout\ & ( \operavito|muxAEntradaULA|output[5]~5_combout\ & ( 
-- (!\operavito|muxBEntradaULA|Mux2~0_combout\ & ((!\operavito|muxBEntradaULA|Mux0~0_combout\ & (!\operavito|muxBEntradaULA|Mux1~0_combout\ & \operavito|muxAEntradaULA|output[7]~7_combout\)) # (\operavito|muxBEntradaULA|Mux0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux1~0_combout\ & !\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( \operavito|muxAEntradaULA|output[6]~6_combout\ & ( !\operavito|muxAEntradaULA|output[5]~5_combout\ & ( (\operavito|muxBEntradaULA|Mux2~0_combout\ & 
-- ((!\operavito|muxBEntradaULA|Mux0~0_combout\ & (!\operavito|muxBEntradaULA|Mux1~0_combout\ & \operavito|muxAEntradaULA|output[7]~7_combout\)) # (\operavito|muxBEntradaULA|Mux0~0_combout\ & (\operavito|muxBEntradaULA|Mux1~0_combout\ & 
-- !\operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( !\operavito|muxAEntradaULA|output[6]~6_combout\ & ( !\operavito|muxAEntradaULA|output[5]~5_combout\ & ( (\operavito|muxBEntradaULA|Mux0~0_combout\ & (!\operavito|muxBEntradaULA|Mux1~0_combout\ 
-- & (\operavito|muxBEntradaULA|Mux2~0_combout\ & !\operavito|muxAEntradaULA|output[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000010000100000010000100000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datae => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\)))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~3_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~5_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~4_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~15_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[2]~2_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxAEntradaULA|output[4]~4_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux3~0_combout\))) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux4~0_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000111100110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111010101010000111100110011000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ = (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\)) # (\operavito|muxBEntradaULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & ((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~7_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~8_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000010000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~6_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~7_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~8_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[1]~1_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ = (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\)) # (\operavito|muxBEntradaULA|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000000111111100000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ = ( \operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[3]~3_combout\ ) ) ) # ( 
-- !\operavito|UnLogArit|Equal0~0_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxAEntradaULA|output[3]~3_combout\ ) ) ) # ( \operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & ((!\operavito|muxBEntradaULA|Mux2~0_combout\ & ((\operavito|muxBEntradaULA|Mux5~0_combout\))) # (\operavito|muxBEntradaULA|Mux2~0_combout\ 
-- & (\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|muxAEntradaULA|output[5]~5_combout\ & (((\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Equal0~0_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~1_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110100011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~0_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~1_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\) # ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\)))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux4~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\)))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~1_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~11_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan0~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan0~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~1_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~11_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~10_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~12_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~4_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111100001111000010000000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~4_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~3_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor~6_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~10_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~12_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & 
-- (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) ) ) ) # ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000001000100111100000100010011110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[2]~2_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~9_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((!\operavito|muxBEntradaULA|Mux4~0_combout\))) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ & ( (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((!\operavito|muxBEntradaULA|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101100101011001010110000000000101011001010110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~2_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\);

\operavito|UnLogArit|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~0_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\) # (!\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\)))) ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\) # (!\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\)) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\) # 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010000000100000001000000010101000100000001010100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemenor~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[4]~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[3]~1_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~2_combout\,
	combout => \operavito|UnLogArit|Mux10~0_combout\);

\operavito|UnLogArit|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~1_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	combout => \operavito|UnLogArit|Mux10~1_combout\);

\operavito|UnLogArit|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~3_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & \controle|ULAop[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \controle|ALT_INV_ULAop[1]~0_combout\,
	combout => \operavito|UnLogArit|Mux10~3_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[5]~5_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[7]~7_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((\operavito|muxBEntradaULA|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\) # 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((!\operavito|muxBEntradaULA|Mux1~0_combout\)))) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\ & ( (\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((\operavito|muxBEntradaULA|Mux1~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111111111010110000000000010100111111111110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[0]~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[2]~1_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\);

\operavito|UnLogArit|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux5~2_combout\ = ( \operavito|UnLogArit|Mux10~3_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ & ( (!\operavito|UnLogArit|Mux10~4_combout\ & (\operavito|muxBEntradaULA|Mux0~0_combout\)) # 
-- (\operavito|UnLogArit|Mux10~4_combout\ & (((!\operavito|UnLogArit|Mux10~0_combout\ & !\operavito|UnLogArit|Mux10~1_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ & ( 
-- (!\operavito|UnLogArit|Mux10~4_combout\ & (\operavito|muxBEntradaULA|Mux0~0_combout\)) # (\operavito|UnLogArit|Mux10~4_combout\ & (((!\operavito|UnLogArit|Mux10~1_combout\) # (\operavito|UnLogArit|Mux10~0_combout\)))) ) ) ) # ( 
-- \operavito|UnLogArit|Mux10~3_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ & ( (\operavito|muxBEntradaULA|Mux0~0_combout\ & !\operavito|UnLogArit|Mux10~4_combout\) ) ) ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|Add8~0_combout\ & ( (!\operavito|UnLogArit|Mux10~4_combout\ & (\operavito|muxBEntradaULA|Mux0~0_combout\)) # (\operavito|UnLogArit|Mux10~4_combout\ & ((\operavito|UnLogArit|Mux10~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001000100010001110111010001110111010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Add8~0_combout\,
	combout => \operavito|UnLogArit|Mux5~2_combout\);

\operavito|UnLogArit|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~2_combout\ = (!\controle|ULAop[1]~0_combout\ & \operavito|UnLogArit|Mux10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	combout => \operavito|UnLogArit|Mux6~2_combout\);

\operavito|UnLogArit|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux5~3_combout\ = ( \operavito|UnLogArit|Mux10~0_combout\ & ( (!\controle|ULAop[3]~1_combout\ & (!\operavito|UnLogArit|Mux6~2_combout\ & (!\operavito|UnLogArit|Mux5~0_combout\))) # (\controle|ULAop[3]~1_combout\ & 
-- (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[2]~1_combout\)))) ) ) # ( !\operavito|UnLogArit|Mux10~0_combout\ & ( (!\controle|ULAop[3]~1_combout\ & (!\operavito|UnLogArit|Mux6~2_combout\ & !\operavito|UnLogArit|Mux5~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000110101011000000010000000100000001101010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux6~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux5~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[2]~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	combout => \operavito|UnLogArit|Mux5~3_combout\);

\operavito|UnLogArit|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux5~4_combout\ = ( \operavito|UnLogArit|Mux5~2_combout\ & ( \operavito|UnLogArit|Mux5~3_combout\ & ( (\controle|ULAop[3]~1_combout\ & ((!\operavito|UnLogArit|Mux10~4_combout\) # ((!\controle|ULAop[2]~2_combout\ & 
-- \operavito|muxAEntradaULA|output[7]~7_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Mux5~2_combout\ & ( \operavito|UnLogArit|Mux5~3_combout\ & ( (\controle|ULAop[3]~1_combout\ & (\operavito|UnLogArit|Mux10~4_combout\ & (!\controle|ULAop[2]~2_combout\ & 
-- \operavito|muxAEntradaULA|output[7]~7_combout\))) ) ) ) # ( \operavito|UnLogArit|Mux5~2_combout\ & ( !\operavito|UnLogArit|Mux5~3_combout\ & ( (!\controle|ULAop[3]~1_combout\) # ((!\operavito|UnLogArit|Mux10~4_combout\) # 
-- ((\operavito|muxAEntradaULA|output[7]~7_combout\) # (\controle|ULAop[2]~2_combout\))) ) ) ) # ( !\operavito|UnLogArit|Mux5~2_combout\ & ( !\operavito|UnLogArit|Mux5~3_combout\ & ( (!\controle|ULAop[3]~1_combout\) # ((\operavito|UnLogArit|Mux10~4_combout\ 
-- & (!\controle|ULAop[2]~2_combout\ & \operavito|muxAEntradaULA|output[7]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111010111011111111111100000000000100000100010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux5~2_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux5~3_combout\,
	combout => \operavito|UnLogArit|Mux5~4_combout\);

\operavito|UnLogArit|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux5~1_combout\ = ( \operavito|UnLogArit|Mux5~0_combout\ & ( \operavito|UnLogArit|Mux5~4_combout\ ) ) # ( !\operavito|UnLogArit|Mux5~0_combout\ & ( \operavito|UnLogArit|Mux5~4_combout\ & ( ((!\operavito|UnLogArit|Mux7~1_combout\ & 
-- ((\operavito|UnLogArit|Mux6~1_combout\))) # (\operavito|UnLogArit|Mux7~1_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\))) # (\controle|ULAop[3]~1_combout\) ) ) ) # ( \operavito|UnLogArit|Mux5~0_combout\ & ( 
-- !\operavito|UnLogArit|Mux5~4_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((!\operavito|UnLogArit|Mux7~1_combout\ & ((!\operavito|UnLogArit|Mux6~1_combout\))) # (\operavito|UnLogArit|Mux7~1_combout\ & 
-- (!\operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000010000001010111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~13_sumout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux6~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux5~0_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux5~4_combout\,
	combout => \operavito|UnLogArit|Mux5~1_combout\);

\operavito|UnLogArit|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Equal0~1_combout\ = ( \operavito|UnLogArit|Equal0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[0]~0_combout\ & (\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[1]~1_combout\ $ 
-- (\operavito|muxBEntradaULA|Mux6~0_combout\)))) # (\operavito|muxAEntradaULA|output[0]~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[1]~1_combout\ $ (\operavito|muxBEntradaULA|Mux6~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010000001001000000000000000000100100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~0_combout\,
	combout => \operavito|UnLogArit|Equal0~1_combout\);

\operavito|UnLogArit|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Equal0~2_combout\ = ( \operavito|UnLogArit|Equal0~1_combout\ & ( (!\operavito|muxAEntradaULA|output[2]~2_combout\ & (!\operavito|muxBEntradaULA|Mux5~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ 
-- (\operavito|muxBEntradaULA|Mux4~0_combout\)))) # (\operavito|muxAEntradaULA|output[2]~2_combout\ & (\operavito|muxBEntradaULA|Mux5~0_combout\ & (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ (\operavito|muxBEntradaULA|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~1_combout\,
	combout => \operavito|UnLogArit|Equal0~2_combout\);

\operavito|UnLogArit|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Equal0~3_combout\ = ( \operavito|UnLogArit|Equal0~2_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (!\operavito|muxBEntradaULA|Mux3~0_combout\ & (!\operavito|muxAEntradaULA|output[5]~5_combout\ $ 
-- (\operavito|muxBEntradaULA|Mux2~0_combout\)))) # (\operavito|muxAEntradaULA|output[4]~4_combout\ & (\operavito|muxBEntradaULA|Mux3~0_combout\ & (!\operavito|muxAEntradaULA|output[5]~5_combout\ $ (\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000010000100000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Equal0~2_combout\,
	combout => \operavito|UnLogArit|Equal0~3_combout\);

\operavito|UnLogArit|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux1~0_combout\ = (\controle|ULAop[1]~0_combout\ & (!\controle|ULAop[3]~1_combout\ & \controle|ULAop[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \controle|ALT_INV_ULAop[3]~1_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	combout => \operavito|UnLogArit|Mux1~0_combout\);

\operavito|UnLogArit|bool\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|bool~combout\ = ( \operavito|UnLogArit|bool~combout\ & ( \operavito|UnLogArit|Mux1~0_combout\ & ( \operavito|UnLogArit|Equal0~3_combout\ ) ) ) # ( !\operavito|UnLogArit|bool~combout\ & ( \operavito|UnLogArit|Mux1~0_combout\ & ( 
-- \operavito|UnLogArit|Equal0~3_combout\ ) ) ) # ( \operavito|UnLogArit|bool~combout\ & ( !\operavito|UnLogArit|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Equal0~3_combout\,
	datae => \operavito|UnLogArit|ALT_INV_bool~combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux1~0_combout\,
	combout => \operavito|UnLogArit|bool~combout\);

\operavito|UnLogArit|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux12~0_combout\ = ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ & ( ((!\controle|WideOr8~combout\) # ((!\operavito|UnLogArit|Equal0~3_combout\) # ((!\operavito|memInstrucao|output\(6)) # 
-- (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ & ( (!\controle|WideOr8~combout\) # ((!\operavito|memInstrucao|output\(6)) # 
-- ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\) # (\operavito|UnLogArit|bool~combout\))) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & ((!\operavito|UnLogArit|bool~combout\) # (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111111111111111111111111111011111111111111001111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \controle|ALT_INV_WideOr8~combout\,
	datac => \operavito|UnLogArit|ALT_INV_bool~combout\,
	datad => \operavito|memInstrucao|ALT_INV_output\(6),
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datag => \operavito|UnLogArit|ALT_INV_Equal0~3_combout\,
	combout => \operavito|UnLogArit|Mux12~0_combout\);

\operavito|UnLogArit|output[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(7) = ( \operavito|UnLogArit|output\(7) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux5~1_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(7) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux5~1_combout\ ) ) ) # ( \operavito|UnLogArit|output\(7) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux5~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(7),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(7));

\operavito|muxPCfonte|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux0~0_combout\ = (!\controle|atual_estado.s8~q\ & (!\controle|atual_estado.s9~q\ & \operavito|UnLogArit|output\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|UnLogArit|ALT_INV_output\(7),
	combout => \operavito|muxPCfonte|Mux0~0_combout\);

\operavito|regPC|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux0~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(7));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000009EE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\operavito|memoriadedados|memoria~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~51_combout\ = (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & \controle|atual_estado.s5~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s5~q\,
	combout => \operavito|memoriadedados|memoria~51_combout\);

\operavito|memoriadedados|memoria~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(5),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~16_q\);

\operavito|memoriadedados|memoria~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(5),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~24_q\);

\operavito|memoriadedados|memoria~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(5),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~32_q\);

\operavito|memoriadedados|memoria~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(5),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~40_q\);

\operavito|memoriadedados|memoria~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~48_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~40_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~32_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~24_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~16_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~24_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~32_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~40_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~48_combout\);

\operavito|memoriadedados|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~48_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(5));

\operavito|regMDR|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(5));

\operavito|muxescritanoBDR|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[5]~5_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(5))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(5),
	datac => \operavito|regMDR|ALT_INV_output\(5),
	combout => \operavito|muxescritanoBDR|output[5]~5_combout\);

\operavito|bancoReg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[5]~5_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~16_q\);

\operavito|bancoReg|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~48_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~40_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~32_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~24_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~16_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~24_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~32_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~40_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~48_combout\);

\operavito|bancoReg|data_regA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~48_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(5));

\operavito|muxAEntradaULA|output[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[5]~5_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(5) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(5))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(5)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(5),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(5),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[5]~5_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ = ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[6]~6_combout\) # 
-- ((!\operavito|muxAEntradaULA|output[7]~7_combout\) # ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( \operavito|muxBEntradaULA|Mux0~0_combout\ & ( 
-- (!\operavito|muxAEntradaULA|output[7]~7_combout\) # ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) ) # ( \operavito|muxBEntradaULA|Mux1~0_combout\ & ( 
-- !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[7]~7_combout\ & ((!\operavito|muxAEntradaULA|output[6]~6_combout\) # ((!\operavito|muxAEntradaULA|output[5]~5_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) ) 
-- # ( !\operavito|muxBEntradaULA|Mux1~0_combout\ & ( !\operavito|muxBEntradaULA|Mux0~0_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\ & (!\operavito|muxAEntradaULA|output[7]~7_combout\ & 
-- \operavito|muxBEntradaULA|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000110000001110000011110000111110001111110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[7]~7_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[0]~0_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & 
-- ((!\operavito|muxBEntradaULA|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001011100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ = !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ $ (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ $ 
-- (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101110110100010010111011010001001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\);

\operavito|UnLogArit|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~2_combout\ = (\controle|ULAop[2]~2_combout\ & ((\operavito|UnLogArit|Mux10~1_combout\) # (\operavito|UnLogArit|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[2]~2_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~1_combout\,
	combout => \operavito|UnLogArit|Mux10~2_combout\);

\operavito|UnLogArit|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~0_combout\ = ( \controle|WideOr8~combout\ & ( \operavito|UnLogArit|Mux10~0_combout\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & 
-- (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & (\operavito|memInstrucao|output\(6) & \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_WideOr8~combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	combout => \operavito|UnLogArit|Mux11~0_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ $ (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ $ (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ $ 
-- (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\)))) ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ $ (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ $ 
-- (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ $ (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000010010111011010001001011101101001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[2]~2_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~9_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\);

\operavito|UnLogArit|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~1_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\ & ( ((\controle|ULAop[2]~2_combout\ & ((!\operavito|UnLogArit|Mux10~0_combout\) # (\operavito|UnLogArit|Mux10~3_combout\)))) # 
-- (\operavito|muxAEntradaULA|output[1]~1_combout\) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\ & ( (\operavito|muxAEntradaULA|output[1]~1_combout\ & ((!\controle|ULAop[2]~2_combout\) # 
-- ((\operavito|UnLogArit|Mux10~0_combout\ & !\operavito|UnLogArit|Mux10~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100011101010111011101000101010001000111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~1_combout\,
	combout => \operavito|UnLogArit|Mux11~1_combout\);

\operavito|UnLogArit|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~2_combout\ = (\controle|ULAop[3]~1_combout\ & \operavito|UnLogArit|Mux10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	combout => \operavito|UnLogArit|Mux11~2_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|output[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|output\(1) = !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001001101101100100100110110110010010011011011001001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|output\(1));

\operavito|UnLogArit|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~3_combout\ = ( \operavito|UnLogArit|Mux10~5_combout\ & ( \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ & ( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & ((!\operavito|muxBEntradaULA|Mux6~0_combout\) # 
-- (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ (!\operavito|muxAEntradaULA|output[1]~1_combout\)))) # (\operavito|muxBEntradaULA|Mux7~0_combout\ & (((\operavito|muxBEntradaULA|Mux6~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Mux10~5_combout\ & ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ & ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ (((\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\)))) ) ) ) 
-- # ( \operavito|UnLogArit|Mux10~5_combout\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ & ( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (\operavito|muxBEntradaULA|Mux6~0_combout\ & (!\operavito|muxAEntradaULA|output[0]~0_combout\ $ 
-- (!\operavito|muxAEntradaULA|output[1]~1_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Mux10~5_combout\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|Add2~1_sumout\ & ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (!\operavito|muxBEntradaULA|Mux6~0_combout\ 
-- $ (((\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001110011100000000000110000001100011100111001111000001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~1_sumout\,
	combout => \operavito|UnLogArit|Mux11~3_combout\);

\operavito|UnLogArit|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~4_combout\ = (!\controle|ULAop[1]~0_combout\ & (((\operavito|UnLogArit|Mux11~3_combout\)))) # (\controle|ULAop[1]~0_combout\ & (\operavito|UnLogArit|Mux10~5_combout\ & (\operavito|UnLogArit|pSUBTRADOR|G3|output\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output\(1),
	datad => \operavito|UnLogArit|ALT_INV_Mux11~3_combout\,
	combout => \operavito|UnLogArit|Mux11~4_combout\);

\operavito|UnLogArit|Mux11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~5_combout\ = (!\controle|ULAop[3]~1_combout\ & (((\operavito|UnLogArit|Mux11~4_combout\)))) # (\controle|ULAop[3]~1_combout\ & (\operavito|muxBEntradaULA|Mux6~0_combout\ & (!\operavito|UnLogArit|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100000100001101110000010000110111000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \controle|ALT_INV_ULAop[3]~1_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux11~4_combout\,
	combout => \operavito|UnLogArit|Mux11~5_combout\);

\operavito|UnLogArit|Mux11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux11~6_combout\ = ( \operavito|UnLogArit|Mux11~2_combout\ & ( \operavito|UnLogArit|Mux11~5_combout\ ) ) # ( !\operavito|UnLogArit|Mux11~2_combout\ & ( \operavito|UnLogArit|Mux11~5_combout\ ) ) # ( 
-- \operavito|UnLogArit|Mux11~2_combout\ & ( !\operavito|UnLogArit|Mux11~5_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & (!\operavito|UnLogArit|Mux10~2_combout\ & ((\operavito|UnLogArit|Mux11~1_combout\)))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & (((!\operavito|UnLogArit|Mux10~2_combout\ & \operavito|UnLogArit|Mux11~1_combout\)) # (\operavito|UnLogArit|Mux11~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|Mux11~2_combout\ & ( 
-- !\operavito|UnLogArit|Mux11~5_combout\ & ( (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & \operavito|UnLogArit|Mux11~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux11~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux11~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux11~2_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux11~5_combout\,
	combout => \operavito|UnLogArit|Mux11~6_combout\);

\operavito|UnLogArit|output[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(1) = ( \operavito|UnLogArit|output\(1) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux11~6_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(1) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux11~6_combout\ ) ) ) # ( \operavito|UnLogArit|output\(1) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux11~6_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(1),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(1));

\operavito|regSaidaUla|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(1));

\operavito|memoriadedados|memoria~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(1),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~12_q\);

\operavito|memoriadedados|memoria~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(1),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~20_q\);

\operavito|memoriadedados|memoria~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(1),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~28_q\);

\operavito|memoriadedados|memoria~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(1),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~36_q\);

\operavito|memoriadedados|memoria~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~44_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~36_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~28_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~20_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~12_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~20_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~28_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~36_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~44_combout\);

\operavito|memoriadedados|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~44_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(1));

\operavito|regMDR|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(1));

\operavito|muxescritanoBDR|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[1]~1_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(1))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(1),
	datac => \operavito|regMDR|ALT_INV_output\(1),
	combout => \operavito|muxescritanoBDR|output[1]~1_combout\);

\operavito|bancoReg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[1]~1_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~12_q\);

\operavito|bancoReg|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~44_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~36_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~28_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~20_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~12_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~20_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~28_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~36_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~44_combout\);

\operavito|bancoReg|data_regA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~44_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(1));

\operavito|UnLogArit|pMULTIPLICADOR|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\ = ( \controle|WideOr4~0_combout\ & ( (\operavito|regPC|output\(1)) # (\operavito|regPC|output\(0)) ) ) # ( !\controle|WideOr4~0_combout\ & ( (\operavito|bancoReg|data_regA\(1)) # 
-- (\operavito|bancoReg|data_regA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111011101110111011100001111111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(0),
	datab => \operavito|regPC|ALT_INV_output\(1),
	datac => \operavito|bancoReg|ALT_INV_data_regA\(0),
	datad => \operavito|bancoReg|ALT_INV_data_regA\(1),
	datae => \controle|ALT_INV_WideOr4~0_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ = ( \controle|ULAfonteB[1]~0_combout\ & ( (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & \controle|WideOr7~combout\) ) ) # ( !\controle|ULAfonteB[1]~0_combout\ & ( 
-- (\controle|WideOr7~combout\ & (!\operavito|bancoReg|data_regB\(1) $ (!\operavito|bancoReg|data_regB\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000101010100000000001111000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(1),
	datac => \operavito|bancoReg|ALT_INV_data_regB\(2),
	datad => \controle|ALT_INV_WideOr7~combout\,
	datae => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ = (!\operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|Add4~13_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~4_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~13_sumout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Equal7~0_combout\ = (!\operavito|muxBEntradaULA|Mux4~0_combout\) # (\operavito|muxBEntradaULA|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|Equal7~0_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\ = (!\operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|produto~4_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~9_sumout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~4_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ = (!\operavito|muxBEntradaULA|Mux5~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\))) # (\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- (((\operavito|muxBEntradaULA|Mux7~0_combout\ & \operavito|UnLogArit|pMULTIPLICADOR|Add2~9_sumout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|produto~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100111011000010010011101100001001001110110000100100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~9_sumout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~1_combout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|produto~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ = (!\operavito|muxBEntradaULA|Mux7~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\))) # (\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Add0~0_combout\)))) # (\operavito|muxBEntradaULA|Mux7~0_combout\ & (\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|Add2~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010011011000000101001101100000010100110110000001010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~0_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add2~5_sumout\,
	combout => \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~34_cout\ = CARRY(( GND ) + ( GND ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~34_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~30_cout\ = CARRY(( (\controle|WideOr7~combout\ & (\operavito|bancoReg|data_regB\(3) & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\)))) ) + ( GND 
-- ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \operavito|bancoReg|ALT_INV_data_regB\(3),
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~34_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~30_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~26_cout\ = CARRY(( (\operavito|muxAEntradaULA|output[0]~0_combout\ & ((!\controle|WideOr7~combout\) # (\operavito|muxBEntradaULA|Mux7~1_combout\))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~30_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~30_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~26_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~22_cout\ = CARRY(( (!\controle|WideOr7~combout\ & (((\operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\)))) # (\controle|WideOr7~combout\ & ((!\operavito|muxBEntradaULA|Mux7~1_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|produto~10_combout\))) # (\operavito|muxBEntradaULA|Mux7~1_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|produto~9_combout\)))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_WideOr7~combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~1_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~9_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~10_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~26_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~22_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\ = CARRY(( (!\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\))) # 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\)))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\)) # 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\))))) ) + ( GND ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000011010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~1_sumout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~22_cout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\ = SUM(( (!\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\))) # 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)) # 
-- (\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\))))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\ = CARRY(( (!\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & ((\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\))) # (\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)))) # (\operavito|muxBEntradaULA|Mux6~0_combout\ & ((!\operavito|muxBEntradaULA|Mux5~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)) # (\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- ((\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\))))) ) + ( \operavito|muxAEntradaULA|output[0]~0_combout\ ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000011010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~5_sumout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~2_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~18_cout\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~5_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\ ) + ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (((!\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- ((!\operavito|muxAEntradaULA|output[0]~0_combout\) # (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\ = CARRY(( \operavito|UnLogArit|pMULTIPLICADOR|produto~8_combout\ ) + ( !\operavito|muxAEntradaULA|output[1]~1_combout\ $ (((!\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- ((!\operavito|muxAEntradaULA|output[0]~0_combout\) # (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~8_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~2\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~5_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~9_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- ((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\) # (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\ ))
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~10\ = CARRY(( \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ ) + ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- ((!\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\) # (\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~5_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~6\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~9_sumout\,
	cout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~10\);

\operavito|UnLogArit|pMULTIPLICADOR|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\ = SUM(( \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ ) + ( !\operavito|muxAEntradaULA|output[3]~3_combout\ $ ((((!\operavito|muxAEntradaULA|output[2]~2_combout\ & 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add0~1_combout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|Equal7~0_combout\))) ) + ( \operavito|UnLogArit|pMULTIPLICADOR|Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add0~1_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~5_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Equal7~0_combout\,
	cin => \operavito|UnLogArit|pMULTIPLICADOR|Add6~10\,
	sumout => \operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\);

\operavito|UnLogArit|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~0_combout\ = !\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\ $ (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (!\operavito|muxAEntradaULA|output[6]~6_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((!\operavito|muxBEntradaULA|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001110101100010100111010110001010011101011000101001110101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[0]~0_combout\,
	combout => \operavito|UnLogArit|Mux6~0_combout\);

\operavito|UnLogArit|Mux6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~9_combout\ = ( \operavito|UnLogArit|Mux10~3_combout\ & ( \operavito|UnLogArit|Mux6~0_combout\ & ( (\operavito|UnLogArit|Mux11~2_combout\ & ((\controle|ULAop[2]~2_combout\) # (\operavito|muxAEntradaULA|output[6]~6_combout\))) ) ) 
-- ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( \operavito|UnLogArit|Mux6~0_combout\ & ( (\operavito|UnLogArit|Mux11~2_combout\ & (((\controle|ULAop[2]~2_combout\ & !\operavito|UnLogArit|Mux10~0_combout\)) # 
-- (\operavito|muxAEntradaULA|output[6]~6_combout\))) ) ) ) # ( \operavito|UnLogArit|Mux10~3_combout\ & ( !\operavito|UnLogArit|Mux6~0_combout\ & ( (\operavito|UnLogArit|Mux11~2_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & 
-- !\controle|ULAop[2]~2_combout\)) ) ) ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( !\operavito|UnLogArit|Mux6~0_combout\ & ( (\operavito|UnLogArit|Mux11~2_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\ & ((!\controle|ULAop[2]~2_combout\) # 
-- (\operavito|UnLogArit|Mux10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010001000100000001000000010101000100010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux11~2_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux6~0_combout\,
	combout => \operavito|UnLogArit|Mux6~9_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|cout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\ = (!\operavito|muxAEntradaULA|output[5]~5_combout\ & (\operavito|UnLogArit|pSUBTRADOR|G2|output\(5) & \operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\)) # (\operavito|muxAEntradaULA|output[5]~5_combout\ 
-- & ((\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\) # (\operavito|UnLogArit|pSUBTRADOR|G2|output\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(5),
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~2_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\);

\operavito|UnLogArit|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~3_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( !\operavito|muxAEntradaULA|output[6]~6_combout\ $ (!\operavito|muxBEntradaULA|Mux1~0_combout\ $ (((\operavito|muxBEntradaULA|Mux2~0_combout\) # 
-- (\operavito|muxBEntradaULA|Mux3~0_combout\)))) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\ & ( !\operavito|muxAEntradaULA|output[6]~6_combout\ $ (\operavito|muxBEntradaULA|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101011010101001010110101010010101010110101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|Mux6~3_combout\);

\operavito|UnLogArit|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~4_combout\ = (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~4_combout\ & !\operavito|UnLogArit|pSUBTRADOR|G3|cin~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~4_combout\,
	datab => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cin~0_combout\,
	combout => \operavito|UnLogArit|Mux6~4_combout\);

\operavito|UnLogArit|Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~5_combout\ = ( \operavito|UnLogArit|pSOMADOR|cout~1_combout\ & ( !\operavito|muxAEntradaULA|output[6]~6_combout\ $ (!\operavito|muxBEntradaULA|Mux1~0_combout\ $ (((\operavito|muxBEntradaULA|Mux2~0_combout\) # 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\)))) ) ) # ( !\operavito|UnLogArit|pSOMADOR|cout~1_combout\ & ( !\operavito|muxAEntradaULA|output[6]~6_combout\ $ (!\operavito|muxBEntradaULA|Mux1~0_combout\ $ 
-- (((\operavito|muxAEntradaULA|output[5]~5_combout\ & \operavito|muxBEntradaULA|Mux2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001011011001001001100110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datae => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~1_combout\,
	combout => \operavito|UnLogArit|Mux6~5_combout\);

\operavito|UnLogArit|Mux6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~6_combout\ = ( \operavito|UnLogArit|Mux6~4_combout\ & ( \operavito|UnLogArit|Mux6~5_combout\ & ( (!\controle|ULAop[1]~0_combout\ & (!\operavito|UnLogArit|Mux10~5_combout\)) # (\controle|ULAop[1]~0_combout\ & 
-- (\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\ & \operavito|UnLogArit|Mux6~3_combout\))) ) ) ) # ( !\operavito|UnLogArit|Mux6~4_combout\ & ( \operavito|UnLogArit|Mux6~5_combout\ & ( 
-- (!\controle|ULAop[1]~0_combout\ & (!\operavito|UnLogArit|Mux10~5_combout\)) # (\controle|ULAop[1]~0_combout\ & (\operavito|UnLogArit|Mux10~5_combout\ & ((\operavito|UnLogArit|Mux6~3_combout\) # (\operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\)))) ) ) ) 
-- # ( \operavito|UnLogArit|Mux6~4_combout\ & ( !\operavito|UnLogArit|Mux6~5_combout\ & ( (\controle|ULAop[1]~0_combout\ & (\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\ & \operavito|UnLogArit|Mux6~3_combout\))) 
-- ) ) ) # ( !\operavito|UnLogArit|Mux6~4_combout\ & ( !\operavito|UnLogArit|Mux6~5_combout\ & ( (\controle|ULAop[1]~0_combout\ & (\operavito|UnLogArit|Mux10~5_combout\ & ((\operavito|UnLogArit|Mux6~3_combout\) # 
-- (\operavito|UnLogArit|pSUBTRADOR|G3|cout~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000000001000010001001100110011000100010011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~3_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux6~3_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux6~4_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux6~5_combout\,
	combout => \operavito|UnLogArit|Mux6~6_combout\);

\operavito|UnLogArit|Mux6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~7_combout\ = (\operavito|UnLogArit|Mux10~4_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[6]~6_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((\operavito|muxBEntradaULA|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010100110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[6]~6_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	combout => \operavito|UnLogArit|Mux6~7_combout\);

\operavito|UnLogArit|Mux6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~10_combout\ = ( \operavito|UnLogArit|Mux10~3_combout\ & ( \operavito|UnLogArit|Mux6~7_combout\ & ( (!\controle|ULAop[3]~1_combout\ & \operavito|UnLogArit|Mux6~6_combout\) ) ) ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( 
-- \operavito|UnLogArit|Mux6~7_combout\ & ( (!\controle|ULAop[3]~1_combout\ & (\operavito|UnLogArit|Mux6~6_combout\)) # (\controle|ULAop[3]~1_combout\ & (((\controle|ULAop[2]~2_combout\ & \operavito|UnLogArit|Mux10~0_combout\)))) ) ) ) # ( 
-- \operavito|UnLogArit|Mux10~3_combout\ & ( !\operavito|UnLogArit|Mux6~7_combout\ & ( (!\controle|ULAop[3]~1_combout\ & \operavito|UnLogArit|Mux6~6_combout\) ) ) ) # ( !\operavito|UnLogArit|Mux10~3_combout\ & ( !\operavito|UnLogArit|Mux6~7_combout\ & ( 
-- (!\controle|ULAop[3]~1_combout\ & \operavito|UnLogArit|Mux6~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001001110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux6~6_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux6~7_combout\,
	combout => \operavito|UnLogArit|Mux6~10_combout\);

\operavito|UnLogArit|Mux6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~11_combout\ = ( \operavito|UnLogArit|Mux6~9_combout\ & ( !\operavito|UnLogArit|Mux6~10_combout\ & ( (\operavito|UnLogArit|Mux10~2_combout\ & ((!\operavito|muxBEntradaULA|Mux1~0_combout\) # ((!\controle|ULAop[3]~1_combout\) # 
-- (\operavito|UnLogArit|Mux10~4_combout\)))) ) ) ) # ( !\operavito|UnLogArit|Mux6~9_combout\ & ( !\operavito|UnLogArit|Mux6~10_combout\ & ( (!\operavito|muxBEntradaULA|Mux1~0_combout\) # ((!\controle|ULAop[3]~1_combout\) # 
-- (\operavito|UnLogArit|Mux10~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101111000000001110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux1~0_combout\,
	datab => \controle|ALT_INV_ULAop[3]~1_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~2_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux6~9_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux6~10_combout\,
	combout => \operavito|UnLogArit|Mux6~11_combout\);

\operavito|UnLogArit|Mux6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux6~8_combout\ = ( \operavito|UnLogArit|Mux6~2_combout\ & ( \operavito|UnLogArit|Mux6~11_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((!\operavito|UnLogArit|Mux7~1_combout\ & ((\operavito|UnLogArit|Mux6~1_combout\))) # 
-- (\operavito|UnLogArit|Mux7~1_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add6~13_sumout\)))) ) ) ) # ( \operavito|UnLogArit|Mux6~2_combout\ & ( !\operavito|UnLogArit|Mux6~11_combout\ ) ) # ( !\operavito|UnLogArit|Mux6~2_combout\ & ( 
-- !\operavito|UnLogArit|Mux6~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~13_sumout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux6~1_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux6~2_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux6~11_combout\,
	combout => \operavito|UnLogArit|Mux6~8_combout\);

\operavito|UnLogArit|output[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(6) = ( \operavito|UnLogArit|output\(6) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux6~8_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(6) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux6~8_combout\ ) ) ) # ( \operavito|UnLogArit|output\(6) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux6~8_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(6),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(6));

\operavito|muxPCfonte|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux1~0_combout\ = (!\controle|atual_estado.s8~q\ & (!\controle|atual_estado.s9~q\ & \operavito|UnLogArit|output\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|UnLogArit|ALT_INV_output\(6),
	combout => \operavito|muxPCfonte|Mux1~0_combout\);

\operavito|regPC|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux1~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(6));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000ABE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\operavito|muxBEntradaULA|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux7~0_combout\ = ( \controle|WideOr7~combout\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (((!\operavito|bancoReg|data_regB\(0))))) # 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & ((!\controle|atual_estado.s6~q\ & ((!\operavito|bancoReg|data_regB\(0)))) # (\controle|atual_estado.s6~q\ & 
-- (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001110001000000000000000001111000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datac => \operavito|bancoReg|ALT_INV_data_regB\(0),
	datad => \controle|ALT_INV_atual_estado.s6~q\,
	datae => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux7~0_combout\);

\controle|ULAop[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|ULAop[0]~3_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & \controle|WideOr8~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \controle|ALT_INV_WideOr8~combout\,
	combout => \controle|ULAop[0]~3_combout\);

\operavito|UnLogArit|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux0~0_combout\ = (!\controle|ULAop[1]~0_combout\ & (!\controle|ULAop[0]~3_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ $ 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000100000000000100010000000000010001000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \controle|ALT_INV_ULAop[0]~3_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~5_combout\,
	combout => \operavito|UnLogArit|Mux0~0_combout\);

\operavito|UnLogArit|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux0~1_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & ( \operavito|UnLogArit|Mux0~0_combout\ & ( ((!\operavito|muxBEntradaULA|Mux7~0_combout\ & ((!\controle|ULAop[1]~0_combout\) # 
-- (!\controle|ULAop[0]~3_combout\))) # (\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\controle|ULAop[1]~0_combout\ & !\controle|ULAop[0]~3_combout\))) # (\operavito|UnLogArit|Mux10~0_combout\) ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & ( \operavito|UnLogArit|Mux0~0_combout\ & ( ((!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\controle|ULAop[1]~0_combout\ $ (!\controle|ULAop[0]~3_combout\)))) # 
-- (\operavito|UnLogArit|Mux10~0_combout\) ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & ( !\operavito|UnLogArit|Mux0~0_combout\ & ( (!\controle|ULAop[1]~0_combout\ & ((!\controle|ULAop[0]~3_combout\ & 
-- ((!\operavito|UnLogArit|Mux10~0_combout\))) # (\controle|ULAop[0]~3_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\)))) # (\controle|ULAop[1]~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\controle|ULAop[0]~3_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~0_combout\ & ( !\operavito|UnLogArit|Mux0~0_combout\ & ( (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (!\controle|ULAop[1]~0_combout\ $ (!\controle|ULAop[0]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000111010000010100000101000111111111110100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datab => \controle|ALT_INV_ULAop[1]~0_combout\,
	datac => \controle|ALT_INV_ULAop[0]~3_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~0_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux0~0_combout\,
	combout => \operavito|UnLogArit|Mux0~1_combout\);

\operavito|UnLogArit|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux0~2_combout\ = ( \controle|ULAop[2]~2_combout\ & ( \operavito|UnLogArit|Mux0~1_combout\ & ( ((!\controle|ULAop[1]~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & \operavito|muxAEntradaULA|output[0]~0_combout\))) # 
-- (\controle|ULAop[3]~1_combout\) ) ) ) # ( !\controle|ULAop[2]~2_combout\ & ( \operavito|UnLogArit|Mux0~1_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((!\operavito|muxBEntradaULA|Mux7~0_combout\ $ (\operavito|muxAEntradaULA|output[0]~0_combout\)))) # 
-- (\controle|ULAop[3]~1_combout\ & ((!\controle|ULAop[1]~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\)) # (\controle|ULAop[1]~0_combout\ & ((\operavito|muxAEntradaULA|output[0]~0_combout\))))) ) ) ) # ( \controle|ULAop[2]~2_combout\ & ( 
-- !\operavito|UnLogArit|Mux0~1_combout\ & ( (!\controle|ULAop[1]~0_combout\ & (!\operavito|muxBEntradaULA|Mux7~0_combout\ & (\operavito|muxAEntradaULA|output[0]~0_combout\ & !\controle|ULAop[3]~1_combout\))) ) ) ) # ( !\controle|ULAop[2]~2_combout\ & ( 
-- !\operavito|UnLogArit|Mux0~1_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((!\operavito|muxBEntradaULA|Mux7~0_combout\ $ (\operavito|muxAEntradaULA|output[0]~0_combout\)))) # (\controle|ULAop[3]~1_combout\ & ((!\controle|ULAop[1]~0_combout\ & 
-- (!\operavito|muxBEntradaULA|Mux7~0_combout\)) # (\controle|ULAop[1]~0_combout\ & ((\operavito|muxAEntradaULA|output[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001110001101000010000000000011000011100011010000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datad => \controle|ALT_INV_ULAop[3]~1_combout\,
	datae => \controle|ALT_INV_ULAop[2]~2_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux0~1_combout\,
	combout => \operavito|UnLogArit|Mux0~2_combout\);

\operavito|UnLogArit|output[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(0) = ( \operavito|UnLogArit|output\(0) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux0~2_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(0) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux0~2_combout\ ) ) ) # ( \operavito|UnLogArit|output\(0) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux0~2_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(0),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(0));

\operavito|regSaidaUla|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(0));

\operavito|memoriadedados|memoria~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(0),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~11_q\);

\operavito|memoriadedados|memoria~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(0),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~19_q\);

\operavito|memoriadedados|memoria~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(0),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~27_q\);

\operavito|memoriadedados|memoria~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(0),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~35_q\);

\operavito|memoriadedados|memoria~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~43_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~35_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~27_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~19_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~11_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~19_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~27_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~35_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~43_combout\);

\operavito|memoriadedados|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~43_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(0));

\operavito|regMDR|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(0));

\operavito|muxescritanoBDR|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[0]~0_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(0))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(0),
	datac => \operavito|regMDR|ALT_INV_output\(0),
	combout => \operavito|muxescritanoBDR|output[0]~0_combout\);

\operavito|bancoReg|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[0]~0_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~11_q\);

\operavito|bancoReg|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~43_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~35_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~27_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~19_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~11_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~19_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~27_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~35_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~43_combout\);

\operavito|bancoReg|data_regA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~43_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(0));

\operavito|muxAEntradaULA|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[0]~0_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(0) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(0))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(0)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(0),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(0),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[0]~0_combout\);

\operavito|UnLogArit|pSOMADOR|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADOR|cout~0_combout\ = ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ & ( (((\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\)) # 
-- (\operavito|muxAEntradaULA|output[2]~2_combout\)) # (\operavito|muxAEntradaULA|output[1]~1_combout\) ) ) ) # ( !\operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ & ( ((\operavito|muxAEntradaULA|output[0]~0_combout\ & 
-- (\operavito|muxAEntradaULA|output[1]~1_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\))) # (\operavito|muxAEntradaULA|output[2]~2_combout\) ) ) ) # ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( !\operavito|muxBEntradaULA|Mux5~0_combout\ & ( 
-- (\operavito|muxAEntradaULA|output[2]~2_combout\ & (((\operavito|muxAEntradaULA|output[0]~0_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\)) # (\operavito|muxAEntradaULA|output[1]~1_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux6~0_combout\ & 
-- ( !\operavito|muxBEntradaULA|Mux5~0_combout\ & ( (\operavito|muxAEntradaULA|output[0]~0_combout\ & (\operavito|muxAEntradaULA|output[1]~1_combout\ & (\operavito|muxAEntradaULA|output[2]~2_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000001110000001100011111000011110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	combout => \operavito|UnLogArit|pSOMADOR|cout~0_combout\);

\operavito|UnLogArit|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~3_combout\ = ( \controle|WideOr8~combout\ & ( (!\operavito|memInstrucao|output\(6) & (((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)))) # (\operavito|memInstrucao|output\(6) & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ & (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ $ (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) ) # ( 
-- !\controle|WideOr8~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110000001100011011111111111111111100000011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_WideOr8~combout\,
	combout => \operavito|UnLogArit|Mux7~3_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ = ((\operavito|UnLogArit|pSOMADORFLUTUANTE|C[3]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~2_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|C~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101110101011101010111010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[3]~1_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~2_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\);

\operavito|UnLogArit|Mux10~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~11_combout\ = (\controle|ULAop[2]~2_combout\ & ((!\operavito|UnLogArit|Mux10~0_combout\) # (\operavito|UnLogArit|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010101000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[2]~2_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	combout => \operavito|UnLogArit|Mux10~11_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ = (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~4_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|C[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1) = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ ) ) ) # ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~5_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~14_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[0]~15_combout\ & ( 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[0]~1_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000100000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[0]~1_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~3_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~5_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~14_combout\,
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[0]~15_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1));

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~2_combout\ & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~1_combout\ $ 
-- (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|LessThan1~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010110001010011010100110101001110101100010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_LessThan1~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~1_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~2_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\);

\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1) & ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) # ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & 
-- !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\)))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ & 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1) & ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\) # 
-- ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\) # (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\)))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\) # (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\)))) ) ) ) # ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1) & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ & ((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\)))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\)) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C\(1) & ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~2_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\ & (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[2]~2_combout\ & (((\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[1]~3_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[1]~13_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomenor[2]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000101110111011111101110111010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[2]~2_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[2]~9_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[1]~3_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomenor[1]~13_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C\(1),
	dataf => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~2_combout\,
	combout => \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\);

\operavito|UnLogArit|Mux9~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux9~6_combout\ = ( !\operavito|UnLogArit|Mux10~11_combout\ & ( ((!\operavito|UnLogArit|Mux10~2_combout\ & (((\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|UnLogArit|Mux10~2_combout\ & 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\))) ) ) # ( \operavito|UnLogArit|Mux10~11_combout\ & ( (!\operavito|UnLogArit|Mux10~2_combout\ & (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\ $ 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|process_0~0_combout\ $ ((\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011010010001000010011001111110011110100100010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[4]~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~2_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_process_0~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~3_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~11_combout\,
	dataf => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datag => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~3_combout\,
	combout => \operavito|UnLogArit|Mux9~6_combout\);

\operavito|UnLogArit|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~0_combout\ = ( \controle|ULAop[1]~0_combout\ & ( \controle|ULAop[2]~2_combout\ ) ) # ( !\controle|ULAop[1]~0_combout\ & ( \controle|ULAop[2]~2_combout\ & ( (!\controle|WideOr7~combout\) # ((!\operavito|bancoReg|data_regB\(2) $ 
-- (\operavito|bancoReg|data_regB\(3))) # (\controle|ULAfonteB[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111001111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_data_regB\(2),
	datab => \operavito|bancoReg|ALT_INV_data_regB\(3),
	datac => \controle|ALT_INV_WideOr7~combout\,
	datad => \controle|ALT_INV_ULAfonteB[1]~0_combout\,
	datae => \controle|ALT_INV_ULAop[1]~0_combout\,
	dataf => \controle|ALT_INV_ULAop[2]~2_combout\,
	combout => \operavito|UnLogArit|Mux7~0_combout\);

\operavito|UnLogArit|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~2_combout\ = (\controle|ULAop[2]~2_combout\ & ((\operavito|UnLogArit|Mux7~1_combout\) # (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	combout => \operavito|UnLogArit|Mux7~2_combout\);

\operavito|UnLogArit|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux9~1_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & (((\operavito|muxAEntradaULA|output[3]~3_combout\)))) # 
-- (\operavito|UnLogArit|Mux7~0_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((!\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & ( \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( 
-- (!\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|UnLogArit|Mux7~0_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((!\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( 
-- \operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & ( !\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|UnLogArit|Mux7~0_combout\ & 
-- (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((!\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( !\operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & ( !\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & 
-- (((\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|UnLogArit|Mux7~0_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((!\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010111110101111100001010010111110000101000001010010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux7~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datad => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(3),
	dataf => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~1_combout\,
	combout => \operavito|UnLogArit|Mux9~1_combout\);

\operavito|UnLogArit|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux9~0_combout\ = ( \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ & ( \operavito|UnLogArit|Mux9~1_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|UnLogArit|Mux7~2_combout\)) # 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\))) # (\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|UnLogArit|Mux7~2_combout\ & \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)))) ) ) ) # ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ & ( \operavito|UnLogArit|Mux9~1_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|UnLogArit|Mux7~2_combout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\))) # 
-- (\operavito|UnLogArit|Mux7~0_combout\ & (((!\operavito|UnLogArit|Mux7~2_combout\ & \operavito|UnLogArit|pMULTIPLICADOR|Add4~5_sumout\)))) ) ) ) # ( \operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ & ( !\operavito|UnLogArit|Mux9~1_combout\ & ( 
-- (!\operavito|UnLogArit|Mux7~0_combout\ & (\operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\ & \operavito|UnLogArit|Mux7~2_combout\)) # (\operavito|UnLogArit|Mux7~0_combout\ & ((!\operavito|UnLogArit|Mux7~2_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|produto~2_combout\ & ( !\operavito|UnLogArit|Mux9~1_combout\ & ( (\operavito|UnLogArit|pMULTIPLICADOR|Add6~1_sumout\ & (!\operavito|UnLogArit|Mux7~0_combout\ & \operavito|UnLogArit|Mux7~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100001101000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~1_sumout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux7~0_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux7~2_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~5_sumout\,
	datae => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~2_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux9~1_combout\,
	combout => \operavito|UnLogArit|Mux9~0_combout\);

\operavito|UnLogArit|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux9~2_combout\ = ( !\controle|ULAop[3]~1_combout\ & ( (!\operavito|UnLogArit|Mux7~3_combout\ & ((((\operavito|UnLogArit|Mux9~0_combout\))))) # (\operavito|UnLogArit|Mux7~3_combout\ & (!\operavito|UnLogArit|pSOMADOR|cout~0_combout\ $ 
-- (!\operavito|muxAEntradaULA|output[3]~3_combout\ $ ((\operavito|muxBEntradaULA|Mux4~0_combout\))))) ) ) # ( \controle|ULAop[3]~1_combout\ & ( ((!\operavito|UnLogArit|Mux7~3_combout\ & (\operavito|UnLogArit|Mux9~6_combout\)) # 
-- (\operavito|UnLogArit|Mux7~3_combout\ & (((\operavito|muxBEntradaULA|Mux4~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001001000100001000011000011111111011110111011010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux7~3_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux9~6_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datae => \controle|ALT_INV_ULAop[3]~1_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux9~0_combout\,
	datag => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	combout => \operavito|UnLogArit|Mux9~2_combout\);

\operavito|UnLogArit|output[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(3) = ( \operavito|UnLogArit|output\(3) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux9~2_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(3) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux9~2_combout\ ) ) ) # ( \operavito|UnLogArit|output\(3) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux9~2_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(3),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(3));

\operavito|regSaidaUla|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(3));

\operavito|memoriadedados|memoria~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(3),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~14_q\);

\operavito|memoriadedados|memoria~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(3),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~22_q\);

\operavito|memoriadedados|memoria~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(3),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~30_q\);

\operavito|memoriadedados|memoria~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(3),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~38_q\);

\operavito|memoriadedados|memoria~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~46_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~38_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~30_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~22_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~14_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~22_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~30_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~38_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~46_combout\);

\operavito|memoriadedados|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~46_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(3));

\operavito|regMDR|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(3));

\operavito|muxescritanoBDR|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[3]~3_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(3))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(3),
	datac => \operavito|regMDR|ALT_INV_output\(3),
	combout => \operavito|muxescritanoBDR|output[3]~3_combout\);

\operavito|bancoReg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[3]~3_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~14_q\);

\operavito|bancoReg|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~46_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~38_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( \operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~30_q\ ) ) ) # ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( 
-- !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~22_q\ ) ) ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\ & ( !\operavito|memInstrucao|output\(3) & ( \operavito|bancoReg|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~14_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~22_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~30_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~38_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	dataf => \operavito|memInstrucao|ALT_INV_output\(3),
	combout => \operavito|bancoReg|registrador~46_combout\);

\operavito|bancoReg|data_regA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~46_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regA\(3));

\operavito|muxAEntradaULA|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxAEntradaULA|output[3]~3_combout\ = ( \controle|atual_estado.s6~q\ & ( \operavito|bancoReg|data_regA\(3) ) ) # ( !\controle|atual_estado.s6~q\ & ( (!\controle|atual_estado.s2~q\ & ((!\controle|atual_estado.s4~q\ & 
-- (\operavito|regPC|output\(3))) # (\controle|atual_estado.s4~q\ & ((\operavito|bancoReg|data_regA\(3)))))) # (\controle|atual_estado.s2~q\ & (((\operavito|bancoReg|data_regA\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110011001100110011001101010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(3),
	datab => \operavito|bancoReg|ALT_INV_data_regA\(3),
	datac => \controle|ALT_INV_atual_estado.s2~q\,
	datad => \controle|ALT_INV_atual_estado.s4~q\,
	datae => \controle|ALT_INV_atual_estado.s6~q\,
	combout => \operavito|muxAEntradaULA|output[3]~3_combout\);

\operavito|UnLogArit|pSOMADOR|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADOR|cout~1_combout\ = ( \operavito|UnLogArit|pSOMADOR|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (\operavito|muxBEntradaULA|Mux3~0_combout\ & ((\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- (\operavito|muxAEntradaULA|output[3]~3_combout\)))) # (\operavito|muxAEntradaULA|output[4]~4_combout\ & (((\operavito|muxBEntradaULA|Mux3~0_combout\) # (\operavito|muxBEntradaULA|Mux4~0_combout\)) # (\operavito|muxAEntradaULA|output[3]~3_combout\))) ) ) # 
-- ( !\operavito|UnLogArit|pSOMADOR|cout~0_combout\ & ( (!\operavito|muxAEntradaULA|output[4]~4_combout\ & (\operavito|muxAEntradaULA|output[3]~3_combout\ & (\operavito|muxBEntradaULA|Mux4~0_combout\ & \operavito|muxBEntradaULA|Mux3~0_combout\))) # 
-- (\operavito|muxAEntradaULA|output[4]~4_combout\ & (((\operavito|muxAEntradaULA|output[3]~3_combout\ & \operavito|muxBEntradaULA|Mux4~0_combout\)) # (\operavito|muxBEntradaULA|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000100110111111100000001001101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datae => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSOMADOR|cout~1_combout\);

\operavito|UnLogArit|Mux7~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~10_combout\ = ( !\controle|ULAop[3]~1_combout\ & ( ((!\operavito|UnLogArit|Mux7~3_combout\) # (!\operavito|UnLogArit|pSOMADOR|cout~1_combout\ $ (!\operavito|muxAEntradaULA|output[5]~5_combout\ $ 
-- (\operavito|muxBEntradaULA|Mux2~0_combout\)))) ) ) # ( \controle|ULAop[3]~1_combout\ & ( ((!\operavito|UnLogArit|Mux7~3_combout\ & (!\operavito|UnLogArit|Mux10~3_combout\ & (\operavito|UnLogArit|Mux10~0_combout\))) # (\operavito|UnLogArit|Mux7~3_combout\ 
-- & (((\operavito|muxBEntradaULA|Mux2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111101011010000011000000000011111111101001010000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~1_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux7~3_combout\,
	datae => \controle|ALT_INV_ULAop[3]~1_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux2~0_combout\,
	datag => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	combout => \operavito|UnLogArit|Mux7~10_combout\);

\operavito|UnLogArit|Mux7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~5_combout\ = ( \operavito|UnLogArit|Mux7~2_combout\ & ( \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ & ( !\operavito|UnLogArit|Mux7~0_combout\ ) ) ) # ( !\operavito|UnLogArit|Mux7~2_combout\ & ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ & ( (!\operavito|muxAEntradaULA|output[5]~5_combout\ $ (!\operavito|UnLogArit|pSUBTRADOR|G2|output\(5) $ (\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\))) # (\operavito|UnLogArit|Mux7~0_combout\) 
-- ) ) ) # ( \operavito|UnLogArit|Mux7~2_combout\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ & ( !\operavito|UnLogArit|Mux7~0_combout\ ) ) ) # ( !\operavito|UnLogArit|Mux7~2_combout\ & ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|produto~5_combout\ & ( (!\operavito|UnLogArit|Mux7~0_combout\ & (!\operavito|muxAEntradaULA|output[5]~5_combout\ $ (!\operavito|UnLogArit|pSUBTRADOR|G2|output\(5) $ 
-- (\operavito|UnLogArit|pSUBTRADOR|G3|cout~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000000111111110000000001101001111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(5),
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~2_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux7~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux7~2_combout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~5_combout\,
	combout => \operavito|UnLogArit|Mux7~5_combout\);

\operavito|UnLogArit|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~4_combout\ = ( \operavito|UnLogArit|Mux10~1_combout\ & ( \operavito|UnLogArit|Mux7~10_combout\ & ( (!\controle|ULAop[2]~2_combout\ & (\operavito|muxAEntradaULA|output[5]~5_combout\)) # (\controle|ULAop[2]~2_combout\ & 
-- ((\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|Mux10~1_combout\ & ( \operavito|UnLogArit|Mux7~10_combout\ & ( (!\controle|ULAop[2]~2_combout\ & (\operavito|muxAEntradaULA|output[5]~5_combout\)) # 
-- (\controle|ULAop[2]~2_combout\ & (((!\operavito|UnLogArit|Mux10~0_combout\) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\)))) ) ) ) # ( \operavito|UnLogArit|Mux10~1_combout\ & ( !\operavito|UnLogArit|Mux7~10_combout\ & ( 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\ & !\controle|ULAop[2]~2_combout\) ) ) ) # ( !\operavito|UnLogArit|Mux10~1_combout\ & ( !\operavito|UnLogArit|Mux7~10_combout\ & ( (!\controle|ULAop[2]~2_combout\ & 
-- (\operavito|muxAEntradaULA|output[5]~5_combout\)) # (\controle|ULAop[2]~2_combout\ & (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemaior[0]~0_combout\ & !\operavito|UnLogArit|Mux10~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000100010001000100010001110111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[5]~5_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemaior[0]~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~1_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux7~10_combout\,
	combout => \operavito|UnLogArit|Mux7~4_combout\);

\operavito|UnLogArit|Mux7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~6_combout\ = ( !\controle|ULAop[3]~1_combout\ & ( (!\operavito|UnLogArit|Mux7~3_combout\ & (((\operavito|UnLogArit|Mux7~5_combout\ & ((!\operavito|UnLogArit|Mux7~2_combout\) # 
-- (\operavito|UnLogArit|pMULTIPLICADOR|Add6~9_sumout\)))))) # (\operavito|UnLogArit|Mux7~3_combout\ & (\operavito|UnLogArit|Mux7~10_combout\)) ) ) # ( \controle|ULAop[3]~1_combout\ & ( (((!\operavito|UnLogArit|Mux7~3_combout\ & 
-- ((\operavito|UnLogArit|Mux7~4_combout\))) # (\operavito|UnLogArit|Mux7~3_combout\ & (\operavito|UnLogArit|Mux7~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011000000110011000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux7~10_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux7~5_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux7~4_combout\,
	datad => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~9_sumout\,
	datae => \controle|ALT_INV_ULAop[3]~1_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux7~3_combout\,
	datag => \operavito|UnLogArit|ALT_INV_Mux7~2_combout\,
	combout => \operavito|UnLogArit|Mux7~6_combout\);

\operavito|UnLogArit|output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(5) = ( \operavito|UnLogArit|output\(5) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux7~6_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(5) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux7~6_combout\ ) ) ) # ( \operavito|UnLogArit|output\(5) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux7~6_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(5),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(5));

\operavito|muxPCfonte|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux2~0_combout\ = (!\controle|atual_estado.s8~q\ & (!\controle|atual_estado.s9~q\ & \operavito|UnLogArit|output\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|UnLogArit|ALT_INV_output\(5),
	combout => \operavito|muxPCfonte|Mux2~0_combout\);

\operavito|regPC|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux2~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(5));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "00000000000000000000000000000000000000000000000000000000000008A2",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\controle|prox_estado.s2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s2~0_combout\ = ( \controle|atual_estado.s1~q\ & ( (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & 
-- (!\operavito|memInstrucao|output\(6) & \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|prox_estado.s2~0_combout\);

\controle|atual_estado.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s2~q\);

\controle|atual_estado.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|atual_estado.s2~q\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s3~q\);

\operavito|UnLogArit|Mux10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~6_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\ & ( ((\controle|ULAop[2]~2_combout\ & ((!\operavito|UnLogArit|Mux10~0_combout\) # (\operavito|UnLogArit|Mux10~3_combout\)))) # 
-- (\operavito|muxAEntradaULA|output[2]~2_combout\) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~3_combout\ & ( (\operavito|muxAEntradaULA|output[2]~2_combout\ & ((!\controle|ULAop[2]~2_combout\) # 
-- ((\operavito|UnLogArit|Mux10~0_combout\ & !\operavito|UnLogArit|Mux10~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000100011101010111011101000101010001000111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~0_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~3_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~3_combout\,
	combout => \operavito|UnLogArit|Mux10~6_combout\);

\operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0_combout\ = !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (!\operavito|muxBEntradaULA|Mux5~0_combout\ $ (((!\operavito|muxBEntradaULA|Mux7~0_combout\) # (\operavito|muxBEntradaULA|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101001100101100110100110010110011010011001011001101001100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0_combout\);

\operavito|UnLogArit|Mux10~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~7_combout\ = (\controle|ULAop[1]~0_combout\ & (\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~0_combout\ $ (\operavito|UnLogArit|pSUBTRADOR|G3|output[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000001000100000000000100010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~0_combout\,
	datad => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[2]~0_combout\,
	combout => \operavito|UnLogArit|Mux10~7_combout\);

\operavito|UnLogArit|pSOMADOR|output[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADOR|output\(2) = ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ & ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ ((((\operavito|muxAEntradaULA|output[0]~0_combout\ & 
-- !\operavito|muxBEntradaULA|Mux7~0_combout\)) # (\operavito|muxAEntradaULA|output[1]~1_combout\))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux5~0_combout\ & ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ 
-- (((\operavito|muxAEntradaULA|output[0]~0_combout\ & (\operavito|muxAEntradaULA|output[1]~1_combout\ & !\operavito|muxBEntradaULA|Mux7~0_combout\)))) ) ) ) # ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( !\operavito|muxBEntradaULA|Mux5~0_combout\ & ( 
-- !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|muxAEntradaULA|output[1]~1_combout\ & ((!\operavito|muxAEntradaULA|output[0]~0_combout\) # (\operavito|muxBEntradaULA|Mux7~0_combout\))))) ) ) ) # ( 
-- !\operavito|muxBEntradaULA|Mux6~0_combout\ & ( !\operavito|muxBEntradaULA|Mux5~0_combout\ & ( !\operavito|muxAEntradaULA|output[2]~2_combout\ $ (((!\operavito|muxAEntradaULA|output[0]~0_combout\) # ((!\operavito|muxAEntradaULA|output[1]~1_combout\) # 
-- (\operavito|muxBEntradaULA|Mux7~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000001111011110000011110011100001111100001000011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[0]~0_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[1]~1_combout\,
	datac => \operavito|muxAEntradaULA|ALT_INV_output[2]~2_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux7~0_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	combout => \operavito|UnLogArit|pSOMADOR|output\(2));

\operavito|UnLogArit|Mux10~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~8_combout\ = ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ & ( \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ & ( (\operavito|UnLogArit|pSOMADOR|output\(2)) # (\operavito|UnLogArit|Mux10~5_combout\) ) ) ) # ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ & ( \operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ & ( (!\operavito|UnLogArit|Mux10~5_combout\ & (((\operavito|UnLogArit|pSOMADOR|output\(2))))) # (\operavito|UnLogArit|Mux10~5_combout\ & 
-- (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( \operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ & ( 
-- (!\operavito|UnLogArit|Mux10~5_combout\ & (((\operavito|UnLogArit|pSOMADOR|output\(2))))) # (\operavito|UnLogArit|Mux10~5_combout\ & (!\operavito|muxBEntradaULA|Mux6~0_combout\ $ ((!\operavito|muxBEntradaULA|Mux5~0_combout\)))) ) ) ) # ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|Add4~1_sumout\ & ( !\operavito|UnLogArit|pMULTIPLICADOR|produto~0_combout\ & ( (!\operavito|UnLogArit|Mux10~5_combout\ & \operavito|UnLogArit|pSOMADOR|output\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000001101111011000001001111110010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux10~5_combout\,
	datad => \operavito|UnLogArit|pSOMADOR|ALT_INV_output\(2),
	datae => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~1_sumout\,
	dataf => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~0_combout\,
	combout => \operavito|UnLogArit|Mux10~8_combout\);

\operavito|UnLogArit|Mux10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~9_combout\ = ( \operavito|UnLogArit|Mux10~7_combout\ & ( \operavito|UnLogArit|Mux10~8_combout\ & ( (!\controle|ULAop[3]~1_combout\) # ((\operavito|muxBEntradaULA|Mux5~0_combout\ & !\operavito|UnLogArit|Mux10~4_combout\)) ) ) ) # 
-- ( !\operavito|UnLogArit|Mux10~7_combout\ & ( \operavito|UnLogArit|Mux10~8_combout\ & ( (!\controle|ULAop[3]~1_combout\ & (((!\controle|ULAop[1]~0_combout\)))) # (\controle|ULAop[3]~1_combout\ & (\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- ((!\operavito|UnLogArit|Mux10~4_combout\)))) ) ) ) # ( \operavito|UnLogArit|Mux10~7_combout\ & ( !\operavito|UnLogArit|Mux10~8_combout\ & ( (!\controle|ULAop[3]~1_combout\) # ((\operavito|muxBEntradaULA|Mux5~0_combout\ & 
-- !\operavito|UnLogArit|Mux10~4_combout\)) ) ) ) # ( !\operavito|UnLogArit|Mux10~7_combout\ & ( !\operavito|UnLogArit|Mux10~8_combout\ & ( (\operavito|muxBEntradaULA|Mux5~0_combout\ & (\controle|ULAop[3]~1_combout\ & !\operavito|UnLogArit|Mux10~4_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111101011111000011000101110000001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datab => \controle|ALT_INV_ULAop[1]~0_combout\,
	datac => \controle|ALT_INV_ULAop[3]~1_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux10~4_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~7_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux10~8_combout\,
	combout => \operavito|UnLogArit|Mux10~9_combout\);

\operavito|UnLogArit|Mux10~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux10~10_combout\ = ( \operavito|UnLogArit|Mux10~6_combout\ & ( \operavito|UnLogArit|Mux10~9_combout\ ) ) # ( !\operavito|UnLogArit|Mux10~6_combout\ & ( \operavito|UnLogArit|Mux10~9_combout\ ) ) # ( 
-- \operavito|UnLogArit|Mux10~6_combout\ & ( !\operavito|UnLogArit|Mux10~9_combout\ & ( (!\operavito|UnLogArit|Mux10~2_combout\ & (((\operavito|UnLogArit|Mux11~0_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\)) # 
-- (\operavito|UnLogArit|Mux11~2_combout\))) # (\operavito|UnLogArit|Mux10~2_combout\ & (\operavito|UnLogArit|Mux11~0_combout\ & (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\))) ) ) ) # ( !\operavito|UnLogArit|Mux10~6_combout\ & ( 
-- !\operavito|UnLogArit|Mux10~9_combout\ & ( (\operavito|UnLogArit|Mux11~0_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandoresult~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000111010101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux10~2_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux11~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandoresult~1_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux11~2_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux10~6_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux10~9_combout\,
	combout => \operavito|UnLogArit|Mux10~10_combout\);

\operavito|UnLogArit|output[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(2) = ( \operavito|UnLogArit|output\(2) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux10~10_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(2) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux10~10_combout\ ) ) ) # ( \operavito|UnLogArit|output\(2) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux10~10_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(2),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(2));

\operavito|regSaidaUla|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|UnLogArit|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regSaidaUla|output\(2));

\operavito|memoriadedados|memoria~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(2),
	ena => \operavito|memoriadedados|memoria~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~13_q\);

\operavito|memoriadedados|memoria~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(2),
	ena => \operavito|memoriadedados|memoria~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~21_q\);

\operavito|memoriadedados|memoria~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(2),
	ena => \operavito|memoriadedados|memoria~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~29_q\);

\operavito|memoriadedados|memoria~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|regSaidaUla|output\(2),
	ena => \operavito|memoriadedados|memoria~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|memoria~37_q\);

\operavito|memoriadedados|memoria~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memoriadedados|memoria~45_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~37_q\ ) ) 
-- ) # ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~29_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~21_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|memoriadedados|memoria~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memoriadedados|ALT_INV_memoria~13_q\,
	datab => \operavito|memoriadedados|ALT_INV_memoria~21_q\,
	datac => \operavito|memoriadedados|ALT_INV_memoria~29_q\,
	datad => \operavito|memoriadedados|ALT_INV_memoria~37_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|memoriadedados|memoria~45_combout\);

\operavito|memoriadedados|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memoriadedados|memoria~45_combout\,
	ena => \controle|ALT_INV_atual_estado.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memoriadedados|dataout\(2));

\operavito|regMDR|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|memoriadedados|dataout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regMDR|output\(2));

\operavito|muxescritanoBDR|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxescritanoBDR|output[2]~2_combout\ = (!\controle|atual_estado.s3~q\ & (\operavito|regSaidaUla|output\(2))) # (\controle|atual_estado.s3~q\ & ((\operavito|regMDR|output\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s3~q\,
	datab => \operavito|regSaidaUla|ALT_INV_output\(2),
	datac => \operavito|regMDR|ALT_INV_output\(2),
	combout => \operavito|muxescritanoBDR|output[2]~2_combout\);

\operavito|bancoReg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|muxescritanoBDR|output[2]~2_combout\,
	ena => \operavito|bancoReg|registrador~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|registrador~13_q\);

\operavito|bancoReg|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|bancoReg|registrador~53_combout\ = ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~37_q\ ) ) ) # 
-- ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~29_q\ ) ) ) # ( 
-- \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~21_q\ ) ) ) # ( 
-- !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\ & ( !\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\ & ( \operavito|bancoReg|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|bancoReg|ALT_INV_registrador~13_q\,
	datab => \operavito|bancoReg|ALT_INV_registrador~21_q\,
	datac => \operavito|bancoReg|ALT_INV_registrador~29_q\,
	datad => \operavito|bancoReg|ALT_INV_registrador~37_q\,
	datae => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	combout => \operavito|bancoReg|registrador~53_combout\);

\operavito|bancoReg|data_regB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|bancoReg|registrador~53_combout\,
	ena => \controle|regEscrita~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|bancoReg|data_regB\(2));

\operavito|muxBEntradaULA|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxBEntradaULA|Mux5~0_combout\ = (\operavito|bancoReg|data_regB\(2) & (\controle|WideOr7~combout\ & ((!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\) # (!\controle|atual_estado.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|bancoReg|ALT_INV_data_regB\(2),
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_WideOr7~combout\,
	combout => \operavito|muxBEntradaULA|Mux5~0_combout\);

\operavito|UnLogArit|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux7~1_combout\ = !\operavito|muxBEntradaULA|Mux5~0_combout\ $ (!\operavito|muxBEntradaULA|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux5~0_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	combout => \operavito|UnLogArit|Mux7~1_combout\);

\operavito|UnLogArit|pSOMADOR|output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSOMADOR|output\(4) = ( \operavito|UnLogArit|pSOMADOR|cout~0_combout\ & ( !\operavito|muxAEntradaULA|output[4]~4_combout\ $ (!\operavito|muxBEntradaULA|Mux3~0_combout\ $ (((\operavito|muxBEntradaULA|Mux4~0_combout\) # 
-- (\operavito|muxAEntradaULA|output[3]~3_combout\)))) ) ) # ( !\operavito|UnLogArit|pSOMADOR|cout~0_combout\ & ( !\operavito|muxAEntradaULA|output[4]~4_combout\ $ (!\operavito|muxBEntradaULA|Mux3~0_combout\ $ 
-- (((\operavito|muxAEntradaULA|output[3]~3_combout\ & \operavito|muxBEntradaULA|Mux4~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001011011001001001100110110110010010110110010010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datac => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	datad => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datae => \operavito|UnLogArit|pSOMADOR|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSOMADOR|output\(4));

\operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\ = !\operavito|muxAEntradaULA|output[4]~4_combout\ $ (!\operavito|muxBEntradaULA|Mux3~0_combout\ $ (!\operavito|UnLogArit|pSUBTRADOR|G2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_cout~0_combout\,
	combout => \operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\);

\operavito|UnLogArit|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~0_combout\ = ( \operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\ & ( (!\controle|ULAop[2]~2_combout\ & ((!\operavito|muxAEntradaULA|output[3]~3_combout\ & ((!\operavito|UnLogArit|pSUBTRADOR|G2|output\(3)) # 
-- (!\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\))) # (\operavito|muxAEntradaULA|output[3]~3_combout\ & (!\operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & !\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\)))) ) ) # ( 
-- !\operavito|UnLogArit|pSUBTRADOR|G3|output[4]~1_combout\ & ( (!\controle|ULAop[2]~2_combout\ & ((!\operavito|muxAEntradaULA|output[3]~3_combout\ & (\operavito|UnLogArit|pSUBTRADOR|G2|output\(3) & \operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\)) # 
-- (\operavito|muxAEntradaULA|output[3]~3_combout\ & ((\operavito|UnLogArit|pSUBTRADOR|G3|cout~1_combout\) # (\operavito|UnLogArit|pSUBTRADOR|G2|output\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100110010001000000000000100010011001100100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[3]~3_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|pSUBTRADOR|G2|ALT_INV_output\(3),
	datad => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_cout~1_combout\,
	datae => \operavito|UnLogArit|pSUBTRADOR|G3|ALT_INV_output[4]~1_combout\,
	combout => \operavito|UnLogArit|Mux8~0_combout\);

\operavito|UnLogArit|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~3_combout\ = (!\controle|ULAop[2]~2_combout\ & (\operavito|muxAEntradaULA|output[4]~4_combout\)) # (\controle|ULAop[2]~2_combout\ & (((\operavito|muxBEntradaULA|Mux3~0_combout\ & !\controle|ULAop[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010000010100110101000001010011010100000101001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxAEntradaULA|ALT_INV_output[4]~4_combout\,
	datab => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \controle|ALT_INV_ULAop[0]~3_combout\,
	combout => \operavito|UnLogArit|Mux8~3_combout\);

\operavito|UnLogArit|Mux8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~5_combout\ = ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux4~0_combout\ & ( (\controle|ULAop[1]~0_combout\ & ((!\controle|ULAop[3]~1_combout\ & (\operavito|UnLogArit|Mux8~0_combout\)) # 
-- (\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|Mux8~3_combout\))))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux6~0_combout\ & ( \operavito|muxBEntradaULA|Mux4~0_combout\ & ( (!\controle|ULAop[1]~0_combout\ & (((!\controle|ULAop[3]~1_combout\)))) # 
-- (\controle|ULAop[1]~0_combout\ & ((!\controle|ULAop[3]~1_combout\ & (\operavito|UnLogArit|Mux8~0_combout\)) # (\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|Mux8~3_combout\))))) ) ) ) # ( \operavito|muxBEntradaULA|Mux6~0_combout\ & ( 
-- !\operavito|muxBEntradaULA|Mux4~0_combout\ & ( (!\controle|ULAop[1]~0_combout\ & (((!\controle|ULAop[3]~1_combout\)))) # (\controle|ULAop[1]~0_combout\ & ((!\controle|ULAop[3]~1_combout\ & (\operavito|UnLogArit|Mux8~0_combout\)) # 
-- (\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|Mux8~3_combout\))))) ) ) ) # ( !\operavito|muxBEntradaULA|Mux6~0_combout\ & ( !\operavito|muxBEntradaULA|Mux4~0_combout\ & ( (\controle|ULAop[1]~0_combout\ & ((!\controle|ULAop[3]~1_combout\ & 
-- (\operavito|UnLogArit|Mux8~0_combout\)) # (\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|Mux8~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001111110101000000110000010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux8~0_combout\,
	datab => \operavito|UnLogArit|ALT_INV_Mux8~3_combout\,
	datac => \controle|ALT_INV_ULAop[1]~0_combout\,
	datad => \controle|ALT_INV_ULAop[3]~1_combout\,
	datae => \operavito|muxBEntradaULA|ALT_INV_Mux6~0_combout\,
	dataf => \operavito|muxBEntradaULA|ALT_INV_Mux4~0_combout\,
	combout => \operavito|UnLogArit|Mux8~5_combout\);

\operavito|UnLogArit|Mux8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~6_combout\ = ( \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ & ( \operavito|UnLogArit|Mux8~5_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|pSOMADOR|output\(4)) # (\controle|ULAop[2]~2_combout\))) 
-- ) ) ) # ( !\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ & ( \operavito|UnLogArit|Mux8~5_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|pSOMADOR|output\(4)) # (\controle|ULAop[2]~2_combout\))) ) ) ) # ( 
-- \operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ & ( !\operavito|UnLogArit|Mux8~5_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((\operavito|UnLogArit|pSOMADOR|output\(4)) # (\controle|ULAop[2]~2_combout\))) ) ) ) # ( 
-- !\operavito|UnLogArit|pMULTIPLICADOR|produto~3_combout\ & ( !\operavito|UnLogArit|Mux8~5_combout\ & ( (!\controle|ULAop[3]~1_combout\ & ((!\controle|ULAop[2]~2_combout\ & ((\operavito|UnLogArit|pSOMADOR|output\(4)))) # (\controle|ULAop[2]~2_combout\ & 
-- (\operavito|UnLogArit|Mux7~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010001000101010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[3]~1_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	datad => \operavito|UnLogArit|pSOMADOR|ALT_INV_output\(4),
	datae => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_produto~3_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux8~5_combout\,
	combout => \operavito|UnLogArit|Mux8~6_combout\);

\operavito|UnLogArit|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~1_combout\ = (\controle|ULAop[2]~2_combout\ & !\controle|ULAop[0]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[2]~2_combout\,
	datab => \controle|ALT_INV_ULAop[0]~3_combout\,
	combout => \operavito|UnLogArit|Mux8~1_combout\);

\operavito|UnLogArit|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~2_combout\ = ( \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ & ( \operavito|UnLogArit|Mux8~1_combout\ & ( (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & 
-- (((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & !\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\)))) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & (((\operavito|muxBEntradaULA|Mux3~0_combout\ & 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\)) # (\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\))) ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ & ( \operavito|UnLogArit|Mux8~1_combout\ & ( 
-- (!\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & ((!\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ $ (!\operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\)))) # 
-- (\operavito|UnLogArit|pSOMADORFLUTUANTE|expoentemenor~0_combout\ & (\operavito|muxBEntradaULA|Mux3~0_combout\ & (\operavito|UnLogArit|pSOMADORFLUTUANTE|Equal0~0_combout\ & \operavito|UnLogArit|pSOMADORFLUTUANTE|significandomaior[4]~0_combout\))) ) ) ) # ( 
-- \operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ & ( !\operavito|UnLogArit|Mux8~1_combout\ & ( \operavito|muxBEntradaULA|Mux3~0_combout\ ) ) ) # ( !\operavito|UnLogArit|pSOMADORFLUTUANTE|C[4]~3_combout\ & ( !\operavito|UnLogArit|Mux8~1_combout\ & ( 
-- \operavito|muxBEntradaULA|Mux3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001100110000011100000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|muxBEntradaULA|ALT_INV_Mux3~0_combout\,
	datab => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_expoentemenor~0_combout\,
	datac => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_Equal0~0_combout\,
	datad => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_significandomaior[4]~0_combout\,
	datae => \operavito|UnLogArit|pSOMADORFLUTUANTE|ALT_INV_C[4]~3_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux8~1_combout\,
	combout => \operavito|UnLogArit|Mux8~2_combout\);

\operavito|UnLogArit|Mux8~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~7_combout\ = ( \operavito|UnLogArit|Mux8~6_combout\ & ( (\controle|ULAop[1]~0_combout\ & !\operavito|UnLogArit|Mux8~5_combout\) ) ) # ( !\operavito|UnLogArit|Mux8~6_combout\ & ( (!\controle|ULAop[1]~0_combout\ & 
-- ((!\operavito|UnLogArit|Mux8~2_combout\) # ((!\controle|ULAop[3]~1_combout\)))) # (\controle|ULAop[1]~0_combout\ & (((!\operavito|UnLogArit|Mux8~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111001000001100110000000011111011110010000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux8~2_combout\,
	datab => \controle|ALT_INV_ULAop[1]~0_combout\,
	datac => \controle|ALT_INV_ULAop[3]~1_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux8~5_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux8~6_combout\,
	combout => \operavito|UnLogArit|Mux8~7_combout\);

\operavito|UnLogArit|Mux8~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~8_combout\ = (!\controle|ULAop[1]~0_combout\ & (\controle|ULAop[2]~2_combout\ & ((\operavito|UnLogArit|Mux8~5_combout\) # (\operavito|UnLogArit|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \controle|ALT_INV_ULAop[2]~2_combout\,
	datac => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux8~5_combout\,
	combout => \operavito|UnLogArit|Mux8~8_combout\);

\operavito|UnLogArit|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux8~4_combout\ = ( !\operavito|UnLogArit|Mux8~7_combout\ & ( \operavito|UnLogArit|Mux8~8_combout\ & ( (!\operavito|UnLogArit|Mux7~1_combout\ & (((\operavito|UnLogArit|pMULTIPLICADOR|Add4~9_sumout\)))) # 
-- (\operavito|UnLogArit|Mux7~1_combout\ & (((!\operavito|UnLogArit|Mux8~6_combout\)) # (\operavito|UnLogArit|pMULTIPLICADOR|Add6~5_sumout\))) ) ) ) # ( !\operavito|UnLogArit|Mux8~7_combout\ & ( !\operavito|UnLogArit|Mux8~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001011111000110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|UnLogArit|ALT_INV_Mux7~1_combout\,
	datab => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add6~5_sumout\,
	datac => \operavito|UnLogArit|pMULTIPLICADOR|ALT_INV_Add4~9_sumout\,
	datad => \operavito|UnLogArit|ALT_INV_Mux8~6_combout\,
	datae => \operavito|UnLogArit|ALT_INV_Mux8~7_combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux8~8_combout\,
	combout => \operavito|UnLogArit|Mux8~4_combout\);

\operavito|UnLogArit|output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|output\(4) = ( \operavito|UnLogArit|output\(4) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( \operavito|UnLogArit|Mux8~4_combout\ ) ) ) # ( !\operavito|UnLogArit|output\(4) & ( \operavito|UnLogArit|Mux12~0_combout\ & ( 
-- \operavito|UnLogArit|Mux8~4_combout\ ) ) ) # ( \operavito|UnLogArit|output\(4) & ( !\operavito|UnLogArit|Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux8~4_combout\,
	datae => \operavito|UnLogArit|ALT_INV_output\(4),
	dataf => \operavito|UnLogArit|ALT_INV_Mux12~0_combout\,
	combout => \operavito|UnLogArit|output\(4));

\operavito|muxPCfonte|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux3~0_combout\ = (!\controle|atual_estado.s8~q\ & (!\controle|atual_estado.s9~q\ & \operavito|UnLogArit|output\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|UnLogArit|ALT_INV_output\(4),
	combout => \operavito|muxPCfonte|Mux3~0_combout\);

\operavito|regPC|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux3~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(4));

\operavito|memInstrucao|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memInstrucao|Mux1~0_combout\ = ( !\operavito|regPC|output\(7) & ( (\operavito|regPC|output\(1) & (!\operavito|regPC|output\(4) & (!\operavito|regPC|output\(5) & !\operavito|regPC|output\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(1),
	datab => \operavito|regPC|ALT_INV_output\(4),
	datac => \operavito|regPC|ALT_INV_output\(5),
	datad => \operavito|regPC|ALT_INV_output\(6),
	datae => \operavito|regPC|ALT_INV_output\(7),
	combout => \operavito|memInstrucao|Mux1~0_combout\);

\operavito|memInstrucao|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memInstrucao|Mux4~0_combout\ = (\operavito|regPC|output\(0) & (\operavito|regPC|output\(2) & (!\operavito|regPC|output\(3) & \operavito|memInstrucao|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(0),
	datab => \operavito|regPC|ALT_INV_output\(2),
	datac => \operavito|regPC|ALT_INV_output\(3),
	datad => \operavito|memInstrucao|ALT_INV_Mux1~0_combout\,
	combout => \operavito|memInstrucao|Mux4~0_combout\);

\operavito|memInstrucao|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memInstrucao|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memInstrucao|output\(3));

\operavito|muxPCfonte|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux4~0_combout\ = (!\controle|atual_estado.s8~q\ & ((!\controle|atual_estado.s9~q\ & ((\operavito|UnLogArit|output\(3)))) # (\controle|atual_estado.s9~q\ & (\operavito|memInstrucao|output\(3))))) # (\controle|atual_estado.s8~q\ & 
-- (((\operavito|memInstrucao|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|memInstrucao|ALT_INV_output\(3),
	datad => \operavito|UnLogArit|ALT_INV_output\(3),
	combout => \operavito|muxPCfonte|Mux4~0_combout\);

\operavito|regPC|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux4~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(3));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000E60",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\operavito|muxPCfonte|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux5~0_combout\ = (!\controle|atual_estado.s8~q\ & ((!\controle|atual_estado.s9~q\ & ((\operavito|UnLogArit|output\(2)))) # (\controle|atual_estado.s9~q\ & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\)))) # (\controle|atual_estado.s8~q\ & (((\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a2~portadataout\,
	datad => \operavito|UnLogArit|ALT_INV_output\(2),
	combout => \operavito|muxPCfonte|Mux5~0_combout\);

\operavito|regPC|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux5~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(2));

\operavito|memInstrucao|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|memInstrucao|Mux1~1_combout\ = (!\operavito|regPC|output\(2) & (\operavito|regPC|output\(3) & \operavito|memInstrucao|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|regPC|ALT_INV_output\(2),
	datab => \operavito|regPC|ALT_INV_output\(3),
	datac => \operavito|memInstrucao|ALT_INV_Mux1~0_combout\,
	combout => \operavito|memInstrucao|Mux1~1_combout\);

\operavito|memInstrucao|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \operavito|memInstrucao|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|memInstrucao|output\(6));

\controle|prox_estado.s9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s9~0_combout\ = ( \controle|atual_estado.s1~q\ & ( (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & 
-- (\operavito|memInstrucao|output\(6) & \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|prox_estado.s9~0_combout\);

\controle|atual_estado.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s9~q\);

\operavito|muxPCfonte|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux6~0_combout\ = (!\controle|atual_estado.s8~q\ & ((!\controle|atual_estado.s9~q\ & ((\operavito|UnLogArit|output\(1)))) # (\controle|atual_estado.s9~q\ & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\)))) # (\controle|atual_estado.s8~q\ & (((\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a1~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a1~portadataout\,
	datad => \operavito|UnLogArit|ALT_INV_output\(1),
	combout => \operavito|muxPCfonte|Mux6~0_combout\);

\operavito|regPC|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux6~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(1));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000600",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\controle|ULAop[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|ULAop[1]~0_combout\ = (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\ & \controle|WideOr8~combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datab => \controle|ALT_INV_WideOr8~combout\,
	combout => \controle|ULAop[1]~0_combout\);

\operavito|UnLogArit|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux4~0_combout\ = ( \operavito|UnLogArit|bool~combout\ & ( (\controle|ULAop[1]~0_combout\ & (\controle|ULAop[3]~1_combout\ & (\controle|ULAop[2]~2_combout\ & !\controle|ULAop[0]~3_combout\))) ) ) # ( 
-- !\operavito|UnLogArit|bool~combout\ & ( (!\controle|ULAop[1]~0_combout\ & (\controle|ULAop[3]~1_combout\ & (\controle|ULAop[2]~2_combout\ & \controle|ULAop[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000010000000000000000000000100000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[1]~0_combout\,
	datab => \controle|ALT_INV_ULAop[3]~1_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \controle|ALT_INV_ULAop[0]~3_combout\,
	datae => \operavito|UnLogArit|ALT_INV_bool~combout\,
	combout => \operavito|UnLogArit|Mux4~0_combout\);

\operavito|UnLogArit|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|Mux3~0_combout\ = (\controle|ULAop[2]~2_combout\ & (\controle|ULAop[3]~1_combout\ & (!\controle|ULAop[0]~3_combout\ $ (!\controle|ULAop[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000000001100000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_ULAop[0]~3_combout\,
	datab => \controle|ALT_INV_ULAop[1]~0_combout\,
	datac => \controle|ALT_INV_ULAop[2]~2_combout\,
	datad => \controle|ALT_INV_ULAop[3]~1_combout\,
	combout => \operavito|UnLogArit|Mux3~0_combout\);

\operavito|UnLogArit|zero\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|UnLogArit|zero~combout\ = ( \operavito|UnLogArit|zero~combout\ & ( \operavito|UnLogArit|Mux3~0_combout\ & ( \operavito|UnLogArit|Mux4~0_combout\ ) ) ) # ( !\operavito|UnLogArit|zero~combout\ & ( \operavito|UnLogArit|Mux3~0_combout\ & ( 
-- \operavito|UnLogArit|Mux4~0_combout\ ) ) ) # ( \operavito|UnLogArit|zero~combout\ & ( !\operavito|UnLogArit|Mux3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \operavito|UnLogArit|ALT_INV_Mux4~0_combout\,
	datae => \operavito|UnLogArit|ALT_INV_zero~combout\,
	dataf => \operavito|UnLogArit|ALT_INV_Mux3~0_combout\,
	combout => \operavito|UnLogArit|zero~combout\);

\operavito|habilitaPC\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|habilitaPC~combout\ = (!\controle|atual_estado.s0~q\) # ((\controle|atual_estado.s8~q\ & \operavito|UnLogArit|zero~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111100011111000111110001111100011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \operavito|UnLogArit|ALT_INV_zero~combout\,
	datac => \controle|ALT_INV_atual_estado.s0~q\,
	combout => \operavito|habilitaPC~combout\);

\operavito|regPC|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|muxPCfonte|Mux7~0_combout\,
	ena => \operavito|habilitaPC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regPC|output\(0));

\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => "0000000000000000000000000000000000000000000000000000000000000EFE",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "ProcessadorNEO.NEO0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "blocoOperativo:operavito|memoriaInstrucao:memInstrucao|altsyncram:Mux7_rtl_0|altsyncram_e461:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 1,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clock~input_o\,
	portaaddr => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\controle|prox_estado.s8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|prox_estado.s8~0_combout\ = ( \controle|atual_estado.s1~q\ & ( (\operavito|memInstrucao|output\(6) & (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a5~portadataout\ & 
-- (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a3~portadataout\ $ (!\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a4~portadataout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000011000000000000000000000000000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a3~portadataout\,
	datab => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a4~portadataout\,
	datac => \operavito|memInstrucao|ALT_INV_output\(6),
	datad => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a5~portadataout\,
	datae => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|prox_estado.s8~0_combout\);

\controle|atual_estado.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \controle|prox_estado.s8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controle|atual_estado.s8~q\);

\operavito|muxPCfonte|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \operavito|muxPCfonte|Mux7~0_combout\ = (!\controle|atual_estado.s8~q\ & ((!\controle|atual_estado.s9~q\ & ((\operavito|UnLogArit|output\(0)))) # (\controle|atual_estado.s9~q\ & 
-- (\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (\controle|atual_estado.s8~q\ & (((\operavito|memInstrucao|Mux7_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110001111000001111000111100000111100011110000011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s8~q\,
	datab => \controle|ALT_INV_atual_estado.s9~q\,
	datac => \operavito|memInstrucao|Mux7_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	datad => \operavito|UnLogArit|ALT_INV_output\(0),
	combout => \operavito|muxPCfonte|Mux7~0_combout\);

\operavito|regA|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(0));

\operavito|regA|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(1));

\operavito|regA|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(2));

\operavito|regA|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(3));

\operavito|regA|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(4));

\operavito|regA|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(5));

\operavito|regA|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(6));

\operavito|regA|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regA\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regA|output\(7));

\operavito|regB|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(0));

\operavito|regB|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(1));

\operavito|regB|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(2));

\operavito|regB|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(3));

\operavito|regB|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(4));

\operavito|regB|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(5));

\operavito|regB|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(6));

\operavito|regB|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock~input_o\,
	d => \operavito|bancoReg|data_regB\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \operavito|regB|output\(7));

\controle|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr4~combout\ = (((!\controle|atual_estado.s0~q\) # (\controle|atual_estado.s6~q\)) # (\controle|atual_estado.s4~q\)) # (\controle|atual_estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s2~q\,
	datab => \controle|ALT_INV_atual_estado.s4~q\,
	datac => \controle|ALT_INV_atual_estado.s6~q\,
	datad => \controle|ALT_INV_atual_estado.s0~q\,
	combout => \controle|WideOr4~combout\);

\controle|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr3~combout\ = (((!\controle|atual_estado.s0~q\) # (\controle|atual_estado.s1~q\)) # (\controle|atual_estado.s5~q\)) # (\controle|atual_estado.s4~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s4~q\,
	datab => \controle|ALT_INV_atual_estado.s5~q\,
	datac => \controle|ALT_INV_atual_estado.s0~q\,
	datad => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|WideOr3~combout\);

\controle|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \controle|WideOr2~combout\ = (((!\controle|atual_estado.s0~q\) # (\controle|atual_estado.s1~q\)) # (\controle|atual_estado.s3~q\)) # (\controle|atual_estado.s2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controle|ALT_INV_atual_estado.s2~q\,
	datab => \controle|ALT_INV_atual_estado.s3~q\,
	datac => \controle|ALT_INV_atual_estado.s0~q\,
	datad => \controle|ALT_INV_atual_estado.s1~q\,
	combout => \controle|WideOr2~combout\);

ww_entrada_PC(0) <= \entrada_PC[0]~output_o\;

ww_entrada_PC(1) <= \entrada_PC[1]~output_o\;

ww_entrada_PC(2) <= \entrada_PC[2]~output_o\;

ww_entrada_PC(3) <= \entrada_PC[3]~output_o\;

ww_entrada_PC(4) <= \entrada_PC[4]~output_o\;

ww_entrada_PC(5) <= \entrada_PC[5]~output_o\;

ww_entrada_PC(6) <= \entrada_PC[6]~output_o\;

ww_entrada_PC(7) <= \entrada_PC[7]~output_o\;

ww_saida_PC(0) <= \saida_PC[0]~output_o\;

ww_saida_PC(1) <= \saida_PC[1]~output_o\;

ww_saida_PC(2) <= \saida_PC[2]~output_o\;

ww_saida_PC(3) <= \saida_PC[3]~output_o\;

ww_saida_PC(4) <= \saida_PC[4]~output_o\;

ww_saida_PC(5) <= \saida_PC[5]~output_o\;

ww_saida_PC(6) <= \saida_PC[6]~output_o\;

ww_saida_PC(7) <= \saida_PC[7]~output_o\;

ww_saida_MemInstr(0) <= \saida_MemInstr[0]~output_o\;

ww_saida_MemInstr(1) <= \saida_MemInstr[1]~output_o\;

ww_saida_MemInstr(2) <= \saida_MemInstr[2]~output_o\;

ww_saida_MemInstr(3) <= \saida_MemInstr[3]~output_o\;

ww_saida_MemInstr(4) <= \saida_MemInstr[4]~output_o\;

ww_saida_MemInstr(5) <= \saida_MemInstr[5]~output_o\;

ww_saida_MemInstr(6) <= \saida_MemInstr[6]~output_o\;

ww_saida_MemInstr(7) <= \saida_MemInstr[7]~output_o\;

ww_saida_BdRA(0) <= \saida_BdRA[0]~output_o\;

ww_saida_BdRA(1) <= \saida_BdRA[1]~output_o\;

ww_saida_BdRA(2) <= \saida_BdRA[2]~output_o\;

ww_saida_BdRA(3) <= \saida_BdRA[3]~output_o\;

ww_saida_BdRA(4) <= \saida_BdRA[4]~output_o\;

ww_saida_BdRA(5) <= \saida_BdRA[5]~output_o\;

ww_saida_BdRA(6) <= \saida_BdRA[6]~output_o\;

ww_saida_BdRA(7) <= \saida_BdRA[7]~output_o\;

ww_saida_BdRB(0) <= \saida_BdRB[0]~output_o\;

ww_saida_BdRB(1) <= \saida_BdRB[1]~output_o\;

ww_saida_BdRB(2) <= \saida_BdRB[2]~output_o\;

ww_saida_BdRB(3) <= \saida_BdRB[3]~output_o\;

ww_saida_BdRB(4) <= \saida_BdRB[4]~output_o\;

ww_saida_BdRB(5) <= \saida_BdRB[5]~output_o\;

ww_saida_BdRB(6) <= \saida_BdRB[6]~output_o\;

ww_saida_BdRB(7) <= \saida_BdRB[7]~output_o\;

ww_saida_ExtensorSinal2p8(0) <= \saida_ExtensorSinal2p8[0]~output_o\;

ww_saida_ExtensorSinal2p8(1) <= \saida_ExtensorSinal2p8[1]~output_o\;

ww_saida_ExtensorSinal2p8(2) <= \saida_ExtensorSinal2p8[2]~output_o\;

ww_saida_ExtensorSinal2p8(3) <= \saida_ExtensorSinal2p8[3]~output_o\;

ww_saida_ExtensorSinal2p8(4) <= \saida_ExtensorSinal2p8[4]~output_o\;

ww_saida_ExtensorSinal2p8(5) <= \saida_ExtensorSinal2p8[5]~output_o\;

ww_saida_ExtensorSinal2p8(6) <= \saida_ExtensorSinal2p8[6]~output_o\;

ww_saida_ExtensorSinal2p8(7) <= \saida_ExtensorSinal2p8[7]~output_o\;

ww_saida_ExtensorSinal4p8(0) <= \saida_ExtensorSinal4p8[0]~output_o\;

ww_saida_ExtensorSinal4p8(1) <= \saida_ExtensorSinal4p8[1]~output_o\;

ww_saida_ExtensorSinal4p8(2) <= \saida_ExtensorSinal4p8[2]~output_o\;

ww_saida_ExtensorSinal4p8(3) <= \saida_ExtensorSinal4p8[3]~output_o\;

ww_saida_ExtensorSinal4p8(4) <= \saida_ExtensorSinal4p8[4]~output_o\;

ww_saida_ExtensorSinal4p8(5) <= \saida_ExtensorSinal4p8[5]~output_o\;

ww_saida_ExtensorSinal4p8(6) <= \saida_ExtensorSinal4p8[6]~output_o\;

ww_saida_ExtensorSinal4p8(7) <= \saida_ExtensorSinal4p8[7]~output_o\;

ww_saida_RegA(0) <= \saida_RegA[0]~output_o\;

ww_saida_RegA(1) <= \saida_RegA[1]~output_o\;

ww_saida_RegA(2) <= \saida_RegA[2]~output_o\;

ww_saida_RegA(3) <= \saida_RegA[3]~output_o\;

ww_saida_RegA(4) <= \saida_RegA[4]~output_o\;

ww_saida_RegA(5) <= \saida_RegA[5]~output_o\;

ww_saida_RegA(6) <= \saida_RegA[6]~output_o\;

ww_saida_RegA(7) <= \saida_RegA[7]~output_o\;

ww_saida_RegB(0) <= \saida_RegB[0]~output_o\;

ww_saida_RegB(1) <= \saida_RegB[1]~output_o\;

ww_saida_RegB(2) <= \saida_RegB[2]~output_o\;

ww_saida_RegB(3) <= \saida_RegB[3]~output_o\;

ww_saida_RegB(4) <= \saida_RegB[4]~output_o\;

ww_saida_RegB(5) <= \saida_RegB[5]~output_o\;

ww_saida_RegB(6) <= \saida_RegB[6]~output_o\;

ww_saida_RegB(7) <= \saida_RegB[7]~output_o\;

ww_saida_MUXfonteA(0) <= \saida_MUXfonteA[0]~output_o\;

ww_saida_MUXfonteA(1) <= \saida_MUXfonteA[1]~output_o\;

ww_saida_MUXfonteA(2) <= \saida_MUXfonteA[2]~output_o\;

ww_saida_MUXfonteA(3) <= \saida_MUXfonteA[3]~output_o\;

ww_saida_MUXfonteA(4) <= \saida_MUXfonteA[4]~output_o\;

ww_saida_MUXfonteA(5) <= \saida_MUXfonteA[5]~output_o\;

ww_saida_MUXfonteA(6) <= \saida_MUXfonteA[6]~output_o\;

ww_saida_MUXfonteA(7) <= \saida_MUXfonteA[7]~output_o\;

ww_saida_MUXfonteB(0) <= \saida_MUXfonteB[0]~output_o\;

ww_saida_MUXfonteB(1) <= \saida_MUXfonteB[1]~output_o\;

ww_saida_MUXfonteB(2) <= \saida_MUXfonteB[2]~output_o\;

ww_saida_MUXfonteB(3) <= \saida_MUXfonteB[3]~output_o\;

ww_saida_MUXfonteB(4) <= \saida_MUXfonteB[4]~output_o\;

ww_saida_MUXfonteB(5) <= \saida_MUXfonteB[5]~output_o\;

ww_saida_MUXfonteB(6) <= \saida_MUXfonteB[6]~output_o\;

ww_saida_MUXfonteB(7) <= \saida_MUXfonteB[7]~output_o\;

ww_saida_ULA(0) <= \saida_ULA[0]~output_o\;

ww_saida_ULA(1) <= \saida_ULA[1]~output_o\;

ww_saida_ULA(2) <= \saida_ULA[2]~output_o\;

ww_saida_ULA(3) <= \saida_ULA[3]~output_o\;

ww_saida_ULA(4) <= \saida_ULA[4]~output_o\;

ww_saida_ULA(5) <= \saida_ULA[5]~output_o\;

ww_saida_ULA(6) <= \saida_ULA[6]~output_o\;

ww_saida_ULA(7) <= \saida_ULA[7]~output_o\;

ww_saida_RegULAout(0) <= \saida_RegULAout[0]~output_o\;

ww_saida_RegULAout(1) <= \saida_RegULAout[1]~output_o\;

ww_saida_RegULAout(2) <= \saida_RegULAout[2]~output_o\;

ww_saida_RegULAout(3) <= \saida_RegULAout[3]~output_o\;

ww_saida_RegULAout(4) <= \saida_RegULAout[4]~output_o\;

ww_saida_RegULAout(5) <= \saida_RegULAout[5]~output_o\;

ww_saida_RegULAout(6) <= \saida_RegULAout[6]~output_o\;

ww_saida_RegULAout(7) <= \saida_RegULAout[7]~output_o\;

ww_saida_MemDados(0) <= \saida_MemDados[0]~output_o\;

ww_saida_MemDados(1) <= \saida_MemDados[1]~output_o\;

ww_saida_MemDados(2) <= \saida_MemDados[2]~output_o\;

ww_saida_MemDados(3) <= \saida_MemDados[3]~output_o\;

ww_saida_MemDados(4) <= \saida_MemDados[4]~output_o\;

ww_saida_MemDados(5) <= \saida_MemDados[5]~output_o\;

ww_saida_MemDados(6) <= \saida_MemDados[6]~output_o\;

ww_saida_MemDados(7) <= \saida_MemDados[7]~output_o\;

ww_saida_MDR(0) <= \saida_MDR[0]~output_o\;

ww_saida_MDR(1) <= \saida_MDR[1]~output_o\;

ww_saida_MDR(2) <= \saida_MDR[2]~output_o\;

ww_saida_MDR(3) <= \saida_MDR[3]~output_o\;

ww_saida_MDR(4) <= \saida_MDR[4]~output_o\;

ww_saida_MDR(5) <= \saida_MDR[5]~output_o\;

ww_saida_MDR(6) <= \saida_MDR[6]~output_o\;

ww_saida_MDR(7) <= \saida_MDR[7]~output_o\;

ww_saida_MUXbdRegin(0) <= \saida_MUXbdRegin[0]~output_o\;

ww_saida_MUXbdRegin(1) <= \saida_MUXbdRegin[1]~output_o\;

ww_saida_MUXbdRegin(2) <= \saida_MUXbdRegin[2]~output_o\;

ww_saida_MUXbdRegin(3) <= \saida_MUXbdRegin[3]~output_o\;

ww_saida_MUXbdRegin(4) <= \saida_MUXbdRegin[4]~output_o\;

ww_saida_MUXbdRegin(5) <= \saida_MUXbdRegin[5]~output_o\;

ww_saida_MUXbdRegin(6) <= \saida_MUXbdRegin[6]~output_o\;

ww_saida_MUXbdRegin(7) <= \saida_MUXbdRegin[7]~output_o\;

ww_habilitaPC <= \habilitaPC~output_o\;

ww_zeroULA <= \zeroULA~output_o\;

ww_out_estado(0) <= \out_estado[0]~output_o\;

ww_out_estado(1) <= \out_estado[1]~output_o\;

ww_out_estado(2) <= \out_estado[2]~output_o\;
END structure;


