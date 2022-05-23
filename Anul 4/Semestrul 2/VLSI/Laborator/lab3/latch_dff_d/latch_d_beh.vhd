ARCHITECTURE latch_d_beh OF latch_d IS
BEGIN
  PROCESS ( d, clk )
  BEGIN
    IF (clk = '1') THEN
      q  <= d;
    END IF;
  END PROCESS;
END latch_d_beh;



