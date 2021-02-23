// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_3_proc_HH_
#define _Loop_3_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_3_proc_PC2.h"

namespace ap_rtl {

struct Loop_3_proc : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<60> > p_read;
    sc_in< sc_lv<64> > p_read1;
    sc_out< sc_lv<4> > sub_key_address0;
    sc_out< sc_logic > sub_key_ce0;
    sc_out< sc_logic > sub_key_we0;
    sc_out< sc_lv<64> > sub_key_d0;


    // Module declarations
    Loop_3_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_3_proc);

    ~Loop_3_proc();

    sc_trace_file* mVcdFile;

    Loop_3_proc_PC2* PC2_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > PC2_address0;
    sc_signal< sc_logic > PC2_ce0;
    sc_signal< sc_lv<6> > PC2_q0;
    sc_signal< sc_lv<5> > i_fu_177_p2;
    sc_signal< sc_lv<5> > i_reg_408;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > sub_key_addr_reg_416;
    sc_signal< sc_lv<1> > icmp_ln192_fu_171_p2;
    sc_signal< sc_lv<56> > tmp_8_fu_334_p3;
    sc_signal< sc_lv<56> > tmp_8_reg_421;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > j_fu_348_p2;
    sc_signal< sc_lv<6> > j_reg_429;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln216_fu_342_p2;
    sc_signal< sc_lv<63> > trunc_ln218_1_fu_359_p1;
    sc_signal< sc_lv<63> > trunc_ln218_1_reg_439;
    sc_signal< sc_lv<64> > or_ln_fu_382_p3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_2_i_reg_107;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<64> > sub_key_load_reg_118;
    sc_signal< sc_lv<6> > j_0_i_reg_130;
    sc_signal< sc_lv<64> > zext_ln214_fu_329_p1;
    sc_signal< sc_lv<64> > zext_ln218_fu_354_p1;
    sc_signal< sc_lv<28> > C_3_fu_62;
    sc_signal< sc_lv<28> > C_1_fu_243_p3;
    sc_signal< sc_lv<1> > empty_76_fu_219_p2;
    sc_signal< sc_lv<28> > C_2_fu_291_p3;
    sc_signal< sc_lv<28> > D_fu_66;
    sc_signal< sc_lv<28> > D_3_fu_157_p1;
    sc_signal< sc_lv<28> > D_1_fu_261_p3;
    sc_signal< sc_lv<28> > D_2_fu_311_p3;
    sc_signal< sc_lv<1> > empty_71_fu_189_p2;
    sc_signal< sc_lv<1> > empty_70_fu_183_p2;
    sc_signal< sc_lv<1> > empty_73_fu_201_p2;
    sc_signal< sc_lv<1> > empty_72_fu_195_p2;
    sc_signal< sc_lv<1> > empty_75_fu_213_p2;
    sc_signal< sc_lv<1> > empty_74_fu_207_p2;
    sc_signal< sc_lv<26> > trunc_ln203_fu_225_p1;
    sc_signal< sc_lv<2> > tmp_s_fu_233_p4;
    sc_signal< sc_lv<26> > trunc_ln204_fu_229_p1;
    sc_signal< sc_lv<2> > tmp_2_fu_251_p4;
    sc_signal< sc_lv<27> > trunc_ln197_fu_287_p1;
    sc_signal< sc_lv<1> > tmp_fu_279_p3;
    sc_signal< sc_lv<27> > trunc_ln198_fu_307_p1;
    sc_signal< sc_lv<1> > tmp_1_fu_299_p3;
    sc_signal< sc_lv<6> > sub_ln218_fu_363_p2;
    sc_signal< sc_lv<56> > zext_ln218_1_fu_369_p1;
    sc_signal< sc_lv<56> > lshr_ln218_fu_373_p2;
    sc_signal< sc_lv<1> > trunc_ln218_fu_378_p1;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_38;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_C_1_fu_243_p3();
    void thread_C_2_fu_291_p3();
    void thread_D_1_fu_261_p3();
    void thread_D_2_fu_311_p3();
    void thread_D_3_fu_157_p1();
    void thread_PC2_address0();
    void thread_PC2_ce0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_empty_70_fu_183_p2();
    void thread_empty_71_fu_189_p2();
    void thread_empty_72_fu_195_p2();
    void thread_empty_73_fu_201_p2();
    void thread_empty_74_fu_207_p2();
    void thread_empty_75_fu_213_p2();
    void thread_empty_76_fu_219_p2();
    void thread_i_fu_177_p2();
    void thread_icmp_ln192_fu_171_p2();
    void thread_icmp_ln216_fu_342_p2();
    void thread_j_fu_348_p2();
    void thread_lshr_ln218_fu_373_p2();
    void thread_or_ln_fu_382_p3();
    void thread_sub_key_address0();
    void thread_sub_key_ce0();
    void thread_sub_key_d0();
    void thread_sub_key_we0();
    void thread_sub_ln218_fu_363_p2();
    void thread_tmp_1_fu_299_p3();
    void thread_tmp_2_fu_251_p4();
    void thread_tmp_8_fu_334_p3();
    void thread_tmp_fu_279_p3();
    void thread_tmp_s_fu_233_p4();
    void thread_trunc_ln197_fu_287_p1();
    void thread_trunc_ln198_fu_307_p1();
    void thread_trunc_ln203_fu_225_p1();
    void thread_trunc_ln204_fu_229_p1();
    void thread_trunc_ln218_1_fu_359_p1();
    void thread_trunc_ln218_fu_378_p1();
    void thread_zext_ln214_fu_329_p1();
    void thread_zext_ln218_1_fu_369_p1();
    void thread_zext_ln218_fu_354_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif