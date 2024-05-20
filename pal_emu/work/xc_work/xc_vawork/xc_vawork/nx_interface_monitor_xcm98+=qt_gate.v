
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_interface_monitor_xcm98 ( stat_code, stat_datawords, stat_addr, 
	capability_lst, capability_type, rd_dat, bimc_odat, bimc_osync, 
	ro_uncorrectable_ecc_error, im_rdy, .im_available( {
	\im_available.bank_hi , \im_available.bank_lo } ), .im_status( {
	\im_status.available.bank_hi , \im_status.available.bank_lo , 
	\im_status.overflow , \im_status.wr_pointer [8], 
	\im_status.wr_pointer [7], \im_status.wr_pointer [6], 
	\im_status.wr_pointer [5], \im_status.wr_pointer [4], 
	\im_status.wr_pointer [3], \im_status.wr_pointer [2], 
	\im_status.wr_pointer [1], \im_status.wr_pointer [0]} ), clk, rst_n, 
	reg_addr, cmnd_op, cmnd_addr, wr_stb, wr_dat, ovstb, lvm, mlvm, 
	mrdten, bimc_rst_n, bimc_isync, bimc_idat, .im_din( {
	\im_din.data.data [63], \im_din.data.data [62], 
	\im_din.data.data [61], \im_din.data.data [60], 
	\im_din.data.data [59], \im_din.data.data [58], 
	\im_din.data.data [57], \im_din.data.data [56], 
	\im_din.data.data [55], \im_din.data.data [54], 
	\im_din.data.data [53], \im_din.data.data [52], 
	\im_din.data.data [51], \im_din.data.data [50], 
	\im_din.data.data [49], \im_din.data.data [48], 
	\im_din.data.data [47], \im_din.data.data [46], 
	\im_din.data.data [45], \im_din.data.data [44], 
	\im_din.data.data [43], \im_din.data.data [42], 
	\im_din.data.data [41], \im_din.data.data [40], 
	\im_din.data.data [39], \im_din.data.data [38], 
	\im_din.data.data [37], \im_din.data.data [36], 
	\im_din.data.data [35], \im_din.data.data [34], 
	\im_din.data.data [33], \im_din.data.data [32], 
	\im_din.data.data [31], \im_din.data.data [30], 
	\im_din.data.data [29], \im_din.data.data [28], 
	\im_din.data.data [27], \im_din.data.data [26], 
	\im_din.data.data [25], \im_din.data.data [24], 
	\im_din.data.data [23], \im_din.data.data [22], 
	\im_din.data.data [21], \im_din.data.data [20], 
	\im_din.data.data [19], \im_din.data.data [18], 
	\im_din.data.data [17], \im_din.data.data [16], 
	\im_din.data.data [15], \im_din.data.data [14], 
	\im_din.data.data [13], \im_din.data.data [12], 
	\im_din.data.data [11], \im_din.data.data [10], 
	\im_din.data.data [9], \im_din.data.data [8], \im_din.data.data [7], 
	\im_din.data.data [6], \im_din.data.data [5], \im_din.data.data [4], 
	\im_din.data.data [3], \im_din.data.data [2], \im_din.data.data [1], 
	\im_din.data.data [0], \im_din.desc.eob , \im_din.desc.bytes_vld [7], 
	\im_din.desc.bytes_vld [6], \im_din.desc.bytes_vld [5], 
	\im_din.desc.bytes_vld [4], \im_din.desc.bytes_vld [3], 
	\im_din.desc.bytes_vld [2], \im_din.desc.bytes_vld [1], 
	\im_din.desc.bytes_vld [0], \im_din.desc.im_meta [22], 
	\im_din.desc.im_meta [21], \im_din.desc.im_meta [20], 
	\im_din.desc.im_meta [19], \im_din.desc.im_meta [18], 
	\im_din.desc.im_meta [17], \im_din.desc.im_meta [16], 
	\im_din.desc.im_meta [15], \im_din.desc.im_meta [14], 
	\im_din.desc.im_meta [13], \im_din.desc.im_meta [12], 
	\im_din.desc.im_meta [11], \im_din.desc.im_meta [10], 
	\im_din.desc.im_meta [9], \im_din.desc.im_meta [8], 
	\im_din.desc.im_meta [7], \im_din.desc.im_meta [6], 
	\im_din.desc.im_meta [5], \im_din.desc.im_meta [4], 
	\im_din.desc.im_meta [3], \im_din.desc.im_meta [2], 
	\im_din.desc.im_meta [1], \im_din.desc.im_meta [0]} ), im_vld, 
	.im_consumed( {\im_consumed.bank_hi , \im_consumed.bank_lo } ), 
	.im_config( {\im_config.mode [1], \im_config.mode [0], 
	\im_config.wr_credit_config [9], \im_config.wr_credit_config [8], 
	\im_config.wr_credit_config [7], \im_config.wr_credit_config [6], 
	\im_config.wr_credit_config [5], \im_config.wr_credit_config [4], 
	\im_config.wr_credit_config [3], \im_config.wr_credit_config [2], 
	\im_config.wr_credit_config [1], \im_config.wr_credit_config [0]} ));
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [2:0] stat_code;
output [4:0] stat_datawords;
output [8:0] stat_addr;
output [15:0] capability_lst;
output [3:0] capability_type;
output [95:0] rd_dat;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
output im_rdy;
output \im_available.bank_hi ;
output \im_available.bank_lo ;
wire [1:0] im_available;
output \im_status.available.bank_hi ;
output \im_status.available.bank_lo ;
output \im_status.overflow ;
output [8:0] \im_status.wr_pointer ;
wire [11:0] im_status;
input clk;
input rst_n;
input [10:0] reg_addr;
input [3:0] cmnd_op;
input [8:0] cmnd_addr;
input wr_stb;
input [95:0] wr_dat;
input ovstb;
input lvm;
input mlvm;
input mrdten;
input bimc_rst_n;
input bimc_isync;
input bimc_idat;
input [63:0] \im_din.data.data ;
input \im_din.desc.eob ;
input [7:0] \im_din.desc.bytes_vld ;
input [22:0] \im_din.desc.im_meta ;
wire [95:0] im_din;
input im_vld;
input \im_consumed.bank_hi ;
input \im_consumed.bank_lo ;
wire [1:0] im_consumed;
input [1:0] \im_config.mode ;
input [9:0] \im_config.wr_credit_config ;
wire [11:0] im_config;
wire [0:2] _zy_simnet_stat_code_0_w$;
wire [0:4] _zy_simnet_stat_datawords_1_w$;
wire [0:8] _zy_simnet_stat_addr_2_w$;
wire [0:15] _zy_simnet_capability_lst_3_w$;
wire [0:3] _zy_simnet_capability_type_4_w$;
wire [0:95] _zy_simnet_rd_dat_5_w$;
wire _zy_simnet_bimc_odat_6_w$;
wire _zy_simnet_bimc_osync_7_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_8_w$;
wire [0:1] _zy_simnet_im_available_9_w$;
wire [0:11] _zy_simnet_im_status_10_w$;
wire [0:95] _zy_simnet_im_din_dly_11_w$;
wire _zy_simnet_im_din_full_12_w$;
wire _zy_simnet_im_din_empty_13_w$;
wire _zy_simnet_im_vld_if_14_w$;
wire _zy_simnet_im_din_rd_15_w$;
wire [0:3] _zy_simnet_im_din_space_avail_16_w$;
wire [0:8] _zy_simnet_credit_available_17_w$;
wire [0:11] _zy_simnet_hw_status_18_w$;
wire _zy_simnet_sw_init_19_w$;
wire [0:8] _zy_simnet_credit_return_20_w$;
wire [0:8] _zy_simnet_credit_used_21_w$;
wire [0:11] _zy_simnet_sw_config_22_w$;
wire _zy_simnet_bimc_odat_23_w$;
wire _zy_simnet_bimc_osync_24_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_25_w$;
wire [0:95] _zy_simnet_ram_bwe_26_w$;
wire [0:95] _zy_simnet_ram_din_27_w$;
wire [0:8] _zy_simnet_add_28_w$;
wire _zy_simnet_cs_29_w$;
wire _zy_simnet_we_30_w$;
wire [0:95] _zy_simnet_ram_dout_31_w$;
wire _zy_simnet_cio_32;
wire [0:2] _zy_simnet_stat_code_33_w$;
wire [0:4] _zy_simnet_stat_datawords_34_w$;
wire [0:8] _zy_simnet_stat_addr_35_w$;
wire _zy_simnet_dio_36;
wire [0:15] _zy_simnet_capability_lst_37_w$;
wire [0:3] _zy_simnet_capability_type_38_w$;
wire _zy_simnet_enable_39_w$;
wire [0:8] _zy_simnet_addr_limit_40_w$;
wire [0:95] _zy_simnet_rd_dat_41_w$;
wire _zy_simnet_sw_cs_42_w$;
wire _zy_simnet_dio_43;
wire _zy_simnet_sw_we_44_w$;
wire [0:8] _zy_simnet_sw_add_45_w$;
wire [0:95] _zy_simnet_sw_wdat_46_w$;
wire [0:95] _zy_simnet_dout_47_w$;
wire _zy_simnet_cio_48;
wire [0:7] _zy_simnet_cio_49;
wire _zy_simnet_tvar_50;
wire _zy_simnet_yield_51_w$;
wire _zy_simnet_dio_52;
wire [3:0] im_din_space_avail;
wire [95:0] im_din_dly;
wire im_din_empty;
wire im_din_full;
wire im_din_rd;
wire [1:0] im_available_pre;
wire enable;
wire yield;
wire [8:0] sw_add;
wire sw_cs;
wire [95:0] sw_wdat;
wire sw_we;
wire [8:0] add;
wire [95:0] bwe;
wire cs;
wire [95:0] din;
wire we;
wire [95:0] dout;
wire [8:0] hw_add;
wire hw_we;
wire hw_cs;
wire [95:0] hw_din;
wire hw_yield;
wire [8:0] credit_available;
wire [8:0] credit_return;
wire [8:0] credit_used;
wire im_rd_stb;
wire ready;
wire bank_status;
wire im_vld_qual;
wire sw_init;
wire [8:0] wr_pointer;
wire im_vld_dly;
wire overflow;
wire im_vld_mod;
wire im_vld_if;
wire [1:0] im_consumed_reg;
wire [11:0] hw_status;
wire [11:0] sw_config;
wire [95:0] ram_din;
wire [95:0] ram_bwe;
wire [95:0] ram_dout;
wire [8:0] addr_limit;
supply0 n1;
supply1 n2;
wire [63:0] \im_din_dly.data.data ;
wire \im_din_dly.desc.eob ;
wire [7:0] \im_din_dly.desc.bytes_vld ;
wire [22:0] \im_din_dly.desc.im_meta ;
wire \im_available_pre.bank_hi ;
wire \im_available_pre.bank_lo ;
wire \im_consumed_reg.bank_hi ;
wire \im_consumed_reg.bank_lo ;
wire \hw_status.used_err ;
wire \hw_status.return_err ;
wire [9:0] \hw_status.credit_issued ;
wire \sw_config.dis_used ;
wire \sw_config.dis_return ;
wire [9:0] \sw_config.credit_limit ;
tran (im_available[1], \im_available.bank_hi );
tran (im_available[0], \im_available.bank_lo );
tran (im_status[11], \im_status.available.bank_hi );
tran (im_status[10], \im_status.available.bank_lo );
tran (im_status[9], \im_status.overflow );
tran (im_status[8], \im_status.wr_pointer [8]);
tran (im_status[7], \im_status.wr_pointer [7]);
tran (im_status[6], \im_status.wr_pointer [6]);
tran (im_status[5], \im_status.wr_pointer [5]);
tran (im_status[4], \im_status.wr_pointer [4]);
tran (im_status[3], \im_status.wr_pointer [3]);
tran (im_status[2], \im_status.wr_pointer [2]);
tran (im_status[1], \im_status.wr_pointer [1]);
tran (im_status[0], \im_status.wr_pointer [0]);
tran (im_din[95], \im_din.data.data [63]);
tran (im_din[94], \im_din.data.data [62]);
tran (im_din[93], \im_din.data.data [61]);
tran (im_din[92], \im_din.data.data [60]);
tran (im_din[91], \im_din.data.data [59]);
tran (im_din[90], \im_din.data.data [58]);
tran (im_din[89], \im_din.data.data [57]);
tran (im_din[88], \im_din.data.data [56]);
tran (im_din[87], \im_din.data.data [55]);
tran (im_din[86], \im_din.data.data [54]);
tran (im_din[85], \im_din.data.data [53]);
tran (im_din[84], \im_din.data.data [52]);
tran (im_din[83], \im_din.data.data [51]);
tran (im_din[82], \im_din.data.data [50]);
tran (im_din[81], \im_din.data.data [49]);
tran (im_din[80], \im_din.data.data [48]);
tran (im_din[79], \im_din.data.data [47]);
tran (im_din[78], \im_din.data.data [46]);
tran (im_din[77], \im_din.data.data [45]);
tran (im_din[76], \im_din.data.data [44]);
tran (im_din[75], \im_din.data.data [43]);
tran (im_din[74], \im_din.data.data [42]);
tran (im_din[73], \im_din.data.data [41]);
tran (im_din[72], \im_din.data.data [40]);
tran (im_din[71], \im_din.data.data [39]);
tran (im_din[70], \im_din.data.data [38]);
tran (im_din[69], \im_din.data.data [37]);
tran (im_din[68], \im_din.data.data [36]);
tran (im_din[67], \im_din.data.data [35]);
tran (im_din[66], \im_din.data.data [34]);
tran (im_din[65], \im_din.data.data [33]);
tran (im_din[64], \im_din.data.data [32]);
tran (im_din[63], \im_din.data.data [31]);
tran (im_din[62], \im_din.data.data [30]);
tran (im_din[61], \im_din.data.data [29]);
tran (im_din[60], \im_din.data.data [28]);
tran (im_din[59], \im_din.data.data [27]);
tran (im_din[58], \im_din.data.data [26]);
tran (im_din[57], \im_din.data.data [25]);
tran (im_din[56], \im_din.data.data [24]);
tran (im_din[55], \im_din.data.data [23]);
tran (im_din[54], \im_din.data.data [22]);
tran (im_din[53], \im_din.data.data [21]);
tran (im_din[52], \im_din.data.data [20]);
tran (im_din[51], \im_din.data.data [19]);
tran (im_din[50], \im_din.data.data [18]);
tran (im_din[49], \im_din.data.data [17]);
tran (im_din[48], \im_din.data.data [16]);
tran (im_din[47], \im_din.data.data [15]);
tran (im_din[46], \im_din.data.data [14]);
tran (im_din[45], \im_din.data.data [13]);
tran (im_din[44], \im_din.data.data [12]);
tran (im_din[43], \im_din.data.data [11]);
tran (im_din[42], \im_din.data.data [10]);
tran (im_din[41], \im_din.data.data [9]);
tran (im_din[40], \im_din.data.data [8]);
tran (im_din[39], \im_din.data.data [7]);
tran (im_din[38], \im_din.data.data [6]);
tran (im_din[37], \im_din.data.data [5]);
tran (im_din[36], \im_din.data.data [4]);
tran (im_din[35], \im_din.data.data [3]);
tran (im_din[34], \im_din.data.data [2]);
tran (im_din[33], \im_din.data.data [1]);
tran (im_din[32], \im_din.data.data [0]);
tran (im_din[31], \im_din.desc.eob );
tran (im_din[30], \im_din.desc.bytes_vld [7]);
tran (im_din[29], \im_din.desc.bytes_vld [6]);
tran (im_din[28], \im_din.desc.bytes_vld [5]);
tran (im_din[27], \im_din.desc.bytes_vld [4]);
tran (im_din[26], \im_din.desc.bytes_vld [3]);
tran (im_din[25], \im_din.desc.bytes_vld [2]);
tran (im_din[24], \im_din.desc.bytes_vld [1]);
tran (im_din[23], \im_din.desc.bytes_vld [0]);
tran (im_din[22], \im_din.desc.im_meta [22]);
tran (im_din[21], \im_din.desc.im_meta [21]);
tran (im_din[20], \im_din.desc.im_meta [20]);
tran (im_din[19], \im_din.desc.im_meta [19]);
tran (im_din[18], \im_din.desc.im_meta [18]);
tran (im_din[17], \im_din.desc.im_meta [17]);
tran (im_din[16], \im_din.desc.im_meta [16]);
tran (im_din[15], \im_din.desc.im_meta [15]);
tran (im_din[14], \im_din.desc.im_meta [14]);
tran (im_din[13], \im_din.desc.im_meta [13]);
tran (im_din[12], \im_din.desc.im_meta [12]);
tran (im_din[11], \im_din.desc.im_meta [11]);
tran (im_din[10], \im_din.desc.im_meta [10]);
tran (im_din[9], \im_din.desc.im_meta [9]);
tran (im_din[8], \im_din.desc.im_meta [8]);
tran (im_din[7], \im_din.desc.im_meta [7]);
tran (im_din[6], \im_din.desc.im_meta [6]);
tran (im_din[5], \im_din.desc.im_meta [5]);
tran (im_din[4], \im_din.desc.im_meta [4]);
tran (im_din[3], \im_din.desc.im_meta [3]);
tran (im_din[2], \im_din.desc.im_meta [2]);
tran (im_din[1], \im_din.desc.im_meta [1]);
tran (im_din[0], \im_din.desc.im_meta [0]);
tran (im_consumed[1], \im_consumed.bank_hi );
tran (im_consumed[0], \im_consumed.bank_lo );
tran (im_config[11], \im_config.mode [1]);
tran (im_config[10], \im_config.mode [0]);
tran (im_config[9], \im_config.wr_credit_config [9]);
tran (im_config[8], \im_config.wr_credit_config [8]);
tran (im_config[7], \im_config.wr_credit_config [7]);
tran (im_config[6], \im_config.wr_credit_config [6]);
tran (im_config[5], \im_config.wr_credit_config [5]);
tran (im_config[4], \im_config.wr_credit_config [4]);
tran (im_config[3], \im_config.wr_credit_config [3]);
tran (im_config[2], \im_config.wr_credit_config [2]);
tran (im_config[1], \im_config.wr_credit_config [1]);
tran (im_config[0], \im_config.wr_credit_config [0]);
tran (sw_config[9], \sw_config.credit_limit [9]);
tran (sw_config[8], \sw_config.credit_limit [8]);
tran (sw_config[7], \sw_config.credit_limit [7]);
tran (sw_config[6], \sw_config.credit_limit [6]);
tran (sw_config[5], \sw_config.credit_limit [5]);
tran (sw_config[4], \sw_config.credit_limit [4]);
tran (sw_config[3], \sw_config.credit_limit [3]);
tran (sw_config[2], \sw_config.credit_limit [2]);
tran (sw_config[1], \sw_config.credit_limit [1]);
tran (sw_config[0], \sw_config.credit_limit [0]);
tran (im_din_dly[95], \im_din_dly.data.data [63]);
tran (im_din_dly[94], \im_din_dly.data.data [62]);
tran (im_din_dly[93], \im_din_dly.data.data [61]);
tran (im_din_dly[92], \im_din_dly.data.data [60]);
tran (im_din_dly[91], \im_din_dly.data.data [59]);
tran (im_din_dly[90], \im_din_dly.data.data [58]);
tran (im_din_dly[89], \im_din_dly.data.data [57]);
tran (im_din_dly[88], \im_din_dly.data.data [56]);
tran (im_din_dly[87], \im_din_dly.data.data [55]);
tran (im_din_dly[86], \im_din_dly.data.data [54]);
tran (im_din_dly[85], \im_din_dly.data.data [53]);
tran (im_din_dly[84], \im_din_dly.data.data [52]);
tran (im_din_dly[83], \im_din_dly.data.data [51]);
tran (im_din_dly[82], \im_din_dly.data.data [50]);
tran (im_din_dly[81], \im_din_dly.data.data [49]);
tran (im_din_dly[80], \im_din_dly.data.data [48]);
tran (im_din_dly[79], \im_din_dly.data.data [47]);
tran (im_din_dly[78], \im_din_dly.data.data [46]);
tran (im_din_dly[77], \im_din_dly.data.data [45]);
tran (im_din_dly[76], \im_din_dly.data.data [44]);
tran (im_din_dly[75], \im_din_dly.data.data [43]);
tran (im_din_dly[74], \im_din_dly.data.data [42]);
tran (im_din_dly[73], \im_din_dly.data.data [41]);
tran (im_din_dly[72], \im_din_dly.data.data [40]);
tran (im_din_dly[71], \im_din_dly.data.data [39]);
tran (im_din_dly[70], \im_din_dly.data.data [38]);
tran (im_din_dly[69], \im_din_dly.data.data [37]);
tran (im_din_dly[68], \im_din_dly.data.data [36]);
tran (im_din_dly[67], \im_din_dly.data.data [35]);
tran (im_din_dly[66], \im_din_dly.data.data [34]);
tran (im_din_dly[65], \im_din_dly.data.data [33]);
tran (im_din_dly[64], \im_din_dly.data.data [32]);
tran (im_din_dly[63], \im_din_dly.data.data [31]);
tran (im_din_dly[62], \im_din_dly.data.data [30]);
tran (im_din_dly[61], \im_din_dly.data.data [29]);
tran (im_din_dly[60], \im_din_dly.data.data [28]);
tran (im_din_dly[59], \im_din_dly.data.data [27]);
tran (im_din_dly[58], \im_din_dly.data.data [26]);
tran (im_din_dly[57], \im_din_dly.data.data [25]);
tran (im_din_dly[56], \im_din_dly.data.data [24]);
tran (im_din_dly[55], \im_din_dly.data.data [23]);
tran (im_din_dly[54], \im_din_dly.data.data [22]);
tran (im_din_dly[53], \im_din_dly.data.data [21]);
tran (im_din_dly[52], \im_din_dly.data.data [20]);
tran (im_din_dly[51], \im_din_dly.data.data [19]);
tran (im_din_dly[50], \im_din_dly.data.data [18]);
tran (im_din_dly[49], \im_din_dly.data.data [17]);
tran (im_din_dly[48], \im_din_dly.data.data [16]);
tran (im_din_dly[47], \im_din_dly.data.data [15]);
tran (im_din_dly[46], \im_din_dly.data.data [14]);
tran (im_din_dly[45], \im_din_dly.data.data [13]);
tran (im_din_dly[44], \im_din_dly.data.data [12]);
tran (im_din_dly[43], \im_din_dly.data.data [11]);
tran (im_din_dly[42], \im_din_dly.data.data [10]);
tran (im_din_dly[41], \im_din_dly.data.data [9]);
tran (im_din_dly[40], \im_din_dly.data.data [8]);
tran (im_din_dly[39], \im_din_dly.data.data [7]);
tran (im_din_dly[38], \im_din_dly.data.data [6]);
tran (im_din_dly[37], \im_din_dly.data.data [5]);
tran (im_din_dly[36], \im_din_dly.data.data [4]);
tran (im_din_dly[35], \im_din_dly.data.data [3]);
tran (im_din_dly[34], \im_din_dly.data.data [2]);
tran (im_din_dly[33], \im_din_dly.data.data [1]);
tran (im_din_dly[32], \im_din_dly.data.data [0]);
tran (im_din_dly[31], \im_din_dly.desc.eob );
tran (im_din_dly[30], \im_din_dly.desc.bytes_vld [7]);
tran (im_din_dly[29], \im_din_dly.desc.bytes_vld [6]);
tran (im_din_dly[28], \im_din_dly.desc.bytes_vld [5]);
tran (im_din_dly[27], \im_din_dly.desc.bytes_vld [4]);
tran (im_din_dly[26], \im_din_dly.desc.bytes_vld [3]);
tran (im_din_dly[25], \im_din_dly.desc.bytes_vld [2]);
tran (im_din_dly[24], \im_din_dly.desc.bytes_vld [1]);
tran (im_din_dly[23], \im_din_dly.desc.bytes_vld [0]);
tran (im_din_dly[22], \im_din_dly.desc.im_meta [22]);
tran (im_din_dly[21], \im_din_dly.desc.im_meta [21]);
tran (im_din_dly[20], \im_din_dly.desc.im_meta [20]);
tran (im_din_dly[19], \im_din_dly.desc.im_meta [19]);
tran (im_din_dly[18], \im_din_dly.desc.im_meta [18]);
tran (im_din_dly[17], \im_din_dly.desc.im_meta [17]);
tran (im_din_dly[16], \im_din_dly.desc.im_meta [16]);
tran (im_din_dly[15], \im_din_dly.desc.im_meta [15]);
tran (im_din_dly[14], \im_din_dly.desc.im_meta [14]);
tran (im_din_dly[13], \im_din_dly.desc.im_meta [13]);
tran (im_din_dly[12], \im_din_dly.desc.im_meta [12]);
tran (im_din_dly[11], \im_din_dly.desc.im_meta [11]);
tran (im_din_dly[10], \im_din_dly.desc.im_meta [10]);
tran (im_din_dly[9], \im_din_dly.desc.im_meta [9]);
tran (im_din_dly[8], \im_din_dly.desc.im_meta [8]);
tran (im_din_dly[7], \im_din_dly.desc.im_meta [7]);
tran (im_din_dly[6], \im_din_dly.desc.im_meta [6]);
tran (im_din_dly[5], \im_din_dly.desc.im_meta [5]);
tran (im_din_dly[4], \im_din_dly.desc.im_meta [4]);
tran (im_din_dly[3], \im_din_dly.desc.im_meta [3]);
tran (im_din_dly[2], \im_din_dly.desc.im_meta [2]);
tran (im_din_dly[1], \im_din_dly.desc.im_meta [1]);
tran (im_din_dly[0], \im_din_dly.desc.im_meta [0]);
tran (hw_status[11], \hw_status.used_err );
tran (hw_status[10], \hw_status.return_err );
tran (hw_status[9], \hw_status.credit_issued [9]);
tran (hw_status[8], \hw_status.credit_issued [8]);
tran (hw_status[7], \hw_status.credit_issued [7]);
tran (hw_status[6], \hw_status.credit_issued [6]);
tran (hw_status[5], \hw_status.credit_issued [5]);
tran (hw_status[4], \hw_status.credit_issued [4]);
tran (hw_status[3], \hw_status.credit_issued [3]);
tran (hw_status[2], \hw_status.credit_issued [2]);
tran (hw_status[1], \hw_status.credit_issued [1]);
tran (hw_status[0], \hw_status.credit_issued [0]);
tran (im_consumed_reg[1], \im_consumed_reg.bank_hi );
tran (im_consumed_reg[0], \im_consumed_reg.bank_lo );
tran (sw_config[11], \sw_config.dis_used );
tran (sw_config[10], \sw_config.dis_return );
tran (im_available_pre[0], \im_available_pre.bank_lo );
tran (im_available_pre[1], \im_available_pre.bank_hi );
Q_BUF U0 ( .A(n1), .Z(sw_config[10]));
Q_BUF U1 ( .A(n1), .Z(sw_config[11]));
Q_BUF U2 ( .A(n1), .Z(_zy_simnet_cio_49[7]));
Q_BUF U3 ( .A(n1), .Z(_zy_simnet_cio_49[6]));
Q_BUF U4 ( .A(n1), .Z(_zy_simnet_cio_49[5]));
Q_BUF U5 ( .A(n1), .Z(_zy_simnet_cio_49[4]));
Q_BUF U6 ( .A(n1), .Z(_zy_simnet_cio_49[3]));
Q_BUF U7 ( .A(n1), .Z(_zy_simnet_cio_49[2]));
Q_BUF U8 ( .A(n1), .Z(_zy_simnet_cio_49[1]));
Q_BUF U9 ( .A(n1), .Z(_zy_simnet_cio_49[0]));
Q_BUF U10 ( .A(n1), .Z(_zy_simnet_cio_48));
Q_BUF U11 ( .A(n1), .Z(_zy_simnet_cio_32));
Q_BUF U12 ( .A(n2), .Z(addr_limit[0]));
Q_BUF U13 ( .A(n2), .Z(addr_limit[1]));
Q_BUF U14 ( .A(n2), .Z(addr_limit[2]));
Q_BUF U15 ( .A(n2), .Z(addr_limit[3]));
Q_BUF U16 ( .A(n2), .Z(addr_limit[4]));
Q_BUF U17 ( .A(n2), .Z(addr_limit[5]));
Q_BUF U18 ( .A(n2), .Z(addr_limit[6]));
Q_BUF U19 ( .A(n2), .Z(addr_limit[7]));
Q_BUF U20 ( .A(n2), .Z(addr_limit[8]));
Q_BUF U21 ( .A(n2), .Z(bwe[0]));
Q_BUF U22 ( .A(n2), .Z(bwe[1]));
Q_BUF U23 ( .A(n2), .Z(bwe[2]));
Q_BUF U24 ( .A(n2), .Z(bwe[3]));
Q_BUF U25 ( .A(n2), .Z(bwe[4]));
Q_BUF U26 ( .A(n2), .Z(bwe[5]));
Q_BUF U27 ( .A(n2), .Z(bwe[6]));
Q_BUF U28 ( .A(n2), .Z(bwe[7]));
Q_BUF U29 ( .A(n2), .Z(bwe[8]));
Q_BUF U30 ( .A(n2), .Z(bwe[9]));
Q_BUF U31 ( .A(n2), .Z(bwe[10]));
Q_BUF U32 ( .A(n2), .Z(bwe[11]));
Q_BUF U33 ( .A(n2), .Z(bwe[12]));
Q_BUF U34 ( .A(n2), .Z(bwe[13]));
Q_BUF U35 ( .A(n2), .Z(bwe[14]));
Q_BUF U36 ( .A(n2), .Z(bwe[15]));
Q_BUF U37 ( .A(n2), .Z(bwe[16]));
Q_BUF U38 ( .A(n2), .Z(bwe[17]));
Q_BUF U39 ( .A(n2), .Z(bwe[18]));
Q_BUF U40 ( .A(n2), .Z(bwe[19]));
Q_BUF U41 ( .A(n2), .Z(bwe[20]));
Q_BUF U42 ( .A(n2), .Z(bwe[21]));
Q_BUF U43 ( .A(n2), .Z(bwe[22]));
Q_BUF U44 ( .A(n2), .Z(bwe[23]));
Q_BUF U45 ( .A(n2), .Z(bwe[24]));
Q_BUF U46 ( .A(n2), .Z(bwe[25]));
Q_BUF U47 ( .A(n2), .Z(bwe[26]));
Q_BUF U48 ( .A(n2), .Z(bwe[27]));
Q_BUF U49 ( .A(n2), .Z(bwe[28]));
Q_BUF U50 ( .A(n2), .Z(bwe[29]));
Q_BUF U51 ( .A(n2), .Z(bwe[30]));
Q_BUF U52 ( .A(n2), .Z(bwe[31]));
Q_BUF U53 ( .A(n2), .Z(bwe[32]));
Q_BUF U54 ( .A(n2), .Z(bwe[33]));
Q_BUF U55 ( .A(n2), .Z(bwe[34]));
Q_BUF U56 ( .A(n2), .Z(bwe[35]));
Q_BUF U57 ( .A(n2), .Z(bwe[36]));
Q_BUF U58 ( .A(n2), .Z(bwe[37]));
Q_BUF U59 ( .A(n2), .Z(bwe[38]));
Q_BUF U60 ( .A(n2), .Z(bwe[39]));
Q_BUF U61 ( .A(n2), .Z(bwe[40]));
Q_BUF U62 ( .A(n2), .Z(bwe[41]));
Q_BUF U63 ( .A(n2), .Z(bwe[42]));
Q_BUF U64 ( .A(n2), .Z(bwe[43]));
Q_BUF U65 ( .A(n2), .Z(bwe[44]));
Q_BUF U66 ( .A(n2), .Z(bwe[45]));
Q_BUF U67 ( .A(n2), .Z(bwe[46]));
Q_BUF U68 ( .A(n2), .Z(bwe[47]));
Q_BUF U69 ( .A(n2), .Z(bwe[48]));
Q_BUF U70 ( .A(n2), .Z(bwe[49]));
Q_BUF U71 ( .A(n2), .Z(bwe[50]));
Q_BUF U72 ( .A(n2), .Z(bwe[51]));
Q_BUF U73 ( .A(n2), .Z(bwe[52]));
Q_BUF U74 ( .A(n2), .Z(bwe[53]));
Q_BUF U75 ( .A(n2), .Z(bwe[54]));
Q_BUF U76 ( .A(n2), .Z(bwe[55]));
Q_BUF U77 ( .A(n2), .Z(bwe[56]));
Q_BUF U78 ( .A(n2), .Z(bwe[57]));
Q_BUF U79 ( .A(n2), .Z(bwe[58]));
Q_BUF U80 ( .A(n2), .Z(bwe[59]));
Q_BUF U81 ( .A(n2), .Z(bwe[60]));
Q_BUF U82 ( .A(n2), .Z(bwe[61]));
Q_BUF U83 ( .A(n2), .Z(bwe[62]));
Q_BUF U84 ( .A(n2), .Z(bwe[63]));
Q_BUF U85 ( .A(n2), .Z(bwe[64]));
Q_BUF U86 ( .A(n2), .Z(bwe[65]));
Q_BUF U87 ( .A(n2), .Z(bwe[66]));
Q_BUF U88 ( .A(n2), .Z(bwe[67]));
Q_BUF U89 ( .A(n2), .Z(bwe[68]));
Q_BUF U90 ( .A(n2), .Z(bwe[69]));
Q_BUF U91 ( .A(n2), .Z(bwe[70]));
Q_BUF U92 ( .A(n2), .Z(bwe[71]));
Q_BUF U93 ( .A(n2), .Z(bwe[72]));
Q_BUF U94 ( .A(n2), .Z(bwe[73]));
Q_BUF U95 ( .A(n2), .Z(bwe[74]));
Q_BUF U96 ( .A(n2), .Z(bwe[75]));
Q_BUF U97 ( .A(n2), .Z(bwe[76]));
Q_BUF U98 ( .A(n2), .Z(bwe[77]));
Q_BUF U99 ( .A(n2), .Z(bwe[78]));
Q_BUF U100 ( .A(n2), .Z(bwe[79]));
Q_BUF U101 ( .A(n2), .Z(bwe[80]));
Q_BUF U102 ( .A(n2), .Z(bwe[81]));
Q_BUF U103 ( .A(n2), .Z(bwe[82]));
Q_BUF U104 ( .A(n2), .Z(bwe[83]));
Q_BUF U105 ( .A(n2), .Z(bwe[84]));
Q_BUF U106 ( .A(n2), .Z(bwe[85]));
Q_BUF U107 ( .A(n2), .Z(bwe[86]));
Q_BUF U108 ( .A(n2), .Z(bwe[87]));
Q_BUF U109 ( .A(n2), .Z(bwe[88]));
Q_BUF U110 ( .A(n2), .Z(bwe[89]));
Q_BUF U111 ( .A(n2), .Z(bwe[90]));
Q_BUF U112 ( .A(n2), .Z(bwe[91]));
Q_BUF U113 ( .A(n2), .Z(bwe[92]));
Q_BUF U114 ( .A(n2), .Z(bwe[93]));
Q_BUF U115 ( .A(n2), .Z(bwe[94]));
Q_BUF U116 ( .A(n2), .Z(bwe[95]));
Q_BUF U117 ( .A(n1), .Z(credit_return[0]));
Q_BUF U118 ( .A(n1), .Z(credit_return[1]));
Q_BUF U119 ( .A(n1), .Z(credit_return[2]));
Q_BUF U120 ( .A(n1), .Z(credit_return[3]));
Q_BUF U121 ( .A(n1), .Z(credit_return[4]));
Q_BUF U122 ( .A(n1), .Z(credit_return[5]));
Q_BUF U123 ( .A(n1), .Z(credit_return[6]));
Q_BUF U124 ( .A(n1), .Z(credit_return[7]));
Q_BUF U125 ( .A(n2), .Z(ram_bwe[0]));
Q_BUF U126 ( .A(n2), .Z(ram_bwe[1]));
Q_BUF U127 ( .A(n2), .Z(ram_bwe[2]));
Q_BUF U128 ( .A(n2), .Z(ram_bwe[3]));
Q_BUF U129 ( .A(n2), .Z(ram_bwe[4]));
Q_BUF U130 ( .A(n2), .Z(ram_bwe[5]));
Q_BUF U131 ( .A(n2), .Z(ram_bwe[6]));
Q_BUF U132 ( .A(n2), .Z(ram_bwe[7]));
Q_BUF U133 ( .A(n2), .Z(ram_bwe[8]));
Q_BUF U134 ( .A(n2), .Z(ram_bwe[9]));
Q_BUF U135 ( .A(n2), .Z(ram_bwe[10]));
Q_BUF U136 ( .A(n2), .Z(ram_bwe[11]));
Q_BUF U137 ( .A(n2), .Z(ram_bwe[12]));
Q_BUF U138 ( .A(n2), .Z(ram_bwe[13]));
Q_BUF U139 ( .A(n2), .Z(ram_bwe[14]));
Q_BUF U140 ( .A(n2), .Z(ram_bwe[15]));
Q_BUF U141 ( .A(n2), .Z(ram_bwe[16]));
Q_BUF U142 ( .A(n2), .Z(ram_bwe[17]));
Q_BUF U143 ( .A(n2), .Z(ram_bwe[18]));
Q_BUF U144 ( .A(n2), .Z(ram_bwe[19]));
Q_BUF U145 ( .A(n2), .Z(ram_bwe[20]));
Q_BUF U146 ( .A(n2), .Z(ram_bwe[21]));
Q_BUF U147 ( .A(n2), .Z(ram_bwe[22]));
Q_BUF U148 ( .A(n2), .Z(ram_bwe[23]));
Q_BUF U149 ( .A(n2), .Z(ram_bwe[24]));
Q_BUF U150 ( .A(n2), .Z(ram_bwe[25]));
Q_BUF U151 ( .A(n2), .Z(ram_bwe[26]));
Q_BUF U152 ( .A(n2), .Z(ram_bwe[27]));
Q_BUF U153 ( .A(n2), .Z(ram_bwe[28]));
Q_BUF U154 ( .A(n2), .Z(ram_bwe[29]));
Q_BUF U155 ( .A(n2), .Z(ram_bwe[30]));
Q_BUF U156 ( .A(n2), .Z(ram_bwe[31]));
Q_BUF U157 ( .A(n2), .Z(ram_bwe[32]));
Q_BUF U158 ( .A(n2), .Z(ram_bwe[33]));
Q_BUF U159 ( .A(n2), .Z(ram_bwe[34]));
Q_BUF U160 ( .A(n2), .Z(ram_bwe[35]));
Q_BUF U161 ( .A(n2), .Z(ram_bwe[36]));
Q_BUF U162 ( .A(n2), .Z(ram_bwe[37]));
Q_BUF U163 ( .A(n2), .Z(ram_bwe[38]));
Q_BUF U164 ( .A(n2), .Z(ram_bwe[39]));
Q_BUF U165 ( .A(n2), .Z(ram_bwe[40]));
Q_BUF U166 ( .A(n2), .Z(ram_bwe[41]));
Q_BUF U167 ( .A(n2), .Z(ram_bwe[42]));
Q_BUF U168 ( .A(n2), .Z(ram_bwe[43]));
Q_BUF U169 ( .A(n2), .Z(ram_bwe[44]));
Q_BUF U170 ( .A(n2), .Z(ram_bwe[45]));
Q_BUF U171 ( .A(n2), .Z(ram_bwe[46]));
Q_BUF U172 ( .A(n2), .Z(ram_bwe[47]));
Q_BUF U173 ( .A(n2), .Z(ram_bwe[48]));
Q_BUF U174 ( .A(n2), .Z(ram_bwe[49]));
Q_BUF U175 ( .A(n2), .Z(ram_bwe[50]));
Q_BUF U176 ( .A(n2), .Z(ram_bwe[51]));
Q_BUF U177 ( .A(n2), .Z(ram_bwe[52]));
Q_BUF U178 ( .A(n2), .Z(ram_bwe[53]));
Q_BUF U179 ( .A(n2), .Z(ram_bwe[54]));
Q_BUF U180 ( .A(n2), .Z(ram_bwe[55]));
Q_BUF U181 ( .A(n2), .Z(ram_bwe[56]));
Q_BUF U182 ( .A(n2), .Z(ram_bwe[57]));
Q_BUF U183 ( .A(n2), .Z(ram_bwe[58]));
Q_BUF U184 ( .A(n2), .Z(ram_bwe[59]));
Q_BUF U185 ( .A(n2), .Z(ram_bwe[60]));
Q_BUF U186 ( .A(n2), .Z(ram_bwe[61]));
Q_BUF U187 ( .A(n2), .Z(ram_bwe[62]));
Q_BUF U188 ( .A(n2), .Z(ram_bwe[63]));
Q_BUF U189 ( .A(n2), .Z(ram_bwe[64]));
Q_BUF U190 ( .A(n2), .Z(ram_bwe[65]));
Q_BUF U191 ( .A(n2), .Z(ram_bwe[66]));
Q_BUF U192 ( .A(n2), .Z(ram_bwe[67]));
Q_BUF U193 ( .A(n2), .Z(ram_bwe[68]));
Q_BUF U194 ( .A(n2), .Z(ram_bwe[69]));
Q_BUF U195 ( .A(n2), .Z(ram_bwe[70]));
Q_BUF U196 ( .A(n2), .Z(ram_bwe[71]));
Q_BUF U197 ( .A(n2), .Z(ram_bwe[72]));
Q_BUF U198 ( .A(n2), .Z(ram_bwe[73]));
Q_BUF U199 ( .A(n2), .Z(ram_bwe[74]));
Q_BUF U200 ( .A(n2), .Z(ram_bwe[75]));
Q_BUF U201 ( .A(n2), .Z(ram_bwe[76]));
Q_BUF U202 ( .A(n2), .Z(ram_bwe[77]));
Q_BUF U203 ( .A(n2), .Z(ram_bwe[78]));
Q_BUF U204 ( .A(n2), .Z(ram_bwe[79]));
Q_BUF U205 ( .A(n2), .Z(ram_bwe[80]));
Q_BUF U206 ( .A(n2), .Z(ram_bwe[81]));
Q_BUF U207 ( .A(n2), .Z(ram_bwe[82]));
Q_BUF U208 ( .A(n2), .Z(ram_bwe[83]));
Q_BUF U209 ( .A(n2), .Z(ram_bwe[84]));
Q_BUF U210 ( .A(n2), .Z(ram_bwe[85]));
Q_BUF U211 ( .A(n2), .Z(ram_bwe[86]));
Q_BUF U212 ( .A(n2), .Z(ram_bwe[87]));
Q_BUF U213 ( .A(n2), .Z(ram_bwe[88]));
Q_BUF U214 ( .A(n2), .Z(ram_bwe[89]));
Q_BUF U215 ( .A(n2), .Z(ram_bwe[90]));
Q_BUF U216 ( .A(n2), .Z(ram_bwe[91]));
Q_BUF U217 ( .A(n2), .Z(ram_bwe[92]));
Q_BUF U218 ( .A(n2), .Z(ram_bwe[93]));
Q_BUF U219 ( .A(n2), .Z(ram_bwe[94]));
Q_BUF U220 ( .A(n2), .Z(ram_bwe[95]));
Q_BUF U221 ( .A(im_rd_stb), .Z(credit_return[8]));
Q_ASSIGN U222 ( .B(ram_dout[0]), .A(dout[0]));
Q_ASSIGN U223 ( .B(ram_dout[1]), .A(dout[1]));
Q_ASSIGN U224 ( .B(ram_dout[2]), .A(dout[2]));
Q_ASSIGN U225 ( .B(ram_dout[3]), .A(dout[3]));
Q_ASSIGN U226 ( .B(ram_dout[4]), .A(dout[4]));
Q_ASSIGN U227 ( .B(ram_dout[5]), .A(dout[5]));
Q_ASSIGN U228 ( .B(ram_dout[6]), .A(dout[6]));
Q_ASSIGN U229 ( .B(ram_dout[7]), .A(dout[7]));
Q_ASSIGN U230 ( .B(ram_dout[8]), .A(dout[8]));
Q_ASSIGN U231 ( .B(ram_dout[9]), .A(dout[9]));
Q_ASSIGN U232 ( .B(ram_dout[10]), .A(dout[10]));
Q_ASSIGN U233 ( .B(ram_dout[11]), .A(dout[11]));
Q_ASSIGN U234 ( .B(ram_dout[12]), .A(dout[12]));
Q_ASSIGN U235 ( .B(ram_dout[13]), .A(dout[13]));
Q_ASSIGN U236 ( .B(ram_dout[14]), .A(dout[14]));
Q_ASSIGN U237 ( .B(ram_dout[15]), .A(dout[15]));
Q_ASSIGN U238 ( .B(ram_dout[16]), .A(dout[16]));
Q_ASSIGN U239 ( .B(ram_dout[17]), .A(dout[17]));
Q_ASSIGN U240 ( .B(ram_dout[18]), .A(dout[18]));
Q_ASSIGN U241 ( .B(ram_dout[19]), .A(dout[19]));
Q_ASSIGN U242 ( .B(ram_dout[20]), .A(dout[20]));
Q_ASSIGN U243 ( .B(ram_dout[21]), .A(dout[21]));
Q_ASSIGN U244 ( .B(ram_dout[22]), .A(dout[22]));
Q_ASSIGN U245 ( .B(ram_dout[23]), .A(dout[23]));
Q_ASSIGN U246 ( .B(ram_dout[24]), .A(dout[24]));
Q_ASSIGN U247 ( .B(ram_dout[25]), .A(dout[25]));
Q_ASSIGN U248 ( .B(ram_dout[26]), .A(dout[26]));
Q_ASSIGN U249 ( .B(ram_dout[27]), .A(dout[27]));
Q_ASSIGN U250 ( .B(ram_dout[28]), .A(dout[28]));
Q_ASSIGN U251 ( .B(ram_dout[29]), .A(dout[29]));
Q_ASSIGN U252 ( .B(ram_dout[30]), .A(dout[30]));
Q_ASSIGN U253 ( .B(ram_dout[31]), .A(dout[31]));
Q_ASSIGN U254 ( .B(ram_dout[32]), .A(dout[32]));
Q_ASSIGN U255 ( .B(ram_dout[33]), .A(dout[33]));
Q_ASSIGN U256 ( .B(ram_dout[34]), .A(dout[34]));
Q_ASSIGN U257 ( .B(ram_dout[35]), .A(dout[35]));
Q_ASSIGN U258 ( .B(ram_dout[36]), .A(dout[36]));
Q_ASSIGN U259 ( .B(ram_dout[37]), .A(dout[37]));
Q_ASSIGN U260 ( .B(ram_dout[38]), .A(dout[38]));
Q_ASSIGN U261 ( .B(ram_dout[39]), .A(dout[39]));
Q_ASSIGN U262 ( .B(ram_dout[40]), .A(dout[40]));
Q_ASSIGN U263 ( .B(ram_dout[41]), .A(dout[41]));
Q_ASSIGN U264 ( .B(ram_dout[42]), .A(dout[42]));
Q_ASSIGN U265 ( .B(ram_dout[43]), .A(dout[43]));
Q_ASSIGN U266 ( .B(ram_dout[44]), .A(dout[44]));
Q_ASSIGN U267 ( .B(ram_dout[45]), .A(dout[45]));
Q_ASSIGN U268 ( .B(ram_dout[46]), .A(dout[46]));
Q_ASSIGN U269 ( .B(ram_dout[47]), .A(dout[47]));
Q_ASSIGN U270 ( .B(ram_dout[48]), .A(dout[48]));
Q_ASSIGN U271 ( .B(ram_dout[49]), .A(dout[49]));
Q_ASSIGN U272 ( .B(ram_dout[50]), .A(dout[50]));
Q_ASSIGN U273 ( .B(ram_dout[51]), .A(dout[51]));
Q_ASSIGN U274 ( .B(ram_dout[52]), .A(dout[52]));
Q_ASSIGN U275 ( .B(ram_dout[53]), .A(dout[53]));
Q_ASSIGN U276 ( .B(ram_dout[54]), .A(dout[54]));
Q_ASSIGN U277 ( .B(ram_dout[55]), .A(dout[55]));
Q_ASSIGN U278 ( .B(ram_dout[56]), .A(dout[56]));
Q_ASSIGN U279 ( .B(ram_dout[57]), .A(dout[57]));
Q_ASSIGN U280 ( .B(ram_dout[58]), .A(dout[58]));
Q_ASSIGN U281 ( .B(ram_dout[59]), .A(dout[59]));
Q_ASSIGN U282 ( .B(ram_dout[60]), .A(dout[60]));
Q_ASSIGN U283 ( .B(ram_dout[61]), .A(dout[61]));
Q_ASSIGN U284 ( .B(ram_dout[62]), .A(dout[62]));
Q_ASSIGN U285 ( .B(ram_dout[63]), .A(dout[63]));
Q_ASSIGN U286 ( .B(ram_dout[64]), .A(dout[64]));
Q_ASSIGN U287 ( .B(ram_dout[65]), .A(dout[65]));
Q_ASSIGN U288 ( .B(ram_dout[66]), .A(dout[66]));
Q_ASSIGN U289 ( .B(ram_dout[67]), .A(dout[67]));
Q_ASSIGN U290 ( .B(ram_dout[68]), .A(dout[68]));
Q_ASSIGN U291 ( .B(ram_dout[69]), .A(dout[69]));
Q_ASSIGN U292 ( .B(ram_dout[70]), .A(dout[70]));
Q_ASSIGN U293 ( .B(ram_dout[71]), .A(dout[71]));
Q_ASSIGN U294 ( .B(ram_dout[72]), .A(dout[72]));
Q_ASSIGN U295 ( .B(ram_dout[73]), .A(dout[73]));
Q_ASSIGN U296 ( .B(ram_dout[74]), .A(dout[74]));
Q_ASSIGN U297 ( .B(ram_dout[75]), .A(dout[75]));
Q_ASSIGN U298 ( .B(ram_dout[76]), .A(dout[76]));
Q_ASSIGN U299 ( .B(ram_dout[77]), .A(dout[77]));
Q_ASSIGN U300 ( .B(ram_dout[78]), .A(dout[78]));
Q_ASSIGN U301 ( .B(ram_dout[79]), .A(dout[79]));
Q_ASSIGN U302 ( .B(ram_dout[80]), .A(dout[80]));
Q_ASSIGN U303 ( .B(ram_dout[81]), .A(dout[81]));
Q_ASSIGN U304 ( .B(ram_dout[82]), .A(dout[82]));
Q_ASSIGN U305 ( .B(ram_dout[83]), .A(dout[83]));
Q_ASSIGN U306 ( .B(ram_dout[84]), .A(dout[84]));
Q_ASSIGN U307 ( .B(ram_dout[85]), .A(dout[85]));
Q_ASSIGN U308 ( .B(ram_dout[86]), .A(dout[86]));
Q_ASSIGN U309 ( .B(ram_dout[87]), .A(dout[87]));
Q_ASSIGN U310 ( .B(ram_dout[88]), .A(dout[88]));
Q_ASSIGN U311 ( .B(ram_dout[89]), .A(dout[89]));
Q_ASSIGN U312 ( .B(ram_dout[90]), .A(dout[90]));
Q_ASSIGN U313 ( .B(ram_dout[91]), .A(dout[91]));
Q_ASSIGN U314 ( .B(ram_dout[92]), .A(dout[92]));
Q_ASSIGN U315 ( .B(ram_dout[93]), .A(dout[93]));
Q_ASSIGN U316 ( .B(ram_dout[94]), .A(dout[94]));
Q_ASSIGN U317 ( .B(ram_dout[95]), .A(dout[95]));
Q_BUF U318 ( .A(din[0]), .Z(ram_din[0]));
Q_BUF U319 ( .A(din[1]), .Z(ram_din[1]));
Q_BUF U320 ( .A(din[2]), .Z(ram_din[2]));
Q_BUF U321 ( .A(din[3]), .Z(ram_din[3]));
Q_BUF U322 ( .A(din[4]), .Z(ram_din[4]));
Q_BUF U323 ( .A(din[5]), .Z(ram_din[5]));
Q_BUF U324 ( .A(din[6]), .Z(ram_din[6]));
Q_BUF U325 ( .A(din[7]), .Z(ram_din[7]));
Q_BUF U326 ( .A(din[8]), .Z(ram_din[8]));
Q_BUF U327 ( .A(din[9]), .Z(ram_din[9]));
Q_BUF U328 ( .A(din[10]), .Z(ram_din[10]));
Q_BUF U329 ( .A(din[11]), .Z(ram_din[11]));
Q_BUF U330 ( .A(din[12]), .Z(ram_din[12]));
Q_BUF U331 ( .A(din[13]), .Z(ram_din[13]));
Q_BUF U332 ( .A(din[14]), .Z(ram_din[14]));
Q_BUF U333 ( .A(din[15]), .Z(ram_din[15]));
Q_BUF U334 ( .A(din[16]), .Z(ram_din[16]));
Q_BUF U335 ( .A(din[17]), .Z(ram_din[17]));
Q_BUF U336 ( .A(din[18]), .Z(ram_din[18]));
Q_BUF U337 ( .A(din[19]), .Z(ram_din[19]));
Q_BUF U338 ( .A(din[20]), .Z(ram_din[20]));
Q_BUF U339 ( .A(din[21]), .Z(ram_din[21]));
Q_BUF U340 ( .A(din[22]), .Z(ram_din[22]));
Q_BUF U341 ( .A(din[23]), .Z(ram_din[23]));
Q_BUF U342 ( .A(din[24]), .Z(ram_din[24]));
Q_BUF U343 ( .A(din[25]), .Z(ram_din[25]));
Q_BUF U344 ( .A(din[26]), .Z(ram_din[26]));
Q_BUF U345 ( .A(din[27]), .Z(ram_din[27]));
Q_BUF U346 ( .A(din[28]), .Z(ram_din[28]));
Q_BUF U347 ( .A(din[29]), .Z(ram_din[29]));
Q_BUF U348 ( .A(din[30]), .Z(ram_din[30]));
Q_BUF U349 ( .A(din[31]), .Z(ram_din[31]));
Q_BUF U350 ( .A(din[32]), .Z(ram_din[32]));
Q_BUF U351 ( .A(din[33]), .Z(ram_din[33]));
Q_BUF U352 ( .A(din[34]), .Z(ram_din[34]));
Q_BUF U353 ( .A(din[35]), .Z(ram_din[35]));
Q_BUF U354 ( .A(din[36]), .Z(ram_din[36]));
Q_BUF U355 ( .A(din[37]), .Z(ram_din[37]));
Q_BUF U356 ( .A(din[38]), .Z(ram_din[38]));
Q_BUF U357 ( .A(din[39]), .Z(ram_din[39]));
Q_BUF U358 ( .A(din[40]), .Z(ram_din[40]));
Q_BUF U359 ( .A(din[41]), .Z(ram_din[41]));
Q_BUF U360 ( .A(din[42]), .Z(ram_din[42]));
Q_BUF U361 ( .A(din[43]), .Z(ram_din[43]));
Q_BUF U362 ( .A(din[44]), .Z(ram_din[44]));
Q_BUF U363 ( .A(din[45]), .Z(ram_din[45]));
Q_BUF U364 ( .A(din[46]), .Z(ram_din[46]));
Q_BUF U365 ( .A(din[47]), .Z(ram_din[47]));
Q_BUF U366 ( .A(din[48]), .Z(ram_din[48]));
Q_BUF U367 ( .A(din[49]), .Z(ram_din[49]));
Q_BUF U368 ( .A(din[50]), .Z(ram_din[50]));
Q_BUF U369 ( .A(din[51]), .Z(ram_din[51]));
Q_BUF U370 ( .A(din[52]), .Z(ram_din[52]));
Q_BUF U371 ( .A(din[53]), .Z(ram_din[53]));
Q_BUF U372 ( .A(din[54]), .Z(ram_din[54]));
Q_BUF U373 ( .A(din[55]), .Z(ram_din[55]));
Q_BUF U374 ( .A(din[56]), .Z(ram_din[56]));
Q_BUF U375 ( .A(din[57]), .Z(ram_din[57]));
Q_BUF U376 ( .A(din[58]), .Z(ram_din[58]));
Q_BUF U377 ( .A(din[59]), .Z(ram_din[59]));
Q_BUF U378 ( .A(din[60]), .Z(ram_din[60]));
Q_BUF U379 ( .A(din[61]), .Z(ram_din[61]));
Q_BUF U380 ( .A(din[62]), .Z(ram_din[62]));
Q_BUF U381 ( .A(din[63]), .Z(ram_din[63]));
Q_BUF U382 ( .A(din[64]), .Z(ram_din[64]));
Q_BUF U383 ( .A(din[65]), .Z(ram_din[65]));
Q_BUF U384 ( .A(din[66]), .Z(ram_din[66]));
Q_BUF U385 ( .A(din[67]), .Z(ram_din[67]));
Q_BUF U386 ( .A(din[68]), .Z(ram_din[68]));
Q_BUF U387 ( .A(din[69]), .Z(ram_din[69]));
Q_BUF U388 ( .A(din[70]), .Z(ram_din[70]));
Q_BUF U389 ( .A(din[71]), .Z(ram_din[71]));
Q_BUF U390 ( .A(din[72]), .Z(ram_din[72]));
Q_BUF U391 ( .A(din[73]), .Z(ram_din[73]));
Q_BUF U392 ( .A(din[74]), .Z(ram_din[74]));
Q_BUF U393 ( .A(din[75]), .Z(ram_din[75]));
Q_BUF U394 ( .A(din[76]), .Z(ram_din[76]));
Q_BUF U395 ( .A(din[77]), .Z(ram_din[77]));
Q_BUF U396 ( .A(din[78]), .Z(ram_din[78]));
Q_BUF U397 ( .A(din[79]), .Z(ram_din[79]));
Q_BUF U398 ( .A(din[80]), .Z(ram_din[80]));
Q_BUF U399 ( .A(din[81]), .Z(ram_din[81]));
Q_BUF U400 ( .A(din[82]), .Z(ram_din[82]));
Q_BUF U401 ( .A(din[83]), .Z(ram_din[83]));
Q_BUF U402 ( .A(din[84]), .Z(ram_din[84]));
Q_BUF U403 ( .A(din[85]), .Z(ram_din[85]));
Q_BUF U404 ( .A(din[86]), .Z(ram_din[86]));
Q_BUF U405 ( .A(din[87]), .Z(ram_din[87]));
Q_BUF U406 ( .A(din[88]), .Z(ram_din[88]));
Q_BUF U407 ( .A(din[89]), .Z(ram_din[89]));
Q_BUF U408 ( .A(din[90]), .Z(ram_din[90]));
Q_BUF U409 ( .A(din[91]), .Z(ram_din[91]));
Q_BUF U410 ( .A(din[92]), .Z(ram_din[92]));
Q_BUF U411 ( .A(din[93]), .Z(ram_din[93]));
Q_BUF U412 ( .A(din[94]), .Z(ram_din[94]));
Q_BUF U413 ( .A(din[95]), .Z(ram_din[95]));
Q_INV U414 ( .A(n18), .Z(n3));
nx_indirect_access_cntrl_xcm114 u_cntrl ( .clk( clk), .rst_n( rst_n), 
	.wr_stb( wr_stb), .reg_addr( reg_addr[10:0]), .cmnd_op( 
	cmnd_op[3:0]), .cmnd_addr( cmnd_addr[8:0]), .cmnd_table_id( 
	_zy_simnet_cio_32), .stat_code( _zy_simnet_stat_code_33_w$[0:2]), 
	.stat_datawords( _zy_simnet_stat_datawords_34_w$[0:4]), .stat_addr( 
	_zy_simnet_stat_addr_35_w$[0:8]), .stat_table_id( _zy_simnet_dio_36), 
	.capability_lst( _zy_simnet_capability_lst_37_w$[0:15]), 
	.capability_type( _zy_simnet_capability_type_38_w$[0:3]), .enable( 
	_zy_simnet_enable_39_w$), .addr_limit( 
	_zy_simnet_addr_limit_40_w$[0:8]), .wr_dat( wr_dat[95:0]), .rd_dat( 
	_zy_simnet_rd_dat_41_w$[0:95]), .sw_cs( _zy_simnet_sw_cs_42_w$), 
	.sw_ce( _zy_simnet_dio_43), .sw_we( _zy_simnet_sw_we_44_w$), 
	.sw_add( _zy_simnet_sw_add_45_w$[0:8]), .sw_wdat( 
	_zy_simnet_sw_wdat_46_w$[0:95]), .sw_rdat( _zy_simnet_dout_47_w$[0:95]), 
	.sw_match( _zy_simnet_cio_48), .sw_aindex( _zy_simnet_cio_49[0:7]), 
	.grant( _zy_simnet_tvar_50), .yield( _zy_simnet_yield_51_w$), 
	.reset( _zy_simnet_dio_52));
nx_ram_1rw_xcm110 u_ram ( clk, rst_n, ovstb, lvm, mlvm, mrdten, bimc_rst_n, 
	bimc_isync, bimc_idat, _zy_simnet_bimc_odat_23_w$, 
	_zy_simnet_bimc_osync_24_w$, 
	_zy_simnet_ro_uncorrectable_ecc_error_25_w$, 
	_zy_simnet_ram_bwe_26_w$[0:95], _zy_simnet_ram_din_27_w$[0:95], 
	_zy_simnet_add_28_w$[0:8], _zy_simnet_cs_29_w$, _zy_simnet_we_30_w$, 
	_zy_simnet_ram_dout_31_w$[0:95]);
nx_credit_manager u_nx_credit_manager ( 
	_zy_simnet_credit_available_17_w$[0:8], 
	_zy_simnet_hw_status_18_w$[0:11], clk, rst_n, _zy_simnet_sw_init_19_w$, 
	_zy_simnet_credit_return_20_w$[0:8], _zy_simnet_credit_used_21_w$[0:8], 
	_zy_simnet_sw_config_22_w$[0:11]);
sync_fifo u_sync_fifo ( .dout( _zy_simnet_im_din_dly_11_w$[0:95]), .full( 
	_zy_simnet_im_din_full_12_w$), .empty( 
	_zy_simnet_im_din_empty_13_w$), .clk( clk), .rst_n( rst_n), .din( 
	im_din[95:0]), .wr_en( _zy_simnet_im_vld_if_14_w$), .rd_en( 
	_zy_simnet_im_din_rd_15_w$), .space_avail( 
	_zy_simnet_im_din_space_avail_16_w$[0:3]));
ixc_context_read_105 _zzixc_ctxrd_0 ( { stat_addr[8], stat_addr[7], 
	stat_addr[6], stat_addr[5], stat_addr[4], stat_addr[3], stat_addr[2], 
	stat_addr[1], stat_addr[0], rd_dat[95], rd_dat[94], rd_dat[93], 
	rd_dat[92], rd_dat[91], rd_dat[90], rd_dat[89], rd_dat[88], 
	rd_dat[87], rd_dat[86], rd_dat[85], rd_dat[84], rd_dat[83], 
	rd_dat[82], rd_dat[81], rd_dat[80], rd_dat[79], rd_dat[78], 
	rd_dat[77], rd_dat[76], rd_dat[75], rd_dat[74], rd_dat[73], 
	rd_dat[72], rd_dat[71], rd_dat[70], rd_dat[69], rd_dat[68], 
	rd_dat[67], rd_dat[66], rd_dat[65], rd_dat[64], rd_dat[63], 
	rd_dat[62], rd_dat[61], rd_dat[60], rd_dat[59], rd_dat[58], 
	rd_dat[57], rd_dat[56], rd_dat[55], rd_dat[54], rd_dat[53], 
	rd_dat[52], rd_dat[51], rd_dat[50], rd_dat[49], rd_dat[48], 
	rd_dat[47], rd_dat[46], rd_dat[45], rd_dat[44], rd_dat[43], 
	rd_dat[42], rd_dat[41], rd_dat[40], rd_dat[39], rd_dat[38], 
	rd_dat[37], rd_dat[36], rd_dat[35], rd_dat[34], rd_dat[33], 
	rd_dat[32], rd_dat[31], rd_dat[30], rd_dat[29], rd_dat[28], 
	rd_dat[27], rd_dat[26], rd_dat[25], rd_dat[24], rd_dat[23], 
	rd_dat[22], rd_dat[21], rd_dat[20], rd_dat[19], rd_dat[18], 
	rd_dat[17], rd_dat[16], rd_dat[15], rd_dat[14], rd_dat[13], 
	rd_dat[12], rd_dat[11], rd_dat[10], rd_dat[9], rd_dat[8], rd_dat[7], 
	rd_dat[6], rd_dat[5], rd_dat[4], rd_dat[3], rd_dat[2], rd_dat[1], 
	rd_dat[0]});
ixc_assign _zz_strnp_55 ( yield, _zy_simnet_yield_51_w$);
Q_INV U421 ( .A(hw_cs), .Z(_zy_simnet_tvar_50));
ixc_assign_96 _zz_strnp_54 ( _zy_simnet_dout_47_w$[0:95], ram_dout[95:0]);
ixc_assign_96 _zz_strnp_53 ( sw_wdat[95:0], _zy_simnet_sw_wdat_46_w$[0:95]);
ixc_assign_9 _zz_strnp_52 ( sw_add[8:0], _zy_simnet_sw_add_45_w$[0:8]);
ixc_assign _zz_strnp_51 ( sw_we, _zy_simnet_sw_we_44_w$);
ixc_assign _zz_strnp_50 ( sw_cs, _zy_simnet_sw_cs_42_w$);
ixc_assign_96 _zz_strnp_49 ( rd_dat[95:0], _zy_simnet_rd_dat_41_w$[0:95]);
ixc_assign_9 _zz_strnp_48 ( _zy_simnet_addr_limit_40_w$[0:8], addr_limit[8:0]);
ixc_assign _zz_strnp_47 ( enable, _zy_simnet_enable_39_w$);
ixc_assign_4 _zz_strnp_46 ( capability_type[3:0], 
	_zy_simnet_capability_type_38_w$[0:3]);
ixc_assign_16 _zz_strnp_45 ( capability_lst[15:0], 
	_zy_simnet_capability_lst_37_w$[0:15]);
ixc_assign_9 _zz_strnp_44 ( stat_addr[8:0], _zy_simnet_stat_addr_35_w$[0:8]);
ixc_assign_5 _zz_strnp_43 ( stat_datawords[4:0], 
	_zy_simnet_stat_datawords_34_w$[0:4]);
ixc_assign_3 _zz_strnp_42 ( stat_code[2:0], _zy_simnet_stat_code_33_w$[0:2]);
ixc_assign_96 _zz_strnp_41 ( ram_dout[95:0], _zy_simnet_ram_dout_31_w$[0:95]);
ixc_assign _zz_strnp_40 ( _zy_simnet_we_30_w$, we);
ixc_assign _zz_strnp_39 ( _zy_simnet_cs_29_w$, cs);
ixc_assign_9 _zz_strnp_38 ( _zy_simnet_add_28_w$[0:8], add[8:0]);
ixc_assign_96 _zz_strnp_37 ( _zy_simnet_ram_din_27_w$[0:95], ram_din[95:0]);
ixc_assign_96 _zz_strnp_36 ( _zy_simnet_ram_bwe_26_w$[0:95], ram_bwe[95:0]);
ixc_assign _zz_strnp_35 ( ro_uncorrectable_ecc_error, 
	_zy_simnet_ro_uncorrectable_ecc_error_25_w$);
ixc_assign _zz_strnp_34 ( bimc_osync, _zy_simnet_bimc_osync_24_w$);
ixc_assign _zz_strnp_33 ( bimc_odat, _zy_simnet_bimc_odat_23_w$);
ixc_assign_12 _zz_strnp_32 ( _zy_simnet_sw_config_22_w$[0:11], 
	sw_config[11:0]);
ixc_assign_9 _zz_strnp_31 ( _zy_simnet_credit_used_21_w$[0:8], 
	credit_used[8:0]);
ixc_assign_9 _zz_strnp_30 ( _zy_simnet_credit_return_20_w$[0:8], 
	credit_return[8:0]);
ixc_assign _zz_strnp_29 ( _zy_simnet_sw_init_19_w$, sw_init);
ixc_assign_12 _zz_strnp_28 ( hw_status[11:0], 
	_zy_simnet_hw_status_18_w$[0:11]);
ixc_assign_9 _zz_strnp_27 ( credit_available[8:0], 
	_zy_simnet_credit_available_17_w$[0:8]);
ixc_assign_4 _zz_strnp_26 ( im_din_space_avail[3:0], 
	_zy_simnet_im_din_space_avail_16_w$[0:3]);
ixc_assign _zz_strnp_25 ( _zy_simnet_im_din_rd_15_w$, im_din_rd);
ixc_assign _zz_strnp_24 ( _zy_simnet_im_vld_if_14_w$, im_vld_if);
ixc_assign _zz_strnp_23 ( im_din_empty, _zy_simnet_im_din_empty_13_w$);
ixc_assign _zz_strnp_22 ( im_din_full, _zy_simnet_im_din_full_12_w$);
ixc_assign_96 _zz_strnp_21 ( im_din_dly[95:0], 
	_zy_simnet_im_din_dly_11_w$[0:95]);
ixc_assign_12 _zz_strnp_20 ( _zy_simnet_im_status_10_w$[0:11], 
	im_status[11:0]);
ixc_assign_2 _zz_strnp_19 ( _zy_simnet_im_available_9_w$[0:1], 
	im_available[1:0]);
ixc_assign _zz_strnp_18 ( _zy_simnet_ro_uncorrectable_ecc_error_8_w$, 
	ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_17 ( _zy_simnet_bimc_osync_7_w$, bimc_osync);
ixc_assign _zz_strnp_16 ( _zy_simnet_bimc_odat_6_w$, bimc_odat);
ixc_assign_96 _zz_strnp_15 ( _zy_simnet_rd_dat_5_w$[0:95], rd_dat[95:0]);
ixc_assign_4 _zz_strnp_14 ( _zy_simnet_capability_type_4_w$[0:3], 
	capability_type[3:0]);
ixc_assign_16 _zz_strnp_13 ( _zy_simnet_capability_lst_3_w$[0:15], 
	capability_lst[15:0]);
ixc_assign_9 _zz_strnp_12 ( _zy_simnet_stat_addr_2_w$[0:8], stat_addr[8:0]);
ixc_assign_5 _zz_strnp_11 ( _zy_simnet_stat_datawords_1_w$[0:4], 
	stat_datawords[4:0]);
ixc_assign_3 _zz_strnp_10 ( _zy_simnet_stat_code_0_w$[0:2], stat_code[2:0]);
ixc_assign _zz_strnp_9 ( hw_yield, yield);
Q_OR02 U468 ( .A0(hw_cs), .A1(sw_cs), .Z(cs));
ixc_assign_96 _zz_strnp_8 ( hw_din[95:0], im_din_dly[95:0]);
ixc_assign _zz_strnp_7 ( hw_we, im_vld_qual);
ixc_assign _zz_strnp_6 ( hw_cs, im_vld_qual);
Q_OR03 U472 ( .A0(n13), .A1(im_consumed_reg[0]), .A2(im_consumed_reg[1]), .Z(im_rd_stb));
Q_AN02 U473 ( .A0(wr_stb), .A1(n12), .Z(n13));
Q_NR03 U474 ( .A0(n9), .A1(n10), .A2(n11), .Z(n12));
Q_OR03 U475 ( .A0(reg_addr[1]), .A1(reg_addr[0]), .A2(n8), .Z(n11));
Q_OR03 U476 ( .A0(reg_addr[4]), .A1(n5), .A2(reg_addr[2]), .Z(n10));
Q_OR03 U477 ( .A0(n6), .A1(reg_addr[6]), .A2(reg_addr[5]), .Z(n9));
Q_OR03 U478 ( .A0(reg_addr[10]), .A1(reg_addr[9]), .A2(n7), .Z(n8));
Q_INV U479 ( .A(reg_addr[8]), .Z(n7));
Q_INV U480 ( .A(reg_addr[7]), .Z(n6));
Q_INV U481 ( .A(reg_addr[3]), .Z(n5));
ixc_assign_2 _zz_strnp_5 ( im_status[11:10], im_available_pre[1:0]);
ixc_assign_9 _zz_strnp_4 ( im_status[8:0], wr_pointer[8:0]);
ixc_assign _zz_strnp_3 ( im_status[9], overflow);
Q_AN02 U485 ( .A0(ready), .A1(bank_status), .Z(im_available_pre[1]));
Q_AN02 U486 ( .A0(ready), .A1(n51), .Z(im_available_pre[0]));
ixc_assign_10 _zz_strnp_2 ( sw_config[9:0], im_config[9:0]);
ixc_assign _zz_strnp_1 ( im_vld_if, im_vld_mod);
ixc_assign _zz_strnp_0 ( im_din_rd, im_vld_dly);
Q_AN02 U490 ( .A0(n4), .A1(n46), .Z(im_vld_dly));
Q_INV U491 ( .A(im_din_empty), .Z(n4));
Q_AN02 U492 ( .A0(im_vld), .A1(im_rdy), .Z(im_vld_mod));
Q_AN02 U493 ( .A0(im_config[10]), .A1(im_config[11]), .Z(sw_init));
Q_OR03 U494 ( .A0(hw_add[8]), .A1(hw_add[7]), .A2(hw_add[6]), .Z(n14));
Q_OR03 U495 ( .A0(hw_add[5]), .A1(hw_add[4]), .A2(hw_add[3]), .Z(n15));
Q_OR03 U496 ( .A0(hw_add[2]), .A1(hw_add[1]), .A2(hw_add[0]), .Z(n16));
Q_NR03 U497 ( .A0(n14), .A1(n15), .A2(n16), .Z(n17));
Q_XNR2 U498 ( .A0(hw_add[1]), .A1(hw_add[0]), .Z(n18));
Q_OR02 U499 ( .A0(hw_add[1]), .A1(hw_add[0]), .Z(n19));
Q_XNR2 U500 ( .A0(hw_add[2]), .A1(n19), .Z(n20));
Q_OR02 U501 ( .A0(hw_add[2]), .A1(n19), .Z(n21));
Q_XNR2 U502 ( .A0(hw_add[3]), .A1(n21), .Z(n22));
Q_OR02 U503 ( .A0(hw_add[3]), .A1(n21), .Z(n23));
Q_XNR2 U504 ( .A0(hw_add[4]), .A1(n23), .Z(n24));
Q_OR02 U505 ( .A0(hw_add[4]), .A1(n23), .Z(n25));
Q_XNR2 U506 ( .A0(hw_add[5]), .A1(n25), .Z(n26));
Q_OR02 U507 ( .A0(hw_add[5]), .A1(n25), .Z(n27));
Q_XNR2 U508 ( .A0(hw_add[6]), .A1(n27), .Z(n28));
Q_OR02 U509 ( .A0(hw_add[6]), .A1(n27), .Z(n29));
Q_XNR2 U510 ( .A0(hw_add[7]), .A1(n29), .Z(n30));
Q_NR02 U511 ( .A0(hw_add[7]), .A1(n29), .Z(n31));
Q_OR02 U512 ( .A0(n17), .A1(n18), .Z(wr_pointer[1]));
Q_OR02 U513 ( .A0(n17), .A1(n20), .Z(wr_pointer[2]));
Q_OR02 U514 ( .A0(n17), .A1(n22), .Z(wr_pointer[3]));
Q_OR02 U515 ( .A0(n17), .A1(n24), .Z(wr_pointer[4]));
Q_OR02 U516 ( .A0(n17), .A1(n26), .Z(wr_pointer[5]));
Q_OR02 U517 ( .A0(n17), .A1(n28), .Z(wr_pointer[6]));
Q_OR02 U518 ( .A0(n17), .A1(n30), .Z(wr_pointer[7]));
Q_OR02 U519 ( .A0(n17), .A1(n89), .Z(wr_pointer[8]));
Q_OR02 U520 ( .A0(n35), .A1(n32), .Z(im_rdy));
Q_AO21 U521 ( .A0(n34), .A1(n33), .B0(n81), .Z(n32));
Q_INV U522 ( .A(hw_yield), .Z(n33));
Q_AO21 U523 ( .A0(im_din_space_avail[2]), .A1(im_din_space_avail[1]), .B0(im_din_space_avail[3]), .Z(n34));
Q_MX02 U524 ( .S(n35), .A0(n36), .A1(n37), .Z(ready));
Q_OR02 U525 ( .A0(n43), .A1(n50), .Z(n35));
Q_AN02 U526 ( .A0(n87), .A1(n54), .Z(n36));
Q_OR02 U527 ( .A0(n39), .A1(n38), .Z(n37));
Q_OR03 U528 ( .A0(hw_status[0]), .A1(n41), .A2(n40), .Z(n38));
Q_OR03 U529 ( .A0(hw_status[3]), .A1(hw_status[2]), .A2(hw_status[1]), .Z(n39));
Q_OR03 U530 ( .A0(hw_status[6]), .A1(hw_status[5]), .A2(hw_status[4]), .Z(n40));
Q_OR03 U531 ( .A0(hw_status[9]), .A1(hw_status[8]), .A2(hw_status[7]), .Z(n41));
Q_MX02 U532 ( .S(n50), .A0(n42), .A1(n46), .Z(n45));
Q_OR02 U533 ( .A0(n43), .A1(n87), .Z(n42));
Q_AN02 U534 ( .A0(im_config[10]), .A1(n44), .Z(n43));
Q_INV U535 ( .A(im_config[11]), .Z(n44));
Q_AN02 U536 ( .A0(n45), .A1(im_vld_dly), .Z(im_vld_qual));
Q_OR03 U537 ( .A0(n49), .A1(n48), .A2(n47), .Z(n46));
Q_OR03 U538 ( .A0(credit_available[2]), .A1(credit_available[1]), .A2(credit_available[0]), .Z(n47));
Q_OR03 U539 ( .A0(credit_available[5]), .A1(credit_available[4]), .A2(credit_available[3]), .Z(n48));
Q_OR03 U540 ( .A0(credit_available[8]), .A1(credit_available[7]), .A2(credit_available[6]), .Z(n49));
Q_NR02 U541 ( .A0(im_config[10]), .A1(im_config[11]), .Z(n50));
Q_MX02 U542 ( .S(hw_cs), .A0(sw_add[0]), .A1(hw_add[0]), .Z(add[0]));
Q_MX02 U543 ( .S(hw_cs), .A0(sw_add[1]), .A1(hw_add[1]), .Z(add[1]));
Q_MX02 U544 ( .S(hw_cs), .A0(sw_add[2]), .A1(hw_add[2]), .Z(add[2]));
Q_MX02 U545 ( .S(hw_cs), .A0(sw_add[3]), .A1(hw_add[3]), .Z(add[3]));
Q_MX02 U546 ( .S(hw_cs), .A0(sw_add[4]), .A1(hw_add[4]), .Z(add[4]));
Q_MX02 U547 ( .S(hw_cs), .A0(sw_add[5]), .A1(hw_add[5]), .Z(add[5]));
Q_MX02 U548 ( .S(hw_cs), .A0(sw_add[6]), .A1(hw_add[6]), .Z(add[6]));
Q_MX02 U549 ( .S(hw_cs), .A0(sw_add[7]), .A1(hw_add[7]), .Z(add[7]));
Q_MX02 U550 ( .S(hw_cs), .A0(sw_add[8]), .A1(hw_add[8]), .Z(add[8]));
Q_MX02 U551 ( .S(hw_cs), .A0(sw_wdat[0]), .A1(hw_din[0]), .Z(din[0]));
Q_MX02 U552 ( .S(hw_cs), .A0(sw_wdat[1]), .A1(hw_din[1]), .Z(din[1]));
Q_MX02 U553 ( .S(hw_cs), .A0(sw_wdat[2]), .A1(hw_din[2]), .Z(din[2]));
Q_MX02 U554 ( .S(hw_cs), .A0(sw_wdat[3]), .A1(hw_din[3]), .Z(din[3]));
Q_MX02 U555 ( .S(hw_cs), .A0(sw_wdat[4]), .A1(hw_din[4]), .Z(din[4]));
Q_MX02 U556 ( .S(hw_cs), .A0(sw_wdat[5]), .A1(hw_din[5]), .Z(din[5]));
Q_MX02 U557 ( .S(hw_cs), .A0(sw_wdat[6]), .A1(hw_din[6]), .Z(din[6]));
Q_MX02 U558 ( .S(hw_cs), .A0(sw_wdat[7]), .A1(hw_din[7]), .Z(din[7]));
Q_MX02 U559 ( .S(hw_cs), .A0(sw_wdat[8]), .A1(hw_din[8]), .Z(din[8]));
Q_MX02 U560 ( .S(hw_cs), .A0(sw_wdat[9]), .A1(hw_din[9]), .Z(din[9]));
Q_MX02 U561 ( .S(hw_cs), .A0(sw_wdat[10]), .A1(hw_din[10]), .Z(din[10]));
Q_MX02 U562 ( .S(hw_cs), .A0(sw_wdat[11]), .A1(hw_din[11]), .Z(din[11]));
Q_MX02 U563 ( .S(hw_cs), .A0(sw_wdat[12]), .A1(hw_din[12]), .Z(din[12]));
Q_MX02 U564 ( .S(hw_cs), .A0(sw_wdat[13]), .A1(hw_din[13]), .Z(din[13]));
Q_MX02 U565 ( .S(hw_cs), .A0(sw_wdat[14]), .A1(hw_din[14]), .Z(din[14]));
Q_MX02 U566 ( .S(hw_cs), .A0(sw_wdat[15]), .A1(hw_din[15]), .Z(din[15]));
Q_MX02 U567 ( .S(hw_cs), .A0(sw_wdat[16]), .A1(hw_din[16]), .Z(din[16]));
Q_MX02 U568 ( .S(hw_cs), .A0(sw_wdat[17]), .A1(hw_din[17]), .Z(din[17]));
Q_MX02 U569 ( .S(hw_cs), .A0(sw_wdat[18]), .A1(hw_din[18]), .Z(din[18]));
Q_MX02 U570 ( .S(hw_cs), .A0(sw_wdat[19]), .A1(hw_din[19]), .Z(din[19]));
Q_MX02 U571 ( .S(hw_cs), .A0(sw_wdat[20]), .A1(hw_din[20]), .Z(din[20]));
Q_MX02 U572 ( .S(hw_cs), .A0(sw_wdat[21]), .A1(hw_din[21]), .Z(din[21]));
Q_MX02 U573 ( .S(hw_cs), .A0(sw_wdat[22]), .A1(hw_din[22]), .Z(din[22]));
Q_MX02 U574 ( .S(hw_cs), .A0(sw_wdat[23]), .A1(hw_din[23]), .Z(din[23]));
Q_MX02 U575 ( .S(hw_cs), .A0(sw_wdat[24]), .A1(hw_din[24]), .Z(din[24]));
Q_MX02 U576 ( .S(hw_cs), .A0(sw_wdat[25]), .A1(hw_din[25]), .Z(din[25]));
Q_MX02 U577 ( .S(hw_cs), .A0(sw_wdat[26]), .A1(hw_din[26]), .Z(din[26]));
Q_MX02 U578 ( .S(hw_cs), .A0(sw_wdat[27]), .A1(hw_din[27]), .Z(din[27]));
Q_MX02 U579 ( .S(hw_cs), .A0(sw_wdat[28]), .A1(hw_din[28]), .Z(din[28]));
Q_MX02 U580 ( .S(hw_cs), .A0(sw_wdat[29]), .A1(hw_din[29]), .Z(din[29]));
Q_MX02 U581 ( .S(hw_cs), .A0(sw_wdat[30]), .A1(hw_din[30]), .Z(din[30]));
Q_MX02 U582 ( .S(hw_cs), .A0(sw_wdat[31]), .A1(hw_din[31]), .Z(din[31]));
Q_MX02 U583 ( .S(hw_cs), .A0(sw_wdat[32]), .A1(hw_din[32]), .Z(din[32]));
Q_MX02 U584 ( .S(hw_cs), .A0(sw_wdat[33]), .A1(hw_din[33]), .Z(din[33]));
Q_MX02 U585 ( .S(hw_cs), .A0(sw_wdat[34]), .A1(hw_din[34]), .Z(din[34]));
Q_MX02 U586 ( .S(hw_cs), .A0(sw_wdat[35]), .A1(hw_din[35]), .Z(din[35]));
Q_MX02 U587 ( .S(hw_cs), .A0(sw_wdat[36]), .A1(hw_din[36]), .Z(din[36]));
Q_MX02 U588 ( .S(hw_cs), .A0(sw_wdat[37]), .A1(hw_din[37]), .Z(din[37]));
Q_MX02 U589 ( .S(hw_cs), .A0(sw_wdat[38]), .A1(hw_din[38]), .Z(din[38]));
Q_MX02 U590 ( .S(hw_cs), .A0(sw_wdat[39]), .A1(hw_din[39]), .Z(din[39]));
Q_MX02 U591 ( .S(hw_cs), .A0(sw_wdat[40]), .A1(hw_din[40]), .Z(din[40]));
Q_MX02 U592 ( .S(hw_cs), .A0(sw_wdat[41]), .A1(hw_din[41]), .Z(din[41]));
Q_MX02 U593 ( .S(hw_cs), .A0(sw_wdat[42]), .A1(hw_din[42]), .Z(din[42]));
Q_MX02 U594 ( .S(hw_cs), .A0(sw_wdat[43]), .A1(hw_din[43]), .Z(din[43]));
Q_MX02 U595 ( .S(hw_cs), .A0(sw_wdat[44]), .A1(hw_din[44]), .Z(din[44]));
Q_MX02 U596 ( .S(hw_cs), .A0(sw_wdat[45]), .A1(hw_din[45]), .Z(din[45]));
Q_MX02 U597 ( .S(hw_cs), .A0(sw_wdat[46]), .A1(hw_din[46]), .Z(din[46]));
Q_MX02 U598 ( .S(hw_cs), .A0(sw_wdat[47]), .A1(hw_din[47]), .Z(din[47]));
Q_MX02 U599 ( .S(hw_cs), .A0(sw_wdat[48]), .A1(hw_din[48]), .Z(din[48]));
Q_MX02 U600 ( .S(hw_cs), .A0(sw_wdat[49]), .A1(hw_din[49]), .Z(din[49]));
Q_MX02 U601 ( .S(hw_cs), .A0(sw_wdat[50]), .A1(hw_din[50]), .Z(din[50]));
Q_MX02 U602 ( .S(hw_cs), .A0(sw_wdat[51]), .A1(hw_din[51]), .Z(din[51]));
Q_MX02 U603 ( .S(hw_cs), .A0(sw_wdat[52]), .A1(hw_din[52]), .Z(din[52]));
Q_MX02 U604 ( .S(hw_cs), .A0(sw_wdat[53]), .A1(hw_din[53]), .Z(din[53]));
Q_MX02 U605 ( .S(hw_cs), .A0(sw_wdat[54]), .A1(hw_din[54]), .Z(din[54]));
Q_MX02 U606 ( .S(hw_cs), .A0(sw_wdat[55]), .A1(hw_din[55]), .Z(din[55]));
Q_MX02 U607 ( .S(hw_cs), .A0(sw_wdat[56]), .A1(hw_din[56]), .Z(din[56]));
Q_MX02 U608 ( .S(hw_cs), .A0(sw_wdat[57]), .A1(hw_din[57]), .Z(din[57]));
Q_MX02 U609 ( .S(hw_cs), .A0(sw_wdat[58]), .A1(hw_din[58]), .Z(din[58]));
Q_MX02 U610 ( .S(hw_cs), .A0(sw_wdat[59]), .A1(hw_din[59]), .Z(din[59]));
Q_MX02 U611 ( .S(hw_cs), .A0(sw_wdat[60]), .A1(hw_din[60]), .Z(din[60]));
Q_MX02 U612 ( .S(hw_cs), .A0(sw_wdat[61]), .A1(hw_din[61]), .Z(din[61]));
Q_MX02 U613 ( .S(hw_cs), .A0(sw_wdat[62]), .A1(hw_din[62]), .Z(din[62]));
Q_MX02 U614 ( .S(hw_cs), .A0(sw_wdat[63]), .A1(hw_din[63]), .Z(din[63]));
Q_MX02 U615 ( .S(hw_cs), .A0(sw_wdat[64]), .A1(hw_din[64]), .Z(din[64]));
Q_MX02 U616 ( .S(hw_cs), .A0(sw_wdat[65]), .A1(hw_din[65]), .Z(din[65]));
Q_MX02 U617 ( .S(hw_cs), .A0(sw_wdat[66]), .A1(hw_din[66]), .Z(din[66]));
Q_MX02 U618 ( .S(hw_cs), .A0(sw_wdat[67]), .A1(hw_din[67]), .Z(din[67]));
Q_MX02 U619 ( .S(hw_cs), .A0(sw_wdat[68]), .A1(hw_din[68]), .Z(din[68]));
Q_MX02 U620 ( .S(hw_cs), .A0(sw_wdat[69]), .A1(hw_din[69]), .Z(din[69]));
Q_MX02 U621 ( .S(hw_cs), .A0(sw_wdat[70]), .A1(hw_din[70]), .Z(din[70]));
Q_MX02 U622 ( .S(hw_cs), .A0(sw_wdat[71]), .A1(hw_din[71]), .Z(din[71]));
Q_MX02 U623 ( .S(hw_cs), .A0(sw_wdat[72]), .A1(hw_din[72]), .Z(din[72]));
Q_MX02 U624 ( .S(hw_cs), .A0(sw_wdat[73]), .A1(hw_din[73]), .Z(din[73]));
Q_MX02 U625 ( .S(hw_cs), .A0(sw_wdat[74]), .A1(hw_din[74]), .Z(din[74]));
Q_MX02 U626 ( .S(hw_cs), .A0(sw_wdat[75]), .A1(hw_din[75]), .Z(din[75]));
Q_MX02 U627 ( .S(hw_cs), .A0(sw_wdat[76]), .A1(hw_din[76]), .Z(din[76]));
Q_MX02 U628 ( .S(hw_cs), .A0(sw_wdat[77]), .A1(hw_din[77]), .Z(din[77]));
Q_MX02 U629 ( .S(hw_cs), .A0(sw_wdat[78]), .A1(hw_din[78]), .Z(din[78]));
Q_MX02 U630 ( .S(hw_cs), .A0(sw_wdat[79]), .A1(hw_din[79]), .Z(din[79]));
Q_MX02 U631 ( .S(hw_cs), .A0(sw_wdat[80]), .A1(hw_din[80]), .Z(din[80]));
Q_MX02 U632 ( .S(hw_cs), .A0(sw_wdat[81]), .A1(hw_din[81]), .Z(din[81]));
Q_MX02 U633 ( .S(hw_cs), .A0(sw_wdat[82]), .A1(hw_din[82]), .Z(din[82]));
Q_MX02 U634 ( .S(hw_cs), .A0(sw_wdat[83]), .A1(hw_din[83]), .Z(din[83]));
Q_MX02 U635 ( .S(hw_cs), .A0(sw_wdat[84]), .A1(hw_din[84]), .Z(din[84]));
Q_MX02 U636 ( .S(hw_cs), .A0(sw_wdat[85]), .A1(hw_din[85]), .Z(din[85]));
Q_MX02 U637 ( .S(hw_cs), .A0(sw_wdat[86]), .A1(hw_din[86]), .Z(din[86]));
Q_MX02 U638 ( .S(hw_cs), .A0(sw_wdat[87]), .A1(hw_din[87]), .Z(din[87]));
Q_MX02 U639 ( .S(hw_cs), .A0(sw_wdat[88]), .A1(hw_din[88]), .Z(din[88]));
Q_MX02 U640 ( .S(hw_cs), .A0(sw_wdat[89]), .A1(hw_din[89]), .Z(din[89]));
Q_MX02 U641 ( .S(hw_cs), .A0(sw_wdat[90]), .A1(hw_din[90]), .Z(din[90]));
Q_MX02 U642 ( .S(hw_cs), .A0(sw_wdat[91]), .A1(hw_din[91]), .Z(din[91]));
Q_MX02 U643 ( .S(hw_cs), .A0(sw_wdat[92]), .A1(hw_din[92]), .Z(din[92]));
Q_MX02 U644 ( .S(hw_cs), .A0(sw_wdat[93]), .A1(hw_din[93]), .Z(din[93]));
Q_MX02 U645 ( .S(hw_cs), .A0(sw_wdat[94]), .A1(hw_din[94]), .Z(din[94]));
Q_MX02 U646 ( .S(hw_cs), .A0(sw_wdat[95]), .A1(hw_din[95]), .Z(din[95]));
Q_MX02 U647 ( .S(hw_cs), .A0(sw_we), .A1(hw_we), .Z(we));
Q_FDP1 \im_available_REG[1] ( .CK(clk), .R(rst_n), .D(im_available_pre[1]), .Q(im_available[1]), .QN( ));
Q_FDP1 \im_available_REG[0] ( .CK(clk), .R(rst_n), .D(im_available_pre[0]), .Q(im_available[0]), .QN( ));
Q_FDP1 \im_consumed_reg_REG[1] ( .CK(clk), .R(rst_n), .D(im_consumed[1]), .Q(im_consumed_reg[1]), .QN( ));
Q_FDP1 \im_consumed_reg_REG[0] ( .CK(clk), .R(rst_n), .D(im_consumed[0]), .Q(im_consumed_reg[0]), .QN( ));
Q_AO21 U652 ( .A0(im_vld_mod), .A1(im_din_full), .B0(overflow), .Z(n52));
Q_INV U653 ( .A(im_config[10]), .Z(n53));
Q_AN02 U654 ( .A0(n53), .A1(im_config[11]), .Z(n87));
Q_OR02 U655 ( .A0(hw_status[9]), .A1(hw_status[8]), .Z(n54));
Q_AN02 U656 ( .A0(credit_return[8]), .A1(n54), .Z(n84));
Q_AD01HF U657 ( .A0(hw_add[2]), .B0(n55), .S(n56), .CO(n57));
Q_AD01HF U658 ( .A0(hw_add[3]), .B0(n57), .S(n58), .CO(n59));
Q_AD01HF U659 ( .A0(hw_add[4]), .B0(n59), .S(n60), .CO(n61));
Q_AD01HF U660 ( .A0(hw_add[5]), .B0(n61), .S(n62), .CO(n63));
Q_AD01HF U661 ( .A0(hw_add[6]), .B0(n63), .S(n64), .CO(n65));
Q_AD01HF U662 ( .A0(hw_add[7]), .B0(n65), .S(n66), .CO(n67));
Q_XOR2 U663 ( .A0(hw_add[8]), .A1(n67), .Z(n68));
Q_AN02 U664 ( .A0(n84), .A1(n51), .Z(n69));
Q_AN02 U665 ( .A0(n86), .A1(wr_pointer[0]), .Z(n70));
Q_AN02 U666 ( .A0(n86), .A1(n3), .Z(n71));
Q_AN02 U667 ( .A0(n86), .A1(n56), .Z(n72));
Q_AN02 U668 ( .A0(n86), .A1(n58), .Z(n73));
Q_AN02 U669 ( .A0(n86), .A1(n60), .Z(n74));
Q_AN02 U670 ( .A0(n86), .A1(n62), .Z(n75));
Q_AN02 U671 ( .A0(n86), .A1(n64), .Z(n76));
Q_AN02 U672 ( .A0(n86), .A1(n66), .Z(n77));
Q_FDP1 \hw_add_REG[8] ( .CK(clk), .R(rst_n), .D(n78), .Q(hw_add[8]), .QN(n88));
Q_MX03 U674 ( .S0(n86), .S1(n82), .A0(n85), .A1(n68), .A2(hw_add[8]), .Z(n78));
Q_FDP1 overflow_REG  ( .CK(clk), .R(rst_n), .D(n52), .Q(overflow), .QN( ));
Q_AN03 U676 ( .A0(im_vld_qual), .A1(n88), .A2(n79), .Z(n85));
Q_INV U677 ( .A(n80), .Z(n79));
Q_AN02 U678 ( .A0(im_vld_qual), .A1(n80), .Z(n86));
Q_ND02 U679 ( .A0(n87), .A1(im_din_dly[31]), .Z(n80));
Q_INV U680 ( .A(n87), .Z(n81));
Q_NR02 U681 ( .A0(sw_init), .A1(im_vld_qual), .Z(n82));
Q_NR02 U682 ( .A0(sw_init), .A1(n84), .Z(n83));
Q_XOR2 U683 ( .A0(n31), .A1(hw_add[8]), .Z(n89));
Q_MX02 U684 ( .S(n96), .A0(hw_add[0]), .A1(n98), .Z(credit_used[0]));
Q_NR02 U685 ( .A0(n96), .A1(n18), .Z(credit_used[1]));
Q_NR02 U686 ( .A0(n96), .A1(n20), .Z(credit_used[2]));
Q_NR02 U687 ( .A0(n96), .A1(n22), .Z(credit_used[3]));
Q_NR02 U688 ( .A0(n96), .A1(n24), .Z(credit_used[4]));
Q_NR02 U689 ( .A0(n96), .A1(n26), .Z(credit_used[5]));
Q_NR02 U690 ( .A0(n96), .A1(n28), .Z(credit_used[6]));
Q_NR02 U691 ( .A0(n96), .A1(n30), .Z(credit_used[7]));
Q_AN02 U692 ( .A0(n99), .A1(n90), .Z(credit_used[8]));
Q_AN02 U693 ( .A0(n91), .A1(n92), .Z(n98));
Q_INV U694 ( .A(n93), .Z(n91));
Q_OR02 U695 ( .A0(n94), .A1(im_config[10]), .Z(n93));
Q_ND02 U696 ( .A0(hw_add[8]), .A1(n97), .Z(n92));
Q_INV U697 ( .A(n96), .Z(n99));
Q_OR02 U698 ( .A0(n93), .A1(n95), .Z(n96));
Q_INV U699 ( .A(hw_we), .Z(n94));
Q_INV U700 ( .A(n97), .Z(n95));
Q_AN02 U701 ( .A0(im_din_dly[31]), .A1(im_config[11]), .Z(n97));
Q_XNR2 U702 ( .A0(n98), .A1(n89), .Z(n90));
Q_AN02 U703 ( .A0(hw_add[1]), .A1(hw_add[0]), .Z(n55));
Q_INV U704 ( .A(n83), .Z(n100));
Q_FDP4EP bank_status_REG  ( .CK(clk), .CE(n100), .R(n101), .D(n69), .Q(bank_status));
Q_INV U706 ( .A(rst_n), .Z(n101));
Q_INV U707 ( .A(bank_status), .Z(n51));
Q_INV U708 ( .A(n82), .Z(n102));
Q_FDP4EP \hw_add_REG[0] ( .CK(clk), .CE(n102), .R(n101), .D(n70), .Q(hw_add[0]));
Q_INV U710 ( .A(hw_add[0]), .Z(wr_pointer[0]));
Q_FDP4EP \hw_add_REG[1] ( .CK(clk), .CE(n102), .R(n101), .D(n71), .Q(hw_add[1]));
Q_FDP4EP \hw_add_REG[2] ( .CK(clk), .CE(n102), .R(n101), .D(n72), .Q(hw_add[2]));
Q_FDP4EP \hw_add_REG[3] ( .CK(clk), .CE(n102), .R(n101), .D(n73), .Q(hw_add[3]));
Q_FDP4EP \hw_add_REG[4] ( .CK(clk), .CE(n102), .R(n101), .D(n74), .Q(hw_add[4]));
Q_FDP4EP \hw_add_REG[5] ( .CK(clk), .CE(n102), .R(n101), .D(n75), .Q(hw_add[5]));
Q_FDP4EP \hw_add_REG[6] ( .CK(clk), .CE(n102), .R(n101), .D(n76), .Q(hw_add[6]));
Q_FDP4EP \hw_add_REG[7] ( .CK(clk), .CE(n102), .R(n101), .D(n77), .Q(hw_add[7]));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\im_status.wr_pointer  (1,0) 1 8 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\im_din.data.data  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\im_din.desc.bytes_vld  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\im_din.desc.im_meta  (1,0) 1 22 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\im_config.mode  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\im_config.wr_credit_config  (1,0) 1 9 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\im_din_dly.data.data  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\im_din_dly.desc.bytes_vld  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\im_din_dly.desc.im_meta  (1,0) 1 22 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\hw_status.credit_issued  (1,0) 1 9 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\sw_config.credit_limit  (1,0) 1 9 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "11"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "im_available 2 \im_available.bank_hi  \im_available.bank_lo "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "im_status 3 \im_status.available  { \im_status.available.bank_hi  \im_status.available.bank_lo  } \im_status.overflow  \im_status.wr_pointer "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "im_din 2 \im_din.data  { \im_din.data.data  } \im_din.desc  { \im_din.desc.eob  \im_din.desc.bytes_vld  \im_din.desc.im_meta  }"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "im_consumed 2 \im_consumed.bank_hi  \im_consumed.bank_lo "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "im_config 2 \im_config.mode  \im_config.wr_credit_config "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r6 "im_din_dly 2 \im_din_dly.data  { \im_din_dly.data.data  } \im_din_dly.desc  { \im_din_dly.desc.eob  \im_din_dly.desc.bytes_vld  \im_din_dly.desc.im_meta  }"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r7 "im_available_pre 2 \im_available_pre.bank_hi  \im_available_pre.bank_lo "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r8 "im_consumed_reg 2 \im_consumed_reg.bank_hi  \im_consumed_reg.bank_lo "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r9 "hw_status 3 \hw_status.used_err  \hw_status.return_err  \hw_status.credit_issued "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r10 "sw_config 3 \sw_config.dis_used  \sw_config.dis_return  \sw_config.credit_limit "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "10"
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
endmodule
