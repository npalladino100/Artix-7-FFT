// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:33 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Nick
//               Palladino/Downloads/Nexys4FFTDemo-master/Nexys4FFTDemo-master/src/bd/fft_mag/ip/fft_mag_mult_gen_1_0/fft_mag_mult_gen_1_0_sim_netlist.v}
// Design      : fft_mag_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_mult_gen_1_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_mult_gen_1_0
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
  fft_mag_mult_gen_1_0_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module fft_mag_mult_gen_1_0_mult_gen_v12_0_16
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
  fft_mag_mult_gen_1_0_mult_gen_v12_0_16_viv i_mult
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
F/UuXvrRW5s6mxZbx2AfO5Oer2JECtKvDsEvWnI+qlB8AjKyd4jCnGLVQ2ThCWtYbZv1+ozoCRwQ
atQUrJJ8fsLjlyjcWw5a3n3Z8c+htolkA+695ZiDo8qk6KNdV4y2E/r+Y4I3PZbQDVlGc7d9wB+4
d0Qj9jJs+NP7kzJksSL8j87Jfbrt0qIUv542JgzkFZLGpywqbc4Iz6tscs7+bazfHO3sw7sN8Ng/
KlWkq05UgLqwRiXW0Mt2KiSjDLyiO+pjG0atExv3iGGjrQ481o1vGWEKUjiIuB8yoZtEknAdgTVq
fvnjQXY61ycTwFWayXo92BeEzseDJLGl453zAg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
becJDmQ2cdjku+c7+i2Y/DwYKkLPwyG13WKGTxCpyPruzt/PCAIn+TF69J8HUgYWW8jQkz+bp4e4
bdWEUWPxrlHFm2Dk8M/C//OYo9vj5oUBRo+MvWVgNHDePLs5Z3cdp8m/MU5L6GzZc02llkSEEHwQ
qfP3RmEkKKpq/Dwd8tl+hbxgdUfyjeWUbafTInroYB3PQbkWS13mpBVDfGcJDSOomilYrMo6KQb1
YrWdMMBwCNQGNAUVyS1mPo6ukNiblQHgFXABzHoWMWqV8dd26DAQ92znSviwsjWECM4cI2z1fu7Q
bdwnqAeO7a0uWZVL+Zd/b3x1PzP8vaAiKUu23g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7296)
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
