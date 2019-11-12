`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:44 11/11/2019 
// Design Name: 
// Module Name:    ProgramMemory 
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
module ProgramMemory(
		input CLK,
		input RESET,
		input [10:0] ADDR,
		output reg [15:0] DATA
    );
	 
	 reg [15:0] buffer [9:0];
	 
	always @(posedge CLK, posedge RESET)
	begin
		if(RESET)
			begin
				buffer[0] <= 16'b0001100000010000;	// LDI 16
				buffer[1] <= 16'b0000100000000001; 	// STO 1
				buffer[2] <= 16'b0001000000000001;	//	LD 1
				buffer[3] <= 16'b0010100011111111;	// ADDI 255
				buffer[4] <= 16'b0000100000000010;	//	STO 2
				buffer[5] <= 16'b0001000000000010;	//	LD 2
				buffer[6] <= 16'b0000000000000000;	//	HLT
				buffer[7] <= 16'b0000000000000000;	//	HLT
				buffer[8] <= 16'b0000000000000000;	//	HLT
				buffer[9] <= 16'b0000000000000000;	//	HLT
			end
		else
			begin
				DATA <= buffer[ADDR];
			end
	end


endmodule
