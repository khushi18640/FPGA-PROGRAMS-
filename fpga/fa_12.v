`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:35 01/02/2023 
// Design Name: 
// Module Name:    fa_12 
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
module fa_12(
    input a,
    input b,
    input cin,
    output s,
    output c
    );
	 
	 assign s=a^b^cin;
	 assign c=(a&b)|(b&cin)|(cin&a);


endmodule
