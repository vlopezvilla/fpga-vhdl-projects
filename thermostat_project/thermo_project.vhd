-- Thermostat Project
-- Entity declaration for thermostat_logic
-- Takes in three inputs (current_temp, desired_temp, display_select)
-- current_temp and desired_type contain 7 bits
-- outputs temp_display also containing 7 bits

entity thermo_logic is 
    port( current_temp   :    in bit_vector(6 downto 0);     -- Inputs
          desired_temp   :    in bit_vector(6 downto 0);     
          display_select :    in bit;
          temp_display   :    out bit_vector(6 downto 0));   -- Output vector
end thermo_logic;

-- Architecture definition using behavioral modeling
architecture BEHAV of thermo_logic is 
begin

-- Process block sensitive changes in current_temp, desired_temp, display_temp
-- Notice that the output vector is not within the process list
process (current_temp, desired_temp, display_select)
begin
    -- if display select is true temp_display gets the value of current temp
    if display_select = '1' then
        temp_display <= current_temp;
        
    -- otherwise if display_select is false then temp_display gets value of desired_temp
    else
        temp_display <= desired_temp;
        
    -- end the if statement
    end if;
end process;
end behav;
