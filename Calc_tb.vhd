----------------------------------------------------------------------------------

-- File Name : Calc_tb.vhd

-- Description : Simple adder multiplier vhdl code testbench 

-- Inputs : op1,op2 -> The two numbers to operate(Integer) , Operation -> 0 : adder , 1 : multiplier

-- Output : result -> calculator output value(Integer)

-- Version : v1.0.1

-- Auther : Mohamed Ezzat 

-- Creation date : 2/11/2023

----------------------------------------------------------------------------------

----------------------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------------------

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

----------------------------------------------------------------------------------
-- Entity
----------------------------------------------------------------------------------

entity Calc_tb is
end;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------

architecture bench of Calc_tb is

-- Create A component of Calc entity
  component Calc
    Port ( op1 : in INTEGER;
         op2 : in INTEGER;
         operation : in STD_LOGIC;
         result : out INTEGER);
  end component;
  
-- Create A signal for each i/p and o/p
  
  signal op1: INTEGER;
  signal op2: INTEGER;
  signal operation: STD_LOGIC;
  signal result: INTEGER;

begin

-- Create an object of component of Calc entity
  uut: Calc port map ( op1       => op1,
                       op2       => op2,
                       operation => operation,
                       result    => result );

  stimulus: process
  begin
  
  ----------------------------------------------------------------------------------
  -- Test Case 1 :-
  
  -- o/p should be 10*11=110
  ----------------------------------------------------------------------------------

    op1 <= 10;
    op2 <= 11;
    operation <='1';
    wait for 10ns;
	
  ----------------------------------------------------------------------------------
  -- Test Case 2 :-
  
  -- o/p should be 11+12=23
  ----------------------------------------------------------------------------------

    op1 <= 12;
    op2 <= 11;
    operation <='0';
    wait for 10ns;

    wait;
  end process;

end;
