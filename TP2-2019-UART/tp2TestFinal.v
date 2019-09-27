`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:54 09/27/2019
// Design Name:   ProgramaTP2
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP2-2019-UART/tp2TestFinal.v
// Project Name:  TP2-2019-UART
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramaTP2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tp2TestFinal;

	// Inputs
	reg CLK;
	reg RESET;
	reg RX;

	// Outputs
	wire TX;

	// Instantiate the Unit Under Test (UUT)
	ProgramaTP2 uut (
		.CLK(CLK), 
		.RESET(RESET), 
		.RX(RX), 
		.TX(TX)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;
		RX = 1;
		
		#5 RESET =0;

		// Wait 100 ns for global reset to finish
		//SUMA 2+2
/*		#100;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
					#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
		
			#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
		
					#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;*/
		 
		// Add stimulus here
		
				#100;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
					#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
		
			#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;
		
		
					#5226;
       
		
		RX=0;			//bit de inicio
		
		
		#5226
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 1;
		#5226 
		RX = 1;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		#5226 
		RX = 0;
		
		#5226 
		RX = 1;

	end
	
	always begin
	#1 CLK=~CLK;
	end
      
endmodule

