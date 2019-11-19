`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:10 08/23/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU
	#(parameter N = 15)
	(
    input  [N:0] A,
    input  [N:0] B,
    input O,
    output reg signed [N:0] Z
    );
	 
//	 wire [N:0] sum, rest; //, y, o, x, s1,s2,no;
//	 ADD #(.N(N)) suma(A,B,sum);
//	 SUB #(.N(N)) resta(A,B,rest);
//	 AND and1(A,B,y);
//	 OR  or1(A,B,o);
//	 XOR xor1(A,B,x);
//	 SRA sra1(A,B,s1);
//	 SRL srl1(A,B,s2);
//	 NOR nor1(A,B,no);

	 
	always @(*)
	begin
	case(O)
	1'b1: Z = A+B;			//suma
	1'b0: Z = A-B;			//resta

//	8'b00100001: salida = s2;			//srl
//	8'b00100011: salida = s1;        //sra
//	8'b00100100: salida = y;			//and
//	8'b00100101: salida = o;			//or
//	8'b00100110: salida = x;			//xor
//	8'b00100111: salida = no;			//nor
	default 	  : Z = 0;
	endcase
	end
endmodule
