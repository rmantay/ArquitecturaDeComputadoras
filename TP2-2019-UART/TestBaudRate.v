`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:55:42 09/14/2019
// Design Name:   BaudRateGen
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestBaudRate.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BaudRateGen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestBaudRate;

	// Inputs
	reg CLK;
	reg RESET;

	// Outputs
	wire TICK;
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	BaudRateGen uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.TICK(TICK), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always @(*) begin
	#10
	CLK <= ~CLK;
	end

      
endmodule

