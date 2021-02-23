// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _des_dec_HH_
#define _des_dec_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "des_dec_mux_164_6bkb.h"
#include "des_dec_IP.h"
#include "des_dec_PC1.h"
#include "des_dec_PC2.h"
#include "des_dec_E.h"
#include "des_dec_S.h"
#include "des_dec_P.h"
#include "des_dec_PI.h"

namespace ap_rtl {

struct des_dec : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > input_r;
    sc_in< sc_lv<64> > key;
    sc_out< sc_lv<64> > ap_return;
    sc_signal< sc_lv<64> > ap_var_for_const0;


    // Module declarations
    des_dec(sc_module_name name);
    SC_HAS_PROCESS(des_dec);

    ~des_dec();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    des_dec_IP* IP_U;
    des_dec_PC1* PC1_U;
    des_dec_PC2* PC2_U;
    des_dec_E* E_U;
    des_dec_S* S_U;
    des_dec_P* P_U;
    des_dec_PI* PI_U;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U1;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U2;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U3;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U4;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U5;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U6;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U7;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U8;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U9;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U10;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U11;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U12;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U13;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U14;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U15;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U16;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U17;
    des_dec_mux_164_6bkb<1,1,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,4,64>* des_dec_mux_164_6bkb_U18;
    sc_signal< sc_lv<22> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > IP_address0;
    sc_signal< sc_logic > IP_ce0;
    sc_signal< sc_lv<7> > IP_q0;
    sc_signal< sc_lv<6> > PC1_address0;
    sc_signal< sc_logic > PC1_ce0;
    sc_signal< sc_lv<6> > PC1_q0;
    sc_signal< sc_lv<6> > PC2_address0;
    sc_signal< sc_logic > PC2_ce0;
    sc_signal< sc_lv<6> > PC2_q0;
    sc_signal< sc_lv<6> > E_address0;
    sc_signal< sc_logic > E_ce0;
    sc_signal< sc_lv<6> > E_q0;
    sc_signal< sc_lv<9> > S_address0;
    sc_signal< sc_logic > S_ce0;
    sc_signal< sc_lv<4> > S_q0;
    sc_signal< sc_lv<5> > P_address0;
    sc_signal< sc_logic > P_ce0;
    sc_signal< sc_lv<6> > P_q0;
    sc_signal< sc_lv<6> > PI_address0;
    sc_signal< sc_logic > PI_ce0;
    sc_signal< sc_lv<7> > PI_q0;
    sc_signal< sc_lv<7> > i_fu_613_p2;
    sc_signal< sc_lv<7> > i_reg_2231;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln171_fu_607_p2;
    sc_signal< sc_lv<63> > trunc_ln174_1_fu_624_p1;
    sc_signal< sc_lv<63> > trunc_ln174_1_reg_2241;
    sc_signal< sc_lv<32> > L_reg_2246;
    sc_signal< sc_lv<32> > R_fu_638_p1;
    sc_signal< sc_lv<32> > R_reg_2251;
    sc_signal< sc_lv<64> > init_perm_res_fu_661_p3;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > i_5_fu_674_p2;
    sc_signal< sc_lv<6> > i_5_reg_2264;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln182_fu_668_p2;
    sc_signal< sc_lv<63> > trunc_ln184_1_fu_685_p1;
    sc_signal< sc_lv<63> > trunc_ln184_1_reg_2274;
    sc_signal< sc_lv<64> > permuted_choice_1_fu_736_p3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_7_fu_749_p2;
    sc_signal< sc_lv<5> > i_7_reg_2415;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > trunc_ln214_fu_901_p1;
    sc_signal< sc_lv<4> > trunc_ln214_reg_2423;
    sc_signal< sc_lv<1> > icmp_ln192_fu_743_p2;
    sc_signal< sc_lv<56> > tmp_9_fu_910_p3;
    sc_signal< sc_lv<56> > tmp_9_reg_2451;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > j_fu_1596_p2;
    sc_signal< sc_lv<6> > j_reg_2459;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln216_fu_1590_p2;
    sc_signal< sc_lv<64> > sub_key_0_fu_1667_p3;
    sc_signal< sc_lv<64> > sub_key_0_reg_2469;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > i_8_fu_1745_p2;
    sc_signal< sc_lv<5> > i_8_reg_2492;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > pre_output_fu_1751_p3;
    sc_signal< sc_lv<64> > pre_output_reg_2497;
    sc_signal< sc_lv<1> > icmp_ln223_fu_1739_p2;
    sc_signal< sc_lv<6> > j_6_fu_1765_p2;
    sc_signal< sc_lv<6> > j_6_reg_2505;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > icmp_ln227_fu_1759_p2;
    sc_signal< sc_lv<63> > trunc_ln229_1_fu_1776_p1;
    sc_signal< sc_lv<63> > trunc_ln229_1_reg_2515;
    sc_signal< sc_lv<47> > xor_ln232_1_fu_1844_p2;
    sc_signal< sc_lv<47> > xor_ln232_1_reg_2520;
    sc_signal< sc_lv<48> > xor_ln232_2_fu_1850_p2;
    sc_signal< sc_lv<48> > xor_ln232_2_reg_2525;
    sc_signal< sc_lv<64> > s_input_fu_1876_p3;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<4> > j_7_fu_1889_p2;
    sc_signal< sc_lv<4> > j_7_reg_2538;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<7> > sub_ln240_fu_1925_p2;
    sc_signal< sc_lv<7> > sub_ln240_reg_2543;
    sc_signal< sc_lv<1> > icmp_ln235_fu_1883_p2;
    sc_signal< sc_lv<6> > sub_ln240_2_fu_1949_p2;
    sc_signal< sc_lv<6> > sub_ln240_2_reg_2548;
    sc_signal< sc_lv<6> > sub_ln243_1_fu_1961_p2;
    sc_signal< sc_lv<6> > sub_ln243_1_reg_2553;
    sc_signal< sc_lv<11> > add_ln246_1_fu_2090_p2;
    sc_signal< sc_lv<11> > add_ln246_1_reg_2558;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<6> > j_8_fu_2123_p2;
    sc_signal< sc_lv<6> > j_8_reg_2571;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > icmp_ln252_fu_2117_p2;
    sc_signal< sc_lv<31> > trunc_ln254_1_fu_2134_p1;
    sc_signal< sc_lv<31> > trunc_ln254_1_reg_2581;
    sc_signal< sc_lv<32> > R_1_fu_2138_p2;
    sc_signal< sc_lv<32> > f_function_res_fu_2164_p3;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<7> > i_6_fu_2177_p2;
    sc_signal< sc_lv<7> > i_6_reg_2599;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > icmp_ln267_fu_2171_p2;
    sc_signal< sc_lv<63> > trunc_ln270_1_fu_2188_p1;
    sc_signal< sc_lv<63> > trunc_ln270_1_reg_2609;
    sc_signal< sc_lv<64> > inv_init_perm_res_fu_2211_p3;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<64> > init_perm_res_0_reg_373;
    sc_signal< sc_lv<7> > i_0_reg_384;
    sc_signal< sc_lv<64> > permuted_choice_1_0_reg_395;
    sc_signal< sc_lv<6> > i_1_reg_406;
    sc_signal< sc_lv<5> > i_2_reg_417;
    sc_signal< sc_lv<6> > j_0_reg_428;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<32> > temp_reg_439;
    sc_signal< sc_lv<32> > L_0_reg_449;
    sc_signal< sc_lv<5> > i_3_reg_460;
    sc_signal< sc_lv<64> > s_input_0_reg_472;
    sc_signal< sc_lv<6> > j_1_reg_483;
    sc_signal< sc_lv<4> > j_2_reg_494;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<32> > f_function_res_0_reg_506;
    sc_signal< sc_lv<6> > j_3_reg_517;
    sc_signal< sc_lv<7> > i_4_reg_528;
    sc_signal< sc_lv<64> > inv_init_perm_res_0_reg_539;
    sc_signal< sc_lv<64> > zext_ln174_1_fu_619_p1;
    sc_signal< sc_lv<64> > zext_ln184_1_fu_680_p1;
    sc_signal< sc_lv<64> > zext_ln218_fu_1602_p1;
    sc_signal< sc_lv<64> > zext_ln229_fu_1771_p1;
    sc_signal< sc_lv<64> > sext_ln246_3_fu_2096_p1;
    sc_signal< sc_lv<64> > zext_ln254_fu_2129_p1;
    sc_signal< sc_lv<64> > zext_ln270_1_fu_2183_p1;
    sc_signal< sc_lv<28> > C_1_fu_194;
    sc_signal< sc_lv<28> > C_2_fu_811_p3;
    sc_signal< sc_lv<1> > empty_17_fu_791_p2;
    sc_signal< sc_lv<28> > C_3_fu_863_p3;
    sc_signal< sc_lv<28> > D_fu_198;
    sc_signal< sc_lv<28> > D_1_fu_699_p1;
    sc_signal< sc_lv<28> > D_2_fu_833_p3;
    sc_signal< sc_lv<28> > D_3_fu_883_p3;
    sc_signal< sc_lv<64> > sub_key_15_fu_202;
    sc_signal< sc_lv<64> > sub_key_0_21_ph_fu_918_p18;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > sub_key_15_1_fu_206;
    sc_signal< sc_lv<64> > sub_key_1_2_ph_fu_955_p18;
    sc_signal< sc_lv<64> > sub_key_15_2_fu_210;
    sc_signal< sc_lv<64> > sub_key_2_2_ph_fu_992_p18;
    sc_signal< sc_lv<64> > sub_key_15_3_fu_214;
    sc_signal< sc_lv<64> > sub_key_3_2_ph_fu_1029_p18;
    sc_signal< sc_lv<64> > sub_key_15_4_fu_218;
    sc_signal< sc_lv<64> > sub_key_4_2_ph_fu_1066_p18;
    sc_signal< sc_lv<64> > sub_key_15_5_fu_222;
    sc_signal< sc_lv<64> > sub_key_5_2_ph_fu_1103_p18;
    sc_signal< sc_lv<64> > sub_key_15_6_fu_226;
    sc_signal< sc_lv<64> > sub_key_6_2_ph_fu_1140_p18;
    sc_signal< sc_lv<64> > sub_key_15_7_fu_230;
    sc_signal< sc_lv<64> > sub_key_7_2_ph_fu_1177_p18;
    sc_signal< sc_lv<64> > sub_key_15_8_fu_234;
    sc_signal< sc_lv<64> > sub_key_8_2_ph_fu_1214_p18;
    sc_signal< sc_lv<64> > sub_key_15_9_fu_238;
    sc_signal< sc_lv<64> > sub_key_9_2_ph_fu_1251_p18;
    sc_signal< sc_lv<64> > sub_key_15_10_fu_242;
    sc_signal< sc_lv<64> > sub_key_10_2_ph_fu_1288_p18;
    sc_signal< sc_lv<64> > sub_key_15_11_fu_246;
    sc_signal< sc_lv<64> > sub_key_11_2_ph_fu_1325_p18;
    sc_signal< sc_lv<64> > sub_key_15_12_fu_250;
    sc_signal< sc_lv<64> > sub_key_12_2_ph_fu_1362_p18;
    sc_signal< sc_lv<64> > sub_key_15_13_fu_254;
    sc_signal< sc_lv<64> > sub_key_13_2_ph_fu_1399_p18;
    sc_signal< sc_lv<64> > sub_key_15_14_fu_258;
    sc_signal< sc_lv<64> > sub_key_14_2_ph_fu_1436_p18;
    sc_signal< sc_lv<64> > sub_key_15_15_fu_262;
    sc_signal< sc_lv<64> > sub_key_15_2_ph_fu_1473_p18;
    sc_signal< sc_lv<32> > s_output_1_fu_266;
    sc_signal< sc_lv<32> > s_output_fu_2104_p3;
    sc_signal< sc_lv<7> > sub_ln174_fu_642_p2;
    sc_signal< sc_lv<64> > zext_ln174_fu_648_p1;
    sc_signal< sc_lv<64> > lshr_ln174_fu_652_p2;
    sc_signal< sc_lv<1> > trunc_ln174_fu_657_p1;
    sc_signal< sc_lv<7> > zext_ln184_2_fu_713_p1;
    sc_signal< sc_lv<7> > sub_ln184_fu_717_p2;
    sc_signal< sc_lv<64> > zext_ln184_fu_723_p1;
    sc_signal< sc_lv<64> > lshr_ln184_fu_727_p2;
    sc_signal< sc_lv<1> > trunc_ln184_fu_732_p1;
    sc_signal< sc_lv<1> > empty_12_fu_761_p2;
    sc_signal< sc_lv<1> > empty_11_fu_755_p2;
    sc_signal< sc_lv<1> > empty_14_fu_773_p2;
    sc_signal< sc_lv<1> > empty_13_fu_767_p2;
    sc_signal< sc_lv<1> > empty_16_fu_785_p2;
    sc_signal< sc_lv<1> > empty_15_fu_779_p2;
    sc_signal< sc_lv<26> > trunc_ln203_fu_797_p1;
    sc_signal< sc_lv<2> > tmp_3_fu_801_p4;
    sc_signal< sc_lv<26> > trunc_ln204_fu_819_p1;
    sc_signal< sc_lv<2> > tmp_s_fu_823_p4;
    sc_signal< sc_lv<27> > trunc_ln197_fu_859_p1;
    sc_signal< sc_lv<1> > tmp_2_fu_851_p3;
    sc_signal< sc_lv<27> > trunc_ln198_fu_879_p1;
    sc_signal< sc_lv<1> > tmp_4_fu_871_p3;
    sc_signal< sc_lv<6> > sub_ln218_fu_1644_p2;
    sc_signal< sc_lv<56> > zext_ln218_1_fu_1650_p1;
    sc_signal< sc_lv<56> > lshr_ln218_fu_1654_p2;
    sc_signal< sc_lv<64> > tmp_6_fu_1607_p18;
    sc_signal< sc_lv<63> > trunc_ln218_1_fu_1663_p1;
    sc_signal< sc_lv<1> > trunc_ln218_fu_1659_p1;
    sc_signal< sc_lv<4> > trunc_ln232_fu_1780_p1;
    sc_signal< sc_lv<4> > tmp_5_fu_1790_p17;
    sc_signal< sc_lv<64> > tmp_5_fu_1790_p18;
    sc_signal< sc_lv<47> > trunc_ln232_4_fu_1840_p1;
    sc_signal< sc_lv<47> > trunc_ln232_3_fu_1836_p1;
    sc_signal< sc_lv<48> > trunc_ln232_2_fu_1832_p1;
    sc_signal< sc_lv<48> > trunc_ln232_1_fu_1828_p1;
    sc_signal< sc_lv<6> > sub_ln229_fu_1856_p2;
    sc_signal< sc_lv<32> > zext_ln229_1_fu_1862_p1;
    sc_signal< sc_lv<32> > lshr_ln229_fu_1866_p2;
    sc_signal< sc_lv<1> > trunc_ln229_fu_1872_p1;
    sc_signal< sc_lv<3> > trunc_ln240_fu_1895_p1;
    sc_signal< sc_lv<6> > shl_ln_fu_1899_p3;
    sc_signal< sc_lv<4> > shl_ln240_fu_1911_p2;
    sc_signal< sc_lv<7> > zext_ln240_fu_1907_p1;
    sc_signal< sc_lv<7> > zext_ln240_2_fu_1921_p1;
    sc_signal< sc_lv<5> > shl_ln240_1_fu_1931_p3;
    sc_signal< sc_lv<6> > zext_ln240_1_fu_1917_p1;
    sc_signal< sc_lv<6> > sub_ln240_1_fu_1943_p2;
    sc_signal< sc_lv<6> > zext_ln240_5_fu_1939_p1;
    sc_signal< sc_lv<6> > sub_ln243_fu_1955_p2;
    sc_signal< sc_lv<32> > sext_ln240_fu_1967_p1;
    sc_signal< sc_lv<48> > zext_ln240_4_fu_1974_p1;
    sc_signal< sc_lv<48> > lshr_ln240_fu_1978_p2;
    sc_signal< sc_lv<48> > and_ln240_fu_1984_p2;
    sc_signal< sc_lv<48> > zext_ln240_6_fu_1989_p1;
    sc_signal< sc_lv<48> > lshr_ln240_1_fu_1992_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_2002_p3;
    sc_signal< sc_lv<1> > trunc_ln240_1_fu_1998_p1;
    sc_signal< sc_lv<47> > zext_ln240_3_fu_1970_p1;
    sc_signal< sc_lv<47> > lshr_ln243_fu_2026_p2;
    sc_signal< sc_lv<47> > and_ln243_fu_2032_p2;
    sc_signal< sc_lv<47> > zext_ln243_fu_2037_p1;
    sc_signal< sc_lv<3> > tmp_8_fu_2016_p4;
    sc_signal< sc_lv<1> > or_ln241_fu_2010_p2;
    sc_signal< sc_lv<8> > tmp_10_fu_2046_p4;
    sc_signal< sc_lv<47> > lshr_ln243_1_fu_2040_p2;
    sc_signal< sc_lv<8> > trunc_ln246_fu_2060_p1;
    sc_signal< sc_lv<9> > sext_ln246_1_fu_2064_p1;
    sc_signal< sc_lv<9> > sext_ln246_fu_2056_p1;
    sc_signal< sc_lv<9> > add_ln246_fu_2068_p2;
    sc_signal< sc_lv<10> > tmp_11_fu_2078_p3;
    sc_signal< sc_lv<11> > sext_ln246_2_fu_2074_p1;
    sc_signal< sc_lv<11> > zext_ln246_fu_2086_p1;
    sc_signal< sc_lv<28> > trunc_ln246_1_fu_2100_p1;
    sc_signal< sc_lv<6> > sub_ln254_fu_2144_p2;
    sc_signal< sc_lv<32> > zext_ln254_1_fu_2150_p1;
    sc_signal< sc_lv<32> > lshr_ln254_fu_2154_p2;
    sc_signal< sc_lv<1> > trunc_ln254_fu_2160_p1;
    sc_signal< sc_lv<7> > sub_ln270_fu_2192_p2;
    sc_signal< sc_lv<64> > zext_ln270_fu_2198_p1;
    sc_signal< sc_lv<64> > lshr_ln270_fu_2202_p2;
    sc_signal< sc_lv<1> > trunc_ln270_fu_2207_p1;
    sc_signal< sc_lv<22> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<22> ap_ST_fsm_state1;
    static const sc_lv<22> ap_ST_fsm_state2;
    static const sc_lv<22> ap_ST_fsm_state3;
    static const sc_lv<22> ap_ST_fsm_state4;
    static const sc_lv<22> ap_ST_fsm_state5;
    static const sc_lv<22> ap_ST_fsm_state6;
    static const sc_lv<22> ap_ST_fsm_state7;
    static const sc_lv<22> ap_ST_fsm_state8;
    static const sc_lv<22> ap_ST_fsm_state9;
    static const sc_lv<22> ap_ST_fsm_state10;
    static const sc_lv<22> ap_ST_fsm_state11;
    static const sc_lv<22> ap_ST_fsm_state12;
    static const sc_lv<22> ap_ST_fsm_state13;
    static const sc_lv<22> ap_ST_fsm_state14;
    static const sc_lv<22> ap_ST_fsm_state15;
    static const sc_lv<22> ap_ST_fsm_state16;
    static const sc_lv<22> ap_ST_fsm_state17;
    static const sc_lv<22> ap_ST_fsm_state18;
    static const sc_lv<22> ap_ST_fsm_state19;
    static const sc_lv<22> ap_ST_fsm_state20;
    static const sc_lv<22> ap_ST_fsm_state21;
    static const sc_lv<22> ap_ST_fsm_state22;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_B;
    static const sc_lv<4> ap_const_lv4_C;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<6> ap_const_lv6_38;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_37;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<5> ap_const_lv5_8;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<6> ap_const_lv6_30;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<6> ap_const_lv6_2A;
    static const sc_lv<6> ap_const_lv6_2B;
    static const sc_lv<48> ap_const_lv48_840000000000;
    static const sc_lv<47> ap_const_lv47_780000000000;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_C_2_fu_811_p3();
    void thread_C_3_fu_863_p3();
    void thread_D_1_fu_699_p1();
    void thread_D_2_fu_833_p3();
    void thread_D_3_fu_883_p3();
    void thread_E_address0();
    void thread_E_ce0();
    void thread_IP_address0();
    void thread_IP_ce0();
    void thread_PC1_address0();
    void thread_PC1_ce0();
    void thread_PC2_address0();
    void thread_PC2_ce0();
    void thread_PI_address0();
    void thread_PI_ce0();
    void thread_P_address0();
    void thread_P_ce0();
    void thread_R_1_fu_2138_p2();
    void thread_R_fu_638_p1();
    void thread_S_address0();
    void thread_S_ce0();
    void thread_add_ln246_1_fu_2090_p2();
    void thread_add_ln246_fu_2068_p2();
    void thread_and_ln240_fu_1984_p2();
    void thread_and_ln243_fu_2032_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_empty_11_fu_755_p2();
    void thread_empty_12_fu_761_p2();
    void thread_empty_13_fu_767_p2();
    void thread_empty_14_fu_773_p2();
    void thread_empty_15_fu_779_p2();
    void thread_empty_16_fu_785_p2();
    void thread_empty_17_fu_791_p2();
    void thread_f_function_res_fu_2164_p3();
    void thread_i_5_fu_674_p2();
    void thread_i_6_fu_2177_p2();
    void thread_i_7_fu_749_p2();
    void thread_i_8_fu_1745_p2();
    void thread_i_fu_613_p2();
    void thread_icmp_ln171_fu_607_p2();
    void thread_icmp_ln182_fu_668_p2();
    void thread_icmp_ln192_fu_743_p2();
    void thread_icmp_ln216_fu_1590_p2();
    void thread_icmp_ln223_fu_1739_p2();
    void thread_icmp_ln227_fu_1759_p2();
    void thread_icmp_ln235_fu_1883_p2();
    void thread_icmp_ln252_fu_2117_p2();
    void thread_icmp_ln267_fu_2171_p2();
    void thread_init_perm_res_fu_661_p3();
    void thread_inv_init_perm_res_fu_2211_p3();
    void thread_j_6_fu_1765_p2();
    void thread_j_7_fu_1889_p2();
    void thread_j_8_fu_2123_p2();
    void thread_j_fu_1596_p2();
    void thread_lshr_ln174_fu_652_p2();
    void thread_lshr_ln184_fu_727_p2();
    void thread_lshr_ln218_fu_1654_p2();
    void thread_lshr_ln229_fu_1866_p2();
    void thread_lshr_ln240_1_fu_1992_p2();
    void thread_lshr_ln240_fu_1978_p2();
    void thread_lshr_ln243_1_fu_2040_p2();
    void thread_lshr_ln243_fu_2026_p2();
    void thread_lshr_ln254_fu_2154_p2();
    void thread_lshr_ln270_fu_2202_p2();
    void thread_or_ln241_fu_2010_p2();
    void thread_permuted_choice_1_fu_736_p3();
    void thread_pre_output_fu_1751_p3();
    void thread_s_input_fu_1876_p3();
    void thread_s_output_fu_2104_p3();
    void thread_sext_ln240_fu_1967_p1();
    void thread_sext_ln246_1_fu_2064_p1();
    void thread_sext_ln246_2_fu_2074_p1();
    void thread_sext_ln246_3_fu_2096_p1();
    void thread_sext_ln246_fu_2056_p1();
    void thread_shl_ln240_1_fu_1931_p3();
    void thread_shl_ln240_fu_1911_p2();
    void thread_shl_ln_fu_1899_p3();
    void thread_sub_key_0_fu_1667_p3();
    void thread_sub_ln174_fu_642_p2();
    void thread_sub_ln184_fu_717_p2();
    void thread_sub_ln218_fu_1644_p2();
    void thread_sub_ln229_fu_1856_p2();
    void thread_sub_ln240_1_fu_1943_p2();
    void thread_sub_ln240_2_fu_1949_p2();
    void thread_sub_ln240_fu_1925_p2();
    void thread_sub_ln243_1_fu_1961_p2();
    void thread_sub_ln243_fu_1955_p2();
    void thread_sub_ln254_fu_2144_p2();
    void thread_sub_ln270_fu_2192_p2();
    void thread_tmp_10_fu_2046_p4();
    void thread_tmp_11_fu_2078_p3();
    void thread_tmp_2_fu_851_p3();
    void thread_tmp_3_fu_801_p4();
    void thread_tmp_4_fu_871_p3();
    void thread_tmp_5_fu_1790_p17();
    void thread_tmp_7_fu_2002_p3();
    void thread_tmp_8_fu_2016_p4();
    void thread_tmp_9_fu_910_p3();
    void thread_tmp_s_fu_823_p4();
    void thread_trunc_ln174_1_fu_624_p1();
    void thread_trunc_ln174_fu_657_p1();
    void thread_trunc_ln184_1_fu_685_p1();
    void thread_trunc_ln184_fu_732_p1();
    void thread_trunc_ln197_fu_859_p1();
    void thread_trunc_ln198_fu_879_p1();
    void thread_trunc_ln203_fu_797_p1();
    void thread_trunc_ln204_fu_819_p1();
    void thread_trunc_ln214_fu_901_p1();
    void thread_trunc_ln218_1_fu_1663_p1();
    void thread_trunc_ln218_fu_1659_p1();
    void thread_trunc_ln229_1_fu_1776_p1();
    void thread_trunc_ln229_fu_1872_p1();
    void thread_trunc_ln232_1_fu_1828_p1();
    void thread_trunc_ln232_2_fu_1832_p1();
    void thread_trunc_ln232_3_fu_1836_p1();
    void thread_trunc_ln232_4_fu_1840_p1();
    void thread_trunc_ln232_fu_1780_p1();
    void thread_trunc_ln240_1_fu_1998_p1();
    void thread_trunc_ln240_fu_1895_p1();
    void thread_trunc_ln246_1_fu_2100_p1();
    void thread_trunc_ln246_fu_2060_p1();
    void thread_trunc_ln254_1_fu_2134_p1();
    void thread_trunc_ln254_fu_2160_p1();
    void thread_trunc_ln270_1_fu_2188_p1();
    void thread_trunc_ln270_fu_2207_p1();
    void thread_xor_ln232_1_fu_1844_p2();
    void thread_xor_ln232_2_fu_1850_p2();
    void thread_zext_ln174_1_fu_619_p1();
    void thread_zext_ln174_fu_648_p1();
    void thread_zext_ln184_1_fu_680_p1();
    void thread_zext_ln184_2_fu_713_p1();
    void thread_zext_ln184_fu_723_p1();
    void thread_zext_ln218_1_fu_1650_p1();
    void thread_zext_ln218_fu_1602_p1();
    void thread_zext_ln229_1_fu_1862_p1();
    void thread_zext_ln229_fu_1771_p1();
    void thread_zext_ln240_1_fu_1917_p1();
    void thread_zext_ln240_2_fu_1921_p1();
    void thread_zext_ln240_3_fu_1970_p1();
    void thread_zext_ln240_4_fu_1974_p1();
    void thread_zext_ln240_5_fu_1939_p1();
    void thread_zext_ln240_6_fu_1989_p1();
    void thread_zext_ln240_fu_1907_p1();
    void thread_zext_ln243_fu_2037_p1();
    void thread_zext_ln246_fu_2086_p1();
    void thread_zext_ln254_1_fu_2150_p1();
    void thread_zext_ln254_fu_2129_p1();
    void thread_zext_ln270_1_fu_2183_p1();
    void thread_zext_ln270_fu_2198_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
