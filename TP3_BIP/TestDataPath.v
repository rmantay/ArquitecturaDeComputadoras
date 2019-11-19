`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:44 11/12/2019
// Design Name:   DataPath
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestDataPath.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataPath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestDataPath;

	// Inputs
	reg CLK;
	reg RESET;
	reg [10:0] OPERAND_IN;
	reg [15:0] DM_IN;
	reg [1:0] SEL_A;
	reg SEL_B;
	reg WR_ACC;
	reg OP;

	// Outputs
	wire [15:0] ACC;
	wire [10:0] OPERAND_OUT;

	// Instantiate the Unit Under Test (UUT)
	DataPath uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.OPERAND_IN(OPERAND_IN), 
		.DM_IN(DM_IN), 
		.SEL_A(SEL_A), 
		.SEL_B(SEL_B), 
		.WR_ACC(WR_ACC), 
		.OP(OP), 
		.ACC(ACC), 
		.OPERAND_OUT(OPERAND_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		OPERAND_IN = 0;
		DM_IN = 0;
		SEL_A = 0;
		SEL_B = 0;
		WR_ACC = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#10;
		RESET = 0;
		
		OPERAND_IN = 0;
		DM_IN = 10;
		SEL_A = 2;
		SEL_B = 0;
		WR_ACC = 1;
		OP = 1;
		#100
		
		OPERAND_IN = 15;
		DM_IN = 0;
		SEL_A = 2;
		SEL_B = 1;
		WR_ACC = 1;
		OP = 1;
		#100;

		
		// Add stimulus here

	end
      
	
	always
	begin
	#1 CLK =~CLK;
	end
	
endmodule

