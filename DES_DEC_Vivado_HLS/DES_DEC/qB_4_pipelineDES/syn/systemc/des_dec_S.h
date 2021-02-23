// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __des_dec_S_H__
#define __des_dec_S_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct des_dec_S_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 4;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in <sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in <sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in <sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in <sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in <sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in <sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in <sc_lv<AddressWidth> > address9;
sc_core::sc_in <sc_logic> ce9;
sc_core::sc_out <sc_lv<DataWidth> > q9;
sc_core::sc_in <sc_lv<AddressWidth> > address10;
sc_core::sc_in <sc_logic> ce10;
sc_core::sc_out <sc_lv<DataWidth> > q10;
sc_core::sc_in <sc_lv<AddressWidth> > address11;
sc_core::sc_in <sc_logic> ce11;
sc_core::sc_out <sc_lv<DataWidth> > q11;
sc_core::sc_in <sc_lv<AddressWidth> > address12;
sc_core::sc_in <sc_logic> ce12;
sc_core::sc_out <sc_lv<DataWidth> > q12;
sc_core::sc_in <sc_lv<AddressWidth> > address13;
sc_core::sc_in <sc_logic> ce13;
sc_core::sc_out <sc_lv<DataWidth> > q13;
sc_core::sc_in <sc_lv<AddressWidth> > address14;
sc_core::sc_in <sc_logic> ce14;
sc_core::sc_out <sc_lv<DataWidth> > q14;
sc_core::sc_in <sc_lv<AddressWidth> > address15;
sc_core::sc_in <sc_logic> ce15;
sc_core::sc_out <sc_lv<DataWidth> > q15;
sc_core::sc_in <sc_lv<AddressWidth> > address16;
sc_core::sc_in <sc_logic> ce16;
sc_core::sc_out <sc_lv<DataWidth> > q16;
sc_core::sc_in <sc_lv<AddressWidth> > address17;
sc_core::sc_in <sc_logic> ce17;
sc_core::sc_out <sc_lv<DataWidth> > q17;
sc_core::sc_in <sc_lv<AddressWidth> > address18;
sc_core::sc_in <sc_logic> ce18;
sc_core::sc_out <sc_lv<DataWidth> > q18;
sc_core::sc_in <sc_lv<AddressWidth> > address19;
sc_core::sc_in <sc_logic> ce19;
sc_core::sc_out <sc_lv<DataWidth> > q19;
sc_core::sc_in <sc_lv<AddressWidth> > address20;
sc_core::sc_in <sc_logic> ce20;
sc_core::sc_out <sc_lv<DataWidth> > q20;
sc_core::sc_in <sc_lv<AddressWidth> > address21;
sc_core::sc_in <sc_logic> ce21;
sc_core::sc_out <sc_lv<DataWidth> > q21;
sc_core::sc_in <sc_lv<AddressWidth> > address22;
sc_core::sc_in <sc_logic> ce22;
sc_core::sc_out <sc_lv<DataWidth> > q22;
sc_core::sc_in <sc_lv<AddressWidth> > address23;
sc_core::sc_in <sc_logic> ce23;
sc_core::sc_out <sc_lv<DataWidth> > q23;
sc_core::sc_in <sc_lv<AddressWidth> > address24;
sc_core::sc_in <sc_logic> ce24;
sc_core::sc_out <sc_lv<DataWidth> > q24;
sc_core::sc_in <sc_lv<AddressWidth> > address25;
sc_core::sc_in <sc_logic> ce25;
sc_core::sc_out <sc_lv<DataWidth> > q25;
sc_core::sc_in <sc_lv<AddressWidth> > address26;
sc_core::sc_in <sc_logic> ce26;
sc_core::sc_out <sc_lv<DataWidth> > q26;
sc_core::sc_in <sc_lv<AddressWidth> > address27;
sc_core::sc_in <sc_logic> ce27;
sc_core::sc_out <sc_lv<DataWidth> > q27;
sc_core::sc_in <sc_lv<AddressWidth> > address28;
sc_core::sc_in <sc_logic> ce28;
sc_core::sc_out <sc_lv<DataWidth> > q28;
sc_core::sc_in <sc_lv<AddressWidth> > address29;
sc_core::sc_in <sc_logic> ce29;
sc_core::sc_out <sc_lv<DataWidth> > q29;
sc_core::sc_in <sc_lv<AddressWidth> > address30;
sc_core::sc_in <sc_logic> ce30;
sc_core::sc_out <sc_lv<DataWidth> > q30;
sc_core::sc_in <sc_lv<AddressWidth> > address31;
sc_core::sc_in <sc_logic> ce31;
sc_core::sc_out <sc_lv<DataWidth> > q31;
sc_core::sc_in <sc_lv<AddressWidth> > address32;
sc_core::sc_in <sc_logic> ce32;
sc_core::sc_out <sc_lv<DataWidth> > q32;
sc_core::sc_in <sc_lv<AddressWidth> > address33;
sc_core::sc_in <sc_logic> ce33;
sc_core::sc_out <sc_lv<DataWidth> > q33;
sc_core::sc_in <sc_lv<AddressWidth> > address34;
sc_core::sc_in <sc_logic> ce34;
sc_core::sc_out <sc_lv<DataWidth> > q34;
sc_core::sc_in <sc_lv<AddressWidth> > address35;
sc_core::sc_in <sc_logic> ce35;
sc_core::sc_out <sc_lv<DataWidth> > q35;
sc_core::sc_in <sc_lv<AddressWidth> > address36;
sc_core::sc_in <sc_logic> ce36;
sc_core::sc_out <sc_lv<DataWidth> > q36;
sc_core::sc_in <sc_lv<AddressWidth> > address37;
sc_core::sc_in <sc_logic> ce37;
sc_core::sc_out <sc_lv<DataWidth> > q37;
sc_core::sc_in <sc_lv<AddressWidth> > address38;
sc_core::sc_in <sc_logic> ce38;
sc_core::sc_out <sc_lv<DataWidth> > q38;
sc_core::sc_in <sc_lv<AddressWidth> > address39;
sc_core::sc_in <sc_logic> ce39;
sc_core::sc_out <sc_lv<DataWidth> > q39;
sc_core::sc_in <sc_lv<AddressWidth> > address40;
sc_core::sc_in <sc_logic> ce40;
sc_core::sc_out <sc_lv<DataWidth> > q40;
sc_core::sc_in <sc_lv<AddressWidth> > address41;
sc_core::sc_in <sc_logic> ce41;
sc_core::sc_out <sc_lv<DataWidth> > q41;
sc_core::sc_in <sc_lv<AddressWidth> > address42;
sc_core::sc_in <sc_logic> ce42;
sc_core::sc_out <sc_lv<DataWidth> > q42;
sc_core::sc_in <sc_lv<AddressWidth> > address43;
sc_core::sc_in <sc_logic> ce43;
sc_core::sc_out <sc_lv<DataWidth> > q43;
sc_core::sc_in <sc_lv<AddressWidth> > address44;
sc_core::sc_in <sc_logic> ce44;
sc_core::sc_out <sc_lv<DataWidth> > q44;
sc_core::sc_in <sc_lv<AddressWidth> > address45;
sc_core::sc_in <sc_logic> ce45;
sc_core::sc_out <sc_lv<DataWidth> > q45;
sc_core::sc_in <sc_lv<AddressWidth> > address46;
sc_core::sc_in <sc_logic> ce46;
sc_core::sc_out <sc_lv<DataWidth> > q46;
sc_core::sc_in <sc_lv<AddressWidth> > address47;
sc_core::sc_in <sc_logic> ce47;
sc_core::sc_out <sc_lv<DataWidth> > q47;
sc_core::sc_in <sc_lv<AddressWidth> > address48;
sc_core::sc_in <sc_logic> ce48;
sc_core::sc_out <sc_lv<DataWidth> > q48;
sc_core::sc_in <sc_lv<AddressWidth> > address49;
sc_core::sc_in <sc_logic> ce49;
sc_core::sc_out <sc_lv<DataWidth> > q49;
sc_core::sc_in <sc_lv<AddressWidth> > address50;
sc_core::sc_in <sc_logic> ce50;
sc_core::sc_out <sc_lv<DataWidth> > q50;
sc_core::sc_in <sc_lv<AddressWidth> > address51;
sc_core::sc_in <sc_logic> ce51;
sc_core::sc_out <sc_lv<DataWidth> > q51;
sc_core::sc_in <sc_lv<AddressWidth> > address52;
sc_core::sc_in <sc_logic> ce52;
sc_core::sc_out <sc_lv<DataWidth> > q52;
sc_core::sc_in <sc_lv<AddressWidth> > address53;
sc_core::sc_in <sc_logic> ce53;
sc_core::sc_out <sc_lv<DataWidth> > q53;
sc_core::sc_in <sc_lv<AddressWidth> > address54;
sc_core::sc_in <sc_logic> ce54;
sc_core::sc_out <sc_lv<DataWidth> > q54;
sc_core::sc_in <sc_lv<AddressWidth> > address55;
sc_core::sc_in <sc_logic> ce55;
sc_core::sc_out <sc_lv<DataWidth> > q55;
sc_core::sc_in <sc_lv<AddressWidth> > address56;
sc_core::sc_in <sc_logic> ce56;
sc_core::sc_out <sc_lv<DataWidth> > q56;
sc_core::sc_in <sc_lv<AddressWidth> > address57;
sc_core::sc_in <sc_logic> ce57;
sc_core::sc_out <sc_lv<DataWidth> > q57;
sc_core::sc_in <sc_lv<AddressWidth> > address58;
sc_core::sc_in <sc_logic> ce58;
sc_core::sc_out <sc_lv<DataWidth> > q58;
sc_core::sc_in <sc_lv<AddressWidth> > address59;
sc_core::sc_in <sc_logic> ce59;
sc_core::sc_out <sc_lv<DataWidth> > q59;
sc_core::sc_in <sc_lv<AddressWidth> > address60;
sc_core::sc_in <sc_logic> ce60;
sc_core::sc_out <sc_lv<DataWidth> > q60;
sc_core::sc_in <sc_lv<AddressWidth> > address61;
sc_core::sc_in <sc_logic> ce61;
sc_core::sc_out <sc_lv<DataWidth> > q61;
sc_core::sc_in <sc_lv<AddressWidth> > address62;
sc_core::sc_in <sc_logic> ce62;
sc_core::sc_out <sc_lv<DataWidth> > q62;
sc_core::sc_in <sc_lv<AddressWidth> > address63;
sc_core::sc_in <sc_logic> ce63;
sc_core::sc_out <sc_lv<DataWidth> > q63;
sc_core::sc_in <sc_lv<AddressWidth> > address64;
sc_core::sc_in <sc_logic> ce64;
sc_core::sc_out <sc_lv<DataWidth> > q64;
sc_core::sc_in <sc_lv<AddressWidth> > address65;
sc_core::sc_in <sc_logic> ce65;
sc_core::sc_out <sc_lv<DataWidth> > q65;
sc_core::sc_in <sc_lv<AddressWidth> > address66;
sc_core::sc_in <sc_logic> ce66;
sc_core::sc_out <sc_lv<DataWidth> > q66;
sc_core::sc_in <sc_lv<AddressWidth> > address67;
sc_core::sc_in <sc_logic> ce67;
sc_core::sc_out <sc_lv<DataWidth> > q67;
sc_core::sc_in <sc_lv<AddressWidth> > address68;
sc_core::sc_in <sc_logic> ce68;
sc_core::sc_out <sc_lv<DataWidth> > q68;
sc_core::sc_in <sc_lv<AddressWidth> > address69;
sc_core::sc_in <sc_logic> ce69;
sc_core::sc_out <sc_lv<DataWidth> > q69;
sc_core::sc_in <sc_lv<AddressWidth> > address70;
sc_core::sc_in <sc_logic> ce70;
sc_core::sc_out <sc_lv<DataWidth> > q70;
sc_core::sc_in <sc_lv<AddressWidth> > address71;
sc_core::sc_in <sc_logic> ce71;
sc_core::sc_out <sc_lv<DataWidth> > q71;
sc_core::sc_in <sc_lv<AddressWidth> > address72;
sc_core::sc_in <sc_logic> ce72;
sc_core::sc_out <sc_lv<DataWidth> > q72;
sc_core::sc_in <sc_lv<AddressWidth> > address73;
sc_core::sc_in <sc_logic> ce73;
sc_core::sc_out <sc_lv<DataWidth> > q73;
sc_core::sc_in <sc_lv<AddressWidth> > address74;
sc_core::sc_in <sc_logic> ce74;
sc_core::sc_out <sc_lv<DataWidth> > q74;
sc_core::sc_in <sc_lv<AddressWidth> > address75;
sc_core::sc_in <sc_logic> ce75;
sc_core::sc_out <sc_lv<DataWidth> > q75;
sc_core::sc_in <sc_lv<AddressWidth> > address76;
sc_core::sc_in <sc_logic> ce76;
sc_core::sc_out <sc_lv<DataWidth> > q76;
sc_core::sc_in <sc_lv<AddressWidth> > address77;
sc_core::sc_in <sc_logic> ce77;
sc_core::sc_out <sc_lv<DataWidth> > q77;
sc_core::sc_in <sc_lv<AddressWidth> > address78;
sc_core::sc_in <sc_logic> ce78;
sc_core::sc_out <sc_lv<DataWidth> > q78;
sc_core::sc_in <sc_lv<AddressWidth> > address79;
sc_core::sc_in <sc_logic> ce79;
sc_core::sc_out <sc_lv<DataWidth> > q79;
sc_core::sc_in <sc_lv<AddressWidth> > address80;
sc_core::sc_in <sc_logic> ce80;
sc_core::sc_out <sc_lv<DataWidth> > q80;
sc_core::sc_in <sc_lv<AddressWidth> > address81;
sc_core::sc_in <sc_logic> ce81;
sc_core::sc_out <sc_lv<DataWidth> > q81;
sc_core::sc_in <sc_lv<AddressWidth> > address82;
sc_core::sc_in <sc_logic> ce82;
sc_core::sc_out <sc_lv<DataWidth> > q82;
sc_core::sc_in <sc_lv<AddressWidth> > address83;
sc_core::sc_in <sc_logic> ce83;
sc_core::sc_out <sc_lv<DataWidth> > q83;
sc_core::sc_in <sc_lv<AddressWidth> > address84;
sc_core::sc_in <sc_logic> ce84;
sc_core::sc_out <sc_lv<DataWidth> > q84;
sc_core::sc_in <sc_lv<AddressWidth> > address85;
sc_core::sc_in <sc_logic> ce85;
sc_core::sc_out <sc_lv<DataWidth> > q85;
sc_core::sc_in <sc_lv<AddressWidth> > address86;
sc_core::sc_in <sc_logic> ce86;
sc_core::sc_out <sc_lv<DataWidth> > q86;
sc_core::sc_in <sc_lv<AddressWidth> > address87;
sc_core::sc_in <sc_logic> ce87;
sc_core::sc_out <sc_lv<DataWidth> > q87;
sc_core::sc_in <sc_lv<AddressWidth> > address88;
sc_core::sc_in <sc_logic> ce88;
sc_core::sc_out <sc_lv<DataWidth> > q88;
sc_core::sc_in <sc_lv<AddressWidth> > address89;
sc_core::sc_in <sc_logic> ce89;
sc_core::sc_out <sc_lv<DataWidth> > q89;
sc_core::sc_in <sc_lv<AddressWidth> > address90;
sc_core::sc_in <sc_logic> ce90;
sc_core::sc_out <sc_lv<DataWidth> > q90;
sc_core::sc_in <sc_lv<AddressWidth> > address91;
sc_core::sc_in <sc_logic> ce91;
sc_core::sc_out <sc_lv<DataWidth> > q91;
sc_core::sc_in <sc_lv<AddressWidth> > address92;
sc_core::sc_in <sc_logic> ce92;
sc_core::sc_out <sc_lv<DataWidth> > q92;
sc_core::sc_in <sc_lv<AddressWidth> > address93;
sc_core::sc_in <sc_logic> ce93;
sc_core::sc_out <sc_lv<DataWidth> > q93;
sc_core::sc_in <sc_lv<AddressWidth> > address94;
sc_core::sc_in <sc_logic> ce94;
sc_core::sc_out <sc_lv<DataWidth> > q94;
sc_core::sc_in <sc_lv<AddressWidth> > address95;
sc_core::sc_in <sc_logic> ce95;
sc_core::sc_out <sc_lv<DataWidth> > q95;
sc_core::sc_in <sc_lv<AddressWidth> > address96;
sc_core::sc_in <sc_logic> ce96;
sc_core::sc_out <sc_lv<DataWidth> > q96;
sc_core::sc_in <sc_lv<AddressWidth> > address97;
sc_core::sc_in <sc_logic> ce97;
sc_core::sc_out <sc_lv<DataWidth> > q97;
sc_core::sc_in <sc_lv<AddressWidth> > address98;
sc_core::sc_in <sc_logic> ce98;
sc_core::sc_out <sc_lv<DataWidth> > q98;
sc_core::sc_in <sc_lv<AddressWidth> > address99;
sc_core::sc_in <sc_logic> ce99;
sc_core::sc_out <sc_lv<DataWidth> > q99;
sc_core::sc_in <sc_lv<AddressWidth> > address100;
sc_core::sc_in <sc_logic> ce100;
sc_core::sc_out <sc_lv<DataWidth> > q100;
sc_core::sc_in <sc_lv<AddressWidth> > address101;
sc_core::sc_in <sc_logic> ce101;
sc_core::sc_out <sc_lv<DataWidth> > q101;
sc_core::sc_in <sc_lv<AddressWidth> > address102;
sc_core::sc_in <sc_logic> ce102;
sc_core::sc_out <sc_lv<DataWidth> > q102;
sc_core::sc_in <sc_lv<AddressWidth> > address103;
sc_core::sc_in <sc_logic> ce103;
sc_core::sc_out <sc_lv<DataWidth> > q103;
sc_core::sc_in <sc_lv<AddressWidth> > address104;
sc_core::sc_in <sc_logic> ce104;
sc_core::sc_out <sc_lv<DataWidth> > q104;
sc_core::sc_in <sc_lv<AddressWidth> > address105;
sc_core::sc_in <sc_logic> ce105;
sc_core::sc_out <sc_lv<DataWidth> > q105;
sc_core::sc_in <sc_lv<AddressWidth> > address106;
sc_core::sc_in <sc_logic> ce106;
sc_core::sc_out <sc_lv<DataWidth> > q106;
sc_core::sc_in <sc_lv<AddressWidth> > address107;
sc_core::sc_in <sc_logic> ce107;
sc_core::sc_out <sc_lv<DataWidth> > q107;
sc_core::sc_in <sc_lv<AddressWidth> > address108;
sc_core::sc_in <sc_logic> ce108;
sc_core::sc_out <sc_lv<DataWidth> > q108;
sc_core::sc_in <sc_lv<AddressWidth> > address109;
sc_core::sc_in <sc_logic> ce109;
sc_core::sc_out <sc_lv<DataWidth> > q109;
sc_core::sc_in <sc_lv<AddressWidth> > address110;
sc_core::sc_in <sc_logic> ce110;
sc_core::sc_out <sc_lv<DataWidth> > q110;
sc_core::sc_in <sc_lv<AddressWidth> > address111;
sc_core::sc_in <sc_logic> ce111;
sc_core::sc_out <sc_lv<DataWidth> > q111;
sc_core::sc_in <sc_lv<AddressWidth> > address112;
sc_core::sc_in <sc_logic> ce112;
sc_core::sc_out <sc_lv<DataWidth> > q112;
sc_core::sc_in <sc_lv<AddressWidth> > address113;
sc_core::sc_in <sc_logic> ce113;
sc_core::sc_out <sc_lv<DataWidth> > q113;
sc_core::sc_in <sc_lv<AddressWidth> > address114;
sc_core::sc_in <sc_logic> ce114;
sc_core::sc_out <sc_lv<DataWidth> > q114;
sc_core::sc_in <sc_lv<AddressWidth> > address115;
sc_core::sc_in <sc_logic> ce115;
sc_core::sc_out <sc_lv<DataWidth> > q115;
sc_core::sc_in <sc_lv<AddressWidth> > address116;
sc_core::sc_in <sc_logic> ce116;
sc_core::sc_out <sc_lv<DataWidth> > q116;
sc_core::sc_in <sc_lv<AddressWidth> > address117;
sc_core::sc_in <sc_logic> ce117;
sc_core::sc_out <sc_lv<DataWidth> > q117;
sc_core::sc_in <sc_lv<AddressWidth> > address118;
sc_core::sc_in <sc_logic> ce118;
sc_core::sc_out <sc_lv<DataWidth> > q118;
sc_core::sc_in <sc_lv<AddressWidth> > address119;
sc_core::sc_in <sc_logic> ce119;
sc_core::sc_out <sc_lv<DataWidth> > q119;
sc_core::sc_in <sc_lv<AddressWidth> > address120;
sc_core::sc_in <sc_logic> ce120;
sc_core::sc_out <sc_lv<DataWidth> > q120;
sc_core::sc_in <sc_lv<AddressWidth> > address121;
sc_core::sc_in <sc_logic> ce121;
sc_core::sc_out <sc_lv<DataWidth> > q121;
sc_core::sc_in <sc_lv<AddressWidth> > address122;
sc_core::sc_in <sc_logic> ce122;
sc_core::sc_out <sc_lv<DataWidth> > q122;
sc_core::sc_in <sc_lv<AddressWidth> > address123;
sc_core::sc_in <sc_logic> ce123;
sc_core::sc_out <sc_lv<DataWidth> > q123;
sc_core::sc_in <sc_lv<AddressWidth> > address124;
sc_core::sc_in <sc_logic> ce124;
sc_core::sc_out <sc_lv<DataWidth> > q124;
sc_core::sc_in <sc_lv<AddressWidth> > address125;
sc_core::sc_in <sc_logic> ce125;
sc_core::sc_out <sc_lv<DataWidth> > q125;
sc_core::sc_in <sc_lv<AddressWidth> > address126;
sc_core::sc_in <sc_logic> ce126;
sc_core::sc_out <sc_lv<DataWidth> > q126;
sc_core::sc_in <sc_lv<AddressWidth> > address127;
sc_core::sc_in <sc_logic> ce127;
sc_core::sc_out <sc_lv<DataWidth> > q127;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(des_dec_S_ram) {
        ram[0] = "0b1110";
        ram[1] = "0b0100";
        ram[2] = "0b1101";
        ram[3] = "0b0001";
        ram[4] = "0b0010";
        ram[5] = "0b1111";
        ram[6] = "0b1011";
        ram[7] = "0b1000";
        ram[8] = "0b0011";
        ram[9] = "0b1010";
        ram[10] = "0b0110";
        ram[11] = "0b1100";
        ram[12] = "0b0101";
        ram[13] = "0b1001";
        ram[14] = "0b0000";
        ram[15] = "0b0111";
        ram[16] = "0b0000";
        ram[17] = "0b1111";
        ram[18] = "0b0111";
        ram[19] = "0b0100";
        ram[20] = "0b1110";
        ram[21] = "0b0010";
        ram[22] = "0b1101";
        ram[23] = "0b0001";
        ram[24] = "0b1010";
        ram[25] = "0b0110";
        ram[26] = "0b1100";
        ram[27] = "0b1011";
        ram[28] = "0b1001";
        ram[29] = "0b0101";
        ram[30] = "0b0011";
        ram[31] = "0b1000";
        ram[32] = "0b0100";
        ram[33] = "0b0001";
        ram[34] = "0b1110";
        ram[35] = "0b1000";
        ram[36] = "0b1101";
        ram[37] = "0b0110";
        ram[38] = "0b0010";
        ram[39] = "0b1011";
        ram[40] = "0b1111";
        ram[41] = "0b1100";
        ram[42] = "0b1001";
        ram[43] = "0b0111";
        ram[44] = "0b0011";
        ram[45] = "0b1010";
        ram[46] = "0b0101";
        ram[47] = "0b0000";
        ram[48] = "0b1111";
        ram[49] = "0b1100";
        ram[50] = "0b1000";
        ram[51] = "0b0010";
        ram[52] = "0b0100";
        ram[53] = "0b1001";
        ram[54] = "0b0001";
        ram[55] = "0b0111";
        ram[56] = "0b0101";
        ram[57] = "0b1011";
        ram[58] = "0b0011";
        ram[59] = "0b1110";
        ram[60] = "0b1010";
        ram[61] = "0b0000";
        ram[62] = "0b0110";
        ram[63] = "0b1101";
        ram[64] = "0b1111";
        ram[65] = "0b0001";
        ram[66] = "0b1000";
        ram[67] = "0b1110";
        ram[68] = "0b0110";
        ram[69] = "0b1011";
        ram[70] = "0b0011";
        ram[71] = "0b0100";
        ram[72] = "0b1001";
        ram[73] = "0b0111";
        ram[74] = "0b0010";
        ram[75] = "0b1101";
        ram[76] = "0b1100";
        ram[77] = "0b0000";
        ram[78] = "0b0101";
        ram[79] = "0b1010";
        ram[80] = "0b0011";
        ram[81] = "0b1101";
        ram[82] = "0b0100";
        ram[83] = "0b0111";
        ram[84] = "0b1111";
        ram[85] = "0b0010";
        ram[86] = "0b1000";
        ram[87] = "0b1110";
        ram[88] = "0b1100";
        ram[89] = "0b0000";
        ram[90] = "0b0001";
        ram[91] = "0b1010";
        ram[92] = "0b0110";
        ram[93] = "0b1001";
        ram[94] = "0b1011";
        ram[95] = "0b0101";
        ram[96] = "0b0000";
        ram[97] = "0b1110";
        ram[98] = "0b0111";
        ram[99] = "0b1011";
        ram[100] = "0b1010";
        ram[101] = "0b0100";
        ram[102] = "0b1101";
        ram[103] = "0b0001";
        ram[104] = "0b0101";
        ram[105] = "0b1000";
        ram[106] = "0b1100";
        ram[107] = "0b0110";
        ram[108] = "0b1001";
        ram[109] = "0b0011";
        ram[110] = "0b0010";
        ram[111] = "0b1111";
        ram[112] = "0b1101";
        ram[113] = "0b1000";
        ram[114] = "0b1010";
        ram[115] = "0b0001";
        ram[116] = "0b0011";
        ram[117] = "0b1111";
        ram[118] = "0b0100";
        ram[119] = "0b0010";
        ram[120] = "0b1011";
        ram[121] = "0b0110";
        ram[122] = "0b0111";
        ram[123] = "0b1100";
        ram[124] = "0b0000";
        ram[125] = "0b0101";
        ram[126] = "0b1110";
        ram[127] = "0b1001";
        ram[128] = "0b1010";
        ram[129] = "0b0000";
        ram[130] = "0b1001";
        ram[131] = "0b1110";
        ram[132] = "0b0110";
        ram[133] = "0b0011";
        ram[134] = "0b1111";
        ram[135] = "0b0101";
        ram[136] = "0b0001";
        ram[137] = "0b1101";
        ram[138] = "0b1100";
        ram[139] = "0b0111";
        ram[140] = "0b1011";
        ram[141] = "0b0100";
        ram[142] = "0b0010";
        ram[143] = "0b1000";
        ram[144] = "0b1101";
        ram[145] = "0b0111";
        ram[146] = "0b0000";
        ram[147] = "0b1001";
        ram[148] = "0b0011";
        ram[149] = "0b0100";
        ram[150] = "0b0110";
        ram[151] = "0b1010";
        ram[152] = "0b0010";
        ram[153] = "0b1000";
        ram[154] = "0b0101";
        ram[155] = "0b1110";
        ram[156] = "0b1100";
        ram[157] = "0b1011";
        ram[158] = "0b1111";
        ram[159] = "0b0001";
        ram[160] = "0b1101";
        ram[161] = "0b0110";
        ram[162] = "0b0100";
        ram[163] = "0b1001";
        ram[164] = "0b1000";
        ram[165] = "0b1111";
        ram[166] = "0b0011";
        ram[167] = "0b0000";
        ram[168] = "0b1011";
        ram[169] = "0b0001";
        ram[170] = "0b0010";
        ram[171] = "0b1100";
        ram[172] = "0b0101";
        ram[173] = "0b1010";
        ram[174] = "0b1110";
        ram[175] = "0b0111";
        ram[176] = "0b0001";
        ram[177] = "0b1010";
        ram[178] = "0b1101";
        ram[179] = "0b0000";
        ram[180] = "0b0110";
        ram[181] = "0b1001";
        ram[182] = "0b1000";
        ram[183] = "0b0111";
        ram[184] = "0b0100";
        ram[185] = "0b1111";
        ram[186] = "0b1110";
        ram[187] = "0b0011";
        ram[188] = "0b1011";
        ram[189] = "0b0101";
        ram[190] = "0b0010";
        ram[191] = "0b1100";
        ram[192] = "0b0111";
        ram[193] = "0b1101";
        ram[194] = "0b1110";
        ram[195] = "0b0011";
        ram[196] = "0b0000";
        ram[197] = "0b0110";
        ram[198] = "0b1001";
        ram[199] = "0b1010";
        ram[200] = "0b0001";
        ram[201] = "0b0010";
        ram[202] = "0b1000";
        ram[203] = "0b0101";
        ram[204] = "0b1011";
        ram[205] = "0b1100";
        ram[206] = "0b0100";
        ram[207] = "0b1111";
        ram[208] = "0b1101";
        ram[209] = "0b1000";
        ram[210] = "0b1011";
        ram[211] = "0b0101";
        ram[212] = "0b0110";
        ram[213] = "0b1111";
        ram[214] = "0b0000";
        ram[215] = "0b0011";
        ram[216] = "0b0100";
        ram[217] = "0b0111";
        ram[218] = "0b0010";
        ram[219] = "0b1100";
        ram[220] = "0b0001";
        ram[221] = "0b1010";
        ram[222] = "0b1110";
        ram[223] = "0b1001";
        ram[224] = "0b1010";
        ram[225] = "0b0110";
        ram[226] = "0b1001";
        ram[227] = "0b0000";
        ram[228] = "0b1100";
        ram[229] = "0b1011";
        ram[230] = "0b0111";
        ram[231] = "0b1101";
        ram[232] = "0b1111";
        ram[233] = "0b0001";
        ram[234] = "0b0011";
        ram[235] = "0b1110";
        ram[236] = "0b0101";
        ram[237] = "0b0010";
        ram[238] = "0b1000";
        ram[239] = "0b0100";
        ram[240] = "0b0011";
        ram[241] = "0b1111";
        ram[242] = "0b0000";
        ram[243] = "0b0110";
        ram[244] = "0b1010";
        ram[245] = "0b0001";
        ram[246] = "0b1101";
        ram[247] = "0b1000";
        ram[248] = "0b1001";
        ram[249] = "0b0100";
        ram[250] = "0b0101";
        ram[251] = "0b1011";
        ram[252] = "0b1100";
        ram[253] = "0b0111";
        ram[254] = "0b0010";
        ram[255] = "0b1110";
        ram[256] = "0b0010";
        ram[257] = "0b1100";
        ram[258] = "0b0100";
        ram[259] = "0b0001";
        ram[260] = "0b0111";
        ram[261] = "0b1010";
        ram[262] = "0b1011";
        ram[263] = "0b0110";
        ram[264] = "0b1000";
        ram[265] = "0b0101";
        ram[266] = "0b0011";
        ram[267] = "0b1111";
        ram[268] = "0b1101";
        ram[269] = "0b0000";
        ram[270] = "0b1110";
        ram[271] = "0b1001";
        ram[272] = "0b1110";
        ram[273] = "0b1011";
        ram[274] = "0b0010";
        ram[275] = "0b1100";
        ram[276] = "0b0100";
        ram[277] = "0b0111";
        ram[278] = "0b1101";
        ram[279] = "0b0001";
        ram[280] = "0b0101";
        ram[281] = "0b0000";
        ram[282] = "0b1111";
        ram[283] = "0b1010";
        ram[284] = "0b0011";
        ram[285] = "0b1001";
        ram[286] = "0b1000";
        ram[287] = "0b0110";
        ram[288] = "0b0100";
        ram[289] = "0b0010";
        ram[290] = "0b0001";
        ram[291] = "0b1011";
        ram[292] = "0b1010";
        ram[293] = "0b1101";
        ram[294] = "0b0111";
        ram[295] = "0b1000";
        ram[296] = "0b1111";
        ram[297] = "0b1001";
        ram[298] = "0b1100";
        ram[299] = "0b0101";
        ram[300] = "0b0110";
        ram[301] = "0b0011";
        ram[302] = "0b0000";
        ram[303] = "0b1110";
        ram[304] = "0b1011";
        ram[305] = "0b1000";
        ram[306] = "0b1100";
        ram[307] = "0b0111";
        ram[308] = "0b0001";
        ram[309] = "0b1110";
        ram[310] = "0b0010";
        ram[311] = "0b1101";
        ram[312] = "0b0110";
        ram[313] = "0b1111";
        ram[314] = "0b0000";
        ram[315] = "0b1001";
        ram[316] = "0b1010";
        ram[317] = "0b0100";
        ram[318] = "0b0101";
        ram[319] = "0b0011";
        ram[320] = "0b1100";
        ram[321] = "0b0001";
        ram[322] = "0b1010";
        ram[323] = "0b1111";
        ram[324] = "0b1001";
        ram[325] = "0b0010";
        ram[326] = "0b0110";
        ram[327] = "0b1000";
        ram[328] = "0b0000";
        ram[329] = "0b1101";
        ram[330] = "0b0011";
        ram[331] = "0b0100";
        ram[332] = "0b1110";
        ram[333] = "0b0111";
        ram[334] = "0b0101";
        ram[335] = "0b1011";
        ram[336] = "0b1010";
        ram[337] = "0b1111";
        ram[338] = "0b0100";
        ram[339] = "0b0010";
        ram[340] = "0b0111";
        ram[341] = "0b1100";
        ram[342] = "0b1001";
        ram[343] = "0b0101";
        ram[344] = "0b0110";
        ram[345] = "0b0001";
        ram[346] = "0b1101";
        ram[347] = "0b1110";
        ram[348] = "0b0000";
        ram[349] = "0b1011";
        ram[350] = "0b0011";
        ram[351] = "0b1000";
        ram[352] = "0b1001";
        ram[353] = "0b1110";
        ram[354] = "0b1111";
        ram[355] = "0b0101";
        ram[356] = "0b0010";
        ram[357] = "0b1000";
        ram[358] = "0b1100";
        ram[359] = "0b0011";
        ram[360] = "0b0111";
        ram[361] = "0b0000";
        ram[362] = "0b0100";
        ram[363] = "0b1010";
        ram[364] = "0b0001";
        ram[365] = "0b1101";
        ram[366] = "0b1011";
        ram[367] = "0b0110";
        ram[368] = "0b0100";
        ram[369] = "0b0011";
        ram[370] = "0b0010";
        ram[371] = "0b1100";
        ram[372] = "0b1001";
        ram[373] = "0b0101";
        ram[374] = "0b1111";
        ram[375] = "0b1010";
        ram[376] = "0b1011";
        ram[377] = "0b1110";
        ram[378] = "0b0001";
        ram[379] = "0b0111";
        ram[380] = "0b0110";
        ram[381] = "0b0000";
        ram[382] = "0b1000";
        ram[383] = "0b1101";
        ram[384] = "0b0100";
        ram[385] = "0b1011";
        ram[386] = "0b0010";
        ram[387] = "0b1110";
        ram[388] = "0b1111";
        ram[389] = "0b0000";
        ram[390] = "0b1000";
        ram[391] = "0b1101";
        ram[392] = "0b0011";
        ram[393] = "0b1100";
        ram[394] = "0b1001";
        ram[395] = "0b0111";
        ram[396] = "0b0101";
        ram[397] = "0b1010";
        ram[398] = "0b0110";
        ram[399] = "0b0001";
        ram[400] = "0b1101";
        ram[401] = "0b0000";
        ram[402] = "0b1011";
        ram[403] = "0b0111";
        ram[404] = "0b0100";
        ram[405] = "0b1001";
        ram[406] = "0b0001";
        ram[407] = "0b1010";
        ram[408] = "0b1110";
        ram[409] = "0b0011";
        ram[410] = "0b0101";
        ram[411] = "0b1100";
        ram[412] = "0b0010";
        ram[413] = "0b1111";
        ram[414] = "0b1000";
        ram[415] = "0b0110";
        ram[416] = "0b0001";
        ram[417] = "0b0100";
        ram[418] = "0b1011";
        ram[419] = "0b1101";
        ram[420] = "0b1100";
        ram[421] = "0b0011";
        ram[422] = "0b0111";
        ram[423] = "0b1110";
        ram[424] = "0b1010";
        ram[425] = "0b1111";
        ram[426] = "0b0110";
        ram[427] = "0b1000";
        ram[428] = "0b0000";
        ram[429] = "0b0101";
        ram[430] = "0b1001";
        ram[431] = "0b0010";
        ram[432] = "0b0110";
        ram[433] = "0b1011";
        ram[434] = "0b1101";
        ram[435] = "0b1000";
        ram[436] = "0b0001";
        ram[437] = "0b0100";
        ram[438] = "0b1010";
        ram[439] = "0b0111";
        ram[440] = "0b1001";
        ram[441] = "0b0101";
        ram[442] = "0b0000";
        ram[443] = "0b1111";
        ram[444] = "0b1110";
        ram[445] = "0b0010";
        ram[446] = "0b0011";
        ram[447] = "0b1100";
        ram[448] = "0b1101";
        ram[449] = "0b0010";
        ram[450] = "0b1000";
        ram[451] = "0b0100";
        ram[452] = "0b0110";
        ram[453] = "0b1111";
        ram[454] = "0b1011";
        ram[455] = "0b0001";
        ram[456] = "0b1010";
        ram[457] = "0b1001";
        ram[458] = "0b0011";
        ram[459] = "0b1110";
        ram[460] = "0b0101";
        ram[461] = "0b0000";
        ram[462] = "0b1100";
        ram[463] = "0b0111";
        ram[464] = "0b0001";
        ram[465] = "0b1111";
        ram[466] = "0b1101";
        ram[467] = "0b1000";
        ram[468] = "0b1010";
        ram[469] = "0b0011";
        ram[470] = "0b0111";
        ram[471] = "0b0100";
        ram[472] = "0b1100";
        ram[473] = "0b0101";
        ram[474] = "0b0110";
        ram[475] = "0b1011";
        ram[476] = "0b0000";
        ram[477] = "0b1110";
        ram[478] = "0b1001";
        ram[479] = "0b0010";
        ram[480] = "0b0111";
        ram[481] = "0b1011";
        ram[482] = "0b0100";
        ram[483] = "0b0001";
        ram[484] = "0b1001";
        ram[485] = "0b1100";
        ram[486] = "0b1110";
        ram[487] = "0b0010";
        ram[488] = "0b0000";
        ram[489] = "0b0110";
        ram[490] = "0b1010";
        ram[491] = "0b1101";
        ram[492] = "0b1111";
        ram[493] = "0b0011";
        ram[494] = "0b0101";
        ram[495] = "0b1000";
        ram[496] = "0b0010";
        ram[497] = "0b0001";
        ram[498] = "0b1110";
        ram[499] = "0b0111";
        ram[500] = "0b0100";
        ram[501] = "0b1010";
        ram[502] = "0b1000";
        ram[503] = "0b1101";
        ram[504] = "0b1111";
        ram[505] = "0b1100";
        ram[506] = "0b1001";
        ram[507] = "0b0000";
        ram[508] = "0b0011";
        ram[509] = "0b0101";
        ram[510] = "0b0110";
        ram[511] = "0b1011";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
  sensitive<<clk.pos();


SC_METHOD(prc_write_3);
  sensitive<<clk.pos();


SC_METHOD(prc_write_4);
  sensitive<<clk.pos();


SC_METHOD(prc_write_5);
  sensitive<<clk.pos();


SC_METHOD(prc_write_6);
  sensitive<<clk.pos();


SC_METHOD(prc_write_7);
  sensitive<<clk.pos();


SC_METHOD(prc_write_8);
  sensitive<<clk.pos();


SC_METHOD(prc_write_9);
  sensitive<<clk.pos();


SC_METHOD(prc_write_10);
  sensitive<<clk.pos();


SC_METHOD(prc_write_11);
  sensitive<<clk.pos();


SC_METHOD(prc_write_12);
  sensitive<<clk.pos();


SC_METHOD(prc_write_13);
  sensitive<<clk.pos();


SC_METHOD(prc_write_14);
  sensitive<<clk.pos();


SC_METHOD(prc_write_15);
  sensitive<<clk.pos();


SC_METHOD(prc_write_16);
  sensitive<<clk.pos();


SC_METHOD(prc_write_17);
  sensitive<<clk.pos();


SC_METHOD(prc_write_18);
  sensitive<<clk.pos();


SC_METHOD(prc_write_19);
  sensitive<<clk.pos();


SC_METHOD(prc_write_20);
  sensitive<<clk.pos();


SC_METHOD(prc_write_21);
  sensitive<<clk.pos();


SC_METHOD(prc_write_22);
  sensitive<<clk.pos();


SC_METHOD(prc_write_23);
  sensitive<<clk.pos();


SC_METHOD(prc_write_24);
  sensitive<<clk.pos();


SC_METHOD(prc_write_25);
  sensitive<<clk.pos();


SC_METHOD(prc_write_26);
  sensitive<<clk.pos();


SC_METHOD(prc_write_27);
  sensitive<<clk.pos();


SC_METHOD(prc_write_28);
  sensitive<<clk.pos();


SC_METHOD(prc_write_29);
  sensitive<<clk.pos();


SC_METHOD(prc_write_30);
  sensitive<<clk.pos();


SC_METHOD(prc_write_31);
  sensitive<<clk.pos();


SC_METHOD(prc_write_32);
  sensitive<<clk.pos();


SC_METHOD(prc_write_33);
  sensitive<<clk.pos();


SC_METHOD(prc_write_34);
  sensitive<<clk.pos();


SC_METHOD(prc_write_35);
  sensitive<<clk.pos();


SC_METHOD(prc_write_36);
  sensitive<<clk.pos();


SC_METHOD(prc_write_37);
  sensitive<<clk.pos();


SC_METHOD(prc_write_38);
  sensitive<<clk.pos();


SC_METHOD(prc_write_39);
  sensitive<<clk.pos();


SC_METHOD(prc_write_40);
  sensitive<<clk.pos();


SC_METHOD(prc_write_41);
  sensitive<<clk.pos();


SC_METHOD(prc_write_42);
  sensitive<<clk.pos();


SC_METHOD(prc_write_43);
  sensitive<<clk.pos();


SC_METHOD(prc_write_44);
  sensitive<<clk.pos();


SC_METHOD(prc_write_45);
  sensitive<<clk.pos();


SC_METHOD(prc_write_46);
  sensitive<<clk.pos();


SC_METHOD(prc_write_47);
  sensitive<<clk.pos();


SC_METHOD(prc_write_48);
  sensitive<<clk.pos();


SC_METHOD(prc_write_49);
  sensitive<<clk.pos();


SC_METHOD(prc_write_50);
  sensitive<<clk.pos();


SC_METHOD(prc_write_51);
  sensitive<<clk.pos();


SC_METHOD(prc_write_52);
  sensitive<<clk.pos();


SC_METHOD(prc_write_53);
  sensitive<<clk.pos();


SC_METHOD(prc_write_54);
  sensitive<<clk.pos();


SC_METHOD(prc_write_55);
  sensitive<<clk.pos();


SC_METHOD(prc_write_56);
  sensitive<<clk.pos();


SC_METHOD(prc_write_57);
  sensitive<<clk.pos();


SC_METHOD(prc_write_58);
  sensitive<<clk.pos();


SC_METHOD(prc_write_59);
  sensitive<<clk.pos();


SC_METHOD(prc_write_60);
  sensitive<<clk.pos();


SC_METHOD(prc_write_61);
  sensitive<<clk.pos();


SC_METHOD(prc_write_62);
  sensitive<<clk.pos();


SC_METHOD(prc_write_63);
  sensitive<<clk.pos();


SC_METHOD(prc_write_64);
  sensitive<<clk.pos();


SC_METHOD(prc_write_65);
  sensitive<<clk.pos();


SC_METHOD(prc_write_66);
  sensitive<<clk.pos();


SC_METHOD(prc_write_67);
  sensitive<<clk.pos();


SC_METHOD(prc_write_68);
  sensitive<<clk.pos();


SC_METHOD(prc_write_69);
  sensitive<<clk.pos();


SC_METHOD(prc_write_70);
  sensitive<<clk.pos();


SC_METHOD(prc_write_71);
  sensitive<<clk.pos();


SC_METHOD(prc_write_72);
  sensitive<<clk.pos();


SC_METHOD(prc_write_73);
  sensitive<<clk.pos();


SC_METHOD(prc_write_74);
  sensitive<<clk.pos();


SC_METHOD(prc_write_75);
  sensitive<<clk.pos();


SC_METHOD(prc_write_76);
  sensitive<<clk.pos();


SC_METHOD(prc_write_77);
  sensitive<<clk.pos();


SC_METHOD(prc_write_78);
  sensitive<<clk.pos();


SC_METHOD(prc_write_79);
  sensitive<<clk.pos();


SC_METHOD(prc_write_80);
  sensitive<<clk.pos();


SC_METHOD(prc_write_81);
  sensitive<<clk.pos();


SC_METHOD(prc_write_82);
  sensitive<<clk.pos();


SC_METHOD(prc_write_83);
  sensitive<<clk.pos();


SC_METHOD(prc_write_84);
  sensitive<<clk.pos();


SC_METHOD(prc_write_85);
  sensitive<<clk.pos();


SC_METHOD(prc_write_86);
  sensitive<<clk.pos();


SC_METHOD(prc_write_87);
  sensitive<<clk.pos();


SC_METHOD(prc_write_88);
  sensitive<<clk.pos();


SC_METHOD(prc_write_89);
  sensitive<<clk.pos();


SC_METHOD(prc_write_90);
  sensitive<<clk.pos();


SC_METHOD(prc_write_91);
  sensitive<<clk.pos();


SC_METHOD(prc_write_92);
  sensitive<<clk.pos();


SC_METHOD(prc_write_93);
  sensitive<<clk.pos();


SC_METHOD(prc_write_94);
  sensitive<<clk.pos();


SC_METHOD(prc_write_95);
  sensitive<<clk.pos();


SC_METHOD(prc_write_96);
  sensitive<<clk.pos();


SC_METHOD(prc_write_97);
  sensitive<<clk.pos();


SC_METHOD(prc_write_98);
  sensitive<<clk.pos();


SC_METHOD(prc_write_99);
  sensitive<<clk.pos();


SC_METHOD(prc_write_100);
  sensitive<<clk.pos();


SC_METHOD(prc_write_101);
  sensitive<<clk.pos();


SC_METHOD(prc_write_102);
  sensitive<<clk.pos();


SC_METHOD(prc_write_103);
  sensitive<<clk.pos();


SC_METHOD(prc_write_104);
  sensitive<<clk.pos();


SC_METHOD(prc_write_105);
  sensitive<<clk.pos();


SC_METHOD(prc_write_106);
  sensitive<<clk.pos();


SC_METHOD(prc_write_107);
  sensitive<<clk.pos();


SC_METHOD(prc_write_108);
  sensitive<<clk.pos();


SC_METHOD(prc_write_109);
  sensitive<<clk.pos();


SC_METHOD(prc_write_110);
  sensitive<<clk.pos();


SC_METHOD(prc_write_111);
  sensitive<<clk.pos();


SC_METHOD(prc_write_112);
  sensitive<<clk.pos();


SC_METHOD(prc_write_113);
  sensitive<<clk.pos();


SC_METHOD(prc_write_114);
  sensitive<<clk.pos();


SC_METHOD(prc_write_115);
  sensitive<<clk.pos();


SC_METHOD(prc_write_116);
  sensitive<<clk.pos();


SC_METHOD(prc_write_117);
  sensitive<<clk.pos();


SC_METHOD(prc_write_118);
  sensitive<<clk.pos();


SC_METHOD(prc_write_119);
  sensitive<<clk.pos();


SC_METHOD(prc_write_120);
  sensitive<<clk.pos();


SC_METHOD(prc_write_121);
  sensitive<<clk.pos();


SC_METHOD(prc_write_122);
  sensitive<<clk.pos();


SC_METHOD(prc_write_123);
  sensitive<<clk.pos();


SC_METHOD(prc_write_124);
  sensitive<<clk.pos();


SC_METHOD(prc_write_125);
  sensitive<<clk.pos();


SC_METHOD(prc_write_126);
  sensitive<<clk.pos();


SC_METHOD(prc_write_127);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


void prc_write_3()
{
    if (ce3.read() == sc_dt::Log_1) 
    {
            if(address3.read().is_01() && address3.read().to_uint()<AddressRange)
              q3 = ram[address3.read().to_uint()];
            else
              q3 = sc_lv<DataWidth>();
    }
}


void prc_write_4()
{
    if (ce4.read() == sc_dt::Log_1) 
    {
            if(address4.read().is_01() && address4.read().to_uint()<AddressRange)
              q4 = ram[address4.read().to_uint()];
            else
              q4 = sc_lv<DataWidth>();
    }
}


void prc_write_5()
{
    if (ce5.read() == sc_dt::Log_1) 
    {
            if(address5.read().is_01() && address5.read().to_uint()<AddressRange)
              q5 = ram[address5.read().to_uint()];
            else
              q5 = sc_lv<DataWidth>();
    }
}


void prc_write_6()
{
    if (ce6.read() == sc_dt::Log_1) 
    {
            if(address6.read().is_01() && address6.read().to_uint()<AddressRange)
              q6 = ram[address6.read().to_uint()];
            else
              q6 = sc_lv<DataWidth>();
    }
}


void prc_write_7()
{
    if (ce7.read() == sc_dt::Log_1) 
    {
            if(address7.read().is_01() && address7.read().to_uint()<AddressRange)
              q7 = ram[address7.read().to_uint()];
            else
              q7 = sc_lv<DataWidth>();
    }
}


void prc_write_8()
{
    if (ce8.read() == sc_dt::Log_1) 
    {
            if(address8.read().is_01() && address8.read().to_uint()<AddressRange)
              q8 = ram[address8.read().to_uint()];
            else
              q8 = sc_lv<DataWidth>();
    }
}


void prc_write_9()
{
    if (ce9.read() == sc_dt::Log_1) 
    {
            if(address9.read().is_01() && address9.read().to_uint()<AddressRange)
              q9 = ram[address9.read().to_uint()];
            else
              q9 = sc_lv<DataWidth>();
    }
}


void prc_write_10()
{
    if (ce10.read() == sc_dt::Log_1) 
    {
            if(address10.read().is_01() && address10.read().to_uint()<AddressRange)
              q10 = ram[address10.read().to_uint()];
            else
              q10 = sc_lv<DataWidth>();
    }
}


void prc_write_11()
{
    if (ce11.read() == sc_dt::Log_1) 
    {
            if(address11.read().is_01() && address11.read().to_uint()<AddressRange)
              q11 = ram[address11.read().to_uint()];
            else
              q11 = sc_lv<DataWidth>();
    }
}


void prc_write_12()
{
    if (ce12.read() == sc_dt::Log_1) 
    {
            if(address12.read().is_01() && address12.read().to_uint()<AddressRange)
              q12 = ram[address12.read().to_uint()];
            else
              q12 = sc_lv<DataWidth>();
    }
}


void prc_write_13()
{
    if (ce13.read() == sc_dt::Log_1) 
    {
            if(address13.read().is_01() && address13.read().to_uint()<AddressRange)
              q13 = ram[address13.read().to_uint()];
            else
              q13 = sc_lv<DataWidth>();
    }
}


void prc_write_14()
{
    if (ce14.read() == sc_dt::Log_1) 
    {
            if(address14.read().is_01() && address14.read().to_uint()<AddressRange)
              q14 = ram[address14.read().to_uint()];
            else
              q14 = sc_lv<DataWidth>();
    }
}


void prc_write_15()
{
    if (ce15.read() == sc_dt::Log_1) 
    {
            if(address15.read().is_01() && address15.read().to_uint()<AddressRange)
              q15 = ram[address15.read().to_uint()];
            else
              q15 = sc_lv<DataWidth>();
    }
}


void prc_write_16()
{
    if (ce16.read() == sc_dt::Log_1) 
    {
            if(address16.read().is_01() && address16.read().to_uint()<AddressRange)
              q16 = ram[address16.read().to_uint()];
            else
              q16 = sc_lv<DataWidth>();
    }
}


void prc_write_17()
{
    if (ce17.read() == sc_dt::Log_1) 
    {
            if(address17.read().is_01() && address17.read().to_uint()<AddressRange)
              q17 = ram[address17.read().to_uint()];
            else
              q17 = sc_lv<DataWidth>();
    }
}


void prc_write_18()
{
    if (ce18.read() == sc_dt::Log_1) 
    {
            if(address18.read().is_01() && address18.read().to_uint()<AddressRange)
              q18 = ram[address18.read().to_uint()];
            else
              q18 = sc_lv<DataWidth>();
    }
}


void prc_write_19()
{
    if (ce19.read() == sc_dt::Log_1) 
    {
            if(address19.read().is_01() && address19.read().to_uint()<AddressRange)
              q19 = ram[address19.read().to_uint()];
            else
              q19 = sc_lv<DataWidth>();
    }
}


void prc_write_20()
{
    if (ce20.read() == sc_dt::Log_1) 
    {
            if(address20.read().is_01() && address20.read().to_uint()<AddressRange)
              q20 = ram[address20.read().to_uint()];
            else
              q20 = sc_lv<DataWidth>();
    }
}


void prc_write_21()
{
    if (ce21.read() == sc_dt::Log_1) 
    {
            if(address21.read().is_01() && address21.read().to_uint()<AddressRange)
              q21 = ram[address21.read().to_uint()];
            else
              q21 = sc_lv<DataWidth>();
    }
}


void prc_write_22()
{
    if (ce22.read() == sc_dt::Log_1) 
    {
            if(address22.read().is_01() && address22.read().to_uint()<AddressRange)
              q22 = ram[address22.read().to_uint()];
            else
              q22 = sc_lv<DataWidth>();
    }
}


void prc_write_23()
{
    if (ce23.read() == sc_dt::Log_1) 
    {
            if(address23.read().is_01() && address23.read().to_uint()<AddressRange)
              q23 = ram[address23.read().to_uint()];
            else
              q23 = sc_lv<DataWidth>();
    }
}


void prc_write_24()
{
    if (ce24.read() == sc_dt::Log_1) 
    {
            if(address24.read().is_01() && address24.read().to_uint()<AddressRange)
              q24 = ram[address24.read().to_uint()];
            else
              q24 = sc_lv<DataWidth>();
    }
}


void prc_write_25()
{
    if (ce25.read() == sc_dt::Log_1) 
    {
            if(address25.read().is_01() && address25.read().to_uint()<AddressRange)
              q25 = ram[address25.read().to_uint()];
            else
              q25 = sc_lv<DataWidth>();
    }
}


void prc_write_26()
{
    if (ce26.read() == sc_dt::Log_1) 
    {
            if(address26.read().is_01() && address26.read().to_uint()<AddressRange)
              q26 = ram[address26.read().to_uint()];
            else
              q26 = sc_lv<DataWidth>();
    }
}


void prc_write_27()
{
    if (ce27.read() == sc_dt::Log_1) 
    {
            if(address27.read().is_01() && address27.read().to_uint()<AddressRange)
              q27 = ram[address27.read().to_uint()];
            else
              q27 = sc_lv<DataWidth>();
    }
}


void prc_write_28()
{
    if (ce28.read() == sc_dt::Log_1) 
    {
            if(address28.read().is_01() && address28.read().to_uint()<AddressRange)
              q28 = ram[address28.read().to_uint()];
            else
              q28 = sc_lv<DataWidth>();
    }
}


void prc_write_29()
{
    if (ce29.read() == sc_dt::Log_1) 
    {
            if(address29.read().is_01() && address29.read().to_uint()<AddressRange)
              q29 = ram[address29.read().to_uint()];
            else
              q29 = sc_lv<DataWidth>();
    }
}


void prc_write_30()
{
    if (ce30.read() == sc_dt::Log_1) 
    {
            if(address30.read().is_01() && address30.read().to_uint()<AddressRange)
              q30 = ram[address30.read().to_uint()];
            else
              q30 = sc_lv<DataWidth>();
    }
}


void prc_write_31()
{
    if (ce31.read() == sc_dt::Log_1) 
    {
            if(address31.read().is_01() && address31.read().to_uint()<AddressRange)
              q31 = ram[address31.read().to_uint()];
            else
              q31 = sc_lv<DataWidth>();
    }
}


void prc_write_32()
{
    if (ce32.read() == sc_dt::Log_1) 
    {
            if(address32.read().is_01() && address32.read().to_uint()<AddressRange)
              q32 = ram[address32.read().to_uint()];
            else
              q32 = sc_lv<DataWidth>();
    }
}


void prc_write_33()
{
    if (ce33.read() == sc_dt::Log_1) 
    {
            if(address33.read().is_01() && address33.read().to_uint()<AddressRange)
              q33 = ram[address33.read().to_uint()];
            else
              q33 = sc_lv<DataWidth>();
    }
}


void prc_write_34()
{
    if (ce34.read() == sc_dt::Log_1) 
    {
            if(address34.read().is_01() && address34.read().to_uint()<AddressRange)
              q34 = ram[address34.read().to_uint()];
            else
              q34 = sc_lv<DataWidth>();
    }
}


void prc_write_35()
{
    if (ce35.read() == sc_dt::Log_1) 
    {
            if(address35.read().is_01() && address35.read().to_uint()<AddressRange)
              q35 = ram[address35.read().to_uint()];
            else
              q35 = sc_lv<DataWidth>();
    }
}


void prc_write_36()
{
    if (ce36.read() == sc_dt::Log_1) 
    {
            if(address36.read().is_01() && address36.read().to_uint()<AddressRange)
              q36 = ram[address36.read().to_uint()];
            else
              q36 = sc_lv<DataWidth>();
    }
}


void prc_write_37()
{
    if (ce37.read() == sc_dt::Log_1) 
    {
            if(address37.read().is_01() && address37.read().to_uint()<AddressRange)
              q37 = ram[address37.read().to_uint()];
            else
              q37 = sc_lv<DataWidth>();
    }
}


void prc_write_38()
{
    if (ce38.read() == sc_dt::Log_1) 
    {
            if(address38.read().is_01() && address38.read().to_uint()<AddressRange)
              q38 = ram[address38.read().to_uint()];
            else
              q38 = sc_lv<DataWidth>();
    }
}


void prc_write_39()
{
    if (ce39.read() == sc_dt::Log_1) 
    {
            if(address39.read().is_01() && address39.read().to_uint()<AddressRange)
              q39 = ram[address39.read().to_uint()];
            else
              q39 = sc_lv<DataWidth>();
    }
}


void prc_write_40()
{
    if (ce40.read() == sc_dt::Log_1) 
    {
            if(address40.read().is_01() && address40.read().to_uint()<AddressRange)
              q40 = ram[address40.read().to_uint()];
            else
              q40 = sc_lv<DataWidth>();
    }
}


void prc_write_41()
{
    if (ce41.read() == sc_dt::Log_1) 
    {
            if(address41.read().is_01() && address41.read().to_uint()<AddressRange)
              q41 = ram[address41.read().to_uint()];
            else
              q41 = sc_lv<DataWidth>();
    }
}


void prc_write_42()
{
    if (ce42.read() == sc_dt::Log_1) 
    {
            if(address42.read().is_01() && address42.read().to_uint()<AddressRange)
              q42 = ram[address42.read().to_uint()];
            else
              q42 = sc_lv<DataWidth>();
    }
}


void prc_write_43()
{
    if (ce43.read() == sc_dt::Log_1) 
    {
            if(address43.read().is_01() && address43.read().to_uint()<AddressRange)
              q43 = ram[address43.read().to_uint()];
            else
              q43 = sc_lv<DataWidth>();
    }
}


void prc_write_44()
{
    if (ce44.read() == sc_dt::Log_1) 
    {
            if(address44.read().is_01() && address44.read().to_uint()<AddressRange)
              q44 = ram[address44.read().to_uint()];
            else
              q44 = sc_lv<DataWidth>();
    }
}


void prc_write_45()
{
    if (ce45.read() == sc_dt::Log_1) 
    {
            if(address45.read().is_01() && address45.read().to_uint()<AddressRange)
              q45 = ram[address45.read().to_uint()];
            else
              q45 = sc_lv<DataWidth>();
    }
}


void prc_write_46()
{
    if (ce46.read() == sc_dt::Log_1) 
    {
            if(address46.read().is_01() && address46.read().to_uint()<AddressRange)
              q46 = ram[address46.read().to_uint()];
            else
              q46 = sc_lv<DataWidth>();
    }
}


void prc_write_47()
{
    if (ce47.read() == sc_dt::Log_1) 
    {
            if(address47.read().is_01() && address47.read().to_uint()<AddressRange)
              q47 = ram[address47.read().to_uint()];
            else
              q47 = sc_lv<DataWidth>();
    }
}


void prc_write_48()
{
    if (ce48.read() == sc_dt::Log_1) 
    {
            if(address48.read().is_01() && address48.read().to_uint()<AddressRange)
              q48 = ram[address48.read().to_uint()];
            else
              q48 = sc_lv<DataWidth>();
    }
}


void prc_write_49()
{
    if (ce49.read() == sc_dt::Log_1) 
    {
            if(address49.read().is_01() && address49.read().to_uint()<AddressRange)
              q49 = ram[address49.read().to_uint()];
            else
              q49 = sc_lv<DataWidth>();
    }
}


void prc_write_50()
{
    if (ce50.read() == sc_dt::Log_1) 
    {
            if(address50.read().is_01() && address50.read().to_uint()<AddressRange)
              q50 = ram[address50.read().to_uint()];
            else
              q50 = sc_lv<DataWidth>();
    }
}


void prc_write_51()
{
    if (ce51.read() == sc_dt::Log_1) 
    {
            if(address51.read().is_01() && address51.read().to_uint()<AddressRange)
              q51 = ram[address51.read().to_uint()];
            else
              q51 = sc_lv<DataWidth>();
    }
}


void prc_write_52()
{
    if (ce52.read() == sc_dt::Log_1) 
    {
            if(address52.read().is_01() && address52.read().to_uint()<AddressRange)
              q52 = ram[address52.read().to_uint()];
            else
              q52 = sc_lv<DataWidth>();
    }
}


void prc_write_53()
{
    if (ce53.read() == sc_dt::Log_1) 
    {
            if(address53.read().is_01() && address53.read().to_uint()<AddressRange)
              q53 = ram[address53.read().to_uint()];
            else
              q53 = sc_lv<DataWidth>();
    }
}


void prc_write_54()
{
    if (ce54.read() == sc_dt::Log_1) 
    {
            if(address54.read().is_01() && address54.read().to_uint()<AddressRange)
              q54 = ram[address54.read().to_uint()];
            else
              q54 = sc_lv<DataWidth>();
    }
}


void prc_write_55()
{
    if (ce55.read() == sc_dt::Log_1) 
    {
            if(address55.read().is_01() && address55.read().to_uint()<AddressRange)
              q55 = ram[address55.read().to_uint()];
            else
              q55 = sc_lv<DataWidth>();
    }
}


void prc_write_56()
{
    if (ce56.read() == sc_dt::Log_1) 
    {
            if(address56.read().is_01() && address56.read().to_uint()<AddressRange)
              q56 = ram[address56.read().to_uint()];
            else
              q56 = sc_lv<DataWidth>();
    }
}


void prc_write_57()
{
    if (ce57.read() == sc_dt::Log_1) 
    {
            if(address57.read().is_01() && address57.read().to_uint()<AddressRange)
              q57 = ram[address57.read().to_uint()];
            else
              q57 = sc_lv<DataWidth>();
    }
}


void prc_write_58()
{
    if (ce58.read() == sc_dt::Log_1) 
    {
            if(address58.read().is_01() && address58.read().to_uint()<AddressRange)
              q58 = ram[address58.read().to_uint()];
            else
              q58 = sc_lv<DataWidth>();
    }
}


void prc_write_59()
{
    if (ce59.read() == sc_dt::Log_1) 
    {
            if(address59.read().is_01() && address59.read().to_uint()<AddressRange)
              q59 = ram[address59.read().to_uint()];
            else
              q59 = sc_lv<DataWidth>();
    }
}


void prc_write_60()
{
    if (ce60.read() == sc_dt::Log_1) 
    {
            if(address60.read().is_01() && address60.read().to_uint()<AddressRange)
              q60 = ram[address60.read().to_uint()];
            else
              q60 = sc_lv<DataWidth>();
    }
}


void prc_write_61()
{
    if (ce61.read() == sc_dt::Log_1) 
    {
            if(address61.read().is_01() && address61.read().to_uint()<AddressRange)
              q61 = ram[address61.read().to_uint()];
            else
              q61 = sc_lv<DataWidth>();
    }
}


void prc_write_62()
{
    if (ce62.read() == sc_dt::Log_1) 
    {
            if(address62.read().is_01() && address62.read().to_uint()<AddressRange)
              q62 = ram[address62.read().to_uint()];
            else
              q62 = sc_lv<DataWidth>();
    }
}


void prc_write_63()
{
    if (ce63.read() == sc_dt::Log_1) 
    {
            if(address63.read().is_01() && address63.read().to_uint()<AddressRange)
              q63 = ram[address63.read().to_uint()];
            else
              q63 = sc_lv<DataWidth>();
    }
}


void prc_write_64()
{
    if (ce64.read() == sc_dt::Log_1) 
    {
            if(address64.read().is_01() && address64.read().to_uint()<AddressRange)
              q64 = ram[address64.read().to_uint()];
            else
              q64 = sc_lv<DataWidth>();
    }
}


void prc_write_65()
{
    if (ce65.read() == sc_dt::Log_1) 
    {
            if(address65.read().is_01() && address65.read().to_uint()<AddressRange)
              q65 = ram[address65.read().to_uint()];
            else
              q65 = sc_lv<DataWidth>();
    }
}


void prc_write_66()
{
    if (ce66.read() == sc_dt::Log_1) 
    {
            if(address66.read().is_01() && address66.read().to_uint()<AddressRange)
              q66 = ram[address66.read().to_uint()];
            else
              q66 = sc_lv<DataWidth>();
    }
}


void prc_write_67()
{
    if (ce67.read() == sc_dt::Log_1) 
    {
            if(address67.read().is_01() && address67.read().to_uint()<AddressRange)
              q67 = ram[address67.read().to_uint()];
            else
              q67 = sc_lv<DataWidth>();
    }
}


void prc_write_68()
{
    if (ce68.read() == sc_dt::Log_1) 
    {
            if(address68.read().is_01() && address68.read().to_uint()<AddressRange)
              q68 = ram[address68.read().to_uint()];
            else
              q68 = sc_lv<DataWidth>();
    }
}


void prc_write_69()
{
    if (ce69.read() == sc_dt::Log_1) 
    {
            if(address69.read().is_01() && address69.read().to_uint()<AddressRange)
              q69 = ram[address69.read().to_uint()];
            else
              q69 = sc_lv<DataWidth>();
    }
}


void prc_write_70()
{
    if (ce70.read() == sc_dt::Log_1) 
    {
            if(address70.read().is_01() && address70.read().to_uint()<AddressRange)
              q70 = ram[address70.read().to_uint()];
            else
              q70 = sc_lv<DataWidth>();
    }
}


void prc_write_71()
{
    if (ce71.read() == sc_dt::Log_1) 
    {
            if(address71.read().is_01() && address71.read().to_uint()<AddressRange)
              q71 = ram[address71.read().to_uint()];
            else
              q71 = sc_lv<DataWidth>();
    }
}


void prc_write_72()
{
    if (ce72.read() == sc_dt::Log_1) 
    {
            if(address72.read().is_01() && address72.read().to_uint()<AddressRange)
              q72 = ram[address72.read().to_uint()];
            else
              q72 = sc_lv<DataWidth>();
    }
}


void prc_write_73()
{
    if (ce73.read() == sc_dt::Log_1) 
    {
            if(address73.read().is_01() && address73.read().to_uint()<AddressRange)
              q73 = ram[address73.read().to_uint()];
            else
              q73 = sc_lv<DataWidth>();
    }
}


void prc_write_74()
{
    if (ce74.read() == sc_dt::Log_1) 
    {
            if(address74.read().is_01() && address74.read().to_uint()<AddressRange)
              q74 = ram[address74.read().to_uint()];
            else
              q74 = sc_lv<DataWidth>();
    }
}


void prc_write_75()
{
    if (ce75.read() == sc_dt::Log_1) 
    {
            if(address75.read().is_01() && address75.read().to_uint()<AddressRange)
              q75 = ram[address75.read().to_uint()];
            else
              q75 = sc_lv<DataWidth>();
    }
}


void prc_write_76()
{
    if (ce76.read() == sc_dt::Log_1) 
    {
            if(address76.read().is_01() && address76.read().to_uint()<AddressRange)
              q76 = ram[address76.read().to_uint()];
            else
              q76 = sc_lv<DataWidth>();
    }
}


void prc_write_77()
{
    if (ce77.read() == sc_dt::Log_1) 
    {
            if(address77.read().is_01() && address77.read().to_uint()<AddressRange)
              q77 = ram[address77.read().to_uint()];
            else
              q77 = sc_lv<DataWidth>();
    }
}


void prc_write_78()
{
    if (ce78.read() == sc_dt::Log_1) 
    {
            if(address78.read().is_01() && address78.read().to_uint()<AddressRange)
              q78 = ram[address78.read().to_uint()];
            else
              q78 = sc_lv<DataWidth>();
    }
}


void prc_write_79()
{
    if (ce79.read() == sc_dt::Log_1) 
    {
            if(address79.read().is_01() && address79.read().to_uint()<AddressRange)
              q79 = ram[address79.read().to_uint()];
            else
              q79 = sc_lv<DataWidth>();
    }
}


void prc_write_80()
{
    if (ce80.read() == sc_dt::Log_1) 
    {
            if(address80.read().is_01() && address80.read().to_uint()<AddressRange)
              q80 = ram[address80.read().to_uint()];
            else
              q80 = sc_lv<DataWidth>();
    }
}


void prc_write_81()
{
    if (ce81.read() == sc_dt::Log_1) 
    {
            if(address81.read().is_01() && address81.read().to_uint()<AddressRange)
              q81 = ram[address81.read().to_uint()];
            else
              q81 = sc_lv<DataWidth>();
    }
}


void prc_write_82()
{
    if (ce82.read() == sc_dt::Log_1) 
    {
            if(address82.read().is_01() && address82.read().to_uint()<AddressRange)
              q82 = ram[address82.read().to_uint()];
            else
              q82 = sc_lv<DataWidth>();
    }
}


void prc_write_83()
{
    if (ce83.read() == sc_dt::Log_1) 
    {
            if(address83.read().is_01() && address83.read().to_uint()<AddressRange)
              q83 = ram[address83.read().to_uint()];
            else
              q83 = sc_lv<DataWidth>();
    }
}


void prc_write_84()
{
    if (ce84.read() == sc_dt::Log_1) 
    {
            if(address84.read().is_01() && address84.read().to_uint()<AddressRange)
              q84 = ram[address84.read().to_uint()];
            else
              q84 = sc_lv<DataWidth>();
    }
}


void prc_write_85()
{
    if (ce85.read() == sc_dt::Log_1) 
    {
            if(address85.read().is_01() && address85.read().to_uint()<AddressRange)
              q85 = ram[address85.read().to_uint()];
            else
              q85 = sc_lv<DataWidth>();
    }
}


void prc_write_86()
{
    if (ce86.read() == sc_dt::Log_1) 
    {
            if(address86.read().is_01() && address86.read().to_uint()<AddressRange)
              q86 = ram[address86.read().to_uint()];
            else
              q86 = sc_lv<DataWidth>();
    }
}


void prc_write_87()
{
    if (ce87.read() == sc_dt::Log_1) 
    {
            if(address87.read().is_01() && address87.read().to_uint()<AddressRange)
              q87 = ram[address87.read().to_uint()];
            else
              q87 = sc_lv<DataWidth>();
    }
}


void prc_write_88()
{
    if (ce88.read() == sc_dt::Log_1) 
    {
            if(address88.read().is_01() && address88.read().to_uint()<AddressRange)
              q88 = ram[address88.read().to_uint()];
            else
              q88 = sc_lv<DataWidth>();
    }
}


void prc_write_89()
{
    if (ce89.read() == sc_dt::Log_1) 
    {
            if(address89.read().is_01() && address89.read().to_uint()<AddressRange)
              q89 = ram[address89.read().to_uint()];
            else
              q89 = sc_lv<DataWidth>();
    }
}


void prc_write_90()
{
    if (ce90.read() == sc_dt::Log_1) 
    {
            if(address90.read().is_01() && address90.read().to_uint()<AddressRange)
              q90 = ram[address90.read().to_uint()];
            else
              q90 = sc_lv<DataWidth>();
    }
}


void prc_write_91()
{
    if (ce91.read() == sc_dt::Log_1) 
    {
            if(address91.read().is_01() && address91.read().to_uint()<AddressRange)
              q91 = ram[address91.read().to_uint()];
            else
              q91 = sc_lv<DataWidth>();
    }
}


void prc_write_92()
{
    if (ce92.read() == sc_dt::Log_1) 
    {
            if(address92.read().is_01() && address92.read().to_uint()<AddressRange)
              q92 = ram[address92.read().to_uint()];
            else
              q92 = sc_lv<DataWidth>();
    }
}


void prc_write_93()
{
    if (ce93.read() == sc_dt::Log_1) 
    {
            if(address93.read().is_01() && address93.read().to_uint()<AddressRange)
              q93 = ram[address93.read().to_uint()];
            else
              q93 = sc_lv<DataWidth>();
    }
}


void prc_write_94()
{
    if (ce94.read() == sc_dt::Log_1) 
    {
            if(address94.read().is_01() && address94.read().to_uint()<AddressRange)
              q94 = ram[address94.read().to_uint()];
            else
              q94 = sc_lv<DataWidth>();
    }
}


void prc_write_95()
{
    if (ce95.read() == sc_dt::Log_1) 
    {
            if(address95.read().is_01() && address95.read().to_uint()<AddressRange)
              q95 = ram[address95.read().to_uint()];
            else
              q95 = sc_lv<DataWidth>();
    }
}


void prc_write_96()
{
    if (ce96.read() == sc_dt::Log_1) 
    {
            if(address96.read().is_01() && address96.read().to_uint()<AddressRange)
              q96 = ram[address96.read().to_uint()];
            else
              q96 = sc_lv<DataWidth>();
    }
}


void prc_write_97()
{
    if (ce97.read() == sc_dt::Log_1) 
    {
            if(address97.read().is_01() && address97.read().to_uint()<AddressRange)
              q97 = ram[address97.read().to_uint()];
            else
              q97 = sc_lv<DataWidth>();
    }
}


void prc_write_98()
{
    if (ce98.read() == sc_dt::Log_1) 
    {
            if(address98.read().is_01() && address98.read().to_uint()<AddressRange)
              q98 = ram[address98.read().to_uint()];
            else
              q98 = sc_lv<DataWidth>();
    }
}


void prc_write_99()
{
    if (ce99.read() == sc_dt::Log_1) 
    {
            if(address99.read().is_01() && address99.read().to_uint()<AddressRange)
              q99 = ram[address99.read().to_uint()];
            else
              q99 = sc_lv<DataWidth>();
    }
}


void prc_write_100()
{
    if (ce100.read() == sc_dt::Log_1) 
    {
            if(address100.read().is_01() && address100.read().to_uint()<AddressRange)
              q100 = ram[address100.read().to_uint()];
            else
              q100 = sc_lv<DataWidth>();
    }
}


void prc_write_101()
{
    if (ce101.read() == sc_dt::Log_1) 
    {
            if(address101.read().is_01() && address101.read().to_uint()<AddressRange)
              q101 = ram[address101.read().to_uint()];
            else
              q101 = sc_lv<DataWidth>();
    }
}


void prc_write_102()
{
    if (ce102.read() == sc_dt::Log_1) 
    {
            if(address102.read().is_01() && address102.read().to_uint()<AddressRange)
              q102 = ram[address102.read().to_uint()];
            else
              q102 = sc_lv<DataWidth>();
    }
}


void prc_write_103()
{
    if (ce103.read() == sc_dt::Log_1) 
    {
            if(address103.read().is_01() && address103.read().to_uint()<AddressRange)
              q103 = ram[address103.read().to_uint()];
            else
              q103 = sc_lv<DataWidth>();
    }
}


void prc_write_104()
{
    if (ce104.read() == sc_dt::Log_1) 
    {
            if(address104.read().is_01() && address104.read().to_uint()<AddressRange)
              q104 = ram[address104.read().to_uint()];
            else
              q104 = sc_lv<DataWidth>();
    }
}


void prc_write_105()
{
    if (ce105.read() == sc_dt::Log_1) 
    {
            if(address105.read().is_01() && address105.read().to_uint()<AddressRange)
              q105 = ram[address105.read().to_uint()];
            else
              q105 = sc_lv<DataWidth>();
    }
}


void prc_write_106()
{
    if (ce106.read() == sc_dt::Log_1) 
    {
            if(address106.read().is_01() && address106.read().to_uint()<AddressRange)
              q106 = ram[address106.read().to_uint()];
            else
              q106 = sc_lv<DataWidth>();
    }
}


void prc_write_107()
{
    if (ce107.read() == sc_dt::Log_1) 
    {
            if(address107.read().is_01() && address107.read().to_uint()<AddressRange)
              q107 = ram[address107.read().to_uint()];
            else
              q107 = sc_lv<DataWidth>();
    }
}


void prc_write_108()
{
    if (ce108.read() == sc_dt::Log_1) 
    {
            if(address108.read().is_01() && address108.read().to_uint()<AddressRange)
              q108 = ram[address108.read().to_uint()];
            else
              q108 = sc_lv<DataWidth>();
    }
}


void prc_write_109()
{
    if (ce109.read() == sc_dt::Log_1) 
    {
            if(address109.read().is_01() && address109.read().to_uint()<AddressRange)
              q109 = ram[address109.read().to_uint()];
            else
              q109 = sc_lv<DataWidth>();
    }
}


void prc_write_110()
{
    if (ce110.read() == sc_dt::Log_1) 
    {
            if(address110.read().is_01() && address110.read().to_uint()<AddressRange)
              q110 = ram[address110.read().to_uint()];
            else
              q110 = sc_lv<DataWidth>();
    }
}


void prc_write_111()
{
    if (ce111.read() == sc_dt::Log_1) 
    {
            if(address111.read().is_01() && address111.read().to_uint()<AddressRange)
              q111 = ram[address111.read().to_uint()];
            else
              q111 = sc_lv<DataWidth>();
    }
}


void prc_write_112()
{
    if (ce112.read() == sc_dt::Log_1) 
    {
            if(address112.read().is_01() && address112.read().to_uint()<AddressRange)
              q112 = ram[address112.read().to_uint()];
            else
              q112 = sc_lv<DataWidth>();
    }
}


void prc_write_113()
{
    if (ce113.read() == sc_dt::Log_1) 
    {
            if(address113.read().is_01() && address113.read().to_uint()<AddressRange)
              q113 = ram[address113.read().to_uint()];
            else
              q113 = sc_lv<DataWidth>();
    }
}


void prc_write_114()
{
    if (ce114.read() == sc_dt::Log_1) 
    {
            if(address114.read().is_01() && address114.read().to_uint()<AddressRange)
              q114 = ram[address114.read().to_uint()];
            else
              q114 = sc_lv<DataWidth>();
    }
}


void prc_write_115()
{
    if (ce115.read() == sc_dt::Log_1) 
    {
            if(address115.read().is_01() && address115.read().to_uint()<AddressRange)
              q115 = ram[address115.read().to_uint()];
            else
              q115 = sc_lv<DataWidth>();
    }
}


void prc_write_116()
{
    if (ce116.read() == sc_dt::Log_1) 
    {
            if(address116.read().is_01() && address116.read().to_uint()<AddressRange)
              q116 = ram[address116.read().to_uint()];
            else
              q116 = sc_lv<DataWidth>();
    }
}


void prc_write_117()
{
    if (ce117.read() == sc_dt::Log_1) 
    {
            if(address117.read().is_01() && address117.read().to_uint()<AddressRange)
              q117 = ram[address117.read().to_uint()];
            else
              q117 = sc_lv<DataWidth>();
    }
}


void prc_write_118()
{
    if (ce118.read() == sc_dt::Log_1) 
    {
            if(address118.read().is_01() && address118.read().to_uint()<AddressRange)
              q118 = ram[address118.read().to_uint()];
            else
              q118 = sc_lv<DataWidth>();
    }
}


void prc_write_119()
{
    if (ce119.read() == sc_dt::Log_1) 
    {
            if(address119.read().is_01() && address119.read().to_uint()<AddressRange)
              q119 = ram[address119.read().to_uint()];
            else
              q119 = sc_lv<DataWidth>();
    }
}


void prc_write_120()
{
    if (ce120.read() == sc_dt::Log_1) 
    {
            if(address120.read().is_01() && address120.read().to_uint()<AddressRange)
              q120 = ram[address120.read().to_uint()];
            else
              q120 = sc_lv<DataWidth>();
    }
}


void prc_write_121()
{
    if (ce121.read() == sc_dt::Log_1) 
    {
            if(address121.read().is_01() && address121.read().to_uint()<AddressRange)
              q121 = ram[address121.read().to_uint()];
            else
              q121 = sc_lv<DataWidth>();
    }
}


void prc_write_122()
{
    if (ce122.read() == sc_dt::Log_1) 
    {
            if(address122.read().is_01() && address122.read().to_uint()<AddressRange)
              q122 = ram[address122.read().to_uint()];
            else
              q122 = sc_lv<DataWidth>();
    }
}


void prc_write_123()
{
    if (ce123.read() == sc_dt::Log_1) 
    {
            if(address123.read().is_01() && address123.read().to_uint()<AddressRange)
              q123 = ram[address123.read().to_uint()];
            else
              q123 = sc_lv<DataWidth>();
    }
}


void prc_write_124()
{
    if (ce124.read() == sc_dt::Log_1) 
    {
            if(address124.read().is_01() && address124.read().to_uint()<AddressRange)
              q124 = ram[address124.read().to_uint()];
            else
              q124 = sc_lv<DataWidth>();
    }
}


void prc_write_125()
{
    if (ce125.read() == sc_dt::Log_1) 
    {
            if(address125.read().is_01() && address125.read().to_uint()<AddressRange)
              q125 = ram[address125.read().to_uint()];
            else
              q125 = sc_lv<DataWidth>();
    }
}


void prc_write_126()
{
    if (ce126.read() == sc_dt::Log_1) 
    {
            if(address126.read().is_01() && address126.read().to_uint()<AddressRange)
              q126 = ram[address126.read().to_uint()];
            else
              q126 = sc_lv<DataWidth>();
    }
}


void prc_write_127()
{
    if (ce127.read() == sc_dt::Log_1) 
    {
            if(address127.read().is_01() && address127.read().to_uint()<AddressRange)
              q127 = ram[address127.read().to_uint()];
            else
              q127 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(des_dec_S) {


static const unsigned DataWidth = 4;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in<sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in<sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in<sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in<sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in<sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in<sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in <sc_lv<AddressWidth> > address9;
sc_core::sc_in<sc_logic> ce9;
sc_core::sc_out <sc_lv<DataWidth> > q9;
sc_core::sc_in <sc_lv<AddressWidth> > address10;
sc_core::sc_in<sc_logic> ce10;
sc_core::sc_out <sc_lv<DataWidth> > q10;
sc_core::sc_in <sc_lv<AddressWidth> > address11;
sc_core::sc_in<sc_logic> ce11;
sc_core::sc_out <sc_lv<DataWidth> > q11;
sc_core::sc_in <sc_lv<AddressWidth> > address12;
sc_core::sc_in<sc_logic> ce12;
sc_core::sc_out <sc_lv<DataWidth> > q12;
sc_core::sc_in <sc_lv<AddressWidth> > address13;
sc_core::sc_in<sc_logic> ce13;
sc_core::sc_out <sc_lv<DataWidth> > q13;
sc_core::sc_in <sc_lv<AddressWidth> > address14;
sc_core::sc_in<sc_logic> ce14;
sc_core::sc_out <sc_lv<DataWidth> > q14;
sc_core::sc_in <sc_lv<AddressWidth> > address15;
sc_core::sc_in<sc_logic> ce15;
sc_core::sc_out <sc_lv<DataWidth> > q15;
sc_core::sc_in <sc_lv<AddressWidth> > address16;
sc_core::sc_in<sc_logic> ce16;
sc_core::sc_out <sc_lv<DataWidth> > q16;
sc_core::sc_in <sc_lv<AddressWidth> > address17;
sc_core::sc_in<sc_logic> ce17;
sc_core::sc_out <sc_lv<DataWidth> > q17;
sc_core::sc_in <sc_lv<AddressWidth> > address18;
sc_core::sc_in<sc_logic> ce18;
sc_core::sc_out <sc_lv<DataWidth> > q18;
sc_core::sc_in <sc_lv<AddressWidth> > address19;
sc_core::sc_in<sc_logic> ce19;
sc_core::sc_out <sc_lv<DataWidth> > q19;
sc_core::sc_in <sc_lv<AddressWidth> > address20;
sc_core::sc_in<sc_logic> ce20;
sc_core::sc_out <sc_lv<DataWidth> > q20;
sc_core::sc_in <sc_lv<AddressWidth> > address21;
sc_core::sc_in<sc_logic> ce21;
sc_core::sc_out <sc_lv<DataWidth> > q21;
sc_core::sc_in <sc_lv<AddressWidth> > address22;
sc_core::sc_in<sc_logic> ce22;
sc_core::sc_out <sc_lv<DataWidth> > q22;
sc_core::sc_in <sc_lv<AddressWidth> > address23;
sc_core::sc_in<sc_logic> ce23;
sc_core::sc_out <sc_lv<DataWidth> > q23;
sc_core::sc_in <sc_lv<AddressWidth> > address24;
sc_core::sc_in<sc_logic> ce24;
sc_core::sc_out <sc_lv<DataWidth> > q24;
sc_core::sc_in <sc_lv<AddressWidth> > address25;
sc_core::sc_in<sc_logic> ce25;
sc_core::sc_out <sc_lv<DataWidth> > q25;
sc_core::sc_in <sc_lv<AddressWidth> > address26;
sc_core::sc_in<sc_logic> ce26;
sc_core::sc_out <sc_lv<DataWidth> > q26;
sc_core::sc_in <sc_lv<AddressWidth> > address27;
sc_core::sc_in<sc_logic> ce27;
sc_core::sc_out <sc_lv<DataWidth> > q27;
sc_core::sc_in <sc_lv<AddressWidth> > address28;
sc_core::sc_in<sc_logic> ce28;
sc_core::sc_out <sc_lv<DataWidth> > q28;
sc_core::sc_in <sc_lv<AddressWidth> > address29;
sc_core::sc_in<sc_logic> ce29;
sc_core::sc_out <sc_lv<DataWidth> > q29;
sc_core::sc_in <sc_lv<AddressWidth> > address30;
sc_core::sc_in<sc_logic> ce30;
sc_core::sc_out <sc_lv<DataWidth> > q30;
sc_core::sc_in <sc_lv<AddressWidth> > address31;
sc_core::sc_in<sc_logic> ce31;
sc_core::sc_out <sc_lv<DataWidth> > q31;
sc_core::sc_in <sc_lv<AddressWidth> > address32;
sc_core::sc_in<sc_logic> ce32;
sc_core::sc_out <sc_lv<DataWidth> > q32;
sc_core::sc_in <sc_lv<AddressWidth> > address33;
sc_core::sc_in<sc_logic> ce33;
sc_core::sc_out <sc_lv<DataWidth> > q33;
sc_core::sc_in <sc_lv<AddressWidth> > address34;
sc_core::sc_in<sc_logic> ce34;
sc_core::sc_out <sc_lv<DataWidth> > q34;
sc_core::sc_in <sc_lv<AddressWidth> > address35;
sc_core::sc_in<sc_logic> ce35;
sc_core::sc_out <sc_lv<DataWidth> > q35;
sc_core::sc_in <sc_lv<AddressWidth> > address36;
sc_core::sc_in<sc_logic> ce36;
sc_core::sc_out <sc_lv<DataWidth> > q36;
sc_core::sc_in <sc_lv<AddressWidth> > address37;
sc_core::sc_in<sc_logic> ce37;
sc_core::sc_out <sc_lv<DataWidth> > q37;
sc_core::sc_in <sc_lv<AddressWidth> > address38;
sc_core::sc_in<sc_logic> ce38;
sc_core::sc_out <sc_lv<DataWidth> > q38;
sc_core::sc_in <sc_lv<AddressWidth> > address39;
sc_core::sc_in<sc_logic> ce39;
sc_core::sc_out <sc_lv<DataWidth> > q39;
sc_core::sc_in <sc_lv<AddressWidth> > address40;
sc_core::sc_in<sc_logic> ce40;
sc_core::sc_out <sc_lv<DataWidth> > q40;
sc_core::sc_in <sc_lv<AddressWidth> > address41;
sc_core::sc_in<sc_logic> ce41;
sc_core::sc_out <sc_lv<DataWidth> > q41;
sc_core::sc_in <sc_lv<AddressWidth> > address42;
sc_core::sc_in<sc_logic> ce42;
sc_core::sc_out <sc_lv<DataWidth> > q42;
sc_core::sc_in <sc_lv<AddressWidth> > address43;
sc_core::sc_in<sc_logic> ce43;
sc_core::sc_out <sc_lv<DataWidth> > q43;
sc_core::sc_in <sc_lv<AddressWidth> > address44;
sc_core::sc_in<sc_logic> ce44;
sc_core::sc_out <sc_lv<DataWidth> > q44;
sc_core::sc_in <sc_lv<AddressWidth> > address45;
sc_core::sc_in<sc_logic> ce45;
sc_core::sc_out <sc_lv<DataWidth> > q45;
sc_core::sc_in <sc_lv<AddressWidth> > address46;
sc_core::sc_in<sc_logic> ce46;
sc_core::sc_out <sc_lv<DataWidth> > q46;
sc_core::sc_in <sc_lv<AddressWidth> > address47;
sc_core::sc_in<sc_logic> ce47;
sc_core::sc_out <sc_lv<DataWidth> > q47;
sc_core::sc_in <sc_lv<AddressWidth> > address48;
sc_core::sc_in<sc_logic> ce48;
sc_core::sc_out <sc_lv<DataWidth> > q48;
sc_core::sc_in <sc_lv<AddressWidth> > address49;
sc_core::sc_in<sc_logic> ce49;
sc_core::sc_out <sc_lv<DataWidth> > q49;
sc_core::sc_in <sc_lv<AddressWidth> > address50;
sc_core::sc_in<sc_logic> ce50;
sc_core::sc_out <sc_lv<DataWidth> > q50;
sc_core::sc_in <sc_lv<AddressWidth> > address51;
sc_core::sc_in<sc_logic> ce51;
sc_core::sc_out <sc_lv<DataWidth> > q51;
sc_core::sc_in <sc_lv<AddressWidth> > address52;
sc_core::sc_in<sc_logic> ce52;
sc_core::sc_out <sc_lv<DataWidth> > q52;
sc_core::sc_in <sc_lv<AddressWidth> > address53;
sc_core::sc_in<sc_logic> ce53;
sc_core::sc_out <sc_lv<DataWidth> > q53;
sc_core::sc_in <sc_lv<AddressWidth> > address54;
sc_core::sc_in<sc_logic> ce54;
sc_core::sc_out <sc_lv<DataWidth> > q54;
sc_core::sc_in <sc_lv<AddressWidth> > address55;
sc_core::sc_in<sc_logic> ce55;
sc_core::sc_out <sc_lv<DataWidth> > q55;
sc_core::sc_in <sc_lv<AddressWidth> > address56;
sc_core::sc_in<sc_logic> ce56;
sc_core::sc_out <sc_lv<DataWidth> > q56;
sc_core::sc_in <sc_lv<AddressWidth> > address57;
sc_core::sc_in<sc_logic> ce57;
sc_core::sc_out <sc_lv<DataWidth> > q57;
sc_core::sc_in <sc_lv<AddressWidth> > address58;
sc_core::sc_in<sc_logic> ce58;
sc_core::sc_out <sc_lv<DataWidth> > q58;
sc_core::sc_in <sc_lv<AddressWidth> > address59;
sc_core::sc_in<sc_logic> ce59;
sc_core::sc_out <sc_lv<DataWidth> > q59;
sc_core::sc_in <sc_lv<AddressWidth> > address60;
sc_core::sc_in<sc_logic> ce60;
sc_core::sc_out <sc_lv<DataWidth> > q60;
sc_core::sc_in <sc_lv<AddressWidth> > address61;
sc_core::sc_in<sc_logic> ce61;
sc_core::sc_out <sc_lv<DataWidth> > q61;
sc_core::sc_in <sc_lv<AddressWidth> > address62;
sc_core::sc_in<sc_logic> ce62;
sc_core::sc_out <sc_lv<DataWidth> > q62;
sc_core::sc_in <sc_lv<AddressWidth> > address63;
sc_core::sc_in<sc_logic> ce63;
sc_core::sc_out <sc_lv<DataWidth> > q63;
sc_core::sc_in <sc_lv<AddressWidth> > address64;
sc_core::sc_in<sc_logic> ce64;
sc_core::sc_out <sc_lv<DataWidth> > q64;
sc_core::sc_in <sc_lv<AddressWidth> > address65;
sc_core::sc_in<sc_logic> ce65;
sc_core::sc_out <sc_lv<DataWidth> > q65;
sc_core::sc_in <sc_lv<AddressWidth> > address66;
sc_core::sc_in<sc_logic> ce66;
sc_core::sc_out <sc_lv<DataWidth> > q66;
sc_core::sc_in <sc_lv<AddressWidth> > address67;
sc_core::sc_in<sc_logic> ce67;
sc_core::sc_out <sc_lv<DataWidth> > q67;
sc_core::sc_in <sc_lv<AddressWidth> > address68;
sc_core::sc_in<sc_logic> ce68;
sc_core::sc_out <sc_lv<DataWidth> > q68;
sc_core::sc_in <sc_lv<AddressWidth> > address69;
sc_core::sc_in<sc_logic> ce69;
sc_core::sc_out <sc_lv<DataWidth> > q69;
sc_core::sc_in <sc_lv<AddressWidth> > address70;
sc_core::sc_in<sc_logic> ce70;
sc_core::sc_out <sc_lv<DataWidth> > q70;
sc_core::sc_in <sc_lv<AddressWidth> > address71;
sc_core::sc_in<sc_logic> ce71;
sc_core::sc_out <sc_lv<DataWidth> > q71;
sc_core::sc_in <sc_lv<AddressWidth> > address72;
sc_core::sc_in<sc_logic> ce72;
sc_core::sc_out <sc_lv<DataWidth> > q72;
sc_core::sc_in <sc_lv<AddressWidth> > address73;
sc_core::sc_in<sc_logic> ce73;
sc_core::sc_out <sc_lv<DataWidth> > q73;
sc_core::sc_in <sc_lv<AddressWidth> > address74;
sc_core::sc_in<sc_logic> ce74;
sc_core::sc_out <sc_lv<DataWidth> > q74;
sc_core::sc_in <sc_lv<AddressWidth> > address75;
sc_core::sc_in<sc_logic> ce75;
sc_core::sc_out <sc_lv<DataWidth> > q75;
sc_core::sc_in <sc_lv<AddressWidth> > address76;
sc_core::sc_in<sc_logic> ce76;
sc_core::sc_out <sc_lv<DataWidth> > q76;
sc_core::sc_in <sc_lv<AddressWidth> > address77;
sc_core::sc_in<sc_logic> ce77;
sc_core::sc_out <sc_lv<DataWidth> > q77;
sc_core::sc_in <sc_lv<AddressWidth> > address78;
sc_core::sc_in<sc_logic> ce78;
sc_core::sc_out <sc_lv<DataWidth> > q78;
sc_core::sc_in <sc_lv<AddressWidth> > address79;
sc_core::sc_in<sc_logic> ce79;
sc_core::sc_out <sc_lv<DataWidth> > q79;
sc_core::sc_in <sc_lv<AddressWidth> > address80;
sc_core::sc_in<sc_logic> ce80;
sc_core::sc_out <sc_lv<DataWidth> > q80;
sc_core::sc_in <sc_lv<AddressWidth> > address81;
sc_core::sc_in<sc_logic> ce81;
sc_core::sc_out <sc_lv<DataWidth> > q81;
sc_core::sc_in <sc_lv<AddressWidth> > address82;
sc_core::sc_in<sc_logic> ce82;
sc_core::sc_out <sc_lv<DataWidth> > q82;
sc_core::sc_in <sc_lv<AddressWidth> > address83;
sc_core::sc_in<sc_logic> ce83;
sc_core::sc_out <sc_lv<DataWidth> > q83;
sc_core::sc_in <sc_lv<AddressWidth> > address84;
sc_core::sc_in<sc_logic> ce84;
sc_core::sc_out <sc_lv<DataWidth> > q84;
sc_core::sc_in <sc_lv<AddressWidth> > address85;
sc_core::sc_in<sc_logic> ce85;
sc_core::sc_out <sc_lv<DataWidth> > q85;
sc_core::sc_in <sc_lv<AddressWidth> > address86;
sc_core::sc_in<sc_logic> ce86;
sc_core::sc_out <sc_lv<DataWidth> > q86;
sc_core::sc_in <sc_lv<AddressWidth> > address87;
sc_core::sc_in<sc_logic> ce87;
sc_core::sc_out <sc_lv<DataWidth> > q87;
sc_core::sc_in <sc_lv<AddressWidth> > address88;
sc_core::sc_in<sc_logic> ce88;
sc_core::sc_out <sc_lv<DataWidth> > q88;
sc_core::sc_in <sc_lv<AddressWidth> > address89;
sc_core::sc_in<sc_logic> ce89;
sc_core::sc_out <sc_lv<DataWidth> > q89;
sc_core::sc_in <sc_lv<AddressWidth> > address90;
sc_core::sc_in<sc_logic> ce90;
sc_core::sc_out <sc_lv<DataWidth> > q90;
sc_core::sc_in <sc_lv<AddressWidth> > address91;
sc_core::sc_in<sc_logic> ce91;
sc_core::sc_out <sc_lv<DataWidth> > q91;
sc_core::sc_in <sc_lv<AddressWidth> > address92;
sc_core::sc_in<sc_logic> ce92;
sc_core::sc_out <sc_lv<DataWidth> > q92;
sc_core::sc_in <sc_lv<AddressWidth> > address93;
sc_core::sc_in<sc_logic> ce93;
sc_core::sc_out <sc_lv<DataWidth> > q93;
sc_core::sc_in <sc_lv<AddressWidth> > address94;
sc_core::sc_in<sc_logic> ce94;
sc_core::sc_out <sc_lv<DataWidth> > q94;
sc_core::sc_in <sc_lv<AddressWidth> > address95;
sc_core::sc_in<sc_logic> ce95;
sc_core::sc_out <sc_lv<DataWidth> > q95;
sc_core::sc_in <sc_lv<AddressWidth> > address96;
sc_core::sc_in<sc_logic> ce96;
sc_core::sc_out <sc_lv<DataWidth> > q96;
sc_core::sc_in <sc_lv<AddressWidth> > address97;
sc_core::sc_in<sc_logic> ce97;
sc_core::sc_out <sc_lv<DataWidth> > q97;
sc_core::sc_in <sc_lv<AddressWidth> > address98;
sc_core::sc_in<sc_logic> ce98;
sc_core::sc_out <sc_lv<DataWidth> > q98;
sc_core::sc_in <sc_lv<AddressWidth> > address99;
sc_core::sc_in<sc_logic> ce99;
sc_core::sc_out <sc_lv<DataWidth> > q99;
sc_core::sc_in <sc_lv<AddressWidth> > address100;
sc_core::sc_in<sc_logic> ce100;
sc_core::sc_out <sc_lv<DataWidth> > q100;
sc_core::sc_in <sc_lv<AddressWidth> > address101;
sc_core::sc_in<sc_logic> ce101;
sc_core::sc_out <sc_lv<DataWidth> > q101;
sc_core::sc_in <sc_lv<AddressWidth> > address102;
sc_core::sc_in<sc_logic> ce102;
sc_core::sc_out <sc_lv<DataWidth> > q102;
sc_core::sc_in <sc_lv<AddressWidth> > address103;
sc_core::sc_in<sc_logic> ce103;
sc_core::sc_out <sc_lv<DataWidth> > q103;
sc_core::sc_in <sc_lv<AddressWidth> > address104;
sc_core::sc_in<sc_logic> ce104;
sc_core::sc_out <sc_lv<DataWidth> > q104;
sc_core::sc_in <sc_lv<AddressWidth> > address105;
sc_core::sc_in<sc_logic> ce105;
sc_core::sc_out <sc_lv<DataWidth> > q105;
sc_core::sc_in <sc_lv<AddressWidth> > address106;
sc_core::sc_in<sc_logic> ce106;
sc_core::sc_out <sc_lv<DataWidth> > q106;
sc_core::sc_in <sc_lv<AddressWidth> > address107;
sc_core::sc_in<sc_logic> ce107;
sc_core::sc_out <sc_lv<DataWidth> > q107;
sc_core::sc_in <sc_lv<AddressWidth> > address108;
sc_core::sc_in<sc_logic> ce108;
sc_core::sc_out <sc_lv<DataWidth> > q108;
sc_core::sc_in <sc_lv<AddressWidth> > address109;
sc_core::sc_in<sc_logic> ce109;
sc_core::sc_out <sc_lv<DataWidth> > q109;
sc_core::sc_in <sc_lv<AddressWidth> > address110;
sc_core::sc_in<sc_logic> ce110;
sc_core::sc_out <sc_lv<DataWidth> > q110;
sc_core::sc_in <sc_lv<AddressWidth> > address111;
sc_core::sc_in<sc_logic> ce111;
sc_core::sc_out <sc_lv<DataWidth> > q111;
sc_core::sc_in <sc_lv<AddressWidth> > address112;
sc_core::sc_in<sc_logic> ce112;
sc_core::sc_out <sc_lv<DataWidth> > q112;
sc_core::sc_in <sc_lv<AddressWidth> > address113;
sc_core::sc_in<sc_logic> ce113;
sc_core::sc_out <sc_lv<DataWidth> > q113;
sc_core::sc_in <sc_lv<AddressWidth> > address114;
sc_core::sc_in<sc_logic> ce114;
sc_core::sc_out <sc_lv<DataWidth> > q114;
sc_core::sc_in <sc_lv<AddressWidth> > address115;
sc_core::sc_in<sc_logic> ce115;
sc_core::sc_out <sc_lv<DataWidth> > q115;
sc_core::sc_in <sc_lv<AddressWidth> > address116;
sc_core::sc_in<sc_logic> ce116;
sc_core::sc_out <sc_lv<DataWidth> > q116;
sc_core::sc_in <sc_lv<AddressWidth> > address117;
sc_core::sc_in<sc_logic> ce117;
sc_core::sc_out <sc_lv<DataWidth> > q117;
sc_core::sc_in <sc_lv<AddressWidth> > address118;
sc_core::sc_in<sc_logic> ce118;
sc_core::sc_out <sc_lv<DataWidth> > q118;
sc_core::sc_in <sc_lv<AddressWidth> > address119;
sc_core::sc_in<sc_logic> ce119;
sc_core::sc_out <sc_lv<DataWidth> > q119;
sc_core::sc_in <sc_lv<AddressWidth> > address120;
sc_core::sc_in<sc_logic> ce120;
sc_core::sc_out <sc_lv<DataWidth> > q120;
sc_core::sc_in <sc_lv<AddressWidth> > address121;
sc_core::sc_in<sc_logic> ce121;
sc_core::sc_out <sc_lv<DataWidth> > q121;
sc_core::sc_in <sc_lv<AddressWidth> > address122;
sc_core::sc_in<sc_logic> ce122;
sc_core::sc_out <sc_lv<DataWidth> > q122;
sc_core::sc_in <sc_lv<AddressWidth> > address123;
sc_core::sc_in<sc_logic> ce123;
sc_core::sc_out <sc_lv<DataWidth> > q123;
sc_core::sc_in <sc_lv<AddressWidth> > address124;
sc_core::sc_in<sc_logic> ce124;
sc_core::sc_out <sc_lv<DataWidth> > q124;
sc_core::sc_in <sc_lv<AddressWidth> > address125;
sc_core::sc_in<sc_logic> ce125;
sc_core::sc_out <sc_lv<DataWidth> > q125;
sc_core::sc_in <sc_lv<AddressWidth> > address126;
sc_core::sc_in<sc_logic> ce126;
sc_core::sc_out <sc_lv<DataWidth> > q126;
sc_core::sc_in <sc_lv<AddressWidth> > address127;
sc_core::sc_in<sc_logic> ce127;
sc_core::sc_out <sc_lv<DataWidth> > q127;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


des_dec_S_ram* meminst;


SC_CTOR(des_dec_S) {
meminst = new des_dec_S_ram("des_dec_S_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->address3(address3);
meminst->ce3(ce3);
meminst->q3(q3);

meminst->address4(address4);
meminst->ce4(ce4);
meminst->q4(q4);

meminst->address5(address5);
meminst->ce5(ce5);
meminst->q5(q5);

meminst->address6(address6);
meminst->ce6(ce6);
meminst->q6(q6);

meminst->address7(address7);
meminst->ce7(ce7);
meminst->q7(q7);

meminst->address8(address8);
meminst->ce8(ce8);
meminst->q8(q8);

meminst->address9(address9);
meminst->ce9(ce9);
meminst->q9(q9);

meminst->address10(address10);
meminst->ce10(ce10);
meminst->q10(q10);

meminst->address11(address11);
meminst->ce11(ce11);
meminst->q11(q11);

meminst->address12(address12);
meminst->ce12(ce12);
meminst->q12(q12);

meminst->address13(address13);
meminst->ce13(ce13);
meminst->q13(q13);

meminst->address14(address14);
meminst->ce14(ce14);
meminst->q14(q14);

meminst->address15(address15);
meminst->ce15(ce15);
meminst->q15(q15);

meminst->address16(address16);
meminst->ce16(ce16);
meminst->q16(q16);

meminst->address17(address17);
meminst->ce17(ce17);
meminst->q17(q17);

meminst->address18(address18);
meminst->ce18(ce18);
meminst->q18(q18);

meminst->address19(address19);
meminst->ce19(ce19);
meminst->q19(q19);

meminst->address20(address20);
meminst->ce20(ce20);
meminst->q20(q20);

meminst->address21(address21);
meminst->ce21(ce21);
meminst->q21(q21);

meminst->address22(address22);
meminst->ce22(ce22);
meminst->q22(q22);

meminst->address23(address23);
meminst->ce23(ce23);
meminst->q23(q23);

meminst->address24(address24);
meminst->ce24(ce24);
meminst->q24(q24);

meminst->address25(address25);
meminst->ce25(ce25);
meminst->q25(q25);

meminst->address26(address26);
meminst->ce26(ce26);
meminst->q26(q26);

meminst->address27(address27);
meminst->ce27(ce27);
meminst->q27(q27);

meminst->address28(address28);
meminst->ce28(ce28);
meminst->q28(q28);

meminst->address29(address29);
meminst->ce29(ce29);
meminst->q29(q29);

meminst->address30(address30);
meminst->ce30(ce30);
meminst->q30(q30);

meminst->address31(address31);
meminst->ce31(ce31);
meminst->q31(q31);

meminst->address32(address32);
meminst->ce32(ce32);
meminst->q32(q32);

meminst->address33(address33);
meminst->ce33(ce33);
meminst->q33(q33);

meminst->address34(address34);
meminst->ce34(ce34);
meminst->q34(q34);

meminst->address35(address35);
meminst->ce35(ce35);
meminst->q35(q35);

meminst->address36(address36);
meminst->ce36(ce36);
meminst->q36(q36);

meminst->address37(address37);
meminst->ce37(ce37);
meminst->q37(q37);

meminst->address38(address38);
meminst->ce38(ce38);
meminst->q38(q38);

meminst->address39(address39);
meminst->ce39(ce39);
meminst->q39(q39);

meminst->address40(address40);
meminst->ce40(ce40);
meminst->q40(q40);

meminst->address41(address41);
meminst->ce41(ce41);
meminst->q41(q41);

meminst->address42(address42);
meminst->ce42(ce42);
meminst->q42(q42);

meminst->address43(address43);
meminst->ce43(ce43);
meminst->q43(q43);

meminst->address44(address44);
meminst->ce44(ce44);
meminst->q44(q44);

meminst->address45(address45);
meminst->ce45(ce45);
meminst->q45(q45);

meminst->address46(address46);
meminst->ce46(ce46);
meminst->q46(q46);

meminst->address47(address47);
meminst->ce47(ce47);
meminst->q47(q47);

meminst->address48(address48);
meminst->ce48(ce48);
meminst->q48(q48);

meminst->address49(address49);
meminst->ce49(ce49);
meminst->q49(q49);

meminst->address50(address50);
meminst->ce50(ce50);
meminst->q50(q50);

meminst->address51(address51);
meminst->ce51(ce51);
meminst->q51(q51);

meminst->address52(address52);
meminst->ce52(ce52);
meminst->q52(q52);

meminst->address53(address53);
meminst->ce53(ce53);
meminst->q53(q53);

meminst->address54(address54);
meminst->ce54(ce54);
meminst->q54(q54);

meminst->address55(address55);
meminst->ce55(ce55);
meminst->q55(q55);

meminst->address56(address56);
meminst->ce56(ce56);
meminst->q56(q56);

meminst->address57(address57);
meminst->ce57(ce57);
meminst->q57(q57);

meminst->address58(address58);
meminst->ce58(ce58);
meminst->q58(q58);

meminst->address59(address59);
meminst->ce59(ce59);
meminst->q59(q59);

meminst->address60(address60);
meminst->ce60(ce60);
meminst->q60(q60);

meminst->address61(address61);
meminst->ce61(ce61);
meminst->q61(q61);

meminst->address62(address62);
meminst->ce62(ce62);
meminst->q62(q62);

meminst->address63(address63);
meminst->ce63(ce63);
meminst->q63(q63);

meminst->address64(address64);
meminst->ce64(ce64);
meminst->q64(q64);

meminst->address65(address65);
meminst->ce65(ce65);
meminst->q65(q65);

meminst->address66(address66);
meminst->ce66(ce66);
meminst->q66(q66);

meminst->address67(address67);
meminst->ce67(ce67);
meminst->q67(q67);

meminst->address68(address68);
meminst->ce68(ce68);
meminst->q68(q68);

meminst->address69(address69);
meminst->ce69(ce69);
meminst->q69(q69);

meminst->address70(address70);
meminst->ce70(ce70);
meminst->q70(q70);

meminst->address71(address71);
meminst->ce71(ce71);
meminst->q71(q71);

meminst->address72(address72);
meminst->ce72(ce72);
meminst->q72(q72);

meminst->address73(address73);
meminst->ce73(ce73);
meminst->q73(q73);

meminst->address74(address74);
meminst->ce74(ce74);
meminst->q74(q74);

meminst->address75(address75);
meminst->ce75(ce75);
meminst->q75(q75);

meminst->address76(address76);
meminst->ce76(ce76);
meminst->q76(q76);

meminst->address77(address77);
meminst->ce77(ce77);
meminst->q77(q77);

meminst->address78(address78);
meminst->ce78(ce78);
meminst->q78(q78);

meminst->address79(address79);
meminst->ce79(ce79);
meminst->q79(q79);

meminst->address80(address80);
meminst->ce80(ce80);
meminst->q80(q80);

meminst->address81(address81);
meminst->ce81(ce81);
meminst->q81(q81);

meminst->address82(address82);
meminst->ce82(ce82);
meminst->q82(q82);

meminst->address83(address83);
meminst->ce83(ce83);
meminst->q83(q83);

meminst->address84(address84);
meminst->ce84(ce84);
meminst->q84(q84);

meminst->address85(address85);
meminst->ce85(ce85);
meminst->q85(q85);

meminst->address86(address86);
meminst->ce86(ce86);
meminst->q86(q86);

meminst->address87(address87);
meminst->ce87(ce87);
meminst->q87(q87);

meminst->address88(address88);
meminst->ce88(ce88);
meminst->q88(q88);

meminst->address89(address89);
meminst->ce89(ce89);
meminst->q89(q89);

meminst->address90(address90);
meminst->ce90(ce90);
meminst->q90(q90);

meminst->address91(address91);
meminst->ce91(ce91);
meminst->q91(q91);

meminst->address92(address92);
meminst->ce92(ce92);
meminst->q92(q92);

meminst->address93(address93);
meminst->ce93(ce93);
meminst->q93(q93);

meminst->address94(address94);
meminst->ce94(ce94);
meminst->q94(q94);

meminst->address95(address95);
meminst->ce95(ce95);
meminst->q95(q95);

meminst->address96(address96);
meminst->ce96(ce96);
meminst->q96(q96);

meminst->address97(address97);
meminst->ce97(ce97);
meminst->q97(q97);

meminst->address98(address98);
meminst->ce98(ce98);
meminst->q98(q98);

meminst->address99(address99);
meminst->ce99(ce99);
meminst->q99(q99);

meminst->address100(address100);
meminst->ce100(ce100);
meminst->q100(q100);

meminst->address101(address101);
meminst->ce101(ce101);
meminst->q101(q101);

meminst->address102(address102);
meminst->ce102(ce102);
meminst->q102(q102);

meminst->address103(address103);
meminst->ce103(ce103);
meminst->q103(q103);

meminst->address104(address104);
meminst->ce104(ce104);
meminst->q104(q104);

meminst->address105(address105);
meminst->ce105(ce105);
meminst->q105(q105);

meminst->address106(address106);
meminst->ce106(ce106);
meminst->q106(q106);

meminst->address107(address107);
meminst->ce107(ce107);
meminst->q107(q107);

meminst->address108(address108);
meminst->ce108(ce108);
meminst->q108(q108);

meminst->address109(address109);
meminst->ce109(ce109);
meminst->q109(q109);

meminst->address110(address110);
meminst->ce110(ce110);
meminst->q110(q110);

meminst->address111(address111);
meminst->ce111(ce111);
meminst->q111(q111);

meminst->address112(address112);
meminst->ce112(ce112);
meminst->q112(q112);

meminst->address113(address113);
meminst->ce113(ce113);
meminst->q113(q113);

meminst->address114(address114);
meminst->ce114(ce114);
meminst->q114(q114);

meminst->address115(address115);
meminst->ce115(ce115);
meminst->q115(q115);

meminst->address116(address116);
meminst->ce116(ce116);
meminst->q116(q116);

meminst->address117(address117);
meminst->ce117(ce117);
meminst->q117(q117);

meminst->address118(address118);
meminst->ce118(ce118);
meminst->q118(q118);

meminst->address119(address119);
meminst->ce119(ce119);
meminst->q119(q119);

meminst->address120(address120);
meminst->ce120(ce120);
meminst->q120(q120);

meminst->address121(address121);
meminst->ce121(ce121);
meminst->q121(q121);

meminst->address122(address122);
meminst->ce122(ce122);
meminst->q122(q122);

meminst->address123(address123);
meminst->ce123(ce123);
meminst->q123(q123);

meminst->address124(address124);
meminst->ce124(ce124);
meminst->q124(q124);

meminst->address125(address125);
meminst->ce125(ce125);
meminst->q125(q125);

meminst->address126(address126);
meminst->ce126(ce126);
meminst->q126(q126);

meminst->address127(address127);
meminst->ce127(ce127);
meminst->q127(q127);

meminst->reset(reset);
meminst->clk(clk);
}
~des_dec_S() {
    delete meminst;
}


};//endmodule
#endif
