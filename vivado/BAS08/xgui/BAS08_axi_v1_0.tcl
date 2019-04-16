# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "nab0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "nab9" -parent ${Page_0}
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
  ipgui::add_param $IPINST -name "cell0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell8" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell9" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell10" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell11" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell12" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell13" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell14" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell15" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell16" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell17" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell18" -parent ${Page_0}
  ipgui::add_param $IPINST -name "cell19" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}


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

proc update_PARAM_VALUE.cell0 { PARAM_VALUE.cell0 } {
	# Procedure called to update cell0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell0 { PARAM_VALUE.cell0 } {
	# Procedure called to validate cell0
	return true
}

proc update_PARAM_VALUE.cell1 { PARAM_VALUE.cell1 } {
	# Procedure called to update cell1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell1 { PARAM_VALUE.cell1 } {
	# Procedure called to validate cell1
	return true
}

proc update_PARAM_VALUE.cell10 { PARAM_VALUE.cell10 } {
	# Procedure called to update cell10 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell10 { PARAM_VALUE.cell10 } {
	# Procedure called to validate cell10
	return true
}

proc update_PARAM_VALUE.cell11 { PARAM_VALUE.cell11 } {
	# Procedure called to update cell11 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell11 { PARAM_VALUE.cell11 } {
	# Procedure called to validate cell11
	return true
}

proc update_PARAM_VALUE.cell12 { PARAM_VALUE.cell12 } {
	# Procedure called to update cell12 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell12 { PARAM_VALUE.cell12 } {
	# Procedure called to validate cell12
	return true
}

proc update_PARAM_VALUE.cell13 { PARAM_VALUE.cell13 } {
	# Procedure called to update cell13 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell13 { PARAM_VALUE.cell13 } {
	# Procedure called to validate cell13
	return true
}

proc update_PARAM_VALUE.cell14 { PARAM_VALUE.cell14 } {
	# Procedure called to update cell14 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell14 { PARAM_VALUE.cell14 } {
	# Procedure called to validate cell14
	return true
}

proc update_PARAM_VALUE.cell15 { PARAM_VALUE.cell15 } {
	# Procedure called to update cell15 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell15 { PARAM_VALUE.cell15 } {
	# Procedure called to validate cell15
	return true
}

proc update_PARAM_VALUE.cell16 { PARAM_VALUE.cell16 } {
	# Procedure called to update cell16 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell16 { PARAM_VALUE.cell16 } {
	# Procedure called to validate cell16
	return true
}

proc update_PARAM_VALUE.cell17 { PARAM_VALUE.cell17 } {
	# Procedure called to update cell17 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell17 { PARAM_VALUE.cell17 } {
	# Procedure called to validate cell17
	return true
}

proc update_PARAM_VALUE.cell18 { PARAM_VALUE.cell18 } {
	# Procedure called to update cell18 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell18 { PARAM_VALUE.cell18 } {
	# Procedure called to validate cell18
	return true
}

proc update_PARAM_VALUE.cell19 { PARAM_VALUE.cell19 } {
	# Procedure called to update cell19 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell19 { PARAM_VALUE.cell19 } {
	# Procedure called to validate cell19
	return true
}

proc update_PARAM_VALUE.cell2 { PARAM_VALUE.cell2 } {
	# Procedure called to update cell2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell2 { PARAM_VALUE.cell2 } {
	# Procedure called to validate cell2
	return true
}

proc update_PARAM_VALUE.cell3 { PARAM_VALUE.cell3 } {
	# Procedure called to update cell3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell3 { PARAM_VALUE.cell3 } {
	# Procedure called to validate cell3
	return true
}

proc update_PARAM_VALUE.cell4 { PARAM_VALUE.cell4 } {
	# Procedure called to update cell4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell4 { PARAM_VALUE.cell4 } {
	# Procedure called to validate cell4
	return true
}

proc update_PARAM_VALUE.cell5 { PARAM_VALUE.cell5 } {
	# Procedure called to update cell5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell5 { PARAM_VALUE.cell5 } {
	# Procedure called to validate cell5
	return true
}

proc update_PARAM_VALUE.cell6 { PARAM_VALUE.cell6 } {
	# Procedure called to update cell6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell6 { PARAM_VALUE.cell6 } {
	# Procedure called to validate cell6
	return true
}

proc update_PARAM_VALUE.cell7 { PARAM_VALUE.cell7 } {
	# Procedure called to update cell7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell7 { PARAM_VALUE.cell7 } {
	# Procedure called to validate cell7
	return true
}

proc update_PARAM_VALUE.cell8 { PARAM_VALUE.cell8 } {
	# Procedure called to update cell8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell8 { PARAM_VALUE.cell8 } {
	# Procedure called to validate cell8
	return true
}

proc update_PARAM_VALUE.cell9 { PARAM_VALUE.cell9 } {
	# Procedure called to update cell9 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cell9 { PARAM_VALUE.cell9 } {
	# Procedure called to validate cell9
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

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.cell0 { MODELPARAM_VALUE.cell0 PARAM_VALUE.cell0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell0}] ${MODELPARAM_VALUE.cell0}
}

proc update_MODELPARAM_VALUE.cell1 { MODELPARAM_VALUE.cell1 PARAM_VALUE.cell1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell1}] ${MODELPARAM_VALUE.cell1}
}

proc update_MODELPARAM_VALUE.cell2 { MODELPARAM_VALUE.cell2 PARAM_VALUE.cell2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell2}] ${MODELPARAM_VALUE.cell2}
}

proc update_MODELPARAM_VALUE.cell3 { MODELPARAM_VALUE.cell3 PARAM_VALUE.cell3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell3}] ${MODELPARAM_VALUE.cell3}
}

proc update_MODELPARAM_VALUE.cell4 { MODELPARAM_VALUE.cell4 PARAM_VALUE.cell4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell4}] ${MODELPARAM_VALUE.cell4}
}

proc update_MODELPARAM_VALUE.cell5 { MODELPARAM_VALUE.cell5 PARAM_VALUE.cell5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell5}] ${MODELPARAM_VALUE.cell5}
}

proc update_MODELPARAM_VALUE.cell6 { MODELPARAM_VALUE.cell6 PARAM_VALUE.cell6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell6}] ${MODELPARAM_VALUE.cell6}
}

proc update_MODELPARAM_VALUE.cell7 { MODELPARAM_VALUE.cell7 PARAM_VALUE.cell7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell7}] ${MODELPARAM_VALUE.cell7}
}

proc update_MODELPARAM_VALUE.cell8 { MODELPARAM_VALUE.cell8 PARAM_VALUE.cell8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell8}] ${MODELPARAM_VALUE.cell8}
}

proc update_MODELPARAM_VALUE.cell9 { MODELPARAM_VALUE.cell9 PARAM_VALUE.cell9 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell9}] ${MODELPARAM_VALUE.cell9}
}

proc update_MODELPARAM_VALUE.cell10 { MODELPARAM_VALUE.cell10 PARAM_VALUE.cell10 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell10}] ${MODELPARAM_VALUE.cell10}
}

proc update_MODELPARAM_VALUE.cell11 { MODELPARAM_VALUE.cell11 PARAM_VALUE.cell11 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell11}] ${MODELPARAM_VALUE.cell11}
}

proc update_MODELPARAM_VALUE.cell12 { MODELPARAM_VALUE.cell12 PARAM_VALUE.cell12 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell12}] ${MODELPARAM_VALUE.cell12}
}

proc update_MODELPARAM_VALUE.cell13 { MODELPARAM_VALUE.cell13 PARAM_VALUE.cell13 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell13}] ${MODELPARAM_VALUE.cell13}
}

proc update_MODELPARAM_VALUE.cell14 { MODELPARAM_VALUE.cell14 PARAM_VALUE.cell14 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell14}] ${MODELPARAM_VALUE.cell14}
}

proc update_MODELPARAM_VALUE.cell15 { MODELPARAM_VALUE.cell15 PARAM_VALUE.cell15 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell15}] ${MODELPARAM_VALUE.cell15}
}

proc update_MODELPARAM_VALUE.cell16 { MODELPARAM_VALUE.cell16 PARAM_VALUE.cell16 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell16}] ${MODELPARAM_VALUE.cell16}
}

proc update_MODELPARAM_VALUE.cell17 { MODELPARAM_VALUE.cell17 PARAM_VALUE.cell17 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell17}] ${MODELPARAM_VALUE.cell17}
}

proc update_MODELPARAM_VALUE.cell18 { MODELPARAM_VALUE.cell18 PARAM_VALUE.cell18 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell18}] ${MODELPARAM_VALUE.cell18}
}

proc update_MODELPARAM_VALUE.cell19 { MODELPARAM_VALUE.cell19 PARAM_VALUE.cell19 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cell19}] ${MODELPARAM_VALUE.cell19}
}

