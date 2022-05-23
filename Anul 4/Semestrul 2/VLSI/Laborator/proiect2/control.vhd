LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
 
ENTITY control IS
PORT ( 
    clk     : IN  std_logic;
    reset   : IN  std_logic;
    --FSM inputs
    start   : IN  std_logic;
    zero_b  : IN  std_logic;
    --FSM outputs
    ld_a    : OUT std_logic;
    ld_b    : OUT std_logic;
    dec_b   : OUT std_logic;
    clr_p   : OUT std_logic;
    ld_p    : OUT std_logic;
    ld_r    : OUT std_logic;
    ready   : OUT std_logic
);
END control;

ARCHITECTURE control OF control IS

  TYPE state IS (S0, S1);
  SIGNAL currentState : state;
  SIGNAL nextState    : state;
  SIGNAL ld_r_ready   : std_logic;

BEGIN

CLC: PROCESS ( currentState, start, zero_b ) BEGIN
  CASE currentState IS
    WHEN S0 => IF ( start   = '1' ) THEN
      	            nextState <= S1;
               ELSE 
      	            nextState <= S0;
               END IF; 
    WHEN S1 => IF ( zero_b   = '1' ) THEN
      	            nextState <= S0;
               ELSE 
      	            nextState <= S1;
               END IF; 
  END CASE;
END PROCESS CLC;

REG: PROCESS ( clk ) BEGIN
  IF (clk'EVENT AND clk = '1') THEN
    IF (reset = '1') THEN
        currentState <= S0;
    ELSE
        currentState <= nextState;
    END IF;
  END IF;
END PROCESS REG;

--FSM outputs
ld_a <= '1' WHEN ((currentState = S0) AND (start = '1')) ELSE '0';
ld_b <= '1' WHEN ((currentState = S0) AND (start = '1')) ELSE '0';
clr_p <= '1' WHEN ((currentState = S0) AND (start = '1')) ELSE '0';

dec_b <= '1' WHEN ((currentState = S1) AND (zero_b = '0')) ELSE '0';
ld_p <= '1' WHEN ((currentState = S1) AND (zero_b = '0')) ELSE '0';

ld_r_ready <= '1' WHEN ((currentState = S1) AND (zero_b = '1')) ELSE '0';
ld_r <= ld_r_ready;

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
