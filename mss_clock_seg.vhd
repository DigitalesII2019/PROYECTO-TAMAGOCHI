LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY mss_clock_seg IS
	PORT(clock,clock_seg : IN STD_LOGIC;
		 clock_s : OUT STD_LOGIC);
END mss_clock_seg;

ARCHITECTURE estructura OF mss_clock_seg IS
Type estado is (Ta,Tb,Tc);
SIGNAL y:estado;
BEGIN
	PROCESS(clock,clock_seg)
	BEGIN
  		if (clock'event and clock='1') then
			case y is
				when Ta=> 	if clock_seg ='1' then y<=Tb;
								else y<=Ta;
								end if;
				when Tb=>	if clock_seg='1' then y<=Tb;
								else y<=Tc;
								end if;
				when Tc=>	y<=Ta;
			end case;
		end if;
	END PROCESS;
	
PROCESS(y)
	BEGIN
		clock_s<='0';
			case y is
				when Ta=>	
				when Tb=>	
				when Tc=>	clock_s<='1';
			end case;
	END PROCESS;
END estructura;