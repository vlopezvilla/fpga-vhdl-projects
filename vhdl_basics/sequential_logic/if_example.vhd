-- If-elsif example
-- Entity declaration 
-- Inputs: X_INT is type integer
-- Output: Y_BOOL is type boolean 
--         Z_INT is type integer
entity IF_EXAM is 
    port( X_INT  : in integer;
          Y_BOOL : out boolean;
          Z_INT  : out integer); 
end IF_EXAM;

-- Architecture defines how the inputs/outputs work
architecture BEHAV of IF_EXAM is
begin

-- The reason why we use process here is because conditionals are sequential statements
-- Process allows for the hardware to recognize and run the if statements line by line 

process(X_INT)
begin

-- If the value of the X_INT input is less than 5 
if X_INT < 5 then
    Y_BOOL <= TRUE;     -- Y_BOOL is set to true 
    Z_INT <= 1;         -- Z_INT is set to 1
    
-- If the value of X_INT input is equal to or equal to 5 and less than 7
elsif X_INT < 7 then
    Y_BOOL <= TRUE;     -- Y_BOOL is set to true 
    Z_INT <= 44;        -- Z_INT is set to 44
else
    Y_BOOL <= FALSE;    -- Y_BOOL is set to false
    Z_INT <= 0;         -- Z_INT is set to 0
    
end if;                 -- close out the if conditions
end process;            -- close out the process

end BEHAV;              -- end the BEHAV
