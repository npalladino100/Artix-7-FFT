// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:25 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top fft_mag_c_addsub_0_1 -prefix
//               fft_mag_c_addsub_0_1_ fft_mag_c_addsub_0_0_stub.v
// Design      : fft_mag_c_addsub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *)
module fft_mag_c_addsub_0_1(A, B, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],CE,S[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input CE;
  output [31:0]S;
endmodule
