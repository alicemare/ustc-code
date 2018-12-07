-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 30 16:03:29 2018
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
aLsm8VV4FkFRquiemYsQLxbIeYMaplS4/hRoaspyQ8h4g+Cy2AMkWsBhengfp93fKhX4gzav6vig
7y3LVL6K9Q3CP8HsXZywTJjqLIIKb/L7aBRxtmZ3ZV4Q9TL+Q7hgwD/4as8EoI0yn3l7cFIZHr6j
wvk4n+nyEM9gvWTiddLd13WZykyO2/8nSIyD6oT9MVuI5zkvL917ytiI6BgNAvWfnFAMVGZ3fVSN
pwiuZ+DONea612/JdtKqm/uy825lCn9ujhWFaS9Wg0lA7LumDt1V1cVs/XVYA/Fx0mbjjf8HYrzU
bDgL2l98bsFLdTFleQjqOnEmJun6E0/QAVp4/A==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
0JgF421OLahMjooObIdOBM5h6tR5e6oda6dISEgEkNha+hV2uWSiR/+YYjGkiCOMoTlEDhoHIvYi
H/y47UOv0m+yGhoA9Q0vmsI03Rb116Lfov4R5QmXdgQxF0scB6LN4EQTL7nnXrzgySSopByq2CfV
LlU7U9gC5qXVGLRVEYo10TrB31YVjJxWiZgePcsMb4Fpe3kYJG29sE1mdjgyA9JyDtIojAkkudUV
nlSEXTSJkCdVl9JONkQmBO9BAVrt0rJ0ESr2UrCXnP1W8vU7RhzMC40Ndrq/SGkCPnyYNnlTWADC
KtjjRbP4plTXshylVebpBH6fMS0WMyUlap56GQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13360)
`protect data_block
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
7hWCiQJCAMdlmSca/bnVfvMRVrI/Cw==
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
  attribute C_COUNT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
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
  attribute c_count_mode of i_synth : label is 0;
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
  attribute c_count_mode of U0 : label is 0;
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
      UP => '1'
    );
end STRUCTURE;
