

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity BCD_Counter is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           count : in STD_LOGIC_VECTOR (3 downto 0));
end BCD_Counter;

architecture Behavioral of BCD_Counter is

type state is (zero,one,two,three,four,five,six,seven,eight,nine);

signal present_state, next_state : state;

begin


end Behavioral;
