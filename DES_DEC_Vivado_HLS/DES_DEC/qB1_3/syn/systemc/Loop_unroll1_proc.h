// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_unroll1_proc_HH_
#define _Loop_unroll1_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_unroll1_procbkb.h"

namespace ap_rtl {

struct Loop_unroll1_proc : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > input_r_dout;
    sc_in< sc_logic > input_r_empty_n;
    sc_out< sc_logic > input_r_read;
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    Loop_unroll1_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_unroll1_proc);

    ~Loop_unroll1_proc();

    sc_trace_file* mVcdFile;

    Loop_unroll1_procbkb* IP_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > IP_address0;
    sc_signal< sc_logic > IP_ce0;
    sc_signal< sc_lv<7> > IP_q0;
    sc_signal< sc_logic > input_r_blk_n;
    sc_signal< sc_lv<64> > input_read_reg_134;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<7> > i_fu_93_p2;
    sc_signal< sc_lv<7> > i_reg_142;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln171_fu_87_p2;
    sc_signal< sc_lv<63> > trunc_ln174_1_fu_104_p1;
    sc_signal< sc_lv<63> > trunc_ln174_1_reg_152;
    sc_signal< sc_lv<64> > init_perm_res_fu_127_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > init_perm_res_0_loc_s_reg_65;
    sc_signal< sc_lv<7> > i_0_i_i_i_reg_76;
    sc_signal< sc_lv<64> > zext_ln174_fu_99_p1;
    sc_signal< sc_lv<7> > sub_ln174_fu_108_p2;
    sc_signal< sc_lv<64> > zext_ln174_1_fu_114_p1;
    sc_signal< sc_lv<64> > lshr_ln174_fu_118_p2;
    sc_signal< sc_lv<1> > trunc_ln174_fu_123_p1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_IP_address0();
    void thread_IP_ce0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_i_fu_93_p2();
    void thread_icmp_ln171_fu_87_p2();
    void thread_init_perm_res_fu_127_p3();
    void thread_input_r_blk_n();
    void thread_input_r_read();
    void thread_lshr_ln174_fu_118_p2();
    void thread_sub_ln174_fu_108_p2();
    void thread_trunc_ln174_1_fu_104_p1();
    void thread_trunc_ln174_fu_123_p1();
    void thread_zext_ln174_1_fu_114_p1();
    void thread_zext_ln174_fu_99_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
