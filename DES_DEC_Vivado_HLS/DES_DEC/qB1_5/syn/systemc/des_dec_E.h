// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __des_dec_E_H__
#define __des_dec_E_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct des_dec_E_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 6;
  static const unsigned AddressRange = 48;
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


   SC_CTOR(des_dec_E_ram) {
        ram[0] = "0b100000";
        ram[1] = "0b000001";
        ram[2] = "0b000010";
        ram[3] = "0b000011";
        ram[4] = "0b000100";
        ram[5] = "0b000101";
        ram[6] = "0b000100";
        ram[7] = "0b000101";
        ram[8] = "0b000110";
        ram[9] = "0b000111";
        ram[10] = "0b001000";
        ram[11] = "0b001001";
        ram[12] = "0b001000";
        ram[13] = "0b001001";
        ram[14] = "0b001010";
        ram[15] = "0b001011";
        ram[16] = "0b001100";
        ram[17] = "0b001101";
        ram[18] = "0b001100";
        ram[19] = "0b001101";
        ram[20] = "0b001110";
        ram[21] = "0b001111";
        ram[22] = "0b010000";
        ram[23] = "0b010001";
        ram[24] = "0b010000";
        ram[25] = "0b010001";
        ram[26] = "0b010010";
        ram[27] = "0b010011";
        ram[28] = "0b010100";
        ram[29] = "0b010101";
        ram[30] = "0b010100";
        ram[31] = "0b010101";
        ram[32] = "0b010110";
        ram[33] = "0b010111";
        ram[34] = "0b011000";
        ram[35] = "0b011001";
        ram[36] = "0b011000";
        ram[37] = "0b011001";
        ram[38] = "0b011010";
        ram[39] = "0b011011";
        ram[40] = "0b011100";
        ram[41] = "0b011101";
        ram[42] = "0b011100";
        ram[43] = "0b011101";
        ram[44] = "0b011110";
        ram[45] = "0b011111";
        ram[46] = "0b100000";
        ram[47] = "0b000001";


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


SC_MODULE(des_dec_E) {


static const unsigned DataWidth = 6;
static const unsigned AddressRange = 48;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


des_dec_E_ram* meminst;


SC_CTOR(des_dec_E) {
meminst = new des_dec_E_ram("des_dec_E_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~des_dec_E() {
    delete meminst;
}


};//endmodule
#endif
