`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:47 11/12/2019
// Design Name:   ProgramMemory
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestProgramMemory.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestProgramMemory;

	// Inputs
	reg CLK;
	reg RESET;
	reg [10:0] ADDR;

	// Outputs
	wire [15:0] DATA;

	// Instantiate the Unit Under Test (UUT)
	ProgramMemory uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.ADDR(ADDR), 
		.DATA(DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		ADDR = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
		
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
		#100
		ADDR = ADDR + 1;
        
		// Add stimulus here

	end
	
	
	always
	begin
		#1 CLK = ~CLK;
	end
      
endmodule

