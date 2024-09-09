
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity UDSync_Counter is
  Port (
        flag : in std_logic;
        clk : in std_logic; 
        reset : in std_logic;
        Q : out std_logic_vector(3 downto 0)
  );
end UDSync_Counter;

architecture Behavioral of UDSync_Counter is

signal q1 : std_logic_vector(3 downto 0);
begin

process(clk,reset)
begin

if reset='0' then q1 <= "0000" ;
elsif clk'event and clk ='1'then 
if flag = '1' then q1 <= q1 + 1;
else q1 <= q1-1;
end if;
end if;
end process;

Q <= q1;

end Behavioral;
