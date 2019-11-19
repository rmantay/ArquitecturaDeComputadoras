`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:57:48 11/15/2019
// Design Name:   BIP_I
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/TestTP3.v
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

module TestTP3;

	// Inputs
	reg CLK;
	reg RESET;
	
	wire TX;
    

wire [15:0] acc;
wire wr;

BIP_I bip (
    .CLK(CLK), 
    .RESET(RESET), 
    .ACC_OUT(acc),
	 .WR_FIFO(wr)
    );
	 
Interface interfaz (
    .CLK(CLK), 
    .RESET(RESET), 
    .DATA_IN(acc), 
    .WR(wr), 
    .TX(TX)
    );




	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		RESET = 1;
   	#100;
		
		RESET = 0;     
		// Add stimulus here

	end
	
	always
	begin
	#1 CLK = ~CLK;
	end
      
endmodule

