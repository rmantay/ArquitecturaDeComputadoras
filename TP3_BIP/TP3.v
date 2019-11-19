`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:52 11/13/2019 
// Design Name: 
// Module Name:    TP3 
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
module TP3(
		input CLK,
		input RESET,
		output wire TX
    );

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






endmodule
