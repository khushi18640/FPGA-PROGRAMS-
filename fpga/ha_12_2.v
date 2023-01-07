`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:37 01/03/2023 
// Design Name: 
// Module Name:    ha_12_2 
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
module ha_12_2(
    input a,
    input b,
    output s,
    output c
    );
	 xor(s,a,b);
	 and (c,a,b);


endmodule
