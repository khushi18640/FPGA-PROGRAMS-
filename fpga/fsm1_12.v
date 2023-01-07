`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:57 01/06/2023 
// Design Name: 
// Module Name:    fsm1_12 
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
module fsm1_12(out,in,clk,reset,pre_s,next_s);
input clk,reset,in;
output reg out;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
output reg [1:0]pre_s,next_s;

//reg [26:0]divider = 27'd0;
//always @(posedge clk or posedge reset)
//begin
//    if (reset)
//       divider <=27'd0;
//    else
 //      divider <= divider+27'd1;
//end

always @(posedge clk)
if (reset)
pre_s<=s0;
else
pre_s<=next_s;

always @(in,pre_s)
case(pre_s)
s0: if(in) next_s<=s1;
    else next_s<=s0;
	 
s1: if(in) next_s<=s1;
    else next_s<=s2;

s2: if(in) next_s<=s3;
    else next_s<=s0;
	 
s3: if(in) next_s<=s0;
    else next_s<=s2;

default:next_s<=s0;
endcase

always@ (in,pre_s)
case(pre_s)

s0:out<=0;
s1:out<=0;
s2:out<=0;
s3: if(in) out<=1;
    else out<=0;
default: out<=0;	 
endcase  	

endmodule
