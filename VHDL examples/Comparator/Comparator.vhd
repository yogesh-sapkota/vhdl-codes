library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator is
--  Port ( );
Port ( P : in std_logic_vector(3 downto 0);
       Q : in std_logic_vector(3 downto 0);
       PeqQ : out std_logic;
       PltQ : out std_logic;
       PgtQ : out std_logic);
end Comparator;

architecture Behavioral of Comparator is

component NOT_Gate
Port ( A : in STD_LOGIC;
       B : out STD_LOGIC);
end component;

component XNOR_2Gate
Port ( x : in STD_LOGIC;
       y : in STD_LOGIC;
       z : out STD_LOGIC);
       
end component;
component AND_2Gate
Port ( x : in STD_LOGIC;
       y : in STD_LOGIC;
       z : out STD_LOGIC);
end component;

component AND_3Gate
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       f : out STD_LOGIC);
end component;

component AND_4Gate
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       d : in STD_LOGIC;
       f : out STD_LOGIC);
end component;

component AND_5Gate
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       d : in STD_LOGIC;
       e : in STD_LOGIC;
       f : out STD_LOGIC);
end component;

component OR_4Gate
Port ( a : in STD_LOGIC;
       b : in STD_LOGIC;
       c : in STD_LOGIC;
       d : in STD_LOGIC;
       f : out STD_LOGIC);
end component;

component NOR_2Gate
Port ( x : in STD_LOGIC;
       y : in STD_LOGIC;
       z : out STD_LOGIC);
end component;

signal i0,i1,i2,i3: std_logic;
signal b0,b1,b2,b3 : std_logic;
signal a0,a1,a2,a3 : std_logic;
signal x,y : std_logic;

begin

B_0 : NOT_Gate port map (Q(0),b0);
B_1 : NOT_Gate port map (Q(1),b1);
B_2 : NOT_Gate port map (Q(2),b2);
B_3 : NOT_Gate port map (Q(3),b3);

X0 : XNOR_2Gate port map(P(0),Q(0),i0);
X1 : XNOR_2Gate port map(P(1),Q(1),i1);
X2 : XNOR_2Gate port map(P(2),Q(2),i2);
X3 : XNOR_2Gate port map(P(3),Q(3),i3);

A_1 : AND_2Gate port map (P(3),b3,a0);
A_2 : AND_3GAte port map (i3,b2,P(2),a1);
A_3 : AND_4Gate port map (i3,i2,b1,P(1),a2);
A_4 : AND_5Gate port map(i3,i2,i1,b0,P(0),a3);

O1 : OR_4Gate port map (a0,a1,a2,a3,x);
A : AND_4Gate port map (i0,i1,i2,i3, y);
F  : NOR_2Gate port map(x, y, PltQ);

PeqQ <= y;
PgtQ <= x;

end Behavioral;