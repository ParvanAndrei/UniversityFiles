LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shf_reg_8_comp IS
PORT ( p_out_b : IN  std_logic_vector (7 DOWNTO 0);
       p_out_g : IN  std_logic_vector (7 DOWNTO 0);
       error   : OUT std_logic );  
END shf_reg_8_comp;

ARCHITECTURE shf_reg_8_comp OF shf_reg_8_comp IS
BEGIN
  PROCESS ( p_out_b, p_out_g )
  BEGIN
    IF p_out_b = p_out_g THEN
      error <= '0';
    ELSE
      error <= '1';
    END IF;
  END PROCESS;
END shf_reg_8_comp;
