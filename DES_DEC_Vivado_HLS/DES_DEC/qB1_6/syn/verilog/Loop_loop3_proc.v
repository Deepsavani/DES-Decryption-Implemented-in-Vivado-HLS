// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_loop3_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        sub_key_address0,
        sub_key_ce0,
        sub_key_we0,
        sub_key_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [59:0] p_read;
input  [63:0] p_read1;
output  [3:0] sub_key_address0;
output   sub_key_ce0;
output   sub_key_we0;
output  [47:0] sub_key_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg sub_key_ce0;
reg sub_key_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] i_2_i_reg_145;
wire   [0:0] icmp_ln192_fu_181_p2;
reg   [0:0] icmp_ln192_reg_851;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] i_fu_187_p2;
reg   [4:0] i_reg_855;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] empty_854_fu_235_p2;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg   [4:0] ap_phi_mux_i_2_i_phi_fu_149_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln214_fu_359_p1;
reg   [27:0] C_3_fu_112;
wire   [27:0] C_1_fu_259_p3;
wire   [27:0] C_2_fu_307_p3;
reg   [27:0] D_fu_116;
wire   [27:0] D_3_fu_167_p1;
wire   [27:0] D_1_fu_277_p3;
wire   [27:0] D_2_fu_327_p3;
wire   [0:0] empty_849_fu_205_p2;
wire   [0:0] empty_848_fu_199_p2;
wire   [0:0] empty_851_fu_217_p2;
wire   [0:0] empty_850_fu_211_p2;
wire   [0:0] empty_853_fu_229_p2;
wire   [0:0] empty_852_fu_223_p2;
wire   [25:0] trunc_ln203_fu_241_p1;
wire   [1:0] tmp_4_fu_249_p4;
wire   [25:0] trunc_ln204_fu_245_p1;
wire   [1:0] tmp_5_fu_267_p4;
wire   [26:0] trunc_ln197_fu_303_p1;
wire   [0:0] tmp_fu_295_p3;
wire   [26:0] trunc_ln198_fu_323_p1;
wire   [0:0] tmp_1_fu_315_p3;
wire   [0:0] tmp_6_fu_380_p3;
wire   [0:0] tmp_3_fu_372_p3;
wire   [0:0] tmp_7_fu_388_p3;
wire   [0:0] tmp_8_fu_396_p3;
wire   [0:0] tmp_9_fu_404_p3;
wire   [0:0] tmp_10_fu_412_p3;
wire   [0:0] tmp_11_fu_420_p3;
wire   [0:0] trunc_ln212_1_fu_355_p1;
wire   [0:0] tmp_2_fu_364_p3;
wire   [0:0] tmp_12_fu_428_p3;
wire   [0:0] tmp_13_fu_436_p3;
wire   [0:0] tmp_14_fu_444_p3;
wire   [0:0] tmp_15_fu_452_p3;
wire   [0:0] tmp_16_fu_460_p3;
wire   [0:0] tmp_17_fu_468_p3;
wire   [0:0] tmp_18_fu_476_p3;
wire   [0:0] tmp_19_fu_484_p3;
wire   [0:0] tmp_20_fu_492_p3;
wire   [0:0] tmp_21_fu_500_p3;
wire   [0:0] tmp_22_fu_508_p3;
wire   [0:0] tmp_23_fu_516_p3;
wire   [0:0] tmp_24_fu_524_p3;
wire   [0:0] tmp_25_fu_532_p3;
wire   [0:0] tmp_26_fu_540_p3;
wire   [0:0] tmp_27_fu_548_p3;
wire   [0:0] tmp_28_fu_556_p3;
wire   [0:0] tmp_29_fu_564_p3;
wire   [0:0] tmp_30_fu_572_p3;
wire   [0:0] tmp_31_fu_580_p3;
wire   [0:0] tmp_32_fu_588_p3;
wire   [0:0] tmp_33_fu_596_p3;
wire   [0:0] tmp_34_fu_604_p3;
wire   [0:0] tmp_35_fu_612_p3;
wire   [0:0] tmp_36_fu_620_p3;
wire   [0:0] tmp_37_fu_628_p3;
wire   [0:0] tmp_38_fu_636_p3;
wire   [0:0] tmp_39_fu_644_p3;
wire   [0:0] tmp_40_fu_652_p3;
wire   [0:0] tmp_41_fu_660_p3;
wire   [0:0] trunc_ln212_fu_351_p1;
wire   [0:0] tmp_42_fu_668_p3;
wire   [0:0] tmp_43_fu_676_p3;
wire   [0:0] tmp_44_fu_684_p3;
wire   [0:0] tmp_45_fu_692_p3;
wire   [0:0] tmp_46_fu_700_p3;
wire   [0:0] tmp_47_fu_708_p3;
wire   [0:0] tmp_48_fu_716_p3;
wire   [0:0] tmp_49_fu_724_p3;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((empty_854_fu_235_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_fu_181_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_3_fu_112 <= C_2_fu_307_p3;
    end else if (((empty_854_fu_235_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_fu_181_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_3_fu_112 <= C_1_fu_259_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        C_3_fu_112 <= {{p_read[55:28]}};
    end
end

always @ (posedge ap_clk) begin
    if (((empty_854_fu_235_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_fu_181_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_fu_116 <= D_2_fu_327_p3;
    end else if (((empty_854_fu_235_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_fu_181_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_fu_116 <= D_1_fu_277_p3;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        D_fu_116 <= D_3_fu_167_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_reg_851 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_i_reg_145 <= i_reg_855;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_2_i_reg_145 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_855 <= i_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln192_reg_851 <= icmp_ln192_fu_181_p2;
    end
end

always @ (*) begin
    if ((icmp_ln192_fu_181_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln192_reg_851 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_2_i_phi_fu_149_p4 = i_reg_855;
    end else begin
        ap_phi_mux_i_2_i_phi_fu_149_p4 = i_2_i_reg_145;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_key_ce0 = 1'b1;
    end else begin
        sub_key_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln192_reg_851 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub_key_we0 = 1'b1;
    end else begin
        sub_key_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln192_fu_181_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln192_fu_181_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign C_1_fu_259_p3 = {{trunc_ln203_fu_241_p1}, {tmp_4_fu_249_p4}};

assign C_2_fu_307_p3 = {{trunc_ln197_fu_303_p1}, {tmp_fu_295_p3}};

assign D_1_fu_277_p3 = {{trunc_ln204_fu_245_p1}, {tmp_5_fu_267_p4}};

assign D_2_fu_327_p3 = {{trunc_ln198_fu_323_p1}, {tmp_1_fu_315_p3}};

assign D_3_fu_167_p1 = p_read1[27:0];

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign empty_848_fu_199_p2 = ((ap_phi_mux_i_2_i_phi_fu_149_p4 == 5'd15) ? 1'b1 : 1'b0);

assign empty_849_fu_205_p2 = ((ap_phi_mux_i_2_i_phi_fu_149_p4 == 5'd8) ? 1'b1 : 1'b0);

assign empty_850_fu_211_p2 = (empty_849_fu_205_p2 | empty_848_fu_199_p2);

assign empty_851_fu_217_p2 = ((ap_phi_mux_i_2_i_phi_fu_149_p4 == 5'd1) ? 1'b1 : 1'b0);

assign empty_852_fu_223_p2 = (empty_851_fu_217_p2 | empty_850_fu_211_p2);

assign empty_853_fu_229_p2 = ((ap_phi_mux_i_2_i_phi_fu_149_p4 == 5'd0) ? 1'b1 : 1'b0);

assign empty_854_fu_235_p2 = (empty_853_fu_229_p2 | empty_852_fu_223_p2);

assign i_fu_187_p2 = (ap_phi_mux_i_2_i_phi_fu_149_p4 + 5'd1);

assign icmp_ln192_fu_181_p2 = ((ap_phi_mux_i_2_i_phi_fu_149_p4 == 5'd16) ? 1'b1 : 1'b0);

assign sub_key_address0 = zext_ln214_fu_359_p1;

assign sub_key_d0 = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{tmp_6_fu_380_p3}, {tmp_3_fu_372_p3}}, {tmp_7_fu_388_p3}}, {tmp_8_fu_396_p3}}, {tmp_9_fu_404_p3}}, {tmp_10_fu_412_p3}}, {tmp_11_fu_420_p3}}, {trunc_ln212_1_fu_355_p1}}, {tmp_2_fu_364_p3}}, {tmp_12_fu_428_p3}}, {tmp_13_fu_436_p3}}, {tmp_14_fu_444_p3}}, {tmp_15_fu_452_p3}}, {tmp_16_fu_460_p3}}, {tmp_17_fu_468_p3}}, {tmp_18_fu_476_p3}}, {tmp_19_fu_484_p3}}, {tmp_20_fu_492_p3}}, {tmp_21_fu_500_p3}}, {tmp_22_fu_508_p3}}, {tmp_23_fu_516_p3}}, {tmp_24_fu_524_p3}}, {tmp_25_fu_532_p3}}, {tmp_26_fu_540_p3}}, {tmp_27_fu_548_p3}}, {tmp_28_fu_556_p3}}, {tmp_29_fu_564_p3}}, {tmp_30_fu_572_p3}}, {tmp_31_fu_580_p3}}, {tmp_32_fu_588_p3}}, {tmp_33_fu_596_p3}}, {tmp_34_fu_604_p3}}, {tmp_35_fu_612_p3}}, {tmp_36_fu_620_p3}}, {tmp_37_fu_628_p3}}, {tmp_38_fu_636_p3}}, {tmp_39_fu_644_p3}}, {tmp_40_fu_652_p3}}, {tmp_41_fu_660_p3}}, {trunc_ln212_fu_351_p1}}, {tmp_42_fu_668_p3}}, {tmp_43_fu_676_p3}}, {tmp_44_fu_684_p3}}, {tmp_45_fu_692_p3}}, {tmp_46_fu_700_p3}}, {tmp_47_fu_708_p3}}, {tmp_48_fu_716_p3}}, {tmp_49_fu_724_p3}};

assign tmp_10_fu_412_p3 = C_3_fu_112[32'd23];

assign tmp_11_fu_420_p3 = C_3_fu_112[32'd25];

assign tmp_12_fu_428_p3 = C_3_fu_112[32'd22];

assign tmp_13_fu_436_p3 = C_3_fu_112[32'd7];

assign tmp_14_fu_444_p3 = C_3_fu_112[32'd18];

assign tmp_15_fu_452_p3 = C_3_fu_112[32'd5];

assign tmp_16_fu_460_p3 = C_3_fu_112[32'd9];

assign tmp_17_fu_468_p3 = C_3_fu_112[32'd16];

assign tmp_18_fu_476_p3 = C_3_fu_112[32'd24];

assign tmp_19_fu_484_p3 = C_3_fu_112[32'd2];

assign tmp_1_fu_315_p3 = D_fu_116[32'd27];

assign tmp_20_fu_492_p3 = C_3_fu_112[32'd20];

assign tmp_21_fu_500_p3 = C_3_fu_112[32'd12];

assign tmp_22_fu_508_p3 = C_3_fu_112[32'd21];

assign tmp_23_fu_516_p3 = C_3_fu_112[32'd1];

assign tmp_24_fu_524_p3 = C_3_fu_112[32'd8];

assign tmp_25_fu_532_p3 = C_3_fu_112[32'd15];

assign tmp_26_fu_540_p3 = C_3_fu_112[32'd26];

assign tmp_27_fu_548_p3 = D_fu_116[32'd15];

assign tmp_28_fu_556_p3 = D_fu_116[32'd4];

assign tmp_29_fu_564_p3 = D_fu_116[32'd25];

assign tmp_2_fu_364_p3 = C_3_fu_112[32'd13];

assign tmp_30_fu_572_p3 = D_fu_116[32'd19];

assign tmp_31_fu_580_p3 = D_fu_116[32'd9];

assign tmp_32_fu_588_p3 = D_fu_116[32'd1];

assign tmp_33_fu_596_p3 = D_fu_116[32'd26];

assign tmp_34_fu_604_p3 = D_fu_116[32'd16];

assign tmp_35_fu_612_p3 = D_fu_116[32'd5];

assign tmp_36_fu_620_p3 = D_fu_116[32'd11];

assign tmp_37_fu_628_p3 = D_fu_116[32'd23];

assign tmp_38_fu_636_p3 = D_fu_116[32'd8];

assign tmp_39_fu_644_p3 = D_fu_116[32'd12];

assign tmp_3_fu_372_p3 = C_3_fu_112[32'd11];

assign tmp_40_fu_652_p3 = D_fu_116[32'd7];

assign tmp_41_fu_660_p3 = D_fu_116[32'd17];

assign tmp_42_fu_668_p3 = D_fu_116[32'd22];

assign tmp_43_fu_676_p3 = D_fu_116[32'd3];

assign tmp_44_fu_684_p3 = D_fu_116[32'd10];

assign tmp_45_fu_692_p3 = D_fu_116[32'd14];

assign tmp_46_fu_700_p3 = D_fu_116[32'd6];

assign tmp_47_fu_708_p3 = D_fu_116[32'd20];

assign tmp_48_fu_716_p3 = D_fu_116[32'd27];

assign tmp_49_fu_724_p3 = D_fu_116[32'd24];

assign tmp_4_fu_249_p4 = {{C_3_fu_112[27:26]}};

assign tmp_5_fu_267_p4 = {{D_fu_116[27:26]}};

assign tmp_6_fu_380_p3 = C_3_fu_112[32'd14];

assign tmp_7_fu_388_p3 = C_3_fu_112[32'd17];

assign tmp_8_fu_396_p3 = C_3_fu_112[32'd4];

assign tmp_9_fu_404_p3 = C_3_fu_112[32'd27];

assign tmp_fu_295_p3 = C_3_fu_112[32'd27];

assign trunc_ln197_fu_303_p1 = C_3_fu_112[26:0];

assign trunc_ln198_fu_323_p1 = D_fu_116[26:0];

assign trunc_ln203_fu_241_p1 = C_3_fu_112[25:0];

assign trunc_ln204_fu_245_p1 = D_fu_116[25:0];

assign trunc_ln212_1_fu_355_p1 = C_3_fu_112[0:0];

assign trunc_ln212_fu_351_p1 = D_fu_116[0:0];

assign zext_ln214_fu_359_p1 = i_2_i_reg_145;

endmodule //Loop_loop3_proc
