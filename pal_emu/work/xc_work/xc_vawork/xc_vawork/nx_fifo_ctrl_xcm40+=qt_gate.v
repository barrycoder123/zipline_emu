
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
output [2:0] used_slots;
output [2:0] free_slots;
output [2:0] rptr;
output [2:0] wptr;
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
wire _zy_sva_b0_t;
wire _zy_sva_b1_t;
wire _zy_sva_b2_t;
wire _zy_sva_b3_t;
wire r_empty;
wire c_empty;
wire r_full;
wire c_full;
wire [2:0] r_used_slots;
wire [2:0] c_used_slots;
wire [2:0] r_free_slots;
wire [2:0] c_free_slots;
wire [2:0] r_rptr;
wire [2:0] c_rptr;
wire [2:0] r_wptr;
wire [2:0] c_wptr;
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
supply0 n83;
supply1 n84;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_i_4_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
Q_BUF U2 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_4_reset_or));
Q_XNR2 U3 ( .A0(n52), .A1(n37), .Z(n42));
Q_AN02 U4 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n17));
Q_AN02 U5 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n11));
wire [2:0] n86 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n86[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n87 = 3'b000;
Q_ASSERT \cover_depth_5_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_4_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_4_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n87[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_5_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_5_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_5_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n88 = 3'b000;
Q_ASSERT \cover_depth_3_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n88[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n89 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n89[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b3 ( _zy_sva_b3, _zy_sva_b3_t);
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_AN03 U14 ( .A0(r_used_slots[0]), .A1(n3), .A2(r_used_slots[2]), .Z(_zy_sva_b3_t));
Q_AN03 U15 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .A2(n2), .Z(_zy_sva_b2_t));
Q_NR03 U16 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .A2(r_used_slots[2]), .Z(_zy_sva_b1_t));
Q_AN03 U17 ( .A0(n1), .A1(r_used_slots[1]), .A2(r_used_slots[2]), .Z(_zy_sva_b0_t));
Q_INV U18 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign_3 _zz_strnp_5 ( wptr[2:0], r_wptr[2:0]);
ixc_assign_3 _zz_strnp_4 ( rptr[2:0], r_rptr[2:0]);
ixc_assign_3 _zz_strnp_3 ( free_slots[2:0], r_free_slots[2:0]);
ixc_assign_3 _zz_strnp_2 ( used_slots[2:0], r_used_slots[2:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U27 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n4));
Q_AN02 U28 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n5));
Q_AN02 U29 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n6));
Q_AN02 U30 ( .A0(rst_n), .A1(_zy_sva_b3), .Z(n7));
Q_AN03 U31 ( .A0(r_rptr[0]), .A1(n8), .A2(r_rptr[2]), .Z(n81));
Q_AN03 U32 ( .A0(r_wptr[0]), .A1(n9), .A2(r_wptr[2]), .Z(n82));
Q_XOR2 U33 ( .A0(r_free_slots[2]), .A1(n11), .Z(n12));
Q_AD01HF U34 ( .A0(r_rptr[1]), .B0(r_rptr[0]), .S(n14), .CO(n15));
Q_XOR2 U35 ( .A0(r_rptr[2]), .A1(n15), .Z(n16));
Q_XOR2 U36 ( .A0(r_used_slots[2]), .A1(n17), .Z(n18));
Q_AD01HF U37 ( .A0(r_wptr[1]), .B0(r_wptr[0]), .S(n20), .CO(n21));
Q_XOR2 U38 ( .A0(r_wptr[2]), .A1(n21), .Z(n22));
Q_XNR2 U39 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n23));
Q_OR02 U40 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n24));
Q_XNR2 U41 ( .A0(r_free_slots[2]), .A1(n24), .Z(n25));
Q_XOR2 U42 ( .A0(n72), .A1(r_free_slots[0]), .Z(n26));
Q_MX02 U43 ( .S(n60), .A0(n23), .A1(r_free_slots[1]), .Z(n27));
Q_MX02 U44 ( .S(n60), .A0(n25), .A1(r_free_slots[2]), .Z(n28));
Q_OR03 U45 ( .A0(n26), .A1(n27), .A2(n28), .Z(n29));
Q_MX02 U46 ( .S(n74), .A0(n26), .A1(n10), .Z(n30));
Q_AN02 U47 ( .A0(n74), .A1(r_free_slots[0]), .Z(n31));
Q_MX02 U48 ( .S(n75), .A0(n31), .A1(n30), .Z(c_free_slots[0]));
Q_MX02 U49 ( .S(n74), .A0(n27), .A1(n85), .Z(n32));
Q_INV U50 ( .A(n74), .Z(n33));
Q_OR02 U51 ( .A0(n33), .A1(r_free_slots[1]), .Z(n34));
Q_MX02 U52 ( .S(n75), .A0(n34), .A1(n32), .Z(c_free_slots[1]));
Q_MX02 U53 ( .S(n74), .A0(n28), .A1(n12), .Z(n35));
Q_OR02 U54 ( .A0(n33), .A1(r_free_slots[2]), .Z(n36));
Q_MX02 U55 ( .S(n75), .A0(n36), .A1(n35), .Z(c_free_slots[2]));
Q_XNR2 U56 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n37));
Q_OR02 U57 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n38));
Q_XOR2 U58 ( .A0(n2), .A1(n38), .Z(n39));
Q_OR03 U59 ( .A0(n1), .A1(n37), .A2(n39), .Z(n40));
Q_AN02 U60 ( .A0(n52), .A1(r_used_slots[0]), .Z(n41));
Q_MX02 U61 ( .S(n73), .A0(n41), .A1(n1), .Z(c_used_slots[0]));
Q_AN02 U62 ( .A0(n52), .A1(r_used_slots[1]), .Z(n43));
Q_MX02 U63 ( .S(n73), .A0(n43), .A1(n42), .Z(c_used_slots[1]));
Q_MX02 U64 ( .S(n52), .A0(n18), .A1(n39), .Z(n44));
Q_AN02 U65 ( .A0(n52), .A1(r_used_slots[2]), .Z(n45));
Q_MX02 U66 ( .S(n73), .A0(n45), .A1(n44), .Z(c_used_slots[2]));
Q_AN02 U67 ( .A0(n74), .A1(r_wptr[0]), .Z(n46));
Q_MX02 U68 ( .S(n76), .A0(n46), .A1(n19), .Z(c_wptr[0]));
Q_AN02 U69 ( .A0(n74), .A1(r_wptr[1]), .Z(n47));
Q_MX02 U70 ( .S(n76), .A0(n47), .A1(n20), .Z(c_wptr[1]));
Q_AN02 U71 ( .A0(n74), .A1(r_wptr[2]), .Z(n48));
Q_MX02 U72 ( .S(n76), .A0(n48), .A1(n22), .Z(c_wptr[2]));
Q_AN02 U73 ( .A0(n55), .A1(r_rptr[0]), .Z(n49));
Q_MX02 U74 ( .S(n77), .A0(n49), .A1(n13), .Z(c_rptr[0]));
Q_AN02 U75 ( .A0(n55), .A1(r_rptr[1]), .Z(n50));
Q_MX02 U76 ( .S(n77), .A0(n50), .A1(n14), .Z(c_rptr[1]));
Q_AN02 U77 ( .A0(n55), .A1(r_rptr[2]), .Z(n51));
Q_MX02 U78 ( .S(n77), .A0(n51), .A1(n16), .Z(c_rptr[2]));
Q_MX02 U79 ( .S(n79), .A0(n78), .A1(r_full), .Z(c_full));
Q_MX02 U80 ( .S(n68), .A0(n80), .A1(r_empty), .Z(c_empty));
Q_NR02 U81 ( .A0(n53), .A1(clear), .Z(n52));
Q_AN02 U82 ( .A0(n54), .A1(n55), .Z(n53));
Q_OA21 U83 ( .A0(n57), .A1(n58), .B0(n56), .Z(n73));
Q_AN02 U84 ( .A0(n72), .A1(n54), .Z(n58));
Q_NR02 U85 ( .A0(n60), .A1(clear), .Z(n55));
Q_OA21 U86 ( .A0(n57), .A1(n54), .B0(n56), .Z(n75));
Q_AN02 U87 ( .A0(n59), .A1(n60), .Z(n57));
Q_NR02 U88 ( .A0(clear), .A1(n54), .Z(n74));
Q_INV U89 ( .A(n54), .Z(n59));
Q_AN02 U90 ( .A0(n54), .A1(n61), .Z(n76));
Q_NR02 U91 ( .A0(n82), .A1(clear), .Z(n61));
Q_INV U92 ( .A(n60), .Z(n72));
Q_AN02 U93 ( .A0(n60), .A1(n62), .Z(n77));
Q_NR02 U94 ( .A0(n81), .A1(clear), .Z(n62));
Q_AN02 U95 ( .A0(n54), .A1(n63), .Z(n78));
Q_NR02 U96 ( .A0(n29), .A1(clear), .Z(n63));
Q_AN02 U97 ( .A0(wen), .A1(n64), .Z(n54));
Q_INV U98 ( .A(full), .Z(n64));
Q_NR02 U99 ( .A0(ren), .A1(clear), .Z(n65));
Q_OA21 U100 ( .A0(n66), .A1(n67), .B0(n65), .Z(n79));
Q_OR02 U101 ( .A0(n29), .A1(full), .Z(n67));
Q_NR02 U102 ( .A0(n69), .A1(n80), .Z(n68));
Q_AN02 U103 ( .A0(wen), .A1(n56), .Z(n69));
Q_INV U104 ( .A(clear), .Z(n56));
Q_AO21 U105 ( .A0(n60), .A1(n70), .B0(clear), .Z(n80));
Q_INV U106 ( .A(wen), .Z(n66));
Q_NR02 U107 ( .A0(n40), .A1(wen), .Z(n70));
Q_AN02 U108 ( .A0(ren), .A1(n71), .Z(n60));
Q_INV U109 ( .A(empty), .Z(n71));
Q_AN02 U110 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U111 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n19));
Q_FDP1 \r_wptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_wptr[1]), .Q(r_wptr[1]), .QN(n9));
Q_FDP1 \r_wptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_wptr[2]), .Q(r_wptr[2]), .QN( ));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n13));
Q_FDP1 \r_rptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_rptr[1]), .Q(r_rptr[1]), .QN(n8));
Q_FDP1 \r_rptr_REG[2] ( .CK(clk), .R(rst_n), .D(c_rptr[2]), .Q(r_rptr[2]), .QN( ));
Q_FDP1 \r_free_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n10));
Q_FDP2 \r_free_slots_REG[1] ( .CK(clk), .S(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP2 \r_free_slots_REG[2] ( .CK(clk), .S(rst_n), .D(c_free_slots[2]), .Q(r_free_slots[2]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n1));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN(n3));
Q_FDP1 \r_used_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_used_slots[2]), .Q(r_used_slots[2]), .QN(n2));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_INV U126 ( .A(n23), .Z(n85));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_cpass_REG[0] ( .CK(clk), .CE(n7), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_4_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_4_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n6), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n5), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n4), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n83), .D(n84), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 5 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[5]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[3]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
