
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity johnson_counter is
generic ( n : integer := 4) ;
 Port (
 clk : in std_logic;
 reset : in std_logic;
 Q : out std_logic_vector(n-1 downto 0)
 );
end johnson_counter;

architecture Behavioral of johnson_counter is

signal Q_int : std_logic_vector(n-1 downto 0);
begin

process(clk,reset)
begin
if reset ='1' then Q_int <= (others =>'0');
elsif clk'event and clk ='1' then 

Q_int(0) <= not Q_int(n-1);
for i in 0 to n-2 loop 
Q_int(i+1) <= Q_int(i);
end loop;
end if;
end process;

Q <= Q_int;
end Behavioral;
