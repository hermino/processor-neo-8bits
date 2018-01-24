library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity memoriaInstrucao is
	port (
			clock   : in  std_logic;
			endereco: in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
			);
end memoriaInstrucao;

architecture behavior of memoriaInstrucao is
	type ROM_TYPE is array (0 to 255) of std_logic_vector(7 downto 0);
	constant memoria : ROM_TYPE := (
	
		0 => "00000000",  -- INICIALIZAR SISTEMA
		
		-- ========== N-ÉSIMO TERMO DE UMA P.A. ============
		 1 => "10010011",  2 => "00010011",  3 => "00010011",  
		 4 => "00010001",  5 => "10010111",  6 => "00010110",  
		 7 => "10011011",  8 => "00000010",  9 => "00110101", 
	   10 => "01110100", 11 => "11010111",
		
		-- ================== FATORIAL =====================
		-- 1 => "10010011",  2 => "10000100",  3 => "00110101",
		-- 4 => "01000001",  5 => "00110101",	 6 => "01110100",
		-- 7 => "11010011",
		
		-- ================ SOMA FLUTUANTE =================
		-- 1 => "10010011", 2 => "00010010", 3 => "10010110",
		-- 4 => "01000001",	 5 => "00010111",  6 => "00010110",
		-- 7 => "10001001", 8 => "01000110", 9 => "11000001",
		
 OTHERS => "00000000" 
			);
begin
	process(clock, endereco)
	begin
		if( rising_edge(clock) ) then
			output <= memoria(conv_integer(endereco));
		end if;
	end process;
end behavior;
		