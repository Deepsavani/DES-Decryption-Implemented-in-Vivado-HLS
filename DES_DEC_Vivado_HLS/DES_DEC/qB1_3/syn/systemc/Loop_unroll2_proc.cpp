// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_unroll2_proc.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_unroll2_proc::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_unroll2_proc::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Loop_unroll2_proc::ap_ST_fsm_state1 = "1";
const sc_lv<3> Loop_unroll2_proc::ap_ST_fsm_state2 = "10";
const sc_lv<3> Loop_unroll2_proc::ap_ST_fsm_state3 = "100";
const sc_lv<32> Loop_unroll2_proc::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> Loop_unroll2_proc::ap_const_lv32_1 = "1";
const sc_lv<1> Loop_unroll2_proc::ap_const_lv1_0 = "0";
const sc_lv<32> Loop_unroll2_proc::ap_const_lv32_2 = "10";
const sc_lv<64> Loop_unroll2_proc::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<6> Loop_unroll2_proc::ap_const_lv6_0 = "000000";
const sc_lv<6> Loop_unroll2_proc::ap_const_lv6_38 = "111000";
const sc_lv<6> Loop_unroll2_proc::ap_const_lv6_1 = "1";
const sc_lv<7> Loop_unroll2_proc::ap_const_lv7_40 = "1000000";
const sc_lv<1> Loop_unroll2_proc::ap_const_lv1_1 = "1";
const bool Loop_unroll2_proc::ap_const_boolean_1 = true;

Loop_unroll2_proc::Loop_unroll2_proc(sc_module_name name) : sc_module(name), mVcdFile(0) {
    PC1_U = new Loop_unroll2_proccud("PC1_U");
    PC1_U->clk(ap_clk);
    PC1_U->reset(ap_rst);
    PC1_U->address0(PC1_address0);
    PC1_U->ce0(PC1_ce0);
    PC1_U->q0(PC1_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_PC1_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln184_fu_103_p1 );

    SC_METHOD(thread_PC1_ce0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( key_empty_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln182_fu_91_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln182_fu_91_p2 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln182_fu_91_p2 );
    sensitive << ( permuted_choice_1_0_s_reg_69 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln182_fu_91_p2 );
    sensitive << ( trunc_ln182_fu_112_p1 );

    SC_METHOD(thread_i_fu_97_p2);
    sensitive << ( i_1_i_reg_80 );

    SC_METHOD(thread_icmp_ln182_fu_91_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_1_i_reg_80 );

    SC_METHOD(thread_key_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( key_empty_n );

    SC_METHOD(thread_key_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( key_empty_n );

    SC_METHOD(thread_lshr_ln184_fu_142_p2);
    sensitive << ( key_read_reg_158 );
    sensitive << ( zext_ln184_2_fu_138_p1 );

    SC_METHOD(thread_permuted_choice_1_fu_151_p3);
    sensitive << ( trunc_ln184_1_reg_176 );
    sensitive << ( trunc_ln184_fu_147_p1 );

    SC_METHOD(thread_sub_ln184_fu_132_p2);
    sensitive << ( zext_ln184_1_fu_128_p1 );

    SC_METHOD(thread_trunc_ln182_fu_112_p1);
    sensitive << ( permuted_choice_1_0_s_reg_69 );

    SC_METHOD(thread_trunc_ln184_1_fu_108_p1);
    sensitive << ( permuted_choice_1_0_s_reg_69 );

    SC_METHOD(thread_trunc_ln184_fu_147_p1);
    sensitive << ( lshr_ln184_fu_142_p2 );

    SC_METHOD(thread_zext_ln184_1_fu_128_p1);
    sensitive << ( PC1_q0 );

    SC_METHOD(thread_zext_ln184_2_fu_138_p1);
    sensitive << ( sub_ln184_fu_132_p2 );

    SC_METHOD(thread_zext_ln184_fu_103_p1);
    sensitive << ( i_1_i_reg_80 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( key_empty_n );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln182_fu_91_p2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_unroll2_proc_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, key_dout, "(port)key_dout");
    sc_trace(mVcdFile, key_empty_n, "(port)key_empty_n");
    sc_trace(mVcdFile, key_read, "(port)key_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, PC1_address0, "PC1_address0");
    sc_trace(mVcdFile, PC1_ce0, "PC1_ce0");
    sc_trace(mVcdFile, PC1_q0, "PC1_q0");
    sc_trace(mVcdFile, key_blk_n, "key_blk_n");
    sc_trace(mVcdFile, key_read_reg_158, "key_read_reg_158");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, i_fu_97_p2, "i_fu_97_p2");
    sc_trace(mVcdFile, i_reg_166, "i_reg_166");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, icmp_ln182_fu_91_p2, "icmp_ln182_fu_91_p2");
    sc_trace(mVcdFile, trunc_ln184_1_fu_108_p1, "trunc_ln184_1_fu_108_p1");
    sc_trace(mVcdFile, trunc_ln184_1_reg_176, "trunc_ln184_1_reg_176");
    sc_trace(mVcdFile, permuted_choice_1_fu_151_p3, "permuted_choice_1_fu_151_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, permuted_choice_1_0_s_reg_69, "permuted_choice_1_0_s_reg_69");
    sc_trace(mVcdFile, i_1_i_reg_80, "i_1_i_reg_80");
    sc_trace(mVcdFile, zext_ln184_fu_103_p1, "zext_ln184_fu_103_p1");
    sc_trace(mVcdFile, trunc_ln182_fu_112_p1, "trunc_ln182_fu_112_p1");
    sc_trace(mVcdFile, zext_ln184_1_fu_128_p1, "zext_ln184_1_fu_128_p1");
    sc_trace(mVcdFile, sub_ln184_fu_132_p2, "sub_ln184_fu_132_p2");
    sc_trace(mVcdFile, zext_ln184_2_fu_138_p1, "zext_ln184_2_fu_138_p1");
    sc_trace(mVcdFile, lshr_ln184_fu_142_p2, "lshr_ln184_fu_142_p2");
    sc_trace(mVcdFile, trunc_ln184_fu_147_p1, "trunc_ln184_fu_147_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

Loop_unroll2_proc::~Loop_unroll2_proc() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete PC1_U;
}

void Loop_unroll2_proc::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln182_fu_91_p2.read(), ap_const_lv1_1))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_1_i_reg_80 = i_reg_166.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read())))) {
        i_1_i_reg_80 = ap_const_lv6_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        permuted_choice_1_0_s_reg_69 = permuted_choice_1_fu_151_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read())))) {
        permuted_choice_1_0_s_reg_69 = ap_const_lv64_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_reg_166 = i_fu_97_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read())))) {
        key_read_reg_158 = key_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln182_fu_91_p2.read(), ap_const_lv1_0))) {
        trunc_ln184_1_reg_176 = trunc_ln184_1_fu_108_p1.read();
    }
}

void Loop_unroll2_proc::thread_PC1_address0() {
    PC1_address0 =  (sc_lv<6>) (zext_ln184_fu_103_p1.read());
}

void Loop_unroll2_proc::thread_PC1_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        PC1_ce0 = ap_const_logic_1;
    } else {
        PC1_ce0 = ap_const_logic_0;
    }
}

void Loop_unroll2_proc::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_unroll2_proc::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void Loop_unroll2_proc::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void Loop_unroll2_proc::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read()));
}

void Loop_unroll2_proc::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln182_fu_91_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_unroll2_proc::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_unroll2_proc::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln182_fu_91_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Loop_unroll2_proc::thread_ap_return_0() {
    ap_return_0 = permuted_choice_1_0_s_reg_69.read();
}

void Loop_unroll2_proc::thread_ap_return_1() {
    ap_return_1 = trunc_ln182_fu_112_p1.read();
}

void Loop_unroll2_proc::thread_i_fu_97_p2() {
    i_fu_97_p2 = (!i_1_i_reg_80.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_1_i_reg_80.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void Loop_unroll2_proc::thread_icmp_ln182_fu_91_p2() {
    icmp_ln182_fu_91_p2 = (!i_1_i_reg_80.read().is_01() || !ap_const_lv6_38.is_01())? sc_lv<1>(): sc_lv<1>(i_1_i_reg_80.read() == ap_const_lv6_38);
}

void Loop_unroll2_proc::thread_key_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        key_blk_n = key_empty_n.read();
    } else {
        key_blk_n = ap_const_logic_1;
    }
}

void Loop_unroll2_proc::thread_key_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read())))) {
        key_read = ap_const_logic_1;
    } else {
        key_read = ap_const_logic_0;
    }
}

void Loop_unroll2_proc::thread_lshr_ln184_fu_142_p2() {
    lshr_ln184_fu_142_p2 = (!zext_ln184_2_fu_138_p1.read().is_01())? sc_lv<64>(): key_read_reg_158.read() >> (unsigned short)zext_ln184_2_fu_138_p1.read().to_uint();
}

void Loop_unroll2_proc::thread_permuted_choice_1_fu_151_p3() {
    permuted_choice_1_fu_151_p3 = esl_concat<63,1>(trunc_ln184_1_reg_176.read(), trunc_ln184_fu_147_p1.read());
}

void Loop_unroll2_proc::thread_sub_ln184_fu_132_p2() {
    sub_ln184_fu_132_p2 = (!ap_const_lv7_40.is_01() || !zext_ln184_1_fu_128_p1.read().is_01())? sc_lv<7>(): (sc_bigint<7>(ap_const_lv7_40) - sc_biguint<7>(zext_ln184_1_fu_128_p1.read()));
}

void Loop_unroll2_proc::thread_trunc_ln182_fu_112_p1() {
    trunc_ln182_fu_112_p1 = permuted_choice_1_0_s_reg_69.read().range(60-1, 0);
}

void Loop_unroll2_proc::thread_trunc_ln184_1_fu_108_p1() {
    trunc_ln184_1_fu_108_p1 = permuted_choice_1_0_s_reg_69.read().range(63-1, 0);
}

void Loop_unroll2_proc::thread_trunc_ln184_fu_147_p1() {
    trunc_ln184_fu_147_p1 = lshr_ln184_fu_142_p2.read().range(1-1, 0);
}

void Loop_unroll2_proc::thread_zext_ln184_1_fu_128_p1() {
    zext_ln184_1_fu_128_p1 = esl_zext<7,6>(PC1_q0.read());
}

void Loop_unroll2_proc::thread_zext_ln184_2_fu_138_p1() {
    zext_ln184_2_fu_138_p1 = esl_zext<64,7>(sub_ln184_fu_132_p2.read());
}

void Loop_unroll2_proc::thread_zext_ln184_fu_103_p1() {
    zext_ln184_fu_103_p1 = esl_zext<64,6>(i_1_i_reg_80.read());
}

void Loop_unroll2_proc::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, key_empty_n.read())))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln182_fu_91_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

