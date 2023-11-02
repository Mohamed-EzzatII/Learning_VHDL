----------------------------------------------------------------------------------

-- File Name : Decoder_3x8.vhd

-- Description : 3x8 Decoder vhdl code 

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
use IEEE.STD_LOGIC_1164.ALL;

----------------------------------------------------------------------------------
-- Entity
----------------------------------------------------------------------------------

entity Decoder_3x8 is
    Port ( Enable : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (2 downto 0);
           D : out STD_LOGIC_VECTOR (7 downto 0));
end Decoder_3x8;

----------------------------------------------------------------------------------
-- Architecture
----------------------------------------------------------------------------------

architecture Behavioral of Decoder_3x8 is
begin

-- Any change in the output data is done only with any change in enable and Selectors
    decoder : process(Enable,S)
        begin
        -- The decoder is enabled , so we output the required value using case/when
        -- NOTE : USING WITH/SELECT or WHEN/ELSE will cause an ERROR BECAUSE THEY ARE NOT SEQUENTIAL STATEMENTS :) 
            if Enable ='1' then
            case S is
                    when "111" =>
                        D <= "10000000";
                    when "110" =>
                        D <= "01000000";
                    when "101" =>
                        D <= "00100000";
                    when "100" =>
                        D <= "00010000";
                    when "011" =>
                        D <= "00001000";
                    when "010" =>
                        D <= "00000100";
                    when "001" =>
                        D <= "00000010";
                    when others =>
                        D <= "00000001";
                end case;
                
             -- The decoder is disabled , so we put high impedance on output
             else 
             D <= "ZZZZZZZZ";
        end if;
    end process decoder;
end Behavioral;
