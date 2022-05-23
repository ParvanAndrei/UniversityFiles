LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY latch_d_test IS
END latch_d_test;

ARCHITECTURE latch_d_test OF latch_d_test IS
  COMPONENT latch_d
  PORT ( q   : OUT std_logic;
         d   : IN  std_logic;
         clk : IN  std_logic );
  END COMPONENT;
 
  COMPONENT latch_d_tb 
  GENERIC (per : time);
  PORT ( d   : OUT std_logic;
         clk : OUT std_logic ); 
  END COMPONENT;

  COMPONENT latch_d_comp 
  PORT ( q_b   : IN  std_logic;    -- output for behavioural description
         q_g   : IN  std_logic;    -- output for behavioural description with guarded block
         error : OUT std_logic );   
  END COMPONENT;

  SIGNAL d     : std_logic;
  SIGNAL clk   : std_logic;
  SIGNAL q_b   : std_logic;
  SIGNAL q_g   : std_logic;
  SIGNAL error : std_logic;

  FOR TB      : latch_d_tb USE ENTITY work.latch_d_tb(latch_d_tb);
  FOR DUT_B   : latch_d USE ENTITY work.latch_d(latch_d_beh);
  FOR DUT_G   : latch_d USE ENTITY work.latch_d(latch_d_guard);
  FOR COMP    : latch_d_comp USE ENTITY work.latch_d_comp(latch_d_comp);
   
BEGIN
  TB : latch_d_tb GENERIC MAP (per => 40 ns)
                  PORT MAP ( d   => d,
                             clk => clk );

  DUT_B : latch_d PORT MAP ( q   => q_b,
                             d   => d,
                             clk => clk );

  DUT_G : latch_d PORT MAP ( q   => q_g,
                             d   => d,
                             clk => clk );

  COMP : latch_d_comp PORT MAP ( q_b   => q_b,
                                 q_g   => q_g,
                                 error => error );     

END latch_d_test;

















