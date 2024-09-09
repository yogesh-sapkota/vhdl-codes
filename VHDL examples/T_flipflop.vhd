----------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_flipflop is
--  Port ( );
Port(clock : in std_logic;
     T : in std_logic;
     reset : in std_logic;
     Q : out std_logic;
     Q_bar : out std_logic);
     
end T_flipflop;

architecture Behavioral of T_flipflop is

begin
process(T,clock,reset)

variable temp: std_logic;
begin 

if reset ='1' then
temp := '0';

elsif clock 'event and clock ='1' then
if T='1' then 
temp := not temp;
else
temp := temp;
end if;
end if;

Q <= temp;
Q_bar <= not temp;
end process;

end behavioral;
