-- Default Assignment
-- Entity definition 
-- Inputs:
    -- X_INT is type integer
-- Outputs: 
    -- M_VEC is type bit vector containing 4 bits
entity DEF_ASSIGN is
port ( X_INT    : in integer;
       M_VEC    : out bit_vector(3 downto 0));

end DEF_ASSIGN;      -- end entity

-- begin architecture of NDFLT
architecture BEHAV of DEF_ASSIGN is
begin

-- begin process for the input X_INT
process(X_INT)
begin

-- Default assignment this prevents "latching" to occur
M_VEC <= "1111";

-- if X_INT is equivalent to 25
if X_INT = 25 then
    -- M_VEC will become 1010
    M_VEC <= "1010";
end if;                 -- end if condition

-- end process
end process;

-- close BEHAV
end BEHAV;
