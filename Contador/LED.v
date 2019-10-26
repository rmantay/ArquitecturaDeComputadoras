`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:51 10/25/2019 
// Design Name: 
// Module Name:    LED 
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
module LED( input CLK,
				output [7:0] LEDS
    );
	 
	 reg [31:0] limite = 50000000;
	 reg [31:0] cuenta = 0;
	 reg [31:0] luz = 0;
	 
	 always @(posedge CLK)
	 begin
		if(cuenta==limite)
		begin
			luz = luz + 1;
			cuenta=0;
		end
		else begin
		cuenta = cuenta + 1;
		end
	end
		
	assign LEDS = luz;
		
	 


endmodule
