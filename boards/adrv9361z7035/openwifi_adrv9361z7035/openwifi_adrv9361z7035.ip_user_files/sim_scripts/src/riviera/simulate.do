onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+system -L xilinx_vip -L xil_defaultlib -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_4 -L processing_system7_vip_v1_0_6 -L lib_pkg_v1_0_2 -L lib_cdc_v1_0_2 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_21 -L xlconcat_v2_1_1 -L proc_sys_reset_v5_0_13 -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_5 -L generic_baseblocks_v2_1_0 -L axi_register_slice_v2_1_18 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_crossbar_v2_1_19 -L util_reduced_logic_v2_0_4 -L smartconnect_v1_0 -L lib_fifo_v1_0_12 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_20 -L axi_sg_v4_1_11 -L axi_dma_v7_1_19 -L blk_mem_gen_v8_4_2 -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L xbip_pipe_v3_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L floating_point_v7_0_15 -L xbip_dsp48_mult_v3_0_5 -L xbip_dsp48_multadd_v3_0_5 -L div_gen_v5_1_14 -L c_reg_fd_v12_0_5 -L xbip_addsub_v3_0_5 -L c_addsub_v12_0_12 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L cmpy_v6_0_16 -L xfft_v9_1_1 -L c_gate_bit_v12_0_5 -L c_compare_v12_0_5 -L xbip_counter_v3_0_5 -L c_counter_binary_v12_0_12 -L c_mux_bus_v12_0_5 -L viterbi_v9_1_10 -L xlslice_v1_0_1 -L fir_compiler_v7_2_11 -L axi_protocol_converter_v2_1_18 -L axi_clock_converter_v2_1_17 -L axi_dwidth_converter_v2_1_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {system.udo}

run -all

source {../../../../../src/ip/system_axi_ad9361_adc_dma_0/bd/bd.tcl}
source {../../../../../src/ip/system_axi_ad9361_dac_dma_0/bd/bd.tcl}


endsim

quit -force
