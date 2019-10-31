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
	input wire rx, 
	input wire BOTON_START,
	input wire [7:0] SWITCH,
	output wire tx,
	output reg [7:0] DOUT,
	output wire [7:0] SEG
    );
	 
	 wire TICK;
	 reg tx_start=0;
	 wire [N_BIT-1:0] rx_data_out, state_rx,state_tx;
	 
	 reg [7:0] palabra;
//	 assign DOUT = rx_data_out;
	 
	 always @(BOTON_START) begin
	 if(BOTON_START) begin
		palabra = SWITCH; 
		DOUT = palabra;
		end
	 end
	 
	 assign SEG = ~(2**state_tx);
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
		.CLK(CLK), .RESET(RESET), .TICK(TICK), .RX(rx), 
		.RX_DONE(rx_done), .DOUT(rx_data_out), .STATE(state_rx)
	);
	
	////////////////////////////////////////////////////////////////////////////////////
	

	///////////////////////////////////////////////////////////////////////////////////////
	
	Tx
	#( .N_BIT(N_BIT) , .N_TICK(N_TICK) )
	uart_tx
	(
		.CLK(CLK), .RESET(RESET), .TICK(TICK), .TX_START(BOTON_START), .DIN(palabra),
		.TX_DONE(tx_done) , .TX(tx), .STATE(state_tx)
	);
	
	///////////////////////////////////////////////////////////////////////////////////////

	
	////////////////////////////////////////////////////////////////////////////////////////
	
	
	


endmodule
