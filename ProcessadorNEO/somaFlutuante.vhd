library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somaFlutuante is
    port(
			A : in std_logic_vector (7 downto 0); --entrada
			B : in std_logic_vector (7 downto 0); --entrada
			S : out std_logic_vector (7 downto 0) --saida
		 );
end somaFlutuante;

architecture behavior of somaFlutuante is
function desloca (x : std_logic_vector (4 downto 0)) return std_logic_vector is
	variable xdeslocado : std_logic_vector (4 downto 0);
	begin
		for i in 0 to 3 loop
			xdeslocado(i) := x(i+1);
		end loop;
		
		xdeslocado(4) := '0';
		
		return xdeslocado;
	end desloca;

begin 

	process (A, B) is
		variable expoentemaior, expoentemenor : std_logic_vector(2 downto 0);
		variable significandomenor, significandomaior, significandoresult, significandoaux : std_logic_vector (4 downto 0);
		variable C : std_logic_vector (5 downto 0);
		variable aux : std_logic;
		begin
				
			if A(7 downto 5) > B(7 downto 5) then
				expoentemaior := A(7 downto 5);
				expoentemenor := B(7 downto 5);
				expoentemenor := expoentemenor + "001";
				significandomaior := A(4 downto 0);
				significandomenor := desloca (B(4 downto 0));
				significandomenor := significandomenor + "10000";
				aux := '0';
			elsif A(7 downto 5) < B(7 downto 5) then
				expoentemaior := B(7 downto 5);
				expoentemenor := A(7 downto 5);
				expoentemenor := expoentemenor + "001";
				significandomaior := B(4 downto 0);
				significandomenor := desloca (A(4 downto 0));
				significandomenor := significandomenor + "10000";
				aux := '0';
			else
				expoentemaior := A(7 downto 5);
				expoentemenor := B(7 downto 5);
				significandomaior := A(4 downto 0);
				significandomenor := B(4 downto 0);
				aux := '1';
			end if;
			
			for i in 0 to 6 loop
				if expoentemaior = expoentemenor then
					exit;
				end if;
				significandomenor:= desloca(significandomenor);
				expoentemenor := expoentemenor + "001";
			end loop;
			
			C(0) := '0';
			for i in 0 to 4 loop
					significandoresult(i):= significandomaior(i) xor significandomenor(i) xor C(i);
					C(i+1) := (significandomaior(i) and significandomenor(i)) or (significandomaior(i) and C(i)) or (significandomenor(i) and C(i));
			end loop;
			
			if C(5) = '1' then
				if aux = '1' then
					S(7 downto 5) <= expoentemaior + "001";
					S(4) <= '1';
					significandoresult := desloca(significandoresult);
					S(3 downto 0) <= significandoresult(3 downto 0);
				else
					S(7 downto 5) <= expoentemaior + "001";		
					S(4 downto 0) <= desloca(significandoresult);					
				end if;
			else
				if aux = '1' then
					S(7 downto 5) <= expoentemaior + "001";		
					S(4 downto 0) <= desloca(significandoresult);					
				else
					S(7 downto 5) <= expoentemaior;
					S(4 downto 0) <= significandoresult;
				end if;
			end if;
			
			
		end process;
end behavior;