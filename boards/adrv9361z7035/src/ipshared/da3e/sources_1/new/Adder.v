`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2020 10:09:02 AM
// Design Name: 
// Module Name: Adder
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


module Adder
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
	)
    (
    input wire clk,
    input wire en,
    input wire[2*IQ_DATA_WIDTH-1:0] iq_str0,
    input wire[2*IQ_DATA_WIDTH-1:0] iq_str1,
    output wire[2*IQ_DATA_WIDTH-1:0] iq_strOut,
    output wire i_ovf,
    output wire q_ovf
    );
    wire [IQ_DATA_WIDTH-1:0] i_0;
    wire [IQ_DATA_WIDTH-1:0] q_0;
    wire [IQ_DATA_WIDTH-1:0] i_1;
    wire [IQ_DATA_WIDTH-1:0] q_1;
    wire [IQ_DATA_WIDTH-1:0] i_out;
    wire [IQ_DATA_WIDTH-1:0] q_out;
    
    wire [IQ_DATA_WIDTH:0] i_add;
    wire [IQ_DATA_WIDTH:0] q_add;
    
    assign i_0 = iq_str0[IQ_DATA_WIDTH-1:0];
    assign q_0 = iq_str0[2*IQ_DATA_WIDTH-1:IQ_DATA_WIDTH];
    assign i_1 = iq_str1[IQ_DATA_WIDTH-1:0];
    assign q_1 = iq_str1[2*IQ_DATA_WIDTH-1:IQ_DATA_WIDTH];
    
    assign i_add = (en == 1'b1) ? ((i_0+i_1) << 1) : (i_0);
    assign q_add = (en == 1'b1) ? ((q_0+q_1) << 1) : (q_0);
    
    /*always @(posedge clk)        
    begin
        if(en == 1'b1)
        begin
            i_add <= i_0 + i_1;
            q_add <= q_0 + q_1;
        end else
        begin
            i_add <= i_0<<1;
            q_add <= q_0<<1;
        end
    end*/
    
    assign {i_ovf,i_out} = i_add >> 1;
    assign {q_ovf,q_out} = q_add >> 1;
    assign iq_strOut = {q_out,i_out};


endmodule
