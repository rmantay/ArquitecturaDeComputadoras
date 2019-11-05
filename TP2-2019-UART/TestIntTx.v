`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:42 09/26/2019
// Design Name:   Int_Tx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestIntTx.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Int_Tx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestIntTx;

	// Inputs
	reg CLK;
	reg RESET;
	reg enviar;
	reg fifo_full;
	reg [7:0] DATO_ALU;

	// Outputs
	reg WR_FIFO;
	wire [7:0] data_fifo, aux,i,j;
	wire [2:0] state;

	// Instantiate the Unit Under Test (UUT)
	Int_Tx uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.enviar(enviar), 
		.fifo_full(fifo_full), 
		.DATO_ALU(DATO_ALU), 
		.WR_FIFO(WR_FIFO), 
		.data_fifo(data_fifo),
		.STATE(state),
		.AUX(aux), .I(i),.J(j)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		enviar = 0;
		fifo_full = 0;
		DATO_ALU = 0;
		
		#5
		RESET=0;
		// Wait 100 ns for global reset to finish
		#100;
		
		DATO_ALU=55;
		enviar=1;
		#20
		enviar=0;
		
		
        
		// Add stimulus here

	end
	
	always begin
	#1 CLK=~CLK;
	end
      
endmodule

