/******************************************************************************
*     Project:  IPU
*   File name:  ipu_etapa1.v
* Description:  Test pentru driver VGA
* Date			      Author		Notes
* March 7, 2018    DN      Initial
******************************************************************************/

module ipu_etapa1(
//Lista porturi
input		    	      clk_i   	, // clock input, 50MHz
input		    	      reset_i 	, // reset active high
//Buttons
input 					SW			, //SW
input 					SW1		, //SW1
input 					SW2		, //SW2
input						SW3		, //SW3
input						rot_a		, //Rotire stanga
input						rot_b		, //Rotire dreapta
input						rot_c		, //Buton central
// Vga interface
output               red_o   	, // red video output
output               green_o 	, // green video output
output               blue_o  	, // blue video output
output      	      hSync_o 	, // Horizontal sync video output
output      	      vSync_o	, // vertical sync video output
output 	[8:0]			row_o		, //	VGA row
output	[9:0]			column_o	, // VGA column 
// Lcd Intergace
output               lcd_e		, //Iesire LCD
output               lcd_rs	, //Iesire LCD
output               lcd_rw	, //Iesire LCD
output					SF_D8		, //Iesire LCD
output					SF_D9		, //Iesire LCD
output					SF_D10	, //Iesire LCD
output					SF_D11	  //Iesire LCD
);

// Lista semnale interne
wire [4:0]    	red	   		;
wire [5:0]   	green  			;
wire [4:0]    	blue				;
wire [15:0]   	rggb   			;
wire [2:0]   	rgb   			;
wire          	select 			;
wire				rot_s				;
wire				rot_d				;
wire				lcd_rq			;
wire           lcd_ack			;	
wire				lcd_row			;
wire [5:0]		lcd_column		;		
wire [7:0]		lcd_character	;
wire [2:0]     pattern1			;
wire [2:0]     pattern2			;
wire [2:0]		val_add			;
wire [3:0]  	db					;

//Formare smnal db
assign SF_D8 = db[0];
assign SF_D9 = db[1];
assign SF_D10 = db[2];
assign SF_D11 = db[3];

assign red_o   = red			[0];
assign green_o = green  	[0];
assign blue_o  = blue		[0];

// Formare RGB pe 16 biti
assign rggb = {red[4:1],rgb[2],green[5:1],rgb[1],blue[4:1],rgb[0]};

//Instanta driver VGA
vgaDriver I_VGA_DRIVER (
.clk_i		  (clk_i			), // clock input 50MHz
.reset_i	     (reset_i  	), // reset active high
.rgb_i		  (rggb     	),	// pixel colour input (R[4:0], G[5:0], B[4:0])
.row_o		  (row_o    	), // row
.column_o	  (column_o 	), // column
.red_o		  (red			), // red video output
.green_o      (green    	), // green video output
.blue_o		  (blue	 		), // blue video output
.hSync_o	     (hSync_o  	), // Horizontal sync video output
.vSync_o		  (vSync_o  	)  // vertical sync video output
);

// Instanta debounce sw
debounce I_DEBOUNCE_SW (
.clk         (clk_i     ),//Intrare
.rst_n       (reset_i   ),//Intrare
.data_i      (SW        ),//Intrare	
.data_o      (select    ) //Iesire  	
);

// Instanta multiplexor intre imagini
mux I_MUX(
.select		(select		),//Intrare
.d1			(pattern1	),//Intrare
.d2			(pattern2	),//Intrare
.q				(rgb			) //Iesire 
);

// Instanta generator imagine
patternGen1 I_GEN1 (
.column_o   (column_o  	),//Intrare
.rgb        (pattern1   ) //Iesire
);

//Instanta procesare imagine
imgProcessor I_IMG_PROCES(
.rbg_in		(pattern1	),//Intrare
.val_add		(val_add		),//Intrare
.rbg_out		(pattern2	) //Iesire
);

// Instanta debounce rotire stanga
debounce I_DEBOUNCE_ROT_A (
.clk         (clk_i     ),//Intrare
.rst_n       (reset_i  	),//Intrare
.data_i      (rot_a     ),//Intrare
.data_o      (rot_s    	) //Iesire 
);

// Instanta debounce rotire dreapta
debounce I_DEBOUNCE_ROT_B (
.clk         (clk_i     ),//Intrare
.rst_n       (reset_i  	),//Intrare 
.data_i      (rot_b     ),//Intrare	
.data_o      (rot_d    	) //Iesire   	
);

// Instanta reg file
regFile I_REG_FILE( 
.clk				(clk_i			),//Intrare
.reset			(reset_i			),//Intrare
.rq_lcd			(lcd_rq			),//Iesire
.ack_lcd			(lcd_ack			),//Intrare
.jp1				(SW1				),//Intrare
.jp2				(SW2				),//Intrare
.jp3				(SW3				),//Intrare 
.rot_s			(rot_s			),//Intrare
.rot_d			(rot_d			),//Intrare
.pres_c			(rot_c			),//Intrare
.lcd_row			(lcd_row			),//Iesire
.lcd_column		(lcd_column		),//Iesire
.lcd_character	(lcd_character	),//Iesire
.val_add			(val_add			) //Iesire
);

//Instanta driver LCD
lcdDriver  I_LCD(
.clk				(clk_i			),//Intrare
.rst_n			(~reset_i		),//Intrare
.rq				(lcd_rq			),//Intrare
.ack				(lcd_ack			),//Iesire
.lcd_row			(lcd_row			),//Intrare
.lcd_column		(lcd_column		),//Intrare
.lcd_character	(lcd_character	),//Intrare
.lcd_e			(lcd_e			),//Iesire
.lcd_rs			(lcd_rs			),//Iesire
.lcd_rw_n		(lcd_rw			),//Iesire
.db				(db				) //Iesire
);	

endmodule   // ipu_etapa1
