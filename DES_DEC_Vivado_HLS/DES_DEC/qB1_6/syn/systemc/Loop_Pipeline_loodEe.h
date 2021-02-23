// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Loop_Pipeline_loodEe_H__
#define __Loop_Pipeline_loodEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Loop_Pipeline_loodEe_ram : public sc_core::sc_module {

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
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Loop_Pipeline_loodEe_ram) {
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


}; //endmodule


SC_MODULE(Loop_Pipeline_loodEe) {


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
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Loop_Pipeline_loodEe_ram* meminst;


SC_CTOR(Loop_Pipeline_loodEe) {
meminst = new Loop_Pipeline_loodEe_ram("Loop_Pipeline_loodEe_ram");
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

meminst->reset(reset);
meminst->clk(clk);
}
~Loop_Pipeline_loodEe() {
    delete meminst;
}


};//endmodule
#endif
