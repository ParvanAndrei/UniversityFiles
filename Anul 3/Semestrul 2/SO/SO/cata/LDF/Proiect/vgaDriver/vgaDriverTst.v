/******************************************************************************
*     Project:  VGA test for Digilent board
*      Author:  Dan NICULA (DN)
*       Email:  dan.nicula@unitbv.ro
*   File name:  vgaDriverTst.v
* Description:  Test environment for vgaDriver
* Date			Author		Notes
* Aug 25, 2006		DN		initial version
******************************************************************************/
module vgaDriverTst();

reg		    clk;		    // clock input
reg		    reset;	    // reset active low
reg[2:0]	rgb;		    // pixel colour input
wire[8:0]	row;		    // current row display on screen
wire[9:0]	column;		  // current column display on screen
wire		  red;		    // red video output
wire		  green;		  // green video output
wire		  blue;		    // blue video output
wire		  hSync;		  // horisontal sync video output
wire		  vSync;		  // vertical sync video output

vgaDriver DUT(
	.clk_i		(clk	  ),		
	.reset_i	(reset  ),	
	.rgb_i		(rgb	  ),		
	.row_o		(row	  ),		
	.column_o	(column	),	
	.red_o		(red	  ),		
	.green_o	(green	),	
	.blue_o		(blue	  ),	
	.hSync_o	(hSync	),	
	.vSync_o	(vSync	)	
);

initial begin
	clk <= 1'b0;
	forever #25 clk <= ~clk;
end

initial begin
	rgb <= 3'b111;
	reset <= 1'b0;
	repeat (5)
	@(posedge clk);
	reset <= 1'b1;
	repeat (5)
	@(posedge clk);
	reset <= 1'b0;
end

endmodule
