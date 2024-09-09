LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

USE work.components.all ;----use of my package

ENTITY swap IS
PORT ( Data : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
Resetn, w : IN std_logic ;
Clock : IN STD_LOGIC ;
RinExt : IN STD_LOGIC_VECTOR(1 TO 3) ;
Extern: IN STD_LOGIC;
BusWires : INOUT std_logic_vector(7 DOWNTO 0) ) ;
END swap ;

ARCHITECTURE Behavior OF swap IS

SIGNAL Rin1, Rin2, Rin3 : std_logic;
SIGNAL Rout1, Rout2, Rout3 : std_logic;
SIGNAL Q : STD_LOGIC_VECTOR(1 TO 3) ;
SIGNAL R1, R2, R3 : STD_LOGIC_VECTOR(7 DOWNTO 0) ;

BEGIN
control: shift_register GENERIC MAP ( M => 3 )
PORT MAP ( Resetn, Clock, w, Q ) ;
Rin1 <= RinExt(1) or Q(3) ;
Rin2 <= RinExt(2) OR Q(2) ;
Rin3 <= RinExt(3) OR Q(1) ;
Rout1<= Q(2) ;
Rout2<=Q(1) ;
Rout3 <= Q(3) ;

tri_ext: triStateBuffer PORT MAP ( Data, Extern, BusWires ) ;
reg1: register_N PORT MAP ( Clock, Rin1, BusWires, R1 ) ;
reg2: register_N PORT MAP ( Clock, Rin2,BusWires, R2 ) ;
reg3: register_N PORT MAP ( Clock, Rin3, BusWires,R3 ) ;
tri1: triStateBuffer PORT MAP ( R1, Rout1, BusWires ) ;
tri2: triStateBuffer PORT MAP ( R2, Rout2, BusWires ) ;
tri3: triStateBuffer PORT MAP ( R3, Rout3, BusWires ) ;
END Behavior ;
