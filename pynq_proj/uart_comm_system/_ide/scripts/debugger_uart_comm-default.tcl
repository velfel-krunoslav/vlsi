# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/uart_comm_system/_ide/scripts/debugger_uart_comm-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/uart_comm_system/_ide/scripts/debugger_uart_comm-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-4ba00477-0"}
fpga -file /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/uart_comm/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/pynq_proj_platform/export/pynq_proj_platform/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/uart_comm/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/uart_comm/Release/uart_comm.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
