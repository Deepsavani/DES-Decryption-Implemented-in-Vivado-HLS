
set PATH=
call E:/xilinx/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_des_dec_top glbl -prj des_dec.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "E:/xilinx/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s des_dec -debug wave
call E:/xilinx/Vivado/2019.1/bin/xsim --noieeewarnings des_dec -tclbatch des_dec.tcl

