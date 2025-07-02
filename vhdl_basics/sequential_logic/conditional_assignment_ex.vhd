-- Conditional Assignment Example
-- Entity definition
-- Sensitivity list
-- Port Input: A_INT (integer within the range of 0 to 3
-- Port Output: B_VEC bit vector that contains 4 bits
entity CONDEX is 
    port ( A_INT  : in integer range 0 to 3;
           B_VEC  : out bit_vector(3 downto 0));
           
    end CONDEX;
    
    -- architecture definition of CONDEX
    architecture BEHAV of CONDEX is
    begin
    
    -- B gets assigned 4-bit values depending on the condition
    -- so depending on the value of A_INT, B_VEC is assigned a 4 bit value
    B_VEC <= "0001" when A_INT = 0 else     -- highest priority 
         "0010" when A_INT = 1 else 
         "0100" when A_INT = 2 else         -- lowest priority
         "1000";                            -- if A_INT is not either equal to 0,1,2
                                            -- B_VEC is assigned 1000
    end BEHAV;                              -- end behavior
