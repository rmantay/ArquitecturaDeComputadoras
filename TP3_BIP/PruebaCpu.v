`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:59 11/19/2019
// Design Name:   DataPath
// Module Name:   D:/workspace/ArquitecturaDeComputadoras/TP3_BIP/PruebaCpu.v
// Project Name:  TP3_BIP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataPath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PruebaCpu;

	// Inputs
	reg CLK;
	reg RESET;

	wire [15:0] acc ;
	wire [10:0] Operand_out;
	wire [1:0] sel_A;
	wire sel_B, wr_acc, op, wr_ram, rd_ram;
	wire [15:0] dm_in;
	wire [10:0] Addr;
	wire [15:0] Data;
	wire [10:0] Operand;
	// Instantiate the Unit Under Test (UUT)
	DataPath datapath (
		.CLK(CLK), 
		.RESET(RESET), 
		.OPERAND_IN(Operand), 
		.DM_IN(dm_in), 
		.SEL_A(sel_A), 
		.SEL_B(sel_B), 
		.WR_ACC(wr_acc), 
		.OP(op), 
		.ACC(acc), 
		.OPERAND_OUT(Operand_out)
	);
	
	
	
	Control control (
    .CLK(CLK), 
    .RESET(RESET), 
    .INSTRUCTION(Data), 
	 
    .SEL_A(sel_A), 
    .SEL_B(sel_B), 
    .WR_ACC(wr_acc), 
    .OP(op),
    .WR_RAM(wr_ram), 
    .RD_RAM(rd_ram), 
    .OPERAND(Operand), 
    .PC(Addr)
    );

DataMemory datamemory (
    .CLK(CLK), 
    .RESET(RESET), 
    .RD(rd_ram), 
    .WR(wr_ram), 
    .ADDR(Operand_out), 
    .IN_DATA(acc), 
    .OUT_DATA(dm_in)
    );
	 
	 

ProgramMemory programmemory (
    .CLK(CLK), 
    .RESET(RESET), 
    .ADDR(Addr), 
    .DATA(Data)
    );



	initial begin
		// Initialize Inputs
		CLK = 0;
		RESET = 1;

		// Wait 100 ns for global reset to finish
		#100;
		RESET = 0;
        
		// Add stimulus here

	end
	
	always 
	begin
	CLK = 0;
	#50 CLK = 1;
	#50;
	end
	
	
	reg wr_fifo_next;
	reg WR_FIFO;
	
		 always @(*)
	 begin
	  if(wr_acc)
			wr_fifo_next=1;
			else
			wr_fifo_next=0;
		
	end
	
	always @(posedge CLK, posedge RESET)
	begin
		if(RESET)
			begin
				WR_FIFO <= 0;
			end
		else
			begin
				WR_FIFO<=wr_fifo_next;
			end
	end
      
endmodule

