
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set key_group [add_wave_group key(wire) -into $cinputgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/key -into $key_group -radix hex
set input_group [add_wave_group input(wire) -into $cinputgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/input_r -into $input_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_start -into $blocksiggroup
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_done -into $blocksiggroup
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_idle -into $blocksiggroup
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_des_dec_top/AESL_inst_des_dec/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_des_dec_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_des_dec_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_des_dec_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_des_dec_top/LENGTH_input_r -into $tb_portdepth_group -radix hex
add_wave /apatb_des_dec_top/LENGTH_key -into $tb_portdepth_group -radix hex
add_wave /apatb_des_dec_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_des_dec_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_key_group [add_wave_group key(wire) -into $tbcinputgroup]
add_wave /apatb_des_dec_top/key -into $tb_key_group -radix hex
set tb_input_group [add_wave_group input(wire) -into $tbcinputgroup]
add_wave /apatb_des_dec_top/input_r -into $tb_input_group -radix hex
save_wave_config des_dec.wcfg
run all
quit

