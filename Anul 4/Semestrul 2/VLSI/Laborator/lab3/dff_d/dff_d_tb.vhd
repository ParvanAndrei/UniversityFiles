LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY dff_d_tb IS
GENERIC (per : time := 10 ns );
PORT ( d   : OUT std_logic;
       clk : OUT std_logic ); 
END dff_d_tb;

ARCHITECTURE dff_d_tb OF dff_d_tb IS
  SIGNAL clk_int : std_logic := '1'; 
BEGIN
  clk_int <= NOT clk_int  AFTER per/2;
  clk <= clk_int;
  d   <= '0', '1' AFTER 2.5*per/2, '0' AFTER 3.5*per/2, '1' AFTER 4.3*per/2, '0' AFTER 4.5*per/2,
         '1' AFTER 5.5*per/2, '0' AFTER 7.5*per/2, '1' AFTER 7.7*per/2, '0' AFTER 10.5*per/2, 
         '1' AFTER 11.3*per/2, '0' AFTER 11.8*per/2, '1' AFTER 22.5*per/2, '0' AFTER 23.5*per/2, 
         '1' AFTER 24.3*per/2, '0' AFTER 24.5*per/2, '1' AFTER 25.5*per/2, '0' AFTER 27.5*per/2, 
         '1' AFTER 27.7*per/2, '0' AFTER 30.5*per/2, '1' AFTER 31.3*per/2, '0' AFTER 31.8*per/2;      
END dff_d_tb;








