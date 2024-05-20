
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_ram_1rw_indirect_access_xcm124 ( clk, rst_n, reg_addr, cmnd_op, 
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
input [14:0] cmnd_addr;
output [2:0] stat_code;
output [4:0] stat_datawords;
output [14:0] stat_addr;
output [15:0] capability_lst;
output [3:0] capability_type;
input wr_stb;
input [63:0] wr_dat;
output [63:0] rd_dat;
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
input [14:0] hw_add;
input hw_we;
input [63:0] hw_bwe;
input hw_cs;
input [63:0] hw_din;
output [63:0] hw_dout;
output hw_yield;
wire [0:2] _zy_simnet_stat_code_0_w$;
wire [0:4] _zy_simnet_stat_datawords_1_w$;
wire [0:14] _zy_simnet_stat_addr_2_w$;
wire [0:15] _zy_simnet_capability_lst_3_w$;
wire [0:3] _zy_simnet_capability_type_4_w$;
wire [0:63] _zy_simnet_rd_dat_5_w$;
wire _zy_simnet_bimc_odat_6_w$;
wire _zy_simnet_bimc_osync_7_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_8_w$;
wire [0:63] _zy_simnet_hw_dout_9_w$;
wire _zy_simnet_hw_yield_10_w$;
wire _zy_simnet_bimc_odat_11_w$;
wire _zy_simnet_bimc_osync_12_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire [0:63] _zy_simnet_bwe_14_w$;
wire [0:63] _zy_simnet_din_15_w$;
wire [0:14] _zy_simnet_add_16_w$;
wire _zy_simnet_cs_17_w$;
wire _zy_simnet_we_18_w$;
wire [0:63] _zy_simnet_dout_19_w$;
wire _zy_simnet_cio_20;
wire [0:2] _zy_simnet_stat_code_21_w$;
wire [0:4] _zy_simnet_stat_datawords_22_w$;
wire [0:14] _zy_simnet_stat_addr_23_w$;
wire _zy_simnet_dio_24;
wire [0:15] _zy_simnet_capability_lst_25_w$;
wire [0:3] _zy_simnet_capability_type_26_w$;
wire _zy_simnet_enable_27_w$;
wire [0:14] _zy_simnet_addr_limit_28_w$;
wire [0:63] _zy_simnet_rd_dat_29_w$;
wire _zy_simnet_sw_cs_30_w$;
wire _zy_simnet_dio_31;
wire _zy_simnet_sw_we_32_w$;
wire [0:14] _zy_simnet_sw_add_33_w$;
wire [0:63] _zy_simnet_sw_wdat_34_w$;
wire [0:63] _zy_simnet_dout_35_w$;
wire _zy_simnet_cio_36;
wire [0:13] _zy_simnet_cio_37;
wire _zy_simnet_tvar_38;
wire _zy_simnet_r_rsp_39_w$;
wire _zy_simnet_yield_40_w$;
wire _zy_simnet_dio_41;
wire enable;
wire yield;
wire [14:0] sw_add;
wire sw_cs;
wire [63:0] sw_wdat;
wire sw_we;
wire [14:0] add;
wire [63:0] bwe;
wire cs;
wire [63:0] din;
wire we;
wire [63:0] dout;
wire [1:0] r_rsp;
wire [14:0] addr_limit;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_37[13]));
Q_BUF U1 ( .A(n1), .Z(_zy_simnet_cio_37[12]));
Q_BUF U2 ( .A(n1), .Z(_zy_simnet_cio_37[11]));
Q_BUF U3 ( .A(n1), .Z(_zy_simnet_cio_37[10]));
Q_BUF U4 ( .A(n1), .Z(_zy_simnet_cio_37[9]));
Q_BUF U5 ( .A(n1), .Z(_zy_simnet_cio_37[8]));
Q_BUF U6 ( .A(n1), .Z(_zy_simnet_cio_37[7]));
Q_BUF U7 ( .A(n1), .Z(_zy_simnet_cio_37[6]));
Q_BUF U8 ( .A(n1), .Z(_zy_simnet_cio_37[5]));
Q_BUF U9 ( .A(n1), .Z(_zy_simnet_cio_37[4]));
Q_BUF U10 ( .A(n1), .Z(_zy_simnet_cio_37[3]));
Q_BUF U11 ( .A(n1), .Z(_zy_simnet_cio_37[2]));
Q_BUF U12 ( .A(n1), .Z(_zy_simnet_cio_37[1]));
Q_BUF U13 ( .A(n1), .Z(_zy_simnet_cio_37[0]));
Q_BUF U14 ( .A(n1), .Z(_zy_simnet_cio_36));
Q_BUF U15 ( .A(n1), .Z(_zy_simnet_cio_20));
Q_BUF U16 ( .A(n2), .Z(addr_limit[0]));
Q_BUF U17 ( .A(n2), .Z(addr_limit[1]));
Q_BUF U18 ( .A(n2), .Z(addr_limit[2]));
Q_BUF U19 ( .A(n2), .Z(addr_limit[3]));
Q_BUF U20 ( .A(n2), .Z(addr_limit[4]));
Q_BUF U21 ( .A(n2), .Z(addr_limit[5]));
Q_BUF U22 ( .A(n2), .Z(addr_limit[6]));
Q_BUF U23 ( .A(n2), .Z(addr_limit[7]));
Q_BUF U24 ( .A(n2), .Z(addr_limit[8]));
Q_BUF U25 ( .A(n2), .Z(addr_limit[9]));
Q_BUF U26 ( .A(n2), .Z(addr_limit[10]));
Q_BUF U27 ( .A(n2), .Z(addr_limit[11]));
Q_BUF U28 ( .A(n2), .Z(addr_limit[12]));
Q_BUF U29 ( .A(n2), .Z(addr_limit[13]));
Q_BUF U30 ( .A(n2), .Z(addr_limit[14]));
nx_indirect_access_cntrl_v2_xcm126 u_cntrl ( clk, rst_n, wr_stb, 
	reg_addr[10:0], cmnd_op[3:0], cmnd_addr[14:0], _zy_simnet_cio_20, 
	_zy_simnet_stat_code_21_w$[0:2], _zy_simnet_stat_datawords_22_w$[0:4], 
	_zy_simnet_stat_addr_23_w$[0:14], _zy_simnet_dio_24, 
	_zy_simnet_capability_lst_25_w$[0:15], 
	_zy_simnet_capability_type_26_w$[0:3], _zy_simnet_enable_27_w$, 
	_zy_simnet_addr_limit_28_w$[0:14], wr_dat[63:0], 
	_zy_simnet_rd_dat_29_w$[0:63], _zy_simnet_sw_cs_30_w$, 
	_zy_simnet_dio_31, _zy_simnet_sw_we_32_w$, 
	_zy_simnet_sw_add_33_w$[0:14], _zy_simnet_sw_wdat_34_w$[0:63], 
	_zy_simnet_dout_35_w$[0:63], _zy_simnet_cio_36, _zy_simnet_cio_37[0:13], 
	_zy_simnet_tvar_38, _zy_simnet_r_rsp_39_w$, _zy_simnet_yield_40_w$, 
	_zy_simnet_dio_41);
nx_ram_1rw_xcm109 u_ram ( clk, rst_n, ovstb, lvm, mlvm, mrdten, bimc_rst_n, 
	bimc_isync, bimc_idat, _zy_simnet_bimc_odat_11_w$, 
	_zy_simnet_bimc_osync_12_w$, 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$, 
	_zy_simnet_bwe_14_w$[0:63], _zy_simnet_din_15_w$[0:63], 
	_zy_simnet_add_16_w$[0:14], _zy_simnet_cs_17_w$, _zy_simnet_we_18_w$, 
	_zy_simnet_dout_19_w$[0:63]);
ixc_assign _zz_strnp_35 ( yield, _zy_simnet_yield_40_w$);
ixc_assign _zz_strnp_34 ( _zy_simnet_r_rsp_39_w$, r_rsp[1]);
Q_INV U35 ( .A(hw_cs), .Z(_zy_simnet_tvar_38));
ixc_assign_64 _zz_strnp_33 ( _zy_simnet_dout_35_w$[0:63], dout[63:0]);
ixc_assign_64 _zz_strnp_32 ( sw_wdat[63:0], _zy_simnet_sw_wdat_34_w$[0:63]);
ixc_assign_15 _zz_strnp_31 ( sw_add[14:0], _zy_simnet_sw_add_33_w$[0:14]);
ixc_assign _zz_strnp_30 ( sw_we, _zy_simnet_sw_we_32_w$);
ixc_assign _zz_strnp_29 ( sw_cs, _zy_simnet_sw_cs_30_w$);
ixc_assign_64 _zz_strnp_28 ( rd_dat[63:0], _zy_simnet_rd_dat_29_w$[0:63]);
ixc_assign_15 _zz_strnp_27 ( _zy_simnet_addr_limit_28_w$[0:14], 
	addr_limit[14:0]);
ixc_assign _zz_strnp_26 ( enable, _zy_simnet_enable_27_w$);
ixc_assign_4 _zz_strnp_25 ( capability_type[3:0], 
	_zy_simnet_capability_type_26_w$[0:3]);
ixc_assign_16 _zz_strnp_24 ( capability_lst[15:0], 
	_zy_simnet_capability_lst_25_w$[0:15]);
ixc_assign_15 _zz_strnp_23 ( stat_addr[14:0], 
	_zy_simnet_stat_addr_23_w$[0:14]);
ixc_assign_5 _zz_strnp_22 ( stat_datawords[4:0], 
	_zy_simnet_stat_datawords_22_w$[0:4]);
ixc_assign_3 _zz_strnp_21 ( stat_code[2:0], _zy_simnet_stat_code_21_w$[0:2]);
ixc_assign_64 _zz_strnp_20 ( dout[63:0], _zy_simnet_dout_19_w$[0:63]);
ixc_assign _zz_strnp_19 ( _zy_simnet_we_18_w$, we);
ixc_assign _zz_strnp_18 ( _zy_simnet_cs_17_w$, cs);
ixc_assign_15 _zz_strnp_17 ( _zy_simnet_add_16_w$[0:14], add[14:0]);
ixc_assign_64 _zz_strnp_16 ( _zy_simnet_din_15_w$[0:63], din[63:0]);
ixc_assign_64 _zz_strnp_15 ( _zy_simnet_bwe_14_w$[0:63], bwe[63:0]);
ixc_assign _zz_strnp_14 ( ro_uncorrectable_ecc_error, 
	_zy_simnet_ro_uncorrectable_ecc_error_13_w$);
ixc_assign _zz_strnp_13 ( bimc_osync, _zy_simnet_bimc_osync_12_w$);
ixc_assign _zz_strnp_12 ( bimc_odat, _zy_simnet_bimc_odat_11_w$);
ixc_assign _zz_strnp_11 ( _zy_simnet_hw_yield_10_w$, hw_yield);
ixc_assign_64 _zz_strnp_10 ( _zy_simnet_hw_dout_9_w$[0:63], hw_dout[63:0]);
ixc_assign _zz_strnp_9 ( _zy_simnet_ro_uncorrectable_ecc_error_8_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_8 ( _zy_simnet_bimc_osync_7_w$, bimc_osync);
ixc_assign _zz_strnp_7 ( _zy_simnet_bimc_odat_6_w$, bimc_odat);
ixc_assign_64 _zz_strnp_6 ( _zy_simnet_rd_dat_5_w$[0:63], rd_dat[63:0]);
ixc_assign_4 _zz_strnp_5 ( _zy_simnet_capability_type_4_w$[0:3], 
	capability_type[3:0]);
ixc_assign_16 _zz_strnp_4 ( _zy_simnet_capability_lst_3_w$[0:15], 
	capability_lst[15:0]);
ixc_assign_15 _zz_strnp_3 ( _zy_simnet_stat_addr_2_w$[0:14], stat_addr[14:0]);
ixc_assign_5 _zz_strnp_2 ( _zy_simnet_stat_datawords_1_w$[0:4], 
	stat_datawords[4:0]);
ixc_assign_3 _zz_strnp_1 ( _zy_simnet_stat_code_0_w$[0:2], stat_code[2:0]);
ixc_assign _zz_strnp_0 ( hw_yield, yield);
Q_OR02 U70 ( .A0(hw_cs), .A1(sw_cs), .Z(cs));
Q_MX02 U71 ( .S(hw_cs), .A0(sw_add[0]), .A1(hw_add[0]), .Z(add[0]));
Q_MX02 U72 ( .S(hw_cs), .A0(sw_add[1]), .A1(hw_add[1]), .Z(add[1]));
Q_MX02 U73 ( .S(hw_cs), .A0(sw_add[2]), .A1(hw_add[2]), .Z(add[2]));
Q_MX02 U74 ( .S(hw_cs), .A0(sw_add[3]), .A1(hw_add[3]), .Z(add[3]));
Q_MX02 U75 ( .S(hw_cs), .A0(sw_add[4]), .A1(hw_add[4]), .Z(add[4]));
Q_MX02 U76 ( .S(hw_cs), .A0(sw_add[5]), .A1(hw_add[5]), .Z(add[5]));
Q_MX02 U77 ( .S(hw_cs), .A0(sw_add[6]), .A1(hw_add[6]), .Z(add[6]));
Q_MX02 U78 ( .S(hw_cs), .A0(sw_add[7]), .A1(hw_add[7]), .Z(add[7]));
Q_MX02 U79 ( .S(hw_cs), .A0(sw_add[8]), .A1(hw_add[8]), .Z(add[8]));
Q_MX02 U80 ( .S(hw_cs), .A0(sw_add[9]), .A1(hw_add[9]), .Z(add[9]));
Q_MX02 U81 ( .S(hw_cs), .A0(sw_add[10]), .A1(hw_add[10]), .Z(add[10]));
Q_MX02 U82 ( .S(hw_cs), .A0(sw_add[11]), .A1(hw_add[11]), .Z(add[11]));
Q_MX02 U83 ( .S(hw_cs), .A0(sw_add[12]), .A1(hw_add[12]), .Z(add[12]));
Q_MX02 U84 ( .S(hw_cs), .A0(sw_add[13]), .A1(hw_add[13]), .Z(add[13]));
Q_MX02 U85 ( .S(hw_cs), .A0(sw_add[14]), .A1(hw_add[14]), .Z(add[14]));
Q_OR02 U86 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[0]), .Z(bwe[0]));
Q_OR02 U87 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[1]), .Z(bwe[1]));
Q_OR02 U88 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[2]), .Z(bwe[2]));
Q_OR02 U89 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[3]), .Z(bwe[3]));
Q_OR02 U90 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[4]), .Z(bwe[4]));
Q_OR02 U91 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[5]), .Z(bwe[5]));
Q_OR02 U92 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[6]), .Z(bwe[6]));
Q_OR02 U93 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[7]), .Z(bwe[7]));
Q_OR02 U94 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[8]), .Z(bwe[8]));
Q_OR02 U95 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[9]), .Z(bwe[9]));
Q_OR02 U96 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[10]), .Z(bwe[10]));
Q_OR02 U97 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[11]), .Z(bwe[11]));
Q_OR02 U98 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[12]), .Z(bwe[12]));
Q_OR02 U99 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[13]), .Z(bwe[13]));
Q_OR02 U100 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[14]), .Z(bwe[14]));
Q_OR02 U101 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[15]), .Z(bwe[15]));
Q_OR02 U102 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[16]), .Z(bwe[16]));
Q_OR02 U103 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[17]), .Z(bwe[17]));
Q_OR02 U104 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[18]), .Z(bwe[18]));
Q_OR02 U105 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[19]), .Z(bwe[19]));
Q_OR02 U106 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[20]), .Z(bwe[20]));
Q_OR02 U107 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[21]), .Z(bwe[21]));
Q_OR02 U108 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[22]), .Z(bwe[22]));
Q_OR02 U109 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[23]), .Z(bwe[23]));
Q_OR02 U110 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[24]), .Z(bwe[24]));
Q_OR02 U111 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[25]), .Z(bwe[25]));
Q_OR02 U112 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[26]), .Z(bwe[26]));
Q_OR02 U113 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[27]), .Z(bwe[27]));
Q_OR02 U114 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[28]), .Z(bwe[28]));
Q_OR02 U115 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[29]), .Z(bwe[29]));
Q_OR02 U116 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[30]), .Z(bwe[30]));
Q_OR02 U117 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[31]), .Z(bwe[31]));
Q_OR02 U118 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[32]), .Z(bwe[32]));
Q_OR02 U119 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[33]), .Z(bwe[33]));
Q_OR02 U120 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[34]), .Z(bwe[34]));
Q_OR02 U121 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[35]), .Z(bwe[35]));
Q_OR02 U122 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[36]), .Z(bwe[36]));
Q_OR02 U123 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[37]), .Z(bwe[37]));
Q_OR02 U124 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[38]), .Z(bwe[38]));
Q_OR02 U125 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[39]), .Z(bwe[39]));
Q_OR02 U126 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[40]), .Z(bwe[40]));
Q_OR02 U127 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[41]), .Z(bwe[41]));
Q_OR02 U128 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[42]), .Z(bwe[42]));
Q_OR02 U129 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[43]), .Z(bwe[43]));
Q_OR02 U130 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[44]), .Z(bwe[44]));
Q_OR02 U131 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[45]), .Z(bwe[45]));
Q_OR02 U132 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[46]), .Z(bwe[46]));
Q_OR02 U133 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[47]), .Z(bwe[47]));
Q_OR02 U134 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[48]), .Z(bwe[48]));
Q_OR02 U135 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[49]), .Z(bwe[49]));
Q_OR02 U136 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[50]), .Z(bwe[50]));
Q_OR02 U137 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[51]), .Z(bwe[51]));
Q_OR02 U138 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[52]), .Z(bwe[52]));
Q_OR02 U139 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[53]), .Z(bwe[53]));
Q_OR02 U140 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[54]), .Z(bwe[54]));
Q_OR02 U141 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[55]), .Z(bwe[55]));
Q_OR02 U142 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[56]), .Z(bwe[56]));
Q_OR02 U143 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[57]), .Z(bwe[57]));
Q_OR02 U144 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[58]), .Z(bwe[58]));
Q_OR02 U145 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[59]), .Z(bwe[59]));
Q_OR02 U146 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[60]), .Z(bwe[60]));
Q_OR02 U147 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[61]), .Z(bwe[61]));
Q_OR02 U148 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[62]), .Z(bwe[62]));
Q_OR02 U149 ( .A0(_zy_simnet_tvar_38), .A1(hw_bwe[63]), .Z(bwe[63]));
Q_MX02 U150 ( .S(hw_cs), .A0(sw_wdat[0]), .A1(hw_din[0]), .Z(din[0]));
Q_MX02 U151 ( .S(hw_cs), .A0(sw_wdat[1]), .A1(hw_din[1]), .Z(din[1]));
Q_MX02 U152 ( .S(hw_cs), .A0(sw_wdat[2]), .A1(hw_din[2]), .Z(din[2]));
Q_MX02 U153 ( .S(hw_cs), .A0(sw_wdat[3]), .A1(hw_din[3]), .Z(din[3]));
Q_MX02 U154 ( .S(hw_cs), .A0(sw_wdat[4]), .A1(hw_din[4]), .Z(din[4]));
Q_MX02 U155 ( .S(hw_cs), .A0(sw_wdat[5]), .A1(hw_din[5]), .Z(din[5]));
Q_MX02 U156 ( .S(hw_cs), .A0(sw_wdat[6]), .A1(hw_din[6]), .Z(din[6]));
Q_MX02 U157 ( .S(hw_cs), .A0(sw_wdat[7]), .A1(hw_din[7]), .Z(din[7]));
Q_MX02 U158 ( .S(hw_cs), .A0(sw_wdat[8]), .A1(hw_din[8]), .Z(din[8]));
Q_MX02 U159 ( .S(hw_cs), .A0(sw_wdat[9]), .A1(hw_din[9]), .Z(din[9]));
Q_MX02 U160 ( .S(hw_cs), .A0(sw_wdat[10]), .A1(hw_din[10]), .Z(din[10]));
Q_MX02 U161 ( .S(hw_cs), .A0(sw_wdat[11]), .A1(hw_din[11]), .Z(din[11]));
Q_MX02 U162 ( .S(hw_cs), .A0(sw_wdat[12]), .A1(hw_din[12]), .Z(din[12]));
Q_MX02 U163 ( .S(hw_cs), .A0(sw_wdat[13]), .A1(hw_din[13]), .Z(din[13]));
Q_MX02 U164 ( .S(hw_cs), .A0(sw_wdat[14]), .A1(hw_din[14]), .Z(din[14]));
Q_MX02 U165 ( .S(hw_cs), .A0(sw_wdat[15]), .A1(hw_din[15]), .Z(din[15]));
Q_MX02 U166 ( .S(hw_cs), .A0(sw_wdat[16]), .A1(hw_din[16]), .Z(din[16]));
Q_MX02 U167 ( .S(hw_cs), .A0(sw_wdat[17]), .A1(hw_din[17]), .Z(din[17]));
Q_MX02 U168 ( .S(hw_cs), .A0(sw_wdat[18]), .A1(hw_din[18]), .Z(din[18]));
Q_MX02 U169 ( .S(hw_cs), .A0(sw_wdat[19]), .A1(hw_din[19]), .Z(din[19]));
Q_MX02 U170 ( .S(hw_cs), .A0(sw_wdat[20]), .A1(hw_din[20]), .Z(din[20]));
Q_MX02 U171 ( .S(hw_cs), .A0(sw_wdat[21]), .A1(hw_din[21]), .Z(din[21]));
Q_MX02 U172 ( .S(hw_cs), .A0(sw_wdat[22]), .A1(hw_din[22]), .Z(din[22]));
Q_MX02 U173 ( .S(hw_cs), .A0(sw_wdat[23]), .A1(hw_din[23]), .Z(din[23]));
Q_MX02 U174 ( .S(hw_cs), .A0(sw_wdat[24]), .A1(hw_din[24]), .Z(din[24]));
Q_MX02 U175 ( .S(hw_cs), .A0(sw_wdat[25]), .A1(hw_din[25]), .Z(din[25]));
Q_MX02 U176 ( .S(hw_cs), .A0(sw_wdat[26]), .A1(hw_din[26]), .Z(din[26]));
Q_MX02 U177 ( .S(hw_cs), .A0(sw_wdat[27]), .A1(hw_din[27]), .Z(din[27]));
Q_MX02 U178 ( .S(hw_cs), .A0(sw_wdat[28]), .A1(hw_din[28]), .Z(din[28]));
Q_MX02 U179 ( .S(hw_cs), .A0(sw_wdat[29]), .A1(hw_din[29]), .Z(din[29]));
Q_MX02 U180 ( .S(hw_cs), .A0(sw_wdat[30]), .A1(hw_din[30]), .Z(din[30]));
Q_MX02 U181 ( .S(hw_cs), .A0(sw_wdat[31]), .A1(hw_din[31]), .Z(din[31]));
Q_MX02 U182 ( .S(hw_cs), .A0(sw_wdat[32]), .A1(hw_din[32]), .Z(din[32]));
Q_MX02 U183 ( .S(hw_cs), .A0(sw_wdat[33]), .A1(hw_din[33]), .Z(din[33]));
Q_MX02 U184 ( .S(hw_cs), .A0(sw_wdat[34]), .A1(hw_din[34]), .Z(din[34]));
Q_MX02 U185 ( .S(hw_cs), .A0(sw_wdat[35]), .A1(hw_din[35]), .Z(din[35]));
Q_MX02 U186 ( .S(hw_cs), .A0(sw_wdat[36]), .A1(hw_din[36]), .Z(din[36]));
Q_MX02 U187 ( .S(hw_cs), .A0(sw_wdat[37]), .A1(hw_din[37]), .Z(din[37]));
Q_MX02 U188 ( .S(hw_cs), .A0(sw_wdat[38]), .A1(hw_din[38]), .Z(din[38]));
Q_MX02 U189 ( .S(hw_cs), .A0(sw_wdat[39]), .A1(hw_din[39]), .Z(din[39]));
Q_MX02 U190 ( .S(hw_cs), .A0(sw_wdat[40]), .A1(hw_din[40]), .Z(din[40]));
Q_MX02 U191 ( .S(hw_cs), .A0(sw_wdat[41]), .A1(hw_din[41]), .Z(din[41]));
Q_MX02 U192 ( .S(hw_cs), .A0(sw_wdat[42]), .A1(hw_din[42]), .Z(din[42]));
Q_MX02 U193 ( .S(hw_cs), .A0(sw_wdat[43]), .A1(hw_din[43]), .Z(din[43]));
Q_MX02 U194 ( .S(hw_cs), .A0(sw_wdat[44]), .A1(hw_din[44]), .Z(din[44]));
Q_MX02 U195 ( .S(hw_cs), .A0(sw_wdat[45]), .A1(hw_din[45]), .Z(din[45]));
Q_MX02 U196 ( .S(hw_cs), .A0(sw_wdat[46]), .A1(hw_din[46]), .Z(din[46]));
Q_MX02 U197 ( .S(hw_cs), .A0(sw_wdat[47]), .A1(hw_din[47]), .Z(din[47]));
Q_MX02 U198 ( .S(hw_cs), .A0(sw_wdat[48]), .A1(hw_din[48]), .Z(din[48]));
Q_MX02 U199 ( .S(hw_cs), .A0(sw_wdat[49]), .A1(hw_din[49]), .Z(din[49]));
Q_MX02 U200 ( .S(hw_cs), .A0(sw_wdat[50]), .A1(hw_din[50]), .Z(din[50]));
Q_MX02 U201 ( .S(hw_cs), .A0(sw_wdat[51]), .A1(hw_din[51]), .Z(din[51]));
Q_MX02 U202 ( .S(hw_cs), .A0(sw_wdat[52]), .A1(hw_din[52]), .Z(din[52]));
Q_MX02 U203 ( .S(hw_cs), .A0(sw_wdat[53]), .A1(hw_din[53]), .Z(din[53]));
Q_MX02 U204 ( .S(hw_cs), .A0(sw_wdat[54]), .A1(hw_din[54]), .Z(din[54]));
Q_MX02 U205 ( .S(hw_cs), .A0(sw_wdat[55]), .A1(hw_din[55]), .Z(din[55]));
Q_MX02 U206 ( .S(hw_cs), .A0(sw_wdat[56]), .A1(hw_din[56]), .Z(din[56]));
Q_MX02 U207 ( .S(hw_cs), .A0(sw_wdat[57]), .A1(hw_din[57]), .Z(din[57]));
Q_MX02 U208 ( .S(hw_cs), .A0(sw_wdat[58]), .A1(hw_din[58]), .Z(din[58]));
Q_MX02 U209 ( .S(hw_cs), .A0(sw_wdat[59]), .A1(hw_din[59]), .Z(din[59]));
Q_MX02 U210 ( .S(hw_cs), .A0(sw_wdat[60]), .A1(hw_din[60]), .Z(din[60]));
Q_MX02 U211 ( .S(hw_cs), .A0(sw_wdat[61]), .A1(hw_din[61]), .Z(din[61]));
Q_MX02 U212 ( .S(hw_cs), .A0(sw_wdat[62]), .A1(hw_din[62]), .Z(din[62]));
Q_MX02 U213 ( .S(hw_cs), .A0(sw_wdat[63]), .A1(hw_din[63]), .Z(din[63]));
Q_MX02 U214 ( .S(hw_cs), .A0(sw_we), .A1(hw_we), .Z(we));
Q_MX02 U215 ( .S(enable), .A0(rd_dat[0]), .A1(dout[0]), .Z(hw_dout[0]));
Q_MX02 U216 ( .S(enable), .A0(rd_dat[1]), .A1(dout[1]), .Z(hw_dout[1]));
Q_MX02 U217 ( .S(enable), .A0(rd_dat[2]), .A1(dout[2]), .Z(hw_dout[2]));
Q_MX02 U218 ( .S(enable), .A0(rd_dat[3]), .A1(dout[3]), .Z(hw_dout[3]));
Q_MX02 U219 ( .S(enable), .A0(rd_dat[4]), .A1(dout[4]), .Z(hw_dout[4]));
Q_MX02 U220 ( .S(enable), .A0(rd_dat[5]), .A1(dout[5]), .Z(hw_dout[5]));
Q_MX02 U221 ( .S(enable), .A0(rd_dat[6]), .A1(dout[6]), .Z(hw_dout[6]));
Q_MX02 U222 ( .S(enable), .A0(rd_dat[7]), .A1(dout[7]), .Z(hw_dout[7]));
Q_MX02 U223 ( .S(enable), .A0(rd_dat[8]), .A1(dout[8]), .Z(hw_dout[8]));
Q_MX02 U224 ( .S(enable), .A0(rd_dat[9]), .A1(dout[9]), .Z(hw_dout[9]));
Q_MX02 U225 ( .S(enable), .A0(rd_dat[10]), .A1(dout[10]), .Z(hw_dout[10]));
Q_MX02 U226 ( .S(enable), .A0(rd_dat[11]), .A1(dout[11]), .Z(hw_dout[11]));
Q_MX02 U227 ( .S(enable), .A0(rd_dat[12]), .A1(dout[12]), .Z(hw_dout[12]));
Q_MX02 U228 ( .S(enable), .A0(rd_dat[13]), .A1(dout[13]), .Z(hw_dout[13]));
Q_MX02 U229 ( .S(enable), .A0(rd_dat[14]), .A1(dout[14]), .Z(hw_dout[14]));
Q_MX02 U230 ( .S(enable), .A0(rd_dat[15]), .A1(dout[15]), .Z(hw_dout[15]));
Q_MX02 U231 ( .S(enable), .A0(rd_dat[16]), .A1(dout[16]), .Z(hw_dout[16]));
Q_MX02 U232 ( .S(enable), .A0(rd_dat[17]), .A1(dout[17]), .Z(hw_dout[17]));
Q_MX02 U233 ( .S(enable), .A0(rd_dat[18]), .A1(dout[18]), .Z(hw_dout[18]));
Q_MX02 U234 ( .S(enable), .A0(rd_dat[19]), .A1(dout[19]), .Z(hw_dout[19]));
Q_MX02 U235 ( .S(enable), .A0(rd_dat[20]), .A1(dout[20]), .Z(hw_dout[20]));
Q_MX02 U236 ( .S(enable), .A0(rd_dat[21]), .A1(dout[21]), .Z(hw_dout[21]));
Q_MX02 U237 ( .S(enable), .A0(rd_dat[22]), .A1(dout[22]), .Z(hw_dout[22]));
Q_MX02 U238 ( .S(enable), .A0(rd_dat[23]), .A1(dout[23]), .Z(hw_dout[23]));
Q_MX02 U239 ( .S(enable), .A0(rd_dat[24]), .A1(dout[24]), .Z(hw_dout[24]));
Q_MX02 U240 ( .S(enable), .A0(rd_dat[25]), .A1(dout[25]), .Z(hw_dout[25]));
Q_MX02 U241 ( .S(enable), .A0(rd_dat[26]), .A1(dout[26]), .Z(hw_dout[26]));
Q_MX02 U242 ( .S(enable), .A0(rd_dat[27]), .A1(dout[27]), .Z(hw_dout[27]));
Q_MX02 U243 ( .S(enable), .A0(rd_dat[28]), .A1(dout[28]), .Z(hw_dout[28]));
Q_MX02 U244 ( .S(enable), .A0(rd_dat[29]), .A1(dout[29]), .Z(hw_dout[29]));
Q_MX02 U245 ( .S(enable), .A0(rd_dat[30]), .A1(dout[30]), .Z(hw_dout[30]));
Q_MX02 U246 ( .S(enable), .A0(rd_dat[31]), .A1(dout[31]), .Z(hw_dout[31]));
Q_MX02 U247 ( .S(enable), .A0(rd_dat[32]), .A1(dout[32]), .Z(hw_dout[32]));
Q_MX02 U248 ( .S(enable), .A0(rd_dat[33]), .A1(dout[33]), .Z(hw_dout[33]));
Q_MX02 U249 ( .S(enable), .A0(rd_dat[34]), .A1(dout[34]), .Z(hw_dout[34]));
Q_MX02 U250 ( .S(enable), .A0(rd_dat[35]), .A1(dout[35]), .Z(hw_dout[35]));
Q_MX02 U251 ( .S(enable), .A0(rd_dat[36]), .A1(dout[36]), .Z(hw_dout[36]));
Q_MX02 U252 ( .S(enable), .A0(rd_dat[37]), .A1(dout[37]), .Z(hw_dout[37]));
Q_MX02 U253 ( .S(enable), .A0(rd_dat[38]), .A1(dout[38]), .Z(hw_dout[38]));
Q_MX02 U254 ( .S(enable), .A0(rd_dat[39]), .A1(dout[39]), .Z(hw_dout[39]));
Q_MX02 U255 ( .S(enable), .A0(rd_dat[40]), .A1(dout[40]), .Z(hw_dout[40]));
Q_MX02 U256 ( .S(enable), .A0(rd_dat[41]), .A1(dout[41]), .Z(hw_dout[41]));
Q_MX02 U257 ( .S(enable), .A0(rd_dat[42]), .A1(dout[42]), .Z(hw_dout[42]));
Q_MX02 U258 ( .S(enable), .A0(rd_dat[43]), .A1(dout[43]), .Z(hw_dout[43]));
Q_MX02 U259 ( .S(enable), .A0(rd_dat[44]), .A1(dout[44]), .Z(hw_dout[44]));
Q_MX02 U260 ( .S(enable), .A0(rd_dat[45]), .A1(dout[45]), .Z(hw_dout[45]));
Q_MX02 U261 ( .S(enable), .A0(rd_dat[46]), .A1(dout[46]), .Z(hw_dout[46]));
Q_MX02 U262 ( .S(enable), .A0(rd_dat[47]), .A1(dout[47]), .Z(hw_dout[47]));
Q_MX02 U263 ( .S(enable), .A0(rd_dat[48]), .A1(dout[48]), .Z(hw_dout[48]));
Q_MX02 U264 ( .S(enable), .A0(rd_dat[49]), .A1(dout[49]), .Z(hw_dout[49]));
Q_MX02 U265 ( .S(enable), .A0(rd_dat[50]), .A1(dout[50]), .Z(hw_dout[50]));
Q_MX02 U266 ( .S(enable), .A0(rd_dat[51]), .A1(dout[51]), .Z(hw_dout[51]));
Q_MX02 U267 ( .S(enable), .A0(rd_dat[52]), .A1(dout[52]), .Z(hw_dout[52]));
Q_MX02 U268 ( .S(enable), .A0(rd_dat[53]), .A1(dout[53]), .Z(hw_dout[53]));
Q_MX02 U269 ( .S(enable), .A0(rd_dat[54]), .A1(dout[54]), .Z(hw_dout[54]));
Q_MX02 U270 ( .S(enable), .A0(rd_dat[55]), .A1(dout[55]), .Z(hw_dout[55]));
Q_MX02 U271 ( .S(enable), .A0(rd_dat[56]), .A1(dout[56]), .Z(hw_dout[56]));
Q_MX02 U272 ( .S(enable), .A0(rd_dat[57]), .A1(dout[57]), .Z(hw_dout[57]));
Q_MX02 U273 ( .S(enable), .A0(rd_dat[58]), .A1(dout[58]), .Z(hw_dout[58]));
Q_MX02 U274 ( .S(enable), .A0(rd_dat[59]), .A1(dout[59]), .Z(hw_dout[59]));
Q_MX02 U275 ( .S(enable), .A0(rd_dat[60]), .A1(dout[60]), .Z(hw_dout[60]));
Q_MX02 U276 ( .S(enable), .A0(rd_dat[61]), .A1(dout[61]), .Z(hw_dout[61]));
Q_MX02 U277 ( .S(enable), .A0(rd_dat[62]), .A1(dout[62]), .Z(hw_dout[62]));
Q_MX02 U278 ( .S(enable), .A0(rd_dat[63]), .A1(dout[63]), .Z(hw_dout[63]));
Q_FDP1 \r_rsp_REG[0] ( .CK(clk), .R(rst_n), .D(n3), .Q(r_rsp[0]), .QN( ));
Q_FDP1 \r_rsp_REG[1] ( .CK(clk), .R(rst_n), .D(r_rsp[0]), .Q(r_rsp[1]), .QN( ));
Q_AN03 U281 ( .A0(_zy_simnet_tvar_38), .A1(n4), .A2(sw_cs), .Z(n3));
Q_INV U282 ( .A(sw_we), .Z(n4));
endmodule
