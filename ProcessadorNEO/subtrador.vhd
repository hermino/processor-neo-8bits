library IEEE;
use IEEE.std_logic_1164.ALL;

entity subtrador is
    Port(
           input, 
			  input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
end subtrador;

architecture behavior of subtrador is
	component somador is
		Port(
           input, input2: in  std_logic_vector(7 downto 0);
           output: out std_logic_vector(7 downto 0)
			);
	end component;
	
	signal aux, complement2: std_logic_vector(7 downto 0);
begin
	aux <= not input2;
	G2: somador port map(aux, "00000001", complement2);
	G3: somador port map(input, complement2, output);
end behavior;