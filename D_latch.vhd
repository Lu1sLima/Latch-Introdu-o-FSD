library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_latch is
	port(
		D,ck: in STD_LOGIC;
		Q : Out STD_LOGIC
	);
end D_latch;

architecture a1 of D_latch is
begin
	process(ck, D)
         begin
	  if ck='1' then
	   Q <= D;
	  end if;
	end process;
end a1;

