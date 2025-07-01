-- For Example Program
-- Entity declaration: FOREX
-- Sensitivity list 
-- Input: A_INT (an int from range 0 to 7)
-- Output: B_VEC (an array of bits or 8-bit vector)
entity FOREX is 
port ( A_INT : in integer range 0 to 7;
       B_VEC : out bit_vector (7 downto 0));
end FOREX;

-- Architecture definition for behavior for FOREX
architecture BEHAV of FOREX is
begin

-- Process because we will be using sequential logic
-- input A_INT within the processing
process (A_INT)
begin

-- Since B_VEC is an 8 bit vector we are assigning B_VEC with 0 (in 8 bits)
B_VEC <= "00000000";

-- Using a for loop to traverse from 0 to the value of A_INT
-- Notice that I is out counter variable (similar to Java/C/C++ where i is typical counter variable)
for I in 0 to A_INT loop
    B_VEC(I) <= '1';    -- B_VEC at the element I is being assigned a 1
end loop;               -- close out the loop

end process;            -- end the process
end BEHAV;              -- end behavior
       
