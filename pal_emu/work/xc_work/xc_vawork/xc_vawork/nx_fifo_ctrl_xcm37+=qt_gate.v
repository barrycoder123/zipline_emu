
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ctrl_xcm37 ( empty, full, used_slots, free_slots, rptr, wptr, 
	underflow, overflow, clk, rst_n, wen, ren, clear);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [2:0] used_slots;
output [2:0] free_slots;
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
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_4_ccheck;
`_2_ wire [0:0] _zy_sva_fifo_entries_reached_i_4_cpass;
`_2_ wire _zy_sva_b3;
supply0 n75;
supply1 n76;
Q_BUF U0 ( .A(_zy_sva_fifo_entries_reached_i_3_reset_or), .Z(_zy_sva_fifo_entries_reached_i_2_reset_or));
Q_BUF U1 ( .A(_zy_sva_fifo_entries_reached_i_4_reset_or), .Z(_zy_sva_fifo_entries_reached_i_3_reset_or));
Q_BUF U2 ( .A(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or), .Z(_zy_sva_fifo_entries_reached_i_4_reset_or));
Q_XNR2 U3 ( .A0(n44), .A1(n27), .Z(n32));
Q_AN02 U4 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n11));
Q_AN02 U5 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n8));
wire [2:0] n78 = 3'b000;
Q_ASSERT fifo_entries_reached_DEPTH ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n78[0]));
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "fifo_entries_reached_DEPTH" ASSERT_LINE 152
wire [2:0] n79 = 3'b000;
Q_ASSERT \cover_depth_3_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_4_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_4_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n79[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_3_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n80 = 3'b000;
Q_ASSERT \cover_depth_2_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_3_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_3_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n80[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_2_.fifo_entries_reached_i " ASSERT_LINE 149
wire [2:0] n81 = 3'b000;
Q_ASSERT \cover_depth_0_.fifo_entries_reached_i  ( .PASS( ), .FAIL( ), .ACTIVE( ), .FAIL_LEVEL( ), .PASS_LEVEL( ), .DISABLE( ), .PASS_COUNT(_zy_sva_fifo_entries_reached_i_2_cpass[0]), .FAIL_COUNT( ), .CHECK_COUNT(_zy_sva_fifo_entries_reached_i_2_ccheck[0]), .KILL_SIGNAL( ), .SEVERITY(n81[0]));
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " HDL_ASSERT "%"
// pragma CVASTRPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_FILENAME "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v"
//pragma CVAINTPROP INSTANCE "\cover_depth_0_.fifo_entries_reached_i " ASSERT_LINE 149
ixc_sample_logic_1_3 _zz_zy_sva_b3 ( _zy_sva_b3, _zy_sva_b3_t);
ixc_sample_logic_1_3 _zz_zy_sva_b2 ( _zy_sva_b2, _zy_sva_b2_t);
ixc_sample_logic_1_3 _zz_zy_sva_b1 ( _zy_sva_b1, _zy_sva_b1_t);
ixc_sample_logic_1_3 _zz_zy_sva_b0 ( _zy_sva_b0, _zy_sva_b0_t);
Q_AN03 U14 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .A2(n1), .Z(_zy_sva_b3_t));
Q_NR03 U15 ( .A0(r_used_slots[0]), .A1(n2), .A2(r_used_slots[2]), .Z(_zy_sva_b2_t));
Q_NR03 U16 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .A2(r_used_slots[2]), .Z(_zy_sva_b1_t));
Q_NR03 U17 ( .A0(r_used_slots[0]), .A1(r_used_slots[1]), .A2(n1), .Z(_zy_sva_b0_t));
Q_INV U18 ( .A(rst_n), .Z(_zy_sva_fifo_entries_reached_DEPTH_1_reset_or));
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign_2 _zz_strnp_5 ( wptr[1:0], r_wptr[1:0]);
ixc_assign_2 _zz_strnp_4 ( rptr[1:0], r_rptr[1:0]);
ixc_assign_3 _zz_strnp_3 ( free_slots[2:0], r_free_slots[2:0]);
ixc_assign_3 _zz_strnp_2 ( used_slots[2:0], r_used_slots[2:0]);
ixc_assign _zz_strnp_1 ( full, r_full);
ixc_assign _zz_strnp_0 ( empty, r_empty);
Q_AN02 U27 ( .A0(rst_n), .A1(_zy_sva_b0), .Z(n3));
Q_AN02 U28 ( .A0(rst_n), .A1(_zy_sva_b1), .Z(n4));
Q_AN02 U29 ( .A0(rst_n), .A1(_zy_sva_b2), .Z(n5));
Q_AN02 U30 ( .A0(rst_n), .A1(_zy_sva_b3), .Z(n6));
Q_AN02 U31 ( .A0(r_rptr[0]), .A1(r_rptr[1]), .Z(n73));
Q_AN02 U32 ( .A0(r_wptr[0]), .A1(r_wptr[1]), .Z(n74));
Q_XOR2 U33 ( .A0(r_free_slots[2]), .A1(n8), .Z(n9));
Q_XOR2 U34 ( .A0(r_used_slots[2]), .A1(n11), .Z(n12));
Q_XNR2 U35 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n13));
Q_OR02 U36 ( .A0(r_free_slots[1]), .A1(r_free_slots[0]), .Z(n14));
Q_XNR2 U37 ( .A0(r_free_slots[2]), .A1(n14), .Z(n15));
Q_XOR2 U38 ( .A0(n64), .A1(r_free_slots[0]), .Z(n16));
Q_MX02 U39 ( .S(n52), .A0(n13), .A1(r_free_slots[1]), .Z(n17));
Q_MX02 U40 ( .S(n52), .A0(n15), .A1(r_free_slots[2]), .Z(n18));
Q_OR03 U41 ( .A0(n16), .A1(n17), .A2(n18), .Z(n19));
Q_MX02 U42 ( .S(n66), .A0(n16), .A1(n7), .Z(n20));
Q_AN02 U43 ( .A0(n66), .A1(r_free_slots[0]), .Z(n21));
Q_MX02 U44 ( .S(n67), .A0(n21), .A1(n20), .Z(c_free_slots[0]));
Q_MX02 U45 ( .S(n66), .A0(n17), .A1(n77), .Z(n22));
Q_AN02 U46 ( .A0(n66), .A1(r_free_slots[1]), .Z(n23));
Q_MX02 U47 ( .S(n67), .A0(n23), .A1(n22), .Z(c_free_slots[1]));
Q_MX02 U48 ( .S(n66), .A0(n18), .A1(n9), .Z(n24));
Q_INV U49 ( .A(n66), .Z(n25));
Q_OR02 U50 ( .A0(n25), .A1(r_free_slots[2]), .Z(n26));
Q_MX02 U51 ( .S(n67), .A0(n26), .A1(n24), .Z(c_free_slots[2]));
Q_XNR2 U52 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n27));
Q_OR02 U53 ( .A0(r_used_slots[1]), .A1(r_used_slots[0]), .Z(n28));
Q_XOR2 U54 ( .A0(n1), .A1(n28), .Z(n29));
Q_OR03 U55 ( .A0(n10), .A1(n27), .A2(n29), .Z(n30));
Q_AN02 U56 ( .A0(n44), .A1(r_used_slots[0]), .Z(n31));
Q_MX02 U57 ( .S(n65), .A0(n31), .A1(n10), .Z(c_used_slots[0]));
Q_AN02 U58 ( .A0(n44), .A1(r_used_slots[1]), .Z(n33));
Q_MX02 U59 ( .S(n65), .A0(n33), .A1(n32), .Z(c_used_slots[1]));
Q_MX02 U60 ( .S(n44), .A0(n12), .A1(n29), .Z(n34));
Q_AN02 U61 ( .A0(n44), .A1(r_used_slots[2]), .Z(n35));
Q_MX02 U62 ( .S(n65), .A0(n35), .A1(n34), .Z(c_used_slots[2]));
Q_XOR2 U63 ( .A0(r_rptr[1]), .A1(r_rptr[0]), .Z(n37));
Q_XOR2 U64 ( .A0(r_wptr[1]), .A1(r_wptr[0]), .Z(n39));
Q_AN02 U65 ( .A0(n66), .A1(r_wptr[0]), .Z(n40));
Q_MX02 U66 ( .S(n68), .A0(n40), .A1(n38), .Z(c_wptr[0]));
Q_AN02 U67 ( .A0(n66), .A1(r_wptr[1]), .Z(n41));
Q_MX02 U68 ( .S(n68), .A0(n41), .A1(n39), .Z(c_wptr[1]));
Q_AN02 U69 ( .A0(n47), .A1(r_rptr[0]), .Z(n42));
Q_MX02 U70 ( .S(n69), .A0(n42), .A1(n36), .Z(c_rptr[0]));
Q_AN02 U71 ( .A0(n47), .A1(r_rptr[1]), .Z(n43));
Q_MX02 U72 ( .S(n69), .A0(n43), .A1(n37), .Z(c_rptr[1]));
Q_MX02 U73 ( .S(n71), .A0(n70), .A1(r_full), .Z(c_full));
Q_MX02 U74 ( .S(n60), .A0(n72), .A1(r_empty), .Z(c_empty));
Q_NR02 U75 ( .A0(n45), .A1(clear), .Z(n44));
Q_AN02 U76 ( .A0(n46), .A1(n47), .Z(n45));
Q_OA21 U77 ( .A0(n49), .A1(n50), .B0(n48), .Z(n65));
Q_AN02 U78 ( .A0(n64), .A1(n46), .Z(n50));
Q_NR02 U79 ( .A0(n52), .A1(clear), .Z(n47));
Q_OA21 U80 ( .A0(n49), .A1(n46), .B0(n48), .Z(n67));
Q_AN02 U81 ( .A0(n51), .A1(n52), .Z(n49));
Q_NR02 U82 ( .A0(clear), .A1(n46), .Z(n66));
Q_INV U83 ( .A(n46), .Z(n51));
Q_AN02 U84 ( .A0(n46), .A1(n53), .Z(n68));
Q_NR02 U85 ( .A0(n74), .A1(clear), .Z(n53));
Q_INV U86 ( .A(n52), .Z(n64));
Q_AN02 U87 ( .A0(n52), .A1(n54), .Z(n69));
Q_NR02 U88 ( .A0(n73), .A1(clear), .Z(n54));
Q_AN02 U89 ( .A0(n46), .A1(n55), .Z(n70));
Q_NR02 U90 ( .A0(n19), .A1(clear), .Z(n55));
Q_AN02 U91 ( .A0(wen), .A1(n56), .Z(n46));
Q_INV U92 ( .A(full), .Z(n56));
Q_NR02 U93 ( .A0(ren), .A1(clear), .Z(n57));
Q_OA21 U94 ( .A0(n58), .A1(n59), .B0(n57), .Z(n71));
Q_OR02 U95 ( .A0(n19), .A1(full), .Z(n59));
Q_NR02 U96 ( .A0(n61), .A1(n72), .Z(n60));
Q_AN02 U97 ( .A0(wen), .A1(n48), .Z(n61));
Q_INV U98 ( .A(clear), .Z(n48));
Q_AO21 U99 ( .A0(n52), .A1(n62), .B0(clear), .Z(n72));
Q_INV U100 ( .A(wen), .Z(n58));
Q_NR02 U101 ( .A0(n30), .A1(wen), .Z(n62));
Q_AN02 U102 ( .A0(ren), .A1(n63), .Z(n52));
Q_INV U103 ( .A(empty), .Z(n63));
Q_AN02 U104 ( .A0(wen), .A1(full), .Z(overflow));
Q_AN02 U105 ( .A0(ren), .A1(empty), .Z(underflow));
Q_FDP1 \r_wptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_wptr[0]), .Q(r_wptr[0]), .QN(n38));
Q_FDP1 \r_wptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_wptr[1]), .Q(r_wptr[1]), .QN( ));
Q_FDP1 \r_rptr_REG[0] ( .CK(clk), .R(rst_n), .D(c_rptr[0]), .Q(r_rptr[0]), .QN(n36));
Q_FDP1 \r_rptr_REG[1] ( .CK(clk), .R(rst_n), .D(c_rptr[1]), .Q(r_rptr[1]), .QN( ));
Q_FDP1 \r_free_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_free_slots[0]), .Q(r_free_slots[0]), .QN(n7));
Q_FDP1 \r_free_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_free_slots[1]), .Q(r_free_slots[1]), .QN( ));
Q_FDP2 \r_free_slots_REG[2] ( .CK(clk), .S(rst_n), .D(c_free_slots[2]), .Q(r_free_slots[2]), .QN( ));
Q_FDP1 \r_used_slots_REG[0] ( .CK(clk), .R(rst_n), .D(c_used_slots[0]), .Q(r_used_slots[0]), .QN(n10));
Q_FDP1 \r_used_slots_REG[1] ( .CK(clk), .R(rst_n), .D(c_used_slots[1]), .Q(r_used_slots[1]), .QN(n2));
Q_FDP1 \r_used_slots_REG[2] ( .CK(clk), .R(rst_n), .D(c_used_slots[2]), .Q(r_used_slots[2]), .QN(n1));
Q_FDP1 r_full_REG  ( .CK(clk), .R(rst_n), .D(c_full), .Q(r_full), .QN( ));
Q_FDP2 r_empty_REG  ( .CK(clk), .S(rst_n), .D(c_empty), .Q(r_empty), .QN( ));
Q_INV U118 ( .A(n13), .Z(n77));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_cpass_REG[0] ( .CK(clk), .CE(n6), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_4_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_4_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_4_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_cpass_REG[0] ( .CK(clk), .CE(n5), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_3_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_3_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_3_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_cpass_REG[0] ( .CK(clk), .CE(n4), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_2_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_i_2_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_i_2_ccheck[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_cpass_REG[0] ( .CK(clk), .CE(n3), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_cpass[0]));
Q_FDP4EP \_zy_sva_fifo_entries_reached_DEPTH_1_ccheck_REG[0] ( .CK(clk), .CE(rst_n), .R(n75), .D(n76), .Q(_zy_sva_fifo_entries_reached_DEPTH_1_ccheck[0]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 3 "
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[3]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[2]"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
endmodule
