ARCHITECTURE shf_reg_8_guard OF shf_reg_8 IS
  SIGNAL reg : std_logic_vector(7 DOWNTO 0);
BEGIN
  B1: BLOCK (NOT clk'STABLE AND (clk = '1')) 
      BEGIN
        reg <= GUARDED p_in WHEN load_n = '0' ELSE
                       reg(6 DOWNTO 0) & s_in WHEN load_n = '1' AND shift_n = '0' ELSE
                       reg;
      END BLOCK B1;

      p_out <= reg; 
END shf_reg_8_guard;






