// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec  4 00:06:15 2020
// Host        : DESKTOP-S84O08T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Peter/Desktop/Spectrum
//               Display/Current/SpectrumDisplayFour/SpectrumDisplayFour.srcs/sources_1/ip/clk_16m/clk_16m_stub.v}
// Design      : clk_16m
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_16m(clk_out1, resetn, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,resetn,clk_in1" */;
  output clk_out1;
  input resetn;
  input clk_in1;
endmodule
