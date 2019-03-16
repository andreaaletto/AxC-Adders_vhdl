add_subdirectory(Common)
add_subdirectory(Cells)
add_subdirectory(DCT)
add_vhdl_source(RippleCarry.vhd RippleCarry)
add_vhdl_source(generic_adder_subtractor.vhd generic_adder_subtractor)

add_dependencies(RippleCarry FullAdder AMA1 AMA2 AMA3 AMA4 AXA1 AXA2 AXA3 InAx1 InAx2 InAx3)
add_dependencies(generic_adder_subtractor RippleCarry)
