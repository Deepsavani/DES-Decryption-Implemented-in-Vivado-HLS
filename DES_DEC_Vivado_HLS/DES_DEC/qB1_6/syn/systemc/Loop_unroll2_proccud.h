// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Loop_unroll2_proccud_H__
#define __Loop_unroll2_proccud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Loop_unroll2_proccud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 6;
  static const unsigned AddressRange = 56;
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


   SC_CTOR(Loop_unroll2_proccud_ram) {
        ram[0] = "0b111001";
        ram[1] = "0b110001";
        ram[2] = "0b101001";
        ram[3] = "0b100001";
        ram[4] = "0b011001";
        ram[5] = "0b010001";
        ram[6] = "0b001001";
        ram[7] = "0b000001";
        ram[8] = "0b111010";
        ram[9] = "0b110010";
        ram[10] = "0b101010";
        ram[11] = "0b100010";
        ram[12] = "0b011010";
        ram[13] = "0b010010";
        ram[14] = "0b001010";
        ram[15] = "0b000010";
        ram[16] = "0b111011";
        ram[17] = "0b110011";
        ram[18] = "0b101011";
        ram[19] = "0b100011";
        ram[20] = "0b011011";
        ram[21] = "0b010011";
        ram[22] = "0b001011";
        ram[23] = "0b000011";
        ram[24] = "0b111100";
        ram[25] = "0b110100";
        ram[26] = "0b101100";
        ram[27] = "0b100100";
        ram[28] = "0b111111";
        ram[29] = "0b110111";
        ram[30] = "0b101111";
        ram[31] = "0b100111";
        ram[32] = "0b011111";
        ram[33] = "0b010111";
        ram[34] = "0b001111";
        ram[35] = "0b000111";
        ram[36] = "0b111110";
        ram[37] = "0b110110";
        ram[38] = "0b101110";
        ram[39] = "0b100110";
        ram[40] = "0b011110";
        ram[41] = "0b010110";
        ram[42] = "0b001110";
        ram[43] = "0b000110";
        ram[44] = "0b111101";
        ram[45] = "0b110101";
        ram[46] = "0b101101";
        ram[47] = "0b100101";
        ram[48] = "0b011101";
        ram[49] = "0b010101";
        ram[50] = "0b001101";
        ram[51] = "0b000101";
        ram[52] = "0b011100";
        ram[53] = "0b010100";
        ram[54] = "0b001100";
        ram[55] = "0b000100";


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


SC_MODULE(Loop_unroll2_proccud) {


static const unsigned DataWidth = 6;
static const unsigned AddressRange = 56;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Loop_unroll2_proccud_ram* meminst;


SC_CTOR(Loop_unroll2_proccud) {
meminst = new Loop_unroll2_proccud_ram("Loop_unroll2_proccud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Loop_unroll2_proccud() {
    delete meminst;
}


};//endmodule
#endif
