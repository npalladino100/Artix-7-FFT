-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../PWM_FFT.srcs/sources_1/ip/clk_16m/clk_16m_clk_wiz.v" \
  "../../../../PWM_FFT.srcs/sources_1/ip/clk_16m/clk_16m.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

