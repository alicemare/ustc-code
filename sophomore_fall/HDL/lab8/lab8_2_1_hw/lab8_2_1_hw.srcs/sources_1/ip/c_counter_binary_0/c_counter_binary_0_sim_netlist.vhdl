-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 23 19:44:41 2018
-- Host        : pc running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alicemare/Documents/HDL/lab8/lab8_2_1_hw/lab8_2_1_hw.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.vhdl
-- Design      : c_counter_binary_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
RTEZoyrMU99TSZuffUWhjjda7K9dghhfiIrHioaoLSJTX3M6rYgkRGTJicm0/juM532gs+KrMrBN
Agus5OuImzMtJO2yOLKIrh+TfKba0MF7B1DTcr3tSuQLi1U6PV3eIx59O2wfl5m16Erhj3kofy9h
ZYcH6yI4BRTaCi/unnBZotwmZ+Umih44djyHMv5QzH7JfL8DgT4fwTxo3lEIEh4dQ+n+OVvswz+a
kzJycjT5DP/iMoNvkvG+iB0Vxzy7zcq4NK9vc5CzhsV3h0CVuipGdp9LQVZ904Bw6Uzz/P6NKhmx
MqsZ5GJuyxUijnF7R1dCLgKr+go/F0FOD8ahaQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Nf5nvMR6jVITJYb8B0QQWVarVvskR0yFYtp03ngvwg/K+rK1yZBQHz45m4YHrVmdNVpEXsZYyGXz
38q7JegfdHCvUxUQgiCAnRgOTiOsoivpvfsi30EBP4qmsxukFj42jGd+7yhr8DoHrmRb7gk4ehLG
TIS3UMAwTI0dJqYctU+5LR48QNpYv8/AZuJWk5t+hNIw5yq5KP1CAOyU8HKn9dZWiHJdejvSYg8c
7OFIUP8fQYYSuy5tK4/y99CDmOoBK7K5xqADlFd9VghRldd/vvj7YG5yZMu/JvndDxLES4tgtkyL
SztB5FgI859p0OkvyKHdjSwVniAFOYmDpgHJVg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17056)
`protect data_block
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
LJnQ5qNK63uVJEJssw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity c_counter_binary_0_c_counter_binary_v12_0_12 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 15 downto 0 );
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_LOAD_LOW : integer;
  attribute C_LOAD_LOW of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_RESTRICT_COUNT : integer;
  attribute C_RESTRICT_COUNT of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_THRESH0_VALUE : string;
  attribute C_THRESH0_VALUE of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "c_counter_binary_v12_0_12";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of c_counter_binary_0_c_counter_binary_v12_0_12 : entity is "yes";
end c_counter_binary_0_c_counter_binary_v12_0_12;

architecture STRUCTURE of c_counter_binary_0_c_counter_binary_v12_0_12 is
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_CE_OVERRIDES_SYNC of i_synth : label is 0;
  attribute C_FB_LATENCY of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 1;
  attribute C_HAS_SCLR of i_synth : label is 1;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_IMPLEMENTATION of i_synth : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_WIDTH of i_synth : label is 16;
  attribute C_XDEVICEFAMILY of i_synth : label is "artix7";
  attribute c_count_by of i_synth : label is "1";
  attribute c_count_mode of i_synth : label is 0;
  attribute c_count_to of i_synth : label is "1";
  attribute c_has_load of i_synth : label is 0;
  attribute c_has_thresh0 of i_synth : label is 1;
  attribute c_latency of i_synth : label is 1;
  attribute c_load_low of i_synth : label is 0;
  attribute c_restrict_count of i_synth : label is 0;
  attribute c_thresh0_value of i_synth : label is "1";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
i_synth: entity work.c_counter_binary_0_c_counter_binary_v12_0_12_viv
     port map (
      CE => CE,
      CLK => CLK,
      L(15 downto 0) => B"0000000000000000",
      LOAD => '0',
      Q(15 downto 0) => Q(15 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0',
      THRESH0 => THRESH0,
      UP => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity c_counter_binary_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of c_counter_binary_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of c_counter_binary_0 : entity is "c_counter_binary_0,c_counter_binary_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of c_counter_binary_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of c_counter_binary_0 : entity is "c_counter_binary_v12_0_12,Vivado 2018.2";
end c_counter_binary_0;

architecture STRUCTURE of c_counter_binary_0 is
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 0;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 0;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 1;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_load_low : integer;
  attribute c_load_low of U0 : label is 0;
  attribute c_restrict_count : integer;
  attribute c_restrict_count of U0 : label is 0;
  attribute c_thresh0_value : string;
  attribute c_thresh0_value of U0 : label is "1";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of SCLR : signal is "xilinx.com:signal:reset:1.0 sclr_intf RST";
  attribute x_interface_parameter of SCLR : signal is "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of THRESH0 : signal is "xilinx.com:signal:data:1.0 thresh0_intf DATA";
  attribute x_interface_parameter of THRESH0 : signal is "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.c_counter_binary_0_c_counter_binary_v12_0_12
     port map (
      CE => CE,
      CLK => CLK,
      L(15 downto 0) => B"0000000000000000",
      LOAD => '0',
      Q(15 downto 0) => Q(15 downto 0),
      SCLR => SCLR,
      SINIT => '0',
      SSET => '0',
      THRESH0 => THRESH0,
      UP => '1'
    );
end STRUCTURE;
