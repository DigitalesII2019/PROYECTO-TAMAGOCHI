LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_Hora IS
	PORT(reloj, enable,en_reset: IN STD_LOGIC;
		  Hora : OUT STD_LOGIC_VECTOR (4 downto 0));
END contador_Hora;

ARCHITECTURE sol OF contador_Hora IS
SIGNAL conteo: STD_LOGIC_VECTOR(4 downto 0);  -- define un bus de 5 bits	
BEGIN

	PROCESS(reloj,conteo,en_reset)
	BEGIN
  		if (reloj'event and reloj='1') then -- flanco ascendente
			if enable ='1' then conteo<=conteo+1;   -- incremento
			elsif (conteo="11000" or en_reset = '0') then conteo <="00000"; --reset
			end if;
		end if;
		Hora<=conteo; --transfiere el contenido del registro a las salidas
	END PROCESS;
END sol;