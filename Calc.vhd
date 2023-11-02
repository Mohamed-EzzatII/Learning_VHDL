----------------------------------------------------------------------------------

-- File Name : Calc.vhd

-- Description : Simple adder multiplier vhdl code 

-- Inputs : op1,op2 -> The two numbers to operate(8-bits) , Operation -> 0 : adder , 1 : multiplier

-- Output : result -> calculator output value(8-bits)

-- Version : v1.0.1

-- Auther : Mohamed Ezzat 

-- Creation date : 2/11/2023

----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.Numeric_Std.all;

----------------------------------------------------------------------------------
-- Entity
----------------------------------------------------------------------------------

entity Calc is
    Port ( op1 : in INTEGER;
           op2 : in INTEGER;
           operation : in STD_LOGIC;
           result : out INTEGER);
end Calc;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------

architecture Behavioral of Calc is

begin

result <= (op1*op2) when operation ='1' else  -- multipling operation
          (op1+op2) when operation ='0';
        
end Behavioral;
