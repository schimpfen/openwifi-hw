// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:xpu:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_xpu_0_0 (
  gpio_status,
  ddc_i,
  ddc_q,
  ddc_iq_valid,
  mute_adc_out_to_bb,
  block_rx_dma_to_ps,
  block_rx_dma_to_ps_valid,
  rssi_half_db_lock_by_sig_valid,
  gpio_status_lock_by_sig_valid,
  tsf_runtime_val,
  tsf_pulse_1M,
  rssi_half_db,
  demod_is_ongoing,
  pkt_header_valid,
  pkt_header_valid_strobe,
  ht_unsupport,
  pkt_rate,
  pkt_len,
  byte_in_strobe,
  byte_in,
  byte_count,
  fcs_in_strobe,
  fcs_ok,
  phy_tx_started,
  phy_tx_done,
  mac_addr,
  retrans_in_progress,
  start_retrans,
  tx_try_complete,
  tx_iq_fifo_empty,
  high_tx_allowed0,
  high_tx_allowed1,
  tx_bb_is_ongoing,
  ack_tx_flag,
  wea,
  addra,
  dina,
  tx_pkt_need_ack,
  tx_pkt_retrans_limit,
  douta,
  cts_toself_bb_is_ongoing,
  cts_toself_rf_is_ongoing,
  band,
  channel,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready
);

input wire [7 : 0] gpio_status;
input wire [15 : 0] ddc_i;
input wire [15 : 0] ddc_q;
input wire ddc_iq_valid;
output wire mute_adc_out_to_bb;
output wire block_rx_dma_to_ps;
output wire block_rx_dma_to_ps_valid;
output wire [10 : 0] rssi_half_db_lock_by_sig_valid;
output wire [7 : 0] gpio_status_lock_by_sig_valid;
output wire [63 : 0] tsf_runtime_val;
output wire tsf_pulse_1M;
output wire [10 : 0] rssi_half_db;
input wire demod_is_ongoing;
input wire pkt_header_valid;
input wire pkt_header_valid_strobe;
input wire ht_unsupport;
input wire [7 : 0] pkt_rate;
input wire [15 : 0] pkt_len;
input wire byte_in_strobe;
input wire [7 : 0] byte_in;
input wire [15 : 0] byte_count;
input wire fcs_in_strobe;
input wire fcs_ok;
input wire phy_tx_started;
input wire phy_tx_done;
output wire [47 : 0] mac_addr;
output wire retrans_in_progress;
output wire start_retrans;
output wire tx_try_complete;
input wire tx_iq_fifo_empty;
output wire high_tx_allowed0;
output wire high_tx_allowed1;
output wire tx_bb_is_ongoing;
output wire ack_tx_flag;
output wire wea;
output wire [9 : 0] addra;
output wire [63 : 0] dina;
input wire tx_pkt_need_ack;
input wire [3 : 0] tx_pkt_retrans_limit;
input wire [63 : 0] douta;
input wire cts_toself_bb_is_ongoing;
input wire cts_toself_rf_is_ongoing;
output wire [3 : 0] band;
output wire [7 : 0] channel;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *)
input wire [7 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *)
input wire [7 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER\
_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *)
input wire s00_axi_rready;

  xpu #(
    .GPIO_STATUS_WIDTH(8),
    .DELAY_CTL_WIDTH(7),
    .RSSI_HALF_DB_WIDTH(11),
    .IQ_RSSI_HALF_DB_WIDTH(9),
    .C_S00_AXIS_TDATA_WIDTH(64),
    .IQ_DATA_WIDTH(16),
    .WIFI_TX_BRAM_DATA_WIDTH(64),
    .C_S00_AXI_DATA_WIDTH(32),
    .C_S00_AXI_ADDR_WIDTH(8),
    .TSF_TIMER_WIDTH(64)
  ) inst (
    .gpio_status(gpio_status),
    .ddc_i(ddc_i),
    .ddc_q(ddc_q),
    .ddc_iq_valid(ddc_iq_valid),
    .mute_adc_out_to_bb(mute_adc_out_to_bb),
    .block_rx_dma_to_ps(block_rx_dma_to_ps),
    .block_rx_dma_to_ps_valid(block_rx_dma_to_ps_valid),
    .rssi_half_db_lock_by_sig_valid(rssi_half_db_lock_by_sig_valid),
    .gpio_status_lock_by_sig_valid(gpio_status_lock_by_sig_valid),
    .tsf_runtime_val(tsf_runtime_val),
    .tsf_pulse_1M(tsf_pulse_1M),
    .rssi_half_db(rssi_half_db),
    .demod_is_ongoing(demod_is_ongoing),
    .pkt_header_valid(pkt_header_valid),
    .pkt_header_valid_strobe(pkt_header_valid_strobe),
    .ht_unsupport(ht_unsupport),
    .pkt_rate(pkt_rate),
    .pkt_len(pkt_len),
    .byte_in_strobe(byte_in_strobe),
    .byte_in(byte_in),
    .byte_count(byte_count),
    .fcs_in_strobe(fcs_in_strobe),
    .fcs_ok(fcs_ok),
    .phy_tx_started(phy_tx_started),
    .phy_tx_done(phy_tx_done),
    .mac_addr(mac_addr),
    .retrans_in_progress(retrans_in_progress),
    .start_retrans(start_retrans),
    .tx_try_complete(tx_try_complete),
    .tx_iq_fifo_empty(tx_iq_fifo_empty),
    .high_tx_allowed0(high_tx_allowed0),
    .high_tx_allowed1(high_tx_allowed1),
    .tx_bb_is_ongoing(tx_bb_is_ongoing),
    .ack_tx_flag(ack_tx_flag),
    .wea(wea),
    .addra(addra),
    .dina(dina),
    .tx_pkt_need_ack(tx_pkt_need_ack),
    .tx_pkt_retrans_limit(tx_pkt_retrans_limit),
    .douta(douta),
    .cts_toself_bb_is_ongoing(cts_toself_bb_is_ongoing),
    .cts_toself_rf_is_ongoing(cts_toself_rf_is_ongoing),
    .band(band),
    .channel(channel),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready)
  );
endmodule
