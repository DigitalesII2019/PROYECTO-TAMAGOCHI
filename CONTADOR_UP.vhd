Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity CONTADOR_UP is
	Port(	en_reset, clock: 	In std_logic;
			En:		In std_logic;
			Q:		Buffer std_logic_vector(3 downto 0)	);
End CONTADOR_UP;

Architecture comportamiento of CONTADOR_UP is
	Begin
		Process(en_reset, clock)
			Begin
				If en_reset='0' then Q <= "0000";
				elsif (clock'event and clock='1') then
					if En='1' then Q <= Q+1; end if;		 
				end if;
		End process;
End comportamiento;