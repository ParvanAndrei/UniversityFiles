LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
 
ENTITY mealy IS
PORT ( red       : IN  std_logic;
       green     : IN  std_logic;
       blue      : IN  std_logic;
       clk	 : IN std_logic;	   	
       reset	 : IN std_logic;	   	
       newColour : OUT std_logic );
END mealy; 


