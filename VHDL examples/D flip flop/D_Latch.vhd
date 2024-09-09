library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Latch is
    Port (clock : in  STD_LOGIC;
           D  : in  STD_LOGIC;
           Q ,Q_bar : out STD_LOGIC);
end D_Latch;

architecture Behavioral of D_Latch is
begin

process (clock, D)
variable tmp: std_logic;
begin
    if (clock = '1') then
        tmp := D;
        Q_bar<=not tmp;
        Q<=tmp;
        
    end if;
end process;

end Behavioral;
