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
		output [2:0] STATE,
		output [7:0] AUX, I, J
    );
	 
localparam[1:0]
idle=2'b00,
dividir=2'b01,
convertir=2'b10,
guardar=2'b11;

reg [2:0] state, state_next;
reg [7:0] valor, valor_next;
reg [7:0] aux, aux_next, i, j;
reg flag=0;

assign AUX=aux;
assign I=i;
assign J=j;

assign STATE = state;

always @(posedge CLK, posedge RESET)
begin
	if(RESET) begin
		state<=idle;
		valor<=0;
		aux<=0;
	
		
		end
	else
		begin
			state<=state_next;
			valor<=valor_next;
			aux<=aux_next;
			
			end
end

always @(*)
begin
	WR_FIFO=0;
	state_next=state;
	valor_next=valor;
	aux_next=aux;
	
	case(state)
		idle:
			if(enviar)
			begin
				state_next=dividir;
				aux_next=DATO_ALU;
				flag=0;
				i=0;
				j=0;
				//AGREGAR LOGICA PARA MANDAR VARIOS DIGITOS
			end
			else
				state_next=idle;
				
		dividir:
			begin
				if(aux>=100) 
					begin
						aux_next = aux - 100;
						i=i+1;
					end					
				else if (aux>=10)
					begin
						aux_next= aux-10;
						j=j+1;
					end
				else begin
						flag= 1;
						end
								
				if(flag)
					state_next=convertir;
					else
					state_next=dividir;
			end
					
				
		convertir:
			begin
				if(i>0) 
				begin
					data_fifo = i + 48;
					WR_FIFO=1;
					i=0;
				end
				else if (j>0)
				begin
					data_fifo = j + 48;
					WR_FIFO=1;
					j=0;
				end 
				else 
				begin
					data_fifo = aux + 48;
					WR_FIFO=1;
					flag=0;
					//state_next=idle;
				end						
			end			
		endcase
		
end
endmodule
