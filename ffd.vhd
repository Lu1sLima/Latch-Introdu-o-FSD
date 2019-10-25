library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S_R_latch is
	port(
		S,R : in std_logic;
		Q, nQ : out std_logic
	);
end S_R_latch;

architecture S_R_latch of S_R_latch is
	signal qq, nqq: std_logic;
begin
	qq <= R nor nqq;
	nqq <= S nor qq;
	nQ <= nqq;
	Q <= qq;
end S_R_latch; 

-------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_latch is
	port(
		D,ck: in std_logic;
		Q : out std_logic
	);
end D_latch;

architecture D_latch of D_latch is
begin
	process(ck, D)
         begin
	  if ck='1' then
	   Q <= D;
	  end if;
	end process;
end D_latch;

