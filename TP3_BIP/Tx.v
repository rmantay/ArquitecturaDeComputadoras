`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:24 09/16/2019 
// Design Name: 
// Module Name:    Tx 
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
module Tx
#(parameter N_BIT = 8,
		    	N_TICK = 16)
		(
    input wire CLK,
    input wire RESET,
    input wire TICK,
	 input wire TX_START,
    input wire [N_BIT-1:0] DIN,
	 output reg TX_DONE,
	 output wire TX,
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
	 
	 reg tx_reg, tx_next;
	 
	 always @(posedge CLK, posedge RESET) begin
		if(RESET) begin
			state <= idle;
			s <= 0;
			n <= 0;
			b <= 0;
			tx_reg <= 1'b1;
		end
		else begin
			state <= state_next;
			s <= s_next;
			n <= n_next;
			b <= b_next;
			tx_reg<=tx_next;
		end
	 end
	 
	 always @(*) begin
		state_next = state;
		TX_DONE = 1'b0;
		s_next = s;
		n_next = n;
		b_next = b;
		tx_next = tx_reg;
		
		case(state)
			idle:
				begin
					tx_next = 1'b1;
					if(TX_START) begin
						state_next = start;
						s_next = 0;
						b_next = DIN;
					end
				end
			
			start:
				begin
					tx_next=1'b0;
					if(TICK) 
						if(s==15) begin		//15
							state_next = data;
							s_next = 0;
							n_next = 0;
						end
						else begin
							s_next = s + 1;
						end
				end
			
			data:
				begin
					tx_next = b[0];
					if(TICK)
						if(s==15) begin		//15
							s_next = 0;
							b_next = b>>1;		
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
				begin
				tx_next = 1'b1;
					if(TICK)
						if(s==15) 		//15
						begin
							state_next = idle;
							TX_DONE = 1'b1;
						end
						else
							s_next = s+1;
				end
		endcase								
	 end
	 
	 assign TX = tx_reg;
	 assign STATE = state;
endmodule
