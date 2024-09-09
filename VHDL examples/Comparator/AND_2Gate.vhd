
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_2Gate is
Port ( x : in STD_LOGIC;
       y : in STD_LOGIC;
       z : out STD_LOGIC);
end AND_2Gate;

architecture Behavioral of AND_2Gate is

begin
z<=x and y;

end Behavioral;