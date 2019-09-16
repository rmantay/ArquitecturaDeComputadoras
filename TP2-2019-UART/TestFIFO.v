`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:10:05 09/16/2019
// Design Name:   FIFO
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/TestFIFO.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestFIFO;

	// Inputs
	reg CLK;
	reg RESET;
	reg wr;
	reg rd;
	reg [7:0] w_data;

	// Outputs
	wire empty;
	wire full;
	wire [7:0] r_data;

	// Instantiate the Unit Under Test (UUT)
	FIFO uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.wr(wr), 
		.rd(rd), 
		.w_data(w_data), 
		.empty(empty), 
		.full(full), 
		.r_data(r_data)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		wr = 0;
		rd = 0;
		w_data = 0;

		#3
		RESET=0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		
		//Escribo un 1
		w_data = 1;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 2;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 3;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 4;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 5;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 6;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 7;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 8;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 9;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 10;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 11;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 12;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 13;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 14;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 15;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 16;
		#1
		wr = 1;
		#2
		wr = 0;
		#3
		
		w_data = 17;
		#1
		wr = 1;
		#2
		wr = 0;
		
		#10
		
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		#5
		rd=1;
		#2
		rd=0;
		
		
		#5
		w_data = 18;
		#1
		wr = 1;
		#2
		wr = 0;
		
		
		
		
		

	end
	
	always
	begin
		#1 CLK = ~CLK;

	end
      
endmodule

