`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:56 01/04/2023 
// Design Name: 
// Module Name:    fa_4bit_st 
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
module fa_4bit_st(a,b,cin,s,c
    );
	 input [3:0] a,b;
	 input cin;
	 output [3:0] s;
	 output c;
	 wire N1,N2,N3;
	 
	 fa_12 fa1(a[0],b[0],cin,s[0],N1);
	 fa_12 fa2(a[1],b[1],N1,s[1],N2);
	 fa_12 fa3(a[2],b[2],N2,s[2],N3);
	fa_12 fa4(a[3],b[3],N3,s[3],c);


endmodule
