LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_Min IS
	PORT(reloj, enable, habi,un_min,en_reset: IN STD_LOGIC;
		  Min : OUT STD_LOGIC_VECTOR (5 downto 0));
END contador_Min;

ARCHITECTURE sol OF contador_Min IS
SIGNAL conteo: STD_LOGIC_VECTOR(5 downto 0);  -- define un bus de 6 bits	
BEGIN

	PROCESS(reloj,enable,conteo,en_reset,habi,un_min)
	BEGIN
		if (reloj'event and reloj='1') then -- flanco ascendente
			if un_min ='1' then conteo<=conteo+1; --incremento
			elsif (conteo = "111100" or en_reset = '0') then conteo <="000000"; --reset
			elsif habi = '1' then
				if enable ='1' then conteo<=conteo+1; --incremento
				end if;
			end if;
		end if;
		Min<=conteo; -- transfiere el contenido del registro a las salidas
	END PROCESS;
END sol;