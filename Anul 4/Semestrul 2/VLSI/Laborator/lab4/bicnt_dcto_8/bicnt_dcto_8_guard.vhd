ARCHITECTURE bicnt_dcto_8_guard OF bicnt_dcto_8 IS
  SIGNAL reg : std_logic_vector(7 DOWNTO 0); 
BEGIN
  B1: BLOCK ((NOT clk'STABLE) AND (clk = '1'))  
  BEGIN
    reg    <= GUARDED "00000000" WHEN (reset_n = '0') ELSE
                      data WHEN ((reset_n = '1') AND (load_n = '0')) ELSE 
                      reg - "00000001" WHEN ((reset_n = '1') AND (load_n = '1') AND 
                                             (cen = '1') AND (up_dn = '0')) ELSE 
                      reg + "00000001" WHEN ((reset_n = '1') AND (load_n = '1') AND 
                                             (cen = '1') AND (up_dn = '1')) ELSE
		      reg; 
    
    tercnt <= GUARDED '1' WHEN reg = count_to ELSE '0'; 
  END BLOCK B1; 

  count <= reg;
  
END bicnt_dcto_8_guard;
