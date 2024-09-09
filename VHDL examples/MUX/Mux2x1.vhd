library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2x1 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s  : in STD_LOGIC;
           F : out STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
F <= ((not s) and a) or (s and b);

end Behavioral;