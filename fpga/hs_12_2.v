`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:33 01/03/2023 
// Design Name: 
// Module Name:    hs_12_2 
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
module hs_12_2(
    input a,
    input bin,
    output d,
    output b
    );
	 xor (d,a,bin);
	 and (b,(~a),bin);


endmodule
