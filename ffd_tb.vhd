library ieee,work;
use ieee.std_logic_1164.all;

entity tb is
end tb;

architecture tb of tb is 
	signal in_S, in_R, in_Q, in_nQ, in_D, in_QD  : std_logic;
	signal  in_ck : std_logic := '0';

 begin

in_S <= '0', '1' after 10 ns, '0' after 60 ns, '1' after 100 ns, '0' after 140 ns, '1' after 200 ns;
in_R <= '0', '1' after 60 ns, '0' after 100 ns, '1' after 160 ns, '0' after 180 ns; 
in_ck <= not in_ck after 20 ns; -- LEMBRAR DE INICIALIZAR ESTE SINAL EM ZERO NA DECLARAÇÃO!
in_D <= '0', '1' after 18 ns, '0' after 22 ns, '1' after 24 ns, '0' after 26 ns, '1' after 30 ns,
 '0' after 34 ns, '1' after 36 ns, '0' after 45 ns, '1' after 48 ns, '0' after 59 ns,
 '1' after 70 ns, '0' after 75 ns, '1' after 79 ns, '0' after 90 ns, '1' after 110 ns,
 '0' after 170 ns, '1' after 300 ns;

SRlatch: entity work.S_R_latch
     port map(
	S  => in_S,
	R  => in_R,
	Q  => in_Q,
	nQ => in_nQ
     ); 
  
 Dlatch: entity work.D_latch
      port map(
	D => in_D,
	ck => in_ck,
	Q => in_QD
      );
   

end architecture;
