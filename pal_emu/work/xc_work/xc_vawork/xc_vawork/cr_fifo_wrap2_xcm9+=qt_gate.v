
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
output [105:0] rdata;
output empty;
output aempty;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input clk;
input rst_n;
input [105:0] wdata;
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
wire [4:0] free_slots;
wire overflow;
wire rerr;
wire underflow;
wire [4:0] used_slots;
wire \reg_fifo._zy_simnet_underflow_3_w$ ;
wire \reg_fifo._zy_simnet_overflow_4_w$ ;
wire [0:4] \reg_fifo._zy_simnet_used_slots_5_w$ ;
wire [0:4] \reg_fifo._zy_simnet_free_slots_6_w$ ;
wire \reg_fifo._zy_simnet_cio_7 ;
supply0 n1;
supply0 n2;
supply0 n19;
Q_BUF U0 ( .A(n1), .Z(\reg_fifo._zy_simnet_cio_7 ));
Q_BUF U1 ( .A(n2), .Z(ro_uncorrectable_ecc_error));
ixc_assign \aflags_entries_gt0._zz_strnp_1 ( aempty, aempty_r);
ixc_assign \aflags_entries_gt0._zz_strnp_0 ( afull, afull_r);
ixc_assign _zz_strnp_10 ( _zy_simnet_ro_uncorrectable_ecc_error_2_w$, n2);
ixc_assign _zz_strnp_9 ( _zy_simnet_bimc_osync_1_w$, bimc_osync);
ixc_assign _zz_strnp_8 ( _zy_simnet_bimc_odat_0_w$, bimc_odat);
Q_INV U7 ( .A(free_slots[1]), .Z(n3));
Q_OR03 U8 ( .A0(free_slots[4]), .A1(free_slots[3]), .A2(free_slots[2]), .Z(n4));
Q_NR03 U9 ( .A0(n3), .A1(free_slots[0]), .A2(n4), .Z(n5));
Q_INV U10 ( .A(used_slots[1]), .Z(n6));
Q_OR03 U11 ( .A0(used_slots[4]), .A1(used_slots[3]), .A2(used_slots[2]), .Z(n7));
Q_NR03 U12 ( .A0(n6), .A1(used_slots[0]), .A2(n7), .Z(n8));
Q_NR03 U13 ( .A0(free_slots[2]), .A1(free_slots[1]), .A2(n9), .Z(n10));
Q_OR02 U14 ( .A0(free_slots[4]), .A1(free_slots[3]), .Z(n9));
Q_NR03 U15 ( .A0(used_slots[2]), .A1(used_slots[1]), .A2(n11), .Z(n12));
Q_OR02 U16 ( .A0(used_slots[4]), .A1(used_slots[3]), .Z(n11));
Q_FDP1 afull_r_REG  ( .CK(clk), .R(rst_n), .D(n18), .Q(afull_r), .QN( ));
Q_FDP2 aempty_r_REG  ( .CK(clk), .S(rst_n), .D(n17), .Q(aempty_r), .QN( ));
Q_AO21 U19 ( .A0(n13), .A1(n8), .B0(n12), .Z(n17));
Q_AN02 U20 ( .A0(n14), .A1(ren), .Z(n13));
Q_INV U21 ( .A(wen), .Z(n14));
Q_AO21 U22 ( .A0(n5), .A1(n15), .B0(n10), .Z(n18));
Q_AN02 U23 ( .A0(wen), .A1(n16), .Z(n15));
Q_INV U24 ( .A(ren), .Z(n16));
nx_fifo_xcm20 \reg_fifo.u_nx_fifo ( .empty( empty), .full( full), 
	.underflow( \reg_fifo._zy_simnet_underflow_3_w$ ), .overflow( 
	\reg_fifo._zy_simnet_overflow_4_w$ ), .used_slots( 
	\reg_fifo._zy_simnet_used_slots_5_w$ [0:4]), .free_slots( 
	\reg_fifo._zy_simnet_free_slots_6_w$ [0:4]), .rdata( rdata[105:0]), 
	.clk( clk), .rst_n( rst_n), .wen( wen), .ren( ren), .clear( n19), 
	.wdata( wdata[105:0]));
ixc_assign_5 \reg_fifo._zz_strnp_7 ( free_slots[4:0], 
	\reg_fifo._zy_simnet_free_slots_6_w$ [0:4]);
ixc_assign_5 \reg_fifo._zz_strnp_6 ( used_slots[4:0], 
	\reg_fifo._zy_simnet_used_slots_5_w$ [0:4]);
ixc_assign \reg_fifo._zz_strnp_5 ( overflow, 
	\reg_fifo._zy_simnet_overflow_4_w$ );
ixc_assign \reg_fifo._zz_strnp_4 ( underflow, 
	\reg_fifo._zy_simnet_underflow_3_w$ );
ixc_assign \reg_fifo._zz_strnp_3 ( bimc_osync, bimc_isync);
ixc_assign \reg_fifo._zz_strnp_2 ( bimc_odat, bimc_idat);
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 reg_fifo  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 aflags_entries_gt0  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "reg_fifo"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "aflags_entries_gt0"
endmodule
