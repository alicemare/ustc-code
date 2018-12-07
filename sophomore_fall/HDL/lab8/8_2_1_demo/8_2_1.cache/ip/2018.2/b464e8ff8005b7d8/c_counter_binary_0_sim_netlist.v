// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 23 19:15:35 2018
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
GaSSRS/jlGW9Y1BXWQIwLw2ZheMLJlbiX8Q7pmv3XUCT22cT1wVE3NhuK4MIk7gc6UslSzolDiOc
4ybwQ4d3pVw5Pbs+gj3mC6aS5ShunN4b2Gl4f8dPcr5/I6Ql6GBv89CYH2eKD+ddjhzJChQMbXUv
VY5Bh5zpxkoYWtyL4BViCVQ3KTT1+i9SUeugLODdXhA4BYCKLKZ8bgIzCiLIG9EuWqAbCS/EbD0N
g1KQB6k9UZzEXCcCBr7n84CSYBOEO3wyu/I6arCmhHurG2GoS2nY5Ba5UJdnoAfHURdQdOENgwJN
9cXH1TxiqlOAPsX+6NOIFCgXMrBUbOd6nFJkpA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r2zGUvp+CSTbrZ6u+rov0BUa/03xfjJR2e8j/7JmO7OMKQRSMt01ajU8+EtyLoCE6AmLlDcxCtif
6cku4q9KOM/GBZgqICE0a2bU6Ur7N2ei3FRbX9JDrtOXU9mKMNA+PtZybXSozf8eKUccphxA63aB
q3zLiO0qmRKVICrXFkkW2yWkPVy92CdCfECcfGsaTgQucXaGnPcl1B2V0ZoJ8kA6FPfG3tOuvcwa
MoRwWb2orrKbsS0WdejdnohkS0I6MoFRY2D5GSgCNoW2Sh7/1yXhijNGQNjbhZiB9nvlv62KXTyO
ikhRUth3jKU8L3UAMQh2KnssIRVlpsTTqVjc2A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
vbdzrtL7oqxWNvLhkR92cvxdVO8cLCE=
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
