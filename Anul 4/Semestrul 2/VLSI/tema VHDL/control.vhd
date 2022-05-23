LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
 
ENTITY control IS
PORT ( 
    clk     			  : IN  std_logic;
    reset   			  : IN  std_logic;
    --FSM inputs
    req   				  : IN  std_logic; --request
    numarator  			: IN  std_logic; -- cand se termina while 'numarator' <=1 altfel =0
	  pmsb 				    : IN  std_logic;
    --FSM outputs
    start    			    : OUT std_logic;
    initizlizare    	: OUT std_logic;
    pauza   			    : OUT std_logic;
    validare_p   		  : OUT std_logic;
    adunare_b    		  : OUT std_logic;
    adunare_minus_b   : OUT std_logic;
    deplasare_a    		: OUT std_logic;
    validare_finala_p	: OUT std_logic;
    adunare    			  : OUT std_logic;
    confirmare    		: OUT std_logic;
    ready   			    : OUT std_logic  --valid (BUSY)
);
END control;

ARCHITECTURE control OF control IS

  TYPE state IS (S_START,S_INITIALIZARE,S_PAUZA,S_VALIDARE_P,S_ADUNARE_B,S_ADUNARE_MINUS_B,S_DEPLASARE_A,S_VALIDARE_FINALA_P,S_ADUNARE,S_CONFIRMARE);
  SIGNAL currentState : state;
  SIGNAL nextState    : state;
  SIGNAL ld_r_ready   : std_logic;

BEGIN

CLC: PROCESS ( currentState, req, numarator, pmsb ) BEGIN
  CASE currentState IS
    WHEN S_START 			      => IF ( req   = '1' )     THEN 	
                                    nextState <= S_INITIALIZARE;
                               ELSE 
																    nextState <= S_START;
                               END IF; 
    WHEN S_INITIALIZARE	  	=>      nextState <= S_PAUZA;
	  WHEN S_PAUZA  			    => IF ( numarator = '1' ) THEN
                                   	nextState <= S_VALIDARE_FINALA_P;
                               ELSE
															    	nextState <= S_VALIDARE_P;
                               END IF;
	  WHEN S_VALIDARE_P  		  => IF ( pmsb = '1' )      THEN
                                  	nextState <= S_ADUNARE_B;
                               ELSE
															    	nextState <= S_ADUNARE_MINUS_B;
                               END IF;
	  WHEN S_ADUNARE_B		    =>      nextState <= S_DEPLASARE_A;
	  WHEN S_ADUNARE_MINUS_B	=>      nextState <= S_DEPLASARE_A;
	  WHEN S_DEPLASARE_A		  => IF ( numarator = '1' )	 THEN	
                                    nextState <= S_VALIDARE_FINALA_P;
                               ELSE
															    	nextState <= S_VALIDARE_P;
                               END IF;
	  WHEN S_VALIDARE_FINALA_P=> IF ( pmsb = '1' )    	 THEN	
                                    nextState <= S_ADUNARE;
                               ELSE					
																    nextState <= S_CONFIRMARE;
                               END IF; 
	  WHEN S_ADUNARE			    => 			nextState <= S_CONFIRMARE; 
	  WHEN S_CONFIRMARE		    =>			nextState <= S_START;
	
  END CASE;
END PROCESS CLC;

REG: PROCESS ( clk ) BEGIN
  IF (clk'EVENT AND clk = '1') THEN
    IF (reset = '1') THEN
        currentState <= S_START;
    ELSE
        currentState <= nextState;
    END IF;
  END IF;
END PROCESS REG;

--FSM outputs
start 				    <= '1' WHEN (currentState = S_START			  	    ) ELSE '0';
initizlizare    	<= '1' WHEN (currentState = S_INITIALIZARE	  	) ELSE '0';
pauza   			    <= '1' WHEN (currentState = S_PAUZA				      ) ELSE '0';
validare_p   	  	<= '1' WHEN (currentState = S_VALIDARE_P    		) ELSE '0';
adunare_b    	  	<= '1' WHEN (currentState = S_ADUNARE_B 	  		) ELSE '0';
adunare_minus_b  	<= '1' WHEN (currentState = S_ADUNARE_MINUS_B 	) ELSE '0';
deplasare_a    		<= '1' WHEN (currentState = S_DEPLASARE_A   		) ELSE '0';
validare_finala_p	<= '1' WHEN (currentState = S_VALIDARE_FINALA_P	) ELSE '0';
adunare    	  		<= '1' WHEN (currentState = S_ADUNARE		      	) ELSE '0';
confirmare    		<= '1' WHEN (currentState = S_CONFIRMARE	    	) ELSE '0';
ld_r_ready 	  		<= '1' WHEN (currentState = S_START	      			) ELSE '0';

-- ready is ld_r delayed
PROCESS ( clk ) BEGIN
  IF (clk'EVENT AND clk = '1') THEN
    IF (reset = '1') THEN
        ready <= '0';
    ELSE
        ready <= ld_r_ready;
    END IF;
  END IF;
END PROCESS;
  
END control;
