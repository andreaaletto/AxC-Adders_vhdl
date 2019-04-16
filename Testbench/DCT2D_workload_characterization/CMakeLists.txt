add_testbench_source(tb_BC12_wl.vhd tb_BC12_wl)
add_dependencies(tb_BC12_wl BC12 utils)

add_testbench_source(tb_CB11_wl.vhd tb_CB11_wl)
add_dependencies(tb_CB11_wl CB11 utils)

add_testbench_source(tb_BAS08_wl.vhd tb_BAS08_wl)
add_dependencies(tb_BAS08_wl BAS08 utils)

add_testbench_source(tb_BAS09_wl.vhd tb_BAS09_wl)
add_dependencies(tb_BAS09_wl BAS09 utils)

add_testbench_source(tb_BAS11_wl.vhd tb_BAS11_wl)
add_dependencies(tb_BAS11_wl BAS11 utils)

add_testbench_source(tb_PEA12_wl.vhd tb_PEA12_wl)
add_dependencies(tb_PEA12_wl PEA12 utils)

add_testbench_source(tb_PEA14_wl.vhd tb_PEA14_wl)
add_dependencies(tb_PEA14_wl PEA14 utils)