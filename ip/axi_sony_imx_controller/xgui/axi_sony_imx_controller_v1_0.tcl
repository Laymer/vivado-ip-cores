# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Camera Interface Configuration}]
  ipgui::add_param $IPINST -name "LANE_WIDTH" -parent ${Page_0}
  #Adding Group
  set Trigger_Setup [ipgui::add_group $IPINST -name "Trigger Setup" -parent ${Page_0}]
  set DEFAULT_TRIGGER_LEN [ipgui::add_param $IPINST -name "DEFAULT_TRIGGER_LEN" -parent ${Trigger_Setup}]
  set_property tooltip {Length of trigger pulse} ${DEFAULT_TRIGGER_LEN}
  set DEFAULT_TRIGGER_PERIOD [ipgui::add_param $IPINST -name "DEFAULT_TRIGGER_PERIOD" -parent ${Trigger_Setup}]
  set_property tooltip {Number of clock cycles (relative to the Camera Clock) that a pulse will occur.} ${DEFAULT_TRIGGER_PERIOD}

  #Adding Group
  set LVDS_Lane_Invert [ipgui::add_group $IPINST -name "LVDS Lane Invert" -parent ${Page_0}]
  ipgui::add_static_text $IPINST -name "LVDS Invert Map" -parent ${LVDS_Lane_Invert} -text {Set the lanes that need to be flipped on each of the camera inputs}
  set CAM0_LVDS_INVERT_MAP [ipgui::add_param $IPINST -name "CAM0_LVDS_INVERT_MAP" -parent ${LVDS_Lane_Invert}]
  set_property tooltip {Bit mask 0 = Lane is not inverted, 1 = Lane is inverted} ${CAM0_LVDS_INVERT_MAP}
  set CAM1_LVDS_INVERT_MAP [ipgui::add_param $IPINST -name "CAM1_LVDS_INVERT_MAP" -parent ${LVDS_Lane_Invert}]
  set_property tooltip {Bit mask 0 = Lane is not inverted, 1 = Lane is inverted} ${CAM1_LVDS_INVERT_MAP}
  set CAM2_LVDS_INVERT_MAP [ipgui::add_param $IPINST -name "CAM2_LVDS_INVERT_MAP" -parent ${LVDS_Lane_Invert}]
  set_property tooltip {Bit mask 0 = Lane is not inverted, 1 = Lane is inverted} ${CAM2_LVDS_INVERT_MAP}


  #Adding Page
  set AXI_Configuration [ipgui::add_page $IPINST -name "AXI Configuration"]
  set AXIS_DATA_WIDTH [ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${AXI_Configuration}]
  set_property tooltip {Set the Width of the AXI Stream, 64-bit only allows 64-bit only allows 8-bit data, 16-bit allows 8, 10 and 12 bit data} ${AXIS_DATA_WIDTH}
  ipgui::add_param $IPINST -name "INVERT_VDMA_RESET" -parent ${AXI_Configuration}
  ipgui::add_param $IPINST -name "INVERT_AXI_RESET" -parent ${AXI_Configuration}


}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_STROBE_WIDTH { PARAM_VALUE.AXIS_STROBE_WIDTH } {
	# Procedure called to update AXIS_STROBE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_STROBE_WIDTH { PARAM_VALUE.AXIS_STROBE_WIDTH } {
	# Procedure called to validate AXIS_STROBE_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_STROBE_WIDTH { PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to update AXI_STROBE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STROBE_WIDTH { PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to validate AXI_STROBE_WIDTH
	return true
}

proc update_PARAM_VALUE.BRAM_DATA_DEPTH { PARAM_VALUE.BRAM_DATA_DEPTH } {
	# Procedure called to update BRAM_DATA_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_DATA_DEPTH { PARAM_VALUE.BRAM_DATA_DEPTH } {
	# Procedure called to validate BRAM_DATA_DEPTH
	return true
}

proc update_PARAM_VALUE.BRAM_DATA_WIDTH { PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to update BRAM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BRAM_DATA_WIDTH { PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to validate BRAM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.CAM0_LVDS_INVERT_MAP { PARAM_VALUE.CAM0_LVDS_INVERT_MAP } {
	# Procedure called to update CAM0_LVDS_INVERT_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAM0_LVDS_INVERT_MAP { PARAM_VALUE.CAM0_LVDS_INVERT_MAP } {
	# Procedure called to validate CAM0_LVDS_INVERT_MAP
	return true
}

proc update_PARAM_VALUE.CAM1_LVDS_INVERT_MAP { PARAM_VALUE.CAM1_LVDS_INVERT_MAP } {
	# Procedure called to update CAM1_LVDS_INVERT_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAM1_LVDS_INVERT_MAP { PARAM_VALUE.CAM1_LVDS_INVERT_MAP } {
	# Procedure called to validate CAM1_LVDS_INVERT_MAP
	return true
}

proc update_PARAM_VALUE.CAM2_LVDS_INVERT_MAP { PARAM_VALUE.CAM2_LVDS_INVERT_MAP } {
	# Procedure called to update CAM2_LVDS_INVERT_MAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAM2_LVDS_INVERT_MAP { PARAM_VALUE.CAM2_LVDS_INVERT_MAP } {
	# Procedure called to validate CAM2_LVDS_INVERT_MAP
	return true
}

proc update_PARAM_VALUE.DEFAULT_TRIGGER_LEN { PARAM_VALUE.DEFAULT_TRIGGER_LEN } {
	# Procedure called to update DEFAULT_TRIGGER_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_TRIGGER_LEN { PARAM_VALUE.DEFAULT_TRIGGER_LEN } {
	# Procedure called to validate DEFAULT_TRIGGER_LEN
	return true
}

proc update_PARAM_VALUE.DEFAULT_TRIGGER_PERIOD { PARAM_VALUE.DEFAULT_TRIGGER_PERIOD } {
	# Procedure called to update DEFAULT_TRIGGER_PERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEFAULT_TRIGGER_PERIOD { PARAM_VALUE.DEFAULT_TRIGGER_PERIOD } {
	# Procedure called to validate DEFAULT_TRIGGER_PERIOD
	return true
}

proc update_PARAM_VALUE.INVERT_AXI_RESET { PARAM_VALUE.INVERT_AXI_RESET } {
	# Procedure called to update INVERT_AXI_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INVERT_AXI_RESET { PARAM_VALUE.INVERT_AXI_RESET } {
	# Procedure called to validate INVERT_AXI_RESET
	return true
}

proc update_PARAM_VALUE.INVERT_VDMA_RESET { PARAM_VALUE.INVERT_VDMA_RESET } {
	# Procedure called to update INVERT_VDMA_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INVERT_VDMA_RESET { PARAM_VALUE.INVERT_VDMA_RESET } {
	# Procedure called to validate INVERT_VDMA_RESET
	return true
}

proc update_PARAM_VALUE.LANE_WIDTH { PARAM_VALUE.LANE_WIDTH } {
	# Procedure called to update LANE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LANE_WIDTH { PARAM_VALUE.LANE_WIDTH } {
	# Procedure called to validate LANE_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.DEFAULT_TRIGGER_LEN { MODELPARAM_VALUE.DEFAULT_TRIGGER_LEN PARAM_VALUE.DEFAULT_TRIGGER_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_TRIGGER_LEN}] ${MODELPARAM_VALUE.DEFAULT_TRIGGER_LEN}
}

proc update_MODELPARAM_VALUE.DEFAULT_TRIGGER_PERIOD { MODELPARAM_VALUE.DEFAULT_TRIGGER_PERIOD PARAM_VALUE.DEFAULT_TRIGGER_PERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEFAULT_TRIGGER_PERIOD}] ${MODELPARAM_VALUE.DEFAULT_TRIGGER_PERIOD}
}

proc update_MODELPARAM_VALUE.LANE_WIDTH { MODELPARAM_VALUE.LANE_WIDTH PARAM_VALUE.LANE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LANE_WIDTH}] ${MODELPARAM_VALUE.LANE_WIDTH}
}

proc update_MODELPARAM_VALUE.INVERT_AXI_RESET { MODELPARAM_VALUE.INVERT_AXI_RESET PARAM_VALUE.INVERT_AXI_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INVERT_AXI_RESET}] ${MODELPARAM_VALUE.INVERT_AXI_RESET}
}

proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_STROBE_WIDTH { MODELPARAM_VALUE.AXIS_STROBE_WIDTH PARAM_VALUE.AXIS_STROBE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_STROBE_WIDTH}] ${MODELPARAM_VALUE.AXIS_STROBE_WIDTH}
}

proc update_MODELPARAM_VALUE.BRAM_DATA_DEPTH { MODELPARAM_VALUE.BRAM_DATA_DEPTH PARAM_VALUE.BRAM_DATA_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DATA_DEPTH}] ${MODELPARAM_VALUE.BRAM_DATA_DEPTH}
}

proc update_MODELPARAM_VALUE.BRAM_DATA_WIDTH { MODELPARAM_VALUE.BRAM_DATA_WIDTH PARAM_VALUE.BRAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BRAM_DATA_WIDTH}] ${MODELPARAM_VALUE.BRAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STROBE_WIDTH { MODELPARAM_VALUE.AXI_STROBE_WIDTH PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STROBE_WIDTH}] ${MODELPARAM_VALUE.AXI_STROBE_WIDTH}
}

proc update_MODELPARAM_VALUE.INVERT_VDMA_RESET { MODELPARAM_VALUE.INVERT_VDMA_RESET PARAM_VALUE.INVERT_VDMA_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INVERT_VDMA_RESET}] ${MODELPARAM_VALUE.INVERT_VDMA_RESET}
}

proc update_MODELPARAM_VALUE.CAM0_LVDS_INVERT_MAP { MODELPARAM_VALUE.CAM0_LVDS_INVERT_MAP PARAM_VALUE.CAM0_LVDS_INVERT_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAM0_LVDS_INVERT_MAP}] ${MODELPARAM_VALUE.CAM0_LVDS_INVERT_MAP}
}

proc update_MODELPARAM_VALUE.CAM1_LVDS_INVERT_MAP { MODELPARAM_VALUE.CAM1_LVDS_INVERT_MAP PARAM_VALUE.CAM1_LVDS_INVERT_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAM1_LVDS_INVERT_MAP}] ${MODELPARAM_VALUE.CAM1_LVDS_INVERT_MAP}
}

proc update_MODELPARAM_VALUE.CAM2_LVDS_INVERT_MAP { MODELPARAM_VALUE.CAM2_LVDS_INVERT_MAP PARAM_VALUE.CAM2_LVDS_INVERT_MAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAM2_LVDS_INVERT_MAP}] ${MODELPARAM_VALUE.CAM2_LVDS_INVERT_MAP}
}

