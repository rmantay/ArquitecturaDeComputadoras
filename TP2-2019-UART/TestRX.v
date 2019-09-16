`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:43:30 09/14/2019
// Design Name:   Rx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestRX.v
// Project Name:  TP2-2019-UART
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

module TestRX;

	// Inputs
	reg CLK;
	reg RESET;
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
		RX = 1;
		
		#10 
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
        
		// Add stimulus here
	end
	
	always @(*) begin
	#1 CLK<=~CLK;
	end
	
	
      
endmodule

