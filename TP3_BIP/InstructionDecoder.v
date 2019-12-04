`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:00 11/11/2019 
// Design Name: 
// Module Name:    InstructionDecoder 
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
module InstructionDecoder( 
		input [4:0] OPCODE,
		output reg WR_PC,
		output reg [1:0] SEL_A,
		output reg SEL_B,
		output reg WR_ACC,
		output reg OP,
		output reg WR_RAM,
		output reg RD_RAM
    );
	 
	 always @(*)
	 begin
		case(OPCODE)
			//HALT: WR_PC=0, WR_RAM=0, RD_RAM=0
			5'b00000:
				begin
					WR_PC=0;
					WR_ACC=0;
					OP=0;
					WR_RAM=0;
					RD_RAM=0;
					
				end
			
			//STO:	
			5'b00001:
				begin
					WR_PC=1;
					SEL_A = 2'b00;
					SEL_B = 1'b1;
					WR_ACC= 0;
					OP=0;
					WR_RAM=1;
					RD_RAM=0;
				end
				
			//LD
			5'b00010:
				begin
					WR_PC=1;
					SEL_A = 2'b00;
					SEL_B = 1'b1;
					WR_ACC= 1;
					OP=0;
					WR_RAM=0;
					RD_RAM=1;
				end
				
			//LDI
			5'b00011:
				begin
					WR_PC=1;
					SEL_A = 2'b01;
					SEL_B = 1'b0;
					WR_ACC= 1;
					OP=0;
					WR_RAM=0;
					RD_RAM=0;
				end
			
			//ADD
			5'b00100:
				begin
					WR_PC=1;
					SEL_A = 2'b10;
					SEL_B = 1'b0;
					WR_ACC= 1;
					OP=1;
					WR_RAM=0;
					RD_RAM=1;
				end
			
			//ADDI
			5'b00101:
				begin
					WR_PC=1;
					SEL_A = 2'b10;
					SEL_B = 1'b1;
					WR_ACC= 1;
					OP=1;
					WR_RAM=0;
					RD_RAM=0;
				end
				
			//SUB
			5'b00110:
				begin
					WR_PC=1;
					SEL_A = 2'b10;
					SEL_B = 1'b0;
					WR_ACC= 1;
					OP=0;
					WR_RAM=0;
					RD_RAM=1;
				end
				
			//SUBI
			5'b00111:
				begin
					WR_PC=1;
					SEL_A = 2'b10;
					SEL_B = 1'b1;
					WR_ACC= 1;
					OP=0;
					WR_RAM=0;
					RD_RAM=0;
				end
				
			//default
			default:
				begin
					WR_PC=0;
					SEL_A = 2'b11;
					SEL_B = 1'b0;
					WR_ACC= 0;
					OP=0;
					WR_RAM=0;
					RD_RAM=0;
				end
		
		endcase
	 end


endmodule
