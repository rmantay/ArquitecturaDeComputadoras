`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:08:25 11/12/2019
// Design Name:   CPU
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestCPU.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestCPU;

	// Inputs
	reg CLK;
	reg RESET;
	reg [15:0] INSTRUCTION;
	reg [15:0] DM_IN;

	// Outputs
	wire [10:0] ADDR_PM;
	wire [10:0] ADDR_DM;
	wire [15:0] ACC;
	wire RD;
	wire WR;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.INSTRUCTION(INSTRUCTION), 
		.DM_IN(DM_IN), 
		
		.ADDR_PM(ADDR_PM), 
		.ADDR_DM(ADDR_DM), 
		.ACC(ACC), 
		.RD(RD), 
		.WR(WR)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		INSTRUCTION = 0;
		DM_IN = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET =0;
       
		INSTRUCTION = 16'b0000000000000000; //halt
		DM_IN = 0;
		// Add stimulus here
		
		#100;
		
		INSTRUCTION = 16'b0001100000000100; //LDI 4 
		DM_IN = 15;
		
		#100;
       
		INSTRUCTION = 16'b0000100000000010; // sto 2
		DM_IN = 10;
		
		#100;
       
		INSTRUCTION = 16'b0001000000000010; // LD 2
		DM_IN = 10;
		
		#100;
       
	
       
		INSTRUCTION = 16'b0010000000000001; //ADD 1
		DM_IN = 10;
		
		#100;
       
		INSTRUCTION = 16'b0010100000000100; //ADDI 4
		DM_IN = 0;
		
		#100;
       
		INSTRUCTION = 16'b0001100000000001; //SUB 1 
		DM_IN = 5;
		
		#100;
       
		INSTRUCTION = 16'b0011100000000001; //SUBI 1
		DM_IN = 0;

	end
	
	always
	begin
	 #1 CLK=~CLK;
	 end
      
endmodule

