`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:06 01/04/2023 
// Design Name: 
// Module Name:    updownc_12 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module updownc_12(q,clk,reset,updown
    );
	 input clk,reset,updown;
	 output [3:0]q;
	 reg [3:0]out;
	 
	reg [26:0] divider=27'd0;
	always @(posedge clk or posedge reset)
	begin 
		if (reset)
			divider <=27'd0;
		else
			divider <= divider+27'd1;
end

always @(posedge divider[26] or posedge reset)
begin
	if (reset)
		out<=4'd0;
	else if (updown)
		out<=out+4'd1;
	else
		out<=out-4'd1;
end
assign q= out;
   


endmodule
