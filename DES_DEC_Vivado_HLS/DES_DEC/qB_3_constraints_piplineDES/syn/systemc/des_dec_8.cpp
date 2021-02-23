#include "des_dec.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void des_dec::thread_zext_ln246_9_fu_7885_p1() {
    zext_ln246_9_fu_7885_p1 = esl_zext<8,6>(or_ln246_8_fu_7875_p4.read());
}

void des_dec::thread_zext_ln246_fu_4615_p1() {
    zext_ln246_fu_4615_p1 = esl_zext<8,6>(or_ln3_fu_4605_p4.read());
}

}

