`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:06 09/27/2019 
// Design Name: 
// Module Name:    ProgramaTP2 
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
module ProgramaTP2(
		input CLK,
		input RESET,
		input RX,
		output TX,
		output [7:0] LEDS,
		output [7:0] STATE
    );
	 
	 wire rx_fifo_empty, tx_fifo_full , fin_enviar, w_fifo_uart , r_fifo_uart;
	 wire [7:0] r_data_in, data_switch_out, w_data_fifo, led_dato_alu;
	 wire [2:0] sel_bot;
	 reg [7:0] leds = 0;
	 reg [7:0] leds_next= 0;	 
	 wire [7:0] DOUT;

	 reg [2:0] state_rx;
	 wire [2:0] state;
	 
	 always @(state)
	 begin
		state_rx = state;
		end

	
	assign LEDS = 2**(state);
	
//	assign STATE = ~(2**(state_rx));
	assign STATE =  DOUT;
	
//	always @(posedge RX)
//	begin
//		leds_next = leds + 1;
//	end
	
//	always @(posedge CLK, posedge RESET)
//	begin
//	if(RESET) begin
//		leds <= 0;
//	end else
//	begin
//		leds <= leds_next;
//	end
//	end
	
UART
#(
			 .N_BIT(8),
			 .N_TICK(16),
			 .DVSR(163),
			 .DVSR_BIT(8),
			 .FIFO_W(4)
)
uart
(
	.CLK(CLK), .RESET(RESET), .rd_uart(r_fifo_uart), .wr_uart(w_fifo_uart), .w_data(w_data_fifo), .rx(RX),
	.rx_empty(rx_fifo_empty), .tx_full(tx_fifo_full), .r_data(r_data_in) , .tx(TX), .DOUT( DOUT)
);

Int_Rx
#(
	.NBIT(8)
)
intRx
(
	.CLK(CLK), .RESET(RESET), .FIFO_empty(rx_fifo_empty) , .data_in(r_data_in),
	.SEL(sel_bot), .data_out(data_switch_out), .RD_FIFO(r_fifo_uart), .FIN(fin_enviar), .STATE(state)
);

ALU_HANDLER alu
(
	.CLK(CLK), .RESET(RESET), .SWITCH(data_switch_out), .BOT(sel_bot),
	.LED(led_dato_alu)
);

Int_Tx
#(
	.NBIT(8)
) intTx
(
	.CLK(CLK), .RESET(RESET), .DATO_ALU(led_dato_alu), .enviar(fin_enviar), .fifo_full(tx_fifo_full),
	.data_fifo(w_data_fifo), .WR_FIFO(w_fifo_uart)
);


endmodule
