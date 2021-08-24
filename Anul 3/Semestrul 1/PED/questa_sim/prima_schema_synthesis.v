////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: prima_schema_synthesis.v
// /___/   /\     Timestamp: Mon Dec 21 08:32:36 2020
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
  clk_in, reset_in, comp_o, count0_0, count0_1, count0_2, count0_3, cr1_o, EQ_D, EQ_posedge, q0, q1, q2, t_10us, t_10us_d, t_10us_pose, count1
);
  input clk_in;
  input reset_in;
  output comp_o;
  output count0_0;
  output count0_1;
  output count0_2;
  output count0_3;
  output cr1_o;
  output EQ_D;
  output EQ_posedge;
  output q0;
  output q1;
  output q2;
  output t_10us;
  output t_10us_d;
  output t_10us_pose;
  output [15 : 0] count1;
  wire clk_in_BUFGP_115;
  wire reset_in_IBUF_116;
  wire XLXN_1;
  wire count0_0_OBUF_118;
  wire count0_1_OBUF_119;
  wire count0_2_OBUF_120;
  wire count0_3_OBUF_121;
  wire count1_15_OBUF_122;
  wire count1_14_OBUF_123;
  wire count1_13_OBUF_124;
  wire count1_12_OBUF_125;
  wire count1_11_OBUF_126;
  wire count1_10_OBUF_127;
  wire count1_9_OBUF_128;
  wire count1_8_OBUF_129;
  wire count1_7_OBUF_130;
  wire count1_6_OBUF_131;
  wire count1_5_OBUF_132;
  wire count1_4_OBUF_133;
  wire count1_3_OBUF_134;
  wire count1_2_OBUF_135;
  wire count1_1_OBUF_136;
  wire count1_0_OBUF_137;
  wire EQ_D_OBUF_138;
  wire comp_o_OBUF_139;
  wire t_10us_d_OBUF_140;
  wire t_10us_OBUF_141;
  wire q0_OBUF_142;
  wire q1_OBUF_143;
  wire q2_OBUF_144;
  wire XLXN_23;
  wire cr1_o_OBUF_146;
  wire XLXN_11;
  wire EQ_posedge_OBUF_148;
  wire XLXN_35;
  wire t_10us_pose_OBUF_150;
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
  wire \XLXI_3/EQ<15>1_114 ;
  wire [2 : 0] \XLXI_50/Result ;
  wire [3 : 0] \XLXI_1/Result ;
  wire [14 : 0] \XLXI_2/Mcount_COUNT_cy ;
  wire [0 : 0] \XLXI_2/Mcount_COUNT_lut ;
  wire [15 : 0] \XLXI_2/Result ;
  wire [1 : 0] \XLXI_13/Result ;
  wire [1 : 0] \XLXI_13/COUNT ;
  wire [15 : 15] \XLXI_3/EQ ;
  OR2   XLXI_10 (
    .I0(EQ_posedge_OBUF_148),
    .I1(reset_in_IBUF_116),
    .O(XLXN_23)
  );
  INV   XLXI_5 (
    .I(EQ_D_OBUF_138),
    .O(XLXN_11)
  );
  AND2   XLXI_6 (
    .I0(XLXN_11),
    .I1(comp_o_OBUF_139),
    .O(EQ_posedge_OBUF_148)
  );
  INV   XLXI_15 (
    .I(t_10us_d_OBUF_140),
    .O(XLXN_35)
  );
  AND2   XLXI_16 (
    .I0(t_10us_OBUF_141),
    .I1(XLXN_35),
    .O(t_10us_pose_OBUF_150)
  );
  VCC   XLXI_14 (
    .P(XLXN_119)
  );
  IBUF   reset_in_IBUF (
    .I(reset_in),
    .O(reset_in_IBUF_116)
  );
  OBUF   count1_15_OBUF (
    .I(count1_15_OBUF_122),
    .O(count1[15])
  );
  OBUF   count1_14_OBUF (
    .I(count1_14_OBUF_123),
    .O(count1[14])
  );
  OBUF   count1_13_OBUF (
    .I(count1_13_OBUF_124),
    .O(count1[13])
  );
  OBUF   count1_12_OBUF (
    .I(count1_12_OBUF_125),
    .O(count1[12])
  );
  OBUF   count1_11_OBUF (
    .I(count1_11_OBUF_126),
    .O(count1[11])
  );
  OBUF   count1_10_OBUF (
    .I(count1_10_OBUF_127),
    .O(count1[10])
  );
  OBUF   count1_9_OBUF (
    .I(count1_9_OBUF_128),
    .O(count1[9])
  );
  OBUF   count1_8_OBUF (
    .I(count1_8_OBUF_129),
    .O(count1[8])
  );
  OBUF   count1_7_OBUF (
    .I(count1_7_OBUF_130),
    .O(count1[7])
  );
  OBUF   count1_6_OBUF (
    .I(count1_6_OBUF_131),
    .O(count1[6])
  );
  OBUF   count1_5_OBUF (
    .I(count1_5_OBUF_132),
    .O(count1[5])
  );
  OBUF   count1_4_OBUF (
    .I(count1_4_OBUF_133),
    .O(count1[4])
  );
  OBUF   count1_3_OBUF (
    .I(count1_3_OBUF_134),
    .O(count1[3])
  );
  OBUF   count1_2_OBUF (
    .I(count1_2_OBUF_135),
    .O(count1[2])
  );
  OBUF   count1_1_OBUF (
    .I(count1_1_OBUF_136),
    .O(count1[1])
  );
  OBUF   count1_0_OBUF (
    .I(count1_0_OBUF_137),
    .O(count1[0])
  );
  OBUF   comp_o_OBUF (
    .I(comp_o_OBUF_139),
    .O(comp_o)
  );
  OBUF   count0_0_OBUF (
    .I(count0_0_OBUF_118),
    .O(count0_0)
  );
  OBUF   count0_1_OBUF (
    .I(count0_1_OBUF_119),
    .O(count0_1)
  );
  OBUF   count0_2_OBUF (
    .I(count0_2_OBUF_120),
    .O(count0_2)
  );
  OBUF   count0_3_OBUF (
    .I(count0_3_OBUF_121),
    .O(count0_3)
  );
  OBUF   cr1_o_OBUF (
    .I(cr1_o_OBUF_146),
    .O(cr1_o)
  );
  OBUF   EQ_D_OBUF (
    .I(EQ_D_OBUF_138),
    .O(EQ_D)
  );
  OBUF   EQ_posedge_OBUF (
    .I(EQ_posedge_OBUF_148),
    .O(EQ_posedge)
  );
  OBUF   q0_OBUF (
    .I(q0_OBUF_142),
    .O(q0)
  );
  OBUF   q1_OBUF (
    .I(q1_OBUF_143),
    .O(q1)
  );
  OBUF   q2_OBUF (
    .I(q2_OBUF_144),
    .O(q2)
  );
  OBUF   t_10us_OBUF (
    .I(t_10us_OBUF_141),
    .O(t_10us)
  );
  OBUF   t_10us_d_OBUF (
    .I(t_10us_d_OBUF_140),
    .O(t_10us_d)
  );
  OBUF   t_10us_pose_OBUF (
    .I(t_10us_pose_OBUF_150),
    .O(t_10us_pose)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_4 (
    .C(clk_in_BUFGP_115),
    .CLR(reset_in_IBUF_116),
    .D(comp_o_OBUF_139),
    .Q(EQ_D_OBUF_138)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_11 (
    .C(clk_in_BUFGP_115),
    .CLR(reset_in_IBUF_116),
    .D(cr1_o_OBUF_146),
    .Q(comp_o_OBUF_139)
  );
  FDC #(
    .INIT ( 1'b0 ))
  XLXI_12 (
    .C(clk_in_BUFGP_115),
    .CLR(reset_in_IBUF_116),
    .D(t_10us_OBUF_141),
    .Q(t_10us_d_OBUF_140)
  );
  BUFGP   clk_in_BUFGP (
    .I(clk_in),
    .O(clk_in_BUFGP_115)
  );
  INV   \XLXI_50/Mcount_COUNT_xor<0>11_INV_0  (
    .I(q0_OBUF_142),
    .O(\XLXI_50/Result [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_50/Result<2>1  (
    .I0(q2_OBUF_144),
    .I1(q0_OBUF_142),
    .I2(q1_OBUF_143),
    .O(\XLXI_50/Result [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_50/Mcount_COUNT_xor<1>11  (
    .I0(q1_OBUF_143),
    .I1(q0_OBUF_142),
    .O(\XLXI_50/Result [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_2  (
    .C(clk_in_BUFGP_115),
    .CE(t_10us_pose_OBUF_150),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_50/Result [2]),
    .Q(q2_OBUF_144)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_1  (
    .C(clk_in_BUFGP_115),
    .CE(t_10us_pose_OBUF_150),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_50/Result [1]),
    .Q(q1_OBUF_143)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_50/COUNT_0  (
    .C(clk_in_BUFGP_115),
    .CE(t_10us_pose_OBUF_150),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_50/Result [0]),
    .Q(q0_OBUF_142)
  );
  INV   \XLXI_1/Mcount_COUNT_xor<0>11_INV_0  (
    .I(count0_0_OBUF_118),
    .O(\XLXI_1/Result [0])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \XLXI_1/Result<2>1  (
    .I0(count0_2_OBUF_120),
    .I1(count0_0_OBUF_118),
    .I2(count0_1_OBUF_119),
    .O(\XLXI_1/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \XLXI_1/Result<3>1  (
    .I0(count0_2_OBUF_120),
    .I1(count0_3_OBUF_121),
    .I2(count0_0_OBUF_118),
    .I3(count0_1_OBUF_119),
    .O(\XLXI_1/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \XLXI_1/CEO11  (
    .I0(count0_0_OBUF_118),
    .I1(count0_1_OBUF_119),
    .I2(count0_2_OBUF_120),
    .I3(count0_3_OBUF_121),
    .O(XLXN_1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \XLXI_1/Mcount_COUNT_xor<1>11  (
    .I0(count0_1_OBUF_119),
    .I1(count0_0_OBUF_118),
    .O(\XLXI_1/Result [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_3  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_1/Result [3]),
    .Q(count0_3_OBUF_121)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_2  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_1/Result [2]),
    .Q(count0_2_OBUF_120)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_1  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_1/Result [1]),
    .Q(count0_1_OBUF_119)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_1/COUNT_0  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_119),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_1/Result [0]),
    .Q(count0_0_OBUF_118)
  );
  INV   \XLXI_2/Mcount_COUNT_lut<0>_INV_0  (
    .I(count1_0_OBUF_137),
    .O(\XLXI_2/Mcount_COUNT_lut [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<14>_rt  (
    .I0(count1_14_OBUF_123),
    .O(\XLXI_2/Mcount_COUNT_cy<14>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<13>_rt  (
    .I0(count1_13_OBUF_124),
    .O(\XLXI_2/Mcount_COUNT_cy<13>_rt_86 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<12>_rt  (
    .I0(count1_12_OBUF_125),
    .O(\XLXI_2/Mcount_COUNT_cy<12>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<11>_rt  (
    .I0(count1_11_OBUF_126),
    .O(\XLXI_2/Mcount_COUNT_cy<11>_rt_84 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<10>_rt  (
    .I0(count1_10_OBUF_127),
    .O(\XLXI_2/Mcount_COUNT_cy<10>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<9>_rt  (
    .I0(count1_9_OBUF_128),
    .O(\XLXI_2/Mcount_COUNT_cy<9>_rt_82 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<8>_rt  (
    .I0(count1_8_OBUF_129),
    .O(\XLXI_2/Mcount_COUNT_cy<8>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<7>_rt  (
    .I0(count1_7_OBUF_130),
    .O(\XLXI_2/Mcount_COUNT_cy<7>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<6>_rt  (
    .I0(count1_6_OBUF_131),
    .O(\XLXI_2/Mcount_COUNT_cy<6>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<5>_rt  (
    .I0(count1_5_OBUF_132),
    .O(\XLXI_2/Mcount_COUNT_cy<5>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<4>_rt  (
    .I0(count1_4_OBUF_133),
    .O(\XLXI_2/Mcount_COUNT_cy<4>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<3>_rt  (
    .I0(count1_3_OBUF_134),
    .O(\XLXI_2/Mcount_COUNT_cy<3>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<2>_rt  (
    .I0(count1_2_OBUF_135),
    .O(\XLXI_2/Mcount_COUNT_cy<2>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \XLXI_2/Mcount_COUNT_cy<1>_rt  (
    .I0(count1_1_OBUF_136),
    .O(\XLXI_2/Mcount_COUNT_cy<1>_rt_74 )
  );
  XORCY   \XLXI_2/Mcount_COUNT_xor<15>  (
    .CI(\XLXI_2/Mcount_COUNT_cy [14]),
    .LI(count1_15_OBUF_122),
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
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [15]),
    .Q(count1_15_OBUF_122)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_14  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [14]),
    .Q(count1_14_OBUF_123)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_13  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [13]),
    .Q(count1_13_OBUF_124)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_12  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [12]),
    .Q(count1_12_OBUF_125)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_11  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [11]),
    .Q(count1_11_OBUF_126)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_10  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [10]),
    .Q(count1_10_OBUF_127)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_9  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [9]),
    .Q(count1_9_OBUF_128)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_8  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [8]),
    .Q(count1_8_OBUF_129)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_7  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [7]),
    .Q(count1_7_OBUF_130)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_6  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [6]),
    .Q(count1_6_OBUF_131)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_5  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [5]),
    .Q(count1_5_OBUF_132)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_4  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [4]),
    .Q(count1_4_OBUF_133)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_3  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [3]),
    .Q(count1_3_OBUF_134)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_2  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [2]),
    .Q(count1_2_OBUF_135)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_1  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [1]),
    .Q(count1_1_OBUF_136)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_2/COUNT_0  (
    .C(clk_in_BUFGP_115),
    .CE(XLXN_1),
    .CLR(XLXN_23),
    .D(\XLXI_2/Result [0]),
    .Q(count1_0_OBUF_137)
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
    .O(t_10us_OBUF_141)
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_13/COUNT_1  (
    .C(clk_in_BUFGP_115),
    .CE(EQ_posedge_OBUF_148),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_13/Result [1]),
    .Q(\XLXI_13/COUNT [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \XLXI_13/COUNT_0  (
    .C(clk_in_BUFGP_115),
    .CE(EQ_posedge_OBUF_148),
    .CLR(reset_in_IBUF_116),
    .D(\XLXI_13/Result [0]),
    .Q(\XLXI_13/COUNT [0])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \XLXI_3/EQ<15>3  (
    .I0(\XLXI_3/EQ [15]),
    .I1(\XLXI_3/EQ<15>1_114 ),
    .I2(count1_13_OBUF_124),
    .I3(count1_12_OBUF_125),
    .I4(count1_14_OBUF_123),
    .I5(count1_15_OBUF_122),
    .O(cr1_o_OBUF_146)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \XLXI_3/EQ<15>2  (
    .I0(count1_7_OBUF_130),
    .I1(count1_6_OBUF_131),
    .I2(count1_8_OBUF_129),
    .I3(count1_9_OBUF_128),
    .I4(count1_10_OBUF_127),
    .I5(count1_11_OBUF_126),
    .O(\XLXI_3/EQ<15>1_114 )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \XLXI_3/EQ<15>1  (
    .I0(count1_3_OBUF_134),
    .I1(count1_4_OBUF_133),
    .I2(count1_5_OBUF_132),
    .I3(count1_2_OBUF_135),
    .I4(count1_1_OBUF_136),
    .I5(count1_0_OBUF_137),
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

