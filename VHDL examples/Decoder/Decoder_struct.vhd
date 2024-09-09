library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_Struc is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           D : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_Struc;

architecture Behavioral of Decoder_Struc is

component AND_GATE
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component;

component NOT_GATE 
    Port ( A : in STD_LOGIC;
           B : out STD_LOGIC);
end component;

signal s1, s2: STD_LOGIC;

begin
N1:NOT_GATE port map (A(0),s1);
N2:NOT_GATE port map (A(1),S2);
A1: AND_GATE port map (S1,S2, D(0));
A2: AND_GATE port map (A(0),S2, D(1));
A3: AND_GATE port map (S1,A(1), D(2));
A4: AND_GATE port map (A(0),A(1), D(3));
end Behavioral;
