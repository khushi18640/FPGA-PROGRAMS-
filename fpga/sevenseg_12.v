`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:28 01/05/2023 
// Design Name: 
// Module Name:    sevenseg_12 
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
module sevenseg_12(inp, SevenSegment, SevenSegmentEnable
    );
	 input [3:0] inp;
	 output reg [7:0] SevenSegment; 
	 output reg [2:0] SevenSegmentEnable;
	 always @(*)
		begin
	SevenSegmentEnable = 3'b110;
	case (inp)
	
	4'b0000:SevenSegment=8'b00000010;
	4'b0001:SevenSegment=8'b10011110;
	4'b0010:SevenSegment=8'b00100100;
	4'b0011:SevenSegment=8'b00001100;
	4'b0100:SevenSegment=8'b10011000;
	4'b0101:SevenSegment=8'b01001000;
	4'b0110:SevenSegment=8'b01000000;
	4'b0111:SevenSegment=8'b00011110;
	4'b1000:SevenSegment=8'b00000000;
	4'b1001:SevenSegment=8'b00001000;
	4'b1010:SevenSegment=8'b00010000;
	4'b1011:SevenSegment=8'b00000000;
	4'b1100:SevenSegment=8'b01100010;
	4'b1101:SevenSegment=8'b00000010;
	4'b1110:SevenSegment=8'b01100000;
	4'b1111:SevenSegment=8'b01110000;
	endcase
end

endmodule
