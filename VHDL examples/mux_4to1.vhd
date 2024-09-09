
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4to1 is
    Port ( S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           Y : OUT STD_LOGIC);
end mux_4to1;

architecture Behavioral of mux_4to1 is

begin
process(S0,S1) is
begin 
if (S0 = '0' and S1 = '0') then Y <= I0;
elsif (S0 = '1' and S1 = '0') then Y <= I1;
elsif (S0 = '0' and S1 = '1') then Y <= I2;
else Y <= I3;
end if;
end process;

end Behavioral;
