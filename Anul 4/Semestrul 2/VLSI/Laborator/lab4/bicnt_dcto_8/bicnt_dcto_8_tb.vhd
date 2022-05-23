LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

LIBRARY std;
USE std.textio.ALL;
USE work.io_utils.ALL;

ENTITY bicnt_dcto_8_tb IS
GENERIC ( per : time := 20 ns);
PORT ( data       : OUT std_logic_vector(7 DOWNTO 0);
       count_to   : OUT std_logic_vector(7 DOWNTO 0);
       up_dn      : OUT std_logic;
       cen        : OUT std_logic;
       load_n     : OUT std_logic;
       clk        : OUT std_logic;
       reset_n    : OUT std_logic; 
       end_stimul : OUT std_logic := '0' );   
END bicnt_dcto_8_tb;

ARCHITECTURE bicnt_dcto_8_tb OF bicnt_dcto_8_tb IS
  SIGNAL clk_int  : std_logic := '0';
BEGIN
  clk_int <= NOT clk_int AFTER per/2;
  clk     <= clk_int;   

  PROCESS
    VARIABLE data_int     : std_logic_vector(7 DOWNTO 0) := "00000000";
    VARIABLE count_to_int : std_logic_vector(7 DOWNTO 0) := "00001010";
    VARIABLE load_n_int   : std_logic := '0';
    VARIABLE cen_int      : std_logic := '0';
    VARIABLE up_dn_int    : std_logic := '0';
    VARIABLE reset_n_int  : std_logic := '0';
    VARIABLE buff         : LINE;
    VARIABLE end_stim_int : std_logic := '0';           
  BEGIN  
    end_stim_int := '0';
    FOR i IN 0 TO 255 LOOP 
      WAIT FOR per;

      data_int := data_int + "00000001";
      data     <= data_int;

      IF (i MOD 10 = 0) THEN
        count_to_int := count_to_int - "00000001";
        count_to     <= count_to_int;   
      END IF;  

      IF (i MOD 20 = 0) THEN 
        load_n_int := NOT load_n_int;
        load_n     <= load_n_int;   
      END IF;  

      IF (i MOD 5 = 0) THEN 
        cen_int := NOT cen_int;
        cen     <= cen_int;   
      END IF;  

      IF (i MOD 10 = 0) THEN 
        up_dn_int := NOT up_dn_int;
        up_dn     <= up_dn_int;   
      END IF;  

      IF ((i MOD 50 = 0) OR (i MOD 50 = 1) OR (i MOD 50 = 2)) THEN 
        reset_n_int := NOT reset_n_int;
        reset_n     <= reset_n_int;   
      END IF;  
    END LOOP;

    end_stim_int := '1'; 
    end_stimul   <= end_stim_int;
    WRITE_STRING(buff, "TB: end strimulus for BICNT_DCTO_8.");
    WRITELINE (output, buff); 

  END PROCESS; 
END bicnt_dcto_8_tb;
 





