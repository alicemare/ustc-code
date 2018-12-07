// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 30 17:10:15 2018
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
    UP,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
  wire UP;
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
  (* c_count_mode = "2" *) 
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
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
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
  wire UP;
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
  (* c_count_mode = "2" *) 
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
        .UP(UP));
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
UQPe/hQNLec+Xl1+VkH7KbJ02gtamOcJkVKNGentb8Rx1noDmgKgF4kOR11nQZXQM+I8wNT1xYvH
vdjWrMd7vamX2xg9kE+oAA6PgVPoKKo0iGZ9u/YVPKKNg1dBzHIFoE53Lbd4Zb77qJdKnI9FvlWg
j2Q7IMzZMZn/ygEm2k/Hs31zEVvYnaysrC2kF3U6nw/Oa6z4Y19a19wXH3ZMnuWlB9xm0URNOhaC
FcKyVAokjYDTKUMGOB7+vXl8crjn53TJ7V/MsjbGUx3d0teFEU2o4N+DwE+ek/wq2Bd9IX1SHkrG
hlFRfBarVuJfvnKm6VLHuQ331dEpMiwaasLuyw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CJVp5vo8SIZHoq8dwvQeuX2tXt/DcIFIyZj/7BmFyzuNgRppIt4AUCo19/nDJ5abGeTovPeFb+3f
5L+8YIQH6ibSAkU2U4ECH64oPVSVPCmCJcpNNlyrbmQALr55BQd+9mZtnub8hJiNCnhEQfXoWS88
p4fmv2B8ZGdeb4/Xt+bGqeVjjTqrYh/Xk8QXEQu6BLDRxq/CrG2T/L3xGmj2GKHPhpv+YY9dk+RM
1QfNtqWmQ1caItKjHRlyNalK303/X5Fzw1bra3KLOqu2o42IGvLO8oSrTf+IXfOqzo9tWB89Cnk1
uGqeY3OOM8FRDW++j8JknRf6nHd1IXNoA6WgAg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9984)
`pragma protect data_block
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
m5UrRDKisC3P
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
