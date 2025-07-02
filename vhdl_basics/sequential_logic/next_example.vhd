-- Next Code Example:
-- Entity definition of NEXTEX
-- Sensitivity list
-- Input ports: A_INT (defined range from 0 to 7)
-- Output ports: B_VEC (defined bit vector that contains 8 bits)

entity NEXTEX is
    port( A_INT : in integer range 0 to 7;
          B_VEC : out bit_vector(7 downto 0));
          
    end NEXTEX;
    
    -- architecture definition that specifies the behavior 
    architecture BEHAV of NEXTEX is
    begin
    
    -- defining process for sequential logic
    process(A_INT)
    begin
    
    -- defining B_VEC with 0 with 8-bits
    B_VEC <= "00000000";
    
    -- for loop that will iterate from 0 to 7 (iterate a total of 8 times)
    for I in 0 to 7 loop
        next when I = A_INT;    -- next skips when I = A_INT iteration
        B_VEC(I) <= '1';        -- sets every element in B_VEC to 1 except element at A_INT
    end loop;                   -- close the loop
    
    end process;                -- end process
    end BEHAV;                  -- end behavior
