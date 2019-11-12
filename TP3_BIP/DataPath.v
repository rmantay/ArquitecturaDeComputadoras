`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:46 11/11/2019 
// Design Name: 
// Module Name:    DataPath 
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
module DataPath(
		input CLK,
		input RESET,
		input [10:0] OPERAND_IN,
		input [15:0] DM_IN,
		input [1:0] SEL_A,
		input SEL_B,
		input WR_ACC,
		input OP,
		
		output reg [15:0] ACC,
		output [10:0] OPERAND_OUT
    );

	wire [15:0] signal_extension;
	wire [15:0] out_mux1;
	wire [15:0] out_mux2;
	reg  [15:0] acc_out;
	wire [15:0] alu_out;
	
	assign signal_extension = {5'b00000, OPERAND_IN};
	
	always @(posedge CLK, posedge RESET)
		begin
			if(RESET)
				begin
					ACC<= 0;
				end
			else
				begin
					ACC <= acc_out;
				end
		end
	
	Mux1 mux1 (
    .A(signal_extension), 
    .B(DM_IN), 
    .sel(SEL_B), 
    .OUT(out_mux1)
    );

	Mux2 mux2 (
    .A(DM_IN), 
    .B(signal_extension), 
    .C(alu_out), 
    .sel(SEL_A), 
    .OUT(out_mux2)
    );
	 
	 ALU alu2 (
    .A(acc_out), 
    .B(out_mux1), 
    .O(OP), 
    .Z(alu_out)
    );

	always @(*)
	begin
		acc_out = ACC;
		if(WR_ACC)
			acc_out = out_mux2;
	end
	
	assign OPERAND_OUT = OPERAND_IN;

endmodule
