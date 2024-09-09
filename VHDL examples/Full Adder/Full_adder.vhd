library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_adder is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end Full_adder;

architecture Behavioral of Full_adder is
component half_adder 
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end component;

component or_gate 
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           z : out STD_LOGIC);
end component;
signal sum1, carry1, carry2: std_logic;
begin
h1:half_adder port map (p,q,sum1,carry1);
h2: half_adder port map (sum1,r,sum,carry2);
or1: or_gate port map(carry1, carry2, carry);

end Behavioral;
