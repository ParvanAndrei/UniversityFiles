LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ifc IS
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
END ifc;

ARCHITECTURE ifc OF ifc IS  

    COMPONENT date   
        PORT ( 
                clk     			: IN  std_logic;
				reset   			: IN  std_logic;
				a       			: IN  std_logic_vector(3 DOWNTO 0); 
				b       			: IN  std_logic_vector(3 DOWNTO 0); 
				start    			: IN std_logic;
				initizlizare    	: IN std_logic;
				pauza   			: IN std_logic;
				validare_p   		: IN std_logic;
				adunare_b    		: IN std_logic;
				adunare_minus_b    	: IN std_logic;
				deplasare_a    		: IN std_logic;
				validare_finala_p	: IN std_logic;
				adunare    			: IN std_logic;
				confirmare    		: IN std_logic;			
				cat					: OUT std_logic_vector(3 DOWNTO 0);
				rest				: OUT std_logic_vector(4 DOWNTO 0);
				numarator       	: OUT std_logic; --necesar pentru Calea de control
				pmsb       			: OUT std_logic --necesar pentru Calea de control
        );
    END COMPONENT;  
 
    COMPONENT control  
        PORT ( 
            clk     			: IN  std_logic;
			reset   			: IN  std_logic;
			--FSM inputs
			req   				: IN  std_logic; --request
			numarator  			: IN  std_logic; -- cand se termina while 'numarator' <=1 altfel =0
			pmsb 				: IN  std_logic;
			--FSM outputs
			start    			: OUT std_logic;
			initizlizare    	: OUT std_logic;
			pauza   			: OUT std_logic;
			validare_p   		: OUT std_logic;
			adunare_b    		: OUT std_logic;
			adunare_minus_b    	: OUT std_logic;
			deplasare_a    		: OUT std_logic;
			validare_finala_p	: OUT std_logic;
			adunare    			: OUT std_logic;
			confirmare    		: OUT std_logic;
			ready   			: OUT std_logic  --valid (BUSY)
        );     
     END COMPONENT;  

-- signals to connect date/control  
SIGNAL start,initizlizare,pauza,validare_p,adunare_b,adunare_minus_b,deplasare_a,validare_finala_p,adunare,confirmare,numarator,pmsb : std_logic;   
 
BEGIN  
      
  i_date: date 
  PORT MAP( 
        clk         		=> clk, 
        reset       		=> reset, 
        a           		=> a,  
        b           		=> b,  
		start    			=> start, 
		initizlizare    	=> initizlizare,
		pauza   			=> pauza,
		validare_p   		=> validare_p,
		adunare_b    		=> adunare_b,
		adunare_minus_b    	=> adunare_minus_b,
		deplasare_a    		=> deplasare_a,
		validare_finala_p	=> validare_finala_p,
		adunare    			=> adunare,
		confirmare    		=> confirmare,
		cat					=> cat,
		rest				=> rest,
		numarator       	=> numarator,
		pmsb       			=> pmsb
 
   ); 
   
  i_ctrl: control 
    PORT MAP( 
        clk         		=> clk, 
        reset       		=> reset, 
		req   				=> req,	
        numarator  			=> numarator,
        pmsb                => pmsb,
        start    			=> start,
        initizlizare    	=> initizlizare,
        pauza   			=> pauza,
        validare_p   		=> validare_p,
        adunare_b    		=> adunare_b,
        adunare_minus_b    	=> adunare_minus_b,
        deplasare_a    		=> deplasare_a,
        validare_finala_p	=> validare_finala_p,
        adunare    			=> adunare,
        confirmare    		=> confirmare,
        ready   			=> ready

   ); 
 
END ifc; 
