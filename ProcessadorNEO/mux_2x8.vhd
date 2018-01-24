library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x8 is
	port(
			selector: in  std_logic;
			E0, 
			E1      : in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
		 );
end mux_2x8;

architecture behavior of mux_2x8 is
begin
	process(selector, E0, E1)
	begin
		case selector is
			when '0' => output <= E0;
			when '1' => output <= E1;
		end case;
	end process;
end behavior;