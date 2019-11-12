`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:31 11/11/2019 
// Design Name: 
// Module Name:    Mux2 
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
module Mux2(
		input [15:0] A,
		input [15:0] B,
		input [15:0] C,
		input [1:0] sel,
		output [15:0] OUT
    );
	 
	 assign OUT = (sel == 2'b00) ? A:
					  (sel == 2'b01) ? B:
					  (sel == 2'b10) ? C: 0;
	 
endmodule
