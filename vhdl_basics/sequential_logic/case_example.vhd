-- Case Example
-- Entity Definition
-- Inputs:
    -- A_INT is type integer with range from 0 to 7
-- Outputs:
    -- B_VEC is type bit vector with 8 bits = 1 byte
entity CASE_EX is 
    port( A_INT : in integer range 0 to 7;
          B_VEC : out bit_vector(7 downto 0));
          
end CASE_EX;    -- ending the entity CASE_EX
          
-- Create the architecture for the CASE_EX
architecture BEHAV of CASE_EX is
begin

-- Create the process to allow sequential logic
process(A_INT)
begin

-- instead of if statements use case statements
-- Case focused on the A_INT input port
case A_INT is
    when 0 =>   -- when A_INT is equal to 0
        B_VEC <= "00000001";     -- 8 bits
    when 1 =>   -- when A_INT is equal to 1
        B_VEC <= "00000010";    -- 8 bits
    when others =>  -- when A_INT is equal to anything other than 1 or 0
        B_VEC <= "00000000";     -- 8 bits
end case;       -- end case
end process;    -- end process
end BEHAV;      -- end BEHAV
      
