-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 23 19:44:40 2018
-- Host        : pc running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.vhdl
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
Tm/K3wa76ROrDomuHdR8FWu8yxfUvt2d8Jae6EMJOOcfnuvCKXmTctIhbLUfOfRZ0Ho0EzxnA9qD
0gkZ9bfNU+NH/4m8MRnqoYlXngO3y8qqe4fegZJeP1dC6DhspJC4JH56c/CWGPodYZosVx8pE/TO
QoV5jP2+xtuxjltJS4Mm+rCY/WC3zYeeSLfVH3B+8NzAvCt+523zpizjVYlSqzCgaK38ssgYOqNt
jIy8Owxs4gRtoHWtXu08gwEUVYGcjzqrvLc67w/SsepjNplVYfJfXJYQXAIBAAaa+2nb7G5YhwVW
utgzFjvV4mJmLMlKxao22mN0f+eMDtPZ6WpbwA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
q0A3jWrJiukG5t/ncSDAejRhfBCJkzn8dUNaXhiggOVfSkBQlAy/CfaEHkHlq5fXINVmrxtmeCUE
X0+TdMCrZMKyWpFw6G5U5hnkte29OPHIwzkenRA9yvI2TJnmrv7AXX6LXM/KzgSQ9BuVGrPSIrIF
qsqZobUFdAmN6otmAzmId2OjrXdUNqc22c6/2CwLpImZ5WNIpdwmJ6C46VZH0tUaC58anJCI4jGN
sY6fn8fS4kQ35xnYNQm2lRCzA10Qr4e2PkF1f+GkW7Bc3TUNlTfPUaGZbyfUVlPSXuiyQANRS3hR
V/8xwoV/QmvOaHWiqq+Y+1Aq6u+Mdm2V46u7dg==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17232)
`protect data_block
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
WomLxdwTFhDImzJdnluUX+gH
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
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
  attribute C_AINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_LOAD_LOW : integer;
  attribute C_LOAD_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_RESTRICT_COUNT : integer;
  attribute C_RESTRICT_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_THRESH0_VALUE : string;
  attribute C_THRESH0_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
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
i_synth: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_0,c_counter_binary_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_v12_0_12,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
