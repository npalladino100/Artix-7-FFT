// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:32 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fft_mag_mult_gen_1_0_sim_netlist.v
// Design      : fft_mag_mult_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_mult_gen_1_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
`pragma protect data_block
W8/tkzkUVZtNjNOmb7Vsw/7OFvQjyv0kaJmMSFQqNjmgmZzUzPOWWTPRBeZBgKtuG2QbpHt909K/
4zFOOTExNb9UJFhGfg4pWeMwfX+XoeTJa7rvcvFkLLH2wSgl2fadU51pd6bdpEx3iNOpD6nof7Bg
sNS40TRW+pNa2DD5H/DBvwXdB7cqh29YFE63MzCb9CMTGx6RVcTwMsW/NAVyoVlH25WZ/T0DLyMN
mdxYvzRHjou7bCnfDkIaIAbGQ6d2FmLtDWH3N1FVHSonui1rB+NGf2KMunQXA6OzqQPyBgJPDPAs
8g7jlXr5srXorRTY9xs175AhsKpFs/ob9Y5ceaG8rTpYUSSoRcHCjrIJcCbZSbfVKye+dk0tROVL
FIfZHyD5rejtiIVyvLEkDFFJ1CAarAP2dTmW/MhCxgyYUHQwkF4vilQDLQ6SbTJDxLM0DX/VmSSQ
S6CLOQPbt5l5OPk+YNB1HPiTaL2TTjOmkh9fQsvKoZnIF6hC3MIrMZkQFx2B1Rb5PWmxd0oCyjrC
iaIKccqlQUDUpElYrgrqANv8/dDYeiWDGeKCwP9esewr8zbglp4Jz4L7XR0U8qquWPxxwSSgrhr1
4F7JgEpjLGYzA0eIiZmT9RU0Z7T8Pc/+497eQthkjI/AVoPKwQO+20u/psuN+EFGyE6v72ZT3PKc
cT3sbNNTpEY0BQ5/gyZa1beKy+mQHtBmi3YaaDIkK6JhaectJ7NDWGghcthFDPbxoeXmX907AJud
oJrc/AX0QFt03uIrUa4AKo4mqOER/tS4E+O+B/zmMxl8mOjar1sUhAb8YNnupkGwbMDvpohdnhjV
tyh1aFSyXPp/5gT2tphtMCUbIkeMt2cc5K6tprfgLT253LePNSUQGXa4js8LJbdsVhJBmIz8Ip2d
2KlHmLf01zUH1f66xDvTpmYnpPZcnAPQcY8b4Ydjjb/0xmuBW9brMCi7vHPdWv88tU+eVEt5AR1K
hbWu8Z8iR5sVDuwcOl3NWZYEXo62xLHDFdJ+ix4gOTtPy11JuDYZxgYQDOO8S1i3H4W562pUSy+x
xBJNtS2U9stsR+iRde2cOOtUxQc2s6GW7OCVSnxONSDcwGVWWu/g+hLBUlkGm4ZB8JefXdOFjLmZ
KN6dCn8ELeUYGlD8l95bgrEcJs3pTc9hT9/e/CQBFX32zHDU8TCIotS75FOSL/eF+/HHkqCjiY91
eIqHuS875hTmGQ59ZjeZxzCRAtsC+h3hL+wFyLOzKxJ2sxAV3tUsN/C8qXmZSnjW6yoIgpdbnzJn
cyGtXihoydeWuVBdpPkyKPgOIoIBkuorYm+dCyxrPV5ox3Doo/yrcqDKEEoD73H3CIm5QDPgHkuA
y2rDbF/Ye55OCO+HZUjrWUxAYmnXpu/baNFZ7lzoXCIEr4ZlzmIR0mEE7w/heMth2rHAxTpSXcnn
3mp4z6s4Q9gXXCYujQaKh5wbWj7e0e9S95+VEEnbo4HwUsEhkabtx3idx464Dud06BT9H54sLivR
wzaVkH/RKaHzGs6W9adrOE34Yr1L5Xw9yJetKZ0iYMI2qRCtmGr1Uva2oYXh5qtG8PiWgxSHey1k
0/2QFP8yiA7pnMQVnWGTGPIZVqakZBPKDl7BKebCHxcIKPoyqr1CrNz5RD7/BMJ2S92RjL/ulNYl
9rDh0E6d+h/6jQm1UBsk1mNyM51rr+bqHqJvJL6TRdChstpPAGR0HVHf51EJlZkFNiZlxuovFCYe
8L0Dmtm0if0/H6q/En1PMoZPVtbwSCa2ZZYJ+E6JMOSQ0nl9MNfYjUiGWv+x3fgMvrbn4qSkVIZH
40psGAM/9fyobHWSNXeA7/xGUbka5GxNxiedIfqQUKgBRbk+mNDHtWnjJmxRNpE+CYO7rYfuAFc1
Ji61x7GDvuxPvOcddU32DRClO9lKGzCc1eDO3IOuPsinG/bwK3sARTvwysKuzIrGwKd2KiHl9Vsn
nsFHbRZVnDm5ChvRcOcq2+bjUKrdHJuqFY7QK1IAJPm2X5w5kuaDk0iDp4TrturhLkaKTidlBWrp
q29DAPNBm8PGyfyWWOmAj6gK+C8FnUHbx5N8A7lUI4R0lLXvc6bR1xBzbxPHJyCooV559ECVd2ib
oSgL+vgVkr5AxGY/PRkC+nik8JZ+C6UzUGrhuCqEeJumG5/D6cptEkS6NdA5B0/vJyBh8YDL10Td
uKnSZAQ1q+kD9UKF0mS8dxHU/iXSdDymuF/Y1K5HVOlKMJi8LdjTKtDElEv0Hwo2u2wLAXkJmJgX
oTY7/qnMemV3gQhV7d8nOgdAmgyXXgvDfHXGeY9RKEmuhY8gxyfXwyzoSXKwgtkN6mIrJSJ/vHbN
C0AQoCMkwgwp1wSuo9hAalR/DpAnuQyYgh0qIco/euAsKD4wt9shC3xKMDcOHMLAlP2Ue5LKgvsL
QvPA6WgC4zI2FywtNjwfpX7az+GLlZufahpqux4T4ZqbMupoG+ae7DwPtfOr/qKEQuvCdffM7mLa
PfI0o2EU3fAuL6E4MFLiyTLWJDaUbLFvsJfR1VdFxhQsvDSSXW8693BhZpo8Km6noMJJyqFexqVz
Q/20c1+YymSP9ydQDBdHBJ9pUDgJPkEYwNxgz3t1AzK0Jv9r/p69j5BmqSXcMeqeNsUcwUN9/ERc
bs552BNFSYMgVCs6A1/rtwN2tWWNhceo6WIf2YQkrdkHMJ5eqIrBRnJZPyvqml0aMH1ulb1PNYfM
xtff+K/oNXt6xo8AAnfOfsXEvo+mc2S0hwZWnqsddNv4l4DuNE6Vx9nz4yNrnKcTdJQnlaJawOTy
y+eyL511ydToR6ONe4qIPwmxIFgRaED9mbErPZ6wi581lrBbaeXrFu7CeIT/RSnJTxmGH9Bq2lym
GSu9YsX/IrguoaAF4r++ng75Tyctjb3/ag3/w29KKrJ9KTRhgyxHluT1bbOiqHVFD/Uhl53XK4PT
N4VoXohVdMowCCU0/SdcqFWZv7kxafdeqkokOxkFOkGLxMq7NUPI9a6GjaElGQmV/7g9VcY0GcV5
jdsB+BJYrGL4L1ILbSbYZfkPMoLx/zI7vnpbhIGyNpvJo9JCPQuKpj7Li4SgpHHEFEJ1q0za52Dj
QXsl/03xfzT0lN7rEtaVgFSLlhtqmT9ICbFV9Tc4bH29WgQSQthuA9umyGkK8V3PNt3saksIGUTa
cjgkY644bgWAtMstnjVRkRTdWDBSyZ+rryW8Hjg959qSJjMngjDNdVvY6tUDj1GhlhzR1lKulNCH
Y46Yua1gMqiipLJJjCx5j5iRZje+OPMxAx9JbLmOw/ndHVGQB68ZxLX+yzQrEI597Tsjc7l1WEg7
+4rVj8awuLMb/0UaN4lISvgBaQYdG3dh0zYw5wijyNmdQ+Jnnxp+u4rvokfRY536JbwnMdeAajHY
dpslW2bftQITQsMXE/vc3x8rsPhIWIMl2xOm94FZ8dLpUHWHnvNm/PxM6Y1XMBw+RbKof0tHkIuo
uaZZryuaeXUV0IRnTY8pB+kE0jc8bGfzOQa181RgC2eKrbsMkmFeHfe+6mpk//aq1+36BZOcAh2X
FRmQJkwRgvN3ME7ecA43Dc+Wc5aQCozQjTRmTZuobiRdCkhDhBb/GNMOAUfQFY6RXYMKysqmvZmT
Oc69oAMLbg0MAJVbZbLzpSmQGri+OFq0UGVjdUoyWVcJDMg/polKcXsmVIjZcV98w25R9Dcz1ZBq
SgDfZ6dyrVXJ/lJpAxPg40dF+8qsRG9aCxck7ABlqUOFrNHCD7FLgzQJX/+z7iYIXDK9CC84DU0d
fVbgIGejZxbf3wrpwaVvL0XwFjjx9AXaqKptqfHQaoVfcBjL1SJsNNWXBEl1hbMZy+Hn1tkb7Pgu
4uLelozlJ+q05m+7BYqFYj2FrokQIrSFv8l13j7ammnmgj8paoXfl+Hikch9jU/5bUxvtSNk8bvF
Msu+6fyEtBSRgqOAhXF9CHcKGOgs1PG6Gp3vhUwlJQ9UfhU3FAvMaddp1GbJvqybaXQ8hCah5pkS
agLuySwcxrvSXwKY23UblJdiVlVZpSjEKPq01dllh3WDQrFCkpwTuHVUvb0vrEeUO/UTzh++1gUx
I6t7lP3qXU6vc4bIR0Wi/Z4gKJ+KdqOY1OapHSQptfzcAyQ28N+UcChQgEQ9JhJlc5Istz3Q1jyI
PM9FHacFvCSpY9XjMmC8QwDJK14/R28s78dC1m9Wtj/EGdFW1JMySx821uw9QkbIKS6+nD9b4q8y
Ty4c+3dDx/hymy7C/9nkZandgxKaKbJtKPBmwTB/JK4mQnMslU+bOB5IvIzIg4tk0vf1TPN4cdkV
zlByCxsZjKVL/wkZ54e2SPT1F347HNRQ4nxAIZkpDdenX6QDE/3DkDDjyXF8HkViWabtpwML7E5+
E8yNjE9aDtfwKAei0qLKxWCpOsot4ytTia1P7q19Ovzq656tnBAssQ251lgJq/Mr/Jis2GR6rFAp
8S4waNwvOyA3+eHeDptPi/DIbU+rQQO3Eq4lkAAfafRmMn9wETYS3kDbr+jPyZWcyN3A1jXzIm7m
W73TjmvGLGLFVA6bEUyO04b761hSbNa382LSuoI1iapSRE/E1vkylfiQdjjEwu+qkUjjyO6SwVzV
96kX5dpK47AuWluE/FtNNP+PdQ1/TYP3KDAtG+7yTj6a7s9XtWWt1mEQCYwXFIxuamxBi2wUX41d
kMWB2mi/Or/wnzxJYKpJfZoBkTubm7oBvkmxIxae6M4rPU6TPv2P9aiV1QX05EAb9WlyKfPrS8sU
FlihUViaSPFQEaaUvc/sMgaHZ/EaxHkN+lcq0zaLfvbOEMTai69544E4wlXFNlVsa4FK3Xh0+v8d
Vw1iB53JD+Lc6EGtaQeVI6id1Og1LEJ4L1T75WxP7KpuFijjCepCKP2P+F9TfmGtx9ZZ0CkbhBl0
7wLj+vk2GtuLgttAWa03n5jD+7I0XWZh9a50jOcLqWaOlMUrkN4jK5cZM0i2aYAlxm8GfgJZKT1Z
BZT2EVTryaE/7B/q5WKtyMPjzgELYFvcUErRoDWOsFaaXQez47mUqh1yyRyv+M3aQifhI2vaGh28
YowI2clSMPXyl7VKWwGwd5y0P9hCmFgm8XAE0llwP2BY6s24/Y5Gma9xsuYIRCG+6WtEcFAGN3Hr
fd2wCbdCTTMdJllbhnKYwNtezxzy0rgTzsb21oItYazX8QnKxd2o0D5yjNstprxa8kKjhSavPwOw
8Je3B8sTgxx2ktkCunx+m4razCq8HQqG/pd20XzgFd1ttHnRTDJZPx6Gr7w0HpK/EFU7MmC3n/8F
MfaXA0kSGFU1RfAaykklGiA8/9XZbgy1Ok28iVltWH0PqHCu7NLPRjmMheGVjQIYANtnBsdbbOae
oJq6vrUcHBd+2nQG3QqzhzHsYjEIsnK6OUKTE81AsOm11KmH74u7RGhwnm9z/DYSnRimLmK1fdZ9
EZaqt7tVbou4XB03ZGcTC4rA2dZHkt2inv8ihDZhO5/j/U2bpegWWqIOrebJIrE2wvtqmOTsqH5v
QoncqDju21ngvI07kHyP4u43ZGFXgn30eUJdWGpCEg5zQ1CkVgpK2QjMHA5Nj6fh/JWj+WQZAzvV
jsTyJA2vcp3hvE8DKcwQXsIZDJhk0/NkaWtVp38YuKpw9wsBEFli9XS1P/hXOwYmu8I2f0APGkbH
JzjirpGvdjjsMrZSD6ubUNhIWfe3VbUUplO4czyndqJkkScSSmstPSC7TUoqweckDmOfySSqYqiG
4hrkvc7hyCnMypIZD/TiajinVire5cFu6eYAjIqpM5P3zy5NJXr+fDO/jS7LIo3h2HAl3lv2ySb1
kjF7ih3BBfzxqYRm5jOueTXy9RRRheFwFoWbnSyeJBpWUUGMbYhc2V8cCakGBMod18yb+TC4XS/2
pGCqrJj7EvPzNh65B2xO0r0+vsZg2LrWmL6s4DIQn8FNlrhCPlrRmorAAeN1jZyUbEY6N27Y5Get
oEJzZhnqPaA8okcha8ZYVc07GVF8Ukul+3+Tu8GCrVJXj6EHuHNj1F+xm/LwNeR+mck4Q2iEqBMV
DM9LB1mAshQCcuKoogYWCJWU+L2yUDYrmLa8RC53qKLXVwUTzmrky3UxjgCSyAEjDzbDw0D9WIB0
Vhp4M0jEN9UFWghfX8zCGm9kpLEE2RiVfTOOVdLO7XQSpydPiCL+grcTtmbzkr9xNe/U7iORwQAg
MIwcVkSckCoTukLol+J8y38bXRb6frn/ruc03ajB4eftT9hR4DbQb+cmssc8eun/kBM8v4U/tkPw
fQIclXt+9vuDVX9mJKSRP4APU4UBDAb60A+csCi8mg9nWXYiprgCUhI39upDC8oRZkYKZb1CpOhg
wpEfzkOhfZ4eJnxN47Mdkh5obhXUES9ochh3Nz9gJnBjBaT0dtgEK4g6RysNZYFTOkjGeBrILjCM
7TS1QFZsCuPHMvNwOP0NbuvspA9HuKvrhxGjHCNf7C6bcTj9OeWt24o4MQNdd5DcIgDWjKhKZyGU
XG+l3uLmwVKNpcVe7MH4JEmXycTxryTVqlTSvhtOcBTtjh7KBHcSUZESgHRT8PnnSIb7R0Lg+Hf9
oANwHcAKiaBjIgG/ii1imxqdtJnEwnoknQlNtAmm7ZKanzp6ANWdUXBD+3ENhr5T75LivYHe6y8Z
fSIzYeUbEbLBHl5pNmniAhASUKAQSo44MkWctky9Gvqu5nab1RQf4wmlCCfDkBox6OR6VXcgfJYu
hU+5Z7eS5nJDzc+OqEQd57vctCc39wxjRglZIVs0qAHVlICWGVGDCOowFWe0YphvUn8OZfwpc4X7
fTiht8wOPLwny5Z2MRsADrhigc4uCjzHkV42xmkPqrPYH9rNF8W/Cp1FFcY1olKwnjGmQw42SlGJ
BwDy+al8QIZAUdCRbY7/Ne7uuEk/PcYPCsa3Fk7WtUqKpShkmyPRs1J5Gwy1XNa7HDKGuCgMztV6
YTQiF3qfYPEAR1JAyfVPU5xNd/VpfSgk23L1OyoNaY9vKTyhaeUhtMra4NMQBfBkgMSKWzduA9Nz
Kt8IDXn97yMGi9Np4AyXY8YHL4Kzl8/P3IA5OQVuJfbRW4PS5hYBVWmDSJIsnQQReOUngV1H8PzL
MOMG+A0ENT52Aoe+8vSveG73G4f2o99yLFKUDmfKaasW0KdTs81dLbinHw74MJyXfOf4GEn2AmCd
grekSG85hz4h6dy4w81LSd+h9uuKQAfYBKFcx/F+GEXWFHA8DzTc0TCngqhn6IXMDX2N8KXFoXvx
GkbFJgXEmnUQNzKL47dOQoJzjoP+q7dpV7vZcejiIqwi7juR1V56xtYnzZ1edlDdrCg3pMSomnfW
zh98ELXnPGkLtEBVf5BWikUOXFyNGxpqjDDAD4lN1yE4Y0yYzlldE69qPPwmEN7stUKhzz5688Mj
1NSQFvdW9KHIfhRBHuonEqmhK5EgWlYtF6NrcJN8QIdo13qvCkVWsfJHa53AANb66tE0vUFD9LdU
OUNk4A5QdZUcSQXOWZ/552cBl0nptXGDwYeHXMjfRPZSsu8biSAyqGobqDWxZzhmpj5gEW+pcUGS
kLHh+xg7imgF2eU4UK/oFq9NV4X6AhcDpl0aLlM3aAJylSpdC1SS7FEStgGB6BsftH+ElmRPFJVJ
lIFbGiDpzdjOpoUYcsaDA11r+GmBPkg+Wa249g56sWZKanmwfXw7FRp24OcX3W4Fptu58jRY/j9S
2yeaqkXmimsvCl6L54xN/XRbgNDjEbLqDHG3OVEC1QBeShVRWqtfLeLXt+a4OEBYBthZPmyBC1dx
AfWToMLzpUw1xNAW7SgOBm+P3klw7xU14rF0lufxKNcS1Y74tvynBYPqWdCBfTj/YFUK6ADlLluX
pTZ5fpuy6eJV8MeQemFFtw3c8lI3WpmvMo10ez3F3uDBj79qTJgLJMVwz8SM25Oa/VsSbwsFjEPf
CnC38q0kouZs6du672001iOLJgIYGvjzZoVajzwnKZEdoxOpFhm6/fqtNVpjZfJtBGF/qXcqw098
kIPDjmRodqPSWYkfi65DfkwqRiYw8cD+14pMhD7rq2m/GEN2AzPLSKwoD6j+Rfrpzunv5lbjQ2wv
VIX5lQitP7yCxuh17Ae3JulIgReiuT7+ILYm+u3YuRnqrj7LPDw/yWAcVljDGQk20CGabaAgClpY
CoZTh22CxlmukZcLKYW8VjAc2AettLJf3UcZbQnFB/+6EQ8VtIOEHwujMTZSmnXr2MX+H+ro+fro
0vsu8G5JlEEYWXYg3FxtMFUJAlEUlabdsvZ0CDeEt6AwM2tPSh6IV2v+pd17SrvWBWMuN5qTSZH9
PhEHRvzfZY+GtvFsY1flMUewvMh9/uovjeb8iG0qXOivczz0EtXBalctqbTlsw+YGFS0VSfx7QvD
VSWcpZ+r74Dez2VX6mVurQXmIyKc+5Y+QIJ1EGSpTGa9IjhmODzignI0lyKiOHQ7D86Rx2TJxn+m
bqXtJfa1OZRTXFNa5lQ13RVF563m/1+Hcnp6ArdrPDa/xiy2sbedlcE93uabY1Wgnszs6g8FsqNv
m+QS6+VBPhw0EIDbrgyuHZHFfBhX2egaOshptZcoOJ4dHQ0iShllb6ri5hML88o9sufAszTkqx07
ZdipHlsGM9JpAH7Hqa/DTv4o9IBKWlA6jgfTBlkb7oy9DKwQU2PevMlI3K6G/BKVKjY2iI+5wqQh
GTbI5YARASfyqJ8CRvnFhDJvShIASnuR45uOpVq0SBYN5OqK5M+L2Vo7VBO/33Q9MCTn9NyaWAX2
ZzFesMrov5MTD2ZvtcPWCtQKQzReneOsc4YpmcYcgN+3OHnJGoKfk44RSt6ImmyLmtORXth8rOUA
QucOtpKJiyyZaYIrCxLhp/kfJOCrmu4L65e6m4+6mvnlsdTSP6fovldy0Tlq1QaKvPyNYNIld4mQ
mEFO2OBEHF2zGZjWC63R495NI7rhWnIOBShCL2yJ24ncnoqULML5rdt/qQ3tlOZvlJ6/qAxWqr1o
LS6yC3lDkZoBQJGPwl5oWalohoOpG4bk06ctWBP5Mlhlz8Wpa1cgui3TLDBBJBQMZ6njGwgYSeOB
mhYC30MCIGJim7m61TUD26KHdQeYqh7VXbQaywLiuOmPf5rVIYFrJArEe5Oyv3ZubU4qQ85edIIE
OGgkS6Y3n7AZdAGiCld8ilKd68cLpbLuvr7V4WaFTIvudOIhtym5ZEtA4UYz1ytFSIONxBuFZIn8
jijD5LKkr+eHAcJBERpxA5HgwxNXkzVTzWg5c2c8LvvsD4LbnF0I6QIi5xWECp6hKfn6m8gvYtlX
c9uNUf+54gYaksloaPdREkH40PNSVkL8+PVxKqI+ytaDTcdamWV45x/u9/j63VCJetlo9t1DNUv+
VRyFKlYs5tY++U8KmsTj+OIARhoAuJ88jEhtX7F+CO5osAewgJl5D1fahX+t7ACSWTMkvQuWCEcn
BQZYQeotndhGV8pj0rBqQKqi6n32zJLz+udi7v3g4g0p/4SAOJT7sjZysfmDERjOW/3scVpRe76f
MgB8ZZJeDi5rSic2zTW9UwVu0dzs4jSmTmH44cub3oEkmDhPBvOrz9TMpFcNBeolXVE5Jkk8yPsH
GIp0+4Xk5MwicrLFMOiAwl0oMpEZmoyt6k9zNsmSMt1y+EImw696yIA=
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
