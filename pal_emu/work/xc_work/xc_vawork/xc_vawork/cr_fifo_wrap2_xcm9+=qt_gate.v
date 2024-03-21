
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module cr_fifo_wrap2_xcm9 ( full, afull, rdata, empty, aempty, bimc_odat, 
	bimc_osync, ro_uncorrectable_ecc_error, clk, rst_n, wdata, wen, ren, 
	bimc_idat, bimc_isync, bimc_rst_n);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output full;
output afull;
output [82:0] rdata;
output empty;
output aempty;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input clk;
input rst_n;
input [82:0] wdata;
input wen;
input ren;
input bimc_idat;
input bimc_isync;
input bimc_rst_n;
wire _zy_simnet_bimc_odat_0_w$;
wire _zy_simnet_bimc_osync_1_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
wire afull_r;
wire aempty_r;
wire [7:0] free_slots;
wire overflow;
wire rerr;
wire underflow;
wire [7:0] used_slots;
wire [0:7] \ram_fifo._zy_simnet_used_slots_3_w$ ;
wire [0:7] \ram_fifo._zy_simnet_free_slots_4_w$ ;
wire \ram_fifo._zy_simnet_rerr_5_w$ ;
wire \ram_fifo._zy_simnet_underflow_6_w$ ;
wire \ram_fifo._zy_simnet_overflow_7_w$ ;
wire \ram_fifo._zy_simnet_bimc_odat_8_w$ ;
wire \ram_fifo._zy_simnet_bimc_osync_9_w$ ;
wire \ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ ;
wire \ram_fifo._zy_simnet_cio_11 ;
wire \ram_fifo._zy_simnet_cio_12 ;
wire \ram_fifo._zy_simnet_cio_13 ;
wire \ram_fifo._zy_simnet_cio_14 ;
supply0 n1;
supply0 n27;
Q_BUF U0 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_11 ));
Q_BUF U1 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_12 ));
Q_BUF U2 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_13 ));
Q_BUF U3 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_14 ));
ixc_assign \aflags_entries_gt0._zz_strnp_1 ( aempty, aempty_r);
ixc_assign \aflags_entries_gt0._zz_strnp_0 ( afull, afull_r);
ixc_assign _zz_strnp_12 ( _zy_simnet_ro_uncorrectable_ecc_error_2_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_11 ( _zy_simnet_bimc_osync_1_w$, bimc_osync);
ixc_assign _zz_strnp_10 ( _zy_simnet_bimc_odat_0_w$, bimc_odat);
Q_INV U9 ( .A(free_slots[0]), .Z(n2));
Q_INV U10 ( .A(free_slots[2]), .Z(n3));
Q_OR03 U11 ( .A0(free_slots[7]), .A1(free_slots[6]), .A2(free_slots[5]), .Z(n4));
Q_OR03 U12 ( .A0(free_slots[4]), .A1(free_slots[3]), .A2(n3), .Z(n5));
Q_OR03 U13 ( .A0(free_slots[1]), .A1(n2), .A2(n4), .Z(n6));
Q_NR02 U14 ( .A0(n5), .A1(n6), .Z(n7));
Q_INV U15 ( .A(used_slots[1]), .Z(n8));
Q_OR03 U16 ( .A0(used_slots[7]), .A1(used_slots[6]), .A2(used_slots[5]), .Z(n9));
Q_OR03 U17 ( .A0(used_slots[4]), .A1(used_slots[3]), .A2(used_slots[2]), .Z(n10));
Q_OR03 U18 ( .A0(n8), .A1(used_slots[0]), .A2(n9), .Z(n11));
Q_NR02 U19 ( .A0(n10), .A1(n11), .Z(n12));
Q_OR03 U20 ( .A0(free_slots[5]), .A1(free_slots[4]), .A2(n13), .Z(n14));
Q_OR02 U21 ( .A0(free_slots[7]), .A1(free_slots[6]), .Z(n13));
Q_OA21 U22 ( .A0(free_slots[1]), .A1(free_slots[0]), .B0(free_slots[2]), .Z(n15));
Q_NR03 U23 ( .A0(free_slots[3]), .A1(n15), .A2(n14), .Z(n16));
Q_OR03 U24 ( .A0(used_slots[5]), .A1(used_slots[4]), .A2(n17), .Z(n18));
Q_OR02 U25 ( .A0(used_slots[7]), .A1(used_slots[6]), .Z(n17));
Q_OR03 U26 ( .A0(used_slots[3]), .A1(used_slots[2]), .A2(used_slots[1]), .Z(n19));
Q_FDP1 afull_r_REG  ( .CK(clk), .R(rst_n), .D(n26), .Q(afull_r), .QN( ));
Q_FDP2 aempty_r_REG  ( .CK(clk), .S(rst_n), .D(n25), .Q(aempty_r), .QN( ));
Q_AO21 U29 ( .A0(n21), .A1(n12), .B0(n20), .Z(n25));
Q_AN02 U30 ( .A0(n22), .A1(ren), .Z(n21));
Q_INV U31 ( .A(wen), .Z(n22));
Q_AO21 U32 ( .A0(n7), .A1(n23), .B0(n16), .Z(n26));
Q_AN02 U33 ( .A0(wen), .A1(n24), .Z(n23));
Q_INV U34 ( .A(ren), .Z(n24));
nx_fifo_ram_1r1w_xcm13 \ram_fifo.u_nx_fifo_ram_1r1w ( .empty( empty), .full( 
	full), .used_slots( \ram_fifo._zy_simnet_used_slots_3_w$ [0:7]), 
	.free_slots( \ram_fifo._zy_simnet_free_slots_4_w$ [0:7]), .rerr( 
	\ram_fifo._zy_simnet_rerr_5_w$ ), .rdata( rdata[82:0]), 
	.underflow( \ram_fifo._zy_simnet_underflow_6_w$ ), .overflow( 
	\ram_fifo._zy_simnet_overflow_7_w$ ), .bimc_odat( 
	\ram_fifo._zy_simnet_bimc_odat_8_w$ ), .bimc_osync( 
	\ram_fifo._zy_simnet_bimc_osync_9_w$ ), .ro_uncorrectable_ecc_error( 
	\ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ ), .clk( clk), 
	.rst_n( rst_n), .wen( wen), .wdata( wdata[82:0]), .ren( ren), 
	.clear( n27), .bimc_idat( bimc_idat), .bimc_isync( bimc_isync), 
	.bimc_rst_n( bimc_rst_n), .lvm( \ram_fifo._zy_simnet_cio_12 ), 
	.mlvm( \ram_fifo._zy_simnet_cio_13 ), .mrdten( 
	\ram_fifo._zy_simnet_cio_14 ));
ixc_assign \ram_fifo._zz_strnp_9 ( ro_uncorrectable_ecc_error, 
	\ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ );
ixc_assign \ram_fifo._zz_strnp_8 ( bimc_osync, 
	\ram_fifo._zy_simnet_bimc_osync_9_w$ );
ixc_assign \ram_fifo._zz_strnp_7 ( bimc_odat, 
	\ram_fifo._zy_simnet_bimc_odat_8_w$ );
ixc_assign \ram_fifo._zz_strnp_6 ( overflow, 
	\ram_fifo._zy_simnet_overflow_7_w$ );
ixc_assign \ram_fifo._zz_strnp_5 ( underflow, 
	\ram_fifo._zy_simnet_underflow_6_w$ );
ixc_assign \ram_fifo._zz_strnp_4 ( rerr, \ram_fifo._zy_simnet_rerr_5_w$ );
ixc_assign_8 \ram_fifo._zz_strnp_3 ( free_slots[7:0], 
	\ram_fifo._zy_simnet_free_slots_4_w$ [0:7]);
ixc_assign_8 \ram_fifo._zz_strnp_2 ( used_slots[7:0], 
	\ram_fifo._zy_simnet_used_slots_3_w$ [0:7]);
Q_NR02 U44 ( .A0(n19), .A1(n18), .Z(n20));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 ram_fifo  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 aflags_entries_gt0  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "ram_fifo"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "aflags_entries_gt0"
endmodule
