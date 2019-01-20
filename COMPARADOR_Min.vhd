Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;


Entity COMPARADOR_Min is
	Port(	Min: In std_logic_vector(5 downto 0);
			L1: Out std_logic	);
End COMPARADOR_Min;

Architecture desarrollo of COMPARADOR_Min is
	Begin
		L1 <= '1' when (Min="111100") else '0';
end desarrollo;