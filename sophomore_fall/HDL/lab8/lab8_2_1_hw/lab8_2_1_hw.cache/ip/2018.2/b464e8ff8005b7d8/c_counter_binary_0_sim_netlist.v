// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 23 19:44:40 2018
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
CchJ0a87afH0+7CgG7r9qt2j9Zlmtc9jQXHh6G1HPS0GJizTVD5zg5ph1cLj+MIpe9RGvTkfBuM7
hCV+wAefsFK8s+POANTQbKzRea4sCpHeB3G0A8MV7Ay7wqISF/eMp5kcsCmabkKZJAe0xpT3yF0B
KG3hKgbzh02sf8sTceXPXsRNnaL65qyENG8GLkDI/VD+/HZS0JgxFkqVBfPAEPR9J8TUMuSvmene
mF6SNQ2QhwNmsOwWe+bx+5lO3GD9kSJ7epD0BsfhjIpTgc3qulIY+dtxKPtBccgh4FgFqXL3YF4X
iPMbLRaRaNhwkPNDi19sIuwAgkXgq2ySFxPizA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vT+2TiBVmWbDVL+iZRBwRb1Ij2ioF056QqJygjPxYxk+ZEn8Y1d7klrYZdTJv3peYGHBr16u68gT
uWBaQl6Tlokj8zEVYiH6xCafimDTXbI2aul4WsYQOKkP7kvqpMeSM93hFC2u7YxIjqgin+Lf5oEA
O1cqODSyx/GXyRiEuPSMG+hLblTpQFwxfB5uWKSyaXITAiedolRf8svUPAvbFtFeNk9io3HRNWOd
uzOzL9a9khea322q5DApG6m9a7tJm6vuOCctYcALzszXVasQVXdRv+PJeXhLSF2o8vJHes6nREZ+
B90H2anhRC7KccMCV0UGYhTKdoTFJI7j/OeTbg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9200)
`pragma protect data_block
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
HjVKWjyBzDHdoAAgjio4z8mu5XAxDiI=
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
