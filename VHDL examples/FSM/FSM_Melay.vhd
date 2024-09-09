
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_Melay is
 Port ( a, b,d,clk,reset : in bit ;
        x : out bit );
end FSM_Melay;

architecture Behavioral of FSM_Melay is

type state is (stateA,stateB);
signal present_state, next_state : state;

begin

process(clk,reset)
begin 
if reset ='1' then 
present_state <= stateA;
elsif clk 'event and clk = '1' then 
present_state <= next_state;
end if;
end process;

process(a,b,d,present_state)

begin 

case present_state is 
when stateA =>
x <= a;
if d = '1' then next_state <= stateB;
else next_state <= stateA;
end if;

when stateB =>
x <= b;
if d = '1' then next_state <= stateA;
else next_state <= stateB;
end if;

end case;
end process;

end Behavioral;
