library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tristate_buffer is
--  Port ( );
Port(A : in std_logic; --enable input 
     B : in std_logic;
     C : out std_logic );
end tristate_buffer;

architecture Behavioral of tristate_buffer is

begin
process(A,B) is
begin

if (A = '0' and B = '0') then C <= 'Z';
elsif (A = '0' and B = '1') then C <= 'Z';
elsif (A = '1' and B = '0') then C <= '0';
else C <= '1';
end if;

end process;
end Behavioral;
