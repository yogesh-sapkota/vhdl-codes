
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SR_Latch is
--  Port ( );
Port(
S :in std_logic;
R : in std_logic;
CLK : in std_logic;
Q_t1: out std_logic;
Q_t1P : out std_logic
);

end SR_Latch;

architecture Behavioral of SR_Latch is
begin
process(CLK)
variable tmp: std_logic;
begin

end process;

end Behavioral;
