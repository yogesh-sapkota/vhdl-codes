library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity XNOR_2Gate is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end XNOR_2Gate;

architecture Behavioral of XNOR_2Gate is
begin
z<=x xnor y;
end Behavioral;

