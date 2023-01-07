`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:13 01/03/2023 
// Design Name: 
// Module Name:    mux_3_12 
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
module mux_3_12(
	input [1:0]i,
	input s,
	output reg o
    );
	 
always @(s,i)

begin
if (s==0)
o=i[0];

else
o=i[1];

end

endmodule
