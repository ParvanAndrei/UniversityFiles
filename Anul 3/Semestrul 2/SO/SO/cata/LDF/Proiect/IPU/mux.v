`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    14:46:46 03/15/2018 
// Design Name: 
// Module Name:    mux 
//////////////////////////////////////////////////////////////////////////////////
module mux(
// Lsita Porturi
input           select	, //Selectie
input [2:0]     d1		, //Semnal de intrare 1
input [2:0]     d2		, //Semnal de intrare 2
output[2:0]     q			  //Iesire
);

//Modelare iesire multiplexor
assign q = (select)?  d2 : d1;

endmodule //end mux
