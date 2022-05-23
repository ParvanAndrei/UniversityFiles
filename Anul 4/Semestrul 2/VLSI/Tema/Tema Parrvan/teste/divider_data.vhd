LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY divider_data IS
   PORT (
      clk      : IN STD_LOGIC;
      reset    : IN STD_LOGIC;
      op_a     : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      op_b     : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
      load_op  : IN STD_LOGIC;
      add_p_b  : IN STD_LOGIC;
      sub_p_b  : IN STD_LOGIC;
      end_op   : IN STD_LOGIC;
      shift_a  : IN STD_LOGIC;
      shift_p  : IN STD_LOGIC;
      rezultat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      neg_p    : OUT STD_LOGIC
   );
END divider_data;

--arhitecture divider-ului 
--semnalul p este de 5 biti, 4 biti de datea, 1 bit de semn

ARCHITECTURE divider_data_arch OF divider_data IS
   SIGNAL a : STD_LOGIC_VECTOR (3 DOWNTO 0); --semnal operand a, de 4 biti
   SIGNAL b : STD_LOGIC_VECTOR (3 DOWNTO 0); --semnal operand b, de 4 biti 
   SIGNAL p : STD_LOGIC_VECTOR (4 DOWNTO 0); --semnal p, de 5 biti 
   SIGNAL r : STD_LOGIC_VECTOR (7 DOWNTO 0); --semnal r de 8 biti, rezultat

   --semnalul r este un semnal care este compus din b si din p
   --este semnal care vine direct din registrul r

BEGIN

   --procesul registrului a

   reg_a : PROCESS (clk) BEGIN
      IF ((NOT clk'STABLE) AND (clk = '1')) THEN --se bezeaza be clk
         IF (reset = '0') THEN
            a <= "0000"; --daca reset este zero, a devine 0000
         ELSIF (load_op = '1') THEN
            a <= op_a; --daca load_op este 1, a primeste valoare lui op_a
         ELSIF (shift_a = '1') THEN --daca shift_a=1, face o sfitare stanga 
            a <= a(2 DOWNTO 0) & (NOT p(4)); --cele 3 biti spre LSB ramana, si NOT MSB P va fi ultimu bit
         END IF;
      END IF;
   END PROCESS reg_a;

   --procesul registrului b

   reg_b : PROCESS (clk) BEGIN
      IF ((NOT clk'STABLE) AND (clk = '1')) THEN
         IF (reset = '0') THEN
            b <= "0000";
         ELSIF (load_op = '1') THEN
            b <= op_b; --daca load_op este activ, b primeste valoarea lui op_b
         END IF;
      END IF;
   END PROCESS reg_b;

   --procesul registrului p

   reg_p : PROCESS (clk) BEGIN
      IF ((NOT clk'STABLE) AND (clk = '1')) THEN
         IF (reset = '0') THEN
            p <= "00000";
         ELSIF (load_op = '1') THEN
            p <= "00000"; --p daca primeste load_op,se incarca cu o valoare de 5 biti, valoarea este "00000"
         ELSE
            neg_p <= p(4); --verificare daca p este negativ sau pozitiv
         END IF;

         IF (shift_p = '1') THEN
            p <= p(3 DOWNTO 0) & a(3); --daca shift_p este activ, face o siftare stanga, astfel incat ultimele 4 biti din p este compus cu primul bit din a
         ELSIF (sub_p_b = '1') THEN --daca sub_p_b este activ, face o scadere 
            p <= p - b;
         ELSIF (add_p_b = '1') THEN
            p <= p + b; --altfel face o adunare
         END IF;
      END IF;
   END PROCESS reg_p;

   --procesul registrului r	

   reg_r : PROCESS (clk) BEGIN
      IF ((NOT clk'STABLE) AND (clk = '1')) THEN
         IF (reset = '0') THEN
            r <= "00000000";
         ELSIF (load_op = '1') THEN
            r <= "00000000";
         ELSIF (end_op = '1') THEN
            r <= a(3 DOWNTO 0) & p(3 DOWNTO 0);
         END IF;
      END IF;
   END PROCESS reg_r;
   neg_p <= p(4);
   rezultat <= r;
END divider_data_arch;