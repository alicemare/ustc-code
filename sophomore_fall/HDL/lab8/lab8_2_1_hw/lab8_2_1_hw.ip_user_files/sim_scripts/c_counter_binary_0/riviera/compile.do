vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../lab8_2_1_hw.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

