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
		output wire TX,
		output [7:0] LEDS
    );

wire [15:0] acc;
wire wr;

wire [10:0] led;

assign LEDS = led[7:0];

BIP_I bip (
    .CLK(CLK), 
    .RESET(RESET), 
    .ACC_OUT(acc),
	 .WR_FIFO(wr),
	 .pc(led)
    );
	 
Interface interfaz (
    .CLK(CLK), 
    .RESET(RESET), 
    .DATA_IN(acc), 
    .WR(wr), 
    .TX(TX)
    );






endmodule
