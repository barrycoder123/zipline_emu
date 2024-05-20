
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ctrl_xcm38 ( empty, full, used_slots, free_slots, rptr, wptr, 
	underflow, overflow, clk, rst_n, wen, ren, clear);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [4:0] used_slots;
output [4:0] free_slots;
output [3:0] rptr;
output [3:0] wptr;
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
wire _zy_sva_fifo_entries_reached_i_4_reset_or;
wire _zy_sva_fifo_entries_reached_i_5_reset_or;
wire _zy_sva_fifo_entries_reached_i_6_reset_or;
wire _zy_sva_b0_t;
wire _zy_sva_b1_t;
wire _zy_sva_b2_t;
wire _zy_sva_b3_t;
wire _zy_sva_b4_t;
wire _zy_sva_b5_t;
wire r_empty;
wire c_empty;
wire r_full;
wire c_full;
wire [4:0] r_used_slots;
wire [4:0] c_used_slots;
wire [4:0] r_free_slots;
wire [4:0] c_free_slots;
wire [3:0] r_rptr;
wire [3:0] c_rptr;
wire [3:0] r_wptr;
wire [3:0] c_wptr;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_DEPTH_1_cpass;
`_2_ wire _zy_sva_b0;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_2_cpass;
`_2_ wire _zy_sva_b1;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_3_cpass;
`_2_ wire _zy_sva_b2;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_4_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_4_cpass;
`_2_ wire _zy_sva_b3;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_5_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_5_cpass;
`_2_ wire _zy_sva_b4;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_6_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_6_cpass;
`_2_ wire _zy_sva_b5;
supply0 n123;
supply1 n124;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_i_4_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
Q_BUF U2 ( .A(_zy_sva_fifo_entries_reached_i_5_reset_or), .Z(_zy_sva_fifo_entries_reached_i_4_reset_or));
Q_BUF U3 ( .A(_zy_sva_fifo_entries_reached_i_6_reset_or), .Z(_zy_sva_fifo_entries_reached_i_5_reset_or));
Q_BUF U4 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_6_reset_or));
Q_XNR2 U5 ( .A0(n92), .A1(n54), .Z(n64));
Q_AN02 U6 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n23));
Q_AN02 U7 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n17));
wire [2:0] n127 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n127[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n128 = 3'b000;
Q_ASSERT \cover_depth_15_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_6_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_6_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n128[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_15_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_15_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_15_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n129 = 3'b000;
Q_ASSERT \cover_depth_14_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_5_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_5_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n129[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_14_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_14_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_14_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n130 = 3'b000;
Q_ASSERT \cover_depth_12_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_4_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_4_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n130[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_12_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_12_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_12_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n131 = 3'b000;
Q_ASSERT \cover_depth_8_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n131[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_8_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_8_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_8_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n132 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n132[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b5 ( _zy_sva_b5, _zy_sva_b5_t);
ixc_sample_logic_1_3 _zz_zy_sva_b4 ( _zy_sva_b4, _zy_sva_b4_t);
ixc_sample_logic_1_3 _zz_zy_sva_b3 ( _zy_sva_b3, _zy_sva_b3_t);
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_AN03 U20 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n7), .Z(_zy_sva_b5_t));
Q_AN03 U21 ( .A0(r_used_slots[1]), .A1(n6), .A2(n7), .Z(_zy_sva_b4_t));
Q_AN03 U22 ( .A0(n1), .A1(r_used_slots[3]), .A2(r_used_slots[2]), .Z(n7));
Q_NR03 U23 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n126), .Z(_zy_sva_b3_t));
Q_NR03 U24 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n5), .Z(_zy_sva_b2_t));
Q_OR03 U25 ( .A0(r_used_slots[4]), .A1(n4), .A2(r_used_slots[2]), .Z(n5));
Q_NR03 U26 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n3), .Z(_zy_sva_b1_t));
Q_OR03 U27 ( .A0(r_used_slots[4]), .A1(r_used_slots[3]), .A2(r_used_slots[2]), .Z(n3));
Q_NR03 U28 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n2), .Z(_zy_sva_b0_t));
Q_OR03 U29 ( .A0(n1), .A1(r_used_slots[3]), .A2(r_used_slots[2]), .Z(n2));
Q_INV U30 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign_4 _zz_strnp_5 ( wptr[3:0], r_wptr[3:0]);
ixc_assign_4 _zz_strnp_4 ( rptr[3:0], r_rptr[3:0]);
ixc_assign_5 _zz_strnp_3 ( free_slots[4:0], r_free_slots[4:0]);
ixc_assign_5 _zz_strnp_2 ( used_slots[4:0], r_used_slots[4:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U39 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n8));
Q_AN02 U40 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n9));
Q_AN02 U41 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n10));
Q_AN02 U42 ( .A0(rst_n), .A1(_zy_sva_b3), .Z(n11));
Q_AN02 U43 ( .A0(rst_n), .A1(_zy_sva_b4), .Z(n12));
Q_AN02 U44 ( .A0(rst_n), .A1(_zy_sva_b5), .Z(n13));
Q_AN03 U45 ( .A0(r_rptr[3]), .A1(r_rptr[2]), .A2(r_rptr[1]), .Z(n14));
Q_AN02 U46 ( .A0(r_rptr[0]), .A1(n14), .Z(n121));
Q_AN03 U47 ( .A0(r_wptr[3]), .A1(r_wptr[2]), .A2(r_wptr[1]), .Z(n15));
Q_AN02 U48 ( .A0(r_wptr[0]), .A1(n15), .Z(n122));
Q_AD01HF U49 ( .A0(r_free_slots[2]), .B0(n17), .S(n18), .CO(n19));
Q_AD01HF U50 ( .A0(r_free_slots[3]), .B0(n19), .S(n20), .CO(n21));
Q_XOR2 U51 ( .A0(r_free_slots[4]), .A1(n21), .Z(n22));
Q_AD01HF U52 ( .A0(r_used_slots[2]), .B0(n23), .S(n24), .CO(n25));
Q_AD01HF U53 ( .A0(r_used_slots[3]), .B0(n25), .S(n26), .CO(n27));
Q_XOR2 U54 ( .A0(r_used_slots[4]), .A1(n27), .Z(n28));
Q_XNR2 U55 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n29));
Q_OR02 U56 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n30));
Q_XNR2 U57 ( .A0(r_free_slots[2]), .A1(n30), .Z(n31));
Q_OR02 U58 ( .A0(r_free_slots[2]), .A1(n30), .Z(n32));
Q_XNR2 U59 ( .A0(r_free_slots[3]), .A1(n32), .Z(n33));
Q_OR02 U60 ( .A0(r_free_slots[3]), .A1(n32), .Z(n34));
Q_XNR2 U61 ( .A0(r_free_slots[4]), .A1(n34), .Z(n35));
Q_XOR2 U62 ( .A0(n112), .A1(r_free_slots[0]), .Z(n36));
Q_MX02 U63 ( .S(n100), .A0(n29), .A1(r_free_slots[1]), .Z(n37));
Q_MX02 U64 ( .S(n100), .A0(n31), .A1(r_free_slots[2]), .Z(n38));
Q_MX02 U65 ( .S(n100), .A0(n33), .A1(r_free_slots[3]), .Z(n39));
Q_MX02 U66 ( .S(n100), .A0(n35), .A1(r_free_slots[4]), .Z(n40));
Q_OR03 U67 ( .A0(n36), .A1(n37), .A2(n38), .Z(n41));
Q_OR03 U68 ( .A0(n39), .A1(n40), .A2(n41), .Z(n42));
Q_MX02 U69 ( .S(n114), .A0(n36), .A1(n16), .Z(n43));
Q_AN02 U70 ( .A0(n114), .A1(r_free_slots[0]), .Z(n44));
Q_MX02 U71 ( .S(n115), .A0(n44), .A1(n43), .Z(c_free_slots[0]));
Q_MX02 U72 ( .S(n114), .A0(n37), .A1(n125), .Z(n45));
Q_AN02 U73 ( .A0(n114), .A1(r_free_slots[1]), .Z(n46));
Q_MX02 U74 ( .S(n115), .A0(n46), .A1(n45), .Z(c_free_slots[1]));
Q_MX02 U75 ( .S(n114), .A0(n38), .A1(n18), .Z(n47));
Q_AN02 U76 ( .A0(n114), .A1(r_free_slots[2]), .Z(n48));
Q_MX02 U77 ( .S(n115), .A0(n48), .A1(n47), .Z(c_free_slots[2]));
Q_MX02 U78 ( .S(n114), .A0(n39), .A1(n20), .Z(n49));
Q_AN02 U79 ( .A0(n114), .A1(r_free_slots[3]), .Z(n50));
Q_MX02 U80 ( .S(n115), .A0(n50), .A1(n49), .Z(c_free_slots[3]));
Q_MX02 U81 ( .S(n114), .A0(n40), .A1(n22), .Z(n51));
Q_INV U82 ( .A(n114), .Z(n52));
Q_OR02 U83 ( .A0(n52), .A1(r_free_slots[4]), .Z(n53));
Q_MX02 U84 ( .S(n115), .A0(n53), .A1(n51), .Z(c_free_slots[4]));
Q_XNR2 U85 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n54));
Q_OR02 U86 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n55));
Q_XNR2 U87 ( .A0(r_used_slots[2]), .A1(n55), .Z(n56));
Q_OR02 U88 ( .A0(r_used_slots[2]), .A1(n55), .Z(n57));
Q_XNR2 U89 ( .A0(r_used_slots[3]), .A1(n57), .Z(n58));
Q_OR02 U90 ( .A0(r_used_slots[3]), .A1(n57), .Z(n59));
Q_XOR2 U91 ( .A0(n1), .A1(n59), .Z(n60));
Q_OR03 U92 ( .A0(n6), .A1(n54), .A2(n56), .Z(n61));
Q_OR03 U93 ( .A0(n58), .A1(n60), .A2(n61), .Z(n62));
Q_AN02 U94 ( .A0(n92), .A1(r_used_slots[0]), .Z(n63));
Q_MX02 U95 ( .S(n113), .A0(n63), .A1(n6), .Z(c_used_slots[0]));
Q_AN02 U96 ( .A0(n92), .A1(r_used_slots[1]), .Z(n65));
Q_MX02 U97 ( .S(n113), .A0(n65), .A1(n64), .Z(c_used_slots[1]));
Q_MX02 U98 ( .S(n92), .A0(n24), .A1(n56), .Z(n66));
Q_AN02 U99 ( .A0(n92), .A1(r_used_slots[2]), .Z(n67));
Q_MX02 U100 ( .S(n113), .A0(n67), .A1(n66), .Z(c_used_slots[2]));
Q_MX02 U101 ( .S(n92), .A0(n26), .A1(n58), .Z(n68));
Q_AN02 U102 ( .A0(n92), .A1(r_used_slots[3]), .Z(n69));
Q_MX02 U103 ( .S(n113), .A0(n69), .A1(n68), .Z(c_used_slots[3]));
Q_MX02 U104 ( .S(n92), .A0(n28), .A1(n60), .Z(n70));
Q_AN02 U105 ( .A0(n92), .A1(r_used_slots[4]), .Z(n71));
Q_MX02 U106 ( .S(n113), .A0(n71), .A1(n70), .Z(c_used_slots[4]));
Q_AD01HF U107 ( .A0(r_rptr[1]), .B0(r_rptr[0]), .S(n73), .CO(n74));
Q_AD01HF U108 ( .A0(r_rptr[2]), .B0(n74), .S(n75), .CO(n76));
Q_XOR2 U109 ( .A0(r_rptr[3]), .A1(n76), .Z(n77));
Q_AD01HF U110 ( .A0(r_wptr[1]), .B0(r_wptr[0]), .S(n79), .CO(n80));
Q_AD01HF U111 ( .A0(r_wptr[2]), .B0(n80), .S(n81), .CO(n82));
Q_XOR2 U112 ( .A0(r_wptr[3]), .A1(n82), .Z(n83));
Q_AN02 U113 ( .A0(n114), .A1(r_wptr[0]), .Z(n84));
Q_MX02 U114 ( .S(n116), .A0(n84), .A1(n78), .Z(c_wptr[0]));
Q_AN02 U115 ( .A0(n114), .A1(r_wptr[1]), .Z(n85));
Q_MX02 U116 ( .S(n116), .A0(n85), .A1(n79), .Z(c_wptr[1]));
Q_AN02 U117 ( .A0(n114), .A1(r_wptr[2]), .Z(n86));
Q_MX02 U118 ( .S(n116), .A0(n86), .A1(n81), .Z(c_wptr[2]));
Q_AN02 U119 ( .A0(n114), .A1(r_wptr[3]), .Z(n87));
Q_MX02 U120 ( .S(n116), .A0(n87), .A1(n83), .Z(c_wptr[3]));
Q_AN02 U121 ( .A0(n95), .A1(r_rptr[0]), .Z(n88));
Q_MX02 U122 ( .S(n117), .A0(n88), .A1(n72), .Z(c_rptr[0]));
Q_AN02 U123 ( .A0(n95), .A1(r_rptr[1]), .Z(n89));
Q_MX02 U124 ( .S(n117), .A0(n89), .A1(n73), .Z(c_rptr[1]));
Q_AN02 U125 ( .A0(n95), .A1(r_rptr[2]), .Z(n90));
Q_MX02 U126 ( .S(n117), .A0(n90), .A1(n75), .Z(c_rptr[2]));
Q_AN02 U127 ( .A0(n95), .A1(r_rptr[3]), .Z(n91));
Q_MX02 U128 ( .S(n117), .A0(n91), .A1(n77), .Z(c_rptr[3]));
Q_MX02 U129 ( .S(n119), .A0(n118), .A1(r_full), .Z(c_full));
Q_MX02 U130 ( .S(n108), .A0(n120), .A1(r_empty), .Z(c_empty));
Q_NR02 U131 ( .A0(n93), .A1(clear), .Z(n92));
Q_AN02 U132 ( .A0(n94), .A1(n95), .Z(n93));
Q_OA21 U133 ( .A0(n97), .A1(n98), .B0(n96), .Z(n113));
Q_AN02 U134 ( .A0(n112), .A1(n94), .Z(n98));
Q_NR02 U135 ( .A0(n100), .A1(clear), .Z(n95));
Q_OA21 U136 ( .A0(n97), .A1(n94), .B0(n96), .Z(n115));
Q_AN02 U137 ( .A0(n99), .A1(n100), .Z(n97));
Q_NR02 U138 ( .A0(clear), .A1(n94), .Z(n114));
Q_INV U139 ( .A(n94), .Z(n99));
Q_AN02 U140 ( .A0(n94), .A1(n101), .Z(n116));
Q_NR02 U141 ( .A0(n122), .A1(clear), .Z(n101));
Q_INV U142 ( .A(n100), .Z(n112));
Q_AN02 U143 ( .A0(n100), .A1(n102), .Z(n117));
Q_NR02 U144 ( .A0(n121), .A1(clear), .Z(n102));
Q_AN02 U145 ( .A0(n94), .A1(n103), .Z(n118));
Q_NR02 U146 ( .A0(n42), .A1(clear), .Z(n103));
Q_AN02 U147 ( .A0(wen), .A1(n104), .Z(n94));
Q_INV U148 ( .A(full), .Z(n104));
Q_NR02 U149 ( .A0(ren), .A1(clear), .Z(n105));
Q_OA21 U150 ( .A0(n106), .A1(n107), .B0(n105), .Z(n119));
Q_OR02 U151 ( .A0(n42), .A1(full), .Z(n107));
Q_NR02 U152 ( .A0(n109), .A1(n120), .Z(n108));
Q_AN02 U153 ( .A0(wen), .A1(n96), .Z(n109));
Q_INV U154 ( .A(clear), .Z(n96));
Q_AO21 U155 ( .A0(n100), .A1(n110), .B0(clear), .Z(n120));
Q_INV U156 ( .A(wen), .Z(n106));
Q_NR02 U157 ( .A0(n62), .A1(wen), .Z(n110));
Q_AN02 U158 ( .A0(ren), .A1(n111), .Z(n100));
Q_INV U159 ( .A(empty), .Z(n111));
Q_AN02 U160 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U161 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n78));
Q_FDP1 \r_wptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_wptr[1]), .Q(r_wptr[1]), .QN( ));
Q_FDP1 \r_wptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_wptr[2]), .Q(r_wptr[2]), .QN( ));
Q_FDP1 \r_wptr_REG[3] ( .CK(clk), .R(rst_n), .D(c_wptr[3]), .Q(r_wptr[3]), .QN( ));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n72));
Q_FDP1 \r_rptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_rptr[1]), .Q(r_rptr[1]), .QN( ));
Q_FDP1 \r_rptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_rptr[2]), .Q(r_rptr[2]), .QN( ));
Q_FDP1 \r_rptr_REG[3] ( .CK(clk), .R(rst_n), .D(c_rptr[3]), .Q(r_rptr[3]), .QN( ));
Q_FDP1 \r_free_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n16));
Q_FDP1 \r_free_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP1 \r_free_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_free_slots[2]), .Q(r_free_slots[2]), .QN( ));
Q_FDP1 \r_free_slots_REG[3] ( .CK(clk), .R(rst_n), .D(c_free_slots[3]), .Q(r_free_slots[3]), .QN( ));
Q_FDP2 \r_free_slots_REG[4] ( .CK(clk), .S(rst_n), .D(c_free_slots[4]), .Q(r_free_slots[4]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n6));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN( ));
Q_FDP1 \r_used_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_used_slots[2]), .Q(r_used_slots[2]), .QN( ));
Q_FDP1 \r_used_slots_REG[3] ( .CK(clk), .R(rst_n), .D(c_used_slots[3]), .Q(r_used_slots[3]), .QN(n4));
Q_FDP1 \r_used_slots_REG[4] ( .CK(clk), .R(rst_n), .D(c_used_slots[4]), .Q(r_used_slots[4]), .QN(n1));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_INV U182 ( .A(n29), .Z(n125));
Q_INV U183 ( .A(n7), .Z(n126));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_6_cpass_REG[0] ( .CK(clk), .CE(n13), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_6_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_6_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_6_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_5_cpass_REG[0] ( .CK(clk), .CE(n12), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_5_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_5_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_5_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_cpass_REG[0] ( .CK(clk), .CE(n11), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_4_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_4_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n10), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n9), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n8), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n123), .D(n124), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 15 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[15]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[14]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[12]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[8]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
