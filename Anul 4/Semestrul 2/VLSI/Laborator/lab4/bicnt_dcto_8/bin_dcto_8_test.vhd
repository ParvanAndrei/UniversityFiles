LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY bin_dcto_8_test IS
END bin_dcto_8_test;

ARCHITECTURE bin_dcto_8_test OF bin_dcto_8_test IS
  COMPONENT bicnt_dcto_8 
  PORT ( count    : OUT std_logic_vector(7 DOWNTO 0);
         tercnt   : OUT std_logic; 
       --   tercnt_n : OUT std_logic;
         data     : IN  std_logic_vector(7 DOWNTO 0);
         count_to : IN  std_logic_vector(7 DOWNTO 0);
         up_dn    : IN  std_logic;
         cen      : IN  std_logic;
         load_n   : IN  std_logic;
         clk      : IN  std_logic;
         reset_n  : IN  std_logic );       
  END COMPONENT; 

  COMPONENT bicnt_dcto_8_tb 
  GENERIC ( per : time := 20 ns);
  PORT ( data       : OUT std_logic_vector(7 DOWNTO 0);
         count_to   : OUT std_logic_vector(7 DOWNTO 0);
         up_dn      : OUT std_logic;
         cen        : OUT std_logic;
         load_n     : OUT std_logic;
         clk        : OUT std_logic;
         reset_n    : OUT std_logic; 
         end_stimul : OUT std_logic );   
  END COMPONENT; 

  COMPONENT bicnt_dcto_8_monitor 
  PORT ( count      : IN  std_logic_vector(7 DOWNTO 0);
         tercnt     : IN  std_logic;
         data       : IN  std_logic_vector(7 DOWNTO 0);
         count_to   : IN  std_logic_vector(7 DOWNTO 0);     
         up_dn      : IN  std_logic;
         cen        : IN  std_logic;
         load_n     : IN  std_logic;
         clk        : IN  std_logic;
         reset_n    : IN  std_logic;
         end_stimul : IN  std_logic);          
  END COMPONENT;

  COMPONENT bicnt_dcto_8_comp 
  PORT ( count_b  : IN  std_logic_vector(7 DOWNTO 0);
         tercnt_b : IN  std_logic;
         count_g  : IN  std_logic_vector(7 DOWNTO 0);
         tercnt_g : IN  std_logic;
         error    : OUT std_logic );
  END COMPONENT;

  SIGNAL count_b    : std_logic_vector(7 DOWNTO 0);
  SIGNAL count_g    : std_logic_vector(7 DOWNTO 0);
  SIGNAL tercnt_b   : std_logic;
  SIGNAL tercnt_n   : std_logic;
  SIGNAL tercnt_g   : std_logic;
  SIGNAL data       : std_logic_vector(7 DOWNTO 0);
  SIGNAL count_to   : std_logic_vector(7 DOWNTO 0);
  SIGNAL up_dn      : std_logic;
  SIGNAL cen        : std_logic;
  SIGNAL load_n     : std_logic;
  SIGNAL clk        : std_logic;
  SIGNAL reset_n    : std_logic;
  SIGNAL end_stimul : std_logic;
  SIGNAL error      : std_logic;
  
  FOR TB    : bicnt_dcto_8_tb      USE ENTITY work.bicnt_dcto_8_tb(bicnt_dcto_8_tb);
  FOR DUT_B : bicnt_dcto_8         USE ENTITY work.bicnt_dcto_8(bicnt_dcto_8_beh);
  FOR DUT_G : bicnt_dcto_8         USE ENTITY work.bicnt_dcto_8(bicnt_dcto_8_guard);
  FOR M     : bicnt_dcto_8_monitor USE ENTITY work.bicnt_dcto_8_monitor(bicnt_dcto_8_monitor);
  FOR COMP  : bicnt_dcto_8_comp    USE ENTITY work.bicnt_dcto_8_comp(bicnt_dcto_8_comp);

BEGIN
  tercnt_n <= not tercnt_b;
  TB : bicnt_dcto_8_tb GENERIC MAP ( per => 20 ns)
                       PORT MAP ( data       => data,
                                  count_to   => count_to,
                                  up_dn      => up_dn,
                                  cen        => cen,
                                  load_n     => load_n,
                                  clk        => clk,
                                  reset_n    => reset_n, 
                                  end_stimul => end_stimul );   
 
  DUT_B : bicnt_dcto_8 PORT MAP ( count      => count_b,
                                  tercnt     => tercnt_b,
                            --       tercnt_n   => tercnt_n,   
                                  data       => data,
                                  count_to   => count_to,
                                  up_dn      => up_dn,
                                  cen        => cen,
                                  load_n     => tercnt_n,
                                  clk        => clk,
                                  reset_n    => reset_n);   

  M : bicnt_dcto_8_monitor
                       PORT MAP ( count      => count_b,
                                  tercnt     => tercnt_b,   
                                  data       => data,
                                  count_to   => count_to,
                                  up_dn      => up_dn,
                                  cen        => cen,
                                  load_n     => load_n,
                                  clk        => clk,
                                  reset_n    => reset_n, 
                                  end_stimul => end_stimul );   

  DUT_G : bicnt_dcto_8 PORT MAP ( count      => count_g,
                                  tercnt     => tercnt_g,   
                                  data       => data,
                                  count_to   => count_to,
                                  up_dn      => up_dn,
                                  cen        => cen,
                                  load_n     => load_n,
                                  clk        => clk,
                                  reset_n    => reset_n );   

  COMP : bicnt_dcto_8_comp
                       PORT MAP  ( count_b  => count_b,
                                   tercnt_b => tercnt_b,
                                   count_g  => count_g,
                                   tercnt_g => tercnt_b,
                                   error    => error );
END bin_dcto_8_test;
