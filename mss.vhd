LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY mss IS
	PORT(clock,reset,start,set,enter,comer,jugar,banio,dormir,mostrar : IN STD_LOGIC;
		 una_hora,un_min,en_reloj,en_comer,en_jugar,en_banio,en_dormir,en_mostrar: OUT STD_LOGIC;
		 estados:	out std_logic_vector(3 downto 0));
END mss;

ARCHITECTURE estructura OF mss IS
Type estado is (Ta,Tb,Tc,Td,Te,Tf,Tg,Th,Ti,Tj,Tk,Tl,Tm,Tn);
SIGNAL y:estado;
BEGIN
	PROCESS(clock,reset)
	BEGIN
		if reset='0' then y<=Ta;
  		elsif (clock'event and clock='1') then
			case y is
				when Ta=> 	if start='1' then y<=Tb;
								else y<=Ta;
								end if;
				when Tb=>	if start='1' then y<=Tb;
								else y<=Tc;
								end if;
				when Tc=>	if set='1' then y<=Td;
								elsif set='0' and enter='1' then y<=Te;
								else y<=Tc;
								end if;
				when Td=>	if set='1' then y<=Td;
								else y<=Tc;
								end if;
				when Te=>	if enter='1' then y<=Te;
								else y<=Tf;
								end if;
				when Tf=>	if set='1' then y<=Tg;
								elsif set='0' and enter='1' then y<=Th;
								else y<=Tf;
								end if;
				when Tg=>	if set='1' then y<=Tg;
								else y<=Tf;
								end if;
				when Th=>	if enter='1' then y<=Th;
								else y<=Ti;
								end if;
				when Ti=>	if comer='1' then y<=Tj;
								elsif jugar='1' then y<=Tk;
								elsif banio='1' then y<=Tl;
								elsif dormir='1' then y<=Tm;
								elsif mostrar='1' then y<=Tn;
								else y<=Ti;
								end if;
				when Tj=>	if comer='1' then y<=Tj;
								else y<=Ti;
								end if;
				when Tk=>	if jugar='1' then y<=Tk;
								else y<=Ti;
								end if;
				when Tl=>	if banio='1' then y<=Tl;
								else y<=Ti;
								end if;
				when Tm=>	if dormir='1' then y<=Tm;
								else y<=Ti;
								end if;
				when Tn=>	if mostrar='1' then y<=Tn;
								else y<=Ti;
								end if;
			end case;
		end if;
	END PROCESS;
	
PROCESS(y,reset,set,enter,comer,jugar,banio,dormir,mostrar)
	BEGIN
		una_hora<='0';un_min<='0';en_reloj<='0';en_comer<='0';en_jugar<='0';en_banio<='0';en_dormir<='0';en_mostrar<='0';estados<="0000";
			case y is
				when Ta=>	estados<="0001"; 
				when Tb=>	estados<="0010";
				when Tc=>	estados<="0011";
				when Td=>	if set='0' then una_hora<='1';end if; estados<="0100";
				when Te=>	estados<="0101";
				when Tf=>	estados<="0110";
				when Tg=>	if set='0' then un_min<='1';end if; estados<="0111";
				when Th=>	en_reloj<='1'; estados<="1000";
				when Ti=>	en_reloj<='1'; estados<="1001";
				when Tj=>	if comer='0' then en_comer<='1';end if; en_reloj<='1'; estados<="1010";
				when Tk=>	if jugar='0' then en_jugar<='1';end if; en_reloj<='1'; estados<="1011";
				when Tl=>	if banio='0' then en_banio<='1';end if; en_reloj<='1'; estados<="1100";
				when Tm=>	if dormir='0' then en_dormir<='1';end if; en_reloj<='1'; estados<="1101";
				when Tn=>	if mostrar='0' then en_mostrar<='1';end if; en_reloj<='1'; estados<="1110";

				
				
			end case;
	END PROCESS;
END estructura;