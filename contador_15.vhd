Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_unsigned.all;
Use IEEE.std_logic_arith.all;

Entity contador_15 is
	Port(	up, reloj,enable: 	In std_logic;
			Q:	out std_logic_vector(3 downto 0)	);
End contador_15;

ARCHITECTURE sol OF contador_15 IS
SIGNAL conteo: STD_LOGIC_VECTOR(3 downto 0);  -- define un bus de 4 bits
SIGNAL a: std_logic;

BEGIN
		Process(reloj,enable,up,conteo)
			Begin
				if (reloj'event and reloj='1') then -- flanco ascendente
					if enable='1' or a='1' then
						a<='1';
				      if  a='1' then 
							if conteo="1111" then conteo <= "0000"; a <= '0'; --reset
							elsif up='1' then conteo <= conteo + 1;
							end if;
						end if;
					end if;	
				end if;
		Q<=conteo; -- transfiere el contenido del registro a las salidas
	END PROCESS;
END sol;