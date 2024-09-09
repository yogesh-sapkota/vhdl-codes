
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR_2Gate is
--  Port ( );
Port ( x : in STD_LOGIC;
       y : in STD_LOGIC;
       z : out STD_LOGIC);
end NOR_2Gate;

architecture Behavioral of NOR_2Gate is

begin

z <= x nor y;

end Behavioral;
