library IEEE;
use IEEE.std_logic_1164.all;

entity mux_3x8 is
	port(
			selector: in  std_logic_vector(1 downto 0);
			E0, 
			E1,
			E2      : in  std_logic_vector(7 downto 0);
			output  : out std_logic_vector(7 downto 0)
		 );
end mux_3x8;

architecture behavior of mux_3x8 is
begin
	process(selector, E0, E1, E2)
	begin
		case selector is
			when "00" => output <= E0;
			when "01" => output <= E1;
			when "10" => output <= E2;
			when others => output <= "00000000";
		end case;
	end process;
end behavior;