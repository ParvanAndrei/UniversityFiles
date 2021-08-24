`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    16:38:02 04/02/2018 
// Design Name: 
// Module Name:    regFile 
//////////////////////////////////////////////////////////////////////////////////
module regFile( 
// Lista porturi
input		    			clk   			,// Ceas
input		    			reset 			,// Reset
output reg				rq_lcd			,// Iesire cerere LCD
input						ack_lcd			,// Confirmare LCD
input  					jp1				,// SW1
input  					jp2				,// SW2
input  					jp3				,// SW3
input					  	rot_s				,// Semnal rotire stanga
input                rot_d				,// Semnal rotire dreapta
input                pres_c			,// Semnal buton central
output reg				lcd_row			,// Linia de afisare a LCD-ului
output reg [5:0]		lcd_column		,// Coloana de afisare a LCD-ului
output reg [7:0]		lcd_character	,// Caracterul afisat pe LCD
output reg [2:0]		val_add			 // Valoarea de adauvat pentru culorile ecranului
);

//Lista semnale interne
reg 				delay_s;
reg 				delay_d;
reg 	[2:0] 	display_value;
wire	[2:0] 	sw_value;
wire 				front_s;
wire 				front_d;
wire 				true_s;
wire 				true_d;

// Valoarea pe 3 biti a SW3, SW2, SW1
assign sw_value 	= {jp1,jp2,jp3};

// Creare detector de front stanga
assign front_s 	= rot_s & (~delay_s);

// Creare detector de front dreapta
assign front_d 	= rot_d & (~delay_d);

// Determinare rotatie stanga
assign true_s 		= front_s & (~rot_d);

// Determinare rotatie dreapta
assign true_d 		= front_d & (~rot_s);


// Modelare Afisaj LCD
always @(posedge clk or posedge reset)
//La resetare preluare valoare SW
if (reset) begin
	lcd_character	<= 8'b0011_0000 + sw_value	; // Creare cracter reset
	lcd_row 			<= 1'b1							;
	lcd_column 		<= 6'b00_0001					;
	rq_lcd 			<= 1'b1							;
end else
	if (ack_lcd) 	rq_lcd <= 0;
	else begin
		if (rq_lcd == 0) begin 
			// Afisare valoare modificabila de rotaie
			if (lcd_row & (lcd_column		== 6'b00_0001)) begin
				lcd_column 		<= 6'b00_0001							;
				lcd_character 	<=	8'b0011_0000 + display_value	;
				lcd_row 			<= 1'b0;								
			end else begin
			// Afisare text
				case(lcd_column)
					6'b00_0001: begin //Afisare "C"
										lcd_character 	<=	8'b0100_0011	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_0010: begin //Afisare "U"
										lcd_character 	<=	8'b0101_0101	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_0011: begin //Afisare "R"
										lcd_character 	<=	8'b0101_0010	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_0100: begin //Afisare "E"
										lcd_character 	<=	8'b0100_0101	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
									
					6'b00_0101: begin //Afisare "N"
										lcd_character 	<=	8'b0100_1110	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_0110: begin //Afisare "T"
										lcd_character 	<=	8'b0101_0100	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_0111: begin //Afisare " "
										lcd_character 	<=	8'b0010_0000	;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;	
									end
					6'b00_1000: begin //Afisare valoarea adaugata pe monitor
										lcd_character 	<=	8'b0011_0000 + val_add;
										lcd_column		<= lcd_column + 1	;
										lcd_row 			<= 1'b1;			
									end
					default	: begin //Default
										lcd_character 	<= 8'b0010_0000 ;
										lcd_column		<= 6'b00_0001		;
										lcd_row 			<= 1'b1;			
									end
					endcase
			end
			rq_lcd <= 1'b1	;
		end
end


//Modelare valoare afisata
always @(posedge clk or posedge reset)
if (reset) begin
	display_value	<= sw_value;
end else begin
	if (true_s)		display_value	<= display_value + 1'b1; else
	if (true_d)		display_value	<= display_value - 1'b1; 
end

//Modelare valoare adaugata
always @(posedge clk or posedge reset)
if (reset)		val_add			<= sw_value			;	else 
if (pres_c)		val_add 			<= display_value	; 

// Modelare registrii intarzire
always @(posedge clk or posedge reset)
if (reset) begin
	delay_s <= 'b0;
	delay_d <= 'b0;
end else begin
	delay_s <= rot_s;
	delay_d <= rot_d;
end

endmodule
