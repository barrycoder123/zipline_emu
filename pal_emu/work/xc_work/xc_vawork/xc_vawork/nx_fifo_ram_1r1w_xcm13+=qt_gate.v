
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_ram_1r1w_xcm13 ( empty, full, used_slots, free_slots, rerr, 
	rdata, underflow, overflow, bimc_odat, bimc_osync, 
	ro_uncorrectable_ecc_error, clk, rst_n, wen, wdata, ren, clear, 
	bimc_idat, bimc_isync, bimc_rst_n, lvm, mlvm, mrdten);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output [11:0] used_slots;
output [11:0] free_slots;
output rerr;
output [70:0] rdata;
output underflow;
output overflow;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input clk;
input rst_n;
input wen;
input [70:0] wdata;
input ren;
input clear;
input bimc_idat;
input bimc_isync;
input bimc_rst_n;
input lvm;
input mlvm;
input mrdten;
wire _zy_simnet_empty_0_w$;
wire _zy_simnet_full_1_w$;
wire [0:11] _zy_simnet_used_slots_2_w$;
wire [0:11] _zy_simnet_free_slots_3_w$;
wire _zy_simnet_rerr_4_w$;
wire [0:70] _zy_simnet_rdata_5_w$;
wire _zy_simnet_underflow_6_w$;
wire _zy_simnet_overflow_7_w$;
wire _zy_simnet_bimc_odat_8_w$;
wire _zy_simnet_bimc_osync_9_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_10_w$;
wire _zy_simnet_bimc_odat_11_w$;
wire _zy_simnet_bimc_osync_12_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire _zy_simnet_tvar_14;
wire [0:10] _zy_simnet__mem_raddr_15_w$;
wire [0:70] _zy_simnet_mem_rdata_16_w$;
wire _zy_simnet_tvar_17;
wire [0:10] _zy_simnet_mem_waddr_18_w$;
wire [0:70] _zy_simnet_mem_wdata_19_w$;
wire [0:70] _zy_simnet_cio_20;
wire _zy_simnet_mem_wen_21_w$;
wire [0:10] _zy_simnet_mem_waddr_22_w$;
wire [0:70] _zy_simnet_mem_wdata_23_w$;
wire _zy_simnet_mem_ren_24_w$;
wire [0:10] _zy_simnet_mem_raddr_25_w$;
wire _zy_simnet_empty_26_w$;
wire _zy_simnet_full_27_w$;
wire [0:11] _zy_simnet_used_slots_28_w$;
wire [0:11] _zy_simnet_free_slots_29_w$;
wire _zy_simnet_rerr_30_w$;
wire [0:70] _zy_simnet_rdata_31_w$;
wire _zy_simnet_underflow_32_w$;
wire _zy_simnet_overflow_33_w$;
wire [0:70] _zy_simnet_mem_rdata_34_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_35_w$;
wire mem_wen;
wire [10:0] mem_waddr;
wire [70:0] mem_wdata;
wire mem_ren;
wire _mem_ren;
wire [10:0] mem_raddr;
wire [10:0] _mem_raddr;
wire [70:0] mem_rdata;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_20[70]));
Q_BUF U1 ( .A(n1), .Z(_zy_simnet_cio_20[69]));
Q_BUF U2 ( .A(n1), .Z(_zy_simnet_cio_20[68]));
Q_BUF U3 ( .A(n1), .Z(_zy_simnet_cio_20[67]));
Q_BUF U4 ( .A(n1), .Z(_zy_simnet_cio_20[66]));
Q_BUF U5 ( .A(n1), .Z(_zy_simnet_cio_20[65]));
Q_BUF U6 ( .A(n1), .Z(_zy_simnet_cio_20[64]));
Q_BUF U7 ( .A(n1), .Z(_zy_simnet_cio_20[63]));
Q_BUF U8 ( .A(n1), .Z(_zy_simnet_cio_20[62]));
Q_BUF U9 ( .A(n1), .Z(_zy_simnet_cio_20[61]));
Q_BUF U10 ( .A(n1), .Z(_zy_simnet_cio_20[60]));
Q_BUF U11 ( .A(n1), .Z(_zy_simnet_cio_20[59]));
Q_BUF U12 ( .A(n1), .Z(_zy_simnet_cio_20[58]));
Q_BUF U13 ( .A(n1), .Z(_zy_simnet_cio_20[57]));
Q_BUF U14 ( .A(n1), .Z(_zy_simnet_cio_20[56]));
Q_BUF U15 ( .A(n1), .Z(_zy_simnet_cio_20[55]));
Q_BUF U16 ( .A(n1), .Z(_zy_simnet_cio_20[54]));
Q_BUF U17 ( .A(n1), .Z(_zy_simnet_cio_20[53]));
Q_BUF U18 ( .A(n1), .Z(_zy_simnet_cio_20[52]));
Q_BUF U19 ( .A(n1), .Z(_zy_simnet_cio_20[51]));
Q_BUF U20 ( .A(n1), .Z(_zy_simnet_cio_20[50]));
Q_BUF U21 ( .A(n1), .Z(_zy_simnet_cio_20[49]));
Q_BUF U22 ( .A(n1), .Z(_zy_simnet_cio_20[48]));
Q_BUF U23 ( .A(n1), .Z(_zy_simnet_cio_20[47]));
Q_BUF U24 ( .A(n1), .Z(_zy_simnet_cio_20[46]));
Q_BUF U25 ( .A(n1), .Z(_zy_simnet_cio_20[45]));
Q_BUF U26 ( .A(n1), .Z(_zy_simnet_cio_20[44]));
Q_BUF U27 ( .A(n1), .Z(_zy_simnet_cio_20[43]));
Q_BUF U28 ( .A(n1), .Z(_zy_simnet_cio_20[42]));
Q_BUF U29 ( .A(n1), .Z(_zy_simnet_cio_20[41]));
Q_BUF U30 ( .A(n1), .Z(_zy_simnet_cio_20[40]));
Q_BUF U31 ( .A(n1), .Z(_zy_simnet_cio_20[39]));
Q_BUF U32 ( .A(n1), .Z(_zy_simnet_cio_20[38]));
Q_BUF U33 ( .A(n1), .Z(_zy_simnet_cio_20[37]));
Q_BUF U34 ( .A(n1), .Z(_zy_simnet_cio_20[36]));
Q_BUF U35 ( .A(n1), .Z(_zy_simnet_cio_20[35]));
Q_BUF U36 ( .A(n1), .Z(_zy_simnet_cio_20[34]));
Q_BUF U37 ( .A(n1), .Z(_zy_simnet_cio_20[33]));
Q_BUF U38 ( .A(n1), .Z(_zy_simnet_cio_20[32]));
Q_BUF U39 ( .A(n1), .Z(_zy_simnet_cio_20[31]));
Q_BUF U40 ( .A(n1), .Z(_zy_simnet_cio_20[30]));
Q_BUF U41 ( .A(n1), .Z(_zy_simnet_cio_20[29]));
Q_BUF U42 ( .A(n1), .Z(_zy_simnet_cio_20[28]));
Q_BUF U43 ( .A(n1), .Z(_zy_simnet_cio_20[27]));
Q_BUF U44 ( .A(n1), .Z(_zy_simnet_cio_20[26]));
Q_BUF U45 ( .A(n1), .Z(_zy_simnet_cio_20[25]));
Q_BUF U46 ( .A(n1), .Z(_zy_simnet_cio_20[24]));
Q_BUF U47 ( .A(n1), .Z(_zy_simnet_cio_20[23]));
Q_BUF U48 ( .A(n1), .Z(_zy_simnet_cio_20[22]));
Q_BUF U49 ( .A(n1), .Z(_zy_simnet_cio_20[21]));
Q_BUF U50 ( .A(n1), .Z(_zy_simnet_cio_20[20]));
Q_BUF U51 ( .A(n1), .Z(_zy_simnet_cio_20[19]));
Q_BUF U52 ( .A(n1), .Z(_zy_simnet_cio_20[18]));
Q_BUF U53 ( .A(n1), .Z(_zy_simnet_cio_20[17]));
Q_BUF U54 ( .A(n1), .Z(_zy_simnet_cio_20[16]));
Q_BUF U55 ( .A(n1), .Z(_zy_simnet_cio_20[15]));
Q_BUF U56 ( .A(n1), .Z(_zy_simnet_cio_20[14]));
Q_BUF U57 ( .A(n1), .Z(_zy_simnet_cio_20[13]));
Q_BUF U58 ( .A(n1), .Z(_zy_simnet_cio_20[12]));
Q_BUF U59 ( .A(n1), .Z(_zy_simnet_cio_20[11]));
Q_BUF U60 ( .A(n1), .Z(_zy_simnet_cio_20[10]));
Q_BUF U61 ( .A(n1), .Z(_zy_simnet_cio_20[9]));
Q_BUF U62 ( .A(n1), .Z(_zy_simnet_cio_20[8]));
Q_BUF U63 ( .A(n1), .Z(_zy_simnet_cio_20[7]));
Q_BUF U64 ( .A(n1), .Z(_zy_simnet_cio_20[6]));
Q_BUF U65 ( .A(n1), .Z(_zy_simnet_cio_20[5]));
Q_BUF U66 ( .A(n1), .Z(_zy_simnet_cio_20[4]));
Q_BUF U67 ( .A(n1), .Z(_zy_simnet_cio_20[3]));
Q_BUF U68 ( .A(n1), .Z(_zy_simnet_cio_20[2]));
Q_BUF U69 ( .A(n1), .Z(_zy_simnet_cio_20[1]));
Q_BUF U70 ( .A(n1), .Z(_zy_simnet_cio_20[0]));
nx_fifo_ctrl_ram_1r1w_xcm17 fifo_ctrl ( .mem_wen( _zy_simnet_mem_wen_21_w$), 
	.mem_waddr( _zy_simnet_mem_waddr_22_w$[0:10]), .mem_wdata( 
	_zy_simnet_mem_wdata_23_w$[0:70]), .mem_ren( _zy_simnet_mem_ren_24_w$), 
	.mem_raddr( _zy_simnet_mem_raddr_25_w$[0:10]), .empty( 
	_zy_simnet_empty_26_w$), .full( _zy_simnet_full_27_w$), 
	.used_slots( _zy_simnet_used_slots_28_w$[0:11]), .free_slots( 
	_zy_simnet_free_slots_29_w$[0:11]), .rerr( _zy_simnet_rerr_30_w$), 
	.rdata( _zy_simnet_rdata_31_w$[0:70]), .underflow( 
	_zy_simnet_underflow_32_w$), .overflow( _zy_simnet_overflow_33_w$), 
	.clk( clk), .rst_n( rst_n), .mem_rdata( 
	_zy_simnet_mem_rdata_34_w$[0:70]), .mem_ecc_error( 
	_zy_simnet_ro_uncorrectable_ecc_error_35_w$), .wen( wen), .wdata( 
	wdata[70:0]), .ren( ren), .clear( clear));
nx_ram_1r1w_xcm15 ram ( .rst_n( rst_n), .clk( clk), .lvm( lvm), .mlvm( 
	mlvm), .mrdten( mrdten), .bimc_rst_n( bimc_rst_n), .bimc_isync( 
	bimc_isync), .bimc_idat( bimc_idat), .bimc_odat( 
	_zy_simnet_bimc_odat_11_w$), .bimc_osync( 
	_zy_simnet_bimc_osync_12_w$), .ro_uncorrectable_ecc_error( 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$), .reb( 
	_zy_simnet_tvar_14), .ra( _zy_simnet__mem_raddr_15_w$[0:10]), .dout( 
	_zy_simnet_mem_rdata_16_w$[0:70]), .web( _zy_simnet_tvar_17), .wa( 
	_zy_simnet_mem_waddr_18_w$[0:10]), .din( 
	_zy_simnet_mem_wdata_19_w$[0:70]), .bwe( _zy_simnet_cio_20[0:70]));
ixc_assign _zz_strnp_32 ( _zy_simnet_ro_uncorrectable_ecc_error_35_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign_71 _zz_strnp_31 ( _zy_simnet_mem_rdata_34_w$[0:70], 
	mem_rdata[70:0]);
ixc_assign _zz_strnp_30 ( overflow, _zy_simnet_overflow_33_w$);
ixc_assign _zz_strnp_29 ( underflow, _zy_simnet_underflow_32_w$);
ixc_assign_71 _zz_strnp_28 ( rdata[70:0], _zy_simnet_rdata_31_w$[0:70]);
ixc_assign _zz_strnp_27 ( rerr, _zy_simnet_rerr_30_w$);
ixc_assign_12 _zz_strnp_26 ( free_slots[11:0], 
	_zy_simnet_free_slots_29_w$[0:11]);
ixc_assign_12 _zz_strnp_25 ( used_slots[11:0], 
	_zy_simnet_used_slots_28_w$[0:11]);
ixc_assign _zz_strnp_24 ( full, _zy_simnet_full_27_w$);
ixc_assign _zz_strnp_23 ( empty, _zy_simnet_empty_26_w$);
ixc_assign_11 _zz_strnp_22 ( mem_raddr[10:0], 
	_zy_simnet_mem_raddr_25_w$[0:10]);
ixc_assign _zz_strnp_21 ( mem_ren, _zy_simnet_mem_ren_24_w$);
ixc_assign_71 _zz_strnp_20 ( mem_wdata[70:0], 
	_zy_simnet_mem_wdata_23_w$[0:70]);
ixc_assign_11 _zz_strnp_19 ( mem_waddr[10:0], 
	_zy_simnet_mem_waddr_22_w$[0:10]);
ixc_assign _zz_strnp_18 ( mem_wen, _zy_simnet_mem_wen_21_w$);
ixc_assign_71 _zz_strnp_17 ( _zy_simnet_mem_wdata_19_w$[0:70], 
	mem_wdata[70:0]);
ixc_assign_11 _zz_strnp_16 ( _zy_simnet_mem_waddr_18_w$[0:10], 
	mem_waddr[10:0]);
Q_INV U90 ( .A(mem_wen), .Z(_zy_simnet_tvar_17));
ixc_assign_71 _zz_strnp_15 ( mem_rdata[70:0], 
	_zy_simnet_mem_rdata_16_w$[0:70]);
ixc_assign_11 _zz_strnp_14 ( _zy_simnet__mem_raddr_15_w$[0:10], 
	_mem_raddr[10:0]);
ixc_assign _zz_strnp_13 ( ro_uncorrectable_ecc_error, 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$);
ixc_assign _zz_strnp_12 ( bimc_osync, _zy_simnet_bimc_osync_12_w$);
ixc_assign _zz_strnp_11 ( bimc_odat, _zy_simnet_bimc_odat_11_w$);
ixc_assign _zz_strnp_10 ( _zy_simnet_ro_uncorrectable_ecc_error_10_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_9 ( _zy_simnet_bimc_osync_9_w$, bimc_osync);
ixc_assign _zz_strnp_8 ( _zy_simnet_bimc_odat_8_w$, bimc_odat);
ixc_assign _zz_strnp_7 ( _zy_simnet_overflow_7_w$, overflow);
ixc_assign _zz_strnp_6 ( _zy_simnet_underflow_6_w$, underflow);
ixc_assign_71 _zz_strnp_5 ( _zy_simnet_rdata_5_w$[0:70], rdata[70:0]);
ixc_assign _zz_strnp_4 ( _zy_simnet_rerr_4_w$, rerr);
ixc_assign_12 _zz_strnp_3 ( _zy_simnet_free_slots_3_w$[0:11], 
	free_slots[11:0]);
ixc_assign_12 _zz_strnp_2 ( _zy_simnet_used_slots_2_w$[0:11], 
	used_slots[11:0]);
ixc_assign _zz_strnp_1 ( _zy_simnet_full_1_w$, full);
ixc_assign _zz_strnp_0 ( _zy_simnet_empty_0_w$, empty);
Q_FDP1 _mem_ren_REG  ( .CK(clk), .R(rst_n), .D(mem_ren), .Q(_mem_ren), .QN(_zy_simnet_tvar_14));
Q_FDP0 \_mem_raddr_REG[0] ( .CK(clk), .D(mem_raddr[0]), .Q(_mem_raddr[0]), .QN( ));
Q_FDP0 \_mem_raddr_REG[1] ( .CK(clk), .D(mem_raddr[1]), .Q(_mem_raddr[1]), .QN( ));
Q_FDP0 \_mem_raddr_REG[2] ( .CK(clk), .D(mem_raddr[2]), .Q(_mem_raddr[2]), .QN( ));
Q_FDP0 \_mem_raddr_REG[3] ( .CK(clk), .D(mem_raddr[3]), .Q(_mem_raddr[3]), .QN( ));
Q_FDP0 \_mem_raddr_REG[4] ( .CK(clk), .D(mem_raddr[4]), .Q(_mem_raddr[4]), .QN( ));
Q_FDP0 \_mem_raddr_REG[5] ( .CK(clk), .D(mem_raddr[5]), .Q(_mem_raddr[5]), .QN( ));
Q_FDP0 \_mem_raddr_REG[6] ( .CK(clk), .D(mem_raddr[6]), .Q(_mem_raddr[6]), .QN( ));
Q_FDP0 \_mem_raddr_REG[7] ( .CK(clk), .D(mem_raddr[7]), .Q(_mem_raddr[7]), .QN( ));
Q_FDP0 \_mem_raddr_REG[8] ( .CK(clk), .D(mem_raddr[8]), .Q(_mem_raddr[8]), .QN( ));
Q_FDP0 \_mem_raddr_REG[9] ( .CK(clk), .D(mem_raddr[9]), .Q(_mem_raddr[9]), .QN( ));
Q_FDP0 \_mem_raddr_REG[10] ( .CK(clk), .D(mem_raddr[10]), .Q(_mem_raddr[10]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
endmodule
