`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:06 10/21/2019 
// Design Name: 
// Module Name:    pruebaUART 
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
module pruebaUART(
		input CLK,
		input RESET,
		input RX,
		output TX,
		output [7:0] LEDS
    );
	 
/*	 wire rx_fifo_empty, tx_fifo_full , fin_enviar, w_fifo_uart , r_fifo_uart;
	 wire [7:0] r_data_in, data_switch_out, w_data_fifo, led_dato_alu;
	 wire [2:0] sel_bot;
	 reg [7:0] leds, leds_next;
	 reg [2:0] state_rx;

	
	assign LEDS = leds;*/
	
	wire [7:0] rw_data;
	wire rx_empty;
	reg [7:0] leds;
	 
	 
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
	.CLK(CLK), .RESET(RESET), .rd_uart(~rx_empty), .wr_uart(~rx_empty), .w_data(rw_data), .rx(RX),
	.rx_empty(rx_empty), .tx_full(), .r_data(rw_data) , .tx(TX)
);

	 
always @(negedge rx_empty)
begin
	leds=rw_data;
end

assign LEDS = leds;

endmodule
