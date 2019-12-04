`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:36:45 11/11/2019 
// Design Name: 
// Module Name:    Control 
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
module Control(
		input CLK,
		input RESET,
		input [15:0] INSTRUCTION,
		
		output [1:0] SEL_A,
		output SEL_B,
		output WR_ACC,
		output OP,
		output WR_RAM,
		output RD_RAM,
		output [10:0] OPERAND,
		output reg [10:0] PC
    );
	 
	 wire [10:0] result;
	 wire WrPC;
	 
	 wire [4:0] opcode;
	 reg [10:0] PC_next;
	 reg OpPC;
	 reg [10:0] cte;
	 
	 always @(*)
		 begin
			PC_next = PC;
			if(WrPC && opcode>0)
				PC_next = result;
		 end
		
	always @(negedge CLK, posedge RESET)
		begin
			if(RESET)
				begin
					PC<=11'b00000000000;
					OpPC<=1;
					cte<=1;
				end
			else
				begin
					PC<=PC_next;
				end
		end
	
	assign opcode= INSTRUCTION[15:11];
	assign OPERAND= INSTRUCTION[10:0];

	InstructionDecoder InstrDecoder (
    .OPCODE(opcode), 
    .WR_PC(WrPC), 
    .SEL_A(SEL_A), 
    .SEL_B(SEL_B), 
    .WR_ACC(WR_ACC), 
    .OP(OP), 
    .WR_RAM(WR_RAM), 
    .RD_RAM(RD_RAM)
    );
	 
	 ALU #(.N(10)) 
	 alu1 (
    .A(PC), 
    .B(cte), 
    .O(OpPC), 
    .Z(result)
    );

endmodule
