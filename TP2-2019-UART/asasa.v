`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:40 09/26/2019
// Design Name:   FIFO
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/asasa.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module asasa;

	// Inputs
	reg CLK;
	reg RESET;
	reg wr;
	reg rd;
	reg [7:0] w_data;

	// Outputs
	wire empty;
	wire full;
	wire [7:0] r_data;

	// Instantiate the Unit Under Test (UUT)
	FIFO uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.wr(wr), 
		.rd(rd), 
		.w_data(w_data), 
		.empty(empty), 
		.full(full), 
		.r_data(r_data)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;
		wr = 0;
		rd = 0;
		w_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

