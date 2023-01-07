`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:58 01/03/2023 
// Design Name: 
// Module Name:    fs_12_2 
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
module fs_12_2(
    input a,
    input bin,
    input c,
    output d,
    output b,
	 wire x,y,z
    );
	 xor(d,a,bin,c);
	 and(x,(~a),bin);
	 and(y,(~a),c);
	 and(z,bin,c);
	 or(b,x,y,z);


endmodule
