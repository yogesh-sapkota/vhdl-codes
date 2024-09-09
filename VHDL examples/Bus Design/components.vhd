
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

PACKAGE components is 

component triStateBuffer is
generic (n:integer:=8);
--  Port ( );
Port(

x : in std_logic_vector(n-1 downto 0);
En : in std_logic;
y : out std_logic_vector(n-1 downto 0)
);
end component;

COMPONENT shift_register IS -- left-to-right shift register with async reset
GENERIC ( M : INTEGER := 4 ) ;
PORT ( Resetn, Clock, w : IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(1 TO M) ) ;
END COMPONENT ;

COMPONENT register_N is
GENERIC (N: INTEGER:=8);
 Port ( clock : in STD_LOGIC;
 Rin : in STD_LOGIC;
 R : in STD_LOGIC_VECTOR (N-1 downto 0);
 Q : out STD_LOGIC_VECTOR (N-1 downto 0));
END component ;


end components;
