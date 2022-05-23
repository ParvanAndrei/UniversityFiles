ARCHITECTURE latch_d_guard OF latch_d IS
BEGIN
  B1: BLOCK (clk = '1')
  BEGIN
    q  <= GUARDED d;
  END BLOCK B1;
END latch_d_guard;

