`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:20 10/25/2019
// Design Name:   LED
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/Contador/test.v
// Project Name:  Contador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg CLK;

	// Outputs
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	LED uut (
		.CLK(CLK), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always begin
		#10
		CLK = ~CLK;
		end
		
endmodule

