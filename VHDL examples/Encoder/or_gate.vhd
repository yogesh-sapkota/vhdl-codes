entity or_gate is
    Port ( A: in BIT;
           B : in BIT;
           C : out BIT);
end or_gate;

architecture Behavioral of or_gate is

begin
C<=A or B;

end Behavioral;