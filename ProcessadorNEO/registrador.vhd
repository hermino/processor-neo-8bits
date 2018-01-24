library IEEE;
use IEEE.std_logic_1164.ALL;

entity registrador is
    Port(
			  clock, 
			  enable: in  std_logic;
           input : in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end registrador;

architecture behavior of registrador is
begin
	process(clock, enable)
		begin
		if( falling_edge(clock) ) then
			if ( enable = '1' ) then
				output <= input;
			end if;
		end if;
	end process;	
end behavior;