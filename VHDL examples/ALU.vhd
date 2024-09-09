library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
use IEEE.numeric_std.ALL;
--use IEEE.std_logic_arith;

entity ALU is
generic ( m : integer  := 16
          );
Port(
C_in : in std_logic;
a : in std_logic_vector (m-1 downto 0);
b: in std_logic_vector( m-1 downto 0);
opcode :in bit_vector (3 downto 0);
z: out std_logic_vector( m-1 downto 0)
);

end ALU;

architecture Behavioral of ALU is

signal AU_sig : std_logic_vector(m-1 downto 0);
signal LU_sig : std_logic_vector(m-1 downto 0);
signal C_int: integer range 0 to 1;


begin

C_int <= 1 when C_in = '1' else 0;

with opcode(2 downto 0) select

AU_sig <= std_logic_vector(signed(a)) when "000",
  std_logic_vector ( signed(a) + 1) when "001" ,
  std_logic_vector ( signed(a) - 1) when "010" ,
  std_logic_vector  (signed(b)) when "011",
  std_logic_vector ( signed(b) + 1) when "100" ,
  std_logic_vector ( signed(b) - 1) when "101" ,
  std_logic_vector(signed(a) + signed(b)) when "110",
  std_logic_vector (signed(a) + signed(b)+ C_int) when others;
  
with opcode(2 downto 0) select

LU_sig <= not a when "000",
    not b when "001",
    a and b when "010",
    a or b when "011",
    a nand b when "100",
    a nor b when "101",
    a xor b when "110",
    a xnor b  when others;
  
with opcode(3) select
    z <= AU_sig when '0',
         LU_sig when others;
    
  
end Behavioral;
