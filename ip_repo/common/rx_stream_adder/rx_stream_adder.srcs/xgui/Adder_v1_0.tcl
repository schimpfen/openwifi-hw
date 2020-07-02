# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_PACK_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M00_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXIS_TDATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GPIO_STATUS_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IQ_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_NUM_DMA_SYMBOL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RSSI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RSSI_HALF_DB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TSF_TIMER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WAIT_COUNT_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_PACK_DATA_WIDTH { PARAM_VALUE.ADC_PACK_DATA_WIDTH } {
	# Procedure called to update ADC_PACK_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_PACK_DATA_WIDTH { PARAM_VALUE.ADC_PACK_DATA_WIDTH } {
	# Procedure called to validate ADC_PACK_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S00_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S00_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.GPIO_STATUS_WIDTH { PARAM_VALUE.GPIO_STATUS_WIDTH } {
	# Procedure called to update GPIO_STATUS_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_STATUS_WIDTH { PARAM_VALUE.GPIO_STATUS_WIDTH } {
	# Procedure called to validate GPIO_STATUS_WIDTH
	return true
}

proc update_PARAM_VALUE.IQ_DATA_WIDTH { PARAM_VALUE.IQ_DATA_WIDTH } {
	# Procedure called to update IQ_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IQ_DATA_WIDTH { PARAM_VALUE.IQ_DATA_WIDTH } {
	# Procedure called to validate IQ_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.MAX_NUM_DMA_SYMBOL { PARAM_VALUE.MAX_NUM_DMA_SYMBOL } {
	# Procedure called to update MAX_NUM_DMA_SYMBOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_NUM_DMA_SYMBOL { PARAM_VALUE.MAX_NUM_DMA_SYMBOL } {
	# Procedure called to validate MAX_NUM_DMA_SYMBOL
	return true
}

proc update_PARAM_VALUE.RSSI_DATA_WIDTH { PARAM_VALUE.RSSI_DATA_WIDTH } {
	# Procedure called to update RSSI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RSSI_DATA_WIDTH { PARAM_VALUE.RSSI_DATA_WIDTH } {
	# Procedure called to validate RSSI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.RSSI_HALF_DB_WIDTH { PARAM_VALUE.RSSI_HALF_DB_WIDTH } {
	# Procedure called to update RSSI_HALF_DB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RSSI_HALF_DB_WIDTH { PARAM_VALUE.RSSI_HALF_DB_WIDTH } {
	# Procedure called to validate RSSI_HALF_DB_WIDTH
	return true
}

proc update_PARAM_VALUE.TSF_TIMER_WIDTH { PARAM_VALUE.TSF_TIMER_WIDTH } {
	# Procedure called to update TSF_TIMER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TSF_TIMER_WIDTH { PARAM_VALUE.TSF_TIMER_WIDTH } {
	# Procedure called to validate TSF_TIMER_WIDTH
	return true
}

proc update_PARAM_VALUE.WAIT_COUNT_BITS { PARAM_VALUE.WAIT_COUNT_BITS } {
	# Procedure called to update WAIT_COUNT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WAIT_COUNT_BITS { PARAM_VALUE.WAIT_COUNT_BITS } {
	# Procedure called to validate WAIT_COUNT_BITS
	return true
}


proc update_MODELPARAM_VALUE.GPIO_STATUS_WIDTH { MODELPARAM_VALUE.GPIO_STATUS_WIDTH PARAM_VALUE.GPIO_STATUS_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_STATUS_WIDTH}] ${MODELPARAM_VALUE.GPIO_STATUS_WIDTH}
}

proc update_MODELPARAM_VALUE.RSSI_HALF_DB_WIDTH { MODELPARAM_VALUE.RSSI_HALF_DB_WIDTH PARAM_VALUE.RSSI_HALF_DB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RSSI_HALF_DB_WIDTH}] ${MODELPARAM_VALUE.RSSI_HALF_DB_WIDTH}
}

proc update_MODELPARAM_VALUE.ADC_PACK_DATA_WIDTH { MODELPARAM_VALUE.ADC_PACK_DATA_WIDTH PARAM_VALUE.ADC_PACK_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_PACK_DATA_WIDTH}] ${MODELPARAM_VALUE.ADC_PACK_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.IQ_DATA_WIDTH { MODELPARAM_VALUE.IQ_DATA_WIDTH PARAM_VALUE.IQ_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IQ_DATA_WIDTH}] ${MODELPARAM_VALUE.IQ_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.RSSI_DATA_WIDTH { MODELPARAM_VALUE.RSSI_DATA_WIDTH PARAM_VALUE.RSSI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RSSI_DATA_WIDTH}] ${MODELPARAM_VALUE.RSSI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.WAIT_COUNT_BITS { MODELPARAM_VALUE.WAIT_COUNT_BITS PARAM_VALUE.WAIT_COUNT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WAIT_COUNT_BITS}] ${MODELPARAM_VALUE.WAIT_COUNT_BITS}
}

proc update_MODELPARAM_VALUE.MAX_NUM_DMA_SYMBOL { MODELPARAM_VALUE.MAX_NUM_DMA_SYMBOL PARAM_VALUE.MAX_NUM_DMA_SYMBOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_NUM_DMA_SYMBOL}] ${MODELPARAM_VALUE.MAX_NUM_DMA_SYMBOL}
}

proc update_MODELPARAM_VALUE.TSF_TIMER_WIDTH { MODELPARAM_VALUE.TSF_TIMER_WIDTH PARAM_VALUE.TSF_TIMER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TSF_TIMER_WIDTH}] ${MODELPARAM_VALUE.TSF_TIMER_WIDTH}
}

