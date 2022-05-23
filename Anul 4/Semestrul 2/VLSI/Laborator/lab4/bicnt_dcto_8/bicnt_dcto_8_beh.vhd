ARCHITECTURE bicnt_dcto_8_beh OF bicnt_dcto_8 IS
  SIGNAL reg : std_logic_vector(7 DOWNTO 0); 
BEGIN
  PROCESS (clk)
  BEGIN
    IF ( clk'EVENT AND (clk = '1')) THEN
      IF ( reset_n = '0' ) THEN
        reg <= "00000000";
      ELSIF ( load_n = '0' ) THEN
        reg <= data;
      ELSIF ( cen = '1' ) THEN 
	IF ( up_dn = '0' ) THEN
          reg <= reg - "00000001";
        ELSE 
	        reg <= reg + "00000001";
        END IF;
      END IF;
           
      IF (reg = count_to) THEN
        tercnt <= '1';
        -- tercnt_n <= '0';
      ELSE
        tercnt <= '0';
        -- tercnt_n <= '1';
      END IF; 
    END IF;
  END PROCESS; 

  count <= reg; 

END bicnt_dcto_8_beh;




