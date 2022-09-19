vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/processing_system7_vip_v1_0_14
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 questa_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../pynq_proj.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+/home/krunoslav/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

