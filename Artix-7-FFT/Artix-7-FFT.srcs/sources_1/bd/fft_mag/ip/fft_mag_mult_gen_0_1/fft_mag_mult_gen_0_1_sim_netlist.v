// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:32 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fft_mag_mult_gen_0_1 -prefix
//               fft_mag_mult_gen_0_1_ fft_mag_mult_gen_1_0_sim_netlist.v
// Design      : fft_mag_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_mult_gen_1_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_mult_gen_0_1
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
  fft_mag_mult_gen_0_1_mult_gen_v12_0_16 U0
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
module fft_mag_mult_gen_0_1_mult_gen_v12_0_16
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
  fft_mag_mult_gen_0_1_mult_gen_v12_0_16_viv i_mult
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
