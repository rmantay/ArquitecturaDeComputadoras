`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:07:14 11/12/2019
// Design Name:   BIP_I
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestBIP.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BIP_I
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBIP;

	// Inputs
	reg CLK;
	reg RESET;

	// Outputs
	wire TX;

	// Instantiate the Unit Under Test (UUT)
	BIP_I uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.TX(TX)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
        
		// Add stimulus here

	end
	
	always
	begin
	 #1 CLK = ~CLK;
	 end
      
endmodule

