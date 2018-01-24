library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradores is
	port(
			clock, 
			enableWrite : in std_logic;
			endereco_A, 
			endereco_B  : in std_logic_vector (1 downto 0);
			datain      : in std_logic_vector (7 downto 0);
			data_regA,
			data_regB   : out std_logic_vector(7 downto 0)
		  );
end bancoRegistradores;

architecture behavior of bancoRegistradores is
type REGISTER_TYPE is array (3 downto 0) of std_logic_vector(7 downto 0);
signal registrador: REGISTER_TYPE;
begin
	process(clock, enableWrite, endereco_A, endereco_B, datain)
	begin
		if( rising_edge(clock) ) then
			if( enableWrite = '1' ) then
				registrador(to_integer(unsigned(endereco_A))) <= datain;
			else
				data_regA <= registrador(to_integer(unsigned(endereco_A)));
				data_regB <= registrador(to_integer(unsigned(endereco_B)));
			end if;
		end if;
	end process;
end behavior;
		