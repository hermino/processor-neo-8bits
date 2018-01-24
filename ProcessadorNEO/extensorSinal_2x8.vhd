library IEEE;
use IEEE.std_logic_1164.ALL;

entity extensorSinal_2x8 is
    Port(
           input : in  std_logic_vector(1 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end extensorSinal_2x8;

architecture behavior of extensorSinal_2x8 is
begin
	
	output(7 downto 2) <= "000000";
	output(1 downto 0) <= input;
	
end behavior;