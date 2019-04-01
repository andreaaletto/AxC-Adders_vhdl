add_vhdl_source(BC121D.vhd BC121D)
add_vhdl_source(CB111D.vhd CB111D)

add_dependencies(BC121D utils GenericRegister generic_adder_subtractor)
add_dependencies(CB111D utils GenericRegister generic_adder_subtractor)
