LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY date IS
PORT ( 
    clk     			: IN  std_logic;                        --clock
    reset   			: IN  std_logic;                        --reset
    a       			: IN  std_logic_vector(3 DOWNTO 0);     --operandul A
    b       			: IN  std_logic_vector(3 DOWNTO 0);     --operandul B
	
    start    			    : IN std_logic;                     -- semnale pentru stari
    initizlizare    	: IN std_logic;                     -- --||--
    pauza   			    : IN std_logic;                     -- --||--
    validare_p   		  : IN std_logic;                     -- --||--
    adunare_b    		  : IN std_logic;                     -- --||--
    adunare_minus_b   : IN std_logic;                     -- --||--
    deplasare_a    		: IN std_logic;                     -- --||--
    validare_finala_p	: IN std_logic;                     -- --||--
    adunare    			  : IN std_logic;                     -- --||--
    confirmare    		: IN std_logic;                     -- --||--
	
	cat					        : OUT std_logic_vector(3 DOWNTO 0); --catul
	rest				        : OUT std_logic_vector(4 DOWNTO 0); --restul
    numarator       	: OUT std_logic; --necesar pentru Calea de control
    pmsb       			  : OUT std_logic --necesar pentru Calea de control
);
END date;

ARCHITECTURE date OF date IS
  SIGNAL reg_a     	: std_logic_vector(3 DOWNTO 0);      -- a pe n biti
  SIGNAL reg_b     	: std_logic_vector(3 DOWNTO 0);      -- b pe n biti
  SIGNAL reg_p     	: std_logic_vector(4 DOWNTO 0);      -- p pe n+1 biti
  SIGNAL count     	: std_logic_vector(2 DOWNTO 0);      
BEGIN

--reg A
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN                                                 -- la fiecare event de clock
      IF 	(reset = '1') 		THEN reg_a <= (others => '0');                            -- daca reset e 1 atunci reg_a primeste 0?
      ELSIF (initizlizare = '1')THEN reg_a <= a;                                      -- daca init activ reg_a primeste a
	  ELSIF (deplasare_a = '1') THEN reg_a <= reg_a(2 DOWNTO 0) & ( not reg_p(4));      -- daca deplasare a activ reg este shiftat la stanga cu un bit
      END IF;
    END IF;    
END PROCESS;

--reg B
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN                           -- la fiecare event de clock
      IF 	(reset = '1') 		THEN reg_b <= (others => '0');      -- reg_b primeste 0 la reset activ
      ELSIF (initizlizare = '1')THEN reg_b <= b;                -- daca init activ reg_b primeste b
      END IF;
    END IF;    
END PROCESS;

--reg P
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN                                                         -- la fiecare event de clock
      IF 	(reset = '1') 			THEN reg_p <= (others => '0');                                  -- reset activ reg_p primeste 0
      ELSIF (initizlizare = '1')	THEN reg_p <= (others => '0');                              -- initializarea reg_p primeste 0
	  ELSIF (adunare = '1') 		THEN reg_p <= reg_p + reg_b;                                    -- cand adunare este activ se aduna reg_P cu reg_b
      ELSIF (adunare_b = '1') 		THEN reg_p <= (reg_p(3 DOWNTO 0) & reg_a(3)) + reg_b  ;     -- se aduna fie B fie (-B)
	  ELSIF (adunare_minus_b = '1') THEN reg_p <= (reg_p(3 DOWNTO 0) & reg_a(3)) - reg_b ;
      END IF;
    END IF;    
END PROCESS;

--reg count
PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND clk = '1') THEN
      IF 	( reset = '1' ) 		THEN count <= (others => '0');                                  -- initializare la reset sau init
	  ELSIF ( initizlizare = '1' ) 	THEN count <= (others => '0');
      ELSIF ( validare_p = '1' )	THEN count <= count + "001";                                -- se incrementeaza cu 1 cand valid_p activ
      END IF;
    END IF;    
END PROCESS;

--cat
PROCESS(clk)
  BEGIN
  IF (clk'EVENT AND clk = '1') THEN
      IF 	( reset = '1' ) 	THEN cat <= (others => '0');                    -- initializare cat
	  ELSIF	(confirmare = '1')	THEN cat <= reg_a;                            -- atribuie catul care se afla in reg_a la starea de confirmare
	  END IF;
  END IF;
END PROCESS;

--rest
PROCESS(clk)
  BEGIN
  IF (clk'EVENT AND clk = '1') THEN
      IF 	( reset = '1' ) 	THEN rest <= (others => '0');                   -- initalizare rest
	  ELSIF	(confirmare = '1')	THEN rest <= reg_p;                           -- i se atribuie restul din reg_p conform pdf-ului
	  END IF;
  END IF;
END PROCESS;

pmsb <= reg_p(4);                                           -- bitul cel mai semnificativ al lui p
numarator <='1' WHEN count = "100" else '0';                -- numaratorul

END date;
