ARCHITECTURE dff_d_beh OF dff_d IS
BEGIN
  PROCESS ( clk )
  BEGIN
    IF ((clk'EVENT) AND (clk = '1')) THEN
      q  <= d;
    END IF;
  END PROCESS;
END dff_d_beh;





