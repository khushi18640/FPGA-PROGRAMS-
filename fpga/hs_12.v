`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:11 01/02/2023 
// Design Name: 
// Module Name:    hs_12 
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
module hs_12(
    input a,
    input bin,
    output d,
    output b
    );
assign d=a^bin;
assign b=(~a)&bin;

endmodule
