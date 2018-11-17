#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Nov 02 19:24:31 CST 2018
# SW Build 2258646 on Thu Jun 14 20:02:38 MDT 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 829df2e82d48497183487fd3d0d30170 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot add_two_values_function_tb_behav xil_defaultlib.add_two_values_function_tb xil_defaultlib.glbl -log elaborate.log
