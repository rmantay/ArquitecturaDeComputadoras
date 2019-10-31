`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:49 10/30/2019
// Design Name:   Rx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/PruebaUART/testUartRx.v
// Project Name:  PruebaUART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Rx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testUartRx;

	// Inputs
	reg CLK;
	reg RESET;
	reg TICK;
	reg RX;

	// Outputs
	wire RX_DONE;
	wire [7:0] DOUT;
	wire [1:0] STATE;

	// Instantiate the Unit Under Test (UUT)
	Rx uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.TICK(TICK), 
		.RX(RX), 
		.RX_DONE(RX_DONE), 
		.DOUT(DOUT), 
		.STATE(STATE)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;
		TICK = 0;
		RX = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

