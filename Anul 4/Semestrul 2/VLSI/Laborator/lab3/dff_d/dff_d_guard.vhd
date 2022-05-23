ARCHITECTURE dff_d_guard OF dff_d IS
BEGIN
  B1: BLOCK ((NOT clk'STABLE) AND (clk = '1'))
  BEGIN
    q  <= GUARDED d;
  END BLOCK B1;
END dff_d_guard;


