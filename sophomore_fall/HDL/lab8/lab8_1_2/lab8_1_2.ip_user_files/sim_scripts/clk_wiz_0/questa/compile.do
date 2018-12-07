vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../lab8_1_2.srcs/sources_1/ip/clk_wiz_0" "+incdir+../../../../lab8_1_2.srcs/sources_1/ip/clk_wiz_0" \
"/home/alicemare/application/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/home/alicemare/application/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab8_1_2.srcs/sources_1/ip/clk_wiz_0" "+incdir+../../../../lab8_1_2.srcs/sources_1/ip/clk_wiz_0" \
"../../../../lab8_1_2.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

