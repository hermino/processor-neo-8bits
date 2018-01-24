library ieee;
use ieee.std_logic_unsigned.all;
use  ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplicador is
	port(
			A: in std_logic_vector(7 downto 0); -- entrada de 8 bit - multiplicando
			B: in std_logic_vector (7 downto 0); -- entrada de 8 bits - multiplicador
			S: out std_logic_vector(7 downto 0) -- saida de 8 bits - produto
		 );
end multiplicador;

architecture estrutura_mult of multiplicador is
-- sinais de controle para adicao e subtracao
signal adicao, subtracao : std_logic_vector(8 downto 0);
	-- funcao para deslocamento de bits a direita, adiciona '1' no final
	function desloca_um (x : std_logic_vector(8 downto 0)) return std_logic_vector is	
	variable valor : std_logic_vector (8 downto 0);
	begin
		for i in 0 to 7 loop
			valor(i) := x(i+1);
		end loop;
		valor(8) := '1';
		return valor;
	end desloca_um;
	
	-- funcao para deslocamento de bits a direita, adiciona '0' no final
	function desloca_zero (x : std_logic_vector(8 downto 0)) return std_logic_vector is	
	variable valor : std_logic_vector (8 downto 0);
	begin
		for i in 0 to 7 loop
			valor(i) := x(i+1);
		end loop;
		valor(8) := '0';
		return valor;
	end desloca_zero;
 
begin

	process (adicao, subtracao, A, B) is
	variable produto : std_logic_vector (8 downto 0);
	begin
		-- monta as entradas 
		adicao(8 downto 5) <= A(3 downto 0);
		adicao(4 downto 0) <= "00000";
		
		subtracao(8 downto 5) <= (not A(3 downto 0)) + "0001";
		subtracao(4 downto 0) <= "00000";
		
		produto(8 downto 5) := "0000";
		produto(4 downto 1) := B(3 downto 0);
		produto(0) := '0';
		
		-- inicio do algortimo de Booth
		for i in 0 to 3 loop
			if produto(1 downto 0) = "00" then
				if produto(8) = '1' then
					produto := desloca_um(produto);
				else
					produto := desloca_zero(produto);
				end if;
			elsif produto(1 downto 0) = "10" then
				produto := produto + subtracao;
				if produto(8) = '1' then
					produto := desloca_um (produto);
				else
					produto := desloca_zero(produto);
				end if;
			elsif produto (1 downto 0) = "01" then
				produto := produto + adicao;
				if produto(8) = '1' then
					produto := desloca_um (produto);
				else
					produto := desloca_zero(produto);
				end if;
			else
				if produto(8) = '1' then
					produto := desloca_um (produto);
				else
					produto := desloca_zero(produto);
				end if;
			end if;
		end loop;
		-- adaptacao para 8 bits na saida
		S <= produto(8 downto 1);
		
	end process;
end estrutura_mult;