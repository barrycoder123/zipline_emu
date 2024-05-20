
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ctrl_xcm39 ( empty, full, used_slots, free_slots, rptr, wptr, 
	underflow, overflow, clk, rst_n, wen, ren, clear);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [1:0] used_slots;
output [1:0] free_slots;
output [0:0] rptr;
output [0:0] wptr;
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
wire [0:0] r_rptr;
wire [0:0] c_rptr;
wire [0:0] r_wptr;
wire [0:0] c_wptr;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_cpass;
`_2_ wire _zy_sva_b0;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_cpass;
`_2_ wire _zy_sva_b1;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_cpass;
`_2_ wire _zy_sva_b2;
supply0 n55;
supply1 n56;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
Q_XOR2 U2 ( .A0(n26), .A1(n10), .Z(n22));
wire [2:0] n57 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n57[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n58 = 3'b000;
Q_ASSERT \cover_depth_1_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n58[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_1_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_1_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_1_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n59 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n59[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_AN02 U9 ( .A0(r_used_slots[0]), .A1(n2), .Z(_zy_sva_b2_t));
Q_NR02 U10 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .Z(_zy_sva_b1_t));
Q_AN02 U11 ( .A0(n1), .A1(r_used_slots[1]), .Z(_zy_sva_b0_t));
Q_INV U12 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign _zz_strnp_5 ( wptr[0], r_wptr[0]);
ixc_assign _zz_strnp_4 ( rptr[0], r_rptr[0]);
ixc_assign_2 _zz_strnp_3 ( free_slots[1:0], r_free_slots[1:0]);
ixc_assign_2 _zz_strnp_2 ( used_slots[1:0], r_used_slots[1:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U21 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n3));
Q_AN02 U22 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n4));
Q_AN02 U23 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n5));
Q_XOR2 U24 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n9));
Q_XOR2 U25 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n10));
Q_XNR2 U26 ( .A0(r_free_slots[0]), .A1(r_free_slots[1]), .Z(n11));
Q_XOR2 U27 ( .A0(n46), .A1(r_free_slots[0]), .Z(n12));
Q_MX02 U28 ( .S(n34), .A0(n11), .A1(r_free_slots[1]), .Z(n13));
Q_OR02 U29 ( .A0(n12), .A1(n13), .Z(n14));
Q_MX02 U30 ( .S(n48), .A0(n12), .A1(n8), .Z(n15));
Q_AN02 U31 ( .A0(n48), .A1(r_free_slots[0]), .Z(n16));
Q_MX02 U32 ( .S(n49), .A0(n16), .A1(n15), .Z(c_free_slots[0]));
Q_MX02 U33 ( .S(n48), .A0(n13), .A1(n9), .Z(n17));
Q_INV U34 ( .A(n48), .Z(n18));
Q_OR02 U35 ( .A0(n18), .A1(r_free_slots[1]), .Z(n19));
Q_MX02 U36 ( .S(n49), .A0(n19), .A1(n17), .Z(c_free_slots[1]));
Q_ND02 U37 ( .A0(r_used_slots[0]), .A1(n10), .Z(n20));
Q_AN02 U38 ( .A0(n26), .A1(r_used_slots[0]), .Z(n21));
Q_MX02 U39 ( .S(n47), .A0(n21), .A1(n1), .Z(c_used_slots[0]));
Q_AN02 U40 ( .A0(n26), .A1(r_used_slots[1]), .Z(n23));
Q_MX02 U41 ( .S(n47), .A0(n23), .A1(n22), .Z(c_used_slots[1]));
Q_AN02 U42 ( .A0(n48), .A1(r_wptr[0]), .Z(n24));
Q_MX02 U43 ( .S(n50), .A0(n24), .A1(n7), .Z(c_wptr[0]));
Q_AN02 U44 ( .A0(n29), .A1(r_rptr[0]), .Z(n25));
Q_MX02 U45 ( .S(n51), .A0(n25), .A1(n6), .Z(c_rptr[0]));
Q_MX02 U46 ( .S(n53), .A0(n52), .A1(r_full), .Z(c_full));
Q_MX02 U47 ( .S(n42), .A0(n54), .A1(r_empty), .Z(c_empty));
Q_NR02 U48 ( .A0(n27), .A1(clear), .Z(n26));
Q_AN02 U49 ( .A0(n28), .A1(n29), .Z(n27));
Q_OA21 U50 ( .A0(n31), .A1(n32), .B0(n30), .Z(n47));
Q_AN02 U51 ( .A0(n46), .A1(n28), .Z(n32));
Q_NR02 U52 ( .A0(n34), .A1(clear), .Z(n29));
Q_OA21 U53 ( .A0(n31), .A1(n28), .B0(n30), .Z(n49));
Q_AN02 U54 ( .A0(n33), .A1(n34), .Z(n31));
Q_NR02 U55 ( .A0(clear), .A1(n28), .Z(n48));
Q_INV U56 ( .A(n28), .Z(n33));
Q_AN02 U57 ( .A0(n28), .A1(n35), .Z(n50));
Q_NR02 U58 ( .A0(r_wptr[0]), .A1(clear), .Z(n35));
Q_INV U59 ( .A(n34), .Z(n46));
Q_AN02 U60 ( .A0(n34), .A1(n36), .Z(n51));
Q_NR02 U61 ( .A0(r_rptr[0]), .A1(clear), .Z(n36));
Q_AN02 U62 ( .A0(n28), .A1(n37), .Z(n52));
Q_NR02 U63 ( .A0(n14), .A1(clear), .Z(n37));
Q_AN02 U64 ( .A0(wen), .A1(n38), .Z(n28));
Q_INV U65 ( .A(full), .Z(n38));
Q_NR02 U66 ( .A0(ren), .A1(clear), .Z(n39));
Q_OA21 U67 ( .A0(n40), .A1(n41), .B0(n39), .Z(n53));
Q_OR02 U68 ( .A0(n14), .A1(full), .Z(n41));
Q_NR02 U69 ( .A0(n43), .A1(n54), .Z(n42));
Q_AN02 U70 ( .A0(wen), .A1(n30), .Z(n43));
Q_INV U71 ( .A(clear), .Z(n30));
Q_AO21 U72 ( .A0(n34), .A1(n44), .B0(clear), .Z(n54));
Q_INV U73 ( .A(wen), .Z(n40));
Q_NR02 U74 ( .A0(n20), .A1(wen), .Z(n44));
Q_AN02 U75 ( .A0(ren), .A1(n45), .Z(n34));
Q_INV U76 ( .A(empty), .Z(n45));
Q_AN02 U77 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U78 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n7));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n6));
Q_FDP1 \r_free_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n8));
Q_FDP2 \r_free_slots_REG[1] ( .CK(clk), .S(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n1));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN(n2));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n5), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n4), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n3), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n55), .D(n56), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 1 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[1]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
