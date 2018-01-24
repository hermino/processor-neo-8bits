library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoriaDados is
	port(
			clock, 
			MemEscrita  : in std_logic;
			endereco    : in std_logic_vector (1 downto 0);
			datain      : in std_logic_vector (7 downto 0);
			dataout    : out std_logic_vector(7 downto 0)
		  );
end MemoriaDados;

architecture behavior of MemoriaDados is
type MEMORY_TYPE is array (3 downto 0) of std_logic_vector(7 downto 0);
signal memoria: MEMORY_TYPE;
begin
	process(clock, MemEscrita, endereco, datain)
	begin
		if( rising_edge(clock) ) then
			if( MemEscrita = '0' ) then
				dataout <= memoria(to_integer(unsigned(endereco)));
			else
				memoria(to_integer(unsigned(endereco))) <= datain;
			end if;
		end if;
	end process;
end behavior;
		