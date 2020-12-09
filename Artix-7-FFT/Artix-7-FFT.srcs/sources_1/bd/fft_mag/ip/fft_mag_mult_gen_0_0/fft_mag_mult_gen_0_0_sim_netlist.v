// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:32 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fft_mag_mult_gen_0_0 -prefix
//               fft_mag_mult_gen_0_0_ fft_mag_mult_gen_1_0_sim_netlist.v
// Design      : fft_mag_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_mult_gen_1_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_mult_gen_0_0
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
  fft_mag_mult_gen_0_0_mult_gen_v12_0_16 U0
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
module fft_mag_mult_gen_0_0_mult_gen_v12_0_16
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
  fft_mag_mult_gen_0_0_mult_gen_v12_0_16_viv i_mult
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
