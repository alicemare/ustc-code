-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 30 17:10:16 2018
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
fvx+0cqh5UTVh6aM4+hyeAumnUOE1uyXeD79+RrQTS00BxvRUp3dRUVLWl+SSLyv+kET4uk/NEBo
fkRP7iWC49K1UgaIys7FAj7HCaTirtE4Y3lS4dAfMLhsJzNsUkFb2aJvl/P2upBZErvxdmaN8/w/
lVGgTUmffs/BVD9B6xHrWCWgZQKLcD7T5XB/gPNHQwBcU84GkScezcCPQF+k+zMJFJIaDpAofjeF
yi0360CN1FND4thRebIkB6T/0ELAjjykFzrtrb3MOdSRVLXG8qj5sJ5vb0Bqw/gRTdCgOAmsWa7T
QOpobz9GZ4jrArhoetgJBT38ZbfCax0wj6zboA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
029LM+zcqSHZ1qjf2zSXwMjxC6qfFZBJH63cD1A2gB3aaAaOmTJIRer2efLyKqvg08YoUUFz8FvG
FonR8CKzo5KmEUTN4JJAbAJ0vidvagARCNoc3Hiw5V9/JNob4Cl25ENqg7BkxqSSFCQlT13zKYOO
tkM6nh1jmVs/7UEwp4AsA55ci/w4mZKAQ58YSj9S6S9hQl6NyUzQNSxFLXiXjUd9jWANRmYrsv9P
jvfncT6nNUlVh4vAy7/37OIlumplTToDRdWX9CU+4kDNwumRW/DZl1PCRjE4y03HI4ueRoDmCktK
oFTZ8AxZVZCZdjjCNnNzUtfWKCvr16m93gTjmA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16944)
`protect data_block
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
1XdvqDScsquSKTAXa8lP
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
    L : in STD_LOGIC_VECTOR ( 7 downto 0 );
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 2;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
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
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_i_synth_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_CE_OVERRIDES_SYNC of i_synth : label is 0;
  attribute C_FB_LATENCY of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_IMPLEMENTATION of i_synth : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_WIDTH of i_synth : label is 8;
  attribute C_XDEVICEFAMILY of i_synth : label is "artix7";
  attribute c_count_by of i_synth : label is "1";
  attribute c_count_mode of i_synth : label is 2;
  attribute c_count_to of i_synth : label is "1";
  attribute c_has_load of i_synth : label is 0;
  attribute c_has_thresh0 of i_synth : label is 0;
  attribute c_latency of i_synth : label is 1;
  attribute c_load_low of i_synth : label is 0;
  attribute c_restrict_count of i_synth : label is 0;
  attribute c_thresh0_value of i_synth : label is "1";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  THRESH0 <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_synth: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv
     port map (
      CE => '0',
      CLK => CLK,
      L(7 downto 0) => B"00000000",
      LOAD => '0',
      Q(7 downto 0) => Q(7 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => NLW_i_synth_THRESH0_UNCONNECTED,
      UP => UP
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    UP : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
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
  signal NLW_U0_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
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
  attribute C_WIDTH of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 2;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 0;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 0;
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
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of UP : signal is "xilinx.com:signal:data:1.0 up_intf DATA";
  attribute x_interface_parameter of UP : signal is "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
     port map (
      CE => '1',
      CLK => CLK,
      L(7 downto 0) => B"00000000",
      LOAD => '0',
      Q(7 downto 0) => Q(7 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => NLW_U0_THRESH0_UNCONNECTED,
      UP => UP
    );
end STRUCTURE;
