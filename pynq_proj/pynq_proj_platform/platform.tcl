# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/pynq_proj_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/krunoslav/Xilinx/repos/vlsi/pynq_proj/pynq_proj_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pynq_proj_platform}\
-hw {/home/krunoslav/Xilinx/repos/vlsi/pynq_proj/design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/krunoslav/Xilinx/repos/vlsi/pynq_proj}

platform write
platform generate -domains 
platform active {pynq_proj_platform}
bsp reload
bsp config stdin "ps7_uart_0"
bsp config stdin "ps7_uart_0"
bsp reload
bsp config stdin "ps7_uart_0"
bsp config stdout "ps7_uart_0"
bsp reload
bsp config stdin "ps7_uart_0"
bsp reload
domain active {zynq_fsbl}
platform generate
bsp reload
bsp config stdin "ps7_uart_0"
bsp config stdout "ps7_uart_0"
bsp reload
