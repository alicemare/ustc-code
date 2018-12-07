// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 23 19:44:41 2018
// Host        : pc running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alicemare/Documents/HDL/lab8/lab8_2_1_hw/lab8_2_1_hw.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
cU6UDbUDBofqpwVNeSN5+IEsb347Ignxpp89cM9ozerx/ReS8XVn0YelFH1pUhlNlcY+CG80viX2
X4uO/i3Qqi7RgAIgddIXGRC5G3LW6RM7YZ4eErvjhWdnizKyjqcp90H3UOFmmA5SDWOo+DWo+Vmv
E7Xl6gRmoIAeAskQW2xS0Nm4xhYSiHWzWxGuQbjr+N+ef6zZ5MSUxQt2sKB5kW0kGV4ihKhsICdT
Qd7VyT/zhxegVTSzQLE/StT8Yi0MjIuD18rjYxDtVAWUK26jqrIhSfKNPQuRfoztmeGSAEcOrylQ
IeRdJT+x7jufs2CCgCDqccw+DeqfguR2e2A11g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U3XNhPh2tMaODKaQixjndeTOH2YbdvgKUJKTyBkMUZpFrALCo1ZXSyn1cUgZqmbXMU7+/Foda8Oo
K60mWatxp3MhxNVyLvVMR33xwqBk7irxvRWDREpbbZR7A7+8GnXp2SRMRcV7X7vcxmcvzO2pvlGl
dH1PRJiHEjv75+fnANgu/kZMvTTQMcX2ZFjYSS4RyvhZJKf5PL7yPkGCBMrWI2/exCXOVwSWNHuu
3m5Yhlv+7D1sVsW8asMADTeFxJjNCYdEuP8glaBBeWlxAdQNASt88QMa5EOHOz31WV2V9b/8sS0Z
l74H32ZHAdReFMoDl1pKC2u4hIxJl4DVbUOX9g==

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
