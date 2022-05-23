LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shf_reg_8 IS
PORT ( p_out   : OUT std_logic_vector(7 DOWNTO 0);
       p_in    : IN  std_logic_vector(7 DOWNTO 0); 
       s_in    : IN  std_logic;
       load_n  : IN  std_logic;
       shift_n : IN  std_logic;
       clk     : IN  std_logic );
END shf_reg_8;
