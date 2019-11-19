`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:07:56 09/14/2019 
// Design Name: 
// Module Name:    Rx 
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
module Rx
		#(parameter N_BIT = 8,
					  N_TICK = 16)
		(
    input wire CLK,
    input wire RESET,
    input wire TICK,
    input wire RX,
    output reg RX_DONE,
    output wire [N_BIT-1:0] DOUT,
	 output wire [1:0] STATE
    );
	 
	 localparam [1:0]
	 idle  = 2'b00,
	 start = 2'b01,
	 data  = 2'b10,
	 stop  = 2'b11;
	 
	 reg [1:0] state, state_next;		// Estado
	 reg [3:0] s, s_next;				//Contador de Ticks
	 reg [2:0] n, n_next;				//Bit de posicion
	 reg [7:0] b, b_next;				//Bit recibido
	 
	 always @(posedge CLK, posedge RESET) begin
		if(RESET) begin
			state <= idle;
			s <= 0;
			n <= 0;
			b <= 0;
		end
		else begin
			state <= state_next;
			s <= s_next;
			n <= n_next;
			b <= b_next;
		end
	 end
	 
	 always @(*) begin
		state_next = state;
		RX_DONE = 1'b0;
		s_next = s;
		n_next = n;
		b_next = b;
		
		case(state)
			idle:
				if(RX==0) begin
					state_next = start;
					s_next = 0;
				end
			
			start:
				if(TICK) 
					if(s==7) begin		//7
						state_next = data;
						s_next = 0;
						n_next = 0;
					end
					else begin
						s_next = s + 1;
						end
			
			data:
				if(TICK)
				begin
					if(s==15) begin		//15
						s_next = 0;
						b_next = {RX , b[7:1]};		//7
						if(n==7) begin
							state_next = stop;
						end
						else begin
							n_next = n + 1;
						end
					end
					else begin
						s_next = s+1;
					end
				end
		
			stop:
				if(TICK)
					if(s==15) 		//15
					begin
						state_next = idle;
						RX_DONE = 1'b1;
					end
					else
						s_next = s+1;			
		endcase								
	 end
	 
	 assign DOUT = b;
	 assign STATE = state;

endmodule
