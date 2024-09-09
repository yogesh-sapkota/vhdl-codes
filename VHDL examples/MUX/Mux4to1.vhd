library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux4to1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           F : out STD_LOGIC);
end Mux4to1;

architecture Behavioral of Mux4to1 is
component Mux2x1 
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s  : in STD_LOGIC;
           F : out STD_LOGIC);
end component;
signal F1, F2: std_logic;
begin

M1:Mux2x1  port map (A,B, s(0), F1);
M2:Mux2x1  port map (C,D, s(0), F2);
M3:Mux2x1  port map (F1,F2, s(1),F);
end Behavioral;