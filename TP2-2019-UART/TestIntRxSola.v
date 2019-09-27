`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:36:14 09/26/2019
// Design Name:   Int_Rx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestIntRxSola.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Int_Rx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestIntRxSola;

	// Inputs
	reg CLK;
	reg RESET;
	reg FIFO_empty;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] data_out;
	wire [2:0] SEL;
	wire RD_FIFO;
	wire [2:0] STATE;
	wire [7:0] DATOA;
	wire [7:0] DATOB;
	wire [7:0] OP;
	wire [7:0] CH;
	wire [7:0] RESULTADO;

	// Instantiate the Unit Under Test (UUT)
	Int_Rx uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.FIFO_empty(FIFO_empty), 
		.data_in(data_in), 
		
		.data_out(data_out), 
		.SEL(SEL), 
		.RD_FIFO(RD_FIFO), 
		.STATE(STATE), 
		.DATOA(DATOA), 
		.DATOB(DATOB), 
		.OP(OP), 
		.CH(CH)
	);
	
		ALU_HANDLER ALU1
	(
		.CLK(CLK), .RESET(RESET), .SWITCH(data_out), .BOT(SEL),
		.LED(RESULTADO)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		FIFO_empty = 1;
		data_in = 0;

		#5
		RESET =0;
		// Wait 100 ns for global reset to finish
		#100;
		
		#30
		data_in = 55;
		#10
		FIFO_empty = 0;
		#2
		FIFO_empty = 1;
		
				#30
		data_in = 53;
		#10
		FIFO_empty = 0;
		#2
		FIFO_empty = 1;
		
				#30
		data_in = 45;
		#10
		FIFO_empty = 0;
		#2
		FIFO_empty = 1;
		
				#30
		data_in = 51;
		#10
		FIFO_empty = 0;
		#2
		FIFO_empty = 1;
		
						#30
		data_in = 13;
		#10
		FIFO_empty = 0;
		#2
		FIFO_empty = 1;
		
		
		
        
		// Add stimulus here

	end
      
		always begin
		#1 CLK = ~CLK;
		end
		
endmodule

