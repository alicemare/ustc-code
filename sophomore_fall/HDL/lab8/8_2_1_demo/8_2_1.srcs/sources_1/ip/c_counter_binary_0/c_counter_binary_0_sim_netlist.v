// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 23 19:15:36 2018
// Host        : pc running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alicemare/Documents/HDL/lab8/8_2_1_demo/8_2_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L2Xye3aXVqb/mhMmQW0BYP2spBBVcXQLOP22Y/72T4RLTMI2qwzF8B+616i3PMDHMfHQ8LyVgahI
AmXkE1qgjxmxtvTZooxkFUBMcq947XrnafT1phwiqJirREb4YXoZCdL/6ct6vdhlfGYID5+pv49I
BU7+CFUriAyMV+bHrf1Ksl7zXkZ9Vlzf2Mdp3Cxl/MRfxxtCaS4cy4yWW6Anu5yyHTN2BGwAmzFx
cemL4IkeGjvpshV0qGKB5H2w5cMOCK0TWqWUyXsM+wxBXjI9MFr1csXKoj6N3cqF6/J47em/KRYv
6dz/Ml7K4I09cqmE8I+bMRVKTNoayqcxoipY3A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GgoerNkoUbsqM4p4Yr5UhzbNJVdGSSuzgAVYb/O/StLmbzTGB9XuU5vAtckDl2SKtRskORqTcKCN
ntPWitLrXENgzulkkEOLpMGNyedelicWVhM7UpA/1K5GldXe45noiOKA8LsuI/cNncuL5/nzbNbz
y19LqJPsD+DAnX/qOPHJ3sfl2Kwp+VaWzeue5yqndMb1RPCeNfG440O8PUmLfZG6m83m3mN1kh54
Vy3Na5iTuGbdNAhbLYrJdBQbVDD3lLStXjZ+qfzSBqB1Do/jQcceZrRqTLgbDac3l35Y4dIBbLJG
LGEklj8Dvc4KIf3q/IozYVOMR1dfwI7/uANgnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9264)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
