`timescale 1 ns/1 ps

module testbench();

reg clk, rst;
wire [3:0]count_0;
wire [15:0]count_1;
wire comp, comp_d, comp_posedge;

prima_schema prima_schema_s(
  .clk_in(clk), 
  .reset_in(rst), 
  .comp_o(comp), 
  .count0_0(count_0[0]),
  .count0_1(count_0[1]), 
  .count0_2(count_0[2]), 
  .count0_3(count_0[3]),
  .count1(count_1),
  .EQ_D(comp_d),
  .EQ_posedge(comp_posedge)
);

initial
begin
	clk = 0;
	rst = 0;
end

always #20 clk = !clk;

endmodule