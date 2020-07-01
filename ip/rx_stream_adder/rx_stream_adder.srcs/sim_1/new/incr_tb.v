`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2020 10:36:52 AM
// Design Name: 
// Module Name: incr_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module incr_tb
#(
        parameter integer GPIO_STATUS_WIDTH = 8,
        parameter integer RSSI_HALF_DB_WIDTH = 11,

		parameter integer ADC_PACK_DATA_WIDTH	= 64,
		parameter integer IQ_DATA_WIDTH	=     16,
		parameter integer RSSI_DATA_WIDTH	=     10,
		
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7,

		parameter integer C_S00_AXIS_TDATA_WIDTH	= 64,
		parameter integer C_M00_AXIS_TDATA_WIDTH	= 64,
		
        parameter integer WAIT_COUNT_BITS = 5,
		parameter integer MAX_NUM_DMA_SYMBOL = 8192,
        parameter integer TSF_TIMER_WIDTH = 64 // according to 802.11 standard
	);
    
    reg clk_20M;
    reg en;
    reg[2*IQ_DATA_WIDTH-1:0] iq_str0 = 8'h00000001;
    reg[2*IQ_DATA_WIDTH-1:0] iq_str1 = 8'h00000001;
    wire[2*IQ_DATA_WIDTH-1:0] iq_strOut;
    wire i_ovf;
    wire q_ovf;
    
    Adder U1(
            .clk(clk_20M),
             .en(en), 
             .iq_str0(iq_str0),
             .iq_str1(iq_str1),
             .iq_strOut(iq_strOut),
             .i_ovf(i_ovf),
             .q_ovf(q_ovf)
             );
    
    always
        #50 clk_20M = ~clk_20M;
    initial
        
    begin
        $display($time, "<<Simulation Setup>>");
        clk_20M = 1'b0;
        en = 1'b0;
    end
    
    always @(posedge clk_20M)
        
        if (en == 1'b1)
        begin
            iq_str0 = iq_str0 + 8'h11111111;
            iq_str1 = iq_str1 + 8'h11111111;
        end else
        begin
            #200
            en <= 1'b1;
        end
        
        //$monitor($time, "clk=%b, iq_str0=%h, iq_str1=%h, iq_strOut=%h", clk_20M, iq_str0, iq_str1, iq_strOut); 
    
    
endmodule
