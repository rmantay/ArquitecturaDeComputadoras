`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:15 11/15/2019
// Design Name:   Interface
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestInterfaz.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestInterfaz;

	// Inputs
	reg CLK;
	reg RESET;
	reg [15:0] DATA_IN;
	reg WR;

	// Outputs
	wire TX;

	// Instantiate the Unit Under Test (UUT)
	Interface uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.DATA_IN(DATA_IN), 
		.WR(WR), 
		.TX(TX)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		DATA_IN = 0;
		WR = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
		#10
		DATA_IN = 10;
		WR=1;
		#2 WR =0;
        
		// Add stimulus here

	end
	
	always
	begin
	#1 CLK = ~CLK;
	end
      
endmodule

