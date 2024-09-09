library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_GATE is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end AND_GATE;

architecture Behavioral of AND_GATE is

begin

C<=A and B;
end Behavioral;