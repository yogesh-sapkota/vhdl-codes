library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_GATE is
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is

begin

B<= not A;
end Behavioral;