-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Fri Nov 23 19:15:36 2018
-- Host        : pc running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alicemare/Documents/HDL/lab8/8_2_1_demo/8_2_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.vhdl
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
jFnBOlYd40WuPOUvLv9wf1nLgWB0iVwaCryjMzv+oPvvtIBAEgtWR6jIECSX8tD0lpje1n+tfU54
rOmpxBel9NSfGEvh6uAlwT4QRgNVAx8h7Jf+nMSm1A8J7vdIPvUcs6gyQXZ5cMUVO4ORD+i9wxp1
smLYMz4gcT5K/2dAVbACX2zrFN2RklYgRVh0X5IQken0RRHjs8Eb63kdVAz9ultY+MuchNSQilyV
RM4PHpYY+LjeO1E9Ki88YvNKyFw0sGui6ZFJfOnhc0fn/bhXxRUvlkTp/nhM2WZHJgClOFEJuM5e
CTpE4Pw5ryDasqcnLi2FvKgRJZq7BPmdKQCdBw==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ypLWzvwe4eh4cyRliCg43waWQOKgfhWM0H2F1RytTKntklie1aQF/O/3QtPG6gFuLuBtF0JeNI66
ojHZkHCmYvQaZ7KW7dr/FQe6C2mHUD8DlVWfBCa+Sj/Rq9RagBSWhF9yqcOYQARi3b+JfTtY1eNF
rECZhLZm3ElVIHP8j1PKx7XV+5bW7YSF35GUvYBRM+DjqpIN8nlDQ07UvbxtxtZOYSoSekcmkFWK
vI0DACvKDyWFFiGxUyIqGl59q14k56DUZlNkpvUXRsh0xO8RClaqww61q4qvl8zEGw1M1VCVlN1G
9xkLuU1gbyoe3/Whkcmq8DGNX8enhGO7q0HPMA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17056)
`protect data_block
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
pKJXxS8fHN7M2UAaig==
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
