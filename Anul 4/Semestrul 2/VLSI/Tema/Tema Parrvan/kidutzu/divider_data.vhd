LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;
entity divider_data is
    port ( op_a : in std_logic_vector (3 downto 0);
           op_b : in std_logic_vector (3 downto 0);
           rezultat : out std_logic_vector (7 downto 0);
           clk : in std_logic;
           reset : in std_logic;
           load_op : in std_logic;
           end_op : in std_logic;
           shift_a : in std_logic;
           shift_p : in std_logic;
           sub_p_b : in std_logic;
           add_p_b : in std_logic;
           neg_p : out std_logic
           );
end divider_data;

--arhitecture divider-ului 
--semnalul p este de 5 biti, 4 biti de datea, 1 bit de semn

architecture divider_data_arch of divider_data is
    signal a : std_logic_vector (3 downto 0);  --semnal operand a, de 4 biti
    signal b : std_logic_vector (3 downto 0);  --semnal operand b, de 4 biti 
    signal p : std_logic_vector (4 downto 0);  --semnal p, de 5 biti 
    signal r : std_logic_vector (7 downto 0);  --semnal r de 8 biti, rezultat
    
--semnalul r este un semnal care este compus din b si din p
--este semnal care vine direct din registrul r

    begin

--procesul registrului a



        reg_a : process (clk) begin
           if(( not clk'stable ) and ( clk = '1' )) then  --se bezeaza be clk
               if (reset = '0') then a <= "0000";         --daca reset este zero, a devine 0000
                  elsif (load_op = '1') then a <= op_a;   --daca load_op este 1, a primeste valoare lui op_a
                     elsif (shift_a = '1') then           --daca shift_a=1, face o sfitare stanga 
                        a <= a(2 downto 0) & (not p(4));  --cele 3 biti spre LSB ramana, si NOT MSB P va fi ultimu bit
               end if;
           end if;
        end process reg_a;

--procesul registrului b

	reg_b : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then b <= "0000";
                  elsif (load_op = '1') then b <= op_b;   --daca load_op este activ, b primeste valoarea lui op_b
              end if;
           end if;
        end process reg_b;

--procesul registrului p

	reg_p : process (clk) begin
	   if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then p <= "00000";
               elsif (load_op = '1') then p <= "00000";                --p daca primeste load_op,se incarca cu o valoare de 5 biti, valoarea este "00000"
                 else neg_p <= p(4);                                   --verificare daca p este negativ sau pozitiv
               end if;
		 
	       if (shift_p = '1') then p <= p(3 downto 0) & a(3);      --daca shift_p este activ, face o siftare stanga, astfel incat ultimele 4 biti din p este compus cu primul bit din a
                 elsif (sub_p_b = '1') then                            --daca sub_p_b este activ, face o scadere 
                   p <= p - b;
                     elsif (add_p_b = '1') then p <= p + b;            --altfel face o adunare
               end if;
           end if;
        end process reg_p;

--procesul registrului r	

	reg_r : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then r <= "00000000";
                  elsif (load_op = '1') then r <= "00000000";
                     elsif (end_op = '1') then 
                        r <= a(3 downto 0) & p(3 downto 0);
                 end if;
           end if;
        end process reg_r;
        neg_p <= p(4);
        rezultat <= r;
    end divider_data_arch;

