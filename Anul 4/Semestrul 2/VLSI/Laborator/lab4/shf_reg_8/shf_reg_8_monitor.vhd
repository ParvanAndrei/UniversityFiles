LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY STD;
USE STD.TEXTIO.ALL;
USE work.io_utils.ALL;


ENTITY shf_reg_8_monitor IS
PORT ( p_out   : IN std_logic_vector(7 DOWNTO 0);
       p_in    : IN std_logic_vector(7 DOWNTO 0);
       s_in    : IN std_logic;
       load_n  : IN std_logic;
       shift_n : IN std_logic;
       clk     : IN std_logic ); 
END shf_reg_8_monitor;

ARCHITECTURE shf_reg_8_monitor OF shf_reg_8_monitor IS
  FILE out_file : TEXT IS OUT "shf_reg_8.txt";
  SIGNAL reg    : std_logic_vector(7 DOWNTO 0);  
BEGIN
  P1:PROCESS    
    VARIABLE buff  : LINE;
  BEGIN
    WRITE_STRING (buff, "clk  p_in      s_in  load_n  shift_n  p_out     error");
    WRITELINE (out_file, buff); 
    WAIT FOR 1 ns;  
    WRITE_STRING (buff, "=====================================================");
    WRITELINE (out_file, buff);  
    WAIT;   
  END PROCESS P1;

  P2: PROCESS( clk ) 
    VARIABLE sel   : std_logic_vector(1 DOWNTO 0);  
  BEGIN
    sel := load_n & shift_n;
    IF (NOT clk'STABLE AND (clk = '1')) THEN
      CASE sel IS
         WHEN "00" => reg <= p_in;
         WHEN "01" => reg <= p_in;
         WHEN "10" => reg <= reg(6 DOWNTO 0) & s_in;
         WHEN OTHERS => reg <= reg;
      END CASE;
    END IF;    
  END PROCESS P2; 

 
 P3: PROCESS( p_out ) 
   VARIABLE error : bit := '0'; 
   VARIABLE buff  : LINE;
 BEGIN
   IF (reg = p_out) THEN   
      error := '0';
    ELSE
      error := '1';
    END IF;
    
    WRITE (buff, to_bit(clk));
    WRITE_STRING (buff, "    ");
    WRITE (buff, to_bitvector(p_in));
    WRITE_STRING (buff, "  ");
    WRITE (buff, to_bit(s_in));
    WRITE_STRING (buff, "     ");
    WRITE (buff, to_bit(load_n));
    WRITE_STRING (buff, "       ");
    WRITE (buff, to_bit(shift_n));
    WRITE_STRING (buff, "        ");
    WRITE (buff, to_bitvector(p_out));
    WRITE_STRING (buff, "  ");
    WRITE (buff, error);
    WRITELINE (out_file, buff);
  END PROCESS P3; 

END shf_reg_8_monitor;
