library IEEE;
use IEEE.std_logic_1164.all;

entity blocoControle is
	port(
			clock,
			reset      : in std_logic;
			opcode     : in std_logic_vector(3 downto 0);
			PCescCond,
			PCesc,
			MemParaReg,
			regEscrita, 
			ULAfonteA,
			MemLeitura,
			MemEscrita : out std_logic;                     -- flags de 1 bit
			ULAfonteB,
			PCfonte    : out std_logic_vector(1 downto 0);  -- flags de 2 bits
			ULAop      : out std_logic_vector(3 downto 0);  -- flags de 4 bits
			out_estado : out std_logic_vector(2 downto 0)
		  );
end blocoControle;

architecture behavior of blocoControle is

type estados is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9);
signal prox_estado,atual_estado: estados;

signal enableControle: std_Logic := '0';
begin
	process(clock)
		begin
			if ( reset = '1' ) then
				atual_estado <= s0;
			elsif( falling_edge(clock) ) then
				atual_estado <= prox_estado;
			end if;
	end process;
	
	process(clock, opcode, atual_estado)
		begin
				case atual_estado is
					when s0 =>                                                 -- Busca da instrução e incremento do PC
								prox_estado <= s1;
								out_estado <= "000";
					when s1 =>                                                 -- Decodificação da instrução
								if    (opcode = "1010") then                         -- SE LOAD
									prox_estado <= s2;
								elsif (opcode = "1011") then                         -- SE STORE
									prox_estado <= s4;
								elsif (opcode = "1101" OR opcode = "1110") then      -- SE JUMP CONDICIONAL
									prox_estado <= s8;
								elsif (opcode = "1111") then                         -- SE JUMP
									prox_estado <= s9;
								else                                                 -- SE TIPO R
									prox_estado <= s6;
								end if;
								out_estado <= "001";
					when s2 =>                                                 -- Cálculo do endereço (LOAD)
								prox_estado <= s3;
								out_estado <= "010";
					when s3 =>                                                 -- Escrita no Reg (LOAD final)
								prox_estado <= s0;
								out_estado <= "011";
					when s4 =>                                                 -- Cálculo do endereço (STORE)
								prox_estado <= s5;
								out_estado <= "100";
					when s5 =>                                                 -- Escrita na memória (STORE final)
								prox_estado <= s0;
								out_estado <= "101";
					when s6 =>                                                 -- Execução do tipo R
								if( opcode = "0110" OR opcode = "0111" ) then        -- SE TIPO EQ OU EQI
									prox_estado <= s0;
								else
									prox_estado <= s7;
								end if;
								out_estado <= "110";
					when s7 =>                                                 -- Escrita no reg (R final)
								prox_estado <= s0;
								out_estado <= "111";
					when s8 =>                                                 -- Calculo do desvio condicional (Final BEQ\BNE)
								prox_estado <= s0;
								out_estado <= "111";
					when s9 =>                                                 -- Desvio incodicional (Final J)
								prox_estado <= s0;
								out_estado <= "111";
					when others =>
								prox_estado <= s0;
				end case;
	end process;
	
	process(clock, atual_estado, opcode, enableControle)
		begin
			PCescCond  <= '0';
			PCesc      <= '0';
			regEscrita <= '0';
			MemEscrita <= '0';
			MemParaReg <= '0';
			ULAop      <= "0000";
			ULAfonteA  <= '0';
			ULAfonteB  <= "00";
			PCfonte    <= "00";
			
			case atual_estado is
				when s0 =>
							if(enableControle = '1') then
								ULAfonteA <= '0';
								ULAfonteB <= "01";
								ULAop     <= "0000";
								PCesc     <= '1';
							end if;
				when s1 =>
							ULAfonteA <= '0';
							ULAfonteB <= "01";
							ULAop <= "0000";
				when s2 =>
							ULAfonteA <= '1';
							ULAfonteB <= "01";
							ULAop <= opcode;
				when s3 =>
							regEscrita <= '1';
							MemParaReg <= '1';
				when s4 =>
							ULAfonteA <= '1';
							ULAfonteB <= "01";
							ULAop <= opcode;
				when s5 =>
							MemEscrita <= '1';
				when s6 =>
							ULAfonteA <= '1';
							if( opcode(0) = '1' ) then -- é imediato
								ULAfonteB <= "10";
							else
								ULAfonteB <= "00";
							end if;
							ULAop <= opcode;
				when s7 =>
							regEscrita <= '1';
							MemParaReg <= '0';
				when s8 =>
							ULAfonteA <= '0';
							ULAfonteB <= "01";
							ULAop <= opcode;
							PCescCond  <= '1';
							PCfonte <= "10";
				when s9 =>
							PCfonte <= "10";
				end case;
				enableControle <= '1';
	end process;
end behavior;