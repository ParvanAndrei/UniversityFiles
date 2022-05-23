LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY latch_d IS
PORT ( q   : OUT std_logic;
       qn  : OUT std_logic;
       d   : IN  std_logic;
       clk : IN  std_logic );
END latch_d;

