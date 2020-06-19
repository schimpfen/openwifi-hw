onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib system_opt

do {wave.do}

view wave
view structure
view signals

do {system.udo}

run -all

source {../../../../../src/ip/system_axi_ad9361_adc_dma_0/bd/bd.tcl}
source {../../../../../src/ip/system_axi_ad9361_dac_dma_0/bd/bd.tcl}


quit -force
