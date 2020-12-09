// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:25 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fft_mag_c_addsub_0_1 -prefix
//               fft_mag_c_addsub_0_1_ fft_mag_c_addsub_0_0_sim_netlist.v
// Design      : fft_mag_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_c_addsub_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_c_addsub_0_1
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fft_mag_c_addsub_0_1_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fft_mag_c_addsub_0_1_c_addsub_v12_0_14
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "32" *) 
  (* c_add_mode = "0" *) 
  (* c_ainit_val = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000000000000000000000" *) 
  (* c_b_width = "32" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_has_ce = "1" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_latency = "0" *) 
  (* c_out_width = "32" *) 
  (* c_sinit_val = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fft_mag_c_addsub_0_1_c_addsub_v12_0_14_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CKTbR//NoOPOnyZjTTVu+KUENZ2r6AmDbJATGee+65KBBCxg5qVvqx7GfXaaKDYhlIzPPxRtZT8d
UOtw/s9/erHePklfGziccNtY+g5rj+wlUAlEqbz+n8QO6qoytobjHE5g2W9xm9RELb5JbTz7ZShS
V/CWLhYgcrzz9mRUT/nQaKL2fnHYyvUz+v7vI2+DyyzaN0b1xDPE412u/WjVI2GohG72m/hBB3q+
R3BEYmGej1fqdmheM0FAjd7lG8bLF9QCDcQ7VpDgf65m5VAryK8MypeeSGeNt/vPsbAlXPjsQibM
trF9PiM0Onzbrb7n7o1NIQEOLEefewk83W4eYA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BF/PUp4YPGbKXjtL/gn+9sHcTYk1RurfFFx8kuZhQxBBF758ejETQjtvYinhKHZMWBcGr0E3NYLe
/rMRB3QJlHOrFuvbX31HnY4bZvhbSxuH3SgtJvPfDyPObzncQ76usczUh1cY2ULl0B0hfhqkA2Iz
ERf+Nl5wrBD77FchEfgGE1p4Ot8y3z0hij4MkTtP/E54JQ4aUGQdfqKoHbye2Q53BLpBOFxbLmLE
Mv+1IKRcnhaCt/6UjJTCqDY9gz8bZZazmFGdF816GeqKe2MunjHDuD8KVL88x4i522dNuPuaP5jv
/aS47EoMrVaZU4gYI/2qV+9JBVyQh7zUwTDLAQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16224)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
