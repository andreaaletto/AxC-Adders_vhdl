# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab14" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab15" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab16" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab18" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab19" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab20" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab21" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab22" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab23" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab9" -parent ${Page_0}


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

proc update_PARAM_VALUE.nab0 { PARAM_VALUE.nab0 } {
	# Procedure called to update nab0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab0 { PARAM_VALUE.nab0 } {
	# Procedure called to validate nab0
	return true
}

proc update_PARAM_VALUE.nab1 { PARAM_VALUE.nab1 } {
	# Procedure called to update nab1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab1 { PARAM_VALUE.nab1 } {
	# Procedure called to validate nab1
	return true
}

proc update_PARAM_VALUE.nab10 { PARAM_VALUE.nab10 } {
	# Procedure called to update nab10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab10 { PARAM_VALUE.nab10 } {
	# Procedure called to validate nab10
	return true
}

proc update_PARAM_VALUE.nab11 { PARAM_VALUE.nab11 } {
	# Procedure called to update nab11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab11 { PARAM_VALUE.nab11 } {
	# Procedure called to validate nab11
	return true
}

proc update_PARAM_VALUE.nab12 { PARAM_VALUE.nab12 } {
	# Procedure called to update nab12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab12 { PARAM_VALUE.nab12 } {
	# Procedure called to validate nab12
	return true
}

proc update_PARAM_VALUE.nab13 { PARAM_VALUE.nab13 } {
	# Procedure called to update nab13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab13 { PARAM_VALUE.nab13 } {
	# Procedure called to validate nab13
	return true
}

proc update_PARAM_VALUE.nab14 { PARAM_VALUE.nab14 } {
	# Procedure called to update nab14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab14 { PARAM_VALUE.nab14 } {
	# Procedure called to validate nab14
	return true
}

proc update_PARAM_VALUE.nab15 { PARAM_VALUE.nab15 } {
	# Procedure called to update nab15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab15 { PARAM_VALUE.nab15 } {
	# Procedure called to validate nab15
	return true
}

proc update_PARAM_VALUE.nab16 { PARAM_VALUE.nab16 } {
	# Procedure called to update nab16 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab16 { PARAM_VALUE.nab16 } {
	# Procedure called to validate nab16
	return true
}

proc update_PARAM_VALUE.nab17 { PARAM_VALUE.nab17 } {
	# Procedure called to update nab17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab17 { PARAM_VALUE.nab17 } {
	# Procedure called to validate nab17
	return true
}

proc update_PARAM_VALUE.nab18 { PARAM_VALUE.nab18 } {
	# Procedure called to update nab18 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab18 { PARAM_VALUE.nab18 } {
	# Procedure called to validate nab18
	return true
}

proc update_PARAM_VALUE.nab19 { PARAM_VALUE.nab19 } {
	# Procedure called to update nab19 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab19 { PARAM_VALUE.nab19 } {
	# Procedure called to validate nab19
	return true
}

proc update_PARAM_VALUE.nab2 { PARAM_VALUE.nab2 } {
	# Procedure called to update nab2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab2 { PARAM_VALUE.nab2 } {
	# Procedure called to validate nab2
	return true
}

proc update_PARAM_VALUE.nab20 { PARAM_VALUE.nab20 } {
	# Procedure called to update nab20 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab20 { PARAM_VALUE.nab20 } {
	# Procedure called to validate nab20
	return true
}

proc update_PARAM_VALUE.nab21 { PARAM_VALUE.nab21 } {
	# Procedure called to update nab21 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab21 { PARAM_VALUE.nab21 } {
	# Procedure called to validate nab21
	return true
}

proc update_PARAM_VALUE.nab22 { PARAM_VALUE.nab22 } {
	# Procedure called to update nab22 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab22 { PARAM_VALUE.nab22 } {
	# Procedure called to validate nab22
	return true
}

proc update_PARAM_VALUE.nab23 { PARAM_VALUE.nab23 } {
	# Procedure called to update nab23 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab23 { PARAM_VALUE.nab23 } {
	# Procedure called to validate nab23
	return true
}

proc update_PARAM_VALUE.nab3 { PARAM_VALUE.nab3 } {
	# Procedure called to update nab3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab3 { PARAM_VALUE.nab3 } {
	# Procedure called to validate nab3
	return true
}

proc update_PARAM_VALUE.nab4 { PARAM_VALUE.nab4 } {
	# Procedure called to update nab4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab4 { PARAM_VALUE.nab4 } {
	# Procedure called to validate nab4
	return true
}

proc update_PARAM_VALUE.nab5 { PARAM_VALUE.nab5 } {
	# Procedure called to update nab5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab5 { PARAM_VALUE.nab5 } {
	# Procedure called to validate nab5
	return true
}

proc update_PARAM_VALUE.nab6 { PARAM_VALUE.nab6 } {
	# Procedure called to update nab6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab6 { PARAM_VALUE.nab6 } {
	# Procedure called to validate nab6
	return true
}

proc update_PARAM_VALUE.nab7 { PARAM_VALUE.nab7 } {
	# Procedure called to update nab7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab7 { PARAM_VALUE.nab7 } {
	# Procedure called to validate nab7
	return true
}

proc update_PARAM_VALUE.nab8 { PARAM_VALUE.nab8 } {
	# Procedure called to update nab8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab8 { PARAM_VALUE.nab8 } {
	# Procedure called to validate nab8
	return true
}

proc update_PARAM_VALUE.nab9 { PARAM_VALUE.nab9 } {
	# Procedure called to update nab9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.nab9 { PARAM_VALUE.nab9 } {
	# Procedure called to validate nab9
	return true
}


proc update_MODELPARAM_VALUE.nab0 { MODELPARAM_VALUE.nab0 PARAM_VALUE.nab0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab0}] ${MODELPARAM_VALUE.nab0}
}

proc update_MODELPARAM_VALUE.nab1 { MODELPARAM_VALUE.nab1 PARAM_VALUE.nab1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab1}] ${MODELPARAM_VALUE.nab1}
}

proc update_MODELPARAM_VALUE.nab2 { MODELPARAM_VALUE.nab2 PARAM_VALUE.nab2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab2}] ${MODELPARAM_VALUE.nab2}
}

proc update_MODELPARAM_VALUE.nab3 { MODELPARAM_VALUE.nab3 PARAM_VALUE.nab3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab3}] ${MODELPARAM_VALUE.nab3}
}

proc update_MODELPARAM_VALUE.nab4 { MODELPARAM_VALUE.nab4 PARAM_VALUE.nab4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab4}] ${MODELPARAM_VALUE.nab4}
}

proc update_MODELPARAM_VALUE.nab5 { MODELPARAM_VALUE.nab5 PARAM_VALUE.nab5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab5}] ${MODELPARAM_VALUE.nab5}
}

proc update_MODELPARAM_VALUE.nab6 { MODELPARAM_VALUE.nab6 PARAM_VALUE.nab6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab6}] ${MODELPARAM_VALUE.nab6}
}

proc update_MODELPARAM_VALUE.nab7 { MODELPARAM_VALUE.nab7 PARAM_VALUE.nab7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab7}] ${MODELPARAM_VALUE.nab7}
}

proc update_MODELPARAM_VALUE.nab8 { MODELPARAM_VALUE.nab8 PARAM_VALUE.nab8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab8}] ${MODELPARAM_VALUE.nab8}
}

proc update_MODELPARAM_VALUE.nab9 { MODELPARAM_VALUE.nab9 PARAM_VALUE.nab9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab9}] ${MODELPARAM_VALUE.nab9}
}

proc update_MODELPARAM_VALUE.nab10 { MODELPARAM_VALUE.nab10 PARAM_VALUE.nab10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab10}] ${MODELPARAM_VALUE.nab10}
}

proc update_MODELPARAM_VALUE.nab11 { MODELPARAM_VALUE.nab11 PARAM_VALUE.nab11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab11}] ${MODELPARAM_VALUE.nab11}
}

proc update_MODELPARAM_VALUE.nab12 { MODELPARAM_VALUE.nab12 PARAM_VALUE.nab12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab12}] ${MODELPARAM_VALUE.nab12}
}

proc update_MODELPARAM_VALUE.nab13 { MODELPARAM_VALUE.nab13 PARAM_VALUE.nab13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab13}] ${MODELPARAM_VALUE.nab13}
}

proc update_MODELPARAM_VALUE.nab14 { MODELPARAM_VALUE.nab14 PARAM_VALUE.nab14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab14}] ${MODELPARAM_VALUE.nab14}
}

proc update_MODELPARAM_VALUE.nab15 { MODELPARAM_VALUE.nab15 PARAM_VALUE.nab15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab15}] ${MODELPARAM_VALUE.nab15}
}

proc update_MODELPARAM_VALUE.nab16 { MODELPARAM_VALUE.nab16 PARAM_VALUE.nab16 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab16}] ${MODELPARAM_VALUE.nab16}
}

proc update_MODELPARAM_VALUE.nab17 { MODELPARAM_VALUE.nab17 PARAM_VALUE.nab17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab17}] ${MODELPARAM_VALUE.nab17}
}

proc update_MODELPARAM_VALUE.nab18 { MODELPARAM_VALUE.nab18 PARAM_VALUE.nab18 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab18}] ${MODELPARAM_VALUE.nab18}
}

proc update_MODELPARAM_VALUE.nab19 { MODELPARAM_VALUE.nab19 PARAM_VALUE.nab19 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab19}] ${MODELPARAM_VALUE.nab19}
}

proc update_MODELPARAM_VALUE.nab20 { MODELPARAM_VALUE.nab20 PARAM_VALUE.nab20 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab20}] ${MODELPARAM_VALUE.nab20}
}

proc update_MODELPARAM_VALUE.nab21 { MODELPARAM_VALUE.nab21 PARAM_VALUE.nab21 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab21}] ${MODELPARAM_VALUE.nab21}
}

proc update_MODELPARAM_VALUE.nab22 { MODELPARAM_VALUE.nab22 PARAM_VALUE.nab22 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab22}] ${MODELPARAM_VALUE.nab22}
}

proc update_MODELPARAM_VALUE.nab23 { MODELPARAM_VALUE.nab23 PARAM_VALUE.nab23 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.nab23}] ${MODELPARAM_VALUE.nab23}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

