`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    17:04:13 03/15/2018 
// Design Name: 
// Module Name:    imgProcessor 
//////////////////////////////////////////////////////////////////////////////////
module imgProcessor(
//Lista porturi
input[2:0]		rbg_in	, //Culoare curenta
input[2:0]		val_add	, //Valoarea de adaugat
output[2:0] 	rbg_out	  //Culoarea rezultata
);

// Calcularea culoarii de iesire
assign rbg_out = rbg_in + val_add;

endmodule //end imgProcessor
