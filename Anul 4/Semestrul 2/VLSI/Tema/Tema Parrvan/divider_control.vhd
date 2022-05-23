LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY divider_control IS
	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		start : IN STD_LOGIC;
		neg_p : IN STD_LOGIC;
		ready : OUT STD_LOGIC;
		end_op : OUT STD_LOGIC;
		load_op : OUT STD_LOGIC;
		shift_a : OUT STD_LOGIC;
		shift_p : OUT STD_LOGIC;
		sub_p_b : OUT STD_LOGIC;
		add_p_b : OUT STD_LOGIC
	);
END divider_control;

ARCHITECTURE divider_control_arch OF divider_control IS

	TYPE stare IS (S_START, S_INITIALIZARE, S_VERIFICARE, S_DEPLASARENEGP, S_DEPLASAREPOZP, S_DEPLASAREA, ENDOP, SUB, ADD, ADDFINAL);

	SIGNAL currentState : stare;
	SIGNAL nextState : stare;
	SIGNAL valid : STD_LOGIC;
	SIGNAL count : INTEGER;

BEGIN
	CLC : PROCESS (reset, currentState, start, neg_p, count) BEGIN
		CASE currentState IS
			WHEN S_START => IF (reset = '0') THEN
				nextState <= S_START;
			ELSIF (start = '1') THEN
				nextState <= S_INITIALIZARE;
		END IF;

		WHEN S_INITIALIZARE => IF (reset = '0') THEN
		nextState <= S_START;
	ELSE
		nextState <= S_VERIFICARE;
	END IF;

	WHEN S_VERIFICARE => IF (reset = '0') THEN
	nextState <= S_START;
ELSIF (neg_p = '1') THEN
	nextState <= S_DEPLASARENEGP;
ELSE
	nextState <= S_DEPLASAREPOZP;
END IF;

WHEN S_DEPLASARENEGP => IF (reset = '0') THEN
nextState <= S_START;
ELSE
nextState <= ADD;
END IF;

WHEN ADD => IF (reset = '0') THEN
nextState <= S_START;
ELSE
nextState <= S_DEPLASAREA;
END IF;

WHEN S_DEPLASAREA => IF (reset = '0') THEN
nextState <= S_START;
ELSIF (count = 0) THEN
nextState <= ENDOP;
ELSE
nextState <= S_VERIFICARE;
END IF;

WHEN S_DEPLASAREPOZP => IF (reset = '0') THEN
nextState <= S_START;
ELSE
nextState <= SUB;
END IF;

WHEN SUB => IF (reset = '0') THEN
nextState <= S_START;
ELSE
nextState <= S_DEPLASAREA;
END IF;

WHEN ENDOP => IF (reset = '0') THEN
nextState <= S_START;
ELSIF (neg_p = '1') THEN
nextState <= ADDFINAL;
ELSE
nextState <= S_START;
END IF;

WHEN ADDFINAL => IF (reset = '0') THEN
nextState <= S_START;
ELSE
nextState <= S_START;
END IF;
END CASE;

IF (currentState = S_INITIALIZARE) THEN
	load_op <= '1';
ELSE
	load_op <= '0';
END IF;
IF (currentState = S_DEPLASARENEGP) THEN
	shift_p <= '1';
ELSE
	shift_p <= '0';
END IF;
IF (currentState = S_DEPLASAREPOZP) THEN
	shift_p <= '1';
ELSE
	shift_p <= '0';
END IF;

IF (currentState = ADD) THEN
	add_p_b <= '1';
ELSE
	add_p_b <= '0';
END IF;
IF (currentState = SUB) THEN
	sub_p_b <= '1';
ELSE
	sub_p_b <= '0';
END IF;
IF (currentState = ENDOP) THEN
	end_op <= '1';
ELSE
	end_op <= '0';
END IF;
IF (currentState = ADDFINAL) THEN
	add_p_b <= '1';
ELSE
	add_p_b <= '0';
END IF;
IF (currentState = S_DEPLASAREA) THEN
	shift_a <= '1';
ELSE
	shift_a <= '0';
END IF;
END PROCESS CLC;

REG : PROCESS (clk) BEGIN
	IF ((NOT clk'STABLE) AND (clk = '1')) THEN
		currentState <= nextState;
	END IF;
END PROCESS REG;

CONTOR : PROCESS (clk) BEGIN
	IF ((NOT clk'STABLE) AND (clk = '1')) THEN
		IF (reset = '0') THEN
			count <= 0;
		ELSIF (currentState = S_START) THEN
			count <= 4;
		ELSIF (currentState = S_DEPLASAREA) THEN
			count <= count - 1;
		END IF;
	END IF;
END PROCESS CONTOR;

VALIDARE : PROCESS (clk) BEGIN
	IF ((NOT clk'STABLE) AND (clk = '1')) THEN
		IF (reset = '0') THEN
			valid <= '0';
		ELSIF (currentState = ENDOP) THEN
			valid <= '1';
		ELSIF (currentState = ADDFINAL) THEN
			valid <= '1';
		ELSIF (currentState = S_INITIALIZARE) THEN
			valid <= '0';
		END IF;
	END IF;
END PROCESS VALIDARE;
ready <= valid;

END divider_control_arch;