`timescale 1 ns/1 ps

module testbench(
	 clock_in,
	 reset_in,
	 EQ_D,
	 EQ_posedge,
	 t_10us,
	 t_10us_pose,
	 count_0[3:0],
	 count_1[15:0],
	 q0,
	 q1,
	 q2,
	 Ai_galben,
	 As_galben,
	 A_inainte,
	 A_stanga,
	 Bi_galben,
	 Bs_galben,
	 B_inainte,
	 B_stanga,
	 C_inainte,
	 C_stanga,
	 D_inainte,
	 D_stanga,
	 s_000,
	 s_001,
	 s_010,
	 s_011,
	 s_100,
	 s_101,
	 s_110,
	 s_111
);
	
output reg clock_in, reset_in;
output wire [3:0]count_0;
output wire [15:0]count_1;
output wire EQ_D, EQ_posedge, t_10us, t_10us_pose, q0, q1, q2, Ai_galben, As_galben, A_inainte, A_stanga, Bi_galben, Bs_galben, B_inainte, B_stanga
, C_inainte, C_stanga, D_inainte, D_stanga, s_000, s_001, s_010,s_101, s_011, s_100, s_110, s_111 ;

prima_schema prima_schema_s(
  .clock_in(clock_in), 
  .reset_in(reset_in),  
  .count0_0(count_0[0]),
  .count0_1(count_0[1]), 
  .count0_2(count_0[2]), 
  .count0_3(count_0[3]),
  .count1(count_1),
  .EQ_D(EQ_D),
  .EQ_posedge(EQ_posedge),
  .t_10us(t_10us),
  .t_10us_pose(t_10us_pose),
  .q0(q0),
  .q1(q1),
  .q2(q2),
  .Ai_galben(Ai_galben),
  .As_galben(As_galben),
  .A_inainte(A_inainte),
  .A_stanga(A_stanga),
  .Bi_galben(Bi_galben),
  .Bs_galben(Bs_galben),
  .B_inainte(B_inainte),
  .B_stanga(B_stanga),
  .C_inainte(C_inainte),
  .C_stanga(C_stanga),
  .D_inainte(D_inainte),
  .D_stanga(D_stanga),
  .s_000(s_000),
  .s_001(s_001),
  .s_010(s_010),
  .s_011(s_011),
  .s_100(s_100),
  .s_101(s_101),
  .s_110(s_110),
  .s_111(s_111)
);

initial
begin
	clock_in = 0;
	reset_in = 0;
end

always #20 clock_in = !clock_in;

endmodule