`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:29:56 11/11/2019 
// Design Name: 
// Module Name:    BIP_I 
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
module BIP_I(
		input CLK,
		input RESET
		

    );
	 
	 
		wire [15:0] RESULT;
	 	wire [15:0] INSTRUCTION;
		wire [15:0] OUT_DATA;
		wire [10:0] ADDR_PM;
		wire [10:0] ADDR_DM;
		wire [15:0] ACC;
		wire [10:0] PC;
		wire RD;
		wire WR;
	 
	 ProgramMemory PM (
    .CLK(CLK), 
    .RESET(RESET), 
    .ADDR(ADDR_PM), 
    .DATA(INSTRUCTION)
    );
	 
	 DataMemory DM (
    .CLK(CLK), 
    .RESET(RESET), 
    .RD(RD), 
    .WR(WR), 
    .ADDR(ADDR_DM), 
    .IN_DATA(ACC), 
    .OUT_DATA(OUT_DATA)
    );



	 CPU cpu (
    .CLK(CLK), 
    .RESET(RESET), 
    .INSTRUCTION(INSTRUCTION), 
    .DM_IN(OUT_DATA), 
    .ADDR_PM(ADDR_PM), 
    .ADDR_DM(ADDR_DM), 
    .ACC(ACC), 
    .RD(RD), 
    .WR(WR)
    );
	 
	 assign PC = ADDR_PM;


	 



	 


endmodule
