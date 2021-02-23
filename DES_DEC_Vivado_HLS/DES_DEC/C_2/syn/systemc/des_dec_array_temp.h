// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __des_dec_array_temp_H__
#define __des_dec_array_temp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct des_dec_array_temp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 48;
  static const unsigned AddressRange = 144;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(des_dec_array_temp_ram) {
        for (unsigned i = 0; i < 16 ; i = i + 1) {
            ram[i] = "0b000000000000000000000000000000000000000000000000";
        }
        ram[16] = "0b000000000000000000000000000000000000000000111010";
        ram[17] = "0b000000000000000000000000000000000000000000110010";
        ram[18] = "0b000000000000000000000000000000000000000000101010";
        ram[19] = "0b000000000000000000000000000000000000000000100010";
        ram[20] = "0b000000000000000000000000000000000000000000011010";
        ram[21] = "0b000000000000000000000000000000000000000000010010";
        ram[22] = "0b000000000000000000000000000000000000000000001010";
        ram[23] = "0b000000000000000000000000000000000000000000000010";
        ram[24] = "0b000000000000000000000000000000000000000000111100";
        ram[25] = "0b000000000000000000000000000000000000000000110100";
        ram[26] = "0b000000000000000000000000000000000000000000101100";
        ram[27] = "0b000000000000000000000000000000000000000000100100";
        ram[28] = "0b000000000000000000000000000000000000000000011100";
        ram[29] = "0b000000000000000000000000000000000000000000010100";
        ram[30] = "0b000000000000000000000000000000000000000000001100";
        ram[31] = "0b000000000000000000000000000000000000000000000100";
        ram[32] = "0b000000000000000000000000000000000000000000111110";
        ram[33] = "0b000000000000000000000000000000000000000000110110";
        ram[34] = "0b000000000000000000000000000000000000000000101110";
        ram[35] = "0b000000000000000000000000000000000000000000100110";
        ram[36] = "0b000000000000000000000000000000000000000000011110";
        ram[37] = "0b000000000000000000000000000000000000000000010110";
        ram[38] = "0b000000000000000000000000000000000000000000001110";
        ram[39] = "0b000000000000000000000000000000000000000000000110";
        ram[40] = "0b000000000000000000000000000000000000000001000000";
        ram[41] = "0b000000000000000000000000000000000000000000111000";
        ram[42] = "0b000000000000000000000000000000000000000000110000";
        ram[43] = "0b000000000000000000000000000000000000000000101000";
        ram[44] = "0b000000000000000000000000000000000000000000100000";
        ram[45] = "0b000000000000000000000000000000000000000000011000";
        ram[46] = "0b000000000000000000000000000000000000000000010000";
        ram[47] = "0b000000000000000000000000000000000000000000001000";
        ram[48] = "0b000000000000000000000000000000000000000000111001";
        ram[49] = "0b000000000000000000000000000000000000000000110001";
        ram[50] = "0b000000000000000000000000000000000000000000101001";
        ram[51] = "0b000000000000000000000000000000000000000000100001";
        ram[52] = "0b000000000000000000000000000000000000000000011001";
        ram[53] = "0b000000000000000000000000000000000000000000010001";
        ram[54] = "0b000000000000000000000000000000000000000000001001";
        ram[55] = "0b000000000000000000000000000000000000000000000001";
        ram[56] = "0b000000000000000000000000000000000000000000111011";
        ram[57] = "0b000000000000000000000000000000000000000000110011";
        ram[58] = "0b000000000000000000000000000000000000000000101011";
        ram[59] = "0b000000000000000000000000000000000000000000100011";
        ram[60] = "0b000000000000000000000000000000000000000000011011";
        ram[61] = "0b000000000000000000000000000000000000000000010011";
        ram[62] = "0b000000000000000000000000000000000000000000001011";
        ram[63] = "0b000000000000000000000000000000000000000000000011";
        ram[64] = "0b000000000000000000000000000000000000000000111101";
        ram[65] = "0b000000000000000000000000000000000000000000110101";
        ram[66] = "0b000000000000000000000000000000000000000000101101";
        ram[67] = "0b000000000000000000000000000000000000000000100101";
        ram[68] = "0b000000000000000000000000000000000000000000011101";
        ram[69] = "0b000000000000000000000000000000000000000000010101";
        ram[70] = "0b000000000000000000000000000000000000000000001101";
        ram[71] = "0b000000000000000000000000000000000000000000000101";
        ram[72] = "0b000000000000000000000000000000000000000000111111";
        ram[73] = "0b000000000000000000000000000000000000000000110111";
        ram[74] = "0b000000000000000000000000000000000000000000101111";
        ram[75] = "0b000000000000000000000000000000000000000000100111";
        ram[76] = "0b000000000000000000000000000000000000000000011111";
        ram[77] = "0b000000000000000000000000000000000000000000010111";
        ram[78] = "0b000000000000000000000000000000000000000000001111";
        ram[79] = "0b000000000000000000000000000000000000000000000111";
        ram[80] = "0b000000000000000000000000000000000000000000101000";
        ram[81] = "0b000000000000000000000000000000000000000000001000";
        ram[82] = "0b000000000000000000000000000000000000000000110000";
        ram[83] = "0b000000000000000000000000000000000000000000010000";
        ram[84] = "0b000000000000000000000000000000000000000000111000";
        ram[85] = "0b000000000000000000000000000000000000000000011000";
        ram[86] = "0b000000000000000000000000000000000000000001000000";
        ram[87] = "0b000000000000000000000000000000000000000000100000";
        ram[88] = "0b000000000000000000000000000000000000000000100111";
        ram[89] = "0b000000000000000000000000000000000000000000000111";
        ram[90] = "0b000000000000000000000000000000000000000000101111";
        ram[91] = "0b000000000000000000000000000000000000000000001111";
        ram[92] = "0b000000000000000000000000000000000000000000110111";
        ram[93] = "0b000000000000000000000000000000000000000000010111";
        ram[94] = "0b000000000000000000000000000000000000000000111111";
        ram[95] = "0b000000000000000000000000000000000000000000011111";
        ram[96] = "0b000000000000000000000000000000000000000000100110";
        ram[97] = "0b000000000000000000000000000000000000000000000110";
        ram[98] = "0b000000000000000000000000000000000000000000101110";
        ram[99] = "0b000000000000000000000000000000000000000000001110";
        ram[100] = "0b000000000000000000000000000000000000000000110110";
        ram[101] = "0b000000000000000000000000000000000000000000010110";
        ram[102] = "0b000000000000000000000000000000000000000000111110";
        ram[103] = "0b000000000000000000000000000000000000000000011110";
        ram[104] = "0b000000000000000000000000000000000000000000100101";
        ram[105] = "0b000000000000000000000000000000000000000000000101";
        ram[106] = "0b000000000000000000000000000000000000000000101101";
        ram[107] = "0b000000000000000000000000000000000000000000001101";
        ram[108] = "0b000000000000000000000000000000000000000000110101";
        ram[109] = "0b000000000000000000000000000000000000000000010101";
        ram[110] = "0b000000000000000000000000000000000000000000111101";
        ram[111] = "0b000000000000000000000000000000000000000000011101";
        ram[112] = "0b000000000000000000000000000000000000000000100100";
        ram[113] = "0b000000000000000000000000000000000000000000000100";
        ram[114] = "0b000000000000000000000000000000000000000000101100";
        ram[115] = "0b000000000000000000000000000000000000000000001100";
        ram[116] = "0b000000000000000000000000000000000000000000110100";
        ram[117] = "0b000000000000000000000000000000000000000000010100";
        ram[118] = "0b000000000000000000000000000000000000000000111100";
        ram[119] = "0b000000000000000000000000000000000000000000011100";
        ram[120] = "0b000000000000000000000000000000000000000000100011";
        ram[121] = "0b000000000000000000000000000000000000000000000011";
        ram[122] = "0b000000000000000000000000000000000000000000101011";
        ram[123] = "0b000000000000000000000000000000000000000000001011";
        ram[124] = "0b000000000000000000000000000000000000000000110011";
        ram[125] = "0b000000000000000000000000000000000000000000010011";
        ram[126] = "0b000000000000000000000000000000000000000000111011";
        ram[127] = "0b000000000000000000000000000000000000000000011011";
        ram[128] = "0b000000000000000000000000000000000000000000100010";
        ram[129] = "0b000000000000000000000000000000000000000000000010";
        ram[130] = "0b000000000000000000000000000000000000000000101010";
        ram[131] = "0b000000000000000000000000000000000000000000001010";
        ram[132] = "0b000000000000000000000000000000000000000000110010";
        ram[133] = "0b000000000000000000000000000000000000000000010010";
        ram[134] = "0b000000000000000000000000000000000000000000111010";
        ram[135] = "0b000000000000000000000000000000000000000000011010";
        ram[136] = "0b000000000000000000000000000000000000000000100001";
        ram[137] = "0b000000000000000000000000000000000000000000000001";
        ram[138] = "0b000000000000000000000000000000000000000000101001";
        ram[139] = "0b000000000000000000000000000000000000000000001001";
        ram[140] = "0b000000000000000000000000000000000000000000110001";
        ram[141] = "0b000000000000000000000000000000000000000000010001";
        ram[142] = "0b000000000000000000000000000000000000000000111001";
        ram[143] = "0b000000000000000000000000000000000000000000011001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
              q0 = d0.read();
           }
           else
              q0 = sc_lv<DataWidth>();
        }
        else {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
        }
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
        if (we1.read() == sc_dt::Log_1) 
        {
           if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
           {
              ram[address1.read().to_uint()] = d1.read(); 
              q1 = d1.read();
           }
           else
              q1 = sc_lv<DataWidth>();
        }
        else {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
        }
    }
}


}; //endmodule


SC_MODULE(des_dec_array_temp) {


static const unsigned DataWidth = 48;
static const unsigned AddressRange = 144;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


des_dec_array_temp_ram* meminst;


SC_CTOR(des_dec_array_temp) {
meminst = new des_dec_array_temp_ram("des_dec_array_temp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);
meminst->we0(we0);
meminst->d0(d0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);
meminst->we1(we1);
meminst->d1(d1);

meminst->reset(reset);
meminst->clk(clk);
}
~des_dec_array_temp() {
    delete meminst;
}


};//endmodule
#endif
