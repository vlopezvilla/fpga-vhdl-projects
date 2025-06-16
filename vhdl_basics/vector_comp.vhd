-- Vectors and Manipulating Vectors

-- Inputs: A_BIT, B_BIT, C_BIT
-- Outputs: X_VEC, Y_VEC
-- X_VEC contains 4 bits
-- Y_VEC contans 8 bits
entity VEC_COMP is
port(A_BIT : in bit;
     B_BIT : in bit;
     C_BIT : in bit;
     X_VEC : out bit_vector(3 downto 0);
     Y_VEC : out bit_vector(7 downto 0));
end VEC_COMP;

-- architecture behavior definition
architecture BEHAV of VEC_COMP is 
begin

-- X_VEC = "A_BIT VALUE, B_BIT VALUE, C_BIT VALUE, 0"
X_VEC <= (A_BIT, B_BIT, C_BIT, '0');

-- Y_VEC = ("0, A_BIT, 0, 0, 0, B_BIT, 1, 0")
-- others assigns the rest of the bits to '0'
Y_VEC <= (1 => A_BIT, 5 => B_BIT, 6 => '1', others => '0');

end BEHAV;
