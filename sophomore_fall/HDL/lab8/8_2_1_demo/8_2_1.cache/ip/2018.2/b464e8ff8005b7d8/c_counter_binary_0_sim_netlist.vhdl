-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 23 19:15:35 2018
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
JgJ3rZWR+rEY4iryPCxfJwushqGzdCm3+gB8Dqz/jSqmT9dkNnzx+LPYdtBiSkR7SjGPlPR6brWe
aD5IiwfyexqCTnsWtT0CGC/IuA2FawUScyoquU+InFN7w1JrX0JHSilTx4z5BQlwwrO99f3vqgSI
KoWkmSvGg4+mu1ZE9/ua5IJH8gv2QLn8l65ZP9jBA9TdJa/2LnrahqawjkmIia8aupNEAk2dt+rV
mB4Zh/ceTdm6cQcMwuZ/HYcVynjKUzbLZSPTstYLSho4mcRxllqmiLmov3ToxNjURL8P0uRMI4gU
0HOBtSBYuebNw4rBCOHggGt8NfJWfwewpJTJqw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
MRFHJfXpWxhNfx6JGxwPAYC2+nN2YzXnRduG/7qVw48eqYeBuVX9kLPK/BJX8I5cll/jjyV/pQe6
/sFOjG7mOwPNuaf7EwITnuf7j6fS/SrtdgK2UUZjSceAigX/29A08fDM1TP9WQTOMLxS3HtXxIiI
k+JLUN0W7z3chsjSlmlqnyVEB/XbbrUJpoTj5FB6b1f0kD0sKUArQLGOe1dnOyOOGRJNnfEpxKwD
g927Qg0rQ/JgGBKs9VnpviylWzjXg14WQJfeRkI6rN3c5oQl9oyeOPSV4EhXWQGX2yxTkIG5JpSI
NuVdyO4oDIerIcPNkDSfSriUH1YKpvqAZAljJw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17232)
`protect data_block
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
McuEPVzPFxIiavS2vtZ3RoEr
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
