LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY shift_register IS -- left-to-right shift register with async reset
GENERIC ( M : INTEGER := 4 ) ;
PORT ( Resetn, Clock, w : IN STD_LOGIC ;
Q : OUT STD_LOGIC_VECTOR(1 TO M) ) ;
END shift_register ;

ARCHITECTURE Behavior OF shift_register IS
BEGIN
PROCESS ( Resetn, Clock )
variable Q1 : STD_LOGIC_VECTOR(1 TO M ) ;
BEGIN
IF Resetn = '0' THEN
Q1 := (OTHERS => '0') ;
ELSIF Clock'EVENT AND Clock = '1' THEN
FOR i IN M DOWNTO 2 LOOP
Q1(i) := Q1(i-1) ;
END LOOP ;
Q1(1) := w ;
END IF ;
Q<=Q1;
END PROCESS ;

END Behavior ;
