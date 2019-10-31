`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:02 09/23/2019 
// Design Name: 
// Module Name:    Int_Rx 
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
module Int_Rx
#(parameter 	NBIT = 8
)

(	input CLK, RESET,
	input FIFO_empty,
	input [7:0]	data_in,
	output [7:0]	data_out,
	output [2:0] SEL,
	output reg RD_FIFO, FIN,	
	output [2:0] STATE, 
	output [7:0] DATOA, DATOB, OP, CH
    );
localparam [2:0]
idle= 3'b000,
dato_A=3'b001,
operacion=3'b010,
dato_B= 3'b011,
resultado = 3'b100,
envio = 3'b101;
localparam[7:0]
suma=8'b00100000,
srl=8'b00100001,
resta=8'b00100010,
sra=8'b00100011,
and1=8'b00100100,
or2=8'b00100101,
xor3=8'b00100110,
nor4=8'b00100111;


reg [2:0] state, state_next;
reg [7:0] datoA, datoA_next;
reg [7:0] op, op_next;
reg [7:0] datoB, datoB_next;
reg [7:0] d_out, d_out_next;
reg [7:0] ch;


reg [2:0] select, select_next;


assign data_out= d_out;
assign SEL=select;

assign STATE = state;
assign CH = ch;
assign DATOA = datoA;
assign DATOB = datoB;
assign OP = op;

always @(posedge CLK, posedge RESET)
	if(RESET) begin
	state <= idle;
	datoA <= 0;
	op<= suma;
	datoB <= 0;
	d_out<=0;
	select <=0;
	end
	else begin
	state<= state_next;
	datoA<= datoA_next;
	op<= op_next;
	datoB<= datoB_next;

	d_out<= d_out_next;
	select <=select_next;
	end




always @(*)
	begin
		state_next =state;
		datoA_next = datoA;
		op_next=op;
		datoB_next=datoB;
		RD_FIFO = 0;
		FIN = 0;
		d_out_next=d_out;
		select_next = select;
		case(state)
			idle:
			if(FIFO_empty)
			state_next=idle;
			else begin
			ch = data_in;
			RD_FIFO=1'b1;
			ch=ch-48;
			if(ch>=0&&ch<=9)
			begin
			state_next=dato_A;
			datoA_next=ch;
			ch = 0;
			end
			else
			state_next=idle;
			end
			
			
			dato_A:
			if(FIFO_empty)
				state_next = dato_A;
			else begin
			ch = data_in;
			RD_FIFO=1'b1;
			
			case(ch)
			38:
			begin
			op_next=and1;
			state_next=operacion;
			end
			43:
			begin
			op_next=suma;
			state_next=operacion;
			end
			45:
			begin
			op_next=resta;
			state_next=operacion;
			end
			62:
			begin
			op_next=srl;
			state_next=operacion;
			end
			63:
			begin
			op_next=sra;
			state_next=operacion;
			end
			94:
			begin
			op_next=or2;
			state_next=operacion;
			end
			120:
			begin
			op_next=xor3;
			state_next=operacion;
			end
			126:
			begin
			op_next=nor4;
			state_next=operacion;
			end
			default:
			begin
			ch=ch-48;
			if(ch>=0&&ch<=9)
			begin
			state_next=dato_A;
			datoA_next =(10*datoA)+ ch ;
			ch = 0;
			end
			end
			endcase
			if(state_next==operacion)
			begin
			d_out_next=datoA;
			select_next=3'b001;			
			end
			end
		
			operacion:
			if(FIFO_empty)
			state_next =operacion;
			else begin
			ch = data_in;
			RD_FIFO=1'b1;
			ch=ch-48;
			if(ch>=0&&ch<=9)
			begin
			state_next=dato_B;
			datoB_next = ch;
			ch = 0;
			d_out_next = op;
			select_next=3'b100;
			end
			else
			state_next=operacion;
			end
			
			
			dato_B:
			if(FIFO_empty)
			state_next =dato_B;
			else begin
			ch=data_in;
			RD_FIFO=1'b1;
				if(ch==61)
					begin
						d_out_next=datoB;
						select_next=3'b010;
						state_next=resultado;
						ch = 0;
					end
				else begin
				ch=ch-48;
					if(ch>=0&&ch<=9)
						begin
							state_next=dato_B;
							datoB_next =(10*datoB)+ ch ;
							ch = 0;
						end
			
			else
			begin
				state_next=dato_B;
				end
			end
			end
			
			resultado:
				begin
						state_next=envio;
					end
					
			envio:
				begin
					FIN=1;
					state_next = idle;
				end
		endcase	
	end

endmodule
