// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_unroll1_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        input_r_dout,
        input_r_empty_n,
        input_r_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] input_r_dout;
input   input_r_empty_n;
output   input_r_read;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] IP_address0;
reg    IP_ce0;
wire   [6:0] IP_q0;
reg    input_r_blk_n;
reg   [63:0] input_read_reg_134;
reg    ap_block_state1;
wire   [6:0] i_fu_93_p2;
reg   [6:0] i_reg_142;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln171_fu_87_p2;
wire   [62:0] trunc_ln174_1_fu_104_p1;
reg   [62:0] trunc_ln174_1_reg_152;
wire   [63:0] init_perm_res_fu_127_p3;
wire    ap_CS_fsm_state3;
reg   [63:0] init_perm_res_0_loc_s_reg_65;
reg   [6:0] i_0_i_i_i_reg_76;
wire   [63:0] zext_ln174_fu_99_p1;
wire   [6:0] sub_ln174_fu_108_p2;
wire   [63:0] zext_ln174_1_fu_114_p1;
wire   [63:0] lshr_ln174_fu_118_p2;
wire   [0:0] trunc_ln174_fu_123_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
end

Loop_unroll1_procbkb #(
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
        end else if (((icmp_ln171_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_0_i_i_i_reg_76 <= i_reg_142;
    end else if ((~((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_i_i_i_reg_76 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        init_perm_res_0_loc_s_reg_65 <= init_perm_res_fu_127_p3;
    end else if ((~((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        init_perm_res_0_loc_s_reg_65 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_142 <= i_fu_93_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_read_reg_134 <= input_r_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln171_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln174_1_reg_152 <= trunc_ln174_1_fu_104_p1;
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
    if (((icmp_ln171_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln171_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_r_blk_n = input_r_empty_n;
    end else begin
        input_r_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        input_r_read = 1'b1;
    end else begin
        input_r_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln171_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign IP_address0 = zext_ln174_fu_99_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (input_r_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_return = init_perm_res_0_loc_s_reg_65;

assign i_fu_93_p2 = (i_0_i_i_i_reg_76 + 7'd1);

assign icmp_ln171_fu_87_p2 = ((i_0_i_i_i_reg_76 == 7'd64) ? 1'b1 : 1'b0);

assign init_perm_res_fu_127_p3 = {{trunc_ln174_1_reg_152}, {trunc_ln174_fu_123_p1}};

assign lshr_ln174_fu_118_p2 = input_read_reg_134 >> zext_ln174_1_fu_114_p1;

assign sub_ln174_fu_108_p2 = ($signed(7'd64) - $signed(IP_q0));

assign trunc_ln174_1_fu_104_p1 = init_perm_res_0_loc_s_reg_65[62:0];

assign trunc_ln174_fu_123_p1 = lshr_ln174_fu_118_p2[0:0];

assign zext_ln174_1_fu_114_p1 = sub_ln174_fu_108_p2;

assign zext_ln174_fu_99_p1 = i_0_i_i_i_reg_76;

endmodule //Loop_unroll1_proc
