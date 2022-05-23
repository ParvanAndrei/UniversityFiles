LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY bicnt_dcto_8 IS
PORT ( count    : OUT std_logic_vector(7 DOWNTO 0);
       tercnt   : OUT std_logic; 
       -- tercnt_n : OUT std_logic;
       data     : IN  std_logic_vector(7 DOWNTO 0);
       count_to : IN  std_logic_vector(7 DOWNTO 0);
       up_dn    : IN  std_logic;
       cen      : IN  std_logic;
       load_n   : IN  std_logic;
       clk      : IN  std_logic;
       reset_n  : IN  std_logic );       
END bicnt_dcto_8; 
