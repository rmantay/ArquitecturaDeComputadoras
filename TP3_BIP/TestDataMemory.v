`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:54:10 11/12/2019
// Design Name:   DataMemory
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestDataMemory.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestDataMemory;

	// Inputs
	reg CLK;
	reg RESET;
	reg RD;
	reg WR;
	reg [10:0] ADDR;
	reg [15:0] IN_DATA;

	// Outputs
	wire [15:0] OUT_DATA;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.RD(RD), 
		.WR(WR), 
		.ADDR(ADDR), 
		.IN_DATA(IN_DATA), 
		
		.OUT_DATA(OUT_DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		RD = 0;
		WR = 0;
		ADDR = 0;
		IN_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		 RESET = 0;
		 
		RD = 0;
		WR = 1;
		ADDR = 1;
		IN_DATA = 2;
		
		 #100
		 
		RD = 1;
		WR = 0;
		ADDR = 0;
		IN_DATA = 4;
		
		
		 #100
		 
		RD = 0;
		WR = 1;
		ADDR = 2;
		IN_DATA = 4;
		
		 #100
		 
		RD = 1;
		WR = 0;
		ADDR = 1;
		IN_DATA = 5;
		 
		// Add stimulus here

	end
	
	always
	begin
		#1 CLK = ~CLK;
	end
      
endmodule

