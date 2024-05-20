
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module cr_fifo_wrap2_xcm11 ( full, afull, rdata, empty, aempty, bimc_odat, 
	bimc_osync, ro_uncorrectable_ecc_error, clk, rst_n, wdata, wen, ren, 
	bimc_idat, bimc_isync, bimc_rst_n);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output full;
output afull;
output [70:0] rdata;
output empty;
output aempty;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input clk;
input rst_n;
input [70:0] wdata;
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
wire [11:0] free_slots;
wire overflow;
wire rerr;
wire underflow;
wire [11:0] used_slots;
wire [0:11] \ram_fifo._zy_simnet_used_slots_3_w$ ;
wire [0:11] \ram_fifo._zy_simnet_free_slots_4_w$ ;
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
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_14 ));
Q_BUF U1 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_13 ));
Q_BUF U2 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_12 ));
Q_BUF U3 ( .A(n1), .Z(\ram_fifo._zy_simnet_cio_11 ));
ixc_assign_12 \ram_fifo._zz_strnp_2 ( used_slots[11:0], 
	\ram_fifo._zy_simnet_used_slots_3_w$ [0:11]);
ixc_assign_12 \ram_fifo._zz_strnp_3 ( free_slots[11:0], 
	\ram_fifo._zy_simnet_free_slots_4_w$ [0:11]);
ixc_assign \ram_fifo._zz_strnp_4 ( rerr, \ram_fifo._zy_simnet_rerr_5_w$ );
ixc_assign \ram_fifo._zz_strnp_5 ( underflow, 
	\ram_fifo._zy_simnet_underflow_6_w$ );
ixc_assign \ram_fifo._zz_strnp_6 ( overflow, 
	\ram_fifo._zy_simnet_overflow_7_w$ );
ixc_assign \ram_fifo._zz_strnp_7 ( bimc_odat, 
	\ram_fifo._zy_simnet_bimc_odat_8_w$ );
ixc_assign \ram_fifo._zz_strnp_8 ( bimc_osync, 
	\ram_fifo._zy_simnet_bimc_osync_9_w$ );
ixc_assign \ram_fifo._zz_strnp_9 ( ro_uncorrectable_ecc_error, 
	\ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ );
nx_fifo_ram_1r1w_xcm13 \ram_fifo.u_nx_fifo_ram_1r1w ( .empty( empty), .full( 
	full), .used_slots( \ram_fifo._zy_simnet_used_slots_3_w$ [0:11]), 
	.free_slots( \ram_fifo._zy_simnet_free_slots_4_w$ [0:11]), .rerr( 
	\ram_fifo._zy_simnet_rerr_5_w$ ), .rdata( rdata[70:0]), 
	.underflow( \ram_fifo._zy_simnet_underflow_6_w$ ), .overflow( 
	\ram_fifo._zy_simnet_overflow_7_w$ ), .bimc_odat( 
	\ram_fifo._zy_simnet_bimc_odat_8_w$ ), .bimc_osync( 
	\ram_fifo._zy_simnet_bimc_osync_9_w$ ), .ro_uncorrectable_ecc_error( 
	\ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ ), .clk( clk), 
	.rst_n( rst_n), .wen( wen), .wdata( wdata[70:0]), .ren( ren), 
	.clear( n2), .bimc_idat( bimc_idat), .bimc_isync( bimc_isync), 
	.bimc_rst_n( bimc_rst_n), .lvm( \ram_fifo._zy_simnet_cio_12 ), 
	.mlvm( \ram_fifo._zy_simnet_cio_13 ), .mrdten( 
	\ram_fifo._zy_simnet_cio_14 ));
Q_INV U13 ( .A(ren), .Z(n5));
Q_AN03 U14 ( .A0(wen), .A1(n5), .A2(n28), .Z(n6));
Q_OR02 U15 ( .A0(n6), .A1(n15), .Z(n3));
Q_INV U16 ( .A(wen), .Z(n7));
Q_AN03 U17 ( .A0(n7), .A1(ren), .A2(n21), .Z(n8));
Q_OR02 U18 ( .A0(n8), .A1(n9), .Z(n4));
Q_FDP2 aempty_r_REG  ( .CK(clk), .S(rst_n), .D(n4), .Q(aempty_r), .QN( ));
Q_FDP1 afull_r_REG  ( .CK(clk), .R(rst_n), .D(n3), .Q(afull_r), .QN( ));
Q_NR03 U21 ( .A0(n13), .A1(n11), .A2(n10), .Z(n9));
Q_OR03 U22 ( .A0(used_slots[3]), .A1(used_slots[2]), .A2(used_slots[1]), .Z(n10));
Q_OR03 U23 ( .A0(used_slots[7]), .A1(used_slots[6]), .A2(n12), .Z(n11));
Q_OR02 U24 ( .A0(used_slots[5]), .A1(used_slots[4]), .Z(n12));
Q_OR03 U25 ( .A0(used_slots[11]), .A1(used_slots[10]), .A2(n14), .Z(n13));
Q_OR02 U26 ( .A0(used_slots[9]), .A1(used_slots[8]), .Z(n14));
Q_NR03 U27 ( .A0(n19), .A1(n17), .A2(n16), .Z(n15));
Q_OR03 U28 ( .A0(free_slots[3]), .A1(free_slots[2]), .A2(free_slots[1]), .Z(n16));
Q_OR03 U29 ( .A0(free_slots[7]), .A1(free_slots[6]), .A2(n18), .Z(n17));
Q_OR02 U30 ( .A0(free_slots[5]), .A1(free_slots[4]), .Z(n18));
Q_OR03 U31 ( .A0(free_slots[11]), .A1(free_slots[10]), .A2(n20), .Z(n19));
Q_OR02 U32 ( .A0(free_slots[9]), .A1(free_slots[8]), .Z(n20));
Q_NR02 U33 ( .A0(n23), .A1(n22), .Z(n21));
Q_OR03 U34 ( .A0(n26), .A1(n25), .A2(n24), .Z(n22));
Q_OR03 U35 ( .A0(used_slots[2]), .A1(n27), .A2(used_slots[0]), .Z(n23));
Q_OR03 U36 ( .A0(used_slots[5]), .A1(used_slots[4]), .A2(used_slots[3]), .Z(n24));
Q_OR03 U37 ( .A0(used_slots[8]), .A1(used_slots[7]), .A2(used_slots[6]), .Z(n25));
Q_OR03 U38 ( .A0(used_slots[11]), .A1(used_slots[10]), .A2(used_slots[9]), .Z(n26));
Q_INV U39 ( .A(used_slots[1]), .Z(n27));
Q_NR02 U40 ( .A0(n30), .A1(n29), .Z(n28));
Q_OR03 U41 ( .A0(n33), .A1(n32), .A2(n31), .Z(n29));
Q_OR03 U42 ( .A0(free_slots[2]), .A1(n34), .A2(free_slots[0]), .Z(n30));
Q_OR03 U43 ( .A0(free_slots[5]), .A1(free_slots[4]), .A2(free_slots[3]), .Z(n31));
Q_OR03 U44 ( .A0(free_slots[8]), .A1(free_slots[7]), .A2(free_slots[6]), .Z(n32));
Q_OR03 U45 ( .A0(free_slots[11]), .A1(free_slots[10]), .A2(free_slots[9]), .Z(n33));
Q_INV U46 ( .A(free_slots[1]), .Z(n34));
ixc_assign _zz_strnp_10 ( _zy_simnet_bimc_odat_0_w$, bimc_odat);
ixc_assign _zz_strnp_11 ( _zy_simnet_bimc_osync_1_w$, bimc_osync);
ixc_assign _zz_strnp_12 ( _zy_simnet_ro_uncorrectable_ecc_error_2_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign \aflags_entries_gt0._zz_strnp_0 ( afull, afull_r);
ixc_assign \aflags_entries_gt0._zz_strnp_1 ( aempty, aempty_r);
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 ram_fifo  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 aflags_entries_gt0  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "ram_fifo"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "aflags_entries_gt0"
endmodule
