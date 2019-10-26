`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:45 10/21/2019
// Design Name:   pruebaUART
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/PruebaUART/testUart.v
// Project Name:  PruebaUART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pruebaUART
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testUart;

	// Inputs
	reg CLK;
	reg RESET;
	reg RX;

	// Outputs
	wire TX;
	wire [7:0] LEDS;

	// Instantiate the Unit Under Test (UUT)
	pruebaUART uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.RX(RX), 
		.TX(TX), 
		.LEDS(LEDS)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		RX = 1;

		// Wait 100 ns for global reset to finish
		#100;
		RESET=0;
		#100
		RX=0;			//bit de inicio
		
		
		#95226
		RX = 1;
		#95226 
		RX = 0;
		#95226 
		RX = 1;
		#95226 
		RX = 0;
		#95226 
		RX = 1;
		#95226 
		RX = 0;
		#95226 
		RX = 1;
		#95226 
		RX = 0;
		
		#95226 
		RX = 1;

        
		// Add stimulus here

	end
	
		always	begin
	#1
	CLK=~CLK;
	end
      
endmodule

