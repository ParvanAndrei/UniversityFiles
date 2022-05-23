LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY latch_d_comp IS
PORT ( q_b   : IN  std_logic;    -- output for behavioural description
       q_g   : IN  std_logic;    -- output for behavioural description with guarded block
       error : OUT std_logic );   
END latch_d_comp;

ARCHITECTURE latch_d_comp OF latch_d_comp IS
BEGIN
  PROCESS (q_b, q_g)
  BEGIN
    IF (q_b = q_g) THEN
       error <= '0';
    ELSE 
       error <= '1';
    END IF;
  END PROCESS;
END latch_d_comp;






