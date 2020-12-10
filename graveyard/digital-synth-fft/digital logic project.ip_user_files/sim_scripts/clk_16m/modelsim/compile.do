vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../ipstatic" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m_clk_wiz.v" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m.v" \


vlog -work xil_defaultlib \
"glbl.v"

