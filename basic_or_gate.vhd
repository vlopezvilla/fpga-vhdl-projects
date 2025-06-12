-- Entity declaration for SEQEX
-- Takes in two bits (A and B)
-- outputs a bit C that is the logical OR of A and B
entity SEQEX is 
    port( A : in bit;     -- First input
          B : in bit;     -- Second input
          C : out bit);   -- Output: A or B
end SEQEX;

-- Architecture definition using behavioral modeling
architecture BEHAV of SEQEX is 
begin

-- Process block sensitive changes in A or B
process (A,B)
begin
    -- If either A or B is '1', set output C to '1'
    if A = '1' or B = '1' then
        C <= '1';
    -- Otherwise set C to '0'    
    else
        C <= '0';
    end if;
    
end process;

end behav;
