
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ctrl_xcm40 ( empty, full, used_slots, free_slots, rptr, wptr, 
	underflow, overflow, clk, rst_n, wen, ren, clear);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [4:0] used_slots;
output [4:0] free_slots;
output [4:0] rptr;
output [4:0] wptr;
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
wire [4:0] r_rptr;
wire [4:0] c_rptr;
wire [4:0] r_wptr;
wire [4:0] c_wptr;
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
supply0 n134;
supply1 n135;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_i_4_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
Q_BUF U2 ( .A(_zy_sva_fifo_entries_reached_i_5_reset_or), .Z(_zy_sva_fifo_entries_reached_i_4_reset_or));
Q_BUF U3 ( .A(_zy_sva_fifo_entries_reached_i_6_reset_or), .Z(_zy_sva_fifo_entries_reached_i_5_reset_or));
Q_BUF U4 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_6_reset_or));
Q_XNR2 U5 ( .A0(n107), .A1(n79), .Z(n89));
Q_AN02 U6 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n40));
Q_AN02 U7 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n26));
wire [2:0] n138 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n138[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n139 = 3'b000;
Q_ASSERT \cover_depth_24_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_6_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_6_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n139[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_24_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_24_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_24_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n140 = 3'b000;
Q_ASSERT \cover_depth_22_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_5_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_5_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n140[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_22_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_22_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_22_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n141 = 3'b000;
Q_ASSERT \cover_depth_19_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_4_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_4_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n141[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_19_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_19_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_19_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n142 = 3'b000;
Q_ASSERT \cover_depth_13_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n142[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_13_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_13_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_13_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n143 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n143[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b5 ( _zy_sva_b5, _zy_sva_b5_t);
ixc_sample_logic_1_3 _zz_zy_sva_b4 ( _zy_sva_b4, _zy_sva_b4_t);
ixc_sample_logic_1_3 _zz_zy_sva_b3 ( _zy_sva_b3, _zy_sva_b3_t);
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_NR03 U20 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n137), .Z(_zy_sva_b5_t));
Q_AN03 U21 ( .A0(r_used_slots[1]), .A1(n9), .A2(n10), .Z(_zy_sva_b4_t));
Q_AN03 U22 ( .A0(r_used_slots[4]), .A1(n7), .A2(r_used_slots[2]), .Z(n10));
Q_AN03 U23 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n8), .Z(_zy_sva_b3_t));
Q_AN03 U24 ( .A0(r_used_slots[4]), .A1(n7), .A2(n2), .Z(n8));
Q_AN03 U25 ( .A0(n1), .A1(r_used_slots[0]), .A2(n6), .Z(_zy_sva_b2_t));
Q_AN03 U26 ( .A0(n5), .A1(r_used_slots[3]), .A2(r_used_slots[2]), .Z(n6));
Q_NR03 U27 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .A2(n4), .Z(_zy_sva_b1_t));
Q_OR03 U28 ( .A0(r_used_slots[4]), .A1(r_used_slots[3]), .A2(r_used_slots[2]), .Z(n4));
Q_AN03 U29 ( .A0(n1), .A1(r_used_slots[0]), .A2(n3), .Z(_zy_sva_b0_t));
Q_AN03 U30 ( .A0(r_used_slots[4]), .A1(r_used_slots[3]), .A2(n2), .Z(n3));
Q_INV U31 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign_5 _zz_strnp_5 ( wptr[4:0], r_wptr[4:0]);
ixc_assign_5 _zz_strnp_4 ( rptr[4:0], r_rptr[4:0]);
ixc_assign_5 _zz_strnp_3 ( free_slots[4:0], r_free_slots[4:0]);
ixc_assign_5 _zz_strnp_2 ( used_slots[4:0], r_used_slots[4:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U40 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n11));
Q_AN02 U41 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n12));
Q_AN02 U42 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n13));
Q_AN02 U43 ( .A0(rst_n), .A1(_zy_sva_b3), .Z(n14));
Q_AN02 U44 ( .A0(rst_n), .A1(_zy_sva_b4), .Z(n15));
Q_AN02 U45 ( .A0(rst_n), .A1(_zy_sva_b5), .Z(n16));
Q_OR03 U46 ( .A0(n18), .A1(n17), .A2(r_rptr[2]), .Z(n19));
Q_OR03 U47 ( .A0(r_rptr[1]), .A1(r_rptr[0]), .A2(n19), .Z(n20));
Q_OR03 U48 ( .A0(n22), .A1(n21), .A2(r_wptr[2]), .Z(n23));
Q_OR03 U49 ( .A0(r_wptr[1]), .A1(r_wptr[0]), .A2(n23), .Z(n24));
Q_AD01HF U50 ( .A0(r_free_slots[2]), .B0(n26), .S(n27), .CO(n28));
Q_AD01HF U51 ( .A0(r_free_slots[3]), .B0(n28), .S(n29), .CO(n30));
Q_XOR2 U52 ( .A0(r_free_slots[4]), .A1(n30), .Z(n31));
Q_AD01HF U53 ( .A0(r_rptr[1]), .B0(r_rptr[0]), .S(n33), .CO(n34));
Q_AD01HF U54 ( .A0(r_rptr[2]), .B0(n34), .S(n35), .CO(n36));
Q_AD01HF U55 ( .A0(r_rptr[3]), .B0(n36), .S(n37), .CO(n38));
Q_XOR2 U56 ( .A0(r_rptr[4]), .A1(n38), .Z(n39));
Q_AD01HF U57 ( .A0(r_used_slots[2]), .B0(n40), .S(n41), .CO(n42));
Q_AD01HF U58 ( .A0(r_used_slots[3]), .B0(n42), .S(n43), .CO(n44));
Q_XOR2 U59 ( .A0(r_used_slots[4]), .A1(n44), .Z(n45));
Q_AD01HF U60 ( .A0(r_wptr[1]), .B0(r_wptr[0]), .S(n47), .CO(n48));
Q_AD01HF U61 ( .A0(r_wptr[2]), .B0(n48), .S(n49), .CO(n50));
Q_AD01HF U62 ( .A0(r_wptr[3]), .B0(n50), .S(n51), .CO(n52));
Q_XOR2 U63 ( .A0(r_wptr[4]), .A1(n52), .Z(n53));
Q_XNR2 U64 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n54));
Q_OR02 U65 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n55));
Q_XNR2 U66 ( .A0(r_free_slots[2]), .A1(n55), .Z(n56));
Q_OR02 U67 ( .A0(r_free_slots[2]), .A1(n55), .Z(n57));
Q_XNR2 U68 ( .A0(r_free_slots[3]), .A1(n57), .Z(n58));
Q_OR02 U69 ( .A0(r_free_slots[3]), .A1(n57), .Z(n59));
Q_XNR2 U70 ( .A0(r_free_slots[4]), .A1(n59), .Z(n60));
Q_XOR2 U71 ( .A0(n125), .A1(r_free_slots[0]), .Z(n61));
Q_MX02 U72 ( .S(n115), .A0(n54), .A1(r_free_slots[1]), .Z(n62));
Q_MX02 U73 ( .S(n115), .A0(n56), .A1(r_free_slots[2]), .Z(n63));
Q_MX02 U74 ( .S(n115), .A0(n58), .A1(r_free_slots[3]), .Z(n64));
Q_MX02 U75 ( .S(n115), .A0(n60), .A1(r_free_slots[4]), .Z(n65));
Q_OR03 U76 ( .A0(n61), .A1(n62), .A2(n63), .Z(n66));
Q_OR03 U77 ( .A0(n64), .A1(n65), .A2(n66), .Z(n67));
Q_MX02 U78 ( .S(n127), .A0(n61), .A1(n25), .Z(n68));
Q_INV U79 ( .A(n127), .Z(n69));
Q_OR02 U80 ( .A0(n69), .A1(r_free_slots[0]), .Z(n70));
Q_MX02 U81 ( .S(n128), .A0(n70), .A1(n68), .Z(c_free_slots[0]));
Q_MX02 U82 ( .S(n127), .A0(n62), .A1(n136), .Z(n71));
Q_AN02 U83 ( .A0(n127), .A1(r_free_slots[1]), .Z(n72));
Q_MX02 U84 ( .S(n128), .A0(n72), .A1(n71), .Z(c_free_slots[1]));
Q_MX02 U85 ( .S(n127), .A0(n63), .A1(n27), .Z(n73));
Q_AN02 U86 ( .A0(n127), .A1(r_free_slots[2]), .Z(n74));
Q_MX02 U87 ( .S(n128), .A0(n74), .A1(n73), .Z(c_free_slots[2]));
Q_MX02 U88 ( .S(n127), .A0(n64), .A1(n29), .Z(n75));
Q_OR02 U89 ( .A0(n69), .A1(r_free_slots[3]), .Z(n76));
Q_MX02 U90 ( .S(n128), .A0(n76), .A1(n75), .Z(c_free_slots[3]));
Q_MX02 U91 ( .S(n127), .A0(n65), .A1(n31), .Z(n77));
Q_OR02 U92 ( .A0(n69), .A1(r_free_slots[4]), .Z(n78));
Q_MX02 U93 ( .S(n128), .A0(n78), .A1(n77), .Z(c_free_slots[4]));
Q_XNR2 U94 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n79));
Q_OR02 U95 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n80));
Q_XNR2 U96 ( .A0(r_used_slots[2]), .A1(n80), .Z(n81));
Q_OR02 U97 ( .A0(r_used_slots[2]), .A1(n80), .Z(n82));
Q_XNR2 U98 ( .A0(r_used_slots[3]), .A1(n82), .Z(n83));
Q_OR02 U99 ( .A0(r_used_slots[3]), .A1(n82), .Z(n84));
Q_XOR2 U100 ( .A0(n5), .A1(n84), .Z(n85));
Q_OR03 U101 ( .A0(n9), .A1(n79), .A2(n81), .Z(n86));
Q_OR03 U102 ( .A0(n83), .A1(n85), .A2(n86), .Z(n87));
Q_AN02 U103 ( .A0(n107), .A1(r_used_slots[0]), .Z(n88));
Q_MX02 U104 ( .S(n126), .A0(n88), .A1(n9), .Z(c_used_slots[0]));
Q_AN02 U105 ( .A0(n107), .A1(r_used_slots[1]), .Z(n90));
Q_MX02 U106 ( .S(n126), .A0(n90), .A1(n89), .Z(c_used_slots[1]));
Q_MX02 U107 ( .S(n107), .A0(n41), .A1(n81), .Z(n91));
Q_AN02 U108 ( .A0(n107), .A1(r_used_slots[2]), .Z(n92));
Q_MX02 U109 ( .S(n126), .A0(n92), .A1(n91), .Z(c_used_slots[2]));
Q_MX02 U110 ( .S(n107), .A0(n43), .A1(n83), .Z(n93));
Q_AN02 U111 ( .A0(n107), .A1(r_used_slots[3]), .Z(n94));
Q_MX02 U112 ( .S(n126), .A0(n94), .A1(n93), .Z(c_used_slots[3]));
Q_MX02 U113 ( .S(n107), .A0(n45), .A1(n85), .Z(n95));
Q_AN02 U114 ( .A0(n107), .A1(r_used_slots[4]), .Z(n96));
Q_MX02 U115 ( .S(n126), .A0(n96), .A1(n95), .Z(c_used_slots[4]));
Q_AN02 U116 ( .A0(n127), .A1(r_wptr[0]), .Z(n97));
Q_MX02 U117 ( .S(n129), .A0(n97), .A1(n46), .Z(c_wptr[0]));
Q_AN02 U118 ( .A0(n127), .A1(r_wptr[1]), .Z(n98));
Q_MX02 U119 ( .S(n129), .A0(n98), .A1(n47), .Z(c_wptr[1]));
Q_AN02 U120 ( .A0(n127), .A1(r_wptr[2]), .Z(n99));
Q_MX02 U121 ( .S(n129), .A0(n99), .A1(n49), .Z(c_wptr[2]));
Q_AN02 U122 ( .A0(n127), .A1(r_wptr[3]), .Z(n100));
Q_MX02 U123 ( .S(n129), .A0(n100), .A1(n51), .Z(c_wptr[3]));
Q_AN02 U124 ( .A0(n127), .A1(r_wptr[4]), .Z(n101));
Q_MX02 U125 ( .S(n129), .A0(n101), .A1(n53), .Z(c_wptr[4]));
Q_AN02 U126 ( .A0(n110), .A1(r_rptr[0]), .Z(n102));
Q_MX02 U127 ( .S(n130), .A0(n102), .A1(n32), .Z(c_rptr[0]));
Q_AN02 U128 ( .A0(n110), .A1(r_rptr[1]), .Z(n103));
Q_MX02 U129 ( .S(n130), .A0(n103), .A1(n33), .Z(c_rptr[1]));
Q_AN02 U130 ( .A0(n110), .A1(r_rptr[2]), .Z(n104));
Q_MX02 U131 ( .S(n130), .A0(n104), .A1(n35), .Z(c_rptr[2]));
Q_AN02 U132 ( .A0(n110), .A1(r_rptr[3]), .Z(n105));
Q_MX02 U133 ( .S(n130), .A0(n105), .A1(n37), .Z(c_rptr[3]));
Q_AN02 U134 ( .A0(n110), .A1(r_rptr[4]), .Z(n106));
Q_MX02 U135 ( .S(n130), .A0(n106), .A1(n39), .Z(c_rptr[4]));
Q_MX02 U136 ( .S(n132), .A0(n131), .A1(r_full), .Z(c_full));
Q_MX02 U137 ( .S(n121), .A0(n133), .A1(r_empty), .Z(c_empty));
Q_NR02 U138 ( .A0(n108), .A1(clear), .Z(n107));
Q_AN02 U139 ( .A0(n109), .A1(n110), .Z(n108));
Q_OA21 U140 ( .A0(n112), .A1(n113), .B0(n111), .Z(n126));
Q_AN02 U141 ( .A0(n125), .A1(n109), .Z(n113));
Q_NR02 U142 ( .A0(n115), .A1(clear), .Z(n110));
Q_OA21 U143 ( .A0(n112), .A1(n109), .B0(n111), .Z(n128));
Q_AN02 U144 ( .A0(n114), .A1(n115), .Z(n112));
Q_NR02 U145 ( .A0(clear), .A1(n109), .Z(n127));
Q_INV U146 ( .A(n109), .Z(n114));
Q_AN03 U147 ( .A0(n24), .A1(n111), .A2(n109), .Z(n129));
Q_INV U148 ( .A(n115), .Z(n125));
Q_AN03 U149 ( .A0(n20), .A1(n111), .A2(n115), .Z(n130));
Q_AN02 U150 ( .A0(n109), .A1(n116), .Z(n131));
Q_NR02 U151 ( .A0(n67), .A1(clear), .Z(n116));
Q_AN02 U152 ( .A0(wen), .A1(n117), .Z(n109));
Q_INV U153 ( .A(full), .Z(n117));
Q_NR02 U154 ( .A0(ren), .A1(clear), .Z(n118));
Q_OA21 U155 ( .A0(n119), .A1(n120), .B0(n118), .Z(n132));
Q_OR02 U156 ( .A0(n67), .A1(full), .Z(n120));
Q_NR02 U157 ( .A0(n122), .A1(n133), .Z(n121));
Q_AN02 U158 ( .A0(wen), .A1(n111), .Z(n122));
Q_INV U159 ( .A(clear), .Z(n111));
Q_AO21 U160 ( .A0(n115), .A1(n123), .B0(clear), .Z(n133));
Q_INV U161 ( .A(wen), .Z(n119));
Q_NR02 U162 ( .A0(n87), .A1(wen), .Z(n123));
Q_AN02 U163 ( .A0(ren), .A1(n124), .Z(n115));
Q_INV U164 ( .A(empty), .Z(n124));
Q_AN02 U165 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U166 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n46));
Q_FDP1 \r_wptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_wptr[1]), .Q(r_wptr[1]), .QN( ));
Q_FDP1 \r_wptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_wptr[2]), .Q(r_wptr[2]), .QN( ));
Q_FDP1 \r_wptr_REG[3] ( .CK(clk), .R(rst_n), .D(c_wptr[3]), .Q(r_wptr[3]), .QN(n21));
Q_FDP1 \r_wptr_REG[4] ( .CK(clk), .R(rst_n), .D(c_wptr[4]), .Q(r_wptr[4]), .QN(n22));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n32));
Q_FDP1 \r_rptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_rptr[1]), .Q(r_rptr[1]), .QN( ));
Q_FDP1 \r_rptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_rptr[2]), .Q(r_rptr[2]), .QN( ));
Q_FDP1 \r_rptr_REG[3] ( .CK(clk), .R(rst_n), .D(c_rptr[3]), .Q(r_rptr[3]), .QN(n17));
Q_FDP1 \r_rptr_REG[4] ( .CK(clk), .R(rst_n), .D(c_rptr[4]), .Q(r_rptr[4]), .QN(n18));
Q_FDP2 \r_free_slots_REG[0] ( .CK(clk), .S(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n25));
Q_FDP1 \r_free_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP1 \r_free_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_free_slots[2]), .Q(r_free_slots[2]), .QN( ));
Q_FDP2 \r_free_slots_REG[3] ( .CK(clk), .S(rst_n), .D(c_free_slots[3]), .Q(r_free_slots[3]), .QN( ));
Q_FDP2 \r_free_slots_REG[4] ( .CK(clk), .S(rst_n), .D(c_free_slots[4]), .Q(r_free_slots[4]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n9));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN(n1));
Q_FDP1 \r_used_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_used_slots[2]), .Q(r_used_slots[2]), .QN(n2));
Q_FDP1 \r_used_slots_REG[3] ( .CK(clk), .R(rst_n), .D(c_used_slots[3]), .Q(r_used_slots[3]), .QN(n7));
Q_FDP1 \r_used_slots_REG[4] ( .CK(clk), .R(rst_n), .D(c_used_slots[4]), .Q(r_used_slots[4]), .QN(n5));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_INV U189 ( .A(n54), .Z(n136));
Q_INV U190 ( .A(n3), .Z(n137));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_6_cpass_REG[0] ( .CK(clk), .CE(n16), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_6_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_6_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_6_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_5_cpass_REG[0] ( .CK(clk), .CE(n15), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_5_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_5_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_5_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_cpass_REG[0] ( .CK(clk), .CE(n14), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_4_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_4_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n13), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n12), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n11), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n134), .D(n135), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 24 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[24]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[22]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[19]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[13]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
