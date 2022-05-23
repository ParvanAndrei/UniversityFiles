LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mealy_tb IS
GENERIC ( per : TIME := 10 ns );
PORT ( red   : OUT std_logic;
       green : OUT std_logic;
       blue  : OUT std_logic;
       clk   : OUT std_logic;
       reset : OUT std_logic );
END mealy_tb;

ARCHITECTURE mealy_tb OF mealy_tb IS
  SIGNAL clk_int : std_logic := '0'; 
BEGIN
  clk_int <= NOT clk_int  AFTER per/2;
  clk     <= clk_int;
   
  reset <= '1', '0' AFTER 4.7*per, '1' AFTER 42.8*per;

  red   <= '1', '0' AFTER 8*per, '1' AFTER 13*per, '0' AFTER 14*per, '1' AFTER 15*per,
                '0' AFTER 16*per, '1' AFTER 17*per, '0' AFTER 18*per, '1' AFTER 24*per,
		'0' AFTER 25*per, '1' AFTER 30*per, '0' AFTER 31*per, '1' AFTER 33*per,
		'0' AFTER 34*per, '1' AFTER 36*per, '0' AFTER 37*per, '1' AFTER 40*per;
  
  green <= '0', '1' AFTER 14*per, '0' AFTER 18*per, '1' AFTER 28*per, '0' AFTER 31*per,
                '1' AFTER 32*per, '0' AFTER 33*per, '1' AFTER 35*per, '0' AFTER 36*per,
		'1' AFTER 37*per, '0' AFTER 38*per, '1' AFTER 40*per;
  
  blue  <= '0', '1' AFTER 16*per, '1' AFTER 18*per, '0' AFTER 22*per, '1' AFTER 23*per,
                '0' AFTER 24*per, '1' AFTER 25*per, '0' AFTER 26*per, '1' AFTER 27*per, 
		'0' AFTER 28*per, '1' AFTER 29*per, '0' AFTER 30*per, '1' AFTER 40*per;  
END mealy_tb;