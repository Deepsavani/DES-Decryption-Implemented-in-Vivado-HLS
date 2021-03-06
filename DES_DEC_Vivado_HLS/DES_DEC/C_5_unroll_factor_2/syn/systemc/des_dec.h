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

#include "des_dec_IP.h"
#include "des_dec_PC1.h"
#include "des_dec_PC2.h"
#include "des_dec_E.h"
#include "des_dec_S.h"
#include "des_dec_P.h"
#include "des_dec_PI.h"
#include "des_dec_sub_key.h"

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
    des_dec_sub_key* sub_key_U;
    sc_signal< sc_lv<21> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > IP_address0;
    sc_signal< sc_logic > IP_ce0;
    sc_signal< sc_lv<7> > IP_q0;
    sc_signal< sc_lv<6> > IP_address1;
    sc_signal< sc_logic > IP_ce1;
    sc_signal< sc_lv<7> > IP_q1;
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
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln171_fu_520_p2;
    sc_signal< sc_lv<62> > trunc_ln173_fu_541_p1;
    sc_signal< sc_lv<62> > trunc_ln173_reg_1377;
    sc_signal< sc_lv<7> > add_ln171_fu_550_p2;
    sc_signal< sc_lv<7> > add_ln171_reg_1387;
    sc_signal< sc_lv<32> > L_reg_1392;
    sc_signal< sc_lv<32> > R_fu_566_p1;
    sc_signal< sc_lv<32> > R_reg_1397;
    sc_signal< sc_lv<64> > or_ln_fu_608_p4;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<6> > i_fu_623_p2;
    sc_signal< sc_lv<6> > i_reg_1410;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln182_fu_617_p2;
    sc_signal< sc_lv<63> > trunc_ln184_1_fu_634_p1;
    sc_signal< sc_lv<63> > trunc_ln184_1_reg_1420;
    sc_signal< sc_lv<64> > permuted_choice_1_fu_685_p3;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_6_fu_698_p2;
    sc_signal< sc_lv<5> > i_6_reg_1449;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > sub_key_addr_reg_1457;
    sc_signal< sc_lv<1> > icmp_ln192_fu_692_p2;
    sc_signal< sc_lv<56> > tmp_9_fu_860_p3;
    sc_signal< sc_lv<56> > tmp_9_reg_1469;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > j_4_fu_874_p2;
    sc_signal< sc_lv<6> > j_4_reg_1477;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln216_fu_868_p2;
    sc_signal< sc_lv<63> > trunc_ln218_1_fu_885_p1;
    sc_signal< sc_lv<63> > trunc_ln218_1_reg_1487;
    sc_signal< sc_lv<64> > or_ln1_fu_908_p3;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > i_7_fu_921_p2;
    sc_signal< sc_lv<5> > i_7_reg_1500;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<64> > pre_output_fu_927_p3;
    sc_signal< sc_lv<64> > pre_output_reg_1505;
    sc_signal< sc_lv<1> > icmp_ln223_fu_915_p2;
    sc_signal< sc_lv<6> > j_fu_941_p2;
    sc_signal< sc_lv<6> > j_reg_1513;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln227_fu_935_p2;
    sc_signal< sc_lv<64> > s_input_fu_987_p3;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<47> > xor_ln232_fu_1011_p2;
    sc_signal< sc_lv<47> > xor_ln232_reg_1533;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<48> > xor_ln232_1_fu_1017_p2;
    sc_signal< sc_lv<48> > xor_ln232_1_reg_1538;
    sc_signal< sc_lv<4> > j_5_fu_1029_p2;
    sc_signal< sc_lv<4> > j_5_reg_1546;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<7> > sub_ln240_fu_1065_p2;
    sc_signal< sc_lv<7> > sub_ln240_reg_1551;
    sc_signal< sc_lv<1> > icmp_ln235_fu_1023_p2;
    sc_signal< sc_lv<6> > sub_ln240_2_fu_1089_p2;
    sc_signal< sc_lv<6> > sub_ln240_2_reg_1556;
    sc_signal< sc_lv<6> > sub_ln243_1_fu_1101_p2;
    sc_signal< sc_lv<6> > sub_ln243_1_reg_1561;
    sc_signal< sc_lv<11> > add_ln246_1_fu_1230_p2;
    sc_signal< sc_lv<11> > add_ln246_1_reg_1566;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<6> > j_6_fu_1263_p2;
    sc_signal< sc_lv<6> > j_6_reg_1579;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > icmp_ln252_fu_1257_p2;
    sc_signal< sc_lv<31> > trunc_ln254_1_fu_1274_p1;
    sc_signal< sc_lv<31> > trunc_ln254_1_reg_1589;
    sc_signal< sc_lv<32> > R_1_fu_1278_p2;
    sc_signal< sc_lv<32> > f_function_res_fu_1304_p3;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<7> > i_5_fu_1317_p2;
    sc_signal< sc_lv<7> > i_5_reg_1607;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<1> > icmp_ln267_fu_1311_p2;
    sc_signal< sc_lv<63> > trunc_ln270_1_fu_1328_p1;
    sc_signal< sc_lv<63> > trunc_ln270_1_reg_1617;
    sc_signal< sc_lv<64> > inv_init_perm_res_fu_1351_p3;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<4> > sub_key_address0;
    sc_signal< sc_logic > sub_key_ce0;
    sc_signal< sc_logic > sub_key_we0;
    sc_signal< sc_lv<64> > sub_key_q0;
    sc_signal< sc_lv<64> > init_perm_res_0_0_reg_321;
    sc_signal< sc_lv<7> > i_0_0_reg_332;
    sc_signal< sc_lv<64> > permuted_choice_1_0_reg_343;
    sc_signal< sc_lv<6> > i_1_reg_354;
    sc_signal< sc_lv<5> > i_2_reg_365;
    sc_signal< sc_lv<64> > sub_key_load_1_reg_376;
    sc_signal< sc_lv<6> > j_0_reg_388;
    sc_signal< sc_lv<32> > temp_reg_399;
    sc_signal< sc_lv<32> > L_0_reg_409;
    sc_signal< sc_lv<5> > i_3_reg_420;
    sc_signal< sc_lv<64> > s_input_0_reg_432;
    sc_signal< sc_lv<6> > j_1_reg_444;
    sc_signal< sc_lv<4> > j_2_reg_455;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > f_function_res_0_reg_467;
    sc_signal< sc_lv<6> > j_3_reg_478;
    sc_signal< sc_lv<7> > i_4_reg_489;
    sc_signal< sc_lv<64> > inv_init_perm_res_0_reg_500;
    sc_signal< sc_lv<64> > zext_ln174_fu_526_p1;
    sc_signal< sc_lv<64> > zext_ln174_3_fu_545_p1;
    sc_signal< sc_lv<64> > zext_ln184_1_fu_629_p1;
    sc_signal< sc_lv<64> > zext_ln214_fu_850_p1;
    sc_signal< sc_lv<64> > zext_ln218_fu_880_p1;
    sc_signal< sc_lv<64> > zext_ln229_fu_947_p1;
    sc_signal< sc_lv<64> > zext_ln232_fu_958_p1;
    sc_signal< sc_lv<64> > sext_ln246_3_fu_1236_p1;
    sc_signal< sc_lv<64> > zext_ln254_fu_1269_p1;
    sc_signal< sc_lv<64> > zext_ln270_1_fu_1323_p1;
    sc_signal< sc_lv<28> > C_1_fu_176;
    sc_signal< sc_lv<28> > C_2_fu_760_p3;
    sc_signal< sc_lv<1> > empty_18_fu_740_p2;
    sc_signal< sc_lv<28> > C_3_fu_812_p3;
    sc_signal< sc_lv<28> > D_fu_180;
    sc_signal< sc_lv<28> > D_1_fu_648_p1;
    sc_signal< sc_lv<28> > D_2_fu_782_p3;
    sc_signal< sc_lv<28> > D_3_fu_832_p3;
    sc_signal< sc_lv<32> > s_output_1_fu_184;
    sc_signal< sc_lv<32> > s_output_fu_1244_p3;
    sc_signal< sc_lv<6> > empty_9_fu_531_p1;
    sc_signal< sc_lv<6> > or_ln171_fu_535_p2;
    sc_signal< sc_lv<7> > sub_ln174_fu_570_p2;
    sc_signal< sc_lv<64> > zext_ln174_2_fu_576_p1;
    sc_signal< sc_lv<64> > lshr_ln174_fu_580_p2;
    sc_signal< sc_lv<7> > sub_ln174_1_fu_589_p2;
    sc_signal< sc_lv<64> > zext_ln174_1_fu_595_p1;
    sc_signal< sc_lv<64> > lshr_ln174_1_fu_599_p2;
    sc_signal< sc_lv<1> > trunc_ln174_fu_585_p1;
    sc_signal< sc_lv<1> > trunc_ln174_1_fu_604_p1;
    sc_signal< sc_lv<7> > zext_ln184_2_fu_662_p1;
    sc_signal< sc_lv<7> > sub_ln184_fu_666_p2;
    sc_signal< sc_lv<64> > zext_ln184_fu_672_p1;
    sc_signal< sc_lv<64> > lshr_ln184_fu_676_p2;
    sc_signal< sc_lv<1> > trunc_ln184_fu_681_p1;
    sc_signal< sc_lv<1> > empty_13_fu_710_p2;
    sc_signal< sc_lv<1> > empty_12_fu_704_p2;
    sc_signal< sc_lv<1> > empty_15_fu_722_p2;
    sc_signal< sc_lv<1> > empty_14_fu_716_p2;
    sc_signal< sc_lv<1> > empty_17_fu_734_p2;
    sc_signal< sc_lv<1> > empty_16_fu_728_p2;
    sc_signal< sc_lv<26> > trunc_ln203_fu_746_p1;
    sc_signal< sc_lv<2> > tmp_3_fu_750_p4;
    sc_signal< sc_lv<26> > trunc_ln204_fu_768_p1;
    sc_signal< sc_lv<2> > tmp_s_fu_772_p4;
    sc_signal< sc_lv<27> > trunc_ln197_fu_808_p1;
    sc_signal< sc_lv<1> > tmp_2_fu_800_p3;
    sc_signal< sc_lv<27> > trunc_ln198_fu_828_p1;
    sc_signal< sc_lv<1> > tmp_4_fu_820_p3;
    sc_signal< sc_lv<6> > sub_ln218_fu_889_p2;
    sc_signal< sc_lv<56> > zext_ln218_1_fu_895_p1;
    sc_signal< sc_lv<56> > lshr_ln218_fu_899_p2;
    sc_signal< sc_lv<1> > trunc_ln218_fu_904_p1;
    sc_signal< sc_lv<5> > sub_ln232_fu_952_p2;
    sc_signal< sc_lv<6> > sub_ln229_fu_963_p2;
    sc_signal< sc_lv<32> > zext_ln229_1_fu_969_p1;
    sc_signal< sc_lv<32> > lshr_ln229_fu_973_p2;
    sc_signal< sc_lv<63> > trunc_ln229_1_fu_983_p1;
    sc_signal< sc_lv<1> > trunc_ln229_fu_979_p1;
    sc_signal< sc_lv<47> > trunc_ln232_3_fu_1007_p1;
    sc_signal< sc_lv<47> > trunc_ln232_2_fu_1003_p1;
    sc_signal< sc_lv<48> > trunc_ln232_1_fu_999_p1;
    sc_signal< sc_lv<48> > trunc_ln232_fu_995_p1;
    sc_signal< sc_lv<3> > trunc_ln240_fu_1035_p1;
    sc_signal< sc_lv<6> > shl_ln_fu_1039_p3;
    sc_signal< sc_lv<4> > shl_ln240_fu_1051_p2;
    sc_signal< sc_lv<7> > zext_ln240_fu_1047_p1;
    sc_signal< sc_lv<7> > zext_ln240_2_fu_1061_p1;
    sc_signal< sc_lv<5> > shl_ln240_1_fu_1071_p3;
    sc_signal< sc_lv<6> > zext_ln240_1_fu_1057_p1;
    sc_signal< sc_lv<6> > sub_ln240_1_fu_1083_p2;
    sc_signal< sc_lv<6> > zext_ln240_5_fu_1079_p1;
    sc_signal< sc_lv<6> > sub_ln243_fu_1095_p2;
    sc_signal< sc_lv<32> > sext_ln240_fu_1107_p1;
    sc_signal< sc_lv<48> > zext_ln240_4_fu_1114_p1;
    sc_signal< sc_lv<48> > lshr_ln240_fu_1118_p2;
    sc_signal< sc_lv<48> > and_ln240_fu_1124_p2;
    sc_signal< sc_lv<48> > zext_ln240_6_fu_1129_p1;
    sc_signal< sc_lv<48> > lshr_ln240_1_fu_1132_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_1142_p3;
    sc_signal< sc_lv<1> > trunc_ln240_1_fu_1138_p1;
    sc_signal< sc_lv<47> > zext_ln240_3_fu_1110_p1;
    sc_signal< sc_lv<47> > lshr_ln243_fu_1166_p2;
    sc_signal< sc_lv<47> > and_ln243_fu_1172_p2;
    sc_signal< sc_lv<47> > zext_ln243_fu_1177_p1;
    sc_signal< sc_lv<3> > tmp_6_fu_1156_p4;
    sc_signal< sc_lv<1> > or_ln241_fu_1150_p2;
    sc_signal< sc_lv<8> > tmp_7_fu_1186_p4;
    sc_signal< sc_lv<47> > lshr_ln243_1_fu_1180_p2;
    sc_signal< sc_lv<8> > trunc_ln246_fu_1200_p1;
    sc_signal< sc_lv<9> > sext_ln246_1_fu_1204_p1;
    sc_signal< sc_lv<9> > sext_ln246_fu_1196_p1;
    sc_signal< sc_lv<9> > add_ln246_fu_1208_p2;
    sc_signal< sc_lv<10> > tmp_8_fu_1218_p3;
    sc_signal< sc_lv<11> > sext_ln246_2_fu_1214_p1;
    sc_signal< sc_lv<11> > zext_ln246_fu_1226_p1;
    sc_signal< sc_lv<28> > trunc_ln246_1_fu_1240_p1;
    sc_signal< sc_lv<6> > sub_ln254_fu_1284_p2;
    sc_signal< sc_lv<32> > zext_ln254_1_fu_1290_p1;
    sc_signal< sc_lv<32> > lshr_ln254_fu_1294_p2;
    sc_signal< sc_lv<1> > trunc_ln254_fu_1300_p1;
    sc_signal< sc_lv<7> > sub_ln270_fu_1332_p2;
    sc_signal< sc_lv<64> > zext_ln270_fu_1338_p1;
    sc_signal< sc_lv<64> > lshr_ln270_fu_1342_p2;
    sc_signal< sc_lv<1> > trunc_ln270_fu_1347_p1;
    sc_signal< sc_lv<21> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<21> ap_ST_fsm_state1;
    static const sc_lv<21> ap_ST_fsm_state2;
    static const sc_lv<21> ap_ST_fsm_state3;
    static const sc_lv<21> ap_ST_fsm_state4;
    static const sc_lv<21> ap_ST_fsm_state5;
    static const sc_lv<21> ap_ST_fsm_state6;
    static const sc_lv<21> ap_ST_fsm_state7;
    static const sc_lv<21> ap_ST_fsm_state8;
    static const sc_lv<21> ap_ST_fsm_state9;
    static const sc_lv<21> ap_ST_fsm_state10;
    static const sc_lv<21> ap_ST_fsm_state11;
    static const sc_lv<21> ap_ST_fsm_state12;
    static const sc_lv<21> ap_ST_fsm_state13;
    static const sc_lv<21> ap_ST_fsm_state14;
    static const sc_lv<21> ap_ST_fsm_state15;
    static const sc_lv<21> ap_ST_fsm_state16;
    static const sc_lv<21> ap_ST_fsm_state17;
    static const sc_lv<21> ap_ST_fsm_state18;
    static const sc_lv<21> ap_ST_fsm_state19;
    static const sc_lv<21> ap_ST_fsm_state20;
    static const sc_lv<21> ap_ST_fsm_state21;
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
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<7> ap_const_lv7_2;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<6> ap_const_lv6_38;
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
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<6> ap_const_lv6_2A;
    static const sc_lv<6> ap_const_lv6_2B;
    static const sc_lv<48> ap_const_lv48_840000000000;
    static const sc_lv<47> ap_const_lv47_780000000000;
    static const sc_lv<7> ap_const_lv7_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_C_2_fu_760_p3();
    void thread_C_3_fu_812_p3();
    void thread_D_1_fu_648_p1();
    void thread_D_2_fu_782_p3();
    void thread_D_3_fu_832_p3();
    void thread_E_address0();
    void thread_E_ce0();
    void thread_IP_address0();
    void thread_IP_address1();
    void thread_IP_ce0();
    void thread_IP_ce1();
    void thread_PC1_address0();
    void thread_PC1_ce0();
    void thread_PC2_address0();
    void thread_PC2_ce0();
    void thread_PI_address0();
    void thread_PI_ce0();
    void thread_P_address0();
    void thread_P_ce0();
    void thread_R_1_fu_1278_p2();
    void thread_R_fu_566_p1();
    void thread_S_address0();
    void thread_S_ce0();
    void thread_add_ln171_fu_550_p2();
    void thread_add_ln246_1_fu_1230_p2();
    void thread_add_ln246_fu_1208_p2();
    void thread_and_ln240_fu_1124_p2();
    void thread_and_ln243_fu_1172_p2();
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
    void thread_empty_12_fu_704_p2();
    void thread_empty_13_fu_710_p2();
    void thread_empty_14_fu_716_p2();
    void thread_empty_15_fu_722_p2();
    void thread_empty_16_fu_728_p2();
    void thread_empty_17_fu_734_p2();
    void thread_empty_18_fu_740_p2();
    void thread_empty_9_fu_531_p1();
    void thread_f_function_res_fu_1304_p3();
    void thread_i_5_fu_1317_p2();
    void thread_i_6_fu_698_p2();
    void thread_i_7_fu_921_p2();
    void thread_i_fu_623_p2();
    void thread_icmp_ln171_fu_520_p2();
    void thread_icmp_ln182_fu_617_p2();
    void thread_icmp_ln192_fu_692_p2();
    void thread_icmp_ln216_fu_868_p2();
    void thread_icmp_ln223_fu_915_p2();
    void thread_icmp_ln227_fu_935_p2();
    void thread_icmp_ln235_fu_1023_p2();
    void thread_icmp_ln252_fu_1257_p2();
    void thread_icmp_ln267_fu_1311_p2();
    void thread_inv_init_perm_res_fu_1351_p3();
    void thread_j_4_fu_874_p2();
    void thread_j_5_fu_1029_p2();
    void thread_j_6_fu_1263_p2();
    void thread_j_fu_941_p2();
    void thread_lshr_ln174_1_fu_599_p2();
    void thread_lshr_ln174_fu_580_p2();
    void thread_lshr_ln184_fu_676_p2();
    void thread_lshr_ln218_fu_899_p2();
    void thread_lshr_ln229_fu_973_p2();
    void thread_lshr_ln240_1_fu_1132_p2();
    void thread_lshr_ln240_fu_1118_p2();
    void thread_lshr_ln243_1_fu_1180_p2();
    void thread_lshr_ln243_fu_1166_p2();
    void thread_lshr_ln254_fu_1294_p2();
    void thread_lshr_ln270_fu_1342_p2();
    void thread_or_ln171_fu_535_p2();
    void thread_or_ln1_fu_908_p3();
    void thread_or_ln241_fu_1150_p2();
    void thread_or_ln_fu_608_p4();
    void thread_permuted_choice_1_fu_685_p3();
    void thread_pre_output_fu_927_p3();
    void thread_s_input_fu_987_p3();
    void thread_s_output_fu_1244_p3();
    void thread_sext_ln240_fu_1107_p1();
    void thread_sext_ln246_1_fu_1204_p1();
    void thread_sext_ln246_2_fu_1214_p1();
    void thread_sext_ln246_3_fu_1236_p1();
    void thread_sext_ln246_fu_1196_p1();
    void thread_shl_ln240_1_fu_1071_p3();
    void thread_shl_ln240_fu_1051_p2();
    void thread_shl_ln_fu_1039_p3();
    void thread_sub_key_address0();
    void thread_sub_key_ce0();
    void thread_sub_key_we0();
    void thread_sub_ln174_1_fu_589_p2();
    void thread_sub_ln174_fu_570_p2();
    void thread_sub_ln184_fu_666_p2();
    void thread_sub_ln218_fu_889_p2();
    void thread_sub_ln229_fu_963_p2();
    void thread_sub_ln232_fu_952_p2();
    void thread_sub_ln240_1_fu_1083_p2();
    void thread_sub_ln240_2_fu_1089_p2();
    void thread_sub_ln240_fu_1065_p2();
    void thread_sub_ln243_1_fu_1101_p2();
    void thread_sub_ln243_fu_1095_p2();
    void thread_sub_ln254_fu_1284_p2();
    void thread_sub_ln270_fu_1332_p2();
    void thread_tmp_2_fu_800_p3();
    void thread_tmp_3_fu_750_p4();
    void thread_tmp_4_fu_820_p3();
    void thread_tmp_5_fu_1142_p3();
    void thread_tmp_6_fu_1156_p4();
    void thread_tmp_7_fu_1186_p4();
    void thread_tmp_8_fu_1218_p3();
    void thread_tmp_9_fu_860_p3();
    void thread_tmp_s_fu_772_p4();
    void thread_trunc_ln173_fu_541_p1();
    void thread_trunc_ln174_1_fu_604_p1();
    void thread_trunc_ln174_fu_585_p1();
    void thread_trunc_ln184_1_fu_634_p1();
    void thread_trunc_ln184_fu_681_p1();
    void thread_trunc_ln197_fu_808_p1();
    void thread_trunc_ln198_fu_828_p1();
    void thread_trunc_ln203_fu_746_p1();
    void thread_trunc_ln204_fu_768_p1();
    void thread_trunc_ln218_1_fu_885_p1();
    void thread_trunc_ln218_fu_904_p1();
    void thread_trunc_ln229_1_fu_983_p1();
    void thread_trunc_ln229_fu_979_p1();
    void thread_trunc_ln232_1_fu_999_p1();
    void thread_trunc_ln232_2_fu_1003_p1();
    void thread_trunc_ln232_3_fu_1007_p1();
    void thread_trunc_ln232_fu_995_p1();
    void thread_trunc_ln240_1_fu_1138_p1();
    void thread_trunc_ln240_fu_1035_p1();
    void thread_trunc_ln246_1_fu_1240_p1();
    void thread_trunc_ln246_fu_1200_p1();
    void thread_trunc_ln254_1_fu_1274_p1();
    void thread_trunc_ln254_fu_1300_p1();
    void thread_trunc_ln270_1_fu_1328_p1();
    void thread_trunc_ln270_fu_1347_p1();
    void thread_xor_ln232_1_fu_1017_p2();
    void thread_xor_ln232_fu_1011_p2();
    void thread_zext_ln174_1_fu_595_p1();
    void thread_zext_ln174_2_fu_576_p1();
    void thread_zext_ln174_3_fu_545_p1();
    void thread_zext_ln174_fu_526_p1();
    void thread_zext_ln184_1_fu_629_p1();
    void thread_zext_ln184_2_fu_662_p1();
    void thread_zext_ln184_fu_672_p1();
    void thread_zext_ln214_fu_850_p1();
    void thread_zext_ln218_1_fu_895_p1();
    void thread_zext_ln218_fu_880_p1();
    void thread_zext_ln229_1_fu_969_p1();
    void thread_zext_ln229_fu_947_p1();
    void thread_zext_ln232_fu_958_p1();
    void thread_zext_ln240_1_fu_1057_p1();
    void thread_zext_ln240_2_fu_1061_p1();
    void thread_zext_ln240_3_fu_1110_p1();
    void thread_zext_ln240_4_fu_1114_p1();
    void thread_zext_ln240_5_fu_1079_p1();
    void thread_zext_ln240_6_fu_1129_p1();
    void thread_zext_ln240_fu_1047_p1();
    void thread_zext_ln243_fu_1177_p1();
    void thread_zext_ln246_fu_1226_p1();
    void thread_zext_ln254_1_fu_1290_p1();
    void thread_zext_ln254_fu_1269_p1();
    void thread_zext_ln270_1_fu_1323_p1();
    void thread_zext_ln270_fu_1338_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
