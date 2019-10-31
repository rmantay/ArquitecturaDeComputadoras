`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:27:58 09/18/2019 
// Design Name: 
// Module Name:    UART 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module UART
#(
parameter N_BIT = 8,
			 N_TICK = 16,
			 DVSR = 163,
			 DVSR_BIT = 8,
			 FIFO_W = 4
)(
	input wire CLK,
	input wire RESET,
	input wire rd_uart, wr_uart, rx,
	input wire [N_BIT-1:0] w_data,
	output wire tx_full, rx_empty, tx,
	output wire [N_BIT-1:0] r_data,
	output wire [7:0] DOUT
    );
	 
	 wire tick, rx_done, tx_done;
	 wire tx_empty, tx_fifo_not_empty;
	 wire [N_BIT-1:0] tx_fifo_out, rx_data_out;
	 
	 assign DOUT = rx_data_out;
	 
	////////////////////////////////////////////////////////////////////////////////////
	
	BaudRateGen
	#(.N(DVSR_BIT), .M(DVSR))
	brg
	(
		.CLK(CLK) , .RESET(RESET), .TICK(TICK), .Q()
	);
	
	////////////////////////////////////////////////////////////////////////////////////
	
	Rx
	#( .N_BIT(N_BIT) , .N_TICK(N_TICK) )
	uart_rx
	(
		.CLK(CLK), .RESET(RESET), .TICK(TICK), .RX(rx), .RX_DONE(rx_done), .DOUT(rx_data_out), .STATE()
	);
	
	////////////////////////////////////////////////////////////////////////////////////
	
	FIFO
	#(
		.B(N_BIT), .W(FIFO_W)
	) fifo_rx
	(
		.CLK(CLK), .RESET(RESET), .wr(rx_done), .rd(rd_uart) , .w_data(rx_data_out), 
		.empty(rx_empty) , .full(), .r_data(r_data)
	);

	///////////////////////////////////////////////////////////////////////////////////////
	
	Tx
	#( .N_BIT(N_BIT) , .N_TICK(N_TICK) )
	uart_tx
	(
		.CLK(CLK), .RESET(RESET), .TICK(TICK), .TX_START(tx_fifo_not_empty), .DIN(tx_fifo_out),
		.TX_DONE(tx_done) , .TX(tx), .STATE()
	);
	
	///////////////////////////////////////////////////////////////////////////////////////
	
	FIFO
	#(
		.B(N_BIT), .W(FIFO_W)
	) fifo_tx
	(
		.CLK(CLK), .RESET(RESET), .wr(wr_uart), .rd(tx_done) , .w_data(w_data), 
		.empty(tx_empty) , .full(tx_full), .r_data(tx_fifo_out)
	);
	
	////////////////////////////////////////////////////////////////////////////////////////
	
	assign tx_fifo_not_empty = ~tx_empty;
	
	


endmodule
