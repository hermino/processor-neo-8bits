library IEEE;
use IEEE.std_logic_1164.ALL;

entity somador is
    Port(
           input, 
			  input2  : in  std_logic_vector(7 downto 0);
		     overflow: out std_logic;
           output  : out std_logic_vector(7 downto 0)
			);
end somador;

architecture behavior of somador is

begin
	process(input, input2)
	
	variable result: std_logic_vector(7 downto 0);
	variable cin, cout: std_logic;
	
	begin
		cout := '0';
		for i in 0 to 7 loop
				cin := cout;
				result(i) := (input(i) xor input2(i)) xor cin;
				cout := (input2(i) and cin) or (input(i) and cin) or (input(i) and input2(i));
		end loop;
		output <= result;
		overflow <= cout;
	end process;
end behavior;