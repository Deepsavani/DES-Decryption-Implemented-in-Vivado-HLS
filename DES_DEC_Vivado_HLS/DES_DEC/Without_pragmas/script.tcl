############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DES_DEC
set_top des_dec
add_files desDecrypt.H
add_files desDecrypt.c
add_files desEncrypt.H
add_files desEncrypt.c
add_files -tb desDEC_tb.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "Without_pragmas"
set_part {xc7a35tl-cpg236-2L}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2 -vivado_phys_opt place -vivado_report_level 0
source "./DES_DEC/Without_pragmas/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
