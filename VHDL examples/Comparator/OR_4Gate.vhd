
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity OR_4Gate is
--  Port ( );
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       d : in STD_LOGIC;
       f : out STD_LOGIC);
end OR_4Gate;

architecture Behavioral of OR_4Gate is

begin

f <= a or b or c or d;
end Behavioral;
