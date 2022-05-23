ARCHITECTURE mealy_syn OF mealy IS

  TYPE state IS (stWhite, stRed, stGreen, stBlue);
  SIGNAL currentState : state;
  SIGNAL nextState    : state;
  SIGNAL colour	      : std_logic;	

BEGIN

  CLC: PROCESS ( currentState, reset, red, green, blue ) BEGIN
    CASE currentState IS
      WHEN stWhite => IF ( reset = '1' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSIF ( red   = '0' AND 
		              green = '0' AND 
			      blue  = '0' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSIF ( red   = '1' ) THEN
                        colour <= '1';
			nextState <= stRed;
                      ELSIF ( red   = '0' AND 
		                green = '1' ) THEN
                        colour <= '1';
			nextState <= stGreen;
                      ELSIF ( red   = '0' AND 
		                green = '0' AND 
				blue  = '1' ) THEN
                        colour <= '1';
			nextState <= stBlue;
                      END IF; 

      WHEN stRed =>   IF ( reset = '1' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSIF ( red   = '1' ) THEN
                        colour <= '0';
			nextState <= stRed;
                      ELSIF ( red   = '0' AND 
		                green = '0' AND 
				blue  = '0' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSE
		        colour <= '1';
			nextState <= stWhite;
                      END IF; 
    
      WHEN stGreen => IF ( reset = '1' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSIF ( green   = '1' ) THEN
                        colour <= '0';
			nextState <= stGreen;
                      ELSIF ( red   = '0' AND 
		                green = '0' AND 
				blue  = '0' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSE
		        colour <= '1';
			nextState <= stWhite;
                      END IF; 

      WHEN stBlue =>  IF ( reset = '1' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSIF ( blue   = '1' ) THEN
                        colour <= '0';
			nextState <= stBlue;
                      ELSIF ( red   = '0' AND 
		                green = '0' AND 
				blue  = '0' ) THEN
                        colour <= '0';
			nextState <= stWhite;
                      ELSE
		        colour <= '1';
			nextState <= stWhite;
                      END IF;   
    END CASE;
  END PROCESS CLC;

  REG: PROCESS ( clk ) BEGIN
    IF(( NOT clk'STABLE ) AND ( clk = '1' )) THEN
        currentState <= nextState;
	newColour    <= colour; 
    END IF;
  END PROCESS REG;
  
END mealy_syn;