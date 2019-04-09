add_vhdl_source(BC12Wrapper.vhd BC12Wrapper)
add_dependencies(BC12Wrapper BC12 utils)

add_vhdl_source(CB11Wrapper.vhd CB11Wrapper)
add_dependencies(CB11Wrapper CB11 utils)

add_vhdl_source(BAS09Wrapper.vhd BAS09Wrapper)
add_dependencies(BAS09Wrapper BAS09 utils)

add_vhdl_source(BAS11Wrapper.vhd BAS11Wrapper)
add_dependencies(BAS11Wrapper BAS11 utils)