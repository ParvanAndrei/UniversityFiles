`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    21:35:40 03/14/2018 
// Design Name: 
// Module Name:    patternGen1 
//////////////////////////////////////////////////////////////////////////////////
module patternGen1(
//Lista porturi
input  [9:0]		column_o, //Coloana
output [2:0]		rgb		 //Culoarea
);

//Modelare culoare in functie de culoare
assign rgb = (column_o < 80)?  3'b0_0_0 :
				 (column_o < 160)? 3'b0_0_1 :
				 (column_o < 240)? 3'b0_1_0 :
				 (column_o < 320)? 3'b0_1_1 :
				 (column_o < 400)? 3'b1_0_0 :
				 (column_o < 480)? 3'b1_0_1 :
				 (column_o < 560)? 3'b1_1_0 :
				 3'b1_1_1;
endmodule //end patternGen1
