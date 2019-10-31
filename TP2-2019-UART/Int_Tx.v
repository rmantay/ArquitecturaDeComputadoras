`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:24 09/26/2019 
// Design Name: 
// Module Name:    Int_Tx 
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
module Int_Tx
#(parameter 	NBIT = 8
)
(
		input CLK, RESET, enviar, fifo_full,
		input [7:0] DATO_ALU,
		output reg WR_FIFO, 
		output reg [7:0] data_fifo,
		output [2:0] STATE
    );
	 
localparam[1:0]
idle=2'b00,
convertir=2'b01,
guardar=2'b10;

reg [2:0] state, state_next;
reg [7:0] valor, valor_next;

assign STATE = state;

always @(posedge CLK, posedge RESET)
begin
	if(RESET) begin
		state<=idle;
		valor<=0;
		end
	else
		begin
			state<=state_next;
			valor<=valor_next;
			end
end

always @(*)
begin
	WR_FIFO=0;
	state_next=state;
	valor_next=valor;
	
	case(state)
		idle:
			if(enviar)
			begin
				state_next=convertir;
				valor_next=DATO_ALU;
			end
			else
				state_next=idle;
				
		convertir:
			begin
				valor_next= valor+48;
				state_next=guardar;
			end
			
		guardar:
			if(fifo_full)
				state_next=guardar;
			else
				begin
					data_fifo = valor;
					WR_FIFO=1;
					state_next=idle;
				end
				
		endcase
		
end

	
	 


endmodule
