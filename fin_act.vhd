Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;


Entity fin_act is
	Port(	Hora: In std_logic_vector (4 downto 0);
			Min: In std_logic_vector(5 downto 0);
			q: Out std_logic	);
End fin_act;

Architecture desarrollo of fin_act is
	Begin
		q <='0' when ((Hora="01000" and Min ="011110") or (Hora="01001" and Min ="011110") or (Hora="01011" and Min ="000000") or (Hora="01101" and Min ="000000") or (Hora="01110" and Min ="000000") or (Hora="10010" and Min ="000000") or (Hora="10100" and Min ="000000") or (Hora="10101" and Min ="000000") or (Hora="00111" and Min ="000000")) else '1' ;
end desarrollo;