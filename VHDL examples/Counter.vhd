library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;

entity Counter is
--  Port ( );
Port( en : in std_logic;
      clear : in std_logic;
      clock : in std_logic;
      Q : out std_logic_vector(3 downto 0) );
end Counter;

architecture Behavioral of Counter is

signal count : std_logic_vector(3 downto 0);
begin
process(clock,en,clear)
begin
if clear ='1' then count <= "0000";
elsif (clock 'event and clock ='1') then 
if en = '1' then
count <= count + 1;
else
count <= count;
end if;
end if;

end process;

Q<= count;
end Behavioral;
