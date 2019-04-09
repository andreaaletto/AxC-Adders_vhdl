connect -url tcp:127.0.0.1:3121
source /home/andrea/vhdl_adders/vivado/axdct_project/axdct_project.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279653322A"} -index 0
loadhw -hw /home/andrea/vhdl_adders/vivado/axdct_project/axdct_project.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279653322A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279653322A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279653322A"} -index 0
dow /home/andrea/vhdl_adders/vivado/axdct_project/axdct_project.sdk/cb11_driver_baremetal/Debug/cb11_driver_baremetal.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo 210279653322A"} -index 0
con
