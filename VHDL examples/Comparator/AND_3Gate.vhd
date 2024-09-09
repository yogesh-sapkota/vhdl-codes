
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_3Gate is
--  Port ( );
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       f : out STD_LOGIC);
end AND_3Gate;

architecture Behavioral of AND_3Gate is

begin
f <= a and b and c;
end Behavioral;
