// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __des_dec_IP_H__
#define __des_dec_IP_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct des_dec_IP_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(des_dec_IP_ram) {
        ram[0] = "0b0111010";
        ram[1] = "0b0110010";
        ram[2] = "0b0101010";
        ram[3] = "0b0100010";
        ram[4] = "0b0011010";
        ram[5] = "0b0010010";
        ram[6] = "0b0001010";
        ram[7] = "0b0000010";
        ram[8] = "0b0111100";
        ram[9] = "0b0110100";
        ram[10] = "0b0101100";
        ram[11] = "0b0100100";
        ram[12] = "0b0011100";
        ram[13] = "0b0010100";
        ram[14] = "0b0001100";
        ram[15] = "0b0000100";
        ram[16] = "0b0111110";
        ram[17] = "0b0110110";
        ram[18] = "0b0101110";
        ram[19] = "0b0100110";
        ram[20] = "0b0011110";
        ram[21] = "0b0010110";
        ram[22] = "0b0001110";
        ram[23] = "0b0000110";
        ram[24] = "0b1000000";
        ram[25] = "0b0111000";
        ram[26] = "0b0110000";
        ram[27] = "0b0101000";
        ram[28] = "0b0100000";
        ram[29] = "0b0011000";
        ram[30] = "0b0010000";
        ram[31] = "0b0001000";
        ram[32] = "0b0111001";
        ram[33] = "0b0110001";
        ram[34] = "0b0101001";
        ram[35] = "0b0100001";
        ram[36] = "0b0011001";
        ram[37] = "0b0010001";
        ram[38] = "0b0001001";
        ram[39] = "0b0000001";
        ram[40] = "0b0111011";
        ram[41] = "0b0110011";
        ram[42] = "0b0101011";
        ram[43] = "0b0100011";
        ram[44] = "0b0011011";
        ram[45] = "0b0010011";
        ram[46] = "0b0001011";
        ram[47] = "0b0000011";
        ram[48] = "0b0111101";
        ram[49] = "0b0110101";
        ram[50] = "0b0101101";
        ram[51] = "0b0100101";
        ram[52] = "0b0011101";
        ram[53] = "0b0010101";
        ram[54] = "0b0001101";
        ram[55] = "0b0000101";
        ram[56] = "0b0111111";
        ram[57] = "0b0110111";
        ram[58] = "0b0101111";
        ram[59] = "0b0100111";
        ram[60] = "0b0011111";
        ram[61] = "0b0010111";
        ram[62] = "0b0001111";
        ram[63] = "0b0000111";


SC_METHOD(prc_write_0);
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


}; //endmodule


SC_MODULE(des_dec_IP) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


des_dec_IP_ram* meminst;


SC_CTOR(des_dec_IP) {
meminst = new des_dec_IP_ram("des_dec_IP_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~des_dec_IP() {
    delete meminst;
}


};//endmodule
#endif
