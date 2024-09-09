library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity XOR_Gate is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end XOR_Gate;

architecture Behavioral of XOR_gate is
begin
z<=x xnor y;
end Behavioral;

