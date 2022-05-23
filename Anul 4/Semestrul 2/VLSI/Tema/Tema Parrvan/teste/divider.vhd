LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

--entitatea circuitului "divider"

entity divider is                     
    port ( op_a : in std_logic_vector (3 downto 0);  --operandul A
           op_b : in std_logic_vector (3 downto 0);  --operandul B
           result : out std_logic_vector (7 downto 0);  --rezultat
           clk : in std_logic;    --semnal de ceas
           reset : in std_logic;  --semnal de reset, activ la zero
           start : in std_logic;  --semnal de start, activ la unu
           ready : out std_logic  --semnal de ready, activ la unu
           );
end divider;

--arhitectura circuitului

architecture divider_arch of divider is
    signal load_op : std_logic;  --semnal de incarcarea a operanzilor, tip bit
    signal shift_a : std_logic;  --semnal de siftare a
    signal shift_p : std_logic;  --semnal de siftare p
    signal sub_p_b : std_logic;  --semnal pentru scadere b din p
    signal add_p_b : std_logic;  --semnal pentru adunare p cu b
    signal end_op : std_logic;   --semnal care indica cand este sfarsitul ciclului
    signal neg_p : std_logic;    --semnal care indica daca valoare lui p este negativ

--componentele in calea de control
--calea de control controleaza calea de date cu semnal de tip out
--si primeste semnale de la calea de date pentru monitorizare

component divider_control
    port ( clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           neg_p : in std_logic;
           ready : out std_logic;   --ready indica daca rezultatul final este valabil
           end_op : out std_logic;
           load_op : out std_logic;
           shift_a : out std_logic;
           shift_p : out std_logic;
           sub_p_b : out std_logic;
           add_p_b : out std_logic );
end component;

--componentele in calea de date

component divider_data
    port ( op_a : in std_logic_vector (3 downto 0);     --operandul a de 4 biti 
           op_b : in std_logic_vector (3 downto 0);     --operandul b de 4 biti
           rezultat : out std_logic_vector (7 downto 0);  --rezultat de 8 biti
           clk : in std_logic;
           reset : in std_logic;
           load_op : in std_logic;
           end_op : in std_logic;
           shift_a : in std_logic;
           shift_p : in std_logic;
           sub_p_b : in std_logic;
           add_p_b : in std_logic;
           neg_p : out std_logic );
end component;

begin
    DATA : divider_data port map
    ( op_a => op_a,
      op_b => op_b,
      rezultat => result,
      clk =>  clk,
      reset => reset,
      neg_p => neg_p,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p => shift_p,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b 
      );
    CONTROL : divider_control port map
    ( clk =>  clk,
      reset => reset,
      start => start,
      neg_p => neg_p,
      ready => ready,
      end_op => end_op,
      load_op => load_op,
      shift_a => shift_a,
      shift_p => shift_p,
      sub_p_b => sub_p_b,
      add_p_b => add_p_b );
end divider_arch;

