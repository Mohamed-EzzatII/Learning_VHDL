----------------------------------------------------------------------------------

-- File Name : test_Decoder_3x8.vhd

-- Description : test bench for 3x8 Decoder vhdl code 

-- Inputs : Enable -> Enable the decoder(1-bit) , S -> Selectors(3-bits)

-- Output : D -> decoder output value(8-bits)

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

entity test_Decoder_3x8 is
end;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------

architecture bench of test_Decoder_3x8 is

-- Create A component of the required decoder
  component Decoder_3x8
      Port ( Enable : in STD_LOGIC;
             S : in STD_LOGIC_VECTOR (2 downto 0);
             D : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

-- create a signal for every i/p and o/p
  signal Enable: STD_LOGIC;
  signal S: STD_LOGIC_VECTOR (2 downto 0);
  signal D: STD_LOGIC_VECTOR (7 downto 0);

begin

-- create an object for the required component
  uut: Decoder_3x8 port map ( Enable => Enable,
                              S      => S,
                              D      => D );

  stimulus: process
  begin
  
  
  ----------------------------------------------------------------------------------
  -- Test Case 1 :-
  
  -- o/p should be HIGH IMPEDANCE
  ----------------------------------------------------------------------------------

    Enable <= '0';
    S <="111";
    wait for 10ns;

----------------------------------------------------------------------------------
-- Test Case 2 :-

-- o/p should be 00100000
----------------------------------------------------------------------------------    
   
    Enable <= '1';
    S <="101";
    wait for 10ns;
    
----------------------------------------------------------------------------------
-- Test Case 3 :-

-- o/p should be 10000000
----------------------------------------------------------------------------------
   
    Enable <= '1';
    S <="111";
    wait for 10ns;
    
----------------------------------------------------------------------------------
-- Test Case 4 :-

-- o/p should be 00000000
----------------------------------------------------------------------------------
    Enable <= '1';
    S <="000";
    wait for 10ns;

    wait;
  end process;
end;
