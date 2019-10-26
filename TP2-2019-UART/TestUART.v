`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:28 09/18/2019
// Design Name:   UART
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestUART.v
// Project Name:  TP2-2019-UART
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

module TestUART;

	// Inputs
	reg CLK;
	reg RESET;
	reg rd_uart;
	reg wr_uart;
	reg RX;
	reg [7:0] w_data;

	// Outputs
	wire tx_full;
	wire rx_empty;
	wire tx;
	wire [7:0] r_data;

	// Instantiate the Unit Under Test (UUT)
	UART uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.rd_uart(rd_uart), 
		.wr_uart(wr_uart), 
		.rx(RX), 
		.w_data(w_data), 
		.tx_full(tx_full), 
		.rx_empty(rx_empty), 
		.tx(tx), 
		.r_data(r_data)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		rd_uart = 0;
		wr_uart = 0;
		RX = 1;
		w_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RESET=0;
		
		w_data = 8'b01010101;
		#1
		wr_uart = 1;
		#2
		wr_uart = 0;
		
				#100;
		RX=0;			//bit de inicio
		
		
		#52260
		RX = 1;
		#52260
		RX = 0;
		#52260 
		RX = 1;
		#52260 
		RX = 0;
		#52260 
		RX = 1;
		#52260 
		RX = 0;
		#52260 
		RX = 1;
		#52260 
		RX = 0;
		
		#52260 
		RX = 1;
		
		
		
		#52260
		RX=0;			//bit de inicio
		
		
		#52260
		RX = 1;
		#52260 
		RX = 1;
		#52260 
		RX = 1;
		#52260 
		RX = 1;
		#52260 
		RX = 1;
		#52260 
		RX = 0;
		#52260 
		RX = 1;
		#52260 
		RX = 0;
		
		#52260 
		RX = 1;
		
		#100000
		rd_uart =1;
		#2
		rd_uart = 0;
		
		
		#52260
		
		w_data = 8'b01010101;
		#20
		wr_uart = 1;
		#20
		wr_uart = 0;
        
		// Add stimulus here

	end
	
	always	begin
	#10
	CLK=~CLK;
	end
      
endmodule

