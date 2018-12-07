// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 30 16:03:29 2018
// Host        : pc running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
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
UDJ/btbaMh0H5YEAJvu7I2Px6Egh1RNO/rbMMPyUTeCMjzsP5Lv4LesSE2mbfAB/fujB0X31y6sn
9MtzT8YqmP6afcdCyi4+XqVmDQKklZC6pi3io0b/MnIoJ79JXvgOWQCicBxBIBJKBU7GFJowxQ6G
JmVU4KvL7TSz+C0UbbRN5TLib9KalD13J7ZxfqHVH0bg+g8cmrk3OI4Gv0OEYEem8UqgyxpOlbBX
ryT1cMm7BFTBTbPpWcMgrYc+5iHyJZo8o0nRnYLdc5dL3epEWh6m+nhqEDKUjbCxoXNp76c1bJgf
+R0imMZsy99ZZnyN2dGKT5M67LRlYZmkVwwpIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jQG4ow+1nMEb0kKsdjliOBxIfZCzpV5ieW7yoS6l0tmJwUgJYNEAtgqTiZa/TCESxb5m6wH15tKr
XwDk3vySdilScI2cMiG6VyiKLq+7lT1tvQBoMVsGok+m90Y6hzd37omnzn3JlBNKGIHl4j5qGKy4
y3GVWPud/nJ1o91ND827TFKk1CP++2YRI4Q3QosPCOlwBo9gu3e1TWf5t8bcguEj0byRhYNTud61
7VOyl82Dj/caZtCXu0zIFbHQZ2PFunuq23L8iO4fFYK3Erbo1nQ3eQY1nnwTimY4NrwFxy3OzIz5
dolf7eGMQWdCm6d0DaxjGX87NasBeqG0flj2FQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
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
Aq42oFEjBQ==
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
