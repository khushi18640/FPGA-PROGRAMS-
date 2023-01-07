`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:56 01/04/2023 
// Design Name: 
// Module Name:    mux8to1_12 
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
module mux8to1_12(i, s, y);
input [7:0] i;
input [2:0] s;
output y;
wire n1, n2;

mux4to1_12 m1(i[3:0], s[1:0], n1);
mux4to1_12 m2(i[7:4], s[1:0], n2);
mux_2_12 m3(n1, n2, s[2], y);



endmodule
