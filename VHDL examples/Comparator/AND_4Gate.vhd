
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity AND_4Gate is
--  Port ( );
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       d : in STD_LOGIC;
       f : out STD_LOGIC);
end AND_4Gate;

architecture Behavioral of AND_4Gate is

begin
f <= a and b and c and d;
end Behavioral;
