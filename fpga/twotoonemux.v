`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:01 01/02/2023 
// Design Name: 
// Module Name:    twotoonemux 
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
module twotoonemux(
    input a,
    input b,
    input s,
    output y
    );
assign y=(~s&a)|(s&b);

endmodule
