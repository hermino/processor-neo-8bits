library IEEE;
use IEEE.std_logic_1164.all;

entity blocoOperativo is
	port(
			clock: in std_logic;
			PCescCond,
			PCesc,
			MemParaReg,
			regEscrita, 
			ULAfonteA,
			MemEscrita : in std_logic;
			ULAfonteB,
			PCfonte    : in std_logic_vector(1 downto 0);
			ULAop      : in std_logic_vector(3 downto 0);
			opcode: out std_logic_vector(3 downto 0);
			-- PORTAS PARA DEBUG --
			out_entrada_PC,
			out_saida_PC,
			out_saida_MemInstr, 
			out_saida_BdRA, 
			out_saida_BdRB, 
			out_saida_ExtensorSinal2p8, 
			out_saida_ExtensorSinal4p8, 
			out_saida_RegA, 
			out_saida_RegB, 
			out_saida_MUXfonteA, 
			out_saida_MUXfonteB, 
			out_saida_ULA, 
			out_saida_RegULAout,
			out_saida_MemDados, 
			out_saida_MDR, 
			out_saida_MUXbdRegin: out std_logic_vector(7 downto 0);
			out_habilitaPC, 
			out_zeroULA: out std_logic
		  );
end blocoOperativo;

architecture behavior of blocoOperativo is
component memoriaInstrucao is
	port (
			clock   : in  std_logic;
			endereco: in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
			);
end component;

component bancoRegistradores is
	port(
			clock, 
			enableWrite           : in std_logic;
			endereco_A, 
			endereco_B            : in std_logic_vector (1 downto 0);
			datain                : in std_logic_vector (7 downto 0);
			data_regA,
			data_regB             : out std_logic_vector(7 downto 0)
		  );
end component;

component extensorSinal_4x8 is
    Port(
           input : in  std_logic_vector(3 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end component;

component extensorSinal_2x8 is
    Port(
           input : in  std_logic_vector(1 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end component;
component ULA is
	port(
			A,
			B       : in  std_logic_vector(7 downto 0);
			selector: in  std_logic_vector(3 downto 0);
			output  : out std_logic_vector(7 downto 0);
			zero    : out std_logic
		 );
end component;

component MemoriaDados is
	port(
			clock, 
			MemEscrita  : in std_logic;
			endereco    : in std_logic_vector (1 downto 0);
			datain      : in std_logic_vector (7 downto 0);
			dataout    : out std_logic_vector(7 downto 0)
		  );
end component;

component mux_2x8 is
	port(
			selector: in  std_logic;
			E0, 
			E1      : in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
		 );
end component;

component mux_3x8 is
	port(
			selector: in  std_logic_vector(1 downto 0);
			E0, 
			E1,
			E2      : in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
		 );
end component;

component registrador is
    Port(
			  clock, enable: in std_logic;
           input : in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end component;

-- VALORES LÒGICOS
signal habilitaPC, zeroULA: std_logic; -- VAlores lógicos
-- SAÍDAS E ENTRADAS DE COMPONENTES
signal entrada_PC, saida_PC, saida_MemInstr, saida_BdRA, saida_BdRB, saida_ExtensorSinal2p8,
		 saida_ExtensorSinal4p8, saida_RegA, saida_RegB, saida_MUXfonteA, saida_MUXfonteB, 
		 saida_ULA, saida_RegULAout, saida_MemDados, saida_MDR, saida_MUXbdRegin: std_Logic_vector(7 downto 0);

signal incrementoPC: std_logic_vector(7 downto 0) := "00000001";
begin
	habilitaPC <= PCesc or (PCescCond and zeroULA);
	
	-- Registrador PC
	regPC: registrador port map(
										 clock  => clock,
										 enable => habilitaPC,
										 input  => entrada_PC,
										 output => saida_PC
										 );
	-- Memória de instrução
	memInstrucao: memoriaInstrucao port map(
														 clock    => clock,
														 endereco => saida_PC,
														 output   => saida_MemInstr
														 );
	-- Banco de registradores 
	bancoReg: bancoRegistradores port map(
													  clock       => clock,
													  enableWrite => regEscrita,
													  endereco_A  => saida_MemInstr(3 downto 2),
													  endereco_B  => saida_MemInstr(1 downto 0),
													  datain      => saida_MUXbdRegin,
													  data_regA   => saida_BdRA,
													  data_regB   => saida_BdRB
													  );
	-- Extensor de Sinal 2bits - 8bits
	extensorSinal2para8: extensorSinal_2x8 port map(
															input => saida_MemInstr(1 downto 0),
															output => saida_ExtensorSinal2p8
															);
	-- Extensor de Sinal 4bits - 8bits
	extensorSinal4para8: extensorSinal_4x8 port map(
															input => saida_MemInstr(3 downto 0),
															output => saida_ExtensorSinal4p8
															);																
	-- Registrador A
	regA: registrador port map(
										clock  => clock,
										enable => '1',
										input  => saida_BdRA,
										output => saida_RegA
										);
	-- Registrador B								
	regB: registrador port map(
										clock  => clock,
										enable => '1',
										input  => saida_BdRB,
										output => saida_RegB
										);

	-- MUX FONTE ULA A
	muxAEntradaULA: mux_2x8 port map(
												selector => ULAfonteA,
												E0       => saida_PC,
												E1       => saida_BdRA,
												output   => saida_MUXfonteA
											   );
	-- MUX FONTE ULA B
	muxBEntradaULA: mux_3x8 port map(
												selector => ULAfonteB,
												E0       => saida_BdRB,
												E1       => incrementoPC,
												E2       => saida_ExtensorSinal2p8,
												output   => saida_MUXfonteB
											   );
												
	-- Unidade Lógica Aritmética
	UnLogArit: ULA port map(
									A        => saida_MUXfonteA,
									B        => saida_MUXfonteB,
									selector => ULAop,
									output   => saida_ULA,
									zero     => zeroULA
								   );
									
	-- Registrador ULAout
	regSaidaUla: registrador port map(
												 clock  => clock,
												 enable => '1',
												 input  => saida_ULA,
												 output => saida_RegULAout
												 );
	
	-- Memoria de Dados
	memoriadedados: MemoriaDados port map(
														 clock => clock,
														 MemEscrita => MemEscrita,
														 endereco => saida_MemInstr(1 downto 0),
														 datain => saida_RegULAout,
														 dataout => saida_MemDados
														 );
														 
	-- Registrador MDR
	regMDR: registrador port map(
												 clock  => clock,
												 enable => '1',
												 input  => saida_MemDados,
												 output => saida_MDR
												 );
												 
	-- MUX ESCRITA NO BANCO DE REG
	muxescritanoBDR: mux_2x8 port map(
												selector => MemParaReg,
												E0       => saida_RegULAout,
												E1       => saida_MDR,
												output   => saida_MUXbdRegin
											   );
												
	-- MUX FONTE PC
	muxPCfonte: mux_3x8 port map(
												selector => PCfonte,
												E0       => saida_ULA,
												E1       => saida_RegULAout,
												E2       => saida_ExtensorSinal4p8,
												output   => entrada_PC
											   );
										
	opcode <= saida_MemInstr(7 downto 4);
	
	-- ===================== DEBUG
	out_habilitaPC             <= habilitaPC;
	out_zeroULA                <= zeroULA;
	out_entrada_PC             <= entrada_PC;
	out_saida_PC               <= saida_PC;
	out_saida_MemInstr         <= saida_MemInstr;
	out_saida_BdRA             <= saida_BdRA;
	out_saida_BdRB             <= saida_BdRB;
	out_saida_ExtensorSinal2p8 <= saida_ExtensorSinal2p8;
	out_saida_ExtensorSinal4p8 <= saida_ExtensorSinal4p8;
	out_saida_RegA             <= saida_RegA;
	out_saida_RegB             <= saida_RegB;
	out_saida_MUXfonteA        <= saida_MUXfonteA;
	out_saida_MUXfonteB        <= saida_MUXfonteB;
	out_saida_ULA              <= saida_ULA;
	out_saida_RegULAout        <= saida_RegULAout;
	out_saida_MemDados			<= saida_MemDados;
	out_saida_MDR					<= saida_MDR;
	out_saida_MUXbdRegin			<= saida_MUXbdRegin;
end behavior;
		