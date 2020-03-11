// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module align (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        seq1_address0,
        seq1_ce0,
        seq1_q0,
        n,
        seq2_address0,
        seq2_ce0,
        seq2_q0,
        m,
        H_address0,
        H_ce0,
        H_q0,
        H_address1,
        H_ce1,
        H_we1,
        H_d1,
        H_q1,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] seq1_address0;
output   seq1_ce0;
input  [7:0] seq1_q0;
input  [6:0] n;
output  [6:0] seq2_address0;
output   seq2_ce0;
input  [7:0] seq2_q0;
input  [6:0] m;
output  [13:0] H_address0;
output   H_ce0;
input  [31:0] H_q0;
output  [13:0] H_address1;
output   H_ce1;
output   H_we1;
output  [31:0] H_d1;
input  [31:0] H_q1;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg seq1_ce0;
reg seq2_ce0;
reg[13:0] H_address0;
reg H_ce0;
reg[13:0] H_address1;
reg H_ce1;
reg H_we1;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln89_fu_188_p1;
reg   [31:0] zext_ln89_reg_490;
wire    ap_CS_fsm_state2;
wire   [13:0] mul_ln91_fu_212_p2;
reg   [13:0] mul_ln91_reg_498;
wire   [0:0] icmp_ln89_fu_192_p2;
reg   [6:0] seq1_addr_reg_504;
wire   [13:0] mul_ln98_fu_222_p2;
reg   [13:0] mul_ln98_reg_509;
wire   [31:0] zext_ln90_fu_240_p1;
reg   [31:0] zext_ln90_reg_515;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln90_fu_244_p2;
wire   [13:0] add_ln99_fu_288_p2;
reg   [13:0] add_ln99_reg_538;
wire   [13:0] add_ln100_fu_293_p2;
reg   [13:0] add_ln100_reg_543;
wire   [6:0] j_fu_298_p2;
reg   [6:0] j_reg_548;
wire   [6:0] i_fu_304_p2;
wire    ap_CS_fsm_state4;
wire   [31:0] max_1_fu_382_p3;
reg   [31:0] max_1_reg_563;
reg   [6:0] i_0_reg_144;
reg   [6:0] j_0_reg_156;
wire    ap_CS_fsm_state5;
wire   [63:0] zext_ln91_fu_203_p1;
wire   [63:0] zext_ln91_4_fu_269_p1;
wire   [63:0] zext_ln98_1_fu_279_p1;
wire   [63:0] zext_ln91_1_fu_255_p1;
wire   [63:0] zext_ln99_1_fu_354_p1;
wire   [63:0] zext_ln100_fu_393_p1;
reg   [31:0] max_score_0_fu_54;
wire   [31:0] select_ln102_2_fu_436_p3;
reg   [31:0] pos_1_0_fu_58;
wire   [31:0] select_ln102_1_fu_429_p3;
reg   [31:0] pos_0_0_fu_62;
wire   [31:0] select_ln102_fu_422_p3;
wire   [31:0] max_score_fu_408_p3;
wire   [6:0] add_ln91_fu_197_p2;
wire   [6:0] mul_ln91_fu_212_p0;
wire   [6:0] mul_ln98_fu_222_p0;
wire   [6:0] add_ln91_1_fu_249_p2;
wire   [13:0] zext_ln91_3_fu_260_p1;
wire   [13:0] add_ln91_2_fu_264_p2;
wire   [13:0] add_ln98_fu_274_p2;
wire   [13:0] zext_ln99_fu_284_p1;
wire   [0:0] icmp_ln92_fu_310_p2;
wire   [31:0] select_ln92_fu_316_p3;
wire   [30:0] trunc_ln92_fu_332_p1;
wire   [30:0] select_ln92_1_fu_324_p3;
wire   [31:0] diag_score_2_fu_336_p2;
wire   [0:0] icmp_ln51_fu_358_p2;
wire   [30:0] add_ln92_1_fu_342_p2;
wire   [30:0] select_ln51_fu_364_p3;
wire   [31:0] zext_ln51_fu_372_p1;
wire   [31:0] right_score_fu_348_p2;
wire   [0:0] icmp_ln54_fu_376_p2;
wire   [31:0] down_score_fu_397_p2;
wire   [0:0] icmp_ln57_fu_403_p2;
wire   [0:0] icmp_ln102_fu_416_p2;
reg   [4:0] ap_NS_fsm;
wire   [13:0] mul_ln91_fu_212_p00;
wire   [13:0] mul_ln98_fu_222_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln90_fu_244_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_144 <= i_fu_304_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_144 <= 7'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_reg_156 <= j_reg_548;
    end else if (((icmp_ln89_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_156 <= 7'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        max_score_0_fu_54 <= select_ln102_2_fu_436_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        max_score_0_fu_54 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        pos_0_0_fu_62 <= select_ln102_fu_422_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        pos_0_0_fu_62 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        pos_1_0_fu_58 <= select_ln102_1_fu_429_p3;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        pos_1_0_fu_58 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln90_fu_244_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        add_ln100_reg_543 <= add_ln100_fu_293_p2;
        add_ln99_reg_538 <= add_ln99_fu_288_p2;
        j_reg_548 <= j_fu_298_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        max_1_reg_563 <= max_1_fu_382_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln89_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        mul_ln91_reg_498 <= mul_ln91_fu_212_p2;
        mul_ln98_reg_509 <= mul_ln98_fu_222_p2;
        seq1_addr_reg_504 <= zext_ln91_fu_203_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln89_reg_490[6 : 0] <= zext_ln89_fu_188_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln90_reg_515[6 : 0] <= zext_ln90_fu_240_p1[6 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        H_address0 = zext_ln99_1_fu_354_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        H_address0 = zext_ln91_4_fu_269_p1;
    end else begin
        H_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        H_address1 = zext_ln100_fu_393_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        H_address1 = zext_ln98_1_fu_279_p1;
    end else begin
        H_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4))) begin
        H_ce0 = 1'b1;
    end else begin
        H_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state5))) begin
        H_ce1 = 1'b1;
    end else begin
        H_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        H_we1 = 1'b1;
    end else begin
        H_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln89_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln89_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        seq1_ce0 = 1'b1;
    end else begin
        seq1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        seq2_ce0 = 1'b1;
    end else begin
        seq2_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln89_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln90_fu_244_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign H_d1 = max_score_fu_408_p3;

assign add_ln100_fu_293_p2 = (mul_ln98_reg_509 + zext_ln99_fu_284_p1);

assign add_ln91_1_fu_249_p2 = ($signed(7'd127) + $signed(j_0_reg_156));

assign add_ln91_2_fu_264_p2 = (mul_ln91_reg_498 + zext_ln91_3_fu_260_p1);

assign add_ln91_fu_197_p2 = ($signed(i_0_reg_144) + $signed(7'd127));

assign add_ln92_1_fu_342_p2 = (trunc_ln92_fu_332_p1 + select_ln92_1_fu_324_p3);

assign add_ln98_fu_274_p2 = (mul_ln98_reg_509 + zext_ln91_3_fu_260_p1);

assign add_ln99_fu_288_p2 = (mul_ln91_reg_498 + zext_ln99_fu_284_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_return_0 = pos_0_0_fu_62;

assign ap_return_1 = pos_1_0_fu_58;

assign diag_score_2_fu_336_p2 = (select_ln92_fu_316_p3 + H_q0);

assign down_score_fu_397_p2 = ($signed(32'd4294967294) + $signed(H_q0));

assign i_fu_304_p2 = (i_0_reg_144 + 7'd1);

assign icmp_ln102_fu_416_p2 = (($signed(max_score_0_fu_54) > $signed(max_score_fu_408_p3)) ? 1'b1 : 1'b0);

assign icmp_ln51_fu_358_p2 = (($signed(diag_score_2_fu_336_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln54_fu_376_p2 = (($signed(zext_ln51_fu_372_p1) < $signed(right_score_fu_348_p2)) ? 1'b1 : 1'b0);

assign icmp_ln57_fu_403_p2 = (($signed(max_1_reg_563) < $signed(down_score_fu_397_p2)) ? 1'b1 : 1'b0);

assign icmp_ln89_fu_192_p2 = ((i_0_reg_144 > n) ? 1'b1 : 1'b0);

assign icmp_ln90_fu_244_p2 = ((j_0_reg_156 > m) ? 1'b1 : 1'b0);

assign icmp_ln92_fu_310_p2 = ((seq1_q0 == seq2_q0) ? 1'b1 : 1'b0);

assign j_fu_298_p2 = (7'd1 + j_0_reg_156);

assign max_1_fu_382_p3 = ((icmp_ln54_fu_376_p2[0:0] === 1'b1) ? right_score_fu_348_p2 : zext_ln51_fu_372_p1);

assign max_score_fu_408_p3 = ((icmp_ln57_fu_403_p2[0:0] === 1'b1) ? down_score_fu_397_p2 : max_1_reg_563);

assign mul_ln91_fu_212_p0 = mul_ln91_fu_212_p00;

assign mul_ln91_fu_212_p00 = add_ln91_fu_197_p2;

assign mul_ln91_fu_212_p2 = (mul_ln91_fu_212_p0 * $signed('h65));

assign mul_ln98_fu_222_p0 = mul_ln98_fu_222_p00;

assign mul_ln98_fu_222_p00 = i_0_reg_144;

assign mul_ln98_fu_222_p2 = (mul_ln98_fu_222_p0 * $signed('h65));

assign right_score_fu_348_p2 = ($signed(32'd4294967294) + $signed(H_q1));

assign select_ln102_1_fu_429_p3 = ((icmp_ln102_fu_416_p2[0:0] === 1'b1) ? pos_1_0_fu_58 : zext_ln90_reg_515);

assign select_ln102_2_fu_436_p3 = ((icmp_ln102_fu_416_p2[0:0] === 1'b1) ? max_score_0_fu_54 : max_score_fu_408_p3);

assign select_ln102_fu_422_p3 = ((icmp_ln102_fu_416_p2[0:0] === 1'b1) ? pos_0_0_fu_62 : zext_ln89_reg_490);

assign select_ln51_fu_364_p3 = ((icmp_ln51_fu_358_p2[0:0] === 1'b1) ? add_ln92_1_fu_342_p2 : 31'd0);

assign select_ln92_1_fu_324_p3 = ((icmp_ln92_fu_310_p2[0:0] === 1'b1) ? 31'd3 : 31'd2147483645);

assign select_ln92_fu_316_p3 = ((icmp_ln92_fu_310_p2[0:0] === 1'b1) ? 32'd3 : 32'd4294967293);

assign seq1_address0 = seq1_addr_reg_504;

assign seq2_address0 = zext_ln91_1_fu_255_p1;

assign trunc_ln92_fu_332_p1 = H_q0[30:0];

assign zext_ln100_fu_393_p1 = add_ln100_reg_543;

assign zext_ln51_fu_372_p1 = select_ln51_fu_364_p3;

assign zext_ln89_fu_188_p1 = i_0_reg_144;

assign zext_ln90_fu_240_p1 = j_0_reg_156;

assign zext_ln91_1_fu_255_p1 = add_ln91_1_fu_249_p2;

assign zext_ln91_3_fu_260_p1 = add_ln91_1_fu_249_p2;

assign zext_ln91_4_fu_269_p1 = add_ln91_2_fu_264_p2;

assign zext_ln91_fu_203_p1 = add_ln91_fu_197_p2;

assign zext_ln98_1_fu_279_p1 = add_ln98_fu_274_p2;

assign zext_ln99_1_fu_354_p1 = add_ln99_reg_538;

assign zext_ln99_fu_284_p1 = j_0_reg_156;

always @ (posedge ap_clk) begin
    zext_ln89_reg_490[31:7] <= 25'b0000000000000000000000000;
    zext_ln90_reg_515[31:7] <= 25'b0000000000000000000000000;
end

endmodule //align
