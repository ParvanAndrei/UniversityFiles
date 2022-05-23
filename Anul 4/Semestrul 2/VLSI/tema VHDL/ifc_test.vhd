LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ifc_test IS
GENERIC (per : time := 20 ns);
END ifc_test;

ARCHITECTURE ifc_test OF ifc_test IS
COMPONENT ifc
  PORT ( 
    clk     : IN  std_logic;
    reset   : IN  std_logic;
    a       : IN  std_logic_vector(3 DOWNTO 0); 
    b       : IN  std_logic_vector(3 DOWNTO 0); 
    req   	: IN  std_logic;
    cat     : OUT std_logic_vector(3 DOWNTO 0);
    rest    : OUT std_logic_vector(4 DOWNTO 0);
    ready   : OUT  std_logic
  );
END COMPONENT;

  SIGNAL clk     : std_logic := '1';
  SIGNAL reset   : std_logic;
  SIGNAL start   : std_logic;

  SIGNAL a      : std_logic_vector(3 DOWNTO 0);
  SIGNAL b      : std_logic_vector(3 DOWNTO 0);

  SIGNAL cat    : std_logic_vector(3 DOWNTO 0);
  SIGNAL p      : std_logic_vector(4 DOWNTO 0);
  SIGNAL ready  : std_logic;

  
BEGIN
  clk <= NOT clk AFTER per/2;
  reset <= '1', '0' AFTER 2*per;
  start <= '0', '1' AFTER 5*per, '0' AFTER 6*per, '1' AFTER 15*per, '0' AFTER 16*per;
  a <= "1110";-- "0011" AFTER 15*per;
  b <= "0011";-- "0110" AFTER 15*per;

  dut: ifc
  PORT MAP( 
        clk         => clk, 
        reset       => reset, 
        a           => a,  
        b           => b,  
        req       	=> start,
		
		cat 		=> cat,
        rest        => p,     
        ready       => ready
   ); 
    
END ifc_test;
