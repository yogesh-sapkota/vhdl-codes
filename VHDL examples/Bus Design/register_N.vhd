library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_N is
GENERIC (N: INTEGER:=8);
 Port ( clock : in STD_LOGIC;
 Rin : in STD_LOGIC;
 R : in STD_LOGIC_VECTOR (N-1 downto 0);
 Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end register_N;

architecture Behavioral of register_n is

begin
process(clock)
begin
if (clock 'event and clock='1') then 
 if Rin ='1' then
 Q<=R;
 ELSE
 null;
 END IF;
 End if;
END process;
end Behavioral; 