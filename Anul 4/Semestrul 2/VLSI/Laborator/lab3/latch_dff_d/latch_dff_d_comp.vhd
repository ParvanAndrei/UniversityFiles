LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY latch_dff_d_comp IS
END latch_dff_d_comp;

ARCHITECTURE latch_dff_d_comp OF latch_dff_d_comp IS
  COMPONENT dff_d
  PORT ( q   : OUT std_logic;
         d   : IN  std_logic;
         clk : IN  std_logic );
  END COMPONENT;
 
  COMPONENT latch_d
  PORT ( q   : OUT std_logic;
         d   : IN  std_logic;
         clk : IN  std_logic );
  END COMPONENT;

  COMPONENT latch_d_tb 
  GENERIC (per : time := 10 ns );
  PORT ( d   : OUT std_logic;
         clk : OUT std_logic ); 
  END COMPONENT;

  SIGNAL d         : std_logic;
  SIGNAL clk       : std_logic;
  SIGNAL q_latch   : std_logic;
  SIGNAL q_dff     : std_logic;
  SIGNAL diferenta : std_logic;

  FOR TB    : latch_d_tb USE ENTITY work.latch_d_tb(latch_d_tb);
  FOR DUT_L : latch_d USE ENTITY work.latch_d(latch_d_beh);
  FOR DUT_F : dff_d USE ENTITY work.dff_d(dff_d_beh);
   
BEGIN
  TB : latch_d_tb GENERIC MAP (per => 40 ns)
                  PORT MAP ( d   => d,
                             clk => clk );

  DUT_L : latch_d PORT MAP ( q   => q_latch,
                             d   => d,
                             clk => clk );

  DUT_F : dff_d PORT MAP ( q   => q_dff,
                           d   => d,
                           clk => clk );

  PROCESS (q_latch, q_dff)
  BEGIN
    IF (q_latch = q_dff) THEN
      diferenta <= '0';
    ELSE 
      diferenta <= '1';
    END IF;
  END PROCESS;
  
END latch_dff_d_comp;









