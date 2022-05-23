LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY dff_d_test IS
END dff_d_test;

ARCHITECTURE dff_d_test OF dff_d_test IS
  COMPONENT dff_d
  PORT ( q   : OUT std_logic;
         d   : IN  std_logic;
         clk : IN  std_logic );
  END COMPONENT;
 
  COMPONENT dff_d_tb 
  GENERIC (per : time := 10 ns );
  PORT ( d   : OUT std_logic;
         clk : OUT std_logic ); 
  END COMPONENT;

  COMPONENT dff_d_comp 
  PORT ( q_b   : IN  std_logic;   
         q_g   : IN  std_logic;    
         error : OUT std_logic );   
  END COMPONENT;

  SIGNAL d     : std_logic;
  SIGNAL clk   : std_logic;
  SIGNAL q_b   : std_logic;
  SIGNAL q_g   : std_logic;
  SIGNAL error : std_logic;

  FOR TB      : dff_d_tb USE ENTITY work.dff_d_tb(dff_d_tb);
  FOR DUT_B   : dff_d USE ENTITY work.dff_d(dff_d_beh);
  FOR DUT_G   : dff_d USE ENTITY work.dff_d(dff_d_guard);
  FOR COMP    : dff_d_comp USE ENTITY work.dff_d_comp(dff_d_comp);
   
BEGIN
  TB : dff_d_tb GENERIC MAP (per => 40 ns)
                  PORT MAP ( d   => d,
                             clk => clk );

  DUT_B : dff_d PORT MAP ( q   => q_b,
                           d   => d,
                           clk => clk );

  DUT_G : dff_d PORT MAP ( q   => q_g,
                           d   => d,
                           clk => clk );

  COMP : dff_d_comp PORT MAP ( q_b   => q_b,
                               q_g   => q_g,
                               error => error );     

END dff_d_test;



















