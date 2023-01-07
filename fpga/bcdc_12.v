`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:37 01/05/2023 
// Design Name: 
// Module Name:    bcdc_12 
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
module bcdc_12(q,clk,reset
    );
	 input clk,reset;
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
	else if (out<9 )
		out<=out+4'd1;
	else
		out<=4'd0;
end
assign q= out;


endmodule
