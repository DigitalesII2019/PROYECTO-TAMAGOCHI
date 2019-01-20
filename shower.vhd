library ieee;
use ieee.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;

entity shower is

PORT( V: in std_logic_vector(3 downto 0);
      A: in std_logic_vector(3 downto 0);
		R: in std_logic_vector(3 downto 0);
		cont: in std_logic_vector(3 downto 0);
		Q: out std_logic_vector(3 downto 0));
end shower;

Architecture sol of shower is

Begin
	Process(cont,V,A,R)
		Begin
			if (cont>="0001" and cont<="0101") then Q<=V;
			elsif (cont>"0101" and cont<="1010") then Q<=A;
			elsif (cont>"1010") then Q<=R;
			else Q<="0000";
			end if;
	END PROCESS;
end sol;