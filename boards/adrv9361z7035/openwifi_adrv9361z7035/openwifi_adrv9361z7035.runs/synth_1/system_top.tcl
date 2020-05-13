# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z035ifbg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/openwifi_adrv9361z7035/openwifi_adrv9361z7035.cache/wt [current_project]
set_property parent.project_path /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/openwifi_adrv9361z7035/openwifi_adrv9361z7035.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/library
  /home/sdr/workspace/ns/openwifi/openwifi-hw/ip_repo/common
  /home/sdr/workspace/ns/openwifi/openwifi-hw/ip_repo/high
} [current_project]
update_ip_catalog
set_property ip_output_repo /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/openwifi_adrv9361z7035/openwifi_adrv9361z7035.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/deinter_lut.coe
add_files /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/rot_lut.coe
add_files /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/atan_lut.coe
read_verilog -library xil_defaultlib {
  /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/library/xilinx/common/ad_iobuf.v
  /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system_wrapper.v
  /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system_top.v
}
add_files /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system.bd
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_ps7_0/system_sys_ps7_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_iic_main_0/system_axi_iic_main_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_iic_main_0/system_axi_iic_main_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen_0/system_sys_rstgen_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen_0/system_sys_rstgen_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen_0/system_sys_rstgen_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xbar_0/system_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_ad9361_0/system_axi_ad9361_0_pps_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_ad9361_0/axi_ad9361_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/xilinx/common/up_clock_mon_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/xilinx/common/up_xfer_status_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/xilinx/common/ad_rst_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/xilinx/common/up_xfer_cntrl_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_tdd_sync_0/util_tdd_sync_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_divclk_0/system_util_ad9361_divclk_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_divclk_0/util_clkdiv_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_divclk_reset_0/system_util_ad9361_divclk_reset_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_divclk_reset_0/system_util_ad9361_divclk_reset_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_divclk_reset_0/system_util_ad9361_divclk_reset_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_util_ad9361_adc_fifo_0/util_wfifo_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_ad9361_adc_dma_0/system_axi_ad9361_adc_dma_0_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_ad9361_dac_fifo_0/util_rfifo_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_ad9361_dac_dma_0/system_axi_ad9361_dac_dma_0_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_1/bd_31bd_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_1/bd_31bd_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_5/bd_31bd_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_6/bd_31bd_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_7/bd_31bd_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_8/bd_31bd_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp1_interconnect_0/bd_0/ip/ip_9/bd_31bd_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_1/bd_c0fd_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_1/bd_c0fd_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_5/bd_c0fd_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_6/bd_c0fd_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_7/bd_c0fd_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_hp2_interconnect_0/bd_0/ip/ip_8/bd_c0fd_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_pz_xcvrlb_0/axi_xcvrlb_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/xilinx/common/ad_rst_constr.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_0_0/system_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_0_0/system_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_0_0/system_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_1_0/system_axi_dma_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_1_0/system_axi_dma_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_axi_dma_1_0/system_axi_dma_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xbar_1/system_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xbar_2/system_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xbar_3/system_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/deinter_lut/deinter_lut_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/rot_lut/rot_lut_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_openofdm_rx_0_0/src/atan_lut/atan_lut_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen1_0/system_sys_rstgen1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen1_0/system_sys_rstgen1_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_sys_rstgen1_0/system_sys_rstgen1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xpu_0_0/src/fifo8_1clk_dep64_fifo_generator_0_0/fifo8_1clk_dep64_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xpu_0_0/src/mv_avg32_fir_compiler_0_0/constraints/fir_compiler_v7_2.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_xpu_0_0/src/mv_avg128_fir_compiler_0_0/constraints/fir_compiler_v7_2.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo64_1clk_dep512_fifo_generator_0_0/fifo64_1clk_dep512_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo32_1clk_dep512_fifo_generator_0_0/fifo32_1clk_dep512_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo64_1clk_dep64_fifo_generator_0_0/fifo64_1clk_dep64_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo64_1clk_fifo_generator_0_0/fifo64_1clk_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/duc_bank_core_mixer_duc_0_0/constraints/mixer_duc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/duc_bank_core_mixer_duc_0_0/constraints/mixer_duc_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/duc_bank_core_fir_compiler_0_0/constraints/fir_compiler_v7_2.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo32_2clk_dep32_fifo_generator_0_0/fifo32_2clk_dep32_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_tx_intf_0_0/src/fifo32_2clk_dep32_fifo_generator_0_0/fifo32_2clk_dep32_fifo_generator_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_rx_intf_0_0/src/fifo64_1clk_fifo_generator_0_0/fifo64_1clk_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_rx_intf_0_0/src/fifo32_1clk_dep32_fifo_generator_0_0/fifo32_1clk_dep32_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_rx_intf_0_0/src/fifo64_1clk_dep512_fifo_generator_0_0/fifo64_1clk_dep512_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_rx_intf_0_0/src/fifo32_2clk_dep32_fifo_generator_0_0/fifo32_2clk_dep32_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_rx_intf_0_0/src/fifo32_2clk_dep32_fifo_generator_0_0/fifo32_2clk_dep32_fifo_generator_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_pc_0/system_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_0/system_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_0/system_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_pc_1/system_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_pc_2/system_auto_pc_2_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_1/system_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_1/system_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_us_1/system_auto_us_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/ip/system_auto_pc_3/system_auto_pc_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/adrv9361z7035_constr.xdc
set_property used_in_implementation false [get_files /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/adrv9361z7035_constr.xdc]

read_xdc /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/adrv9361z7035_constr_lvds.xdc
set_property used_in_implementation false [get_files /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/adrv9361z7035_constr_lvds.xdc]

read_xdc /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/ccbob_constr.xdc
set_property used_in_implementation false [get_files /home/sdr/workspace/ns/openwifi/openwifi-hw/adi-hdl/projects/adrv9361z7035/common/ccbob_constr.xdc]

read_xdc /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system.xdc
set_property used_in_implementation false [get_files /home/sdr/workspace/ns/openwifi/openwifi-hw/boards/adrv9361z7035/src/system.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top system_top -part xc7z035ifbg676-2L -fanout_limit 400 -retiming -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file system_top_utilization_synth.rpt -pb system_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
