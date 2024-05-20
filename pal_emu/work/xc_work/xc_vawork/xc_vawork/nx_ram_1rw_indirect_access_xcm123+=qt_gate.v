
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_ram_1rw_indirect_access_xcm123 ( clk, rst_n, reg_addr, cmnd_op, 
	cmnd_addr, stat_code, stat_datawords, stat_addr, capability_lst, 
	capability_type, wr_stb, wr_dat, rd_dat, ovstb, lvm, mlvm, mrdten, 
	bimc_rst_n, bimc_isync, bimc_idat, bimc_odat, bimc_osync, 
	ro_uncorrectable_ecc_error, hw_add, hw_we, hw_bwe, hw_cs, hw_din, 
	hw_dout, hw_yield);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input clk;
input rst_n;
input [10:0] reg_addr;
input [3:0] cmnd_op;
input [13:0] cmnd_addr;
output [2:0] stat_code;
output [4:0] stat_datawords;
output [13:0] stat_addr;
output [15:0] capability_lst;
output [3:0] capability_type;
input wr_stb;
input [37:0] wr_dat;
output [37:0] rd_dat;
input ovstb;
input lvm;
input mlvm;
input mrdten;
input bimc_rst_n;
input bimc_isync;
input bimc_idat;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input [13:0] hw_add;
input hw_we;
input [37:0] hw_bwe;
input hw_cs;
input [37:0] hw_din;
output [37:0] hw_dout;
output hw_yield;
wire [0:2] _zy_simnet_stat_code_0_w$;
wire [0:4] _zy_simnet_stat_datawords_1_w$;
wire [0:13] _zy_simnet_stat_addr_2_w$;
wire [0:15] _zy_simnet_capability_lst_3_w$;
wire [0:3] _zy_simnet_capability_type_4_w$;
wire [0:37] _zy_simnet_rd_dat_5_w$;
wire _zy_simnet_bimc_odat_6_w$;
wire _zy_simnet_bimc_osync_7_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_8_w$;
wire [0:37] _zy_simnet_hw_dout_9_w$;
wire _zy_simnet_hw_yield_10_w$;
wire _zy_simnet_bimc_odat_11_w$;
wire _zy_simnet_bimc_osync_12_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire [0:37] _zy_simnet_bwe_14_w$;
wire [0:37] _zy_simnet_din_15_w$;
wire [0:13] _zy_simnet_add_16_w$;
wire _zy_simnet_cs_17_w$;
wire _zy_simnet_we_18_w$;
wire [0:37] _zy_simnet_dout_19_w$;
wire _zy_simnet_cio_20;
wire [0:2] _zy_simnet_stat_code_21_w$;
wire [0:4] _zy_simnet_stat_datawords_22_w$;
wire [0:13] _zy_simnet_stat_addr_23_w$;
wire _zy_simnet_dio_24;
wire [0:15] _zy_simnet_capability_lst_25_w$;
wire [0:3] _zy_simnet_capability_type_26_w$;
wire _zy_simnet_enable_27_w$;
wire [0:13] _zy_simnet_addr_limit_28_w$;
wire [0:37] _zy_simnet_rd_dat_29_w$;
wire _zy_simnet_sw_cs_30_w$;
wire _zy_simnet_dio_31;
wire _zy_simnet_sw_we_32_w$;
wire [0:13] _zy_simnet_sw_add_33_w$;
wire [0:37] _zy_simnet_sw_wdat_34_w$;
wire [0:37] _zy_simnet_dout_35_w$;
wire _zy_simnet_cio_36;
wire [0:12] _zy_simnet_cio_37;
wire _zy_simnet_tvar_38;
wire _zy_simnet_r_rsp_39_w$;
wire _zy_simnet_yield_40_w$;
wire _zy_simnet_dio_41;
wire enable;
wire yield;
wire [13:0] sw_add;
wire sw_cs;
wire [37:0] sw_wdat;
wire sw_we;
wire [13:0] add;
wire [37:0] bwe;
wire cs;
wire [37:0] din;
wire we;
wire [37:0] dout;
wire [1:0] r_rsp;
wire [13:0] addr_limit;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_37[12]));
Q_BUF U1 ( .A(n1), .Z(_zy_simnet_cio_37[11]));
Q_BUF U2 ( .A(n1), .Z(_zy_simnet_cio_37[10]));
Q_BUF U3 ( .A(n1), .Z(_zy_simnet_cio_37[9]));
Q_BUF U4 ( .A(n1), .Z(_zy_simnet_cio_37[8]));
Q_BUF U5 ( .A(n1), .Z(_zy_simnet_cio_37[7]));
Q_BUF U6 ( .A(n1), .Z(_zy_simnet_cio_37[6]));
Q_BUF U7 ( .A(n1), .Z(_zy_simnet_cio_37[5]));
Q_BUF U8 ( .A(n1), .Z(_zy_simnet_cio_37[4]));
Q_BUF U9 ( .A(n1), .Z(_zy_simnet_cio_37[3]));
Q_BUF U10 ( .A(n1), .Z(_zy_simnet_cio_37[2]));
Q_BUF U11 ( .A(n1), .Z(_zy_simnet_cio_37[1]));
Q_BUF U12 ( .A(n1), .Z(_zy_simnet_cio_37[0]));
Q_BUF U13 ( .A(n1), .Z(_zy_simnet_cio_36));
Q_BUF U14 ( .A(n1), .Z(_zy_simnet_cio_20));
Q_BUF U15 ( .A(n2), .Z(addr_limit[0]));
Q_BUF U16 ( .A(n2), .Z(addr_limit[1]));
Q_BUF U17 ( .A(n2), .Z(addr_limit[2]));
Q_BUF U18 ( .A(n2), .Z(addr_limit[3]));
Q_BUF U19 ( .A(n2), .Z(addr_limit[4]));
Q_BUF U20 ( .A(n2), .Z(addr_limit[5]));
Q_BUF U21 ( .A(n2), .Z(addr_limit[6]));
Q_BUF U22 ( .A(n2), .Z(addr_limit[7]));
Q_BUF U23 ( .A(n2), .Z(addr_limit[8]));
Q_BUF U24 ( .A(n2), .Z(addr_limit[9]));
Q_BUF U25 ( .A(n2), .Z(addr_limit[10]));
Q_BUF U26 ( .A(n2), .Z(addr_limit[11]));
Q_BUF U27 ( .A(n2), .Z(addr_limit[12]));
Q_BUF U28 ( .A(n2), .Z(addr_limit[13]));
nx_indirect_access_cntrl_v2_xcm125 u_cntrl ( clk, rst_n, wr_stb, 
	reg_addr[10:0], cmnd_op[3:0], cmnd_addr[13:0], _zy_simnet_cio_20, 
	_zy_simnet_stat_code_21_w$[0:2], _zy_simnet_stat_datawords_22_w$[0:4], 
	_zy_simnet_stat_addr_23_w$[0:13], _zy_simnet_dio_24, 
	_zy_simnet_capability_lst_25_w$[0:15], 
	_zy_simnet_capability_type_26_w$[0:3], _zy_simnet_enable_27_w$, 
	_zy_simnet_addr_limit_28_w$[0:13], wr_dat[37:0], 
	_zy_simnet_rd_dat_29_w$[0:37], _zy_simnet_sw_cs_30_w$, 
	_zy_simnet_dio_31, _zy_simnet_sw_we_32_w$, 
	_zy_simnet_sw_add_33_w$[0:13], _zy_simnet_sw_wdat_34_w$[0:37], 
	_zy_simnet_dout_35_w$[0:37], _zy_simnet_cio_36, _zy_simnet_cio_37[0:12], 
	_zy_simnet_tvar_38, _zy_simnet_r_rsp_39_w$, _zy_simnet_yield_40_w$, 
	_zy_simnet_dio_41);
nx_ram_1rw_xcm108 u_ram ( clk, rst_n, ovstb, lvm, mlvm, mrdten, bimc_rst_n, 
	bimc_isync, bimc_idat, _zy_simnet_bimc_odat_11_w$, 
	_zy_simnet_bimc_osync_12_w$, 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$, 
	_zy_simnet_bwe_14_w$[0:37], _zy_simnet_din_15_w$[0:37], 
	_zy_simnet_add_16_w$[0:13], _zy_simnet_cs_17_w$, _zy_simnet_we_18_w$, 
	_zy_simnet_dout_19_w$[0:37]);
ixc_assign _zz_strnp_35 ( yield, _zy_simnet_yield_40_w$);
ixc_assign _zz_strnp_34 ( _zy_simnet_r_rsp_39_w$, r_rsp[1]);
Q_INV U33 ( .A(hw_cs), .Z(_zy_simnet_tvar_38));
ixc_assign_38 _zz_strnp_33 ( _zy_simnet_dout_35_w$[0:37], dout[37:0]);
ixc_assign_38 _zz_strnp_32 ( sw_wdat[37:0], _zy_simnet_sw_wdat_34_w$[0:37]);
ixc_assign_14 _zz_strnp_31 ( sw_add[13:0], _zy_simnet_sw_add_33_w$[0:13]);
ixc_assign _zz_strnp_30 ( sw_we, _zy_simnet_sw_we_32_w$);
ixc_assign _zz_strnp_29 ( sw_cs, _zy_simnet_sw_cs_30_w$);
ixc_assign_38 _zz_strnp_28 ( rd_dat[37:0], _zy_simnet_rd_dat_29_w$[0:37]);
ixc_assign_14 _zz_strnp_27 ( _zy_simnet_addr_limit_28_w$[0:13], 
	addr_limit[13:0]);
ixc_assign _zz_strnp_26 ( enable, _zy_simnet_enable_27_w$);
ixc_assign_4 _zz_strnp_25 ( capability_type[3:0], 
	_zy_simnet_capability_type_26_w$[0:3]);
ixc_assign_16 _zz_strnp_24 ( capability_lst[15:0], 
	_zy_simnet_capability_lst_25_w$[0:15]);
ixc_assign_14 _zz_strnp_23 ( stat_addr[13:0], 
	_zy_simnet_stat_addr_23_w$[0:13]);
ixc_assign_5 _zz_strnp_22 ( stat_datawords[4:0], 
	_zy_simnet_stat_datawords_22_w$[0:4]);
ixc_assign_3 _zz_strnp_21 ( stat_code[2:0], _zy_simnet_stat_code_21_w$[0:2]);
ixc_assign_38 _zz_strnp_20 ( dout[37:0], _zy_simnet_dout_19_w$[0:37]);
ixc_assign _zz_strnp_19 ( _zy_simnet_we_18_w$, we);
ixc_assign _zz_strnp_18 ( _zy_simnet_cs_17_w$, cs);
ixc_assign_14 _zz_strnp_17 ( _zy_simnet_add_16_w$[0:13], add[13:0]);
ixc_assign_38 _zz_strnp_16 ( _zy_simnet_din_15_w$[0:37], din[37:0]);
ixc_assign_38 _zz_strnp_15 ( _zy_simnet_bwe_14_w$[0:37], bwe[37:0]);
ixc_assign _zz_strnp_14 ( ro_uncorrectable_ecc_error, 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$);
ixc_assign _zz_strnp_13 ( bimc_osync, _zy_simnet_bimc_osync_12_w$);
ixc_assign _zz_strnp_12 ( bimc_odat, _zy_simnet_bimc_odat_11_w$);
ixc_assign _zz_strnp_11 ( _zy_simnet_hw_yield_10_w$, hw_yield);
ixc_assign_38 _zz_strnp_10 ( _zy_simnet_hw_dout_9_w$[0:37], hw_dout[37:0]);
ixc_assign _zz_strnp_9 ( _zy_simnet_ro_uncorrectable_ecc_error_8_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_8 ( _zy_simnet_bimc_osync_7_w$, bimc_osync);
ixc_assign _zz_strnp_7 ( _zy_simnet_bimc_odat_6_w$, bimc_odat);
ixc_assign_38 _zz_strnp_6 ( _zy_simnet_rd_dat_5_w$[0:37], rd_dat[37:0]);
ixc_assign_4 _zz_strnp_5 ( _zy_simnet_capability_type_4_w$[0:3], 
	capability_type[3:0]);
ixc_assign_16 _zz_strnp_4 ( _zy_simnet_capability_lst_3_w$[0:15], 
	capability_lst[15:0]);
ixc_assign_14 _zz_strnp_3 ( _zy_simnet_stat_addr_2_w$[0:13], stat_addr[13:0]);
ixc_assign_5 _zz_strnp_2 ( _zy_simnet_stat_datawords_1_w$[0:4], 
	stat_datawords[4:0]);
ixc_assign_3 _zz_strnp_1 ( _zy_simnet_stat_code_0_w$[0:2], stat_code[2:0]);
ixc_assign _zz_strnp_0 ( hw_yield, yield);
Q_OR02 U68 ( .A0(hw_cs), .A1(sw_cs), .Z(cs));
Q_MX02 U69 ( .S(hw_cs), .A0(sw_add[0]), .A1(hw_add[0]), .Z(add[0]));
Q_MX02 U70 ( .S(hw_cs), .A0(sw_add[1]), .A1(hw_add[1]), .Z(add[1]));
Q_MX02 U71 ( .S(hw_cs), .A0(sw_add[2]), .A1(hw_add[2]), .Z(add[2]));
Q_MX02 U72 ( .S(hw_cs), .A0(sw_add[3]), .A1(hw_add[3]), .Z(add[3]));
Q_MX02 U73 ( .S(hw_cs), .A0(sw_add[4]), .A1(hw_add[4]), .Z(add[4]));
Q_MX02 U74 ( .S(hw_cs), .A0(sw_add[5]), .A1(hw_add[5]), .Z(add[5]));
Q_MX02 U75 ( .S(hw_cs), .A0(sw_add[6]), .A1(hw_add[6]), .Z(add[6]));
Q_MX02 U76 ( .S(hw_cs), .A0(sw_add[7]), .A1(hw_add[7]), .Z(add[7]));
Q_MX02 U77 ( .S(hw_cs), .A0(sw_add[8]), .A1(hw_add[8]), .Z(add[8]));
Q_MX02 U78 ( .S(hw_cs), .A0(sw_add[9]), .A1(hw_add[9]), .Z(add[9]));
Q_MX02 U79 ( .S(hw_cs), .A0(sw_add[10]), .A1(hw_add[10]), .Z(add[10]));
Q_MX02 U80 ( .S(hw_cs), .A0(sw_add[11]), .A1(hw_add[11]), .Z(add[11]));
Q_MX02 U81 ( .S(hw_cs), .A0(sw_add[12]), .A1(hw_add[12]), .Z(add[12]));
Q_MX02 U82 ( .S(hw_cs), .A0(sw_add[13]), .A1(hw_add[13]), .Z(add[13]));
Q_OR02 U83 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[0]), .Z(bwe[0]));
Q_OR02 U84 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[1]), .Z(bwe[1]));
Q_OR02 U85 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[2]), .Z(bwe[2]));
Q_OR02 U86 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[3]), .Z(bwe[3]));
Q_OR02 U87 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[4]), .Z(bwe[4]));
Q_OR02 U88 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[5]), .Z(bwe[5]));
Q_OR02 U89 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[6]), .Z(bwe[6]));
Q_OR02 U90 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[7]), .Z(bwe[7]));
Q_OR02 U91 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[8]), .Z(bwe[8]));
Q_OR02 U92 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[9]), .Z(bwe[9]));
Q_OR02 U93 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[10]), .Z(bwe[10]));
Q_OR02 U94 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[11]), .Z(bwe[11]));
Q_OR02 U95 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[12]), .Z(bwe[12]));
Q_OR02 U96 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[13]), .Z(bwe[13]));
Q_OR02 U97 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[14]), .Z(bwe[14]));
Q_OR02 U98 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[15]), .Z(bwe[15]));
Q_OR02 U99 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[16]), .Z(bwe[16]));
Q_OR02 U100 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[17]), .Z(bwe[17]));
Q_OR02 U101 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[18]), .Z(bwe[18]));
Q_OR02 U102 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[19]), .Z(bwe[19]));
Q_OR02 U103 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[20]), .Z(bwe[20]));
Q_OR02 U104 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[21]), .Z(bwe[21]));
Q_OR02 U105 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[22]), .Z(bwe[22]));
Q_OR02 U106 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[23]), .Z(bwe[23]));
Q_OR02 U107 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[24]), .Z(bwe[24]));
Q_OR02 U108 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[25]), .Z(bwe[25]));
Q_OR02 U109 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[26]), .Z(bwe[26]));
Q_OR02 U110 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[27]), .Z(bwe[27]));
Q_OR02 U111 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[28]), .Z(bwe[28]));
Q_OR02 U112 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[29]), .Z(bwe[29]));
Q_OR02 U113 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[30]), .Z(bwe[30]));
Q_OR02 U114 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[31]), .Z(bwe[31]));
Q_OR02 U115 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[32]), .Z(bwe[32]));
Q_OR02 U116 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[33]), .Z(bwe[33]));
Q_OR02 U117 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[34]), .Z(bwe[34]));
Q_OR02 U118 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[35]), .Z(bwe[35]));
Q_OR02 U119 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[36]), .Z(bwe[36]));
Q_OR02 U120 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[37]), .Z(bwe[37]));
Q_MX02 U121 ( .S(hw_cs), .A0(sw_wdat[0]), .A1(hw_din[0]), .Z(din[0]));
Q_MX02 U122 ( .S(hw_cs), .A0(sw_wdat[1]), .A1(hw_din[1]), .Z(din[1]));
Q_MX02 U123 ( .S(hw_cs), .A0(sw_wdat[2]), .A1(hw_din[2]), .Z(din[2]));
Q_MX02 U124 ( .S(hw_cs), .A0(sw_wdat[3]), .A1(hw_din[3]), .Z(din[3]));
Q_MX02 U125 ( .S(hw_cs), .A0(sw_wdat[4]), .A1(hw_din[4]), .Z(din[4]));
Q_MX02 U126 ( .S(hw_cs), .A0(sw_wdat[5]), .A1(hw_din[5]), .Z(din[5]));
Q_MX02 U127 ( .S(hw_cs), .A0(sw_wdat[6]), .A1(hw_din[6]), .Z(din[6]));
Q_MX02 U128 ( .S(hw_cs), .A0(sw_wdat[7]), .A1(hw_din[7]), .Z(din[7]));
Q_MX02 U129 ( .S(hw_cs), .A0(sw_wdat[8]), .A1(hw_din[8]), .Z(din[8]));
Q_MX02 U130 ( .S(hw_cs), .A0(sw_wdat[9]), .A1(hw_din[9]), .Z(din[9]));
Q_MX02 U131 ( .S(hw_cs), .A0(sw_wdat[10]), .A1(hw_din[10]), .Z(din[10]));
Q_MX02 U132 ( .S(hw_cs), .A0(sw_wdat[11]), .A1(hw_din[11]), .Z(din[11]));
Q_MX02 U133 ( .S(hw_cs), .A0(sw_wdat[12]), .A1(hw_din[12]), .Z(din[12]));
Q_MX02 U134 ( .S(hw_cs), .A0(sw_wdat[13]), .A1(hw_din[13]), .Z(din[13]));
Q_MX02 U135 ( .S(hw_cs), .A0(sw_wdat[14]), .A1(hw_din[14]), .Z(din[14]));
Q_MX02 U136 ( .S(hw_cs), .A0(sw_wdat[15]), .A1(hw_din[15]), .Z(din[15]));
Q_MX02 U137 ( .S(hw_cs), .A0(sw_wdat[16]), .A1(hw_din[16]), .Z(din[16]));
Q_MX02 U138 ( .S(hw_cs), .A0(sw_wdat[17]), .A1(hw_din[17]), .Z(din[17]));
Q_MX02 U139 ( .S(hw_cs), .A0(sw_wdat[18]), .A1(hw_din[18]), .Z(din[18]));
Q_MX02 U140 ( .S(hw_cs), .A0(sw_wdat[19]), .A1(hw_din[19]), .Z(din[19]));
Q_MX02 U141 ( .S(hw_cs), .A0(sw_wdat[20]), .A1(hw_din[20]), .Z(din[20]));
Q_MX02 U142 ( .S(hw_cs), .A0(sw_wdat[21]), .A1(hw_din[21]), .Z(din[21]));
Q_MX02 U143 ( .S(hw_cs), .A0(sw_wdat[22]), .A1(hw_din[22]), .Z(din[22]));
Q_MX02 U144 ( .S(hw_cs), .A0(sw_wdat[23]), .A1(hw_din[23]), .Z(din[23]));
Q_MX02 U145 ( .S(hw_cs), .A0(sw_wdat[24]), .A1(hw_din[24]), .Z(din[24]));
Q_MX02 U146 ( .S(hw_cs), .A0(sw_wdat[25]), .A1(hw_din[25]), .Z(din[25]));
Q_MX02 U147 ( .S(hw_cs), .A0(sw_wdat[26]), .A1(hw_din[26]), .Z(din[26]));
Q_MX02 U148 ( .S(hw_cs), .A0(sw_wdat[27]), .A1(hw_din[27]), .Z(din[27]));
Q_MX02 U149 ( .S(hw_cs), .A0(sw_wdat[28]), .A1(hw_din[28]), .Z(din[28]));
Q_MX02 U150 ( .S(hw_cs), .A0(sw_wdat[29]), .A1(hw_din[29]), .Z(din[29]));
Q_MX02 U151 ( .S(hw_cs), .A0(sw_wdat[30]), .A1(hw_din[30]), .Z(din[30]));
Q_MX02 U152 ( .S(hw_cs), .A0(sw_wdat[31]), .A1(hw_din[31]), .Z(din[31]));
Q_MX02 U153 ( .S(hw_cs), .A0(sw_wdat[32]), .A1(hw_din[32]), .Z(din[32]));
Q_MX02 U154 ( .S(hw_cs), .A0(sw_wdat[33]), .A1(hw_din[33]), .Z(din[33]));
Q_MX02 U155 ( .S(hw_cs), .A0(sw_wdat[34]), .A1(hw_din[34]), .Z(din[34]));
Q_MX02 U156 ( .S(hw_cs), .A0(sw_wdat[35]), .A1(hw_din[35]), .Z(din[35]));
Q_MX02 U157 ( .S(hw_cs), .A0(sw_wdat[36]), .A1(hw_din[36]), .Z(din[36]));
Q_MX02 U158 ( .S(hw_cs), .A0(sw_wdat[37]), .A1(hw_din[37]), .Z(din[37]));
Q_MX02 U159 ( .S(hw_cs), .A0(sw_we), .A1(hw_we), .Z(we));
Q_MX02 U160 ( .S(enable), .A0(rd_dat[0]), .A1(dout[0]), .Z(hw_dout[0]));
Q_MX02 U161 ( .S(enable), .A0(rd_dat[1]), .A1(dout[1]), .Z(hw_dout[1]));
Q_MX02 U162 ( .S(enable), .A0(rd_dat[2]), .A1(dout[2]), .Z(hw_dout[2]));
Q_MX02 U163 ( .S(enable), .A0(rd_dat[3]), .A1(dout[3]), .Z(hw_dout[3]));
Q_MX02 U164 ( .S(enable), .A0(rd_dat[4]), .A1(dout[4]), .Z(hw_dout[4]));
Q_MX02 U165 ( .S(enable), .A0(rd_dat[5]), .A1(dout[5]), .Z(hw_dout[5]));
Q_MX02 U166 ( .S(enable), .A0(rd_dat[6]), .A1(dout[6]), .Z(hw_dout[6]));
Q_MX02 U167 ( .S(enable), .A0(rd_dat[7]), .A1(dout[7]), .Z(hw_dout[7]));
Q_MX02 U168 ( .S(enable), .A0(rd_dat[8]), .A1(dout[8]), .Z(hw_dout[8]));
Q_MX02 U169 ( .S(enable), .A0(rd_dat[9]), .A1(dout[9]), .Z(hw_dout[9]));
Q_MX02 U170 ( .S(enable), .A0(rd_dat[10]), .A1(dout[10]), .Z(hw_dout[10]));
Q_MX02 U171 ( .S(enable), .A0(rd_dat[11]), .A1(dout[11]), .Z(hw_dout[11]));
Q_MX02 U172 ( .S(enable), .A0(rd_dat[12]), .A1(dout[12]), .Z(hw_dout[12]));
Q_MX02 U173 ( .S(enable), .A0(rd_dat[13]), .A1(dout[13]), .Z(hw_dout[13]));
Q_MX02 U174 ( .S(enable), .A0(rd_dat[14]), .A1(dout[14]), .Z(hw_dout[14]));
Q_MX02 U175 ( .S(enable), .A0(rd_dat[15]), .A1(dout[15]), .Z(hw_dout[15]));
Q_MX02 U176 ( .S(enable), .A0(rd_dat[16]), .A1(dout[16]), .Z(hw_dout[16]));
Q_MX02 U177 ( .S(enable), .A0(rd_dat[17]), .A1(dout[17]), .Z(hw_dout[17]));
Q_MX02 U178 ( .S(enable), .A0(rd_dat[18]), .A1(dout[18]), .Z(hw_dout[18]));
Q_MX02 U179 ( .S(enable), .A0(rd_dat[19]), .A1(dout[19]), .Z(hw_dout[19]));
Q_MX02 U180 ( .S(enable), .A0(rd_dat[20]), .A1(dout[20]), .Z(hw_dout[20]));
Q_MX02 U181 ( .S(enable), .A0(rd_dat[21]), .A1(dout[21]), .Z(hw_dout[21]));
Q_MX02 U182 ( .S(enable), .A0(rd_dat[22]), .A1(dout[22]), .Z(hw_dout[22]));
Q_MX02 U183 ( .S(enable), .A0(rd_dat[23]), .A1(dout[23]), .Z(hw_dout[23]));
Q_MX02 U184 ( .S(enable), .A0(rd_dat[24]), .A1(dout[24]), .Z(hw_dout[24]));
Q_MX02 U185 ( .S(enable), .A0(rd_dat[25]), .A1(dout[25]), .Z(hw_dout[25]));
Q_MX02 U186 ( .S(enable), .A0(rd_dat[26]), .A1(dout[26]), .Z(hw_dout[26]));
Q_MX02 U187 ( .S(enable), .A0(rd_dat[27]), .A1(dout[27]), .Z(hw_dout[27]));
Q_MX02 U188 ( .S(enable), .A0(rd_dat[28]), .A1(dout[28]), .Z(hw_dout[28]));
Q_MX02 U189 ( .S(enable), .A0(rd_dat[29]), .A1(dout[29]), .Z(hw_dout[29]));
Q_MX02 U190 ( .S(enable), .A0(rd_dat[30]), .A1(dout[30]), .Z(hw_dout[30]));
Q_MX02 U191 ( .S(enable), .A0(rd_dat[31]), .A1(dout[31]), .Z(hw_dout[31]));
Q_MX02 U192 ( .S(enable), .A0(rd_dat[32]), .A1(dout[32]), .Z(hw_dout[32]));
Q_MX02 U193 ( .S(enable), .A0(rd_dat[33]), .A1(dout[33]), .Z(hw_dout[33]));
Q_MX02 U194 ( .S(enable), .A0(rd_dat[34]), .A1(dout[34]), .Z(hw_dout[34]));
Q_MX02 U195 ( .S(enable), .A0(rd_dat[35]), .A1(dout[35]), .Z(hw_dout[35]));
Q_MX02 U196 ( .S(enable), .A0(rd_dat[36]), .A1(dout[36]), .Z(hw_dout[36]));
Q_MX02 U197 ( .S(enable), .A0(rd_dat[37]), .A1(dout[37]), .Z(hw_dout[37]));
Q_FDP1 \r_rsp_REG[0] ( .CK(clk), .R(rst_n), .D(n3), .Q(r_rsp[0]), .QN( ));
Q_FDP1 \r_rsp_REG[1] ( .CK(clk), .R(rst_n), .D(r_rsp[0]), .Q(r_rsp[1]), .QN( ));
Q_AN03 U200 ( .A0(_zy_simnet_tvar_38), .A1(n4), .A2(sw_cs), .Z(n3));
Q_INV U201 ( .A(sw_we), .Z(n4));
endmodule
