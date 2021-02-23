// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="des_dec,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tl-cpg236-2L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.117375,HLS_SYN_LAT=166,HLS_SYN_TPT=67,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=883,HLS_SYN_LUT=2769,HLS_VERSION=2019_1}" *)

module des_dec (
        ap_clk,
        ap_rst,
        input_r,
        key,
        ap_start,
        ap_return,
        ap_done,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
input  [63:0] input_r;
input  [63:0] key;
input   ap_start;
output  [63:0] ap_return;
output   ap_done;
output   ap_ready;
output   ap_idle;

wire   [47:0] sub_key_i_q0;
wire   [47:0] sub_key_t_q0;
wire    des_dec_entry7_U0_ap_start;
wire    des_dec_entry7_U0_start_full_n;
wire    des_dec_entry7_U0_ap_done;
wire    des_dec_entry7_U0_ap_continue;
wire    des_dec_entry7_U0_ap_idle;
wire    des_dec_entry7_U0_ap_ready;
wire    des_dec_entry7_U0_start_out;
wire    des_dec_entry7_U0_start_write;
wire   [63:0] des_dec_entry7_U0_input_out_din;
wire    des_dec_entry7_U0_input_out_write;
wire   [63:0] des_dec_entry7_U0_key_out_din;
wire    des_dec_entry7_U0_key_out_write;
wire    Loop_unroll1_proc_U0_ap_start;
wire    Loop_unroll1_proc_U0_ap_done;
wire    Loop_unroll1_proc_U0_ap_continue;
wire    Loop_unroll1_proc_U0_ap_idle;
wire    Loop_unroll1_proc_U0_ap_ready;
wire    Loop_unroll1_proc_U0_input_r_read;
wire   [63:0] Loop_unroll1_proc_U0_ap_return;
wire    ap_channel_done_init_perm_res_0_loc_s;
wire    init_perm_res_0_loc_s_full_n;
wire    Block_des_dec_exit2_U0_ap_start;
wire    Block_des_dec_exit2_U0_ap_done;
wire    Block_des_dec_exit2_U0_ap_continue;
wire    Block_des_dec_exit2_U0_ap_idle;
wire    Block_des_dec_exit2_U0_ap_ready;
wire   [31:0] Block_des_dec_exit2_U0_ap_return_0;
wire   [31:0] Block_des_dec_exit2_U0_ap_return_1;
wire    ap_channel_done_R_loc_channel;
wire    R_loc_channel_full_n;
reg    ap_sync_reg_channel_write_R_loc_channel;
wire    ap_sync_channel_write_R_loc_channel;
wire    ap_channel_done_L_loc_channel;
wire    L_loc_channel_full_n;
reg    ap_sync_reg_channel_write_L_loc_channel;
wire    ap_sync_channel_write_L_loc_channel;
wire    Loop_unroll2_proc_U0_ap_start;
wire    Loop_unroll2_proc_U0_ap_done;
wire    Loop_unroll2_proc_U0_ap_continue;
wire    Loop_unroll2_proc_U0_ap_idle;
wire    Loop_unroll2_proc_U0_ap_ready;
wire    Loop_unroll2_proc_U0_key_read;
wire   [63:0] Loop_unroll2_proc_U0_ap_return_0;
wire   [59:0] Loop_unroll2_proc_U0_ap_return_1;
wire    ap_channel_done_permuted_choice_1_0_1;
wire    permuted_choice_1_0_1_full_n;
reg    ap_sync_reg_channel_write_permuted_choice_1_0_1;
wire    ap_sync_channel_write_permuted_choice_1_0_1;
wire    ap_channel_done_permuted_choice_1_0_s;
wire    permuted_choice_1_0_s_full_n;
reg    ap_sync_reg_channel_write_permuted_choice_1_0_s;
wire    ap_sync_channel_write_permuted_choice_1_0_s;
wire    Loop_loop3_proc_U0_ap_start;
wire    Loop_loop3_proc_U0_ap_done;
wire    Loop_loop3_proc_U0_ap_continue;
wire    Loop_loop3_proc_U0_ap_idle;
wire    Loop_loop3_proc_U0_ap_ready;
wire   [3:0] Loop_loop3_proc_U0_sub_key_address0;
wire    Loop_loop3_proc_U0_sub_key_ce0;
wire    Loop_loop3_proc_U0_sub_key_we0;
wire   [47:0] Loop_loop3_proc_U0_sub_key_d0;
wire    ap_channel_done_sub_key;
wire    Loop_loop3_proc_U0_sub_key_full_n;
wire    Loop_Pipeline_loop4_U0_ap_start;
wire    Loop_Pipeline_loop4_U0_ap_done;
wire    Loop_Pipeline_loop4_U0_ap_continue;
wire    Loop_Pipeline_loop4_U0_ap_idle;
wire    Loop_Pipeline_loop4_U0_ap_ready;
wire   [3:0] Loop_Pipeline_loop4_U0_sub_key_address0;
wire    Loop_Pipeline_loop4_U0_sub_key_ce0;
wire   [31:0] Loop_Pipeline_loop4_U0_ap_return_0;
wire   [31:0] Loop_Pipeline_loop4_U0_ap_return_1;
wire    ap_channel_done_L_0_loc_channel;
wire    L_0_loc_channel_full_n;
reg    ap_sync_reg_channel_write_L_0_loc_channel;
wire    ap_sync_channel_write_L_0_loc_channel;
wire    ap_channel_done_temp_loc_channel;
wire    temp_loc_channel_full_n;
reg    ap_sync_reg_channel_write_temp_loc_channel;
wire    ap_sync_channel_write_temp_loc_channel;
wire    Loop_loop5_proc_U0_ap_start;
wire    Loop_loop5_proc_U0_ap_done;
wire    Loop_loop5_proc_U0_ap_continue;
wire    Loop_loop5_proc_U0_ap_idle;
wire    Loop_loop5_proc_U0_ap_ready;
wire   [63:0] Loop_loop5_proc_U0_ap_return;
wire    ap_channel_done_inv_init_perm_res_0_s;
wire    inv_init_perm_res_0_s_full_n;
wire    p_desDecrypt_c_line2_U0_ap_start;
wire    p_desDecrypt_c_line2_U0_ap_done;
wire    p_desDecrypt_c_line2_U0_ap_continue;
wire    p_desDecrypt_c_line2_U0_ap_idle;
wire    p_desDecrypt_c_line2_U0_ap_ready;
wire   [63:0] p_desDecrypt_c_line2_U0_ap_return;
wire   [63:0] tmp_p_desDecrypt_c_line2_fu_141_ap_return;
wire    ap_sync_continue;
wire    sub_key_i_full_n;
wire    sub_key_t_empty_n;
wire    input_c_full_n;
wire   [63:0] input_c_dout;
wire    input_c_empty_n;
wire    key_c_full_n;
wire   [63:0] key_c_dout;
wire    key_c_empty_n;
wire   [63:0] init_perm_res_0_loc_s_dout;
wire    init_perm_res_0_loc_s_empty_n;
wire   [31:0] L_loc_channel_dout;
wire    L_loc_channel_empty_n;
wire   [31:0] R_loc_channel_dout;
wire    R_loc_channel_empty_n;
wire   [63:0] permuted_choice_1_0_s_dout;
wire    permuted_choice_1_0_s_empty_n;
wire   [59:0] permuted_choice_1_0_1_dout;
wire    permuted_choice_1_0_1_empty_n;
wire   [31:0] temp_loc_channel_dout;
wire    temp_loc_channel_empty_n;
wire   [31:0] L_0_loc_channel_dout;
wire    L_0_loc_channel_empty_n;
wire   [63:0] inv_init_perm_res_0_s_dout;
wire    inv_init_perm_res_0_s_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_Loop_unroll1_proc_U0_din;
wire    start_for_Loop_unroll1_proc_U0_full_n;
wire   [0:0] start_for_Loop_unroll1_proc_U0_dout;
wire    start_for_Loop_unroll1_proc_U0_empty_n;
wire   [0:0] start_for_Loop_unroll2_proc_U0_din;
wire    start_for_Loop_unroll2_proc_U0_full_n;
wire   [0:0] start_for_Loop_unroll2_proc_U0_dout;
wire    start_for_Loop_unroll2_proc_U0_empty_n;
wire    Loop_unroll1_proc_U0_start_full_n;
wire    Loop_unroll1_proc_U0_start_write;
wire    Block_des_dec_exit2_U0_start_full_n;
wire    Block_des_dec_exit2_U0_start_write;
wire    Loop_unroll2_proc_U0_start_full_n;
wire    Loop_unroll2_proc_U0_start_write;
wire    Loop_loop3_proc_U0_start_full_n;
wire    Loop_loop3_proc_U0_start_write;
wire    Loop_Pipeline_loop4_U0_start_full_n;
wire    Loop_Pipeline_loop4_U0_start_write;
wire    Loop_loop5_proc_U0_start_full_n;
wire    Loop_loop5_proc_U0_start_write;
wire    p_desDecrypt_c_line2_U0_start_full_n;
wire    p_desDecrypt_c_line2_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_R_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_L_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_permuted_choice_1_0_1 = 1'b0;
#0 ap_sync_reg_channel_write_permuted_choice_1_0_s = 1'b0;
#0 ap_sync_reg_channel_write_L_0_loc_channel = 1'b0;
#0 ap_sync_reg_channel_write_temp_loc_channel = 1'b0;
end

des_dec_sub_key #(
    .DataWidth( 48 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
sub_key_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_loop3_proc_U0_sub_key_address0),
    .i_ce0(Loop_loop3_proc_U0_sub_key_ce0),
    .i_we0(Loop_loop3_proc_U0_sub_key_we0),
    .i_d0(Loop_loop3_proc_U0_sub_key_d0),
    .i_q0(sub_key_i_q0),
    .t_address0(Loop_Pipeline_loop4_U0_sub_key_address0),
    .t_ce0(Loop_Pipeline_loop4_U0_sub_key_ce0),
    .t_we0(1'b0),
    .t_d0(48'd0),
    .t_q0(sub_key_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(sub_key_i_full_n),
    .i_write(Loop_loop3_proc_U0_ap_done),
    .t_empty_n(sub_key_t_empty_n),
    .t_read(Loop_Pipeline_loop4_U0_ap_ready)
);

des_dec_entry7 des_dec_entry7_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(des_dec_entry7_U0_ap_start),
    .start_full_n(des_dec_entry7_U0_start_full_n),
    .ap_done(des_dec_entry7_U0_ap_done),
    .ap_continue(des_dec_entry7_U0_ap_continue),
    .ap_idle(des_dec_entry7_U0_ap_idle),
    .ap_ready(des_dec_entry7_U0_ap_ready),
    .start_out(des_dec_entry7_U0_start_out),
    .start_write(des_dec_entry7_U0_start_write),
    .input_r(input_r),
    .key(key),
    .input_out_din(des_dec_entry7_U0_input_out_din),
    .input_out_full_n(input_c_full_n),
    .input_out_write(des_dec_entry7_U0_input_out_write),
    .key_out_din(des_dec_entry7_U0_key_out_din),
    .key_out_full_n(key_c_full_n),
    .key_out_write(des_dec_entry7_U0_key_out_write)
);

Loop_unroll1_proc Loop_unroll1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_unroll1_proc_U0_ap_start),
    .ap_done(Loop_unroll1_proc_U0_ap_done),
    .ap_continue(Loop_unroll1_proc_U0_ap_continue),
    .ap_idle(Loop_unroll1_proc_U0_ap_idle),
    .ap_ready(Loop_unroll1_proc_U0_ap_ready),
    .input_r_dout(input_c_dout),
    .input_r_empty_n(input_c_empty_n),
    .input_r_read(Loop_unroll1_proc_U0_input_r_read),
    .ap_return(Loop_unroll1_proc_U0_ap_return)
);

Block_des_dec_exit2 Block_des_dec_exit2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Block_des_dec_exit2_U0_ap_start),
    .ap_done(Block_des_dec_exit2_U0_ap_done),
    .ap_continue(Block_des_dec_exit2_U0_ap_continue),
    .ap_idle(Block_des_dec_exit2_U0_ap_idle),
    .ap_ready(Block_des_dec_exit2_U0_ap_ready),
    .p_read(init_perm_res_0_loc_s_dout),
    .ap_return_0(Block_des_dec_exit2_U0_ap_return_0),
    .ap_return_1(Block_des_dec_exit2_U0_ap_return_1)
);

Loop_unroll2_proc Loop_unroll2_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_unroll2_proc_U0_ap_start),
    .ap_done(Loop_unroll2_proc_U0_ap_done),
    .ap_continue(Loop_unroll2_proc_U0_ap_continue),
    .ap_idle(Loop_unroll2_proc_U0_ap_idle),
    .ap_ready(Loop_unroll2_proc_U0_ap_ready),
    .key_dout(key_c_dout),
    .key_empty_n(key_c_empty_n),
    .key_read(Loop_unroll2_proc_U0_key_read),
    .ap_return_0(Loop_unroll2_proc_U0_ap_return_0),
    .ap_return_1(Loop_unroll2_proc_U0_ap_return_1)
);

Loop_loop3_proc Loop_loop3_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_loop3_proc_U0_ap_start),
    .ap_done(Loop_loop3_proc_U0_ap_done),
    .ap_continue(Loop_loop3_proc_U0_ap_continue),
    .ap_idle(Loop_loop3_proc_U0_ap_idle),
    .ap_ready(Loop_loop3_proc_U0_ap_ready),
    .p_read(permuted_choice_1_0_1_dout),
    .p_read1(permuted_choice_1_0_s_dout),
    .sub_key_address0(Loop_loop3_proc_U0_sub_key_address0),
    .sub_key_ce0(Loop_loop3_proc_U0_sub_key_ce0),
    .sub_key_we0(Loop_loop3_proc_U0_sub_key_we0),
    .sub_key_d0(Loop_loop3_proc_U0_sub_key_d0)
);

Loop_Pipeline_loop4_s Loop_Pipeline_loop4_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_Pipeline_loop4_U0_ap_start),
    .ap_done(Loop_Pipeline_loop4_U0_ap_done),
    .ap_continue(Loop_Pipeline_loop4_U0_ap_continue),
    .ap_idle(Loop_Pipeline_loop4_U0_ap_idle),
    .ap_ready(Loop_Pipeline_loop4_U0_ap_ready),
    .p_read(R_loc_channel_dout),
    .p_read1(L_loc_channel_dout),
    .sub_key_address0(Loop_Pipeline_loop4_U0_sub_key_address0),
    .sub_key_ce0(Loop_Pipeline_loop4_U0_sub_key_ce0),
    .sub_key_q0(sub_key_t_q0),
    .ap_return_0(Loop_Pipeline_loop4_U0_ap_return_0),
    .ap_return_1(Loop_Pipeline_loop4_U0_ap_return_1)
);

Loop_loop5_proc Loop_loop5_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_loop5_proc_U0_ap_start),
    .ap_done(Loop_loop5_proc_U0_ap_done),
    .ap_continue(Loop_loop5_proc_U0_ap_continue),
    .ap_idle(Loop_loop5_proc_U0_ap_idle),
    .ap_ready(Loop_loop5_proc_U0_ap_ready),
    .p_read(temp_loc_channel_dout),
    .p_read1(L_0_loc_channel_dout),
    .ap_return(Loop_loop5_proc_U0_ap_return)
);

p_desDecrypt_c_line2 p_desDecrypt_c_line2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(p_desDecrypt_c_line2_U0_ap_start),
    .ap_done(p_desDecrypt_c_line2_U0_ap_done),
    .ap_continue(p_desDecrypt_c_line2_U0_ap_continue),
    .ap_idle(p_desDecrypt_c_line2_U0_ap_idle),
    .ap_ready(p_desDecrypt_c_line2_U0_ap_ready),
    .p_read(inv_init_perm_res_0_s_dout),
    .ap_return(p_desDecrypt_c_line2_U0_ap_return)
);

fifo_w64_d2_A input_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(des_dec_entry7_U0_input_out_din),
    .if_full_n(input_c_full_n),
    .if_write(des_dec_entry7_U0_input_out_write),
    .if_dout(input_c_dout),
    .if_empty_n(input_c_empty_n),
    .if_read(Loop_unroll1_proc_U0_input_r_read)
);

fifo_w64_d2_A key_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(des_dec_entry7_U0_key_out_din),
    .if_full_n(key_c_full_n),
    .if_write(des_dec_entry7_U0_key_out_write),
    .if_dout(key_c_dout),
    .if_empty_n(key_c_empty_n),
    .if_read(Loop_unroll2_proc_U0_key_read)
);

fifo_w64_d2_A init_perm_res_0_loc_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_unroll1_proc_U0_ap_return),
    .if_full_n(init_perm_res_0_loc_s_full_n),
    .if_write(Loop_unroll1_proc_U0_ap_done),
    .if_dout(init_perm_res_0_loc_s_dout),
    .if_empty_n(init_perm_res_0_loc_s_empty_n),
    .if_read(Block_des_dec_exit2_U0_ap_ready)
);

fifo_w32_d2_A L_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_des_dec_exit2_U0_ap_return_0),
    .if_full_n(L_loc_channel_full_n),
    .if_write(ap_channel_done_L_loc_channel),
    .if_dout(L_loc_channel_dout),
    .if_empty_n(L_loc_channel_empty_n),
    .if_read(Loop_Pipeline_loop4_U0_ap_ready)
);

fifo_w32_d2_A R_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_des_dec_exit2_U0_ap_return_1),
    .if_full_n(R_loc_channel_full_n),
    .if_write(ap_channel_done_R_loc_channel),
    .if_dout(R_loc_channel_dout),
    .if_empty_n(R_loc_channel_empty_n),
    .if_read(Loop_Pipeline_loop4_U0_ap_ready)
);

fifo_w64_d2_A permuted_choice_1_0_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_unroll2_proc_U0_ap_return_0),
    .if_full_n(permuted_choice_1_0_s_full_n),
    .if_write(ap_channel_done_permuted_choice_1_0_s),
    .if_dout(permuted_choice_1_0_s_dout),
    .if_empty_n(permuted_choice_1_0_s_empty_n),
    .if_read(Loop_loop3_proc_U0_ap_ready)
);

fifo_w60_d2_A permuted_choice_1_0_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_unroll2_proc_U0_ap_return_1),
    .if_full_n(permuted_choice_1_0_1_full_n),
    .if_write(ap_channel_done_permuted_choice_1_0_1),
    .if_dout(permuted_choice_1_0_1_dout),
    .if_empty_n(permuted_choice_1_0_1_empty_n),
    .if_read(Loop_loop3_proc_U0_ap_ready)
);

fifo_w32_d2_A temp_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_Pipeline_loop4_U0_ap_return_0),
    .if_full_n(temp_loc_channel_full_n),
    .if_write(ap_channel_done_temp_loc_channel),
    .if_dout(temp_loc_channel_dout),
    .if_empty_n(temp_loc_channel_empty_n),
    .if_read(Loop_loop5_proc_U0_ap_ready)
);

fifo_w32_d2_A L_0_loc_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_Pipeline_loop4_U0_ap_return_1),
    .if_full_n(L_0_loc_channel_full_n),
    .if_write(ap_channel_done_L_0_loc_channel),
    .if_dout(L_0_loc_channel_dout),
    .if_empty_n(L_0_loc_channel_empty_n),
    .if_read(Loop_loop5_proc_U0_ap_ready)
);

fifo_w64_d2_A inv_init_perm_res_0_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_loop5_proc_U0_ap_return),
    .if_full_n(inv_init_perm_res_0_s_full_n),
    .if_write(Loop_loop5_proc_U0_ap_done),
    .if_dout(inv_init_perm_res_0_s_dout),
    .if_empty_n(inv_init_perm_res_0_s_empty_n),
    .if_read(p_desDecrypt_c_line2_U0_ap_ready)
);

start_for_Loop_uneOg start_for_Loop_uneOg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_unroll1_proc_U0_din),
    .if_full_n(start_for_Loop_unroll1_proc_U0_full_n),
    .if_write(des_dec_entry7_U0_start_write),
    .if_dout(start_for_Loop_unroll1_proc_U0_dout),
    .if_empty_n(start_for_Loop_unroll1_proc_U0_empty_n),
    .if_read(Loop_unroll1_proc_U0_ap_ready)
);

start_for_Loop_unfYi start_for_Loop_unfYi_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_unroll2_proc_U0_din),
    .if_full_n(start_for_Loop_unroll2_proc_U0_full_n),
    .if_write(des_dec_entry7_U0_start_write),
    .if_dout(start_for_Loop_unroll2_proc_U0_dout),
    .if_empty_n(start_for_Loop_unroll2_proc_U0_empty_n),
    .if_read(Loop_unroll2_proc_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_L_0_loc_channel <= 1'b0;
    end else begin
        if (((Loop_Pipeline_loop4_U0_ap_done & Loop_Pipeline_loop4_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_L_0_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_L_0_loc_channel <= ap_sync_channel_write_L_0_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_L_loc_channel <= 1'b0;
    end else begin
        if (((Block_des_dec_exit2_U0_ap_done & Block_des_dec_exit2_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_L_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_L_loc_channel <= ap_sync_channel_write_L_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_R_loc_channel <= 1'b0;
    end else begin
        if (((Block_des_dec_exit2_U0_ap_done & Block_des_dec_exit2_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_R_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_R_loc_channel <= ap_sync_channel_write_R_loc_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_permuted_choice_1_0_1 <= 1'b0;
    end else begin
        if (((Loop_unroll2_proc_U0_ap_done & Loop_unroll2_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_permuted_choice_1_0_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_permuted_choice_1_0_1 <= ap_sync_channel_write_permuted_choice_1_0_1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_permuted_choice_1_0_s <= 1'b0;
    end else begin
        if (((Loop_unroll2_proc_U0_ap_done & Loop_unroll2_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_permuted_choice_1_0_s <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_permuted_choice_1_0_s <= ap_sync_channel_write_permuted_choice_1_0_s;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_temp_loc_channel <= 1'b0;
    end else begin
        if (((Loop_Pipeline_loop4_U0_ap_done & Loop_Pipeline_loop4_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_temp_loc_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_temp_loc_channel <= ap_sync_channel_write_temp_loc_channel;
        end
    end
end

assign Block_des_dec_exit2_U0_ap_continue = (ap_sync_channel_write_R_loc_channel & ap_sync_channel_write_L_loc_channel);

assign Block_des_dec_exit2_U0_ap_start = init_perm_res_0_loc_s_empty_n;

assign Block_des_dec_exit2_U0_start_full_n = 1'b1;

assign Block_des_dec_exit2_U0_start_write = 1'b0;

assign Loop_Pipeline_loop4_U0_ap_continue = (ap_sync_channel_write_temp_loc_channel & ap_sync_channel_write_L_0_loc_channel);

assign Loop_Pipeline_loop4_U0_ap_start = (sub_key_t_empty_n & R_loc_channel_empty_n & L_loc_channel_empty_n);

assign Loop_Pipeline_loop4_U0_start_full_n = 1'b1;

assign Loop_Pipeline_loop4_U0_start_write = 1'b0;

assign Loop_loop3_proc_U0_ap_continue = sub_key_i_full_n;

assign Loop_loop3_proc_U0_ap_start = (permuted_choice_1_0_s_empty_n & permuted_choice_1_0_1_empty_n);

assign Loop_loop3_proc_U0_start_full_n = 1'b1;

assign Loop_loop3_proc_U0_start_write = 1'b0;

assign Loop_loop3_proc_U0_sub_key_full_n = sub_key_i_full_n;

assign Loop_loop5_proc_U0_ap_continue = inv_init_perm_res_0_s_full_n;

assign Loop_loop5_proc_U0_ap_start = (temp_loc_channel_empty_n & L_0_loc_channel_empty_n);

assign Loop_loop5_proc_U0_start_full_n = 1'b1;

assign Loop_loop5_proc_U0_start_write = 1'b0;

assign Loop_unroll1_proc_U0_ap_continue = init_perm_res_0_loc_s_full_n;

assign Loop_unroll1_proc_U0_ap_start = start_for_Loop_unroll1_proc_U0_empty_n;

assign Loop_unroll1_proc_U0_start_full_n = 1'b1;

assign Loop_unroll1_proc_U0_start_write = 1'b0;

assign Loop_unroll2_proc_U0_ap_continue = (ap_sync_channel_write_permuted_choice_1_0_s & ap_sync_channel_write_permuted_choice_1_0_1);

assign Loop_unroll2_proc_U0_ap_start = start_for_Loop_unroll2_proc_U0_empty_n;

assign Loop_unroll2_proc_U0_start_full_n = 1'b1;

assign Loop_unroll2_proc_U0_start_write = 1'b0;

assign ap_channel_done_L_0_loc_channel = ((ap_sync_reg_channel_write_L_0_loc_channel ^ 1'b1) & Loop_Pipeline_loop4_U0_ap_done);

assign ap_channel_done_L_loc_channel = ((ap_sync_reg_channel_write_L_loc_channel ^ 1'b1) & Block_des_dec_exit2_U0_ap_done);

assign ap_channel_done_R_loc_channel = ((ap_sync_reg_channel_write_R_loc_channel ^ 1'b1) & Block_des_dec_exit2_U0_ap_done);

assign ap_channel_done_init_perm_res_0_loc_s = Loop_unroll1_proc_U0_ap_done;

assign ap_channel_done_inv_init_perm_res_0_s = Loop_loop5_proc_U0_ap_done;

assign ap_channel_done_permuted_choice_1_0_1 = ((ap_sync_reg_channel_write_permuted_choice_1_0_1 ^ 1'b1) & Loop_unroll2_proc_U0_ap_done);

assign ap_channel_done_permuted_choice_1_0_s = ((ap_sync_reg_channel_write_permuted_choice_1_0_s ^ 1'b1) & Loop_unroll2_proc_U0_ap_done);

assign ap_channel_done_sub_key = Loop_loop3_proc_U0_ap_done;

assign ap_channel_done_temp_loc_channel = ((ap_sync_reg_channel_write_temp_loc_channel ^ 1'b1) & Loop_Pipeline_loop4_U0_ap_done);

assign ap_done = p_desDecrypt_c_line2_U0_ap_done;

assign ap_idle = (p_desDecrypt_c_line2_U0_ap_idle & (inv_init_perm_res_0_s_empty_n ^ 1'b1) & (1'b1 ^ L_0_loc_channel_empty_n) & (temp_loc_channel_empty_n ^ 1'b1) & (permuted_choice_1_0_1_empty_n ^ 1'b1) & (permuted_choice_1_0_s_empty_n ^ 1'b1) & (1'b1 ^ R_loc_channel_empty_n) & (1'b1 ^ L_loc_channel_empty_n) & (init_perm_res_0_loc_s_empty_n ^ 1'b1) & (sub_key_t_empty_n ^ 1'b1) & des_dec_entry7_U0_ap_idle & Loop_unroll2_proc_U0_ap_idle & Loop_unroll1_proc_U0_ap_idle & Loop_loop5_proc_U0_ap_idle & Loop_loop3_proc_U0_ap_idle & Loop_Pipeline_loop4_U0_ap_idle & Block_des_dec_exit2_U0_ap_idle);

assign ap_ready = des_dec_entry7_U0_ap_ready;

assign ap_return = p_desDecrypt_c_line2_U0_ap_return;

assign ap_sync_channel_write_L_0_loc_channel = ((ap_channel_done_L_0_loc_channel & L_0_loc_channel_full_n) | ap_sync_reg_channel_write_L_0_loc_channel);

assign ap_sync_channel_write_L_loc_channel = ((ap_channel_done_L_loc_channel & L_loc_channel_full_n) | ap_sync_reg_channel_write_L_loc_channel);

assign ap_sync_channel_write_R_loc_channel = ((ap_channel_done_R_loc_channel & R_loc_channel_full_n) | ap_sync_reg_channel_write_R_loc_channel);

assign ap_sync_channel_write_permuted_choice_1_0_1 = ((permuted_choice_1_0_1_full_n & ap_channel_done_permuted_choice_1_0_1) | ap_sync_reg_channel_write_permuted_choice_1_0_1);

assign ap_sync_channel_write_permuted_choice_1_0_s = ((permuted_choice_1_0_s_full_n & ap_channel_done_permuted_choice_1_0_s) | ap_sync_reg_channel_write_permuted_choice_1_0_s);

assign ap_sync_channel_write_temp_loc_channel = ((temp_loc_channel_full_n & ap_channel_done_temp_loc_channel) | ap_sync_reg_channel_write_temp_loc_channel);

assign ap_sync_continue = 1'b1;

assign ap_sync_done = p_desDecrypt_c_line2_U0_ap_done;

assign ap_sync_ready = des_dec_entry7_U0_ap_ready;

assign des_dec_entry7_U0_ap_continue = 1'b1;

assign des_dec_entry7_U0_ap_start = ap_start;

assign des_dec_entry7_U0_start_full_n = (start_for_Loop_unroll2_proc_U0_full_n & start_for_Loop_unroll1_proc_U0_full_n);

assign p_desDecrypt_c_line2_U0_ap_continue = 1'b1;

assign p_desDecrypt_c_line2_U0_ap_start = inv_init_perm_res_0_s_empty_n;

assign p_desDecrypt_c_line2_U0_start_full_n = 1'b1;

assign p_desDecrypt_c_line2_U0_start_write = 1'b0;

assign start_for_Loop_unroll1_proc_U0_din = 1'b1;

assign start_for_Loop_unroll2_proc_U0_din = 1'b1;

assign tmp_p_desDecrypt_c_line2_fu_141_ap_return = 64'd0;

endmodule //des_dec
