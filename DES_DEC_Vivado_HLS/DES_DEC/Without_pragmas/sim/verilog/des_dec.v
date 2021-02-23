// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="des_dec,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tl-cpg236-2L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.689625,HLS_SYN_LAT=5109,HLS_SYN_TPT=none,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1260,HLS_SYN_LUT=2547,HLS_VERSION=2019_1}" *)

module des_dec (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r,
        key,
        ap_return
);

parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] input_r;
input  [63:0] key;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] IP_address0;
reg    IP_ce0;
wire   [6:0] IP_q0;
wire   [5:0] PC1_address0;
reg    PC1_ce0;
wire   [5:0] PC1_q0;
wire   [5:0] PC2_address0;
reg    PC2_ce0;
wire   [5:0] PC2_q0;
wire   [5:0] E_address0;
reg    E_ce0;
wire   [5:0] E_q0;
wire   [8:0] S_address0;
reg    S_ce0;
wire   [3:0] S_q0;
wire   [4:0] P_address0;
reg    P_ce0;
wire   [5:0] P_q0;
wire   [5:0] PI_address0;
reg    PI_ce0;
wire   [6:0] PI_q0;
wire   [6:0] i_fu_486_p2;
reg   [6:0] i_reg_1295;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln171_fu_480_p2;
wire   [62:0] trunc_ln173_1_fu_497_p1;
reg   [62:0] trunc_ln173_1_reg_1305;
reg   [31:0] L_reg_1310;
wire   [31:0] R_fu_511_p1;
reg   [31:0] R_reg_1315;
wire   [63:0] init_perm_res_fu_534_p3;
wire    ap_CS_fsm_state3;
wire   [5:0] i_5_fu_547_p2;
reg   [5:0] i_5_reg_1328;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln181_fu_541_p2;
wire   [62:0] trunc_ln183_1_fu_558_p1;
reg   [62:0] trunc_ln183_1_reg_1338;
wire   [63:0] permuted_choice_1_fu_609_p3;
wire    ap_CS_fsm_state5;
wire   [4:0] i_7_fu_622_p2;
reg   [4:0] i_7_reg_1367;
wire    ap_CS_fsm_state6;
reg   [3:0] sub_key_addr_reg_1375;
wire   [0:0] icmp_ln191_fu_616_p2;
wire   [55:0] tmp_7_fu_784_p3;
reg   [55:0] tmp_7_reg_1387;
wire    ap_CS_fsm_state7;
wire   [5:0] j_4_fu_798_p2;
reg   [5:0] j_4_reg_1395;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln215_fu_792_p2;
wire   [62:0] trunc_ln217_1_fu_809_p1;
reg   [62:0] trunc_ln217_1_reg_1405;
wire   [63:0] or_ln_fu_832_p3;
wire    ap_CS_fsm_state9;
wire   [4:0] i_9_fu_845_p2;
reg   [4:0] i_9_reg_1418;
wire    ap_CS_fsm_state10;
wire   [63:0] pre_output_fu_851_p3;
reg   [63:0] pre_output_reg_1423;
wire   [0:0] icmp_ln222_fu_839_p2;
wire   [5:0] j_fu_865_p2;
reg   [5:0] j_reg_1431;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln226_fu_859_p2;
wire   [63:0] s_input_fu_911_p3;
wire    ap_CS_fsm_state12;
wire   [46:0] xor_ln231_fu_935_p2;
reg   [46:0] xor_ln231_reg_1451;
wire    ap_CS_fsm_state13;
wire   [47:0] xor_ln231_1_fu_941_p2;
reg   [47:0] xor_ln231_1_reg_1456;
wire   [3:0] j_5_fu_953_p2;
reg   [3:0] j_5_reg_1464;
wire    ap_CS_fsm_state14;
wire   [6:0] sub_ln239_fu_989_p2;
reg   [6:0] sub_ln239_reg_1469;
wire   [0:0] icmp_ln234_fu_947_p2;
wire   [5:0] sub_ln239_2_fu_1013_p2;
reg   [5:0] sub_ln239_2_reg_1474;
wire   [5:0] sub_ln242_1_fu_1025_p2;
reg   [5:0] sub_ln242_1_reg_1479;
wire   [10:0] add_ln245_1_fu_1154_p2;
reg   [10:0] add_ln245_1_reg_1484;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire   [5:0] j_6_fu_1187_p2;
reg   [5:0] j_6_reg_1497;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln251_fu_1181_p2;
wire   [30:0] trunc_ln253_1_fu_1198_p1;
reg   [30:0] trunc_ln253_1_reg_1507;
wire   [31:0] R_1_fu_1202_p2;
wire   [31:0] f_function_res_fu_1228_p3;
wire    ap_CS_fsm_state19;
wire   [6:0] i_8_fu_1241_p2;
reg   [6:0] i_8_reg_1525;
wire    ap_CS_fsm_state20;
wire   [0:0] icmp_ln266_fu_1235_p2;
wire   [62:0] trunc_ln269_1_fu_1252_p1;
reg   [62:0] trunc_ln269_1_reg_1535;
wire   [63:0] inv_init_perm_res_fu_1275_p3;
wire    ap_CS_fsm_state21;
reg   [3:0] sub_key_address0;
reg    sub_key_ce0;
reg    sub_key_we0;
wire   [63:0] sub_key_q0;
reg   [63:0] init_perm_res_0_reg_281;
reg   [6:0] i_0_reg_292;
reg   [63:0] permuted_choice_1_0_reg_303;
reg   [5:0] i_1_reg_314;
reg   [4:0] i_2_reg_325;
reg   [63:0] sub_key_load_1_reg_336;
reg   [5:0] j_0_reg_348;
reg   [31:0] temp_reg_359;
reg   [31:0] L_0_reg_369;
reg   [4:0] i_3_reg_380;
reg   [63:0] s_input_0_reg_392;
reg   [5:0] j_1_reg_404;
reg   [3:0] j_2_reg_415;
wire    ap_CS_fsm_state17;
reg   [31:0] f_function_res_0_reg_427;
reg   [5:0] j_3_reg_438;
reg   [6:0] i_4_reg_449;
reg   [63:0] inv_init_perm_res_0_reg_460;
wire   [63:0] zext_ln173_1_fu_492_p1;
wire   [63:0] zext_ln183_1_fu_553_p1;
wire   [63:0] zext_ln213_fu_774_p1;
wire   [63:0] zext_ln217_fu_804_p1;
wire   [63:0] zext_ln228_fu_871_p1;
wire   [63:0] zext_ln231_fu_882_p1;
wire  signed [63:0] sext_ln245_3_fu_1160_p1;
wire   [63:0] zext_ln253_fu_1193_p1;
wire   [63:0] zext_ln269_1_fu_1247_p1;
reg   [27:0] C_1_fu_148;
wire   [27:0] C_2_fu_684_p3;
wire   [0:0] empty_17_fu_664_p2;
wire   [27:0] C_3_fu_736_p3;
reg   [27:0] D_fu_152;
wire   [27:0] D_1_fu_572_p1;
wire   [27:0] D_2_fu_706_p3;
wire   [27:0] D_3_fu_756_p3;
reg   [31:0] s_output_1_fu_156;
wire   [31:0] s_output_fu_1168_p3;
wire   [6:0] sub_ln173_fu_515_p2;
wire   [63:0] zext_ln173_fu_521_p1;
wire   [63:0] lshr_ln173_fu_525_p2;
wire   [0:0] trunc_ln173_fu_530_p1;
wire   [6:0] zext_ln183_2_fu_586_p1;
wire   [6:0] sub_ln183_fu_590_p2;
wire   [63:0] zext_ln183_fu_596_p1;
wire   [63:0] lshr_ln183_fu_600_p2;
wire   [0:0] trunc_ln183_fu_605_p1;
wire   [0:0] empty_12_fu_634_p2;
wire   [0:0] empty_11_fu_628_p2;
wire   [0:0] empty_14_fu_646_p2;
wire   [0:0] empty_13_fu_640_p2;
wire   [0:0] empty_16_fu_658_p2;
wire   [0:0] empty_15_fu_652_p2;
wire   [25:0] trunc_ln202_fu_670_p1;
wire   [1:0] tmp_2_fu_674_p4;
wire   [25:0] trunc_ln203_fu_692_p1;
wire   [1:0] tmp_s_fu_696_p4;
wire   [26:0] trunc_ln196_fu_732_p1;
wire   [0:0] tmp_fu_724_p3;
wire   [26:0] trunc_ln197_fu_752_p1;
wire   [0:0] tmp_1_fu_744_p3;
wire   [5:0] sub_ln217_fu_813_p2;
wire   [55:0] zext_ln217_1_fu_819_p1;
wire   [55:0] lshr_ln217_fu_823_p2;
wire   [0:0] trunc_ln217_fu_828_p1;
wire   [4:0] sub_ln231_fu_876_p2;
wire   [5:0] sub_ln228_fu_887_p2;
wire   [31:0] zext_ln228_1_fu_893_p1;
wire   [31:0] lshr_ln228_fu_897_p2;
wire   [62:0] trunc_ln228_1_fu_907_p1;
wire   [0:0] trunc_ln228_fu_903_p1;
wire   [46:0] trunc_ln231_3_fu_931_p1;
wire   [46:0] trunc_ln231_2_fu_927_p1;
wire   [47:0] trunc_ln231_1_fu_923_p1;
wire   [47:0] trunc_ln231_fu_919_p1;
wire   [2:0] trunc_ln239_fu_959_p1;
wire   [5:0] shl_ln_fu_963_p3;
wire   [3:0] shl_ln239_fu_975_p2;
wire   [6:0] zext_ln239_fu_971_p1;
wire   [6:0] zext_ln239_2_fu_985_p1;
wire   [4:0] shl_ln239_1_fu_995_p3;
wire   [5:0] zext_ln239_1_fu_981_p1;
wire   [5:0] sub_ln239_1_fu_1007_p2;
wire   [5:0] zext_ln239_5_fu_1003_p1;
wire   [5:0] sub_ln242_fu_1019_p2;
wire  signed [31:0] sext_ln239_fu_1031_p1;
wire   [47:0] zext_ln239_4_fu_1038_p1;
wire   [47:0] lshr_ln239_fu_1042_p2;
wire   [47:0] and_ln239_fu_1048_p2;
wire   [47:0] zext_ln239_6_fu_1053_p1;
wire   [47:0] lshr_ln239_1_fu_1056_p2;
wire   [0:0] tmp_3_fu_1066_p3;
wire   [0:0] trunc_ln239_1_fu_1062_p1;
wire   [46:0] zext_ln239_3_fu_1034_p1;
wire   [46:0] lshr_ln242_fu_1090_p2;
wire   [46:0] and_ln242_fu_1096_p2;
wire   [46:0] zext_ln242_fu_1101_p1;
wire   [2:0] tmp_4_fu_1080_p4;
wire   [0:0] or_ln240_fu_1074_p2;
wire   [7:0] tmp_5_fu_1110_p4;
wire   [46:0] lshr_ln242_1_fu_1104_p2;
wire   [7:0] trunc_ln245_fu_1124_p1;
wire  signed [8:0] sext_ln245_1_fu_1128_p1;
wire  signed [8:0] sext_ln245_fu_1120_p1;
wire   [8:0] add_ln245_fu_1132_p2;
wire   [9:0] tmp_6_fu_1142_p3;
wire  signed [10:0] sext_ln245_2_fu_1138_p1;
wire   [10:0] zext_ln245_fu_1150_p1;
wire   [27:0] trunc_ln245_1_fu_1164_p1;
wire   [5:0] sub_ln253_fu_1208_p2;
wire   [31:0] zext_ln253_1_fu_1214_p1;
wire   [31:0] lshr_ln253_fu_1218_p2;
wire   [0:0] trunc_ln253_fu_1224_p1;
wire   [6:0] sub_ln269_fu_1256_p2;
wire   [63:0] zext_ln269_fu_1262_p1;
wire   [63:0] lshr_ln269_fu_1266_p2;
wire   [0:0] trunc_ln269_fu_1271_p1;
reg   [20:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 21'd1;
end

des_dec_IP #(
    .DataWidth( 7 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
IP_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(IP_address0),
    .ce0(IP_ce0),
    .q0(IP_q0)
);

des_dec_PC1 #(
    .DataWidth( 6 ),
    .AddressRange( 56 ),
    .AddressWidth( 6 ))
PC1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(PC1_address0),
    .ce0(PC1_ce0),
    .q0(PC1_q0)
);

des_dec_PC2 #(
    .DataWidth( 6 ),
    .AddressRange( 48 ),
    .AddressWidth( 6 ))
PC2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(PC2_address0),
    .ce0(PC2_ce0),
    .q0(PC2_q0)
);

des_dec_E #(
    .DataWidth( 6 ),
    .AddressRange( 48 ),
    .AddressWidth( 6 ))
E_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(E_address0),
    .ce0(E_ce0),
    .q0(E_q0)
);

des_dec_S #(
    .DataWidth( 4 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
S_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(S_address0),
    .ce0(S_ce0),
    .q0(S_q0)
);

des_dec_P #(
    .DataWidth( 6 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
P_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(P_address0),
    .ce0(P_ce0),
    .q0(P_q0)
);

des_dec_PI #(
    .DataWidth( 7 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
PI_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(PI_address0),
    .ce0(PI_ce0),
    .q0(PI_q0)
);

des_dec_sub_key #(
    .DataWidth( 64 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
sub_key_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sub_key_address0),
    .ce0(sub_key_ce0),
    .we0(sub_key_we0),
    .d0(sub_key_load_1_reg_336),
    .q0(sub_key_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_664_p2 == 1'd1) & (icmp_ln191_fu_616_p2 == 1'd0))) begin
        C_1_fu_148 <= C_3_fu_736_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_664_p2 == 1'd0) & (icmp_ln191_fu_616_p2 == 1'd0))) begin
        C_1_fu_148 <= C_2_fu_684_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln181_fu_541_p2 == 1'd1))) begin
        C_1_fu_148 <= {{permuted_choice_1_0_reg_303[55:28]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_664_p2 == 1'd1) & (icmp_ln191_fu_616_p2 == 1'd0))) begin
        D_fu_152 <= D_3_fu_756_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_664_p2 == 1'd0) & (icmp_ln191_fu_616_p2 == 1'd0))) begin
        D_fu_152 <= D_2_fu_706_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln181_fu_541_p2 == 1'd1))) begin
        D_fu_152 <= D_1_fu_572_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd1))) begin
        L_0_reg_369 <= L_reg_1310;
    end else if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln251_fu_1181_p2 == 1'd1))) begin
        L_0_reg_369 <= temp_reg_359;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln234_fu_947_p2 == 1'd1))) begin
        f_function_res_0_reg_427 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        f_function_res_0_reg_427 <= f_function_res_fu_1228_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_292 <= i_reg_1295;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_292 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_1_reg_314 <= i_5_reg_1328;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_480_p2 == 1'd1))) begin
        i_1_reg_314 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln215_fu_792_p2 == 1'd1))) begin
        i_2_reg_325 <= i_7_reg_1367;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln181_fu_541_p2 == 1'd1))) begin
        i_2_reg_325 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd1))) begin
        i_3_reg_380 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln251_fu_1181_p2 == 1'd1))) begin
        i_3_reg_380 <= i_9_reg_1418;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_4_reg_449 <= i_8_reg_1525;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd1))) begin
        i_4_reg_449 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        init_perm_res_0_reg_281 <= init_perm_res_fu_534_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        init_perm_res_0_reg_281 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        inv_init_perm_res_0_reg_460 <= inv_init_perm_res_fu_1275_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd1))) begin
        inv_init_perm_res_0_reg_460 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j_0_reg_348 <= j_4_reg_1395;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        j_0_reg_348 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd0))) begin
        j_1_reg_404 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        j_1_reg_404 <= j_reg_1431;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        j_2_reg_415 <= j_5_reg_1464;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        j_2_reg_415 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln234_fu_947_p2 == 1'd1))) begin
        j_3_reg_438 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        j_3_reg_438 <= j_6_reg_1497;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        permuted_choice_1_0_reg_303 <= permuted_choice_1_fu_609_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_480_p2 == 1'd1))) begin
        permuted_choice_1_0_reg_303 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd0))) begin
        s_input_0_reg_392 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        s_input_0_reg_392 <= s_input_fu_911_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        s_output_1_fu_156 <= s_output_fu_1168_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd1))) begin
        s_output_1_fu_156 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sub_key_load_1_reg_336 <= or_ln_fu_832_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sub_key_load_1_reg_336 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd1))) begin
        temp_reg_359 <= R_reg_1315;
    end else if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln251_fu_1181_p2 == 1'd1))) begin
        temp_reg_359 <= R_1_fu_1202_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_480_p2 == 1'd1))) begin
        L_reg_1310 <= {{init_perm_res_0_reg_281[63:32]}};
        R_reg_1315 <= R_fu_511_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        add_ln245_1_reg_1484 <= add_ln245_1_fu_1154_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_5_reg_1328 <= i_5_fu_547_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_7_reg_1367 <= i_7_fu_622_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i_8_reg_1525 <= i_8_fu_1241_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_9_reg_1418 <= i_9_fu_845_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_1295 <= i_fu_486_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_4_reg_1395 <= j_4_fu_798_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        j_5_reg_1464 <= j_5_fu_953_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        j_6_reg_1497 <= j_6_fu_1187_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_reg_1431 <= j_fu_865_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd1))) begin
        pre_output_reg_1423 <= pre_output_fu_851_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd0))) begin
        sub_key_addr_reg_1375 <= zext_ln213_fu_774_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln234_fu_947_p2 == 1'd0))) begin
        sub_ln239_2_reg_1474[5 : 1] <= sub_ln239_2_fu_1013_p2[5 : 1];
        sub_ln239_reg_1469[6 : 1] <= sub_ln239_fu_989_p2[6 : 1];
        sub_ln242_1_reg_1479[5 : 1] <= sub_ln242_1_fu_1025_p2[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_7_reg_1387 <= tmp_7_fu_784_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_480_p2 == 1'd0))) begin
        trunc_ln173_1_reg_1305 <= trunc_ln173_1_fu_497_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln181_fu_541_p2 == 1'd0))) begin
        trunc_ln183_1_reg_1338 <= trunc_ln183_1_fu_558_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln215_fu_792_p2 == 1'd0))) begin
        trunc_ln217_1_reg_1405 <= trunc_ln217_1_fu_809_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln251_fu_1181_p2 == 1'd0))) begin
        trunc_ln253_1_reg_1507 <= trunc_ln253_1_fu_1198_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln266_fu_1235_p2 == 1'd0))) begin
        trunc_ln269_1_reg_1535 <= trunc_ln269_1_fu_1252_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        xor_ln231_1_reg_1456 <= xor_ln231_1_fu_941_p2;
        xor_ln231_reg_1451 <= xor_ln231_fu_935_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        E_ce0 = 1'b1;
    end else begin
        E_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        IP_ce0 = 1'b1;
    end else begin
        IP_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        PC1_ce0 = 1'b1;
    end else begin
        PC1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        PC2_ce0 = 1'b1;
    end else begin
        PC2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        PI_ce0 = 1'b1;
    end else begin
        PI_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        P_ce0 = 1'b1;
    end else begin
        P_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        S_ce0 = 1'b1;
    end else begin
        S_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln266_fu_1235_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln266_fu_1235_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sub_key_address0 = zext_ln231_fu_882_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sub_key_address0 = sub_key_addr_reg_1375;
    end else begin
        sub_key_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8))) begin
        sub_key_ce0 = 1'b1;
    end else begin
        sub_key_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sub_key_we0 = 1'b1;
    end else begin
        sub_key_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_480_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln181_fu_541_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln191_fu_616_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln215_fu_792_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln222_fu_839_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln226_fu_859_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln234_fu_947_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state18 : begin
            if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln251_fu_1181_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln266_fu_1235_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C_2_fu_684_p3 = {{trunc_ln202_fu_670_p1}, {tmp_2_fu_674_p4}};

assign C_3_fu_736_p3 = {{trunc_ln196_fu_732_p1}, {tmp_fu_724_p3}};

assign D_1_fu_572_p1 = permuted_choice_1_0_reg_303[27:0];

assign D_2_fu_706_p3 = {{trunc_ln203_fu_692_p1}, {tmp_s_fu_696_p4}};

assign D_3_fu_756_p3 = {{trunc_ln197_fu_752_p1}, {tmp_1_fu_744_p3}};

assign E_address0 = zext_ln228_fu_871_p1;

assign IP_address0 = zext_ln173_1_fu_492_p1;

assign PC1_address0 = zext_ln183_1_fu_553_p1;

assign PC2_address0 = zext_ln217_fu_804_p1;

assign PI_address0 = zext_ln269_1_fu_1247_p1;

assign P_address0 = zext_ln253_fu_1193_p1;

assign R_1_fu_1202_p2 = (f_function_res_0_reg_427 ^ L_0_reg_369);

assign R_fu_511_p1 = init_perm_res_0_reg_281[31:0];

assign S_address0 = sext_ln245_3_fu_1160_p1;

assign add_ln245_1_fu_1154_p2 = ($signed(sext_ln245_2_fu_1138_p1) + $signed(zext_ln245_fu_1150_p1));

assign add_ln245_fu_1132_p2 = ($signed(sext_ln245_1_fu_1128_p1) + $signed(sext_ln245_fu_1120_p1));

assign and_ln239_fu_1048_p2 = (xor_ln231_1_reg_1456 & lshr_ln239_fu_1042_p2);

assign and_ln242_fu_1096_p2 = (xor_ln231_reg_1451 & lshr_ln242_fu_1090_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = inv_init_perm_res_0_reg_460;

assign empty_11_fu_628_p2 = ((i_2_reg_325 == 5'd15) ? 1'b1 : 1'b0);

assign empty_12_fu_634_p2 = ((i_2_reg_325 == 5'd8) ? 1'b1 : 1'b0);

assign empty_13_fu_640_p2 = (empty_12_fu_634_p2 | empty_11_fu_628_p2);

assign empty_14_fu_646_p2 = ((i_2_reg_325 == 5'd1) ? 1'b1 : 1'b0);

assign empty_15_fu_652_p2 = (empty_14_fu_646_p2 | empty_13_fu_640_p2);

assign empty_16_fu_658_p2 = ((i_2_reg_325 == 5'd0) ? 1'b1 : 1'b0);

assign empty_17_fu_664_p2 = (empty_16_fu_658_p2 | empty_15_fu_652_p2);

assign f_function_res_fu_1228_p3 = {{trunc_ln253_1_reg_1507}, {trunc_ln253_fu_1224_p1}};

assign i_5_fu_547_p2 = (i_1_reg_314 + 6'd1);

assign i_7_fu_622_p2 = (i_2_reg_325 + 5'd1);

assign i_8_fu_1241_p2 = (i_4_reg_449 + 7'd1);

assign i_9_fu_845_p2 = (i_3_reg_380 + 5'd1);

assign i_fu_486_p2 = (i_0_reg_292 + 7'd1);

assign icmp_ln171_fu_480_p2 = ((i_0_reg_292 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln181_fu_541_p2 = ((i_1_reg_314 == 6'd56) ? 1'b1 : 1'b0);

assign icmp_ln191_fu_616_p2 = ((i_2_reg_325 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln215_fu_792_p2 = ((j_0_reg_348 == 6'd48) ? 1'b1 : 1'b0);

assign icmp_ln222_fu_839_p2 = ((i_3_reg_380 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln226_fu_859_p2 = ((j_1_reg_404 == 6'd48) ? 1'b1 : 1'b0);

assign icmp_ln234_fu_947_p2 = ((j_2_reg_415 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln251_fu_1181_p2 = ((j_3_reg_438 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln266_fu_1235_p2 = ((i_4_reg_449 == 7'd64) ? 1'b1 : 1'b0);

assign init_perm_res_fu_534_p3 = {{trunc_ln173_1_reg_1305}, {trunc_ln173_fu_530_p1}};

assign inv_init_perm_res_fu_1275_p3 = {{trunc_ln269_1_reg_1535}, {trunc_ln269_fu_1271_p1}};

assign j_4_fu_798_p2 = (j_0_reg_348 + 6'd1);

assign j_5_fu_953_p2 = (j_2_reg_415 + 4'd1);

assign j_6_fu_1187_p2 = (j_3_reg_438 + 6'd1);

assign j_fu_865_p2 = (j_1_reg_404 + 6'd1);

assign lshr_ln173_fu_525_p2 = input_r >> zext_ln173_fu_521_p1;

assign lshr_ln183_fu_600_p2 = key >> zext_ln183_fu_596_p1;

assign lshr_ln217_fu_823_p2 = tmp_7_reg_1387 >> zext_ln217_1_fu_819_p1;

assign lshr_ln228_fu_897_p2 = temp_reg_359 >> zext_ln228_1_fu_893_p1;

assign lshr_ln239_1_fu_1056_p2 = and_ln239_fu_1048_p2 >> zext_ln239_6_fu_1053_p1;

assign lshr_ln239_fu_1042_p2 = 48'd145135534866432 >> zext_ln239_4_fu_1038_p1;

assign lshr_ln242_1_fu_1104_p2 = and_ln242_fu_1096_p2 >> zext_ln242_fu_1101_p1;

assign lshr_ln242_fu_1090_p2 = 47'd131941395333120 >> zext_ln239_3_fu_1034_p1;

assign lshr_ln253_fu_1218_p2 = s_output_1_fu_156 >> zext_ln253_1_fu_1214_p1;

assign lshr_ln269_fu_1266_p2 = pre_output_reg_1423 >> zext_ln269_fu_1262_p1;

assign or_ln240_fu_1074_p2 = (trunc_ln239_1_fu_1062_p1 | tmp_3_fu_1066_p3);

assign or_ln_fu_832_p3 = {{trunc_ln217_1_reg_1405}, {trunc_ln217_fu_828_p1}};

assign permuted_choice_1_fu_609_p3 = {{trunc_ln183_1_reg_1338}, {trunc_ln183_fu_605_p1}};

assign pre_output_fu_851_p3 = {{temp_reg_359}, {L_0_reg_369}};

assign s_input_fu_911_p3 = {{trunc_ln228_1_fu_907_p1}, {trunc_ln228_fu_903_p1}};

assign s_output_fu_1168_p3 = {{trunc_ln245_1_fu_1164_p1}, {S_q0}};

assign sext_ln239_fu_1031_p1 = $signed(sub_ln239_reg_1469);

assign sext_ln245_1_fu_1128_p1 = $signed(trunc_ln245_fu_1124_p1);

assign sext_ln245_2_fu_1138_p1 = $signed(add_ln245_fu_1132_p2);

assign sext_ln245_3_fu_1160_p1 = $signed(add_ln245_1_reg_1484);

assign sext_ln245_fu_1120_p1 = $signed(tmp_5_fu_1110_p4);

assign shl_ln239_1_fu_995_p3 = {{trunc_ln239_fu_959_p1}, {2'd0}};

assign shl_ln239_fu_975_p2 = j_2_reg_415 << 4'd1;

assign shl_ln_fu_963_p3 = {{trunc_ln239_fu_959_p1}, {3'd0}};

assign sub_ln173_fu_515_p2 = ($signed(7'd64) - $signed(IP_q0));

assign sub_ln183_fu_590_p2 = ($signed(7'd64) - $signed(zext_ln183_2_fu_586_p1));

assign sub_ln217_fu_813_p2 = ($signed(6'd56) - $signed(PC2_q0));

assign sub_ln228_fu_887_p2 = ($signed(6'd32) - $signed(E_q0));

assign sub_ln231_fu_876_p2 = (5'd15 - i_3_reg_380);

assign sub_ln239_1_fu_1007_p2 = ($signed(6'd42) - $signed(zext_ln239_1_fu_981_p1));

assign sub_ln239_2_fu_1013_p2 = (sub_ln239_1_fu_1007_p2 - zext_ln239_5_fu_1003_p1);

assign sub_ln239_fu_989_p2 = (zext_ln239_fu_971_p1 - zext_ln239_2_fu_985_p1);

assign sub_ln242_1_fu_1025_p2 = (sub_ln242_fu_1019_p2 - zext_ln239_5_fu_1003_p1);

assign sub_ln242_fu_1019_p2 = ($signed(6'd43) - $signed(zext_ln239_1_fu_981_p1));

assign sub_ln253_fu_1208_p2 = ($signed(6'd32) - $signed(P_q0));

assign sub_ln269_fu_1256_p2 = ($signed(7'd64) - $signed(PI_q0));

assign tmp_1_fu_744_p3 = D_fu_152[32'd27];

assign tmp_2_fu_674_p4 = {{C_1_fu_148[27:26]}};

assign tmp_3_fu_1066_p3 = lshr_ln239_1_fu_1056_p2[32'd4];

assign tmp_4_fu_1080_p4 = {{lshr_ln239_1_fu_1056_p2[7:5]}};

assign tmp_5_fu_1110_p4 = {{{tmp_4_fu_1080_p4}, {or_ln240_fu_1074_p2}}, {4'd0}};

assign tmp_6_fu_1142_p3 = {{j_2_reg_415}, {6'd0}};

assign tmp_7_fu_784_p3 = {{C_1_fu_148}, {D_fu_152}};

assign tmp_fu_724_p3 = C_1_fu_148[32'd27];

assign tmp_s_fu_696_p4 = {{D_fu_152[27:26]}};

assign trunc_ln173_1_fu_497_p1 = init_perm_res_0_reg_281[62:0];

assign trunc_ln173_fu_530_p1 = lshr_ln173_fu_525_p2[0:0];

assign trunc_ln183_1_fu_558_p1 = permuted_choice_1_0_reg_303[62:0];

assign trunc_ln183_fu_605_p1 = lshr_ln183_fu_600_p2[0:0];

assign trunc_ln196_fu_732_p1 = C_1_fu_148[26:0];

assign trunc_ln197_fu_752_p1 = D_fu_152[26:0];

assign trunc_ln202_fu_670_p1 = C_1_fu_148[25:0];

assign trunc_ln203_fu_692_p1 = D_fu_152[25:0];

assign trunc_ln217_1_fu_809_p1 = sub_key_load_1_reg_336[62:0];

assign trunc_ln217_fu_828_p1 = lshr_ln217_fu_823_p2[0:0];

assign trunc_ln228_1_fu_907_p1 = s_input_0_reg_392[62:0];

assign trunc_ln228_fu_903_p1 = lshr_ln228_fu_897_p2[0:0];

assign trunc_ln231_1_fu_923_p1 = sub_key_q0[47:0];

assign trunc_ln231_2_fu_927_p1 = s_input_0_reg_392[46:0];

assign trunc_ln231_3_fu_931_p1 = sub_key_q0[46:0];

assign trunc_ln231_fu_919_p1 = s_input_0_reg_392[47:0];

assign trunc_ln239_1_fu_1062_p1 = lshr_ln239_1_fu_1056_p2[0:0];

assign trunc_ln239_fu_959_p1 = j_2_reg_415[2:0];

assign trunc_ln245_1_fu_1164_p1 = s_output_1_fu_156[27:0];

assign trunc_ln245_fu_1124_p1 = lshr_ln242_1_fu_1104_p2[7:0];

assign trunc_ln253_1_fu_1198_p1 = f_function_res_0_reg_427[30:0];

assign trunc_ln253_fu_1224_p1 = lshr_ln253_fu_1218_p2[0:0];

assign trunc_ln269_1_fu_1252_p1 = inv_init_perm_res_0_reg_460[62:0];

assign trunc_ln269_fu_1271_p1 = lshr_ln269_fu_1266_p2[0:0];

assign xor_ln231_1_fu_941_p2 = (trunc_ln231_fu_919_p1 ^ trunc_ln231_1_fu_923_p1);

assign xor_ln231_fu_935_p2 = (trunc_ln231_3_fu_931_p1 ^ trunc_ln231_2_fu_927_p1);

assign zext_ln173_1_fu_492_p1 = i_0_reg_292;

assign zext_ln173_fu_521_p1 = sub_ln173_fu_515_p2;

assign zext_ln183_1_fu_553_p1 = i_1_reg_314;

assign zext_ln183_2_fu_586_p1 = PC1_q0;

assign zext_ln183_fu_596_p1 = sub_ln183_fu_590_p2;

assign zext_ln213_fu_774_p1 = i_2_reg_325;

assign zext_ln217_1_fu_819_p1 = sub_ln217_fu_813_p2;

assign zext_ln217_fu_804_p1 = j_0_reg_348;

assign zext_ln228_1_fu_893_p1 = sub_ln228_fu_887_p2;

assign zext_ln228_fu_871_p1 = j_1_reg_404;

assign zext_ln231_fu_882_p1 = sub_ln231_fu_876_p2;

assign zext_ln239_1_fu_981_p1 = shl_ln239_fu_975_p2;

assign zext_ln239_2_fu_985_p1 = shl_ln239_fu_975_p2;

assign zext_ln239_3_fu_1034_p1 = $unsigned(sext_ln239_fu_1031_p1);

assign zext_ln239_4_fu_1038_p1 = $unsigned(sext_ln239_fu_1031_p1);

assign zext_ln239_5_fu_1003_p1 = shl_ln239_1_fu_995_p3;

assign zext_ln239_6_fu_1053_p1 = sub_ln239_2_reg_1474;

assign zext_ln239_fu_971_p1 = shl_ln_fu_963_p3;

assign zext_ln242_fu_1101_p1 = sub_ln242_1_reg_1479;

assign zext_ln245_fu_1150_p1 = tmp_6_fu_1142_p3;

assign zext_ln253_1_fu_1214_p1 = sub_ln253_fu_1208_p2;

assign zext_ln253_fu_1193_p1 = j_3_reg_438;

assign zext_ln269_1_fu_1247_p1 = i_4_reg_449;

assign zext_ln269_fu_1262_p1 = sub_ln269_fu_1256_p2;

always @ (posedge ap_clk) begin
    sub_ln239_reg_1469[0] <= 1'b0;
    sub_ln239_2_reg_1474[0] <= 1'b0;
    sub_ln242_1_reg_1479[0] <= 1'b1;
end

endmodule //des_dec
