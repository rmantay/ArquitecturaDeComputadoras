`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:10 11/11/2019 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
			input CLK,
			input RESET,
			input RD,
			input WR,
			input [10:0] ADDR,
			input [15:0] IN_DATA,
			output reg [15:0] OUT_DATA
    );
	 
	 reg [15:0] data_list [9:0];
	 reg [3:0] i;
	 
	 always @(negedge CLK, posedge RESET)
	 begin
		if(RESET)
			begin
				for(i=0; i<=9; i=i+1)
					begin
						data_list[i] <= 0;
					end
					
				OUT_DATA <= 0;
			end
		else
			begin
				case({RD,WR})
					2'b01:		//WRITE
						begin
							data_list[ADDR] <= IN_DATA;
							OUT_DATA <= IN_DATA;
						end
					2'b10:		//READ
						begin
							OUT_DATA <= data_list[ADDR];
						end
					default:
						OUT_DATA <= 0;
				endcase
			end
	 end


endmodule
