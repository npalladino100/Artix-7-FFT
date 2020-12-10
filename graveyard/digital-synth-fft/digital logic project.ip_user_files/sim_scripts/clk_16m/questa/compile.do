vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../ipstatic" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m_clk_wiz.v" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m.v" \


vlog -work xil_defaultlib \
"glbl.v"

