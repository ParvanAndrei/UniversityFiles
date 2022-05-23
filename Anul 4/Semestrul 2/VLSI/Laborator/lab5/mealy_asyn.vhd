ARCHITECTURE mealy_asyn OF mealy IS

  TYPE state IS (stWhite, stRed, stGreen, stBlue);
  SIGNAL currentState : state;
  SIGNAL nextState    : state;
  SIGNAL colour	      : std_logic;	

BEGIN

  CLC: PROCESS ( currentState, red, green, blue ) BEGIN
    CASE currentState IS
      WHEN stWhite => IF ( red   = '0' AND 
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

      WHEN stRed =>   IF ( red   = '1' ) THEN
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
    
      WHEN stGreen => IF ( green   = '1' ) THEN
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

      WHEN stBlue =>  IF ( blue   = '1' ) THEN
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

  REG: PROCESS ( clk, reset ) BEGIN
    IF ( reset = '1' ) THEN 
      newColour    <= '0'; 
      currentState <= stWhite;
    ELSIF(( NOT clk'STABLE ) AND ( clk = '1' )) THEN
      currentState <= nextState;
      newColour    <= colour; 
    END IF;
  END PROCESS REG;
  
END mealy_asyn;