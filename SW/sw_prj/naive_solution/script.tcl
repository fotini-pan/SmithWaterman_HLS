############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sw_prj
set_top SmithWaterman
add_files SmithWaterman.c
add_files -tb SmithWaterman_test.c
add_files -tb in.dat
add_files -tb out.gold.dat
open_solution "naive_solution"
set_part {xcvu9p-fsgd2104-2L-e}
create_clock -period 10 -name default
#source "./sw_prj/naive_solution/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
