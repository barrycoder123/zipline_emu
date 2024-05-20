
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ctrl_xcm36 ( empty, full, used_slots, free_slots, rptr, wptr, 
	underflow, overflow, clk, rst_n, wen, ren, clear);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [1:0] used_slots;
output [1:0] free_slots;
output [1:0] rptr;
output [1:0] wptr;
output underflow;
output overflow;
input clk;
input rst_n;
input wen;
input ren;
input clear;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire _zy_sva_fifo_entries_reached_DEPTH_1_reset_or;
wire _zy_sva_fifo_entries_reached_i_2_reset_or;
wire _zy_sva_fifo_entries_reached_i_3_reset_or;
wire _zy_sva_b0_t;
wire _zy_sva_b1_t;
wire _zy_sva_b2_t;
wire r_empty;
wire c_empty;
wire r_full;
wire c_full;
wire [1:0] r_used_slots;
wire [1:0] c_used_slots;
wire [1:0] r_free_slots;
wire [1:0] c_free_slots;
wire [1:0] r_rptr;
wire [1:0] c_rptr;
wire [1:0] r_wptr;
wire [1:0] c_wptr;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_cpass;
`_2_ wire _zy_sva_b0;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_cpass;
`_2_ wire _zy_sva_b1;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_cpass;
`_2_ wire _zy_sva_b2;
supply0 n61;
supply1 n62;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
wire [2:0] n63 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n63[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n64 = 3'b000;
Q_ASSERT \cover_depth_2_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n64[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n65 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n65[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_AN02 U8 ( .A0(n1), .A1(r_used_slots[1]), .Z(_zy_sva_b2_t));
Q_NR02 U9 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .Z(_zy_sva_b1_t));
Q_AN02 U10 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .Z(_zy_sva_b0_t));
Q_INV U11 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign_2 _zz_strnp_5 ( wptr[1:0], r_wptr[1:0]);
ixc_assign_2 _zz_strnp_4 ( rptr[1:0], r_rptr[1:0]);
ixc_assign_2 _zz_strnp_3 ( free_slots[1:0], r_free_slots[1:0]);
ixc_assign_2 _zz_strnp_2 ( used_slots[1:0], r_used_slots[1:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U20 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n2));
Q_AN02 U21 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n3));
Q_AN02 U22 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n4));
Q_AN02 U23 ( .A0(n5), .A1(r_rptr[1]), .Z(n59));
Q_AN02 U24 ( .A0(n6), .A1(r_wptr[1]), .Z(n60));
Q_XOR2 U25 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n8));
Q_XOR2 U26 ( .A0(r_rptr[1]), .A1(r_rptr[0]), .Z(n9));
Q_XOR2 U27 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n10));
Q_XOR2 U28 ( .A0(r_wptr[1]), .A1(r_wptr[0]), .Z(n11));
Q_XNR2 U29 ( .A0(r_free_slots[0]), .A1(r_free_slots[1]), .Z(n12));
Q_XOR2 U30 ( .A0(n50), .A1(r_free_slots[0]), .Z(n13));
Q_MX02 U31 ( .S(n38), .A0(n12), .A1(r_free_slots[1]), .Z(n14));
Q_OR02 U32 ( .A0(n13), .A1(n14), .Z(n15));
Q_MX02 U33 ( .S(n52), .A0(n13), .A1(n7), .Z(n16));
Q_INV U34 ( .A(n52), .Z(n17));
Q_OR02 U35 ( .A0(n17), .A1(r_free_slots[0]), .Z(n18));
Q_MX02 U36 ( .S(n53), .A0(n18), .A1(n16), .Z(c_free_slots[0]));
Q_MX02 U37 ( .S(n52), .A0(n14), .A1(n8), .Z(n19));
Q_OR02 U38 ( .A0(n17), .A1(r_free_slots[1]), .Z(n20));
Q_MX02 U39 ( .S(n53), .A0(n20), .A1(n19), .Z(c_free_slots[1]));
Q_XNR2 U40 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .Z(n21));
Q_OR02 U41 ( .A0(n1), .A1(n21), .Z(n22));
Q_AN02 U42 ( .A0(n30), .A1(r_used_slots[0]), .Z(n23));
Q_MX02 U43 ( .S(n51), .A0(n23), .A1(n1), .Z(c_used_slots[0]));
Q_MX02 U44 ( .S(n30), .A0(n10), .A1(n21), .Z(n24));
Q_AN02 U45 ( .A0(n30), .A1(r_used_slots[1]), .Z(n25));
Q_MX02 U46 ( .S(n51), .A0(n25), .A1(n24), .Z(c_used_slots[1]));
Q_AN02 U47 ( .A0(n52), .A1(r_wptr[0]), .Z(n26));
Q_MX02 U48 ( .S(n54), .A0(n26), .A1(n6), .Z(c_wptr[0]));
Q_AN02 U49 ( .A0(n52), .A1(r_wptr[1]), .Z(n27));
Q_MX02 U50 ( .S(n54), .A0(n27), .A1(n11), .Z(c_wptr[1]));
Q_AN02 U51 ( .A0(n33), .A1(r_rptr[0]), .Z(n28));
Q_MX02 U52 ( .S(n55), .A0(n28), .A1(n5), .Z(c_rptr[0]));
Q_AN02 U53 ( .A0(n33), .A1(r_rptr[1]), .Z(n29));
Q_MX02 U54 ( .S(n55), .A0(n29), .A1(n9), .Z(c_rptr[1]));
Q_MX02 U55 ( .S(n57), .A0(n56), .A1(r_full), .Z(c_full));
Q_MX02 U56 ( .S(n46), .A0(n58), .A1(r_empty), .Z(c_empty));
Q_NR02 U57 ( .A0(n31), .A1(clear), .Z(n30));
Q_AN02 U58 ( .A0(n32), .A1(n33), .Z(n31));
Q_OA21 U59 ( .A0(n35), .A1(n36), .B0(n34), .Z(n51));
Q_AN02 U60 ( .A0(n50), .A1(n32), .Z(n36));
Q_NR02 U61 ( .A0(n38), .A1(clear), .Z(n33));
Q_OA21 U62 ( .A0(n35), .A1(n32), .B0(n34), .Z(n53));
Q_AN02 U63 ( .A0(n37), .A1(n38), .Z(n35));
Q_NR02 U64 ( .A0(clear), .A1(n32), .Z(n52));
Q_INV U65 ( .A(n32), .Z(n37));
Q_AN02 U66 ( .A0(n32), .A1(n39), .Z(n54));
Q_NR02 U67 ( .A0(n60), .A1(clear), .Z(n39));
Q_INV U68 ( .A(n38), .Z(n50));
Q_AN02 U69 ( .A0(n38), .A1(n40), .Z(n55));
Q_NR02 U70 ( .A0(n59), .A1(clear), .Z(n40));
Q_AN02 U71 ( .A0(n32), .A1(n41), .Z(n56));
Q_NR02 U72 ( .A0(n15), .A1(clear), .Z(n41));
Q_AN02 U73 ( .A0(wen), .A1(n42), .Z(n32));
Q_INV U74 ( .A(full), .Z(n42));
Q_NR02 U75 ( .A0(ren), .A1(clear), .Z(n43));
Q_OA21 U76 ( .A0(n44), .A1(n45), .B0(n43), .Z(n57));
Q_OR02 U77 ( .A0(n15), .A1(full), .Z(n45));
Q_NR02 U78 ( .A0(n47), .A1(n58), .Z(n46));
Q_AN02 U79 ( .A0(wen), .A1(n34), .Z(n47));
Q_INV U80 ( .A(clear), .Z(n34));
Q_AO21 U81 ( .A0(n38), .A1(n48), .B0(clear), .Z(n58));
Q_INV U82 ( .A(wen), .Z(n44));
Q_NR02 U83 ( .A0(n22), .A1(wen), .Z(n48));
Q_AN02 U84 ( .A0(ren), .A1(n49), .Z(n38));
Q_INV U85 ( .A(empty), .Z(n49));
Q_AN02 U86 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U87 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n6));
Q_FDP1 \r_wptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_wptr[1]), .Q(r_wptr[1]), .QN( ));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n5));
Q_FDP1 \r_rptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_rptr[1]), .Q(r_rptr[1]), .QN( ));
Q_FDP2 \r_free_slots_REG[0] ( .CK(clk), .S(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n7));
Q_FDP2 \r_free_slots_REG[1] ( .CK(clk), .S(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n1));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN( ));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n4), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n3), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n2), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n61), .D(n62), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 2 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[2]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
