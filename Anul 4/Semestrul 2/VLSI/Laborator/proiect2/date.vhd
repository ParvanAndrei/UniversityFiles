LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY date IS
PORT ( 
    clk     : IN  std_logic;
    reset   : IN  std_logic;
    a       : IN  std_logic_vector(3 DOWNTO 0); 
    b       : IN  std_logic_vector(3 DOWNTO 0); 
    ld_a    : IN  std_logic;
    ld_b    : IN  std_logic;
    dec_b   : IN  std_logic;
    clr_p   : IN  std_logic;
    ld_p    : IN  std_logic;
    ld_r    : IN  std_logic;
    zero_b  : OUT std_logic;
    p       : OUT std_logic_vector(7 DOWNTO 0)
);
END date;

ARCHITECTURE date OF date IS
  SIGNAL reg_a     : std_logic_vector(3 DOWNTO 0);
  SIGNAL reg_b     : std_logic_vector(3 DOWNTO 0);
  SIGNAL reg_p     : std_logic_vector(7 DOWNTO 0);
  SIGNAL reg_r     : std_logic_vector(7 DOWNTO 0);
BEGIN

--reg A
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (reset = '1') THEN 
        reg_a <= (others => '0');
      ELSIF (ld_a = '1') THEN
        reg_a <= a;
      END IF;
    END IF;    
END PROCESS;

--reg B
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (reset = '1') THEN 
        reg_b <= (others => '0');
      ELSIF (ld_b = '1') THEN
        reg_b <= b;
      ELSIF (dec_b = '1') THEN
        reg_b <= reg_b - "0001";
      END IF;
    END IF;    
END PROCESS;
zero_b <= '1' WHEN reg_b = "0000" else '0';

--reg P
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (reset = '1') THEN 
        reg_p <= (others => '0');
      ELSIF (clr_p = '1') THEN
        reg_p <= (others => '0');
      ELSIF (ld_p = '1') THEN
        reg_p <= reg_p + ("0000" & reg_a) ;
      END IF;
    END IF;    
END PROCESS;

--reg R
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF (reset = '1') THEN 
        reg_r <= (others => '0');
      ELSIF (ld_r = '1') THEN
        reg_r <= reg_p;
      END IF;
    END IF;    
END PROCESS;
p <= reg_r;

END date;
