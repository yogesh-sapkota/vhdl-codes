
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity triStateBuffer is
generic (n:integer:=8);
--  Port ( );
Port(
x : in std_logic_vector(n-1 downto 0);
En : in std_logic;
y : out std_logic_vector(n-1 downto 0)
);
end triStateBuffer;

architecture Behavioral of triStateBuffer is

begin
y <=(others=>'Z') when En='0' else x;

end Behavioral;
