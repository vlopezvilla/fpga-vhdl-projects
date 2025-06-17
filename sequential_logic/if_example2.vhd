-- Entity definition of IF_EXAM2
-- Defining the ports
-- Inputs:
    -- X_INT is type integer
    -- Y_BIT is type bit
-- Outputs:
    -- M_VEC is type bit vector 
    -- K_INT is type integer
entity IF_EXAM2 is
    port( X_INT : in integer;
          Y_BIT : in bit;   
          M_VEC : out bit_vector;   
          K_INT : out integer);
end IF_EXAM2;                   -- end entity of IF_EXAM2
    
-- Begin the architecture of BEHAV for the entity IF_EXAM2
architecture BEHAV of IF_EXAM2 is
begin

-- To use sequential logic for the inputs X_INT and Y_BIT
process(X_INT, Y_BIT)
begin

-- Create if-elsif chains 

-- if the X_INT is equal to 25 and Y_BIT is equal to 1
if X_INT = 25 and Y_BIT = '1' then
    M_VEC <= "1010";        -- M_VEC is equal to 1010
    K_INT <= 100;           -- K_INT is equal to 100
    
-- if Y_BIT is equal to 1 (X_INT does not equal 25)
elsif Y_BIT = '1' then
    M_VEC <= "0000";        -- M_VEC is equal to 0000
    K_INT <= 0;             -- K_INT is equal to 0
    
-- otherwise (both X_INT is not equal to 25 and Y_BIT is not equal to 1)
else
    M_VEC <= "1111";        -- M_VEC is equal to 1111
    K_INT <= 500;           -- K_INT is equal to 500
end if;

end process;
end BEHAV;
