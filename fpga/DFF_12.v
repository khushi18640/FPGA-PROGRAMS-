`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:34:14 01/04/2023 
// Design Name: 
// Module Name:    DFF_12 
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
module DFF_12(q,d,rst,clk
    );
input d,rst,clk;
output reg q;

always @(posedge clk)
if (rst)
q<=0;

else
q<=d;



endmodule
