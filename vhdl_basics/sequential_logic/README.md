## Sequential Logic in VHDL

#### The following are considered Sequential logic in VHDL:
1) If conditional statements
2) Case Statements
3) For loop statements

Recall that the sequential logic must be contained within a `process` statement

#### If Conditional Statements
- The logic of if statements can be described in a **priority MUX structure**
- If statements are ordered in priority (top to bottom)

#### Case Statements
- The logic of case statements does not contain priority like if statements
- Case statements can be described in a **flat MUX structure**
- Use case statements when priority does not matter; otherwise, use if statements because these are preferred by programmers

#### For Statements
- Execute a block of code that can be iterated N times, specified range
##### For loop syntax:
 for `identifier` in discrete_range loop
   'sequential statement`
end loop `loop label`
