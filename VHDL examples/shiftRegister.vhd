library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftRegister is

generic (n:integer:=8);
Port(
clk : in std_logic;
reset : in std_logic;
w : in std_logic;
Q : in std_logic_vector(n-1 downto 0)
);
end shiftRegister;

architecture Behavioral of shiftRegister is
signal q1: std_logic_vector(n-1 downto 0);
begin
process(reset,clk)
begin
if reset='0' then q1<=(others=>'0');
else if clk'event and clk = '1' then 
--for loop
for i in n downto 2 
loop q1(i) <= q1(i-1);
end loop;

q1(1) <= w; 
end if;
end process;

Q<= q1;

end Behavioral;
