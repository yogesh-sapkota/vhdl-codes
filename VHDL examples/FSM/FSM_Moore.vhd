library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity FSM_MOORE is
-- Port ( );
PORT ( clk, rst: IN STD_LOGIC;
count: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end FSM_MOORE;
architecture Behavioral of FSM_MOORE is
TYPE state IS (zero, one, two, three, four,
five, six, seven, eight, nine);
SIGNAL pr_state, nx_state: state;
BEGIN
------------- Sequential section: -----------------
PROCESS (rst, clk)
BEGIN
IF (rst='1') THEN
pr_state <= zero;
ELSIF (clk'EVENT AND clk='1') THEN
pr_state <= nx_state;
END IF;
END PROCESS;
------------- combinational section: -----------------
PROCESS (pr_state)
BEGIN
CASE pr_state IS
WHEN zero =>
count <= "0000";
nx_state <= one;
WHEN one =>
count <= "0001";
nx_state <= two;
WHEN two =>
count <= "0010";
nx_state <= three;
WHEN three =>
count <= "0011";
nx_state <= four;
WHEN four =>
count <= "0100";
nx_state <= five;
WHEN five =>
count <= "0101";
nx_state <= six;
WHEN six =>
count <= "0110";
nx_state <= seven;
WHEN seven =>
count <= "0111";
nx_state <= eight;
WHEN eight =>
count <= "1000";
nx_state <= nine;
WHEN nine =>
count <= "1001";
nx_state <= zero;
END CASE;
END PROCESS;
end Behavioral;