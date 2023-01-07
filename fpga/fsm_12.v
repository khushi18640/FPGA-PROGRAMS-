`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:09 01/05/2023 
// Design Name: 
// Module Name:    fsm_12 
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
module fsm_12(out,in,clk,reset,pre_s,next_s);
input clk,reset,in;
output reg out;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
output reg [1:0]pre_s,next_s;

reg [28:0]divider = 29'd0;
always @(posedge clk or posedge reset)
begin
    if (reset)
       divider <=29'd0;
    else
       divider <= divider+29'd1;
end

always @(posedge divider[28])
if (reset)
pre_s<=s0;
else
pre_s<=next_s;

always @(in,pre_s)
case(pre_s)
s0: if(in) next_s<=s0;
    else next_s<=s1;
	 
s1: if(in) next_s<=s0;
    else next_s<=s2;

s2: if(in) next_s<=s0;
    else next_s<=s2;

default:next_s<=s0;
endcase

always@ (in,pre_s)
case(pre_s)

s0:out=0;
s1:out=0;
s2: if(in) out=1;
    else out=0;
default: out=0;	 
endcase  

endmodule
