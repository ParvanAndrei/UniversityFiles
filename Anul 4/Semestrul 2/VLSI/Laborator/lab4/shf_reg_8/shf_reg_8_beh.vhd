ARCHITECTURE shf_reg_8_beh OF shf_reg_8 IS
  SIGNAL reg     : std_logic_vector(7 DOWNTO 0);
BEGIN
  PROCESS(clk)
  BEGIN
    IF (clk'EVENT AND (clk = '1')) THEN
      IF (load_n = '0') THEN 
        reg <= p_in;
      ELSIF (shift_n = '0') THEN
        reg <= reg(6 DOWNTO 0) & s_in;
      END IF;
    END IF;    
  END PROCESS;

  p_out <= reg;

END shf_reg_8_beh;


