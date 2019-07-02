// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module nonmax_suppression (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        gd_rows_V,
        gd_cols_V,
        gd_data_stream_V_dout,
        gd_data_stream_V_empty_n,
        gd_data_stream_V_read,
        dst_data_stream_V_din,
        dst_data_stream_V_full_n,
        dst_data_stream_V_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state7 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] gd_rows_V;
input  [31:0] gd_cols_V;
input  [15:0] gd_data_stream_V_dout;
input   gd_data_stream_V_empty_n;
output   gd_data_stream_V_read;
output  [15:0] dst_data_stream_V_din;
input   dst_data_stream_V_full_n;
output   dst_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg gd_data_stream_V_read;
reg dst_data_stream_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gd_data_stream_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] or_cond3_reg_877;
reg    dst_data_stream_V_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] or_cond2_reg_897;
reg   [0:0] or_cond2_reg_897_pp0_iter2_reg;
reg   [31:0] t_V_1_reg_255;
reg   [31:0] t_V_1_reg_255_pp0_iter1_reg;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg    ap_block_state1;
wire   [32:0] ret_V_fu_271_p2;
wire   [32:0] ret_V_1_fu_281_p2;
wire   [32:0] ret_V_2_fu_287_p2;
wire   [32:0] ret_V_3_fu_293_p2;
wire   [0:0] tmp_1_fu_303_p2;
wire    ap_CS_fsm_state2;
wire   [31:0] i_V_fu_308_p2;
reg   [31:0] i_V_reg_836;
wire   [0:0] icmp_fu_324_p2;
reg   [0:0] icmp_reg_841;
wire   [0:0] tmp_3_fu_330_p2;
reg   [0:0] tmp_3_reg_846;
wire   [0:0] tmp_8_fu_336_p2;
reg   [0:0] tmp_8_reg_851;
wire   [0:0] tmp_6_fu_341_p2;
reg   [0:0] tmp_6_reg_856;
wire   [0:0] tmp_7_fu_350_p2;
reg   [0:0] tmp_7_reg_861;
reg   [0:0] tmp_7_reg_861_pp0_iter1_reg;
wire   [31:0] j_V_fu_355_p2;
reg   [31:0] j_V_reg_865;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] tmp_s_fu_361_p2;
reg   [0:0] tmp_s_reg_870;
reg   [0:0] tmp_s_reg_870_pp0_iter1_reg;
wire   [0:0] or_cond3_fu_366_p2;
reg   [0:0] or_cond3_reg_877_pp0_iter1_reg;
reg   [10:0] lbuffer_val_1_addr_reg_881;
reg   [10:0] lbuffer_val_1_addr_reg_881_pp0_iter1_reg;
wire   [0:0] tmp_11_fu_377_p2;
reg   [0:0] tmp_11_reg_892;
reg   [0:0] tmp_11_reg_892_pp0_iter1_reg;
reg   [0:0] tmp_11_reg_892_pp0_iter2_reg;
wire   [0:0] or_cond2_fu_388_p2;
reg   [0:0] or_cond2_reg_897_pp0_iter1_reg;
wire   [15:0] lbuffer_val_0_q0;
reg   [15:0] tmp0_reg_901;
wire   [0:0] icmp1_fu_489_p2;
reg   [0:0] icmp1_reg_906;
wire   [13:0] out_pixel_val_fu_671_p3;
reg   [13:0] out_pixel_val_reg_911;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter2;
wire   [10:0] lbuffer_val_0_address0;
reg    lbuffer_val_0_ce0;
wire   [10:0] lbuffer_val_0_address1;
reg    lbuffer_val_0_ce1;
reg    lbuffer_val_0_we1;
wire   [10:0] lbuffer_val_1_address0;
reg    lbuffer_val_1_ce0;
wire   [15:0] lbuffer_val_1_q0;
reg    lbuffer_val_1_ce1;
reg    lbuffer_val_1_we1;
reg   [31:0] t_V_reg_244;
wire    ap_CS_fsm_state7;
reg   [31:0] ap_phi_mux_t_V_1_phi_fu_259_p4;
wire   [63:0] tmp_4_fu_371_p1;
wire   [63:0] tmp_10_fu_412_p1;
reg    ap_block_pp0_stage0_01001;
reg   [15:0] tmp1_s_fu_136;
reg   [15:0] tmp0_s_fu_140;
reg   [15:0] element_gd_s_fu_144;
reg   [15:0] win_val_0_1_fu_148;
wire   [15:0] win_val_0_0_0_win_va_fu_458_p3;
reg   [15:0] win_val_0_1_1_fu_152;
reg   [15:0] win_val_1_1_fu_156;
wire   [15:0] win_val_1_0_0_win_va_fu_451_p3;
reg   [15:0] win_val_1_1_1_fu_160;
reg   [15:0] win_val_2_1_fu_164;
wire   [15:0] win_val_2_0_0_win_va_fu_444_p3;
reg   [15:0] win_val_2_1_1_fu_168;
wire   [32:0] lhs_V_cast_fu_267_p1;
wire   [32:0] lhs_V_1_cast_fu_277_p1;
wire   [32:0] tmp_cast_fu_299_p1;
wire   [30:0] tmp_fu_314_p4;
wire   [32:0] tmp_6_cast_fu_346_p1;
wire   [0:0] tmp_21_fu_382_p2;
wire   [30:0] tmp_12_fu_479_p4;
wire   [1:0] current_dir_fu_465_p1;
wire   [0:0] tmp_13_fu_495_p2;
wire   [0:0] tmp_14_fu_501_p2;
wire   [0:0] sel_tmp1_fu_513_p2;
wire   [0:0] tmp_15_fu_507_p2;
wire   [13:0] tmp_23_fu_545_p4;
wire   [13:0] tmp_24_fu_555_p4;
wire   [13:0] tmp_17_fu_535_p4;
wire   [13:0] tmp_25_fu_565_p3;
wire   [0:0] sel_tmp2_fu_519_p2;
wire   [13:0] tmp_16_fu_525_p4;
wire   [13:0] tmp_26_fu_573_p3;
wire   [13:0] tmp_30_fu_609_p4;
wire   [13:0] tmp_31_fu_619_p4;
wire   [13:0] tmp_29_fu_599_p4;
wire   [13:0] tmp_32_fu_629_p3;
wire   [13:0] tmp_28_fu_589_p4;
wire   [13:0] tmp_33_fu_637_p3;
wire   [13:0] out_pixel_val_2_cast_fu_469_p4;
wire   [13:0] tmp_34_fu_645_p3;
wire   [13:0] tmp_27_fu_581_p3;
wire   [0:0] tmp_18_fu_653_p2;
wire   [0:0] tmp_19_fu_659_p2;
wire   [0:0] or_cond1_fu_665_p2;
wire   [0:0] tmp2_fu_722_p2;
wire   [0:0] tmp9_fu_718_p2;
wire   [0:0] or_cond4_fu_726_p2;
wire   [13:0] tmp_20_fu_732_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

nonmax_suppression_lbuffer_val_0 #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
lbuffer_val_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(lbuffer_val_0_address0),
    .ce0(lbuffer_val_0_ce0),
    .q0(lbuffer_val_0_q0),
    .address1(lbuffer_val_0_address1),
    .ce1(lbuffer_val_0_ce1),
    .we1(lbuffer_val_0_we1),
    .d1(element_gd_s_fu_144)
);

nonmax_suppression_lbuffer_val_0 #(
    .DataWidth( 16 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
lbuffer_val_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(lbuffer_val_1_address0),
    .ce0(lbuffer_val_1_ce0),
    .q0(lbuffer_val_1_q0),
    .address1(lbuffer_val_1_addr_reg_881_pp0_iter1_reg),
    .ce1(lbuffer_val_1_ce1),
    .we1(lbuffer_val_1_we1),
    .d1(tmp0_reg_901)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((tmp_1_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_1_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((tmp_1_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_reg_861 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_1_reg_255 <= j_V_reg_865;
    end else if (((tmp_1_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_1_reg_255 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        t_V_reg_244 <= i_V_reg_836;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_244 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond3_reg_877 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        element_gd_s_fu_144 <= gd_data_stream_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_836 <= i_V_fu_308_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp1_reg_906 <= icmp1_fu_489_p2;
        or_cond2_reg_897_pp0_iter2_reg <= or_cond2_reg_897_pp0_iter1_reg;
        out_pixel_val_reg_911 <= out_pixel_val_fu_671_p3;
        tmp_11_reg_892_pp0_iter2_reg <= tmp_11_reg_892_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_fu_303_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_reg_841 <= icmp_fu_324_p2;
        tmp_3_reg_846 <= tmp_3_fu_330_p2;
        tmp_6_reg_856 <= tmp_6_fu_341_p2;
        tmp_8_reg_851 <= tmp_8_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_V_reg_865 <= j_V_fu_355_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_s_fu_361_p2 == 1'd1) & (tmp_7_fu_350_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lbuffer_val_1_addr_reg_881 <= tmp_4_fu_371_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lbuffer_val_1_addr_reg_881_pp0_iter1_reg <= lbuffer_val_1_addr_reg_881;
        or_cond2_reg_897_pp0_iter1_reg <= or_cond2_reg_897;
        or_cond3_reg_877_pp0_iter1_reg <= or_cond3_reg_877;
        t_V_1_reg_255_pp0_iter1_reg <= t_V_1_reg_255;
        tmp_11_reg_892_pp0_iter1_reg <= tmp_11_reg_892;
        tmp_7_reg_861 <= tmp_7_fu_350_p2;
        tmp_7_reg_861_pp0_iter1_reg <= tmp_7_reg_861;
        tmp_s_reg_870_pp0_iter1_reg <= tmp_s_reg_870;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_fu_350_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_cond2_reg_897 <= or_cond2_fu_388_p2;
        or_cond3_reg_877 <= or_cond3_fu_366_p2;
        tmp_11_reg_892 <= tmp_11_fu_377_p2;
        tmp_s_reg_870 <= tmp_s_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_s_reg_870 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp0_reg_901 <= lbuffer_val_0_q0;
        tmp0_s_fu_140 <= lbuffer_val_0_q0;
        tmp1_s_fu_136 <= lbuffer_val_1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_reg_861_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        win_val_0_1_1_fu_152 <= win_val_0_1_fu_148;
        win_val_0_1_fu_148 <= win_val_0_0_0_win_va_fu_458_p3;
        win_val_1_1_1_fu_160 <= win_val_1_1_fu_156;
        win_val_1_1_fu_156 <= win_val_1_0_0_win_va_fu_451_p3;
        win_val_2_1_1_fu_168 <= win_val_2_1_fu_164;
        win_val_2_1_fu_164 <= win_val_2_0_0_win_va_fu_444_p3;
    end
end

always @ (*) begin
    if ((tmp_7_fu_350_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_7_reg_861 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_t_V_1_phi_fu_259_p4 = j_V_reg_865;
    end else begin
        ap_phi_mux_t_V_1_phi_fu_259_p4 = t_V_1_reg_255;
    end
end

always @ (*) begin
    if (((or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        dst_data_stream_V_blk_n = dst_data_stream_V_full_n;
    end else begin
        dst_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        dst_data_stream_V_write = 1'b1;
    end else begin
        dst_data_stream_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((or_cond3_reg_877 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gd_data_stream_V_blk_n = gd_data_stream_V_empty_n;
    end else begin
        gd_data_stream_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond3_reg_877 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gd_data_stream_V_read = 1'b1;
    end else begin
        gd_data_stream_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_1_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        lbuffer_val_0_ce0 = 1'b1;
    end else begin
        lbuffer_val_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        lbuffer_val_0_ce1 = 1'b1;
    end else begin
        lbuffer_val_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (or_cond3_reg_877_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        lbuffer_val_0_we1 = 1'b1;
    end else begin
        lbuffer_val_0_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        lbuffer_val_1_ce0 = 1'b1;
    end else begin
        lbuffer_val_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        lbuffer_val_1_ce1 = 1'b1;
    end else begin
        lbuffer_val_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_s_reg_870_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        lbuffer_val_1_we1 = 1'b1;
    end else begin
        lbuffer_val_1_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_1_fu_303_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((tmp_7_fu_350_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((tmp_7_fu_350_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((or_cond3_reg_877 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((or_cond3_reg_877 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((or_cond3_reg_877 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((or_cond3_reg_877 == 1'd1) & (gd_data_stream_V_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((or_cond2_reg_897_pp0_iter2_reg == 1'd0) & (dst_data_stream_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign current_dir_fu_465_p1 = win_val_1_1_fu_156[1:0];

assign dst_data_stream_V_din = tmp_20_fu_732_p3;

assign i_V_fu_308_p2 = (t_V_reg_244 + 32'd1);

assign icmp1_fu_489_p2 = ((tmp_12_fu_479_p4 == 31'd0) ? 1'b1 : 1'b0);

assign icmp_fu_324_p2 = ((tmp_fu_314_p4 == 31'd0) ? 1'b1 : 1'b0);

assign j_V_fu_355_p2 = (ap_phi_mux_t_V_1_phi_fu_259_p4 + 32'd1);

assign lbuffer_val_0_address0 = tmp_4_fu_371_p1;

assign lbuffer_val_0_address1 = tmp_10_fu_412_p1;

assign lbuffer_val_1_address0 = tmp_4_fu_371_p1;

assign lhs_V_1_cast_fu_277_p1 = gd_cols_V;

assign lhs_V_cast_fu_267_p1 = gd_rows_V;

assign or_cond1_fu_665_p2 = (tmp_19_fu_659_p2 & tmp_18_fu_653_p2);

assign or_cond2_fu_388_p2 = (tmp_3_reg_846 | tmp_21_fu_382_p2);

assign or_cond3_fu_366_p2 = (tmp_s_fu_361_p2 & tmp_8_reg_851);

assign or_cond4_fu_726_p2 = (tmp9_fu_718_p2 | tmp2_fu_722_p2);

assign out_pixel_val_2_cast_fu_469_p4 = {{win_val_1_1_fu_156[15:2]}};

assign out_pixel_val_fu_671_p3 = ((or_cond1_fu_665_p2[0:0] === 1'b1) ? out_pixel_val_2_cast_fu_469_p4 : 14'd0);

assign ret_V_1_fu_281_p2 = (lhs_V_1_cast_fu_277_p1 + 33'd1);

assign ret_V_2_fu_287_p2 = ($signed(lhs_V_cast_fu_267_p1) + $signed(33'd8589934591));

assign ret_V_3_fu_293_p2 = ($signed(lhs_V_1_cast_fu_277_p1) + $signed(33'd8589934591));

assign ret_V_fu_271_p2 = (lhs_V_cast_fu_267_p1 + 33'd1);

assign sel_tmp1_fu_513_p2 = (tmp_13_fu_495_p2 ^ 1'd1);

assign sel_tmp2_fu_519_p2 = (tmp_14_fu_501_p2 & sel_tmp1_fu_513_p2);

assign start_out = real_start;

assign tmp2_fu_722_p2 = (tmp_6_reg_856 | tmp_11_reg_892_pp0_iter2_reg);

assign tmp9_fu_718_p2 = (icmp_reg_841 | icmp1_reg_906);

assign tmp_10_fu_412_p1 = t_V_1_reg_255_pp0_iter1_reg;

assign tmp_11_fu_377_p2 = (($signed(tmp_6_cast_fu_346_p1) > $signed(ret_V_3_fu_293_p2)) ? 1'b1 : 1'b0);

assign tmp_12_fu_479_p4 = {{t_V_1_reg_255_pp0_iter1_reg[31:1]}};

assign tmp_13_fu_495_p2 = ((current_dir_fu_465_p1 == 2'd0) ? 1'b1 : 1'b0);

assign tmp_14_fu_501_p2 = ((current_dir_fu_465_p1 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_15_fu_507_p2 = ((current_dir_fu_465_p1 == 2'd2) ? 1'b1 : 1'b0);

assign tmp_16_fu_525_p4 = {{win_val_0_1_1_fu_152[15:2]}};

assign tmp_17_fu_535_p4 = {{win_val_1_1_1_fu_160[15:2]}};

assign tmp_18_fu_653_p2 = ((out_pixel_val_2_cast_fu_469_p4 > tmp_34_fu_645_p3) ? 1'b1 : 1'b0);

assign tmp_19_fu_659_p2 = ((out_pixel_val_2_cast_fu_469_p4 > tmp_27_fu_581_p3) ? 1'b1 : 1'b0);

assign tmp_1_fu_303_p2 = ((tmp_cast_fu_299_p1 < ret_V_fu_271_p2) ? 1'b1 : 1'b0);

assign tmp_20_fu_732_p3 = ((or_cond4_fu_726_p2[0:0] === 1'b1) ? 14'd0 : out_pixel_val_reg_911);

assign tmp_21_fu_382_p2 = ((ap_phi_mux_t_V_1_phi_fu_259_p4 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_23_fu_545_p4 = {{win_val_2_1_fu_164[15:2]}};

assign tmp_24_fu_555_p4 = {{win_val_0_0_0_win_va_fu_458_p3[15:2]}};

assign tmp_25_fu_565_p3 = ((tmp_15_fu_507_p2[0:0] === 1'b1) ? tmp_23_fu_545_p4 : tmp_24_fu_555_p4);

assign tmp_26_fu_573_p3 = ((tmp_13_fu_495_p2[0:0] === 1'b1) ? tmp_17_fu_535_p4 : tmp_25_fu_565_p3);

assign tmp_27_fu_581_p3 = ((sel_tmp2_fu_519_p2[0:0] === 1'b1) ? tmp_16_fu_525_p4 : tmp_26_fu_573_p3);

assign tmp_28_fu_589_p4 = {{win_val_2_0_0_win_va_fu_444_p3[15:2]}};

assign tmp_29_fu_599_p4 = {{win_val_1_0_0_win_va_fu_451_p3[15:2]}};

assign tmp_30_fu_609_p4 = {{win_val_0_1_fu_148[15:2]}};

assign tmp_31_fu_619_p4 = {{win_val_2_1_1_fu_168[15:2]}};

assign tmp_32_fu_629_p3 = ((tmp_15_fu_507_p2[0:0] === 1'b1) ? tmp_30_fu_609_p4 : tmp_31_fu_619_p4);

assign tmp_33_fu_637_p3 = ((tmp_13_fu_495_p2[0:0] === 1'b1) ? tmp_29_fu_599_p4 : tmp_32_fu_629_p3);

assign tmp_34_fu_645_p3 = ((sel_tmp2_fu_519_p2[0:0] === 1'b1) ? tmp_28_fu_589_p4 : tmp_33_fu_637_p3);

assign tmp_3_fu_330_p2 = ((t_V_reg_244 == 32'd0) ? 1'b1 : 1'b0);

assign tmp_4_fu_371_p1 = ap_phi_mux_t_V_1_phi_fu_259_p4;

assign tmp_6_cast_fu_346_p1 = ap_phi_mux_t_V_1_phi_fu_259_p4;

assign tmp_6_fu_341_p2 = (($signed(tmp_cast_fu_299_p1) > $signed(ret_V_2_fu_287_p2)) ? 1'b1 : 1'b0);

assign tmp_7_fu_350_p2 = ((tmp_6_cast_fu_346_p1 < ret_V_1_fu_281_p2) ? 1'b1 : 1'b0);

assign tmp_8_fu_336_p2 = ((t_V_reg_244 < gd_rows_V) ? 1'b1 : 1'b0);

assign tmp_cast_fu_299_p1 = t_V_reg_244;

assign tmp_fu_314_p4 = {{t_V_reg_244[31:1]}};

assign tmp_s_fu_361_p2 = ((ap_phi_mux_t_V_1_phi_fu_259_p4 < gd_cols_V) ? 1'b1 : 1'b0);

assign win_val_0_0_0_win_va_fu_458_p3 = ((tmp_s_reg_870_pp0_iter1_reg[0:0] === 1'b1) ? element_gd_s_fu_144 : win_val_0_1_fu_148);

assign win_val_1_0_0_win_va_fu_451_p3 = ((tmp_s_reg_870_pp0_iter1_reg[0:0] === 1'b1) ? tmp0_s_fu_140 : win_val_1_1_fu_156);

assign win_val_2_0_0_win_va_fu_444_p3 = ((tmp_s_reg_870_pp0_iter1_reg[0:0] === 1'b1) ? tmp1_s_fu_136 : win_val_2_1_fu_164);

endmodule //nonmax_suppression