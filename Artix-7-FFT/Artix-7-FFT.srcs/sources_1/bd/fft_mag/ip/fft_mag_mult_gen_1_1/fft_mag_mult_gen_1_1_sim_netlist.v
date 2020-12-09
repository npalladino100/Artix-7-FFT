// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:32 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fft_mag_mult_gen_1_1 -prefix
//               fft_mag_mult_gen_1_1_ fft_mag_mult_gen_1_0_sim_netlist.v
// Design      : fft_mag_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_mult_gen_1_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_mult_gen_1_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 104000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN fft_mag_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 32}" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fft_mag_mult_gen_1_1_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module fft_mag_mult_gen_1_1_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  fft_mag_mult_gen_1_1_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZqI7Lq/aGyAcoaejBEIk07VX9jYIkvdeTPQu9dSbDEADopcPNa+0k8THWemULZmXocovtHBV2sQ+
UG9Mr3L0hg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
R4vPs+jPUBq40hDi8U6b9avbUk2Eb50U4A+mDDli/Y0olyqpMjS2bHK8VDjTVAFuQ+H3qih0cQYm
+ik1m47VLNMfNDfRLbftE2okRK8Kx81MRcEafr+7z29VxyL2KSwmOKbcDCEkIT1VX5y+96x7q9/g
O5zX1cVuj6hrFncQjBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHGRLed4zRtfx3HaMZFysMR3Ua1JohlSUQn/uIq0QNaCK2P96ztDgqQoqe6ZQ11betfsHTRFzq/1
66ClFz6QxXME/fh2KrrXSgUZxYxwfstEZlyOThrSfu+qzCsdk0R654q7wyvVT8+Lni3RuXc5nFXx
raCVZl6qLm50r3EadUq562wDBW7iVkrMp3OgccKyJyw39sT1Jc+0IkzHuHqjKA44tfGTOOSTHNUj
YgsyeZCJS72pabS90ZfprHyjsELB7Bxw/M9/XLEV7l1LP+SCDJFvOP5dNLZDBmwYIJ5OoU7247Tk
wYu3m6ZFZNnTwWGI9SAZJyiXILRa8hVZPL9TSA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OU7rNiePgxinwm/ruLBNeniAmTTLdwPhOZ1i35IGtDWXtaPoMnsPLRF6vnJo1xeYUES1MIlBqaG4
FUeyfrnBl3ofk5rfTbxL16dBcEtA8Z/duJARcLCIBD/J+xf2VlSqIo8dG9Ww8/L9pBTHpNAObSOU
o17xArTTrLfHWXZRGfRwuRpGlTLTYOMvS1AGhQcPbXjHrlijOoz3XigDVsnyGbHfkSgOlGBCnyDS
TPebi8IC8YIl88ieW+lqTL6jl+3DZ55iTfCJKbFt/HrE1Uou1l+60xI/9h9XhrNzE5ANic5eFmyC
tdncsHEBtx+UfZhyFrHV8z72yZoLCX2rOJ+IJA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GUoHfgebfwQKNkw122kR1rRfB4ZFf7/0xjFIvV3auOQ9RcZO2jgecvvtUAn3nocoMNPW1jFFZW0u
xgkVDSrwVJrMR/obpu7gqo1n1FD2E5BpOJV2Gwso9aZGhgTdfd0mINfCxPi4lxUYuTw1vd+iNkBH
peC7j2xzDHSu6o2S58c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lW3oa+bS7VSdBch0q4Lk4kIel2MxeXNlqo+JkBKYCThE5vtBv3Mob32tRj6s2h8BAos9XGsKRu0r
zWpu3cgAnv8lYIL4/UPBP9T+caGqWHHoGULrLn4zuybUvPzfGPj+ANXGfPXBomTO48UgPFWBnBA2
3vlOjCiOyKLMQAUrg8RqpfdYfcnwHxk8ebrE+lZJf6NCQtrqGu/EnH7PYFH/8MSQa6yey02fLQ2J
HenzdGNam7fu3z20gETHgePuewowRrJu5bEZOzlor2RrSnb0hcSbcO4/KSA9EcbmjzBMjE5uRYAM
1y+0t4rNGr+0XAjpp8m6B8lGF+m1jIGYMJ55eQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYjoOGO5c2rCxRUY5RbgjfKwpMKJQrCDGPu9wzqv2ZhoT9Trod7xJlCnzNNU4kNJPTgmDf05Bkoo
EvR1hgWeTmTgCGdy7Qci0Z0L3pdxnOg9i69qsJO1qAW46sOYPeZHpvATo3irsreTIyOEcblYRdLh
Raj2T02eEhljrx1UdWXHwIq6kJGwbPaiMRXRJewJ75w53lF3nNUwTYgttUbm/hKuK4MTBvyDWlHF
UReBw5kEbERTaRF91+HNJUeoBgfLIgVhtPzX3Yzqy4fl1PxZ0BzAGNRQWfLI4TBSyl64znmxdzaS
+wcpSJ3OHZL4sBSIwGqpZ8UuNr53DWWwkd5lqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F93W5rP9wRsskpVAtvm9VhlFJY5TOuivcFKT2bVYmeqxn925TMU0N0nDRJZmC+O7NbtC0kbL9Hfv
iPaQAjkvtWKCEafU216A83pjNwYVINq3GbStXAtCrvf3KbYJMQPnr6FzKWLa0RlmEqf2z1LRIJMY
cR3LKzziLGgP+oQLz6W3siXeoyqxsbDm+dasSbu2YxzGAvkTos4kX2slGrQzxYSQogS6j/MzVgIk
Vhsm3BYDbtVT5TsiHGfRfi137tS2Q9o11KN44GT+JYigwORe+GyKi5xjI6kGPl1N1DK12TlRGsgC
Wq2YWMn2ABYXE2F8mkwPOJqSaaAR0S5MMCjkaQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EO2KlFB8vWgjeXvua8SEZL2APl0WfdPtqoF/0VTjBDZhkKh8T7GBS9tSSrCin7kHRBUGF6hOUPK2
V0JQtp4yW7c3oVbMN2ePIV7UdtkAszA2lMqOqeKJbWn0TfxRWL5adG+jGlhhYEbaT6tkCGPbbtbk
y5Kew5kT3RyGP8Rb0tim3cGvqi2BdBxqdc5Sb+Vyj0havZUyZo1AsjuLnNukDIYIrPCtqOY22MTp
VlNOr/u23OIMx+xx7Z4aOvZacPCxfg662ljyHetf5a0wu31WI6zf/69lkXq1iWJtHgEJn2iDpIWs
bSWDEtGgKAFHGKVAoc0vIGP3aPG6DIsqRyQ90Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Eb4UN2UyAv9CHQjbBSkyz2hnY7UVGHFHVBRV58iOufdXSsIimlC7c0qwwlUwXujSPvY0X4GDHTyy
cWLi6guo3WqbL8tNr9chxYFqrVWUI1YWF4+iJtxJOP0wsvnql+TKT3FdpndJ3FnlUW7QETZN0lV7
EXw0JfjzP3vSNoEcX2NnzZqhaSnDhmw1VqnI9lqKXmJaPO76ozvGGLeLwuGrFcdw4cSbHKIH9zcu
wkkBFPXxQfvoTOYmk7SZ1/y+FEVyDoQuySuVqYjjgW3UbLZHQAiQnBnEXj/6rK83ej2VcH/3jRK3
2k3AVheSUH4PHzVykSBeISfn5Jj57+2NH56q9g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ye51bKdM1xVzgHFLSpGGwR6UGPAoL9jVJO4Oh7w8nzrhyTQ33kFIfusBI96piYfKhrsoF6xqhLJe
F6PwpjcRdykghyvvNrWS5IePasB+Yvy1onr8MKu+m0ooLf6t/CkcrTNhP3lFfOGKtcWi60YNDgZN
spyzp9TQ3+bGdMM1GgNVpT3/KJqBAOQmklvOMlcc2IeXkBmO/9LED6BWeS3i4glH3q4mAJLlitvh
XKRbyZ6z0Nb47Tmag4lXHulPvODPXCVPR/YTYtKJ0pMXMeiU5SOv59X8cB0U314al8r6iyuYAHaP
QXsbJx03Y1pY90aaO+25lZkO5EuoTpi4DVC3GA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
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
