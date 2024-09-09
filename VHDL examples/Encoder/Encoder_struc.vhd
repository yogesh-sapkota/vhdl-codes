library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Encoder_struc is
    Port ( W : in BIT_VECTOR (3 downto 0);
           Y : out BIT_VECTOR (1 downto 0));
end Encoder_struc;

architecture Behavioral of Encoder_struc is
component or_gate 
   Port ( A: in BIT;
           B : in BIT;
           C : out BIT);
end component;
begin
O1: or_gate port map (W(1),W(3),Y(0));
O2: or_gate port map (W(2),W(3),Y(1));

end Behavioral;