`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:57 11/12/2019 
// Design Name: 
// Module Name:    Interface 
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
module Interface(
		input CLK,
		input RESET,
		input [15:0] DATA_IN,
		input WR,
		
		output TX
		
    );
	 
	 wire rd_fifo_in;
	 wire [15:0] data_int;
	 wire fifo_empty;
	 wire [15:0] data_fifo;

FIFO fifo_interfaz (
    .CLK(CLK), 
    .RESET(RESET), 
    .wr(WR),
	 .w_data(DATA_IN),	 
    .empty(fifo_empty),
	 .rd(rd_fifo_in),      
    .r_data(data_int)
    );
	 
	 wire wr_fifo_out;
	 
Int_Tx divisor (
    .CLK(CLK), 
    .RESET(RESET), 
    .enviar(~fifo_empty), 
    .DATO_ALU(data_int),
	 
    .WR_FIFO_OUT(wr_fifo_out), 
	 .RD_FIFO_IN(rd_fifo_in),
    .data_fifo(data_fifo)
    );
	 
	 UART uart (
    .CLK(CLK), 
    .RESET(RESET),  
    .wr_uart(wr_fifo_out),  
    .w_data(data_fifo),   
    .tx(TX),  
    .DOUT(DOUT)
    );


endmodule
