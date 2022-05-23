LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

LIBRARY STD;
USE STD.textio.ALL;
USE work.io_utils.ALL;


ENTITY bicnt_dcto_8_monitor IS
PORT ( count      : IN  std_logic_vector(7 DOWNTO 0);
       tercnt     : IN  std_logic;
       data       : IN  std_logic_vector(7 DOWNTO 0);
       count_to   : IN  std_logic_vector(7 DOWNTO 0);     
       up_dn      : IN  std_logic;
       cen        : IN  std_logic;
       load_n     : IN  std_logic;
       clk        : IN  std_logic;
       reset_n    : IN  std_logic;
       end_stimul : IN  std_logic );          
END bicnt_dcto_8_monitor;

ARCHITECTURE bicnt_dcto_8_monitor OF bicnt_dcto_8_monitor IS
  SIGNAL tercnt_m : std_logic;
  SIGNAL count_m  : std_logic_vector(7 DOWNTO 0);
  SIGNAL err_flag : std_logic := '0';
BEGIN
  PROCESS (clk)
    VARIABLE sel : std_logic_vector(3 DOWNTO 0);
    VARIABLE reg : std_logic_vector(7 DOWNTO 0);
  BEGIN
    IF(clk'EVENT AND (clk = '1')) THEN
       sel := reset_n & load_n & cen & up_dn;
       CASE sel IS
         WHEN "1111" => reg := count_m + "00000001";
         WHEN "1110" => reg := count_m - "00000001";
         WHEN "1101" => reg := count_m;
         WHEN "1100" => reg := count_m;
         WHEN "1011" => reg := data;
         WHEN "1010" => reg := data;
         WHEN "1001" => reg := data;
         WHEN "1000" => reg := data;
         WHEN OTHERS => reg := "00000000"; 
       END CASE;

       count_m <= reg;

       IF (reg = count_to) THEN
          tercnt_m <= '1';
       ELSE
           tercnt_m <= '0';
       END IF;  

    END IF;
  END PROCESS;

  PROCESS( count, count_m, tercnt, tercnt_m )
    VARIABLE err : std_logic;
  BEGIN
    IF ((count = count_m) AND (tercnt = tercnt_m)) THEN
      err := '0';
    ELSE
      err := '1';
    END IF;

    IF ((err = '1') AND (err_flag = '0')) THEN
       err_flag <= '1';
    END IF;
  END PROCESS; 

  PROCESS (end_stimul)
    VARIABLE buff     : LINE; 
  BEGIN
    IF (end_stimul = '1') THEN
      IF (err_flag = '1') THEN
        WRITE_STRING(buff, "M : simulation ended with: SUCCESS.");
        WRITELINE(output, buff); 
      ELSE
        WRITE_STRING(buff, "M : simulation ended with: ERROR.");
        WRITELINE(output, buff); 
      END IF;
    END IF;
  END PROCESS; 

END bicnt_dcto_8_monitor;















