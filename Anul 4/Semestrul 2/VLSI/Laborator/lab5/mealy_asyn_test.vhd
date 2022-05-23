LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY mealy_asyn_test IS
END mealy_asyn_test;

ARCHITECTURE mealy_asyn_test OF mealy_asyn_test IS
  COMPONENT mealy 
  PORT ( red       : IN  std_logic;
         green     : IN  std_logic;
         blue      : IN  std_logic;
         clk	 : IN std_logic;	   	
         reset	 : IN std_logic;	   	
         newColour : OUT std_logic );
  END COMPONENT; 

  COMPONENT mealy_tb 
  GENERIC ( per : TIME := 10 ns );
  PORT ( red   : OUT std_logic;
         green : OUT std_logic;
         blue  : OUT std_logic;
         clk   : OUT std_logic;
         reset : OUT std_logic );
  END COMPONENT; 
  
  SIGNAL red       : std_logic;
  SIGNAL green     : std_logic;
  SIGNAL blue      : std_logic;
  SIGNAL clk       : std_logic;
  SIGNAL reset     : std_logic;
  SIGNAL newColour : std_logic;

  FOR DUT : mealy    USE ENTITY work.mealy(mealy_asyn); 
  FOR TB  : mealy_tb USE ENTITY work.mealy_tb(mealy_tb );   

BEGIN
  
  TB : mealy_tb GENERIC MAP ( per => 10 ns )
                PORT MAP ( red   => red,
		           green => green,
			   blue  => blue,
			   clk   => clk,
			   reset => reset );

  DUT : mealy PORT MAP ( red       => red,
		         green     => green,
			 blue      => blue,
			 clk       => clk,
			 reset     => reset,
			 newColour => newColour );

END mealy_asyn_test;