
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module cr_fifo_wrap2_xcm12 ( full, afull, rdata, empty, aempty, bimc_odat, 
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
supply0 n26;
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
Q_INV U9 ( .A(free_slots[1]), .Z(n2));
Q_OR03 U10 ( .A0(free_slots[7]), .A1(free_slots[6]), .A2(free_slots[5]), .Z(n3));
Q_OR03 U11 ( .A0(free_slots[4]), .A1(free_slots[3]), .A2(free_slots[2]), .Z(n4));
Q_OR03 U12 ( .A0(n2), .A1(free_slots[0]), .A2(n3), .Z(n5));
Q_NR02 U13 ( .A0(n4), .A1(n5), .Z(n6));
Q_INV U14 ( .A(used_slots[1]), .Z(n7));
Q_OR03 U15 ( .A0(used_slots[7]), .A1(used_slots[6]), .A2(used_slots[5]), .Z(n8));
Q_OR03 U16 ( .A0(used_slots[4]), .A1(used_slots[3]), .A2(used_slots[2]), .Z(n9));
Q_OR03 U17 ( .A0(n7), .A1(used_slots[0]), .A2(n8), .Z(n10));
Q_NR02 U18 ( .A0(n9), .A1(n10), .Z(n11));
Q_OR03 U19 ( .A0(free_slots[5]), .A1(free_slots[4]), .A2(n12), .Z(n13));
Q_OR02 U20 ( .A0(free_slots[7]), .A1(free_slots[6]), .Z(n12));
Q_OR03 U21 ( .A0(free_slots[3]), .A1(free_slots[2]), .A2(free_slots[1]), .Z(n14));
Q_OR03 U22 ( .A0(used_slots[5]), .A1(used_slots[4]), .A2(n16), .Z(n17));
Q_OR02 U23 ( .A0(used_slots[7]), .A1(used_slots[6]), .Z(n16));
Q_OR03 U24 ( .A0(used_slots[3]), .A1(used_slots[2]), .A2(used_slots[1]), .Z(n18));
Q_FDP1 afull_r_REG  ( .CK(clk), .R(rst_n), .D(n25), .Q(afull_r), .QN( ));
Q_FDP2 aempty_r_REG  ( .CK(clk), .S(rst_n), .D(n24), .Q(aempty_r), .QN( ));
Q_AO21 U27 ( .A0(n20), .A1(n11), .B0(n19), .Z(n24));
Q_AN02 U28 ( .A0(n21), .A1(ren), .Z(n20));
Q_INV U29 ( .A(wen), .Z(n21));
Q_AO21 U30 ( .A0(n6), .A1(n22), .B0(n15), .Z(n25));
Q_AN02 U31 ( .A0(wen), .A1(n23), .Z(n22));
Q_INV U32 ( .A(ren), .Z(n23));
nx_fifo_ram_1r1w_xcm14 \ram_fifo.u_nx_fifo_ram_1r1w ( .empty( empty), .full( 
	full), .used_slots( \ram_fifo._zy_simnet_used_slots_3_w$ [0:7]), 
	.free_slots( \ram_fifo._zy_simnet_free_slots_4_w$ [0:7]), .rerr( 
	\ram_fifo._zy_simnet_rerr_5_w$ ), .rdata( rdata[82:0]), 
	.underflow( \ram_fifo._zy_simnet_underflow_6_w$ ), .overflow( 
	\ram_fifo._zy_simnet_overflow_7_w$ ), .bimc_odat( 
	\ram_fifo._zy_simnet_bimc_odat_8_w$ ), .bimc_osync( 
	\ram_fifo._zy_simnet_bimc_osync_9_w$ ), .ro_uncorrectable_ecc_error( 
	\ram_fifo._zy_simnet_ro_uncorrectable_ecc_error_10_w$ ), .clk( clk), 
	.rst_n( rst_n), .wen( wen), .wdata( wdata[82:0]), .ren( ren), 
	.clear( n26), .bimc_idat( bimc_idat), .bimc_isync( bimc_isync), 
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
Q_NR02 U42 ( .A0(n18), .A1(n17), .Z(n19));
Q_NR02 U43 ( .A0(n14), .A1(n13), .Z(n15));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 ram_fifo  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 aflags_entries_gt0  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "ram_fifo"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "aflags_entries_gt0"
endmodule
