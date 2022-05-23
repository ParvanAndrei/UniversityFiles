LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;


ENTITY shf_reg_8_tb IS
GENERIC (per : time := 20 ns);
PORT ( p_in    : OUT std_logic_vector(7 DOWNTO 0);
       s_in    : OUT std_logic;
       load_n  : OUT std_logic;
       shift_n : OUT std_logic;
       clk     : OUT std_logic );     
END shf_reg_8_tb;

ARCHITECTURE shf_reg_8_tb OF shf_reg_8_tb IS
  SIGNAL clk_int     : std_logic := '0';
  SIGNAL p_in_int    : std_logic_vector(7 DOWNTO 0) := "00000000";
  SIGNAL s_in_int    : std_logic := '0'; 
  SIGNAL load_n_int  : std_logic := '0'; 
  SIGNAL shift_n_int : std_logic := '1'; 
BEGIN
  clk_int <= NOT clk_int AFTER per/2;
  clk     <= clk_int;
    
  p_in_int <= p_in_int + "00000001" AFTER per;
  p_in     <= p_in_int; 

  s_in_int <= NOT s_in_int AFTER 10*per;
  s_in     <= s_in_int;

  load_n_int <= NOT load_n_int AFTER 20*per;
  load_n     <= load_n_int;

  shift_n_int <= NOT shift_n_int AFTER 8*per;
  shift_n     <= shift_n_int;   
END shf_reg_8_tb;



