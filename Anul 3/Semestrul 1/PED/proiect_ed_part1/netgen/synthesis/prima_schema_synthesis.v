////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: prima_schema_synthesis.v
// /___/   /\     Timestamp: Tue Jan 12 19:38:16 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim prima_schema.ngc prima_schema_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: prima_schema.ngc
// Output file	: C:\Users\yoyol\Desktop\College stuff\PED\proiect_ed_part1\netgen\synthesis\prima_schema_synthesis.v
// # of Modules	: 1
// Design Name	: prima_schema
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module prima_schema (
  clock_in, reset_in, Ai_galben, As_galben, A_inainte, A_stanga, Bi_galben, Bs_galben, B_inainte, B_stanga, comp_o, count0_0, count0_1, count0_2, 
count0_3, cr1_o, C_inainte, C_stanga, D_inainte, D_stanga, EQ_D, EQ_posedge, q0, q1, q2, s_000, s_001, s_010, s_011, s_100, s_101, s_110, s_111, 
t_10us, t_10us_d, t_10us_pose, count1
);
  input clock_in;
  input reset_in;
  output Ai_galben;
  output As_galben;
  output A_inainte;
  output A_stanga;
  output Bi_galben;
  output Bs_galben;
  output B_inainte;
  output B_stanga;
  output comp_o;
  output count0_0;
  output count0_1;
  output count0_2;
  output count0_3;
  output cr1_o;
  output C_inainte;
  output C_stanga;
  output D_inainte;
  output D_stanga;
  output EQ_D;
  output EQ_posedge;
  output q0;
  output q1;
  output q2;
  output s_000;
  output s_001;
  output s_010;
  output s_011;
  output s_100;
  output s_101;
  output s_110;
  output s_111;
  output t_10us;
  output t_10us_d;
  output t_10us_pose;
  output [15 : 0] count1;
  wire clock_in_BUFGP_135;
  wire reset_in_IBUF_136;
  wire XLXN_1;
  wire count0_0_OBUF_138;
  wire count0_1_OBUF_139;
  wire count0_2_OBUF_140;
  wire count0_3_OBUF_141;
  wire count1_15_OBUF_142;
  wire count1_14_OBUF_143;
  wire count1_13_OBUF_144;
  wire count1_12_OBUF_145;
  wire count1_11_OBUF_146;
  wire count1_10_OBUF_147;
  wire count1_9_OBUF_148;
  wire count1_8_OBUF_149;
  wire count1_7_OBUF_150;
  wire count1_6_OBUF_151;
  wire count1_5_OBUF_152;
  wire count1_4_OBUF_153;
  wire count1_3_OBUF_154;
  wire count1_2_OBUF_155;
  wire count1_1_OBUF_156;
  wire count1_0_OBUF_157;
  wire EQ_D_OBUF_158;
  wire comp_o_OBUF_159;
  wire t_10us_d_OBUF_160;
  wire t_10us_OBUF_161;
  wire q0_OBUF_162;
  wire q1_OBUF_163;
  wire q2_OBUF_164;
  wire As_galben_OBUF_165;
  wire Ai_galben_OBUF_166;
  wire Bi_galben_OBUF_167;
  wire Bs_galben_OBUF_168;
  wire clk_in;
  wire cr1_o_OBUF_170;
  wire XLXN_11;
  wire EQ_posedge_OBUF_172;
  wire XLXN_35;
  wire t_10us_pose_OBUF_174;
  wire s_100_OBUF_175;
  wire s_101_OBUF_176;
  wire s_110_OBUF_177;
  wire s_111_OBUF_178;
  wire XLXN_134;
  wire XLXN_138;
  wire XLXN_210;
  wire XLXN_221;
  wire s_010_OBUF_183;
  wire s_011_OBUF_184;
  wire XLXN_135;
  wire XLXN_140;
  wire XLXN_211;
  wire XLXN_222;
  wire s_001_OBUF_189;
  wire XLXN_136;
  wire XLXN_139;
  wire XLXN_141;
  wire XLXN_223;
  wire A_stanga_OBUF_194;
  wire C_stanga_OBUF_195;
  wire A_inainte_OBUF_196;
  wire C_inainte_OBUF_197;
  wire B_inainte_OBUF_198;
  wire D_inainte_OBUF_199;
  wire B_stanga_OBUF_200;
  wire D_stanga_OBUF_201;
  wire s_000_OBUF_202;
  wire XLXN_119;
  wire \XLXI_2/Mcount_COUNT_cy<14>_rt_87 ;
  wire \XLXI_2/Mcount_COUNT_cy<13>_rt_86 ;
  wire \XLXI_2/Mcount_COUNT_cy<12>_rt_85 ;
  wire \XLXI_2/Mcount_COUNT_cy<11>_rt_84 ;
  wire \XLXI_2/Mcount_COUNT_cy<10>_rt_83 ;
  wire \XLXI_2/Mcount_COUNT_cy<9>_rt_82 ;
  wire \XLXI_2/Mcount_COUNT_cy<8>_rt_81 ;
  wire \XLXI_2/Mcount_COUNT_cy<7>_rt_80 ;
  wire \XLXI_2/Mcount_COUNT_cy<6>_rt_79 ;
  wire \XLXI_2/Mcount_COUNT_cy<5>_rt_78 ;
  wire \XLXI_2/Mcount_COUNT_cy<4>_rt_77 ;
  wire \XLXI_2/Mcount_COUNT_cy<3>_rt_76 ;
  wire \XLXI_2/Mcount_COUNT_cy<2>_rt_75 ;
  wire \XLXI_2/Mcount_COUNT_cy<1>_rt_74 ;
  wire \XLXI_2/N1 ;
  wire \XLXI_2/N0 ;
  wire \XLXI_179/q_tmp_INV_4_o ;
  wire \XLXI_177/q_tmp_INV_4_o ;
  wire \XLXI_175/q_tmp_INV_4_o ;
  wire \XLXI_173/q_tmp_INV_4_o ;
  wire \XLXI_3/EQ<15>1_134 ;
  wire [2 : 0] \XLXI_50/Result ;
  wire [3 : 0] \XLXI_1/Result ;
  wire [14 : 0] \XLXI_2/Mcount_COUNT_cy ;
  wire [0 : 0] \XLXI_2/Mcount_COUNT_lut ;
  wire [15 : 0] \XLXI_2/Result ;
  wire [1 : 0] \XLXI_13/Result ;
  wire [1 : 0] \XLXI_13/COUNT ;
  wire [15 : 15] \XLXI_3/EQ ;
  OR2   XLXI_10 (
    .I0(EQ_posedge_OBUF_172),
    .I1(reset_in_IBUF_136),
    .O(clk_in)
  );
  INV   XLXI_5 (
    .I(EQ_D_OBUF_158),
    .O(XLXN_11)
  );
  AND2   XLXI_6 (
    .I0(XLXN_11),
    .I1(comp_o_OBUF_159),
    .O(EQ_posedge_OBUF_172)
  );
  INV   XLXI_15 (
    .I(t_10us_d_OBUF_160),
    .O(XLXN_35)
  );
  AND2   XLXI_16 (
    .I0(t_10us_OBUF_161),
    .I1(XLXN_35),
    .O(t_10us_pose_OBUF_174)
  );
  AND3   XLXI_54 (
    .I0(XLXN_141),
    .I1(XLXN_140),
    .I2(q0_OBUF_162),
    .O(s_100_OBUF_175)
  );
  AND3   XLXI_56 (
    .I0(q2_OBUF_164),
    .I1(XLXN_222),
    .I2(q0_OBUF_162),
    .O(s_101_OBUF_176)
  );
  AND3   XLXI_57 (
    .I0(XLXN_223),
    .I1(q1_OBUF_163),
    .I2(q0_OBUF_162),
    .O(s_110_OBUF_177)
  );
  AND3   XLXI_58 (
    .I0(q2_OBUF_164),
    .I1(q1_OBUF_163),
    .I2(q0_OBUF_162),
    .O(s_111_OBUF_178)
  );
  INV   XLXI_59 (
    .I(q0_OBUF_162),
    .O(XLXN_134)
  );
  INV   XLXI_62 (
    .I(q0_OBUF_162),
    .O(XLXN_138)
  );
  INV   XLXI_98 (
    .I(q0_OBUF_162),
    .O(XLXN_210)
  );
  INV   XLXI_100 (
    .I(q0_OBUF_162),
    .O(XLXN_221)
  );
  AND3   XLXI_53 (
    .I0(XLXN_139),
    .I1(q1_OBUF_163),
    .I2(XLXN_138),
    .O(s_010_OBUF_183)
  );
  AND3   XLXI_55 (
    .I0(q2_OBUF_164),
    .I1(q1_OBUF_163),
    .I2(XLXN_221),
    .O(s_011_OBUF_184)
  );
  INV   XLXI_60 (
    .I(q1_OBUF_163),
    .O(XLXN_135)
  );
  INV   XLXI_64 (
    .I(q1_OBUF_163),
    .O(XLXN_140)
  );
  INV   XLXI_99 (
    .I(q1_OBUF_163),
    .O(XLXN_211)
  );
  INV   XLXI_101 (
    .I(q1_OBUF_163),
    .O(XLXN_222)
  );
  AND3   XLXI_52 (
    .I0(q2_OBUF_164),
    .I1(XLXN_211),
    .I2(XLXN_210),
    .O(s_001_OBUF_189)
  );
  INV   XLXI_61 (
    .I(q2_OBUF_164),
    .O(XLXN_136)
  );
  INV   XLXI_63 (
    .I(q2_OBUF_164),
    .O(XLXN_139)
  );
  INV   XLXI_65 (
    .I(q2_OBUF_164),
    .O(XLXN_141)
  );
  INV   XLXI_102 (
    .I(q2_OBUF_164),
    .O(XLXN_223)
  );
  OR2   XLXI_182 (
    .I0(As_galben_OBUF_165),
    .I1(s_010_OBUF_183),
    .O(A_stanga_OBUF_194)
  );
  OR2   XLXI_188 (
    .I0(As_galben_OBUF_165),
    .I1(s_010_OBUF_183),
    .O(C_stanga_OBUF_195)
  );
  OR2   XLXI_181 (
    .I0(Ai_galben_OBUF_166),
    .I1(s_000_OBUF_202),
    .O(A_inainte_OBUF_196)
  );
  OR2   XLXI_187 (
    .I0(Ai_galben_OBUF_166),
    .I1(s_000_OBUF_202),
    .O(C_inainte_OBUF_197)
  );
  OR2   XLXI_183 (
    .I0(Bi_galben_OBUF_167),
    .I1(s_100_OBUF_175),
    .O(B_inainte_OBUF_198)
  );
  OR2   XLXI_185 (
    .I0(Bi_galben_OBUF_167),
    .I1(s_100_OBUF_175),
    .O(D_inainte_OBUF_199)
  );
  OR2   XLXI_184 (
    .I0(Bs_galben_OBUF_168),
    .I1(s_110_OBUF_177),
    .O(B_stanga_OBUF_200)
  );
  OR2   XLXI_186 (
    .I0(Bs_galben_OBUF_168),
    .I1(s_110_OBUF_177),
    .O(D_stanga_OBUF_201)
  );
  AND3   XLXI_51 (
    .I0(XLXN_136),
    .I1(XLXN_135),
    .I2(XLXN_134),
    .O(s_000_OBUF_202)
  );
  VCC   XLXI_14 (
    .P(XLXN_119)
  );
  IBUF   reset_in_IBUF (
    .I(reset_in),
    .O(reset_in_IBUF_136)
  );
  OBUF   count1_15_OBUF (
    .I(count1_15_OBUF_142),
    .O(count1[15])
  );
  OBUF   count1_14_OBUF (
    .I(count1_14_OBUF_143),
    .O(count1[14])
  );
  OBUF   count1_13_OBUF (
    .I(count1_13_OBUF_144),
    .O(count1[13])
  );
  OBUF   count1_12_OBUF (
    .I(count1_12_OBUF_145),
    .O(count1[12])
  );
  OBUF   count1_11_OBUF (
    .I(count1_11_OBUF_146),
    .O(count1[11])
  );
  OBUF   count1_10_OBUF (
    .I(count1_10_OBUF_147),
    .O(count1[10])
  );
  OBUF   count1_9_OBUF (
    .I(count1_9_OBUF_148),
    .O(count1[9])
  );
  OBUF   count1_8_OBUF (
    .I(count1_8_OBUF_149),
    .O(count1[8])
  );
  OBUF   count1_7_OBUF (
    .I(count1_7_OBUF_150),
    .O(count1[7])
  );
  OBUF   count1_6_OBUF (
    .I(count1_6_OBUF_151),
    .O(count1[6])
  );
  OBUF   count1_5_OBUF (
    .I(count1_5_OBUF_152),
    .O(count1[5])
  );
  OBUF   count1_4_OBUF (
    .I(count1_4_OBUF_153),
    .O(count1[4])
  );
  OBUF   count1_3_OBUF (
    .I(count1_3_OBUF_154),
    .O(count1[3])
  );
  OBUF   count1_2_OBUF (
    .I(count1_2_OBUF_155),
    .O(count1[2])
  );
  OBUF   count1_1_OBUF (
    .I(count1_1_OBUF_156),
    .O(count1[1])
  );
  OBUF   count1_0_OBUF (
    .I(count1_0_OBUF_157),
    .O(count1[0])
  );
  OBUF   Ai_galben_OBUF (
    .I(Ai_galben_OBUF_166),
    .O(Ai_galben)
  );
  OBUF   As_galben_OBUF (
    .I(As_galben_OBUF_165),
    .O(As_galben)
  );
  OBUF   A_inainte_OBUF (
    .I(A_inainte_OBUF_196),
    .O(A_inainte)
  );
  OBUF   A_stanga_OBUF (
    .I(A_stanga_OBUF_194),
    .O(A_stanga)
  );
  OBUF   Bi_galben_OBUF (
    .I(Bi_galben_OBUF_167),
    .O(Bi_galben)
  );
  OBUF   Bs_galben_OBUF (
    .I(Bs_galben_OBUF_168),
    .O(Bs_galben)
  );
  OBUF   B_inainte_OBUF (
    .I(B_inainte_OBUF_198),
    .O(B_inainte)
  );
  OBUF   B_stanga_OBUF (
    .I(B_stanga_OBUF_200),
    .O(B_stanga)
  );
  OBUF   comp_o_OBUF (
    .I(comp_o_OBUF_159),
    .O(comp_o)
  );
  OBUF   count0_0_OBUF (
    .I(count0_0_OBUF_138),
    .O(count0_0)
  );
  OBUF   count0_1_OBUF (
    .I(count0_1_OBUF_139),
    .O(count0_1)
  );
  OBUF   count0_2_OBUF (
    .I(count0_2_OBUF_140),
    .O(count0_2)
  );
  OBUF   count0_3_OBUF (
    .I(count0_3_OBUF_141),
    .O(count0_3)
  );
  OBUF   cr1_o_OBUF (
    .I(cr1_o_OBUF_170),
    .O(cr1_o)
  );
  OBUF   C_inainte_OBUF (
    .I(C_inainte_OBUF_197),
    .O(C_inainte)
  );
  OBUF   C_stanga_OBUF (
    .I(C_stanga_OBUF_195),
    .O(C_stanga)
  );
  OBUF   D_inainte_OBUF (
    .I(D_inainte_OBUF_199),
    .O(D_inainte)
  );
  OBUF   D_stanga_OBUF (
    .I(D_stanga_OBUF_201),
    .O(D_stanga)
  );
  OBUF   EQ_D_OBUF (
    .I(EQ_D_OBUF_158),
    .O(EQ_D)
  );
  OBUF   EQ_posedge_OBUF (
    .I(EQ_posedge_OBUF_172),
    .O(EQ_posedge)
  );
  OBUF   q0_OBUF (
    .I(q0_OBUF_162),
    .O(q0)
  );
  OBUF   q1_OBUF (
    .I(q1_OBUF_163),
    .O(q1)
  );
  OBUF   q2_OBUF (
    .I(q2_OBUF_164),
    .O(q2)
  );
  OBUF   s_000_OBUF (
    .I(s_000_OBUF_202),
    .O(s_000)
  );
  OBUF   s_001_OBUF (
    .I(s_001_OBUF_189),
    .O(s_001)
  );
  OBUF   s_010_OBUF (
    .I(s_010_OBUF_183),
    .O(s_010)
  );
  OBUF   s_011_OBUF (
    .I(s_011_OBUF_184),
    .O(s_011)
  );
  OBUF   s_100_OBUF (
    .I(s_100_OBUF_175),
    .O(s_100)
  );
  OBUF   s_101_OBUF (
    .I(s_101_OBUF_176),
    .O(s_101)
  );
  OBUF   s_110_OBUF (
    .I(s_110_OBUF_177),
    .O(s_110)
  );
  OBUF   s_111_OBUF (
    .I(s_111_OBUF_178),
    .O(s_111)
  );
  OBUF   t_10us_OBUF (
    .I(t_10us_OBUF_161),
    .O(t_10us)
  );
  OBUF   t_10us_d_OBUF (
    .I(t_10us_d_OBUF_160),
    .O(t_10us_d)
  );
  OBUF   t_10us_pose_OBUF (
    .I(t_10us_pose_OBUF_174),
    .O(t_10us_pose)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_4 (
    .C(clock_in_BUFGP_135),
    .CLR(reset_in_IBUF_136),
    .D(comp_o_OBUF_159),
    .Q(EQ_D_OBUF_158)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_11 (
    .C(clock_in_BUFGP_135),
    .CLR(reset_in_IBUF_136),
    .D(cr1_o_OBUF_170),
    .Q(comp_o_OBUF_159)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_12 (
    .C(clock_in_BUFGP_135),
    .CLR(reset_in_IBUF_136),
    .D(t_10us_OBUF_161),
    .Q(t_10us_d_OBUF_160)
  );
  BUFGP   clock_in_BUFGP (
    .I(clock_in),
    .O(clock_in_BUFGP_135)
  );
  INV   \XLXI_50/Mcount_COUNT_xor<0>11_INV_0  (
    .I(q0_OBUF_162),
    .O(\XLXI_50/Result [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_50/Result<2>1  (
    .I0(q2_OBUF_164),
    .I1(q0_OBUF_162),
    .I2(q1_OBUF_163),
    .O(\XLXI_50/Result [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_50/Mcount_COUNT_xor<1>11  (
    .I0(q1_OBUF_163),
    .I1(q0_OBUF_162),
    .O(\XLXI_50/Result [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_2  (
    .C(clock_in_BUFGP_135),
    .CE(t_10us_pose_OBUF_174),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_50/Result [2]),
    .Q(q2_OBUF_164)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_1  (
    .C(clock_in_BUFGP_135),
    .CE(t_10us_pose_OBUF_174),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_50/Result [1]),
    .Q(q1_OBUF_163)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_0  (
    .C(clock_in_BUFGP_135),
    .CE(t_10us_pose_OBUF_174),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_50/Result [0]),
    .Q(q0_OBUF_162)
  );
  INV   \XLXI_1/Mcount_COUNT_xor<0>11_INV_0  (
    .I(count0_0_OBUF_138),
    .O(\XLXI_1/Result [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_1/Result<2>1  (
    .I0(count0_2_OBUF_140),
    .I1(count0_0_OBUF_138),
    .I2(count0_1_OBUF_139),
    .O(\XLXI_1/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \XLXI_1/Result<3>1  (
    .I0(count0_2_OBUF_140),
    .I1(count0_3_OBUF_141),
    .I2(count0_0_OBUF_138),
    .I3(count0_1_OBUF_139),
    .O(\XLXI_1/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_1/CEO11  (
    .I0(count0_0_OBUF_138),
    .I1(count0_1_OBUF_139),
    .I2(count0_2_OBUF_140),
    .I3(count0_3_OBUF_141),
    .O(XLXN_1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_1/Mcount_COUNT_xor<1>11  (
    .I0(count0_1_OBUF_139),
    .I1(count0_0_OBUF_138),
    .O(\XLXI_1/Result [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_3  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_1/Result [3]),
    .Q(count0_3_OBUF_141)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_2  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_1/Result [2]),
    .Q(count0_2_OBUF_140)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_1  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_1/Result [1]),
    .Q(count0_1_OBUF_139)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_0  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_1/Result [0]),
    .Q(count0_0_OBUF_138)
  );
  INV   \XLXI_2/Mcount_COUNT_lut<0>_INV_0  (
    .I(count1_0_OBUF_157),
    .O(\XLXI_2/Mcount_COUNT_lut [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<14>_rt  (
    .I0(count1_14_OBUF_143),
    .O(\XLXI_2/Mcount_COUNT_cy<14>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<13>_rt  (
    .I0(count1_13_OBUF_144),
    .O(\XLXI_2/Mcount_COUNT_cy<13>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<12>_rt  (
    .I0(count1_12_OBUF_145),
    .O(\XLXI_2/Mcount_COUNT_cy<12>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<11>_rt  (
    .I0(count1_11_OBUF_146),
    .O(\XLXI_2/Mcount_COUNT_cy<11>_rt_84 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<10>_rt  (
    .I0(count1_10_OBUF_147),
    .O(\XLXI_2/Mcount_COUNT_cy<10>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<9>_rt  (
    .I0(count1_9_OBUF_148),
    .O(\XLXI_2/Mcount_COUNT_cy<9>_rt_82 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<8>_rt  (
    .I0(count1_8_OBUF_149),
    .O(\XLXI_2/Mcount_COUNT_cy<8>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<7>_rt  (
    .I0(count1_7_OBUF_150),
    .O(\XLXI_2/Mcount_COUNT_cy<7>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<6>_rt  (
    .I0(count1_6_OBUF_151),
    .O(\XLXI_2/Mcount_COUNT_cy<6>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<5>_rt  (
    .I0(count1_5_OBUF_152),
    .O(\XLXI_2/Mcount_COUNT_cy<5>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<4>_rt  (
    .I0(count1_4_OBUF_153),
    .O(\XLXI_2/Mcount_COUNT_cy<4>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<3>_rt  (
    .I0(count1_3_OBUF_154),
    .O(\XLXI_2/Mcount_COUNT_cy<3>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<2>_rt  (
    .I0(count1_2_OBUF_155),
    .O(\XLXI_2/Mcount_COUNT_cy<2>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<1>_rt  (
    .I0(count1_1_OBUF_156),
    .O(\XLXI_2/Mcount_COUNT_cy<1>_rt_74 )
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<15>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [14]),
    .LI(count1_15_OBUF_142),
    .O(\XLXI_2/Result [15])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<14>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [13]),
    .LI(\XLXI_2/Mcount_COUNT_cy<14>_rt_87 ),
    .O(\XLXI_2/Result [14])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<14>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [13]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<14>_rt_87 ),
    .O(\XLXI_2/Mcount_COUNT_cy [14])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<13>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [12]),
    .LI(\XLXI_2/Mcount_COUNT_cy<13>_rt_86 ),
    .O(\XLXI_2/Result [13])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<13>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [12]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<13>_rt_86 ),
    .O(\XLXI_2/Mcount_COUNT_cy [13])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<12>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [11]),
    .LI(\XLXI_2/Mcount_COUNT_cy<12>_rt_85 ),
    .O(\XLXI_2/Result [12])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<12>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [11]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<12>_rt_85 ),
    .O(\XLXI_2/Mcount_COUNT_cy [12])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<11>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [10]),
    .LI(\XLXI_2/Mcount_COUNT_cy<11>_rt_84 ),
    .O(\XLXI_2/Result [11])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<11>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [10]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<11>_rt_84 ),
    .O(\XLXI_2/Mcount_COUNT_cy [11])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<10>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [9]),
    .LI(\XLXI_2/Mcount_COUNT_cy<10>_rt_83 ),
    .O(\XLXI_2/Result [10])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<10>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [9]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<10>_rt_83 ),
    .O(\XLXI_2/Mcount_COUNT_cy [10])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<9>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [8]),
    .LI(\XLXI_2/Mcount_COUNT_cy<9>_rt_82 ),
    .O(\XLXI_2/Result [9])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<9>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [8]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<9>_rt_82 ),
    .O(\XLXI_2/Mcount_COUNT_cy [9])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<8>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [7]),
    .LI(\XLXI_2/Mcount_COUNT_cy<8>_rt_81 ),
    .O(\XLXI_2/Result [8])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<8>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [7]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<8>_rt_81 ),
    .O(\XLXI_2/Mcount_COUNT_cy [8])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<7>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [6]),
    .LI(\XLXI_2/Mcount_COUNT_cy<7>_rt_80 ),
    .O(\XLXI_2/Result [7])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<7>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [6]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<7>_rt_80 ),
    .O(\XLXI_2/Mcount_COUNT_cy [7])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<6>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [5]),
    .LI(\XLXI_2/Mcount_COUNT_cy<6>_rt_79 ),
    .O(\XLXI_2/Result [6])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<6>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [5]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<6>_rt_79 ),
    .O(\XLXI_2/Mcount_COUNT_cy [6])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<5>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [4]),
    .LI(\XLXI_2/Mcount_COUNT_cy<5>_rt_78 ),
    .O(\XLXI_2/Result [5])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<5>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [4]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<5>_rt_78 ),
    .O(\XLXI_2/Mcount_COUNT_cy [5])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<4>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [3]),
    .LI(\XLXI_2/Mcount_COUNT_cy<4>_rt_77 ),
    .O(\XLXI_2/Result [4])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<4>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [3]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<4>_rt_77 ),
    .O(\XLXI_2/Mcount_COUNT_cy [4])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<3>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [2]),
    .LI(\XLXI_2/Mcount_COUNT_cy<3>_rt_76 ),
    .O(\XLXI_2/Result [3])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<3>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [2]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<3>_rt_76 ),
    .O(\XLXI_2/Mcount_COUNT_cy [3])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<2>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [1]),
    .LI(\XLXI_2/Mcount_COUNT_cy<2>_rt_75 ),
    .O(\XLXI_2/Result [2])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<2>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [1]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<2>_rt_75 ),
    .O(\XLXI_2/Mcount_COUNT_cy [2])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<1>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [0]),
    .LI(\XLXI_2/Mcount_COUNT_cy<1>_rt_74 ),
    .O(\XLXI_2/Result [1])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<1>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [0]),
    .DI(\XLXI_2/N1 ),
    .S(\XLXI_2/Mcount_COUNT_cy<1>_rt_74 ),
    .O(\XLXI_2/Mcount_COUNT_cy [1])
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<0>  (
    .CI(\XLXI_2/N1 ),
    .LI(\XLXI_2/Mcount_COUNT_lut [0]),
    .O(\XLXI_2/Result [0])
  );
  MUXCY   \XLXI_2/Mcount_COUNT_cy<0>  (
    .CI(\XLXI_2/N1 ),
    .DI(\XLXI_2/N0 ),
    .S(\XLXI_2/Mcount_COUNT_lut [0]),
    .O(\XLXI_2/Mcount_COUNT_cy [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_15  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [15]),
    .Q(count1_15_OBUF_142)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_14  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [14]),
    .Q(count1_14_OBUF_143)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_13  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [13]),
    .Q(count1_13_OBUF_144)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_12  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [12]),
    .Q(count1_12_OBUF_145)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_11  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [11]),
    .Q(count1_11_OBUF_146)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_10  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [10]),
    .Q(count1_10_OBUF_147)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_9  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [9]),
    .Q(count1_9_OBUF_148)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_8  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [8]),
    .Q(count1_8_OBUF_149)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_7  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [7]),
    .Q(count1_7_OBUF_150)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_6  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [6]),
    .Q(count1_6_OBUF_151)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_5  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [5]),
    .Q(count1_5_OBUF_152)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_4  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [4]),
    .Q(count1_4_OBUF_153)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_3  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [3]),
    .Q(count1_3_OBUF_154)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_2  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [2]),
    .Q(count1_2_OBUF_155)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_1  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [1]),
    .Q(count1_1_OBUF_156)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_0  (
    .C(clock_in_BUFGP_135),
    .CE(XLXN_1),
    .CLR(clk_in),
    .D(\XLXI_2/Result [0]),
    .Q(count1_0_OBUF_157)
  );
  GND   \XLXI_2/XST_GND  (
    .G(\XLXI_2/N1 )
  );
  VCC   \XLXI_2/XST_VCC  (
    .P(\XLXI_2/N0 )
  );
  INV   \XLXI_13/Mcount_COUNT_xor<0>11_INV_0  (
    .I(\XLXI_13/COUNT [0]),
    .O(\XLXI_13/Result [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_13/Mcount_COUNT_xor<1>11  (
    .I0(\XLXI_13/COUNT [1]),
    .I1(\XLXI_13/COUNT [0]),
    .O(\XLXI_13/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \XLXI_13/TC1  (
    .I0(\XLXI_13/COUNT [1]),
    .I1(\XLXI_13/COUNT [0]),
    .O(t_10us_OBUF_161)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_13/COUNT_1  (
    .C(clock_in_BUFGP_135),
    .CE(clk_in),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_13/Result [1]),
    .Q(\XLXI_13/COUNT [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_13/COUNT_0  (
    .C(clock_in_BUFGP_135),
    .CE(clk_in),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_13/Result [0]),
    .Q(\XLXI_13/COUNT [0])
  );
  INV   \XLXI_179/q_tmp_INV_4_o1_INV_0  (
    .I(Bs_galben_OBUF_168),
    .O(\XLXI_179/q_tmp_INV_4_o )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_179/q_tmp  (
    .C(clock_in_BUFGP_135),
    .CE(s_111_OBUF_178),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_179/q_tmp_INV_4_o ),
    .Q(Bs_galben_OBUF_168)
  );
  INV   \XLXI_177/q_tmp_INV_4_o1_INV_0  (
    .I(Bi_galben_OBUF_167),
    .O(\XLXI_177/q_tmp_INV_4_o )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_177/q_tmp  (
    .C(clock_in_BUFGP_135),
    .CE(s_101_OBUF_176),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_177/q_tmp_INV_4_o ),
    .Q(Bi_galben_OBUF_167)
  );
  INV   \XLXI_175/q_tmp_INV_4_o1_INV_0  (
    .I(Ai_galben_OBUF_166),
    .O(\XLXI_175/q_tmp_INV_4_o )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_175/q_tmp  (
    .C(clock_in_BUFGP_135),
    .CE(s_001_OBUF_189),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_175/q_tmp_INV_4_o ),
    .Q(Ai_galben_OBUF_166)
  );
  INV   \XLXI_173/q_tmp_INV_4_o1_INV_0  (
    .I(As_galben_OBUF_165),
    .O(\XLXI_173/q_tmp_INV_4_o )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_173/q_tmp  (
    .C(clock_in_BUFGP_135),
    .CE(s_011_OBUF_184),
    .CLR(reset_in_IBUF_136),
    .D(\XLXI_173/q_tmp_INV_4_o ),
    .Q(As_galben_OBUF_165)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \XLXI_3/EQ<15>3  (
    .I0(\XLXI_3/EQ [15]),
    .I1(\XLXI_3/EQ<15>1_134 ),
    .I2(count1_13_OBUF_144),
    .I3(count1_12_OBUF_145),
    .I4(count1_14_OBUF_143),
    .I5(count1_15_OBUF_142),
    .O(cr1_o_OBUF_170)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \XLXI_3/EQ<15>2  (
    .I0(count1_7_OBUF_150),
    .I1(count1_6_OBUF_151),
    .I2(count1_8_OBUF_149),
    .I3(count1_9_OBUF_148),
    .I4(count1_10_OBUF_147),
    .I5(count1_11_OBUF_146),
    .O(\XLXI_3/EQ<15>1_134 )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \XLXI_3/EQ<15>1  (
    .I0(count1_3_OBUF_154),
    .I1(count1_4_OBUF_153),
    .I2(count1_5_OBUF_152),
    .I3(count1_2_OBUF_155),
    .I4(count1_1_OBUF_156),
    .I5(count1_0_OBUF_157),
    .O(\XLXI_3/EQ [15])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

