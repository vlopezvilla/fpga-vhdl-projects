-- Introducing boolean types:
-- beginning the entity defined as BOOL_EXAMPLE
-- port list A and B inputs, C are outputs
entity BOOL_EXAMPLE is
    port( A : in integer;
          B : in integer;
          C : out boolean);
          
end BOOL_EXAMPLE;

-- architecture definition 
architecture BEHAV of BOOL_EXAMPLE is 
begin

-- C is assigned the comparison of A and B
-- checks whether A is greater than or equal to B
-- C is either assigned with 
C <= A >= B;

end BEHAV;
