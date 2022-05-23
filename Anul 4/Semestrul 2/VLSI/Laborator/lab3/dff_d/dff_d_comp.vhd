LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY dff_d_comp IS
PORT ( q_b   : IN  std_logic;   
       q_g   : IN  std_logic; 
       error : OUT std_logic );   
END dff_d_comp;

ARCHITECTURE dff_d_comp OF dff_d_comp IS
BEGIN
  PROCESS (q_b, q_g)
  BEGIN 
    IF ( q_b = q_g) THEN
        error <= '0';
    ELSE 
       error <= '1';
    END IF;
  END PROCESS;
END dff_d_comp;







