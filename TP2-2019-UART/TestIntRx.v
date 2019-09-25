`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:02:32 09/25/2019
// Design Name:   Int_Rx
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestIntRx.v
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

module TestIntRx;

	// Inputs
	reg CLK;
	reg RESET;
	
	wire FIFO_empty;
	wire [7:0] data_in;
	
	//Para llenar la Fifo
	reg wr_fifo, full;
	reg [7:0] palabra;

	// Outputs
	wire [7:0] data_out;
	wire [2:0] SEL ,STATE;
	wire RD_FIFO;
	
	wire [7:0] RESULTADO, DATOA,DATOB,OP,CH;
	
	

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
		.CH(CH),
		.DATOA(DATOA),
		.DATOB(DATOB),
		.OP(OP)
	);
	
	FIFO
	#(
	.B(8),
	.W(4)
)
	fifo(
		.CLK(CLK), .RESET(RESET), .wr(wr_fifo) , .rd(RD_FIFO), .w_data(palabra),
		.empty(FIFO_empty) , .full(full) , .r_data(data_in)
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
		wr_fifo = 0;
		palabra = 0;
		#5 
		RESET = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		palabra = 8'b00110111;		//7
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10

		palabra = 8'b00101011;		//+
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10		
      
		palabra = 8'b00110011;		//3
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10		
		
		palabra = 8'b00001101;
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
			
      
        
		// Add stimulus here

	end
	
	always begin
		#1 CLK = ~CLK;
		end
      
endmodule

