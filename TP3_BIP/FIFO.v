`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:12 09/16/2019 
// Design Name: 
// Module Name:    FIFO 
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
module FIFO
#(
parameter
	B = 8,
	W = 5
)
(
    input wire CLK, RESET,
	 input wire wr, rd,
	 input wire [B-1:0] w_data,
	 output wire empty, full,
	 output wire [B-1:0] r_data	 
);

	reg [B-1:0] cola_circular [2**W-1:0];
	reg [W-1:0] w_ptr_reg, w_ptr_next, w_ptr_succ;
	reg [W-1:0] r_ptr_reg, r_ptr_next, r_ptr_succ;
	reg full_reg, empty_reg, full_next, empty_next;
	
	wire wr_en;
	
	always @(negedge CLK)
	if (wr_en)
		cola_circular[w_ptr_reg] <= w_data;
	
	assign r_data = cola_circular[r_ptr_reg];
	
	assign wr_en = wr & ~full_reg;

	always @(negedge CLK, posedge RESET)
	begin
		if(RESET)
		begin
			w_ptr_reg <= 0;
			r_ptr_reg <= 0;
			full_reg <= 0;
			empty_reg <= 1;
		end
		else
		begin
			w_ptr_reg <= w_ptr_next;
			r_ptr_reg <= r_ptr_next;
			full_reg <= full_next;
			empty_reg <= empty_next;
		end
	end
	
	always @(*)
	begin
		w_ptr_succ = w_ptr_reg + 1;
		r_ptr_succ = r_ptr_reg + 1;
		w_ptr_next = w_ptr_reg;
		r_ptr_next = r_ptr_reg;
		full_next = full_reg;
		empty_next = empty_reg;
		
		case({wr,rd})
			2'b01:				//Read
				if(~empty_reg)
					begin
					r_ptr_next = r_ptr_succ;
					full_next = 1'b0;
					if(r_ptr_succ== w_ptr_reg)
						empty_next = 1'b1;
					end
			
			2'b10:
				if(~full_reg)
					begin
					w_ptr_next = w_ptr_succ;
					empty_next = 1'b0;
					if(w_ptr_succ == r_ptr_reg)
						full_next = 1'b1;
					end
					
			2'b11:
				begin
				w_ptr_next = w_ptr_succ;
				r_ptr_next = r_ptr_succ;
				end
		endcase
	end
	 
	assign full = full_reg;
	assign empty = empty_reg;

endmodule
