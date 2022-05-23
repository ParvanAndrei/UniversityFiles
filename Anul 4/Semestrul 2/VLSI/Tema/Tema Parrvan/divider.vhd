LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

--entitatea circuitului "divider"

ENTITY divider IS
  PORT (
    clk    : IN STD_LOGIC; --clock
    reset  : IN STD_LOGIC; --reset, activ pe zero
    start  : IN STD_LOGIC; --start, activ pe unu
    op_a   : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --a
    op_b   : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --b
    result : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) --rezultat
  );
END divider;

--arhitectura circuitului

ARCHITECTURE divider_arch OF divider IS -- semnale:
  SIGNAL load_op : STD_LOGIC; --load operand (bit)
  SIGNAL neg_p   : STD_LOGIC; --arata daca p este negativ
  SIGNAL shift_a : STD_LOGIC; --shift a
  SIGNAL sub_p_b : STD_LOGIC; --p-b
  SIGNAL add_p_b : STD_LOGIC; --p+b
  SIGNAL shift_p : STD_LOGIC; --shift p
  SIGNAL end_op  : STD_LOGIC; --arata terminarea unui ciclu

  --componentele in calea de control
  --calea de control controleaza calea de date cu semnal de tip out
  --si primeste semnale de la calea de date pentru monitorizare

  COMPONENT divider_control
    PORT (
      clk     : IN STD_LOGIC;
      reset   : IN STD_LOGIC;
      start   : IN STD_LOGIC;
      neg_p   : IN STD_LOGIC;
      load_op : OUT STD_LOGIC;
      sub_p_b : OUT STD_LOGIC;
      add_p_b : OUT STD_LOGIC;
      end_op  : OUT STD_LOGIC;
      shift_a : OUT STD_LOGIC;
      shift_p : OUT STD_LOGIC);
  END COMPONENT;

  --componentele in calea de date

  COMPONENT divider_data
    PORT (
      op_a     : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --a 4 biti 
      op_b     : IN STD_LOGIC_VECTOR (3 DOWNTO 0); --b 4 biti
      clk      : IN STD_LOGIC;
      reset    : IN STD_LOGIC;
      load_op  : IN STD_LOGIC;
      add_p_b  : IN STD_LOGIC;
      sub_p_b  : IN STD_LOGIC;
      end_op   : IN STD_LOGIC;
      shift_a  : IN STD_LOGIC;
      shift_p  : IN STD_LOGIC;
      rezultat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0); --rezultat 8 biti
      neg_p    : OUT STD_LOGIC);
  END COMPONENT;

BEGIN
  DATA : divider_data PORT MAP
  (
    clk => clk,
    reset => reset,
    op_a => op_a,
    op_b => op_b,
    rezultat => result,
    load_op => load_op,
    add_p_b => add_p_b,
    sub_p_b => sub_p_b,
    end_op => end_op,
    neg_p => neg_p,
    shift_a => shift_a,
    shift_p => shift_p
  );

  CONTROL : divider_control PORT MAP
  (
    clk => clk,
    reset => reset,
    start => start,
    neg_p => neg_p,
    load_op => load_op,
    add_p_b => add_p_b,
    sub_p_b => sub_p_b,
    end_op => end_op,
    shift_a => shift_a,
    shift_p => shift_p);
END divider_arch;