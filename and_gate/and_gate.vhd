-- AND gate
-- Port list
-- Inputs: A and B (type bit)
-- Output: C (type bit)
entity and_gate is
    port( A : in bit;
          B : in bit;
          C : out bit);
end and_gate;

-- architecture definition 
architecture BEHAV of and_gate is
begin

-- process tracks changes in A and B
process (A, B)
begin
    -- if both A and B equal 1 then C will also be 1
    if A = '1' and B = '1' then
        C <= '1';
    -- otherwise C will be 0
    else
        C <= '0';
    end if;
end process;
end BEHAV;
