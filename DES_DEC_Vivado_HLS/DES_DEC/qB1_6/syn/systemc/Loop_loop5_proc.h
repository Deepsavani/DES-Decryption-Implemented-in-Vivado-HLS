// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_loop5_proc_HH_
#define _Loop_loop5_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_loop5_proc_PI.h"

namespace ap_rtl {

struct Loop_loop5_proc : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > p_read;
    sc_in< sc_lv<32> > p_read1;
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    Loop_loop5_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_loop5_proc);

    ~Loop_loop5_proc();

    sc_trace_file* mVcdFile;

    Loop_loop5_proc_PI* PI_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > PI_address0;
    sc_signal< sc_logic > PI_ce0;
    sc_signal< sc_lv<7> > PI_q0;
    sc_signal< sc_lv<7> > i_4_i_reg_67;
    sc_signal< sc_lv<64> > inv_init_perm_res_0_s_reg_78;
    sc_signal< sc_lv<64> > pre_output_fu_90_p3;
    sc_signal< sc_lv<64> > pre_output_reg_146;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > icmp_ln267_fu_98_p2;
    sc_signal< sc_lv<1> > icmp_ln267_reg_151;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > i_fu_104_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > inv_init_perm_res_fu_138_p3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln270_fu_110_p1;
    sc_signal< sc_lv<7> > sub_ln270_fu_115_p2;
    sc_signal< sc_lv<64> > zext_ln270_1_fu_121_p1;
    sc_signal< sc_lv<64> > lshr_ln270_fu_125_p2;
    sc_signal< sc_lv<63> > trunc_ln270_1_fu_134_p1;
    sc_signal< sc_lv<1> > trunc_ln270_fu_130_p1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_PI_address0();
    void thread_PI_ce0();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_i_fu_104_p2();
    void thread_icmp_ln267_fu_98_p2();
    void thread_inv_init_perm_res_fu_138_p3();
    void thread_lshr_ln270_fu_125_p2();
    void thread_pre_output_fu_90_p3();
    void thread_sub_ln270_fu_115_p2();
    void thread_trunc_ln270_1_fu_134_p1();
    void thread_trunc_ln270_fu_130_p1();
    void thread_zext_ln270_1_fu_121_p1();
    void thread_zext_ln270_fu_110_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif