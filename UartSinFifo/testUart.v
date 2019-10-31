`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:44 10/30/2019
// Design Name:   UART
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/UartSinFifo/testUart.v
// Project Name:  UartSinFifo
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UART
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
	reg rx;
	reg BOTON_START;
	reg [7:0] SWITCH;
	wire [7:0] state_rx;

	// Outputs
	wire tx;
	wire [7:0] DOUT;

	// Instantiate the Unit Under Test (UUT)
	UART uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.rx(rx), 
		.BOTON_START(BOTON_START), 
		.SWITCH(SWITCH), 
		.tx(tx), 
		.DOUT(DOUT),
		.SEG(state_rx)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		rx = 1;
		BOTON_START = 0;
		SWITCH = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET =0;
		
		#100
		
		SWITCH = 53;
		#20
		BOTON_START = 1;
		#20
      BOTON_START = 0;
		// Add stimulus here

	end
      
		
	always begin
		#10 CLK=~CLK;
		end
endmodule

