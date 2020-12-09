vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m_clk_wiz.v" \
"../../../../digital logic project.srcs/sources_1/ip/clk_16m/clk_16m.v" \


vlog -work xil_defaultlib \
"glbl.v"

