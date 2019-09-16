`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:44:42 09/16/2019
// Design Name:   Tx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestTx.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestTx;

	// Inputs
	reg CLK;
	reg RESET;
	reg TX_START;
	reg [7:0] DIN;

	// Outputs
	wire TX_DONE;
	wire TX;
	wire [1:0] STATE;

	// Instantiate the Unit Under Test (UUT)
	Tx uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.TICK(TICK), 
		.TX_START(TX_START), 
		.DIN(DIN), 
		.TX_DONE(TX_DONE), 
		.TX(TX), 
		.STATE(STATE)
	);
	
		BaudRateGen  
	#(
		.N(8),
		.M(163)
	)
	brg
	(
		.CLK(CLK),
		.RESET(RESET),
		.TICK(TICK)

	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		TX_START = 0;
		
		#10 
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
		DIN= 8'b01010101;			//bit de inicio
		
		#2
		TX_START =1;
		#2
		TX_START = 0;
		
		
        
		// Add stimulus here
	end
	
	always begin
	#1 CLK<=~CLK;
	end
      
endmodule

