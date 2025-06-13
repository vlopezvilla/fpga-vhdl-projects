-- Entity declaration for literal_assign logic
-- notice that each port is out type instead of in type
entity literal_assign is
    port(A_BIT  : out bit;
         B_VEC  : out bit_vector(7 downto 0);    -- 8 bits (1 byte)
         C_INT  : out integer;
         D_BOOL : out boolean);
         
end literal_assign;

-- literal assignment for each port type
architecture BEHAV of literal_assign is
begin

A_BIT <= '1';           -- bit type must be assigned with single quotes
B_VEC <= "10001010";    -- vector type must be assigned with double quotes
C_INT <= 15;            -- assign directly with a number
D_BOOL <= TRUE;         -- assign with either TRUE/FALSE

end BEHAV;
