LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY shf_reg_8_test IS
END shf_reg_8_test;

ARCHITECTURE shf_reg_8_test OF shf_reg_8_test IS
  COMPONENT shf_reg_8 
  PORT ( p_out   : OUT std_logic_vector(7 DOWNTO 0);
         p_in    : IN  std_logic_vector(7 DOWNTO 0); 
         s_in    : IN  std_logic;
         load_n  : IN  std_logic;
         shift_n : IN  std_logic;
         clk     : IN  std_logic );
  END COMPONENT;

  COMPONENT shf_reg_8_tb 
  GENERIC (per : time := 20 ns);
  PORT ( p_in    : OUT std_logic_vector(7 DOWNTO 0);
         s_in    : OUT std_logic;
         load_n  : OUT std_logic;
         shift_n : OUT std_logic;
         clk     : OUT std_logic );     
  END COMPONENT;

  COMPONENT shf_reg_8_monitor 
  PORT ( p_out   : IN std_logic_vector(7 DOWNTO 0);
         p_in    : IN std_logic_vector(7 DOWNTO 0);
         s_in    : IN std_logic;
         load_n  : IN std_logic;
         shift_n : IN std_logic;
         clk     : IN std_logic ); 
  END COMPONENT;

  COMPONENT shf_reg_8_comp 
  PORT ( p_out_b : IN  std_logic_vector (7 DOWNTO 0);
         p_out_g : IN  std_logic_vector (7 DOWNTO 0);
         error   : OUT std_logic );  
  END COMPONENT;

  SIGNAL p_out_b : std_logic_vector(7 dOWNTO 0);
  SIGNAL p_out_g : std_logic_vector(7 dOWNTO 0);
  SIGNAL p_in    : std_logic_vector(7 dOWNTO 0);
  SIGNAL s_in    : std_logic;
  SIGNAL load_n  : std_logic;
  SIGNAL shift_n : std_logic;
  SIGNAL clk     : std_logic;
  SIGNAL error   : std_logic;

  FOR TB    : shf_reg_8_tb      USE ENTITY work.shf_reg_8_tb(shf_reg_8_tb);
  FOR DUT_B : shf_reg_8         USE ENTITY work.shf_reg_8(shf_reg_8_beh);
  FOR DUT_G : shf_reg_8         USE ENTITY work.shf_reg_8(shf_reg_8_guard);
  FOR M     : shf_reg_8_monitor USE ENTITY work.shf_reg_8_monitor(shf_reg_8_monitor);
  FOR COMP  : shf_reg_8_comp    USE ENTITY work.shf_reg_8_comp(shf_reg_8_comp);
  
BEGIN

  TB : shf_reg_8_tb GENERIC MAP (per => 20 ns )
                  PORT MAP ( p_in    => p_in,
                             s_in    => s_in,
                             load_n  => load_n,
                             shift_n => shift_n,
                             clk     => clk );     
                      
  DUT_B : shf_reg_8 PORT MAP ( p_out   => p_out_b,  
                               p_in    => p_in,
                               s_in    => s_in,
                               load_n  => load_n,
                               shift_n => shift_n,
                               clk     => clk );  
   
  M : shf_reg_8_monitor
                  PORT MAP ( p_out   => p_out_b,  
                             p_in    => p_in,
                             s_in    => s_in,
                             load_n  => load_n,
                             shift_n => shift_n,
                             clk     => clk );  

  DUT_G : shf_reg_8 PORT MAP (  p_out   => p_out_g,  
                                p_in    => p_in,
                                s_in    => s_in,
                                load_n  => load_n,
                                shift_n => shift_n,
                                clk     => clk );  

  COMP : shf_reg_8_comp
                  PORT MAP ( p_out_b => p_out_b,
                             p_out_g => p_out_g,
                             error   => error ); 

END shf_reg_8_test;

