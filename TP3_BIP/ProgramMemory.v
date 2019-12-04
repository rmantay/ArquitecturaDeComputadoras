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
	 
	 reg [15:0] buffer [32:0];
	 
	always @(posedge CLK, posedge RESET)
	begin
		if(RESET)
			begin

				buffer[0] <= 16'b0001100000000011;	// LDI 3
				buffer[1] <= 16'b0000100000000001; 	// STO 1
				buffer[2] <= 16'b0010000000000001; 	// ADD 1				6
				buffer[3] <= 16'b0010100000000100; 	// ADDI 4
				buffer[4] <= 16'b0010100000000100; 	// ADDI 4
				buffer[5] <= 16'b0010100000000100; 	// ADDI 4	
				buffer[6] <= 16'b0000100000000001;	//	STO 1
				buffer[7] <= 16'b0011100000000010;	//	SUBI 2
				buffer[8] <= 16'b0011100000000010;	//	SUBI 2
				buffer[9] <= 16'b0011100000000010;	//	SUBI 2
				buffer[10] <= 16'b0001100000000001;	//	LDI 1
				buffer[11] <= 16'b0010100000000101;	//	ADDI 5 
				buffer[12] <= 16'b0000000000000000;	//	HLT
				//DATA <= buffer[ADDR];


			end
		else
			begin
				DATA <= buffer[ADDR];
			end
	end
	


endmodule
