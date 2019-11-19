`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:43 11/11/2019 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
		input CLK,
		input RESET,
		input [15:0] INSTRUCTION,
		input [15:0] DM_IN,
		
		output [10:0] ADDR_PM,
		output [10:0] ADDR_DM,
		output [15:0] ACC,
		output RD,
		output WR,
		output WrAcc
    );
	 
	 wire [1:0] sel_A;
	 wire sel_B;
	 wire Op;
	 wire [10:0] operand;

Control control (
    .CLK(CLK), 
    .RESET(RESET), 
    .INSTRUCTION(INSTRUCTION), 
    .SEL_A(sel_A), 
    .SEL_B(sel_B), 
    .WR_ACC(WrAcc), 
    .OP(Op), 
    .WR_RAM(WR), 
    .RD_RAM(RD), 
    .OPERAND(operand), 
    .PC(ADDR_PM)
    );

DataPath data_path (
    .CLK(CLK), 
    .RESET(RESET), 
    .OPERAND_IN(operand), 
    .DM_IN(DM_IN), 
    .SEL_A(sel_A), 
    .SEL_B(sel_B), 
    .WR_ACC(WrAcc), 
    .OP(Op), 
    .ACC(ACC), 
    .OPERAND_OUT(ADDR_DM)
    );



	

endmodule
