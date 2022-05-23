LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY bicnt_dcto_8_comp IS
PORT ( count_b  : IN  std_logic_vector(7 DOWNTO 0);
       tercnt_b : IN  std_logic;
       count_g  : IN  std_logic_vector(7 DOWNTO 0);
       tercnt_g : IN  std_logic;
       error    : OUT std_logic );
END bicnt_dcto_8_comp;

ARCHITECTURE bicnt_dcto_8_comp OF bicnt_dcto_8_comp IS
BEGIN
  PROCESS(count_b, tercnt_b, count_g, tercnt_g)
  BEGIN 
    IF ((count_b = count_g) AND (tercnt_b = tercnt_g)) THEN
      error <= '0';
    ELSE
      error <= '1';  
    END IF;
  END PROCESS;
END bicnt_dcto_8_comp;
