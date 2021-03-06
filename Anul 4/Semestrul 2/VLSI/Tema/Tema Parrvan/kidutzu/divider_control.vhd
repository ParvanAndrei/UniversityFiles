LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
--USE work.bit_arith.ALL;
entity divider_control is
    port ( clk : in std_logic;
           reset : in std_logic;
           start : in std_logic;
           neg_p : in std_logic;
           ready : out std_logic;
           end_op : out std_logic;
           load_op : out std_logic;
           shift_a : out std_logic;
           shift_p : out std_logic;
           sub_p_b : out std_logic;
           add_p_b : out std_logic
           );
end divider_control;

architecture divider_control_arch of divider_control is
	    
      type stare is (INIT, SETUP, VERIFICARE, SHIFTPNEG, SHIFTPPOZ, SHIFTA, ENDOP, SUB, ADD, ADDFINAL);

	signal curenta : stare;
        signal urmatoare: stare;
        signal valid : std_logic;
        signal count : integer;

	begin
	CLC : process (reset, curenta, start, neg_p, count) begin
           case curenta is
               when INIT =>
                   if (reset = '0') then urmatoare <= INIT;
                      elsif (start = '1') then urmatoare <= SETUP;
                   end if;

	       when SETUP =>
                   if (reset = '0') then urmatoare <= INIT;
                      else urmatoare <= VERIFICARE;
                   end if;

	       when VERIFICARE =>
		   if (reset = '0') then urmatoare <= INIT;
		       elsif (neg_p = '1') then  urmatoare <= SHIFTPNEG;
			  else urmatoare <= SHIFTPPOZ;
		   end if;

	       when SHIFTPNEG =>
		   if (reset = '0') then urmatoare <= INIT;
		       else urmatoare <= ADD;
       end if;
	       when ADD =>
		   if (reset = '0') then urmatoare <= INIT;
		       else urmatoare <= SHIFTA;
     end if;
	       when SHIFTA =>
		   if (reset = '0') then urmatoare <= INIT;
		       elsif (count = 0) then urmatoare <= ENDOP;
			  else urmatoare <= VERIFICARE;
      end if;
	       when SHIFTPPOZ =>
		   if (reset = '0') then urmatoare <= INIT;
		       else urmatoare <= SUB;
      end if;
	       when SUB =>
		   if (reset = '0') then urmatoare <= INIT;
		       else urmatoare <= SHIFTA;
      end if;
	       when ENDOP =>
		   if (reset = '0') then urmatoare <= INIT;
		       elsif (neg_p = '1') then urmatoare <= ADDFINAL;
			  else urmatoare <= INIT;
      end if;
	       when ADDFINAL =>
		   if (reset = '0') then urmatoare <= INIT;
		       else urmatoare <= INIT;
		  end if;
	   end case;

	   if (curenta = SETUP) then load_op <= '1';
              else load_op <= '0';
           end if;


	   if (curenta = SHIFTPNEG) then shift_p <= '1';
	      else shift_p <= '0';
	   end if;


	   if (curenta = SHIFTPPOZ) then shift_p <= '1';
	      else shift_p <= '0';
	   end if;

	   if (curenta = ADD) then add_p_b <= '1';
	      else add_p_b <= '0';
	   end if;


	   if (curenta = SUB) then sub_p_b <= '1';
	      else sub_p_b <= '0';
	   end if;

		
	   if (curenta = ENDOP) then end_op <= '1';
	      else end_op <= '0';
	   end if;

	
	   if (curenta = ADDFINAL) then add_p_b <= '1';
	      else add_p_b <= '0';
	   end if;


	   if (curenta = SHIFTA) then shift_a <= '1';
	      else shift_a <= '0';
	   end if;

	end process CLC;


	REG : process (clk) begin
          if ((not clk'stable) and (clk = '1')) then
              curenta <= urmatoare;
          end if; 
        end process REG;


	CONTOR : process (clk) begin
           if(( not clk'STABLE ) and ( clk = '1' )) then
               if (reset = '0') then count <= 0;
               elsif (curenta = INIT) then count <= 4;
                    elsif (curenta = SHIFTA) then count <= count - 1;
               end if;
           end if;
        end process CONTOR;



	VALIDARE : process (clk) begin
          if ((not clk'STABLE ) and (clk = '1')) then
              if (reset = '0') then valid <= '0';
                 elsif (curenta = ENDOP) then valid <= '1';
                    elsif (curenta = ADDFINAL) then valid <= '1';
		      elsif (curenta = INIT) then valid <='0';
              end if;
          end if;
       end process VALIDARE;
      ready <= valid;



end divider_control_arch;





