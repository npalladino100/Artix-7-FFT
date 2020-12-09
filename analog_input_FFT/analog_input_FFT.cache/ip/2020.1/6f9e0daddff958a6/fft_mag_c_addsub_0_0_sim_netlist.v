// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:25 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fft_mag_c_addsub_0_0_sim_netlist.v
// Design      : fft_mag_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_c_addsub_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14_viv xst_addsub
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16368)
`pragma protect data_block
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
YYdwaGH8jc/A
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
