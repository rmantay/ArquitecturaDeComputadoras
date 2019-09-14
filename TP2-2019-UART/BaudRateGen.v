`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:36:11 09/14/2019 
// Design Name: 
// Module Name:    BaudRateGen 
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
module BaudRateGen
	#(
		parameter N=8,
					 M=163
	)
	(
    input CLK,
    input RESET,
    output TICK,
    output [N-1:0] Q
    );
	 
	 reg[N-1:0] contador = 0;
	 reg ti = 0;
	 
	 always @(posedge CLK, posedge RESET)
	 begin
		if(RESET)
			contador <= 0;
		else if(CLK)
			begin
				if(contador==163) begin
					ti = 1;
					contador = 0;
				end
				else begin
				 ti=0;
				 contador = contador+1;
				 end
			end
			
	 end
	 
	 assign TICK = ti;
	 assign Q = contador;


endmodule
