// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _align_HH_
#define _align_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct align : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<7> > seq1_address0;
    sc_out< sc_logic > seq1_ce0;
    sc_in< sc_lv<8> > seq1_q0;
    sc_in< sc_lv<7> > n;
    sc_out< sc_lv<7> > seq2_address0;
    sc_out< sc_logic > seq2_ce0;
    sc_in< sc_lv<8> > seq2_q0;
    sc_in< sc_lv<7> > m;
    sc_out< sc_lv<14> > H_address0;
    sc_out< sc_logic > H_ce0;
    sc_in< sc_lv<32> > H_q0;
    sc_out< sc_lv<14> > H_address1;
    sc_out< sc_logic > H_ce1;
    sc_out< sc_logic > H_we1;
    sc_out< sc_lv<32> > H_d1;
    sc_in< sc_lv<32> > H_q1;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    align(sc_module_name name);
    SC_HAS_PROCESS(align);

    ~align();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > zext_ln89_fu_188_p1;
    sc_signal< sc_lv<32> > zext_ln89_reg_490;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<14> > mul_ln91_fu_212_p2;
    sc_signal< sc_lv<14> > mul_ln91_reg_498;
    sc_signal< sc_lv<1> > icmp_ln89_fu_192_p2;
    sc_signal< sc_lv<7> > seq1_addr_reg_504;
    sc_signal< sc_lv<14> > mul_ln98_fu_222_p2;
    sc_signal< sc_lv<14> > mul_ln98_reg_509;
    sc_signal< sc_lv<32> > zext_ln90_fu_240_p1;
    sc_signal< sc_lv<32> > zext_ln90_reg_515;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln90_fu_244_p2;
    sc_signal< sc_lv<14> > add_ln99_fu_288_p2;
    sc_signal< sc_lv<14> > add_ln99_reg_538;
    sc_signal< sc_lv<14> > add_ln100_fu_293_p2;
    sc_signal< sc_lv<14> > add_ln100_reg_543;
    sc_signal< sc_lv<7> > j_fu_298_p2;
    sc_signal< sc_lv<7> > j_reg_548;
    sc_signal< sc_lv<7> > i_fu_304_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > max_1_fu_382_p3;
    sc_signal< sc_lv<32> > max_1_reg_563;
    sc_signal< sc_lv<7> > i_0_reg_144;
    sc_signal< sc_lv<7> > j_0_reg_156;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<64> > zext_ln91_fu_203_p1;
    sc_signal< sc_lv<64> > zext_ln91_4_fu_269_p1;
    sc_signal< sc_lv<64> > zext_ln98_1_fu_279_p1;
    sc_signal< sc_lv<64> > zext_ln91_1_fu_255_p1;
    sc_signal< sc_lv<64> > zext_ln99_1_fu_354_p1;
    sc_signal< sc_lv<64> > zext_ln100_fu_393_p1;
    sc_signal< sc_lv<32> > max_score_0_fu_54;
    sc_signal< sc_lv<32> > select_ln102_2_fu_436_p3;
    sc_signal< sc_lv<32> > pos_1_0_fu_58;
    sc_signal< sc_lv<32> > select_ln102_1_fu_429_p3;
    sc_signal< sc_lv<32> > pos_0_0_fu_62;
    sc_signal< sc_lv<32> > select_ln102_fu_422_p3;
    sc_signal< sc_lv<32> > max_score_fu_408_p3;
    sc_signal< sc_lv<7> > add_ln91_fu_197_p2;
    sc_signal< sc_lv<7> > mul_ln91_fu_212_p0;
    sc_signal< sc_lv<7> > mul_ln98_fu_222_p0;
    sc_signal< sc_lv<7> > add_ln91_1_fu_249_p2;
    sc_signal< sc_lv<14> > zext_ln91_3_fu_260_p1;
    sc_signal< sc_lv<14> > add_ln91_2_fu_264_p2;
    sc_signal< sc_lv<14> > add_ln98_fu_274_p2;
    sc_signal< sc_lv<14> > zext_ln99_fu_284_p1;
    sc_signal< sc_lv<1> > icmp_ln92_fu_310_p2;
    sc_signal< sc_lv<32> > select_ln92_fu_316_p3;
    sc_signal< sc_lv<31> > trunc_ln92_fu_332_p1;
    sc_signal< sc_lv<31> > select_ln92_1_fu_324_p3;
    sc_signal< sc_lv<32> > diag_score_2_fu_336_p2;
    sc_signal< sc_lv<1> > icmp_ln51_fu_358_p2;
    sc_signal< sc_lv<31> > add_ln92_1_fu_342_p2;
    sc_signal< sc_lv<31> > select_ln51_fu_364_p3;
    sc_signal< sc_lv<32> > zext_ln51_fu_372_p1;
    sc_signal< sc_lv<32> > right_score_fu_348_p2;
    sc_signal< sc_lv<1> > icmp_ln54_fu_376_p2;
    sc_signal< sc_lv<32> > down_score_fu_397_p2;
    sc_signal< sc_lv<1> > icmp_ln57_fu_403_p2;
    sc_signal< sc_lv<1> > icmp_ln102_fu_416_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_lv<14> > mul_ln91_fu_212_p00;
    sc_signal< sc_lv<14> > mul_ln98_fu_222_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_state2;
    static const sc_lv<5> ap_ST_fsm_state3;
    static const sc_lv<5> ap_ST_fsm_state4;
    static const sc_lv<5> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<7> ap_const_lv7_7F;
    static const sc_lv<14> ap_const_lv14_65;
    static const sc_lv<32> ap_const_lv32_FFFFFFFD;
    static const sc_lv<31> ap_const_lv31_3;
    static const sc_lv<31> ap_const_lv31_7FFFFFFD;
    static const sc_lv<32> ap_const_lv32_FFFFFFFE;
    static const sc_lv<31> ap_const_lv31_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_H_address0();
    void thread_H_address1();
    void thread_H_ce0();
    void thread_H_ce1();
    void thread_H_d1();
    void thread_H_we1();
    void thread_add_ln100_fu_293_p2();
    void thread_add_ln91_1_fu_249_p2();
    void thread_add_ln91_2_fu_264_p2();
    void thread_add_ln91_fu_197_p2();
    void thread_add_ln92_1_fu_342_p2();
    void thread_add_ln98_fu_274_p2();
    void thread_add_ln99_fu_288_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_diag_score_2_fu_336_p2();
    void thread_down_score_fu_397_p2();
    void thread_i_fu_304_p2();
    void thread_icmp_ln102_fu_416_p2();
    void thread_icmp_ln51_fu_358_p2();
    void thread_icmp_ln54_fu_376_p2();
    void thread_icmp_ln57_fu_403_p2();
    void thread_icmp_ln89_fu_192_p2();
    void thread_icmp_ln90_fu_244_p2();
    void thread_icmp_ln92_fu_310_p2();
    void thread_j_fu_298_p2();
    void thread_max_1_fu_382_p3();
    void thread_max_score_fu_408_p3();
    void thread_mul_ln91_fu_212_p0();
    void thread_mul_ln91_fu_212_p00();
    void thread_mul_ln91_fu_212_p2();
    void thread_mul_ln98_fu_222_p0();
    void thread_mul_ln98_fu_222_p00();
    void thread_mul_ln98_fu_222_p2();
    void thread_right_score_fu_348_p2();
    void thread_select_ln102_1_fu_429_p3();
    void thread_select_ln102_2_fu_436_p3();
    void thread_select_ln102_fu_422_p3();
    void thread_select_ln51_fu_364_p3();
    void thread_select_ln92_1_fu_324_p3();
    void thread_select_ln92_fu_316_p3();
    void thread_seq1_address0();
    void thread_seq1_ce0();
    void thread_seq2_address0();
    void thread_seq2_ce0();
    void thread_trunc_ln92_fu_332_p1();
    void thread_zext_ln100_fu_393_p1();
    void thread_zext_ln51_fu_372_p1();
    void thread_zext_ln89_fu_188_p1();
    void thread_zext_ln90_fu_240_p1();
    void thread_zext_ln91_1_fu_255_p1();
    void thread_zext_ln91_3_fu_260_p1();
    void thread_zext_ln91_4_fu_269_p1();
    void thread_zext_ln91_fu_203_p1();
    void thread_zext_ln98_1_fu_279_p1();
    void thread_zext_ln99_1_fu_354_p1();
    void thread_zext_ln99_fu_284_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
