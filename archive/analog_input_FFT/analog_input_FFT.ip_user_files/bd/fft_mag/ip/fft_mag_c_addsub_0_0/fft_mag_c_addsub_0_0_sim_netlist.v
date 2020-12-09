// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  9 12:09:26 2020
// Host        : Nich running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Nick
//               Palladino/Downloads/Nexys4FFTDemo-master/Nexys4FFTDemo-master/src/bd/fft_mag/ip/fft_mag_c_addsub_0_0/fft_mag_c_addsub_0_0_sim_netlist.v}
// Design      : fft_mag_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fft_mag_c_addsub_0_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fft_mag_c_addsub_0_0
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
  fft_mag_c_addsub_0_0_c_addsub_v12_0_14 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module fft_mag_c_addsub_0_0_c_addsub_v12_0_14
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
  fft_mag_c_addsub_0_0_c_addsub_v12_0_14_viv xst_addsub
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
eitsbWh9Dm+6kjzVO69X9P6s711tX5d6YoDpVXQhgRjxhcu6s60FsGolm7heqcWeD9zOHU4DxlwK
Q9YEcjetuX6H7eSvI3rxDr/dqML+2bB8JMnl7iK8e/XhYtogmqUIMsmMQMG9IhOs22RLXYDTCD52
wA7IAXIFjPMIWLC2NNVsJ8kA60Ohe+Brbv1gTdrjbZ4K31CWxgffxNoajEE+fC2pyGSAAMYsSerL
B153XLGY6eeGOjZN7LoZtX+ggnwHZn9Ct14z8ZeKv2uAwSZIWr9/5HiS2TZhWWhGaMRxaXS+IvSd
exAnGCrFoRteXWqD/vhQpgB23GkNUNRFHxprhA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3agPP8lQfnKpWtA7GdHCzohG5I1Yj9Y4gI8TOtaKCiFU1JzsVnEgl+K/nO1zc+GbDMFngMqsyYpx
W9bHthyG5Ie4cYbRkPMyn8UxgQYeXiMM1fjXPH5o8RK3pR6Yz/tFM8MTsWbx5A6YO114W8vwJbPv
WSzJCsGivOT51+AhkUmwzoHJXUsIW2R6MNSC83QSIvCqDhWywXjWrMVSBo7HfDT03xKB2oaPU/Va
C4J0EzFXIa2q7/kK4y0dpLTVRtMeLABS3IBkvHC+z62Ayqba33RRmvcGdFZrtba+G0IC6FVaFQnF
/JpM6ff7fABv+DyYDPrg3CvnG1IUGxtjdbN50Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16432)
`pragma protect data_block
/r/Mo70H/ICL8hg2Dwv0zD5fEHTmaKNtOuQoTLc+6NvHbTOPaarCO+0T58CxtJkxFxxiw7OQNvhh
oDJesdvGlBTjY9SFm0L6kskoWCg1cCDtpmBVEl+9CytsHI1jaFsaKPLy4y0nOa4p4RUHEzEa8s/L
AOgkyPXol27wvVL7Ks5ack/2eVPJdG3H2hlMLL85JOzNh8UsuopUTqv+BdR1NAEYnDdLX7MCWeGf
3f5Vd8okBEBJHQmz8Dqk8jRYaIQdrHXj/OBnRqJ+HT2PoyFnX6wQR6IWxoIim9UqcV6udMptdh6k
zggRI3UbkiKi7+r1bBzY9/lJcVTuWXojngxa20poueSlUAJ/BfoSr9NznR1qIhianN+C9h9NPEpF
KW1EWvBNjjb6sXX8cMQ6Zy2P5icSXHyFRw9IqVwmIESf1QfzH2Epxz00pdUzBpksrbGN2FWnQRFC
+8TpFVsmPk5IHsicgXfdW7Hobnkq2zGulKpAbKaoQxKNPVjIEiK9iI/bhgjCpshc614ouSiGz6lo
CSDFPaAVEaBdF6j9Ws350hHZLMzoe8nY1f8r72WTDVo+pXy0fk8JoJCPu/rsvGb/R+FxrSCEHbDU
ENHw+TCclk3vjdLDir+CTWQj1d8f/uRU9L8bolDAOVH9ZsybQe0zn29SswnOa0wluhzHJ6Esw/2L
arp2Tl09hItuKaYjK1wfx+VcloRL+3O19MxhkXd3aa1MzTHQlgixsn7DSiPUMGdhC3SYXnGrkTe0
Ig1IbMqN4DI6mvn4glH7vueUrgpvMtXW91Jgsuup2Jq5+0BGbpYIVz0MpklM1ui0DKIk7YqB1WqC
xjLNYfH78A7NVDkhP2BSVscuNnXd/k/+ylQFSZGcZez++fUyhB0S495zhMBE2vUq6H21ptHSawCI
igzD2IR6oP0RAgsw1BG55bs7lmzzyaX7WncjedELc89AG74UN69m/OTrV+ex9evSaejaJlvzHOBP
fC1lO58mbr40lWmzjp/jia81PEdIFkVbhajKNUQP1lh0iOpDtnRpbu9crxSPIyiZGZtC/INiP3Ya
LHwu1if1hRKe4p7TI+uGfbBg3XaxfpJYQyFE5aUze+dWufOu4PxBgWGCGu32ZceWni/CthBXoey9
pVDRd57rbQVfI6ApGsv5NN9qWh+9i4cb/mcGXMIA6Uu7tmTvc467MILX4pZCVpKP+mw9TV9N3XNE
RPnF+EdnQWA4v8M3dW1hLUYAAXo6YbHKcekGJ6njvKehUgXDo96qtuNNc5SUnNoFTzK2EEs6Kp7I
tAYcFqP6rWwYAkUadXqPZ3lhwVQIMar2TnOIk4dPMF9JL683dfzHgy0M0BqbecN4n8YYoZsC3Eu2
DF23KusipA/GDVb96/Zwhxp7xjsmeglVi1mGTuLZmcc40xsQ5W/Gc/NSTvYwSxbDsGz0fCYkxfwD
UN5BBeUP1S7qtL7AEnHhFw5kwyRqLu9ciZ02adLQREjOO/106xpGPmHU0Qxe5J9CwpFl55pKiw7o
bokHzzplCK/tdFUBpG/wqFLZzWrxdVMdBt5iMtYQsXaJlG8XHlS3TrH76dMQF/Lz4+8AqoIIQqZt
Ddlw9hHKJKBYZ2huOdI0yEIk8tFe1pFddpERWs0fDBsgYFqNZ5svABdIG5WXn2V8sFXq8gSz4g1n
HK9Wc5S3zdGoLEwjW9uykYzkEtQulxFliOpN/43crri26oQeM+seW4BGcTwC3PAyFQVXIZcX1Q1M
BbBIU7hbgw8+S6H+8YRzo3MwsdcuJvjEQpnLqeG3Uju+q2TN5SJNN0baxhYApIL8IWtBv9koLn9Q
nLHv8/sVNO8MTqgjUkKv9xy236VmL859Zcnzl6vUnIpuEND+Po2HmTz7jDzry11qIsM8dPqPqTzt
PCMm3gCihS9zCLmeVNkWnECi5ujAEJyVbdUSyiJ7oKcqLkocfzjj407jMk68Jwe0FdBEmmL+wegI
TcY3hxJfPc9FhRd7rW8m2OXcFeyKf+b8N5rFlBbdJV9QleNQMI33PF+LvyC6tJjRKiMmaM0WfSAq
2gbYqnihTz+1sv67xP2RTntgHmsQ/w3I+DVF5tmw1vJoDwmXlfVO23R58ojK02SJWU9LXIOxpTt0
izXLdOvspzFuK402AQQvs0m1JBjFdmv2NsjyE7Rsj6Zmg+/2oqUpn1wrn069gU4oCvnRNVw/HiBM
NZOOEhI/g70Lm99kOzqeaLwhgqPHIgMvT429I+fXHwJLActugNljbZmk0LzVgDbiBtmxB3ah0DmX
oyVofj6gpBlz9PY+RjZhAjJ6u1MxrXpbqTC8hV0We1zMeiS+q8T420bM9ZgvqllLZgBWn58RXRiO
wwS4j56YSLbvjgwHjxColaDxXKoydA4A6KZiRlQZ8IzVn9yinDHt8EAsdmzOryAoDOz8QmjVre1P
ypa7czP8s9sR7Xr6slf2g+rKHSQ61OG+weveGn358INq3kKci+EoKKEmDgjcLUsHy7YOU/vtVPmV
q5wPXqTTX8XIIpuZo3D+4N7lpezqvIe4zlIv2ITVdNoQXmK6ROBM10c0tJb6d6z1f4DsUXuAdEC+
0T7V/AurqymCO/qLn74WdCYlkKfdacV+TsTbCd5jGSnKIuf3ZQBVgqab0uFxot/cHedkIokHi8V/
gg9JyHzVCEVHy+xjqSYQ7zA9gZTKMqimslHALxED/R97tNFEoux6gFO7tZzTCZupHiVCnesqKKXg
aXbSO6kpdd4gT5Vnh13CD4DdJYezOXHVc8+Q8o2Oqm464NGnd9/PHwasE8WrmPz3/15oHxdso8ks
BCb4MB2SYIHGAt08DGxYYZcGH3lVApHo4Q1G1joV1DwwZZsD6Kb6Qb28DpUyqagFTJtqiYhCuQY/
5SRj4epgc8Ba4cdk6I+Suuz0WWJvYyfEVh4jrZL3g8bG1E3NWwY/L8a+BpZSGgwWxTQNGRMhubTw
yFLryPEKc2jrICzMEQVcpREL/LQvzwyxu5CHFvPr6w0NmazhsH7slVh32muFmdAWuwzBnI2tavD1
gD6YnQ1QsjzZZ8vXKtBS93weZiaQl3dr2BTpxvtvW445myZtgT7d9WD7v+7m8QuC4M6fma4dZjvw
GFV0vkfdZ0YlPZy2N/OzU5P1GhwsuIOm55KP3V+UXwtwpLD6gajhfIBn8tR1yd8GpFWJ6Y8UEyB6
oF37U/TbznEIYTWj8FGdv7gROAZaHuLEWov2u5PXLhG2xN6XBydGTygCoHKE4a4IZ3EefP4enOGv
LMCRLcT0mH22oQrXHja1oUGy1eiZv92MDqFS0Ol5VOoLZHSusV+hCKju7woN9+TvwsAoNyAuYC30
RGac4EY6N80iO1JTKbqAHjUa0Fc6xT6aqGkUeJEEsfGN8VVyaz5iEtybO/4piK0KFA/4hsKuW7vO
+pkjV9iquUEFy0rdQ205uilXGkfEFLmKhI53UM2QFlsXrPG9svQO9Ay4Ccpj6RBpEmTnp3Lej9fH
IJk9JPPu04WL6IbLsOP65ury5qUgHo+HyQJ11+rFZPG76nHNekJMdRr7kGihr1C5yXFDCmEDraQB
nA8R3r9YtyKabPvxspbeei0G6ATkLymFc91W3p3VaMqD9RQbbSkPYp6O0O18hqXBZV1Iy/hxzbUw
rvI5E9Qe9efVbt7nepOMtri9dk8slX/skPF7Uqa1rNfeZLBprsMRCGmALynSyE3cf6LhGAjUbsUj
v1QEB+rPuD3lz1I2UhRCmR7x5qt1bgACcfQhc8VVL9g7CfheM1pOfDJL9FktgR1+672VDFam8TCP
i8JTus/sBZ7A8eADUspvR4fkUnFV0WRakDyHQoIH0hNxhiwzcsdbiq8THgQwJRKK1u7WP2Qq/7kH
pf1/oU7jyTlMYapQgb3Gm0ORSltZQSvKIfO36Ed9k9CLCT+Dj9d8YbbtuLa+fSG/DpkgCrYmKbq7
qMJnlMDrK85jaeg/auasWk2Pvy8XydsjNpV6e0Cy3+zqAyZoOXGmuDyT2iu7pY6AqgwZTGOZau5H
H/bPwpkswf0cfqJHfr/J70HAJuEiLn2/7ubjOm9tDS+X2VUmKEfYPZN/ilxusLKlMhcbGKGGJOA5
zCDvQVJUmQuNweQT3uPWgSYjQJ4DxsupcfJI7NBkn3pUhhZPlZ1fgFcpIsj/RIRZEQerinay8VQl
xPhdAhz/tBqtFLTfy/wbwQtfbfjDZFOCdlo9Opd7T2NhqBHYUxnYeJYFpLk2No7paq4q/kv9jm88
jHQpdL6LE7uahhC8PcVxWl/Z6HFAwnspjgo5T4W1Ngo/qvfIh9MNtOZDdgP/3GDVQ5GreOAOKswA
7j+lLc1zGnWYBcc1FvcdcTnxZ3Sv48CYsk2g4CB8s5E/UgzvtB6m32De4PkKcLdoB8RblEoYCPqC
QSOOM05ZNNcwaViboOrcypPmFFI2zJSSoQJnLY4nkp4FbeErdssdjWP6R0D80rgTVjC2P0nIC3aw
bBWXBIXvu0d+69Sc3OU9eU3eGuak8KsZYyMVRo0KXnmVoomMYqFCEY8BQf7kliWUchYHY6YdlaaL
NyOwWVSXNSLecXMm9kMM3NhhJUg8opGHQo3HROPfYSaJHXj+yBSDFJ/TIJeill3r3w57jev0YTZ2
fN3iTTKNvzwE5Hn5IE/GonFRc4j3OZqawsiXg3yTJ7MwPSCYnS619c00nE4Bpv2P8fYyZjuK/kAv
G3aC3M2hx9XWB0Ff+VNkO2AJlG+ZSbgwpG9HgdPqDEsTrSar2CWjeQ76b3xpnW7U0abd0YKTCYeV
f38oj9QlDALd2yj26ssYrAk7rUZD5B4/hneSIgnRzCiFdxwWvRX8KKB6Ha5VobaWtp0cxKfQW/4i
K2svQyTyZUEU6oQlAgONK+xs44bln3i0lwCTCSXzfhTdPCe1dz/u18vgmaVswZMVPBmkD1/GqCN7
0lulDM3NCCPwDCaPJkzSvsaMxk67sZDt9UkYa+MEIn5D0sJf3I0E5hNYIcjJUurLrkHYJmJUaNGd
ZZbzGoyqQLmIVrR0NKSWqJEUFSRTvEUF+C9EJ1N6jeVwGt+bldoKh0++T4hqreoIZyThqGq4mRP/
bhbDqdKc3hg1w6B+EcxphF8DpnvKKWpUVDzWT+HB+GCkND3gdOtZlcoJlkIZ6kb1yD5nMbC15UiM
u9A8yF8iEKqF7sheqsByPfvB7Nz0KmS9Hb/a5TEy6g9XNNINlZbiUJT7+L0TYQ5QQkK2pB7s5DlK
yId5o543m3Ifu8qCxkj+IiXSwcwJ88k9WN2+fFrvPoo9XxTaG1HtkTZwXy9TgJ5rHvqfZmaFne0X
yVRgQKlGD4F9XXbX3777/LUUXsgQMJKIj1Rajqo7At9KuDKT2iZwaA6skZonso1AD4NAhFc4W7cN
WkSVkyn8v9zzBZbhQL+UCNoiTHaLjo+sPj/zBoFYRNiuF+7z5YAxMsh8dyBmKM2K19xYaNDfnj0q
8EFu231uIKLAnsQ+ViM07DtkVTLbnwqLohce5J1Wa2x9OBXxiHtVKFiM8jklNL8hr/5gF9A2ilaB
AKqCJaFQIZj7SVIdoa+UpBuWWBfTxjSpfv0M2RBohbS7Mv9KdwYLEk5ud0OFJZ9LNCbO4Lk69i2Z
aa3MJEosq8b0n4XsRMGSrEDCZ1Oe5dj2Qc0IwNZ1PTBbGIS/LcFiYJev0atEX/BjVMpF02gSU1wF
ZwQarawjMQebT7Gijo6P04gPz4dmrjaswm6HwwtTgbTDDC0Ve39XvfAemoDKat6Z7C6aIuJTU2zF
8fAByKa76eAXya/cHvp69nk1ldIqVGJ/WuRHQuO8aHDhbSDPlI5nmeYMMpHDe5aXi2vmOIT95Gcy
GtZvbDbjyq9fwWW1jJIC+UklZlfSTFL3XxdU/0IOPxn1/ggATI2BhSbeNhGetDKSIaB/z/cXuWEn
/YKSxcXsEb6zZ9TXxOAw8EpNNiYz/urRkTJ7o1+8MRXz6B+M2EANRrKprG4LJ8wXT97XpAFx1RL2
w2hRf0ticeXYIq0pjXErsM4dAUeYDDBKyRXUIQ+H9kLdImMqJPOUKGl17T+KzQYB8RbsurOpIcmy
FvfvQo9V+lCIih5JR5lP1HnQQtK1qU/6Il9txc+kl1ZbZoS8X3FBTCj5uWvaILSDeiCiCOGnTa8w
iDcUmGNOV5JoK2Iy2r9Sc3NxPcGLgHchu93Zt3lpAcpDaDGQPrDQOnbZorZS/4fVQ897gDaTWWq4
Q+yG7+pfVFR/J6RGfSWa9LZgZFmblbtCncseS4a8sGZwPeTOC4UJz51wsEAL8zcELzBLFxhjz2sF
3WVmAzhLXgg919HAaa8XvP5tEYb7giJWW+WI0DIwX8GzVqUmiSG/yVoXOpEizmc4b7UQkCnS5mZI
FLB/lvRr/x+9NX+rqv6t0s+omE15BZKfqsLJ57hhVH1RFKbZVVPykFGAMNjq/JRccxEbWSLYHMaI
QkIrLsVBpSVZO+91XBK6/pPUjbzyIIMQSd7LwvQ34t3aJzVNwGwNdBQVRHrwgGioA3GVq2UvLI0V
EHr9xO0sGp3h/lqnCrIXQoik4sgfoV6WGki++8p+zptXBIjL0bSAGzFRmZlmdk4A3weqIUX383j+
0k2lRaOgdzRpWgVugmzxV+0RdU+qkm6hV9W7E/cOuF9qcXpjNJ6v5rj3RuV9dU1D+hsmOlTHfDut
wqt9L0rQ5j9GlGorf0S+Z2n+xpXwamM6VeVQMFonl758uEznaD1SNZnb/0chMVWMaXXgXTl9JQs4
4IQSncXqyOvQxQnbDmPOfPwUSxXguuZfCL9AiDass/0qmS2aRzSPdeK0+SAX2dMcBGwqNDOmithZ
T2N/j2O2Q/O8KJ8Hxn31HGrmzcMf2GJYjr1F01dFlwmRz9IEe/5n0MTiK2fd/WNigS5ETCgWnfQP
aZsyJWc9xG4XApw2wC0mczuSO5FxcIhD8C8ScOjV3gyjR86HqCYdiATchatXd57r9eYeCwk3DOF9
QyI0Xy+VEvndzsrfAfaHFxPZPCkF8UJ9fkFwn107vGMJ8KErO96ecG81KfDMqL2IcrUKYmjYzT3h
hL23PcAyab4VBqcv24CdVFUG7ppOywM4Vyo2wNSI1asMeXurV8Yu93IOQ/Pj8dR/h8tfAYsMjvT9
Zc13jxLIFy++ZIta615MAf41QdkN3OZ+pvLki7c/hYOgDkmWtvu1Yu+BQKVBP1DO91+GeFfPlFpm
vSuj5Nm6Ita/XWWWMzEQAbsHpNsYoDHpq90THLGuk5v674cz1HJ7eSS3HeIGqZqPyvjlaTNZ22Rk
tH82Kz0yjl3BO5/oAUAOKn29anWZkY/kofprZmY0jwXOsYjh6ezAfQ7yU0iW5DWEBWRI89W6Up/n
u9gmMkyvJXG666dap55azeUymNR9URVUWU+UH09AZnapCABHpxKh5EJFy/1L0wCgMhAlW7GGIbwM
lQaazjmg50vjJ6UBGrAfnkyNIGfOA8X99yNgTK8ASAn0rzk/9oc7+ddtPgWHJOIjRF4avFcFWL9J
BVq7NkIQN/9SkYByk6pu/xehUIr+Y+Irzw9umMPXnPk7NpVoYoOltscSFRnQiU6Z2IS/TjHJcABZ
Ga9kxtDmKyAx01aCqiZar8jrLvvlSCCEqpblxLHhsNYyV7qzSaGir+rLtzfndYuhV+D9hqpvx0Yx
NYkzASIyodiui9EY9GFtXC1erE16+gS4lKL89TYaQwwSng+J12CcAXqA7fsju0O4Y0LMPYgpjvP3
e8oAeoOKeu1/a73VNmoiDU43Yj70i2mIicTyTBltYLjgUwZkmmb8JHG+Gq6y1y1CHSql//mQM9Ss
YYkNxx4qzPYXbTeoWlQDQuqEhnPFe//B+udduw6i8KTt3o8qDkgokCPZ6AdS9Pz/+c7ipdqy4m1i
2w7uieWhDPzI6RYv7mx++zQ5TjETAwQzz/sUY++ZNQiovBp0LY3ePNAkOAvmhiorwLM652NWC+ng
LSY5XonCP3OKsbQSLYC5VVcDiv2x0yVPj367yrfxtWUXwqg87F4KGrw4bvfjj143p6jslK6T3Kds
JyUmGcxx93x3aaX8rty7uhALJY5eH0MC+9F8fEfYdAc34E7rvJ7bl0DiQghjqYE0asJScK4GVtr9
2yKAG+vL4bWqv8BTt0jZimYrSHmFoXLqyHcgr5ZCsEOmavCkWeKQOfE3amLuTUt2FCOHS6ks3fjn
haG2ecQwYefraIJi7T7Kiy7N22WDHTDaMdSKEyWa3BVp3GvND92xsf2ri7X1/eE30It7GLh7G9dy
xyifyFyssK+nvhwTsADo+sOoXxbCs446OSYjqBofvdIwh8M0GXs5bffIfHuB4mbTsG0kaGabYRRi
D7NtnpOz+sc93QxIT+NekrksSa+nClKVeOt93KNa4NQ0n9mgb5dEGlUlfTk2scRw9Tj1otrYPbq7
56dO5RGcIZxihjyasimVOtZLfipEjMnfUFK/DbQWr4L6HGVq0uYiWLgfgrQckvAs7cLrR5oR4Zi9
+e66r3rsE0SMSzoWglhLC8jqikWH4TSRrarYRPs5VOyLZZo6xBV4daU+4UQfDji5ouq4ojJv2Wkd
XXQ6uQvCRQqq3wIUnP7ZhHxIJkwb1oMP6T1D5Xe0wWzI/7zJqT6qHRm44p8+Lh4hOqqZF8b4x5Mb
QGswggr90ULvintUPSKJqwLAuLaHEbAup500fnKOpmeUoXh5ONGuI0X3d4OgNBnG+2E6kj+Z5dmK
WOyPpqn/CyyeiTeXTWdUTufqhlOavO5LYV2bDtapp7V1OvJdYIGa8vW7FlpmaqUonslUb+pyspW/
GGUgVGoEBdD+IMw7/9u18GrnitcsIgj+4YUbP34M8HNQP1TQvT6banAbGIcqB+hn63Ewcf7msLqZ
OpRNrxrTC4IWdqEYlmlJmN4rh3iKpfJRLhYhDB1EgP2OHzieoZW6X5/vKl0sGUPywlmMGVhMWX9P
g0buzCtFx7irApQ4MBEiXnj2lGNftEr7NaRi12CBi0iGV5bAOk8/XkZEkEE7pyc8FBihKFWo9guU
OS30pSZg6UuVcpoeMmjsdsxYbJjkDkKmqJIio8xZlmXgrMZg2ogy1MJ8oqaz7sm7mNubYjrdm1bx
cmzOAsxwJznhFGluvdGjyaiymc7cCWM4DzeG/p5mo0I51jU7icQRXi+KiO0BARYfPF1vAIuu1h89
yn6Zfj0oY6oKmkBQSUO79vxmCf8H0HtdKSboOkFX4cNpwC8hvOmlOjYc0QzZeFN8Lx3POMOnxu2S
KP2njNpSPw+DAsXummtzIoRSie4RA9XZv/+iKcjyJpI168VuNCC0Nq1BETnd7/QUJlLkRv0CmicD
FQYZCZoygOiOmjK8qqCsA1rbgZAOn6WAoUAcDqqcGGE15aebC9P+maiGK0VyhTW+AJ075wH4DeQ6
OGEUVgutt4F7WHqOFGYuRoj/TQnJHxT0iEj6Dcflx5mleYQvR8uWE9S8ri6NxEkSyvSj9JDXDnRX
Zi2he8y0Y+czlsSYw//sYl17hYrksHRp9qfrW1GHhPXjU/+6gEzj9zIyXXO0WVGmOI9TiT2j4rWi
zp9HuJqHDmdTyTmBo3U9m0+5TBFoCmN0hlKls6ya5QpDIyR5ZXVO/wsEjyq5FXzHFsTYgdMaaBDn
5Gv0YbQvgOuIKJQ+ctNnI88pdA3nXnHgORDW1zo74ge1ogdNUBLBGDuZSsp4pgOy3LrFuEs5BsyX
zKoqy+e6CBbS91PgZxn/8J9SHleo0plY2IxvTB+8QiHuvd1H4xD+QvlTnqr/Zyie7TrV2HcfKSRR
IEA62UzusS+02/cTMSdWW5WYY8ZpD3CnbwGu5jpt8d/mYhe1pGNtS/NcLEFr+gSl0Icozoas9uil
K+y5X/jRvyyXFr58crfma1N3+eLsWul6l+a08s3q2Q2q4x7HKFU/LlDnyNYOqKKwD5gjirC2T6Dy
lmW1fJOjNOEyOPEFJIyQgFsZrcF01LwtDcAXuKU5e97qs5Tbhco/xHXlxNfrV6YCoBNrH1P+YRBb
1ESeY5oW+8lbUIQnV5BujULzcBlLNXYaU6XfQahHWpdQyeDogo524ffB744ONoVqnlzDM9cgQsyf
mKYyKCBSg6k8sbS8d5EymBACeEwG5GWv7cYzIdlTVV4X2HNPVl0u323Gh+WfRfBXePPh6DRJphP2
5c0MHApDP6Ltcm/KuUT6BKRXqVZ+yjy0jIlseYli6uIt/6pl6AMbtWhuNJpFXDEFJ0+Wx+HXLDPL
xylAye8znJ7fhrmLB6mZ91w1+TO77GaLtlqRlGGCSMQfCbrveXG6wIFwROqOcYqofobHGA7s+Jff
wOuzK27zkqgfoGfHA6mSeoZ2XKaJKQXsiOQBOwNNKkpF+TVeGZuGWl73YovYd1i8pHlyELklPpG7
hxiWQoWtrWJM+ZezO0Z3qBVHsK2xHDbF3oA+ruJLCsY81M2fKoABRwGR7TM+feycjnebDtbtYlC8
8tUAB856xnk6zlVLYaIh86YMWfozhe/uzuG5+higgL6euQofslLxQIAAcyw1CjDmXnPbJwvQBrZZ
xeOkko9wRxzqdIGQKDlgdl/k2mTsS3rH3US2TNl/5+hcRj0JM998TslOHUKn9tGG7L3GKzxX7hf5
wv5EizkdB/tb1+9xenqBvkWcdCYp5Sp+/gFJQ/wNYztSQEiHCCScEcAEXxdBnrpNOGKGoEnRRasy
XiN8/KdGAzBKqCJjQq2V+Qy1q59bwAjZPN3VdNYTXvoQ+oqj1CavwYwMmcqqF0kYe6vZfqUsbcbu
oKXyRP97FXawqUHIbpWvyU0sAGBgdsiajdbl7p1MLxaQuh26qInqg5LTTQIS6hpUr9MloWq8CFS7
ux7lsYRAPJUzDtrhNyAxqDXdg+0eiisoclsJnH32FoZG+z3aKY2PJeMoEvxNF5oADTvamw4ojC+p
rY77+8Bx9Hdsthez81stk2XKq3Xgjq82+5Ze8FPWztPsDETfOCRvzEvKLHP3NFRFdGgS6HZKng6t
qDBdFgiOtPrTIT8fBNTr/5bnLO50zcBEoqBVxXszTgQyoCLAtTZ/x0wyioYnroLB9ev/kB8MObQl
UB2EdEyxlafwt4WnyTEraetBFrGILVey7e2pseOtGJpOptVfO1NgI+h1yqCICgiPBVylmE+ZVC4+
3Hk15KarB6ECx/GCIgqZ8FzzblDfaFqM8hP/WJ4hjUHJLNspTh55g2xxNZGZE9mf2H3IoTfL02nR
t+TL09nmlpqG5SeVyI1Qlp9fwuPgii6pPVDpOLODOEMdMiTHwfTc78pZicSAdrh5eB3k8SwQCWvk
XS+gmmm0be/K7B8Aj8jv9ZS46VSsZP6/QPRzhykgakKRbISyX9TEzgOb3HjqzAI7jMLgYR+NeOdp
2uffIqWv+WCvSXtJmKNfFyzgDil+sm6PjnTxlrOVLg8BGudurBj0KUmsdeg77leZ6tiGAb7NzbzT
tvb49Osua0oFbHtSTGtHZF1AuMsUBfZpdXEfwADVoYCqUdLHPT4/ilV/Ac10wop3pmrP4FGTkJxC
ZLwj+3KzLSGMSIYL8BfrslZeOTsMQOpJarpfPOA3rvbVizGr4hrnYyP7Lbwvoh/daPEEAlGRoId6
4jQQ7pe5J/17QkcXwi0Gas2cEtdHjgGG3srSvQVTzM66L1U0Y7u/UYVburzKwqmNzUuqlD8QttXU
OM2t5xkCrvMQ140sTc4g246FzDvBIZNwiOcNtMJKPF6hamJXmwtqa1vXF/d0ByHcmwnYnHgFiAWr
oFe+JUItgxbsqbIX+D1xPJiSM/U/m/rWjV22wrRyo2isSAteylnVBfz8Hsz/50y5lLgx1F+jqQQk
zac/4LOyvrV58Dgf4bn5jkI4WE29zWa4NYNxT344IcmGxbs4SDDvJNcsn/83vcK68yx1r73Wq6Qz
obeWfkWHzJi+D7fUQ0mwEyGjsTFDBpxRTqOep3Iy/2gFzp17yJzWibAbYfADilL7+j5Y0MkemvYn
G18yZPEdBehVvuxHLa1m14ClfnwOmFhQejjaDaTEInF2JLuxpLsVPJa7P3W0kYM5fIoOIBmd8qMn
xxlPiHw5l7hp2MyEuSG5pdOVCZ5Lilth+zrtAJ7vw/e+x6fuarkVgESxsDQTnPtaYWCT46l5wl61
E+ia7oiIMwPcg1yqNLM1Zu0WV8h3Qr5VDn7YUiHGhcxcwKByfyDVell71GGuFBLqRVbrBePkI3EA
lBA9aebS2v1K6gRqn4UoJhACDV3X9sVeRpQqa9j8pzzKEJxwJxOxK5ZSSBc8OD02uouDw41M8A5w
nZmc2b445J8xAD5KO8UKkjJK9Pnl+rO1kr4Nm+7V+7N80g9vszi9GSL4Z4lqVqTxVPppM2x0Etu+
hEzl+MzCceZreNZB9Vw06JE99W7qbBU6z+7HkH2pYn+couRYwiWDryxNbGpSjB3RoEZxtqfIhnEn
eJJIhNCgW+1/nWjytxOt16RMVYsCAyS1/j08J0hD8V1sO7hbzxmbokmvOgjHy9bEEFjIW7xDQVYG
i4h++Em76BYksMF99fBnvRe0KoD1BWXFXe627xY3FXxPDZaufVFdbdrQygUZpVe8uWs/3J/dXN04
0l7HGKt6TVBa9lyMvuKtgrSTDPoxbQlou1Ha3zKvoOQVtEmhyuHhXEXLjsUhJxtsCNvUSSfhtV1D
Uh6h+amYJmuyJb8jFEw1XmQHh7DMH3PfuLtJiZEW28xWSzfIxdAg1i16i2IxwN8D3RL7i7B/hE4B
8dUYOjl5TRzFM4uMnMx3JXc4gxOLYdJgMwAfuJ2x52ibrsXPuVCiZE/0dV0ekjMQm8sFi9Mdima2
3D1HBI8toDqpf3b5UAkaV2295I0e/9b6YmI2u+bkfOAXMgaDeWglTwtrW2cmqRbm3w821M5P/4Ng
6+NaGJgnbWtL0bZDrCAyZmWxeozO6c2+D6PNyKdrGzM/w0PUiNFXaa45qYDWKCYl7Oo2rDU+pgaS
GqSpdgS/A+NEdb0DXanzd8hxctlEnsN0IO5G4+fTV9cLtSXco7V9Rw8HDqcgxSGTOpJQBfAyC0kI
+pHTrTQZ/dKEeIVP1pZpGl5K+r/jOxr8xtBKvSp8stFbGwkDQipAqCpBwFx3rHEoDdxtdjzicQCA
eu5+DXzhyzxS8ksG2dbi0E0bFpi6HpYyHJTyWt4M/b72T+EfZT4kMX67ZPfkzN/87+4XPIpwTdl9
K0qF2GQyftsHMZSf0sIzqscL5yKLpaCXPXP+Oz5tJ/Fma0Bed2k6fmEq4rvZtcp2FYNCGsDm1PoH
d6N7GPp1yRrRL0C6FADaKKfzkfPRTM/oNmlUCalfjLI7YV0QrrVZmxhu0y7CJMoWCxOz3/Am9K4d
o3LRh6V3lhQMTmIfKLL1ifrVX76xr8Eisl4+qA5wn6OoSCwlo8NmEEigCUJON8qZBrLvnP/8Ionp
EnaFfpA3N2OLDVnXzZqq1NTqErA8rZW6Jl9OcjEp3Ft0FqS9HTE1pXLr2v5Wz+db4qQeuz8s6E9s
eisF4l9I4fgk8fCHP/ozx9UkYa3fwRnls6YK+k94lxWipR/fR3KQZrv5yQFcU8Azff/xLG5w2Ile
tYqK5T9Us2DkdEYaDoFQmL6pm/wntdZ8C5FqxNFOzSUPdQI1bn29tztpuAiKqhubM7Jz54lrdLbH
n7JL/6ilsZVe+zhuPZe1onDOo7q+R9Ft0R22LLmPMR975tUkDhAklPtCBX92e1Yhp7Z6XE48rdRO
/bGyaX7HzsI1w7y9NgGwOjiXDHGEOBq88xd8JgzbzI6l2tiV9kKR/0y6rHXgKt+I1xyRS7lo2cfV
arnilxNVQv02QM6uF2P4MOkib6agmHSsCKZrj6tQefXbPrKcwb06C/NnosgCs5Lvtv4tcaOakfHb
Y3XLIXqCmb/Quha4k3OanR0NkiyXN7i8jd6bqTq2ZgJ2eE2zhaUX3hQFSM7gGpzd5neSJBLeVNPs
oF6rIBFkh4WMtfbvbDUnkgOcqRnwv3E3g0WY1OEH17nqrMcSL5agaKir5t00fVW1m/nt8BZRKvJd
Qx201VNVgY0XpYbXf1FrM1rDbwgu8t/rzLQDin4Ml+19ZNV/hm8K/jw2SvgJzNdlux9iYdCGTADz
YYSeTyi4Fuoo+gMiokYsFNIuvVTHRhIFXO23EPpr9xW5P1y5TjWQmDMxz0gcUku9za7CIb32zpsR
g9FIxhHw7lX8nB723h+vXvVQ2F/0ntlK5JdS9wRO5xu3IPOx1GcAN3msgyRx0jQdU+fEKbYOnU18
pVHKOpeUxc3UVGhNhYjc+VRekwoVOXYi3HgxbZ4ZfiBdKO+Ehx25i+tslHhSyYAU65GnF3U+nZcU
Wahs+2TDghN4suQsyO7PxouKYNThuvIgTwOAQk7dbHdRRM5dsEV4ECIYKmWs3mfukF5J8mCtyLnI
wjl5L0rv9xeK2Lpbr0iJ9jPdl2ZrD3rzETE71oH5TRHuAGSskvpWDLb3ztNV/ekfmT0DxvaEshzt
qqv4F94Nqs16BKTkkAqawX4I215B5vfc/uschpwWtP9vi65FtP4SetG8fzdKvhLZOAGcxlVyZSLJ
LydRvxY+TEG6mYN4dUzm0C/IdStGZwqngN1rxiid6lDOAMhffhRx/iG+j45qY1jRPfkGqpard12C
Et/g/tFGqJiIsjS7eDZ3Qm4Mt8FHnDbKMBmpBvHm4buYZp4iy3kcBS+2Q9tJcUHJCq5MsScmX7tJ
dFyCFENmCtI0z1Y1taJQGITkrYiJ3JPNxoAHjlKr76Bp+6NZ6EoNUYgatvR2our3g2ql4RxRtGx2
3Vahj46Wc0actFspvAgF2I/UVpWWrR5ZwBZUqr7j6SEMcU9WqYQGwNoJtlXBbzST4KZm1MdIGwjQ
nuuGjpFJJqXu3WRtM8Zg4sbyks/94hKmHLD4BpJqCRYVgcHhsYIlHTZvuCX1sfaDXbwjuea9WnEz
Ev489bmPf2n4IvSzsfSDQ78Z7066jd4s3StXrVpNAoNzhz6BEC/nCxE9Gkxd6v8mlB15FKnpSL+Y
oAvIEFi8bAY7gMITiTRH1opqHjwA3FOUMuk/jF/OeXPR616cLRm1vfxbbs6sw+j3F5roCMFNkGpe
XLcTBvHK3lhETIbjoa7hUWVqoISsTzxX04GKLVVYBByVML1SoML7Dfk7ATZ2H72tWJZEFRzF95EG
JVLaYO2d2FMGev3mcXKqIpywGbZKklEncQDjbxYoawmpXZfkurHwEX9HxYk3rZXphcpX7BHo8cdy
6VmAuxceQ451izyOdEPApbQvhyArRd4/wCtCVVUAIJ9RBlx/ZAzhA/xYmQ6NIyE79BT4ZI6AUxjg
qLIG0Xtjh1w50J4SvgUw5FBIjrVMKlvQh4CYzuZB29aEyx5ZbUSJrCzZBgXlvGKpBlbxu95HbYqy
Gav/elJDRb6Q8uZL5iUqjY/KbjWtsxgwyHUGR1oGbKYKFLnzxobwCGHTNYWNHSseLtJP1r5mGZ7r
EEjHns+Tw94VFFp+2VHPht81xtAy2eY8fpNF7mGMCkutnatisVTyg1RHHbt0hLgV2Qp8ud4qdedG
mGeoP3rwhpqBZh3iDyoGZ/XhcnvicKOcpIKCs5Aghr97oFCN2MSFoIRUZuZ1KzJAzLNhd7pYEYHY
Hi/nplsUl3lpPYwyIo9eyz7wcKIxzB26ObSiy/jzsVwjt8FvKAqMX5PsNQELNk54m5upOH7o0AhL
BS8UZYgL41n5SKySFUvKDxmWC3YL7MOURDQ93Zqo1HzHMlXpdJdqry9muzy3kK4AmNw3rP+TSXHz
Hc7GfVXcdM4ywmXIzETvJc5CzUW5FB0adVOdxWw5J5QI0wCyt+0f7tyV9eSKhHJuReG3CD/6gS59
OWgTQVnwnyR/i7dkBb1S5zaKL164q+wxAz45nJt0QXg1NfcP0BOsLqUEPicqI5qRBxQhdWnmXh1z
JYoq5cVvSfgox++wTUns7MtGCmsy3dUfi2e/10yJPXF7uiac7YyZNm8v+UtA3pNpJXQVVZnh3OHW
JEoDRlcyoDCqzDrIgAYKBD3j/8VHfWEt0aMbVxz7V6eELQmvlXRGKHQvUD+9VApe7BWdkR83I7vZ
F/WBTvF2Tml75VdUV+aKhPsc5oj7SMg4RPdh567XBzBH3nwkn5RHt05wfehYhhOXutQjbY7ZQIip
m6XQwj62Pzt0NDn7jBMd+haEC35R7rl47DkhPw4D0J7dY69HI3BhnAQmn1wpSYYgd/tin1lNaUYH
ag6h1Ej1GnKsBIfSFxOnlX3h50E3JWBA15XUXMtpT0NacK1v4UdrQZt+r0Yr4J9YFQbMFP6roTBh
Kv9VCfHhmM+cN/L/ihRrwimmF1iDx/6aE91T6MFIh6y2i1UBEM362QWvYHnCE5R/zF8ZOSaXJJjB
0i9YD2w2q/9XKILTSdsuKqUAoqqtXl9wZ49NF2p+RLZJL2N2lPm3ibTzig6yEDtAsKRt0W+rnIa/
6JqNbaJK1EM/EoLDNHJQiKf2R1O7o2I5oyUI7mJdWtuA+/GEHnoxEOrTWWBYRNPTnco5u2bfY9ui
d+z6GTxfN0ccmswCl4tncyrOcPCgtw9vbxgy/tbiMwrlp3zmMBiNsYaia8I4cYowZjGgJMdiqrP2
BcFF/BZz8yMcKMGkFNHdhehZMhBXo5fVxGI94MfYJBZkbuDr6I1BbAQ5dqSKUlq9WToYhz+U/LGr
MSCkzE5bldbtQ35pDWJnLz2mSGZgjD7vP15xBMEB4uDvr/9EQH3M1pmOJr1a1N2HbCNAq4ghvVSy
1jBDc0fY60dx+VfjlYHk55AzLeXICWck6LYD469tNPuMzgkaR27NSB4dgWlj8xdJOcBgplGzfRJ9
ECdBb/uLJBmxgKVDo8RKdkY5pwYUraL40WDpuv+XxvQTaZyG9+leu6mffOzdzQrWiX9vGVevVdjt
vwZwdOzRdSuUj8BNfLGEgl10tvFYPRljKc4ummrFFP33fbv+PHix8rcZ/KezFO6Uij+sRaqqEzCM
xkvVtkGtQHFfNB2Gbe/gBRD5psj36isGtB/oVc62scV7S0CEvaLtNIwgtkHUIGtuU7nshQKwlwHT
50u0QjKFQr6on/h5PaI11J1yANTm6lfiBiqYat739fJZtifgjl5qzmSuG1zMPibdnKFY2GqKnER8
LApquGWp12Hj6rN/8aXCu2UJ+TXeU+V2dCYSH8al+7/ejrTUSU3SH5aDw4YM7sZw9WagFnjl5f6e
p8ZCUvemcuv5WVL3C/BaQUSa+DIkKXBQxpLW2x2nZnWHuQxGaUAkOJvMbZPzlK7phSCFtzTaCOUA
5u/z5xUwbVxwdmx1xZMkwVDmY0FiruuebA/6vMGLKftMQiwbARwsFsiHUPS/hVVpMlNaPUxOasEE
Qn7v45KPBzJ3KoKk7ubQKDUlAA5OT7Z5xsuK/UvTJTR/XveP1RSOF2TYhMO5kGsqJCProP2nBxfr
S2cQAqxlIlN1W4bg4icWQoIYxwUZo99NFhLfe9JmsbXOgji32NlKpWwO6LgFlEuXzNcGsSI4LDWF
c1pz0rKmiEIZfiHlyZjgddOQEz6U2VEKfuQ+qDRfPJTrt5eNyR0OJIN3gOn6duVO+wRn8ShKHA0q
pEdyqHIr7XNSbgYea0C8U0mTBAh2kDEKhXUWcao6UBk9WoswkNZwFKvJVEfHpHfVIg1JWEvu1K0l
czl5vYOexq94KEFiP8gOVhtN2Eb0KZttgXKOMIjTBWvxmJYu86PTavI4rP1REXmflLEx5Pq7QfTx
9rqzInsUSrQkJnNc2r9JQHWLf0SqlYgKGJ4zsdnpV3Ryk1Af25QGvxSgCoLdS4G/LVZwY1ODf8Ok
Znqa/IZ+WKPZwrvyFX7RG6zkgKWoCGovRVzFPgUu3sO+WjFjlqVWgecgKb6vDTLji3IcOAtnmPvS
HWYPUlGnhHm+6x9My8yHu8abk3nwoEdl/IEY2MpJKm44oe5QUWuwqgu6AOCYirJK8AwTd1Jl8neh
hTDR5IROmp10+b0c1c3Tfdc4eeXM5Ttd8bOWoGgHJL2uxWWeDv7CMRJmrVFUjOFE5pEILxXyHI7h
48vQhV5ocgRfqfcMrkvDC/0jc7ELlvKjR/3AR6FPnEivpSnzBCQqcn0gkFZeMrbHwzXEMGv69wDq
PHG79Cv2370tQrSwavdyTkwW3HsfpkVsQgdKjrwdq8iMxY4JPx3FKKc4g8JK468Pt3Zql5QjLohM
+sa8oR/glG3d9x63d4/gxokxZ8DFJb8dt2EoaglkesGhy8EJMDvb6oSMqRYwYw03o7KcWoK6knJf
ET8mnb7BGujeSp9CONimUDdDhZ3n79EnvhWQxq+aut073s0BEtZcZSmWShRsLikj7+rNoQBDFctc
S5/EKtiRyMsOKGddObAa9vXFxnI7N6mMOKW9K+c4kDVwbc3rqLQK9nxahu9rl3p6sQkvsBNPSaTO
ud5YS+ve5g+Ghym4UZ1EYfnNEVUwMzifd1WoPxcpAwE4z+S192TKFTxImivnr6iMmfqXsWmil+34
kNtliuLMZdEq9/ZTsFzKrLwtn8q+MvzI6+xgFgwNBhJPWWfDYvZxx6KWCGwz/OGeKAF+xmhICXnX
b7HqGoOW4G7OYibkksbt/C0t5nPsLXoqFrezRKW6Ga8of2Ntge+x1tf0Us5B4Bc+QSuLyN+YGSUa
pLoh/l0Gu/w50DSY0tR6L4UHwnYAJgV2MPua6vY3mF39E/w5VknvUmu+8qUK8GjV4k4+2foqRG4I
+S7vUVjXnOFbQ+Y7WNCHkD5YuyD7KI4NZE4CZJzY5p7JEgPpTa5aWWcQT6ZENCiO7ZkEdZ6+8ALt
yog28pcQds3TC1jETkK+JKLQVo/9KDL4E+iFAuMzIQs9J9WH/158QUjUC17leDBHFpPth7U5LTJY
ShGpQ/djhGbI6OL/IaZoNln27Iupfx+vhArSUPYgSICHkjltrtWFd6MMVg3qCi80kZkf+f5VlD6Y
kH9uPuHxWzdcqtzsRKlPeuCFg17fHem02vCIqSG0ayl1wLl7qbcjmt+M5nqSyL6Xj/K6S3FeNui0
VFjqRvoJAu7PKcigOaAm/ihdpFDjtt0kPO7nvTLaP7lDes42EDQkNVYHEnzeMAsC9CHBgsA38ecL
1rjc0/MoV20GJO+jXm35eK3W+Cwp8NY+HMP9HipRoI90eDlufgaV0eR+WqKEgD8sZj7FBdVdotDH
emAmi0VbX5JkMaoVFRFMUEqOTSJEmx2FEqmvCHxHsvdqP+dmOmy/p3NKjLMOtfO3cSkYiKMGBB63
82ID47Sjk1H4eZpFNt7TSZaPTPp3/zATxb+IR1CcSehvMVYOkpveg5LF+EF4bvDopdC7IYMn96DY
fydupLMHxukJWSrqLUkZkShXrKZ7Sbe7m9/VQcPfE2JlGUXBUA5EV0o+Vy2v9+ZgKXf/UTeOR+GX
fniO3f/IL2OhO1LTciVklko2VIDcDkVGDn+3BhzW4dZkuU+lSvWNqob0x6ihgQOntbpwNXqtKyOg
pjUtN4KxAUXG2vywMRFLp5Y1k0+Yoq8rv8qpJvkrLK/QMF+pB3eExtxnxVLL+RkonI5SwW5wrSzF
WAfeFwvgBDwkIGr+kNpj2ivuWcxoh+gmrS8ePL/4VW1EDub/CvmY/P9TnleHq9RyZRmQ/F98POrP
4gNgfl9OHCxjMmutSOiE9QsuiaU+7CYy/gQj/suVKo2qSZmpnBvcpGCt5icw9HGFoFl0rbGsyMjZ
+u3DMeSbK1xsmGrEY88gDP193ir3oDY0AiZGMwLNxwfGFnD5ETw/9/WVNTcaZAe7KAv9iz2MK9OJ
O3y6aCYePpF7P1l1Idf4dy/Q4Afyr8ixTf2PsZnN4vFBughwkiqpfeP42S6lBS7CtqMG7NhHwbyA
sZk6p+RqigrquQfQOfR3G0LJvWreUTYc1S+poldWK/NGSL3cxXPvFIN2LYZSTKYhOAyYBW0dMX7h
eI/vhrZDey75VPOHQQ+hK+H8rpyEb3tQhbDk9hTqrOm5WjxWHyc2MJ+PZVR3VzsUmBgGpC2F80SV
IIsLzKlCH6pVstaEP0b7RnTyw10+dQZKJ8L3NZznPief7RZiGV9173CXlexarCBKXKktRT1BiePU
teLI3kF1djiKtqq1s6qRPrn+jt/FTyhOq2LW5eidei5ddjIcZFYZxPDocs1qNx1SZgbhBVZrHsDU
QWpWYspXurgaubc5vvdCMVsG6spSUl4seTZkufkFgdyDNLu8lwMjI9NYt/uJDFX5uVWYCv6GGt+l
EtAO3buQavJDQAAvuWUoBYiTl6L4CqXtGGB2uAhXEcqWCESiTIhHsjp49bZlUMmsoBJQzQ8HktQp
JhsGEnT/NaAMSgJ1Iow3p8oaEG4sG0nR636Ehe6fmQjHmFx8ryAzyH1BMtVekXjBRsNexl3EQO0d
i1CIGomK1NrzM2gahYT4hclRPsuYJlRSTKzZcR6ngXpkoKEIWprJOAtDVkMhQBZFBSWHmfZrncOQ
oSKUv827XLzO8+eVl3FX2emk/UotE3+0SByUW85LkErr35NPmvnZQkamzA50fSJ5I9HpwtfTtZ2H
0O/Lg95nyhYqaVWMcyLNc5wo8/q+eX3stk70OJ7elv7rAVFo1N2T5a4Ww5YCdWgu/oj8bCnntbfk
Qktu7+cOxQHUnqze+kjeurHp4GZBB7kdPEH4p+B20mfk/EQYG0jyohrVYdp/UlXXXfqZE15scKGn
gZzXfAOsp3i/NtkPfeUl10J9lAyrftgmTab6wzKCrVsKmlnhXY2GH0Txn9DO9C6KQUmoBXbFZ+Gv
5DtNH0FJD/OxIU/CxmQ25+3WQWEW66qfh90YR8NYAH5LCtVUjbBjgIFxKq5H2PCimjPAo1b4eHVC
8MPGUC2V4lacRJhPhamPu4vhdy+CDeMlLnxn74aisoyR11gPm2xtMJnsHuFqEsDZ7lmpVU+HBTk9
Ff7BU+K4rxiPRcH4dRIq3yDKtP4tOhO8HmPh8ZvtgSy5EmtiQoPmb8rZCx674B55TkUpmUple0rK
J9p7Jr3V3LC28Pz5Obpg2h+f0lvrpep+GYfbNfEsIuX0H9YZ6OvEU3DL2LqxaW6m7P/AqtIya9Mg
Bw3dbbe3aeO31h6R9R4cUGZV4SFHpn0MJpi/9McXo8Woc0fQF6IhseotbSOTFhrVPcTDKmlB33Nw
JoUeXZHh9ILMly2wQCN61o1gRxP9fZQA9dPGRiOgExHnkxg2lN5dQAV9Hc0s9cHtwpvtPBneMwj6
cNJrxYzF/U2eUn3LZ3SMPnxwRflOvuLXmt/BX90Ddhf3Z+ipuFTaN/hppfS269QjEztqJbzctMpK
A6l16WwCzOpdOrMBeCdOnWN+8xzzmjgBxsASAzpwwh7OyFYLQ7yYJa2QNfB2xntkmwW0UhviyIkJ
p9NTZFvSjmGKgyEVEJM9/47a0FiM1k46iXAvhiKmFyAsXZbvPtQBLbXfBGQxh9zw4S6zG9UrJzWZ
l6fTcByire5i5vn/+OPxCTi2Ct0/rDpCT8EBzvt9pa0rFs370TTLXlhfccUYTC5nXiq0nZwjxIT3
Zp2npvoc2+V8QlO7qYYETN52N9WAVW9t9oN0NBfn6boPUpWVkYV9IL+4wqItPK991zI/D55pYWR3
TSDTf4yfw+6gVCAcQHsyR6+meEAmWD6iRmyw0s9qip2YEBajSKFnjpQnaYcv57qy7/q+spPWHnBJ
Zt1XO3US8YUSZhVfKKiGcQq6NSy6GjjdKgdZzwOxdK2vx6mo6ySkj0LskBEbi47mDc5EZ9eLBUTu
Qoj7x8wa5IroA2oNTK8Z4wwyqlCKhYDOwlrohTg0qOiLK8UuQWCkr4O2l/HRMou7M/dVzijbA99D
Wkp+Sa5iiYUJ1SSypfdBYQ==
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
