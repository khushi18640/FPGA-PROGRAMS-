`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:25 01/03/2023 
// Design Name: 
// Module Name:    mux_2_12 
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
module mux_2_12(
	input[0:1]i,
	input s,
	output reg o
    );

always @(s,i)
begin
		
case (s)
1'b0:o=i[0];
1'b1:o=i[1];
default :o=1'bx;
endcase
	 
end

endmodule
