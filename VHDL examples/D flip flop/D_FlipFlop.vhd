library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FlipFlop is
    Port (clock : in  STD_LOGIC;
           D  : in  STD_LOGIC;
           Q ,Q_bar : out STD_LOGIC);
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is

component D_Latch is
    Port (clock : in  STD_LOGIC;
           D  : in  STD_LOGIC;
           Q ,Q_bar : out STD_LOGIC);
end component;

signal q1Sig,qSigBar, clkNot : std_logic ;

begin
clkNot <= not clock;
D_1 : D_Latch port map (clock,D,q1Sig,qSigBar);
D_2 : D_Latch port map (clkNot,q1Sig,Q,Q_bar);

end Behavioral;
