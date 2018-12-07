// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Fri Nov 30 17:10:16 2018
// Host        : pc running 64-bit Ubuntu 18.04.1 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alicemare/Documents/HDL/lab9/lab9_2_1_2/lab9_2_1_2.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
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
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
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
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
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
dCIqxmrXL9I+sp2jUfhKCuWkPQkPkGfjkYy+0tvLTuhS8ORKGzg+hojX5k++fDnNHeIzIHYn28Yo
zLnYg03B21qmN84/fOHQB7RSp3QT0I6kvwGXvuDlwamPN2fIRpU83JgiCtfEzPoBFA5j1Xq/iMai
4P3WEgRyYuqbVo+8a2SHoMvqNqb+yklHx0KNngX22jKe0D1Kl/QCjA/gw5kJ/b+3oCegJQlt988u
5/UycsRy8Ya3rDWSsecLGdE7iQr/Cm/lwDwkkLyz15b1srjWTd3tVRjmOW4pHeNzbU73D24muLhI
iz9tzf8Y8SqeYRjcvlct0gUKzzm2WmttAbtNpQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
poEFfiEGxRQPfDdV7OCmN7FueX7non/X4V9oHMz2iVHJsx58dbA8z1Tiyp4+ozs+iKyKrC+Ba2HR
UP+QcW4kuz+Tzclym2/helhDdOrlZW7cF6UkGdiJG2yvjjO7FPdLORm8dd6mTB2xu0tlpr/oPsVR
ku0HtMZv6zmam66qaG/OPUGKHJNBoyCN2ZLSBMieFwpVfHpT1+jQeHCZaMaE6YIPwk9NT3pMmODv
ruk7QWAFVMB6a+gANB3+QIQpzI6l19rb4kCwFCxSp5UUGI2oJIld7gvGe3pyN1lZghQSPOCup7P2
rzInIAfNcnm/CIAumxYmO6er0s8ShVdGjIPMng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10064)
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
