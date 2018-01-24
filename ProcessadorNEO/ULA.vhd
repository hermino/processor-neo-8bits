library IEEE;
use IEEE.std_logic_1164.all;

entity ULA is
	port(
			A,
			B       : in  std_logic_vector(7 downto 0);
			selector: in  std_logic_vector(3 downto 0);
			output  : out std_logic_vector(7 downto 0);
			zero    : out std_logic
		 );
end ULA;

architecture behavior of ULA is
	component somador is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	component subtrador is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	component somaFlutuante is
		port(
			A : in std_logic_vector (7 downto 0);
			B : in std_logic_vector (7 downto 0);
			S : out std_logic_vector (7 downto 0)
		 );
	end component;
	component multiplicador is
		port(
				A: in std_logic_vector(7 downto 0);
				B: in std_logic_vector (7 downto 0);
				S: out std_logic_vector(7 downto 0)
			 );
	end component;



signal out_Somador,
	    out_Subtrador,
		 out_SomadorFlutuante,
		 out_Multiplicador     : std_Logic_vector(7 downto 0);
signal bool: std_logic;

begin
	pSOMADOR: somador port map(A, B, out_Somador);
	pSUBTRADOR: subtrador port map(A, B, out_Subtrador);
	pSOMADORFLUTUANTE: somaFlutuante port map(A, B, out_SomadorFlutuante);
	pMULTIPLICADOR: multiplicador port map(A, B, out_Multiplicador);
	
	process(out_Somador,out_Subtrador, selector)
	begin
		case selector is
			when "0000" => output <= out_Somador;                                            			-- SOMA
			when "0001" => output <= out_Somador;                                            			-- SOMA IMEDIATA
			when "0010" => output <= out_Subtrador; 													   			-- SUBTRAÇÃO
			when "0011" => output <= out_Subtrador; 													   			-- SUBTRAÇÃO IMEDIATA
			when "0100" => output <= out_Multiplicador; 															   -- MULTIPLICAÇÃO
			when "0101" => output <= out_Multiplicador; 															   -- MULTIPLICAÇÃO IMEDIATA
			when "0110" => if(A = B)then bool <= '1'; else bool <= '0'; output <= "00000000"; end if; -- IGUAL A
			when "0111" => if(A = B)then bool <= '1'; else bool <= '0'; output <= "00000000"; end if; -- IGUAL A IMEDIATA
			when "1000" => output <= B; 																      			-- MOVE
			when "1001" => output <= B;		       													   			-- MOVI
			when "1010" => output <= A; 																	         	-- LW
			when "1011" => output <= A;          																		-- SW
			when "1100" => output <= out_SomadorFlutuante;                                            -- SOMA FLUTUANTE
			when "1101" => if(bool = '0')then output <= B; zero <= '1'; else  zero <= '0'; end if; 	-- BNE
			when "1110" => if(bool = '1')then output <= B; zero <= '1'; else  zero <= '0'; end if;		-- BEQ
			when others => output <= "00000000";
		end case;
	end process;
end behavior;