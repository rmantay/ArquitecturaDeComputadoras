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

module TestInterfacesCompleto;

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
	wire RD_FIFO, FIN, fifo_tx_full;
	wire WR_FIFO_TX;
	wire [7:0] RESULTADO, DATOA,DATOB,OP,CH , DATA_INT_TX, DATO_FIFO_TX;
	
	
	

	// Instantiate the Unit Under Test (UUT)
	Int_Rx uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.FIFO_empty(FIFO_empty), 
		.data_in(data_in), 
		.data_out(data_out), 
		.SEL(SEL), 
		.RD_FIFO(RD_FIFO),
		.FIN(FIN),
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
	fifo_rx(
		.CLK(CLK), .RESET(RESET), .wr(wr_fifo) , .rd(RD_FIFO), .w_data(palabra),
		.empty(FIFO_empty) , .full(full) , .r_data(data_in)
	);
	
		FIFO
	#(
	.B(8),
	.W(4)
)
	fifo_tx(
		.CLK(CLK), .RESET(RESET), .wr(WR_FIFO_TX) , .rd(), .w_data(DATA_INT_TX),
		.empty() , .full(fifo_tx_full) , .r_data(DATO_FIFO_TX)
	);
	
	
	ALU_HANDLER ALU1
	(
		.CLK(CLK), .RESET(RESET), .SWITCH(data_out), .BOT(SEL),
		.LED(RESULTADO)
	);
	
	Int_Tx intTx
	(
		.CLK(CLK), .RESET(RESET), .enviar(FIN), .fifo_full(fifo_tx_full), .DATO_ALU(RESULTADO),
		.WR_FIFO(WR_FIFO_TX) , .data_fifo(DATA_INT_TX)
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
		
		palabra = 8'b00110001;		//1
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10
		
				palabra = 8'b00110111;		//7
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10
				palabra = 8'b00110000;		//0
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10

		palabra = 38;		//and
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10		
      
		palabra = 8'b00110001;		//1
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10	

		palabra = 8'b00110101;		//5
		#2
		wr_fifo=1;
		#2
		wr_fifo=0;
		#10		
		
		palabra = 8'b00001101;		//ENTER
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

