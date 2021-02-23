// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="des_dec,hls_ip_2019_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tl-cpg236-2L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.991292,HLS_SYN_LAT=5237,HLS_SYN_TPT=none,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1318,HLS_SYN_LUT=1491,HLS_VERSION=2019_1}" *)

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

parameter    ap_ST_fsm_state1 = 22'd1;
parameter    ap_ST_fsm_state2 = 22'd2;
parameter    ap_ST_fsm_state3 = 22'd4;
parameter    ap_ST_fsm_state4 = 22'd8;
parameter    ap_ST_fsm_state5 = 22'd16;
parameter    ap_ST_fsm_state6 = 22'd32;
parameter    ap_ST_fsm_state7 = 22'd64;
parameter    ap_ST_fsm_state8 = 22'd128;
parameter    ap_ST_fsm_state9 = 22'd256;
parameter    ap_ST_fsm_state10 = 22'd512;
parameter    ap_ST_fsm_state11 = 22'd1024;
parameter    ap_ST_fsm_state12 = 22'd2048;
parameter    ap_ST_fsm_state13 = 22'd4096;
parameter    ap_ST_fsm_state14 = 22'd8192;
parameter    ap_ST_fsm_state15 = 22'd16384;
parameter    ap_ST_fsm_state16 = 22'd32768;
parameter    ap_ST_fsm_state17 = 22'd65536;
parameter    ap_ST_fsm_state18 = 22'd131072;
parameter    ap_ST_fsm_state19 = 22'd262144;
parameter    ap_ST_fsm_state20 = 22'd524288;
parameter    ap_ST_fsm_state21 = 22'd1048576;
parameter    ap_ST_fsm_state22 = 22'd2097152;

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

(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
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
wire   [6:0] i_fu_505_p2;
reg   [6:0] i_reg_1269;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln171_fu_499_p2;
wire   [62:0] trunc_ln174_1_fu_516_p1;
reg   [62:0] trunc_ln174_1_reg_1279;
reg   [31:0] L_reg_1284;
wire   [31:0] R_fu_530_p1;
reg   [31:0] R_reg_1289;
wire   [63:0] init_perm_res_fu_549_p3;
wire    ap_CS_fsm_state3;
wire   [5:0] i_5_fu_562_p2;
reg   [5:0] i_5_reg_1302;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln182_fu_556_p2;
wire   [62:0] trunc_ln184_1_fu_573_p1;
reg   [62:0] trunc_ln184_1_reg_1312;
wire   [63:0] permuted_choice_1_fu_620_p3;
wire    ap_CS_fsm_state5;
wire   [4:0] i_7_fu_633_p2;
reg   [4:0] i_7_reg_1341;
wire    ap_CS_fsm_state6;
reg   [3:0] sub_key_addr_reg_1349;
wire   [0:0] icmp_ln192_fu_627_p2;
wire   [55:0] tmp_7_fu_795_p3;
reg   [55:0] tmp_7_reg_1361;
wire    ap_CS_fsm_state7;
wire   [5:0] j_4_fu_809_p2;
reg   [5:0] j_4_reg_1369;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln216_fu_803_p2;
wire   [62:0] trunc_ln218_1_fu_820_p1;
reg   [62:0] trunc_ln218_1_reg_1379;
wire   [63:0] or_ln_fu_839_p3;
wire    ap_CS_fsm_state9;
wire   [4:0] i_9_fu_852_p2;
reg   [4:0] i_9_reg_1392;
wire    ap_CS_fsm_state10;
wire   [63:0] pre_output_fu_858_p3;
reg   [63:0] pre_output_reg_1397;
wire   [0:0] icmp_ln223_fu_846_p2;
wire   [5:0] j_fu_872_p2;
reg   [5:0] j_reg_1405;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln227_fu_866_p2;
wire   [63:0] s_input_fu_913_p3;
wire    ap_CS_fsm_state12;
wire   [46:0] xor_ln232_fu_937_p2;
reg   [46:0] xor_ln232_reg_1425;
wire    ap_CS_fsm_state13;
wire   [47:0] xor_ln232_1_fu_943_p2;
reg   [47:0] xor_ln232_1_reg_1430;
wire   [3:0] j_5_fu_955_p2;
reg   [3:0] j_5_reg_1438;
wire    ap_CS_fsm_state14;
wire  signed [31:0] sext_ln240_fu_997_p1;
reg  signed [31:0] sext_ln240_reg_1443;
wire    ap_CS_fsm_state16;
wire   [47:0] grp_fu_484_p2;
reg   [47:0] lshr_ln240_1_reg_1448;
wire   [5:0] sub_ln243_1_fu_1047_p2;
reg   [5:0] sub_ln243_1_reg_1455;
wire    ap_CS_fsm_state17;
wire   [5:0] j_6_fu_1170_p2;
reg   [5:0] j_6_reg_1468;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln252_fu_1164_p2;
wire   [30:0] trunc_ln254_1_fu_1181_p1;
reg   [30:0] trunc_ln254_1_reg_1478;
wire   [31:0] R_1_fu_1185_p2;
wire   [31:0] f_function_res_fu_1206_p3;
wire    ap_CS_fsm_state20;
wire   [6:0] i_8_fu_1219_p2;
reg   [6:0] i_8_reg_1496;
wire    ap_CS_fsm_state21;
wire   [0:0] icmp_ln267_fu_1213_p2;
wire   [62:0] trunc_ln270_1_fu_1230_p1;
reg   [62:0] trunc_ln270_1_reg_1506;
wire   [63:0] inv_init_perm_res_fu_1249_p3;
wire    ap_CS_fsm_state22;
reg   [3:0] sub_key_address0;
reg    sub_key_ce0;
reg    sub_key_we0;
wire   [63:0] sub_key_q0;
reg   [63:0] init_perm_res_0_reg_287;
reg   [6:0] i_0_reg_298;
reg   [63:0] permuted_choice_1_0_reg_309;
reg   [5:0] i_1_reg_320;
reg   [4:0] i_2_reg_331;
reg   [63:0] sub_key_load_1_reg_342;
reg   [5:0] j_0_reg_354;
reg   [31:0] temp_reg_365;
reg   [31:0] L_0_reg_375;
reg   [4:0] i_3_reg_386;
reg   [63:0] s_input_0_reg_398;
reg   [5:0] j_1_reg_410;
reg   [3:0] j_2_reg_421;
wire    ap_CS_fsm_state18;
reg   [31:0] f_function_res_0_reg_433;
wire   [0:0] icmp_ln235_fu_949_p2;
reg   [5:0] j_3_reg_444;
reg   [6:0] i_4_reg_455;
reg   [63:0] inv_init_perm_res_0_reg_466;
wire   [63:0] zext_ln174_1_fu_511_p1;
wire   [63:0] zext_ln184_1_fu_568_p1;
wire   [63:0] zext_ln214_fu_785_p1;
wire   [63:0] zext_ln218_fu_815_p1;
wire   [63:0] zext_ln229_fu_878_p1;
wire   [63:0] zext_ln232_fu_889_p1;
wire  signed [63:0] sext_ln246_3_fu_1142_p1;
wire   [63:0] zext_ln254_fu_1176_p1;
wire   [63:0] zext_ln270_1_fu_1225_p1;
reg   [27:0] C_1_fu_154;
wire   [27:0] C_2_fu_695_p3;
wire   [0:0] empty_17_fu_675_p2;
wire   [27:0] C_3_fu_747_p3;
reg   [27:0] D_fu_158;
wire   [27:0] D_1_fu_587_p1;
wire   [27:0] D_2_fu_717_p3;
wire   [27:0] D_3_fu_767_p3;
reg   [31:0] s_output_1_fu_162;
wire   [31:0] s_output_fu_1151_p3;
reg   [63:0] grp_fu_478_p0;
reg   [63:0] grp_fu_478_p1;
wire   [63:0] zext_ln174_fu_540_p1;
wire   [63:0] zext_ln184_fu_611_p1;
wire   [55:0] zext_ln218_1_fu_830_p1;
wire   [31:0] zext_ln229_1_fu_900_p1;
wire   [47:0] zext_ln240_4_fu_1001_p1;
wire   [46:0] zext_ln240_3_fu_1053_p1;
wire   [31:0] zext_ln254_1_fu_1197_p1;
wire   [63:0] zext_ln270_fu_1240_p1;
reg   [47:0] grp_fu_484_p0;
wire   [47:0] and_ln240_fu_1006_p2;
wire   [46:0] and_ln243_fu_1082_p2;
reg   [47:0] grp_fu_484_p1;
wire   [47:0] zext_ln240_6_fu_1036_p1;
wire   [46:0] zext_ln243_fu_1088_p1;
wire   [6:0] sub_ln174_fu_534_p2;
wire   [63:0] grp_fu_478_p2;
wire   [0:0] trunc_ln174_fu_545_p1;
wire   [6:0] zext_ln184_2_fu_601_p1;
wire   [6:0] sub_ln184_fu_605_p2;
wire   [0:0] trunc_ln184_fu_616_p1;
wire   [0:0] empty_12_fu_645_p2;
wire   [0:0] empty_11_fu_639_p2;
wire   [0:0] empty_14_fu_657_p2;
wire   [0:0] empty_13_fu_651_p2;
wire   [0:0] empty_16_fu_669_p2;
wire   [0:0] empty_15_fu_663_p2;
wire   [25:0] trunc_ln203_fu_681_p1;
wire   [1:0] tmp_2_fu_685_p4;
wire   [25:0] trunc_ln204_fu_703_p1;
wire   [1:0] tmp_s_fu_707_p4;
wire   [26:0] trunc_ln197_fu_743_p1;
wire   [0:0] tmp_fu_735_p3;
wire   [26:0] trunc_ln198_fu_763_p1;
wire   [0:0] tmp_1_fu_755_p3;
wire   [5:0] sub_ln218_fu_824_p2;
wire   [55:0] trunc_ln218_fu_835_p0;
wire   [0:0] trunc_ln218_fu_835_p1;
wire   [4:0] sub_ln232_fu_883_p2;
wire   [5:0] sub_ln229_fu_894_p2;
wire   [31:0] trunc_ln229_fu_905_p0;
wire   [62:0] trunc_ln229_1_fu_909_p1;
wire   [0:0] trunc_ln229_fu_905_p1;
wire   [46:0] trunc_ln232_3_fu_933_p1;
wire   [46:0] trunc_ln232_2_fu_929_p1;
wire   [47:0] trunc_ln232_1_fu_925_p1;
wire   [47:0] trunc_ln232_fu_921_p1;
wire   [2:0] trunc_ln240_fu_961_p1;
wire   [5:0] shl_ln_fu_965_p3;
wire   [3:0] shl_ln240_fu_977_p2;
wire   [6:0] zext_ln240_fu_973_p1;
wire   [6:0] zext_ln240_2_fu_987_p1;
wire   [6:0] sub_ln240_fu_991_p2;
wire   [47:0] and_ln240_fu_1006_p0;
wire   [4:0] shl_ln240_1_fu_1012_p3;
wire   [5:0] zext_ln240_1_fu_983_p1;
wire   [5:0] sub_ln240_1_fu_1024_p2;
wire   [5:0] zext_ln240_5_fu_1020_p1;
wire   [5:0] sub_ln240_2_fu_1030_p2;
wire   [5:0] sub_ln243_fu_1041_p2;
wire   [0:0] tmp_3_fu_1060_p3;
wire   [0:0] trunc_ln240_1_fu_1057_p1;
wire   [46:0] and_ln243_fu_1082_p0;
wire   [2:0] tmp_4_fu_1073_p4;
wire   [0:0] or_ln241_fu_1067_p2;
wire   [7:0] tmp_5_fu_1092_p4;
wire   [46:0] trunc_ln246_fu_1106_p0;
wire   [7:0] trunc_ln246_fu_1106_p1;
wire  signed [8:0] sext_ln246_1_fu_1110_p1;
wire  signed [8:0] sext_ln246_fu_1102_p1;
wire   [8:0] add_ln246_fu_1114_p2;
wire   [9:0] tmp_6_fu_1124_p3;
wire  signed [10:0] sext_ln246_2_fu_1120_p1;
wire   [10:0] zext_ln246_fu_1132_p1;
wire   [10:0] add_ln246_1_fu_1136_p2;
wire   [27:0] trunc_ln246_1_fu_1147_p1;
wire   [5:0] sub_ln254_fu_1191_p2;
wire   [31:0] trunc_ln254_fu_1202_p0;
wire   [0:0] trunc_ln254_fu_1202_p1;
wire   [6:0] sub_ln270_fu_1234_p2;
wire   [0:0] trunc_ln270_fu_1245_p1;
reg   [21:0] ap_NS_fsm;
wire   [47:0] trunc_ln246_fu_1106_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 22'd1;
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
    .d0(sub_key_load_1_reg_342),
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
    if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_675_p2 == 1'd1) & (icmp_ln192_fu_627_p2 == 1'd0))) begin
        C_1_fu_154 <= C_3_fu_747_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_675_p2 == 1'd0) & (icmp_ln192_fu_627_p2 == 1'd0))) begin
        C_1_fu_154 <= C_2_fu_695_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_556_p2 == 1'd1))) begin
        C_1_fu_154 <= {{permuted_choice_1_0_reg_309[55:28]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_675_p2 == 1'd1) & (icmp_ln192_fu_627_p2 == 1'd0))) begin
        D_fu_158 <= D_3_fu_767_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (empty_17_fu_675_p2 == 1'd0) & (icmp_ln192_fu_627_p2 == 1'd0))) begin
        D_fu_158 <= D_2_fu_717_p3;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_556_p2 == 1'd1))) begin
        D_fu_158 <= D_1_fu_587_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd1))) begin
        L_0_reg_375 <= L_reg_1284;
    end else if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln252_fu_1164_p2 == 1'd1))) begin
        L_0_reg_375 <= temp_reg_365;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln235_fu_949_p2 == 1'd1))) begin
        f_function_res_0_reg_433 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        f_function_res_0_reg_433 <= f_function_res_fu_1206_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_reg_298 <= i_reg_1269;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_298 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_1_reg_320 <= i_5_reg_1302;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_499_p2 == 1'd1))) begin
        i_1_reg_320 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln216_fu_803_p2 == 1'd1))) begin
        i_2_reg_331 <= i_7_reg_1341;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_556_p2 == 1'd1))) begin
        i_2_reg_331 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd1))) begin
        i_3_reg_386 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln252_fu_1164_p2 == 1'd1))) begin
        i_3_reg_386 <= i_9_reg_1392;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        i_4_reg_455 <= i_8_reg_1496;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd1))) begin
        i_4_reg_455 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        init_perm_res_0_reg_287 <= init_perm_res_fu_549_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        init_perm_res_0_reg_287 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        inv_init_perm_res_0_reg_466 <= inv_init_perm_res_fu_1249_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd1))) begin
        inv_init_perm_res_0_reg_466 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        j_0_reg_354 <= j_4_reg_1369;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        j_0_reg_354 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd0))) begin
        j_1_reg_410 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        j_1_reg_410 <= j_reg_1405;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        j_2_reg_421 <= j_5_reg_1438;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        j_2_reg_421 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln235_fu_949_p2 == 1'd1))) begin
        j_3_reg_444 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        j_3_reg_444 <= j_6_reg_1468;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        permuted_choice_1_0_reg_309 <= permuted_choice_1_fu_620_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_499_p2 == 1'd1))) begin
        permuted_choice_1_0_reg_309 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd0))) begin
        s_input_0_reg_398 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        s_input_0_reg_398 <= s_input_fu_913_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        s_output_1_fu_162 <= s_output_fu_1151_p3;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd1))) begin
        s_output_1_fu_162 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        sub_key_load_1_reg_342 <= or_ln_fu_839_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sub_key_load_1_reg_342 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd1))) begin
        temp_reg_365 <= R_reg_1289;
    end else if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln252_fu_1164_p2 == 1'd1))) begin
        temp_reg_365 <= R_1_fu_1185_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_499_p2 == 1'd1))) begin
        L_reg_1284 <= {{init_perm_res_0_reg_287[63:32]}};
        R_reg_1289 <= R_fu_530_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_5_reg_1302 <= i_5_fu_562_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_7_reg_1341 <= i_7_fu_633_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i_8_reg_1496 <= i_8_fu_1219_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_9_reg_1392 <= i_9_fu_852_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_1269 <= i_fu_505_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_4_reg_1369 <= j_4_fu_809_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        j_5_reg_1438 <= j_5_fu_955_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        j_6_reg_1468 <= j_6_fu_1170_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        j_reg_1405 <= j_fu_872_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        lshr_ln240_1_reg_1448 <= grp_fu_484_p2;
        sext_ln240_reg_1443[31 : 1] <= sext_ln240_fu_997_p1[31 : 1];
        sub_ln243_1_reg_1455[5 : 1] <= sub_ln243_1_fu_1047_p2[5 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd1))) begin
        pre_output_reg_1397 <= pre_output_fu_858_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd0))) begin
        sub_key_addr_reg_1349 <= zext_ln214_fu_785_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_7_reg_1361 <= tmp_7_fu_795_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_499_p2 == 1'd0))) begin
        trunc_ln174_1_reg_1279 <= trunc_ln174_1_fu_516_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_556_p2 == 1'd0))) begin
        trunc_ln184_1_reg_1312 <= trunc_ln184_1_fu_573_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln216_fu_803_p2 == 1'd0))) begin
        trunc_ln218_1_reg_1379 <= trunc_ln218_1_fu_820_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln252_fu_1164_p2 == 1'd0))) begin
        trunc_ln254_1_reg_1478 <= trunc_ln254_1_fu_1181_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln267_fu_1213_p2 == 1'd0))) begin
        trunc_ln270_1_reg_1506 <= trunc_ln270_1_fu_1230_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        xor_ln232_1_reg_1430 <= xor_ln232_1_fu_943_p2;
        xor_ln232_reg_1425 <= xor_ln232_fu_937_p2;
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
    if ((1'b1 == ap_CS_fsm_state21)) begin
        PI_ce0 = 1'b1;
    end else begin
        PI_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        P_ce0 = 1'b1;
    end else begin
        P_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        S_ce0 = 1'b1;
    end else begin
        S_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln267_fu_1213_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln267_fu_1213_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_478_p0 = pre_output_reg_1397;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_478_p0 = s_output_1_fu_162;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_478_p0 = 47'd131941395333120;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_478_p0 = 48'd145135534866432;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_478_p0 = temp_reg_365;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_478_p0 = tmp_7_reg_1361;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_478_p0 = key;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_478_p0 = input_r;
    end else begin
        grp_fu_478_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_478_p1 = zext_ln270_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_478_p1 = zext_ln254_1_fu_1197_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_478_p1 = zext_ln240_3_fu_1053_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_478_p1 = zext_ln240_4_fu_1001_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_478_p1 = zext_ln229_1_fu_900_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_478_p1 = zext_ln218_1_fu_830_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_478_p1 = zext_ln184_fu_611_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_478_p1 = zext_ln174_fu_540_p1;
    end else begin
        grp_fu_478_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_484_p0 = and_ln243_fu_1082_p2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_484_p0 = and_ln240_fu_1006_p2;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_484_p1 = zext_ln243_fu_1088_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_484_p1 = zext_ln240_6_fu_1036_p1;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        sub_key_address0 = zext_ln232_fu_889_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sub_key_address0 = sub_key_addr_reg_1349;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_fu_499_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln182_fu_556_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln192_fu_627_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln216_fu_803_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln223_fu_846_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln227_fu_866_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln235_fu_949_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state19;
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
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (icmp_ln252_fu_1164_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state21 : begin
            if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln267_fu_1213_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C_2_fu_695_p3 = {{trunc_ln203_fu_681_p1}, {tmp_2_fu_685_p4}};

assign C_3_fu_747_p3 = {{trunc_ln197_fu_743_p1}, {tmp_fu_735_p3}};

assign D_1_fu_587_p1 = permuted_choice_1_0_reg_309[27:0];

assign D_2_fu_717_p3 = {{trunc_ln204_fu_703_p1}, {tmp_s_fu_707_p4}};

assign D_3_fu_767_p3 = {{trunc_ln198_fu_763_p1}, {tmp_1_fu_755_p3}};

assign E_address0 = zext_ln229_fu_878_p1;

assign IP_address0 = zext_ln174_1_fu_511_p1;

assign PC1_address0 = zext_ln184_1_fu_568_p1;

assign PC2_address0 = zext_ln218_fu_815_p1;

assign PI_address0 = zext_ln270_1_fu_1225_p1;

assign P_address0 = zext_ln254_fu_1176_p1;

assign R_1_fu_1185_p2 = (f_function_res_0_reg_433 ^ L_0_reg_375);

assign R_fu_530_p1 = init_perm_res_0_reg_287[31:0];

assign S_address0 = sext_ln246_3_fu_1142_p1;

assign add_ln246_1_fu_1136_p2 = ($signed(sext_ln246_2_fu_1120_p1) + $signed(zext_ln246_fu_1132_p1));

assign add_ln246_fu_1114_p2 = ($signed(sext_ln246_1_fu_1110_p1) + $signed(sext_ln246_fu_1102_p1));

assign and_ln240_fu_1006_p0 = grp_fu_478_p2;

assign and_ln240_fu_1006_p2 = (xor_ln232_1_reg_1430 & and_ln240_fu_1006_p0);

assign and_ln243_fu_1082_p0 = grp_fu_478_p2;

assign and_ln243_fu_1082_p2 = (xor_ln232_reg_1425 & and_ln243_fu_1082_p0);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = inv_init_perm_res_0_reg_466;

assign empty_11_fu_639_p2 = ((i_2_reg_331 == 5'd15) ? 1'b1 : 1'b0);

assign empty_12_fu_645_p2 = ((i_2_reg_331 == 5'd8) ? 1'b1 : 1'b0);

assign empty_13_fu_651_p2 = (empty_12_fu_645_p2 | empty_11_fu_639_p2);

assign empty_14_fu_657_p2 = ((i_2_reg_331 == 5'd1) ? 1'b1 : 1'b0);

assign empty_15_fu_663_p2 = (empty_14_fu_657_p2 | empty_13_fu_651_p2);

assign empty_16_fu_669_p2 = ((i_2_reg_331 == 5'd0) ? 1'b1 : 1'b0);

assign empty_17_fu_675_p2 = (empty_16_fu_669_p2 | empty_15_fu_663_p2);

assign f_function_res_fu_1206_p3 = {{trunc_ln254_1_reg_1478}, {trunc_ln254_fu_1202_p1}};

assign grp_fu_478_p2 = grp_fu_478_p0 >> grp_fu_478_p1;

assign grp_fu_484_p2 = grp_fu_484_p0 >> grp_fu_484_p1;

assign i_5_fu_562_p2 = (i_1_reg_320 + 6'd1);

assign i_7_fu_633_p2 = (i_2_reg_331 + 5'd1);

assign i_8_fu_1219_p2 = (i_4_reg_455 + 7'd1);

assign i_9_fu_852_p2 = (i_3_reg_386 + 5'd1);

assign i_fu_505_p2 = (i_0_reg_298 + 7'd1);

assign icmp_ln171_fu_499_p2 = ((i_0_reg_298 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln182_fu_556_p2 = ((i_1_reg_320 == 6'd56) ? 1'b1 : 1'b0);

assign icmp_ln192_fu_627_p2 = ((i_2_reg_331 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln216_fu_803_p2 = ((j_0_reg_354 == 6'd48) ? 1'b1 : 1'b0);

assign icmp_ln223_fu_846_p2 = ((i_3_reg_386 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln227_fu_866_p2 = ((j_1_reg_410 == 6'd48) ? 1'b1 : 1'b0);

assign icmp_ln235_fu_949_p2 = ((j_2_reg_421 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln252_fu_1164_p2 = ((j_3_reg_444 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln267_fu_1213_p2 = ((i_4_reg_455 == 7'd64) ? 1'b1 : 1'b0);

assign init_perm_res_fu_549_p3 = {{trunc_ln174_1_reg_1279}, {trunc_ln174_fu_545_p1}};

assign inv_init_perm_res_fu_1249_p3 = {{trunc_ln270_1_reg_1506}, {trunc_ln270_fu_1245_p1}};

assign j_4_fu_809_p2 = (j_0_reg_354 + 6'd1);

assign j_5_fu_955_p2 = (j_2_reg_421 + 4'd1);

assign j_6_fu_1170_p2 = (j_3_reg_444 + 6'd1);

assign j_fu_872_p2 = (j_1_reg_410 + 6'd1);

assign or_ln241_fu_1067_p2 = (trunc_ln240_1_fu_1057_p1 | tmp_3_fu_1060_p3);

assign or_ln_fu_839_p3 = {{trunc_ln218_1_reg_1379}, {trunc_ln218_fu_835_p1}};

assign permuted_choice_1_fu_620_p3 = {{trunc_ln184_1_reg_1312}, {trunc_ln184_fu_616_p1}};

assign pre_output_fu_858_p3 = {{temp_reg_365}, {L_0_reg_375}};

assign s_input_fu_913_p3 = {{trunc_ln229_1_fu_909_p1}, {trunc_ln229_fu_905_p1}};

assign s_output_fu_1151_p3 = {{trunc_ln246_1_fu_1147_p1}, {S_q0}};

assign sext_ln240_fu_997_p1 = $signed(sub_ln240_fu_991_p2);

assign sext_ln246_1_fu_1110_p1 = $signed(trunc_ln246_fu_1106_p1);

assign sext_ln246_2_fu_1120_p1 = $signed(add_ln246_fu_1114_p2);

assign sext_ln246_3_fu_1142_p1 = $signed(add_ln246_1_fu_1136_p2);

assign sext_ln246_fu_1102_p1 = $signed(tmp_5_fu_1092_p4);

assign shl_ln240_1_fu_1012_p3 = {{trunc_ln240_fu_961_p1}, {2'd0}};

assign shl_ln240_fu_977_p2 = j_2_reg_421 << 4'd1;

assign shl_ln_fu_965_p3 = {{trunc_ln240_fu_961_p1}, {3'd0}};

assign sub_ln174_fu_534_p2 = ($signed(7'd64) - $signed(IP_q0));

assign sub_ln184_fu_605_p2 = ($signed(7'd64) - $signed(zext_ln184_2_fu_601_p1));

assign sub_ln218_fu_824_p2 = ($signed(6'd56) - $signed(PC2_q0));

assign sub_ln229_fu_894_p2 = ($signed(6'd32) - $signed(E_q0));

assign sub_ln232_fu_883_p2 = (5'd15 - i_3_reg_386);

assign sub_ln240_1_fu_1024_p2 = ($signed(6'd42) - $signed(zext_ln240_1_fu_983_p1));

assign sub_ln240_2_fu_1030_p2 = (sub_ln240_1_fu_1024_p2 - zext_ln240_5_fu_1020_p1);

assign sub_ln240_fu_991_p2 = (zext_ln240_fu_973_p1 - zext_ln240_2_fu_987_p1);

assign sub_ln243_1_fu_1047_p2 = (sub_ln243_fu_1041_p2 - zext_ln240_5_fu_1020_p1);

assign sub_ln243_fu_1041_p2 = ($signed(6'd43) - $signed(zext_ln240_1_fu_983_p1));

assign sub_ln254_fu_1191_p2 = ($signed(6'd32) - $signed(P_q0));

assign sub_ln270_fu_1234_p2 = ($signed(7'd64) - $signed(PI_q0));

assign tmp_1_fu_755_p3 = D_fu_158[32'd27];

assign tmp_2_fu_685_p4 = {{C_1_fu_154[27:26]}};

assign tmp_3_fu_1060_p3 = lshr_ln240_1_reg_1448[32'd4];

assign tmp_4_fu_1073_p4 = {{lshr_ln240_1_reg_1448[7:5]}};

assign tmp_5_fu_1092_p4 = {{{tmp_4_fu_1073_p4}, {or_ln241_fu_1067_p2}}, {4'd0}};

assign tmp_6_fu_1124_p3 = {{j_2_reg_421}, {6'd0}};

assign tmp_7_fu_795_p3 = {{C_1_fu_154}, {D_fu_158}};

assign tmp_fu_735_p3 = C_1_fu_154[32'd27];

assign tmp_s_fu_707_p4 = {{D_fu_158[27:26]}};

assign trunc_ln174_1_fu_516_p1 = init_perm_res_0_reg_287[62:0];

assign trunc_ln174_fu_545_p1 = grp_fu_478_p2[0:0];

assign trunc_ln184_1_fu_573_p1 = permuted_choice_1_0_reg_309[62:0];

assign trunc_ln184_fu_616_p1 = grp_fu_478_p2[0:0];

assign trunc_ln197_fu_743_p1 = C_1_fu_154[26:0];

assign trunc_ln198_fu_763_p1 = D_fu_158[26:0];

assign trunc_ln203_fu_681_p1 = C_1_fu_154[25:0];

assign trunc_ln204_fu_703_p1 = D_fu_158[25:0];

assign trunc_ln218_1_fu_820_p1 = sub_key_load_1_reg_342[62:0];

assign trunc_ln218_fu_835_p0 = grp_fu_478_p2;

assign trunc_ln218_fu_835_p1 = trunc_ln218_fu_835_p0[0:0];

assign trunc_ln229_1_fu_909_p1 = s_input_0_reg_398[62:0];

assign trunc_ln229_fu_905_p0 = grp_fu_478_p2;

assign trunc_ln229_fu_905_p1 = trunc_ln229_fu_905_p0[0:0];

assign trunc_ln232_1_fu_925_p1 = sub_key_q0[47:0];

assign trunc_ln232_2_fu_929_p1 = s_input_0_reg_398[46:0];

assign trunc_ln232_3_fu_933_p1 = sub_key_q0[46:0];

assign trunc_ln232_fu_921_p1 = s_input_0_reg_398[47:0];

assign trunc_ln240_1_fu_1057_p1 = lshr_ln240_1_reg_1448[0:0];

assign trunc_ln240_fu_961_p1 = j_2_reg_421[2:0];

assign trunc_ln246_1_fu_1147_p1 = s_output_1_fu_162[27:0];

assign trunc_ln246_fu_1106_p0 = trunc_ln246_fu_1106_p00;

assign trunc_ln246_fu_1106_p00 = grp_fu_484_p0 >> grp_fu_484_p1;

assign trunc_ln246_fu_1106_p1 = trunc_ln246_fu_1106_p0[7:0];

assign trunc_ln254_1_fu_1181_p1 = f_function_res_0_reg_433[30:0];

assign trunc_ln254_fu_1202_p0 = grp_fu_478_p2;

assign trunc_ln254_fu_1202_p1 = trunc_ln254_fu_1202_p0[0:0];

assign trunc_ln270_1_fu_1230_p1 = inv_init_perm_res_0_reg_466[62:0];

assign trunc_ln270_fu_1245_p1 = grp_fu_478_p2[0:0];

assign xor_ln232_1_fu_943_p2 = (trunc_ln232_fu_921_p1 ^ trunc_ln232_1_fu_925_p1);

assign xor_ln232_fu_937_p2 = (trunc_ln232_3_fu_933_p1 ^ trunc_ln232_2_fu_929_p1);

assign zext_ln174_1_fu_511_p1 = i_0_reg_298;

assign zext_ln174_fu_540_p1 = sub_ln174_fu_534_p2;

assign zext_ln184_1_fu_568_p1 = i_1_reg_320;

assign zext_ln184_2_fu_601_p1 = PC1_q0;

assign zext_ln184_fu_611_p1 = sub_ln184_fu_605_p2;

assign zext_ln214_fu_785_p1 = i_2_reg_331;

assign zext_ln218_1_fu_830_p1 = sub_ln218_fu_824_p2;

assign zext_ln218_fu_815_p1 = j_0_reg_354;

assign zext_ln229_1_fu_900_p1 = sub_ln229_fu_894_p2;

assign zext_ln229_fu_878_p1 = j_1_reg_410;

assign zext_ln232_fu_889_p1 = sub_ln232_fu_883_p2;

assign zext_ln240_1_fu_983_p1 = shl_ln240_fu_977_p2;

assign zext_ln240_2_fu_987_p1 = shl_ln240_fu_977_p2;

assign zext_ln240_3_fu_1053_p1 = $unsigned(sext_ln240_reg_1443);

assign zext_ln240_4_fu_1001_p1 = $unsigned(sext_ln240_fu_997_p1);

assign zext_ln240_5_fu_1020_p1 = shl_ln240_1_fu_1012_p3;

assign zext_ln240_6_fu_1036_p1 = sub_ln240_2_fu_1030_p2;

assign zext_ln240_fu_973_p1 = shl_ln_fu_965_p3;

assign zext_ln243_fu_1088_p1 = sub_ln243_1_reg_1455;

assign zext_ln246_fu_1132_p1 = tmp_6_fu_1124_p3;

assign zext_ln254_1_fu_1197_p1 = sub_ln254_fu_1191_p2;

assign zext_ln254_fu_1176_p1 = j_3_reg_444;

assign zext_ln270_1_fu_1225_p1 = i_4_reg_455;

assign zext_ln270_fu_1240_p1 = sub_ln270_fu_1234_p2;

always @ (posedge ap_clk) begin
    sext_ln240_reg_1443[0] <= 1'b0;
    sub_ln243_1_reg_1455[0] <= 1'b1;
end

endmodule //des_dec