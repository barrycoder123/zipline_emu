
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_axi4s2_slv ( .axi4s_ib_out( {\axi4s_ib_out.tready } ), .axi4s_slv_out( {
	\axi4s_slv_out.tvalid , \axi4s_slv_out.tlast , 
	\axi4s_slv_out.tid [0], \axi4s_slv_out.tstrb [7], 
	\axi4s_slv_out.tstrb [6], \axi4s_slv_out.tstrb [5], 
	\axi4s_slv_out.tstrb [4], \axi4s_slv_out.tstrb [3], 
	\axi4s_slv_out.tstrb [2], \axi4s_slv_out.tstrb [1], 
	\axi4s_slv_out.tstrb [0], \axi4s_slv_out.tuser [7], 
	\axi4s_slv_out.tuser [6], \axi4s_slv_out.tuser [5], 
	\axi4s_slv_out.tuser [4], \axi4s_slv_out.tuser [3], 
	\axi4s_slv_out.tuser [2], \axi4s_slv_out.tuser [1], 
	\axi4s_slv_out.tuser [0], \axi4s_slv_out.tdata [63], 
	\axi4s_slv_out.tdata [62], \axi4s_slv_out.tdata [61], 
	\axi4s_slv_out.tdata [60], \axi4s_slv_out.tdata [59], 
	\axi4s_slv_out.tdata [58], \axi4s_slv_out.tdata [57], 
	\axi4s_slv_out.tdata [56], \axi4s_slv_out.tdata [55], 
	\axi4s_slv_out.tdata [54], \axi4s_slv_out.tdata [53], 
	\axi4s_slv_out.tdata [52], \axi4s_slv_out.tdata [51], 
	\axi4s_slv_out.tdata [50], \axi4s_slv_out.tdata [49], 
	\axi4s_slv_out.tdata [48], \axi4s_slv_out.tdata [47], 
	\axi4s_slv_out.tdata [46], \axi4s_slv_out.tdata [45], 
	\axi4s_slv_out.tdata [44], \axi4s_slv_out.tdata [43], 
	\axi4s_slv_out.tdata [42], \axi4s_slv_out.tdata [41], 
	\axi4s_slv_out.tdata [40], \axi4s_slv_out.tdata [39], 
	\axi4s_slv_out.tdata [38], \axi4s_slv_out.tdata [37], 
	\axi4s_slv_out.tdata [36], \axi4s_slv_out.tdata [35], 
	\axi4s_slv_out.tdata [34], \axi4s_slv_out.tdata [33], 
	\axi4s_slv_out.tdata [32], \axi4s_slv_out.tdata [31], 
	\axi4s_slv_out.tdata [30], \axi4s_slv_out.tdata [29], 
	\axi4s_slv_out.tdata [28], \axi4s_slv_out.tdata [27], 
	\axi4s_slv_out.tdata [26], \axi4s_slv_out.tdata [25], 
	\axi4s_slv_out.tdata [24], \axi4s_slv_out.tdata [23], 
	\axi4s_slv_out.tdata [22], \axi4s_slv_out.tdata [21], 
	\axi4s_slv_out.tdata [20], \axi4s_slv_out.tdata [19], 
	\axi4s_slv_out.tdata [18], \axi4s_slv_out.tdata [17], 
	\axi4s_slv_out.tdata [16], \axi4s_slv_out.tdata [15], 
	\axi4s_slv_out.tdata [14], \axi4s_slv_out.tdata [13], 
	\axi4s_slv_out.tdata [12], \axi4s_slv_out.tdata [11], 
	\axi4s_slv_out.tdata [10], \axi4s_slv_out.tdata [9], 
	\axi4s_slv_out.tdata [8], \axi4s_slv_out.tdata [7], 
	\axi4s_slv_out.tdata [6], \axi4s_slv_out.tdata [5], 
	\axi4s_slv_out.tdata [4], \axi4s_slv_out.tdata [3], 
	\axi4s_slv_out.tdata [2], \axi4s_slv_out.tdata [1], 
	\axi4s_slv_out.tdata [0]} ), axi4s_slv_empty, axi4s_slv_aempty, 
	axi4s_slv_bimc_odat, axi4s_slv_bimc_osync, 
	axi4s_slv_ro_uncorrectable_ecc_error, clk, rst_n, .axi4s_ib_in( {
	\axi4s_ib_in.tvalid , \axi4s_ib_in.tlast , \axi4s_ib_in.tid [0], 
	\axi4s_ib_in.tstrb [7], \axi4s_ib_in.tstrb [6], 
	\axi4s_ib_in.tstrb [5], \axi4s_ib_in.tstrb [4], 
	\axi4s_ib_in.tstrb [3], \axi4s_ib_in.tstrb [2], 
	\axi4s_ib_in.tstrb [1], \axi4s_ib_in.tstrb [0], 
	\axi4s_ib_in.tuser [7], \axi4s_ib_in.tuser [6], 
	\axi4s_ib_in.tuser [5], \axi4s_ib_in.tuser [4], 
	\axi4s_ib_in.tuser [3], \axi4s_ib_in.tuser [2], 
	\axi4s_ib_in.tuser [1], \axi4s_ib_in.tuser [0], 
	\axi4s_ib_in.tdata [63], \axi4s_ib_in.tdata [62], 
	\axi4s_ib_in.tdata [61], \axi4s_ib_in.tdata [60], 
	\axi4s_ib_in.tdata [59], \axi4s_ib_in.tdata [58], 
	\axi4s_ib_in.tdata [57], \axi4s_ib_in.tdata [56], 
	\axi4s_ib_in.tdata [55], \axi4s_ib_in.tdata [54], 
	\axi4s_ib_in.tdata [53], \axi4s_ib_in.tdata [52], 
	\axi4s_ib_in.tdata [51], \axi4s_ib_in.tdata [50], 
	\axi4s_ib_in.tdata [49], \axi4s_ib_in.tdata [48], 
	\axi4s_ib_in.tdata [47], \axi4s_ib_in.tdata [46], 
	\axi4s_ib_in.tdata [45], \axi4s_ib_in.tdata [44], 
	\axi4s_ib_in.tdata [43], \axi4s_ib_in.tdata [42], 
	\axi4s_ib_in.tdata [41], \axi4s_ib_in.tdata [40], 
	\axi4s_ib_in.tdata [39], \axi4s_ib_in.tdata [38], 
	\axi4s_ib_in.tdata [37], \axi4s_ib_in.tdata [36], 
	\axi4s_ib_in.tdata [35], \axi4s_ib_in.tdata [34], 
	\axi4s_ib_in.tdata [33], \axi4s_ib_in.tdata [32], 
	\axi4s_ib_in.tdata [31], \axi4s_ib_in.tdata [30], 
	\axi4s_ib_in.tdata [29], \axi4s_ib_in.tdata [28], 
	\axi4s_ib_in.tdata [27], \axi4s_ib_in.tdata [26], 
	\axi4s_ib_in.tdata [25], \axi4s_ib_in.tdata [24], 
	\axi4s_ib_in.tdata [23], \axi4s_ib_in.tdata [22], 
	\axi4s_ib_in.tdata [21], \axi4s_ib_in.tdata [20], 
	\axi4s_ib_in.tdata [19], \axi4s_ib_in.tdata [18], 
	\axi4s_ib_in.tdata [17], \axi4s_ib_in.tdata [16], 
	\axi4s_ib_in.tdata [15], \axi4s_ib_in.tdata [14], 
	\axi4s_ib_in.tdata [13], \axi4s_ib_in.tdata [12], 
	\axi4s_ib_in.tdata [11], \axi4s_ib_in.tdata [10], 
	\axi4s_ib_in.tdata [9], \axi4s_ib_in.tdata [8], 
	\axi4s_ib_in.tdata [7], \axi4s_ib_in.tdata [6], 
	\axi4s_ib_in.tdata [5], \axi4s_ib_in.tdata [4], 
	\axi4s_ib_in.tdata [3], \axi4s_ib_in.tdata [2], 
	\axi4s_ib_in.tdata [1], \axi4s_ib_in.tdata [0]} ), axi4s_slv_rd, 
	axi4s_slv_bimc_idat, axi4s_slv_bimc_isync, bimc_rst_n);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output \axi4s_ib_out.tready ;
wire [0:0] axi4s_ib_out;
output \axi4s_slv_out.tvalid ;
output \axi4s_slv_out.tlast ;
output [0:0] \axi4s_slv_out.tid ;
output [7:0] \axi4s_slv_out.tstrb ;
output [7:0] \axi4s_slv_out.tuser ;
output [63:0] \axi4s_slv_out.tdata ;
wire [82:0] axi4s_slv_out;
output axi4s_slv_empty;
output axi4s_slv_aempty;
output axi4s_slv_bimc_odat;
output axi4s_slv_bimc_osync;
output axi4s_slv_ro_uncorrectable_ecc_error;
input clk;
input rst_n;
input \axi4s_ib_in.tvalid ;
input \axi4s_ib_in.tlast ;
input [0:0] \axi4s_ib_in.tid ;
input [7:0] \axi4s_ib_in.tstrb ;
input [7:0] \axi4s_ib_in.tuser ;
input [63:0] \axi4s_ib_in.tdata ;
wire [82:0] axi4s_ib_in;
input axi4s_slv_rd;
input axi4s_slv_bimc_idat;
input axi4s_slv_bimc_isync;
input bimc_rst_n;
wire _zy_simnet_axi4s_ib_out_0_w$;
wire [0:82] _zy_simnet_axi4s_slv_out_1_w$;
wire _zy_simnet_axi4s_slv_bimc_odat_2_w$;
wire _zy_simnet_axi4s_slv_bimc_osync_3_w$;
wire _zy_simnet_axi4s_slv_ro_uncorrectable_ecc_error_4_w$;
wire _zy_simnet_axi4s_slv_full_5_w$;
wire _zy_simnet_axi4s_slv_afull_6_w$;
wire [0:82] _zy_simnet_axi4s_slv_out_7_w$;
wire _zy_simnet_axi4s_slv_bimc_odat_8_w$;
wire _zy_simnet_axi4s_slv_bimc_osync_9_w$;
wire _zy_simnet_axi4s_slv_ro_uncorrectable_ecc_error_10_w$;
wire [0:82] _zy_simnet_axi4s_slv_datain_11_w$;
wire _zy_simnet_axi4s_slv_wen_12_w$;
wire [82:0] axi_datain;
wire [82:0] axi4s_slv_datain;
wire axi4s_slv_wen;
wire axi4s_slv_afull;
wire axi4s_slv_full;
wire \axi_datain.tvalid ;
wire \axi_datain.tlast ;
wire [0:0] \axi_datain.tid ;
wire [7:0] \axi_datain.tstrb ;
wire [7:0] \axi_datain.tuser ;
wire [63:0] \axi_datain.tdata ;
tran (axi4s_ib_out[0], \axi4s_ib_out.tready );
tran (axi4s_slv_out[82], \axi4s_slv_out.tvalid );
tran (axi4s_slv_out[81], \axi4s_slv_out.tlast );
tran (axi4s_slv_out[80], \axi4s_slv_out.tid [0]);
tran (axi4s_slv_out[79], \axi4s_slv_out.tstrb [7]);
tran (axi4s_slv_out[78], \axi4s_slv_out.tstrb [6]);
tran (axi4s_slv_out[77], \axi4s_slv_out.tstrb [5]);
tran (axi4s_slv_out[76], \axi4s_slv_out.tstrb [4]);
tran (axi4s_slv_out[75], \axi4s_slv_out.tstrb [3]);
tran (axi4s_slv_out[74], \axi4s_slv_out.tstrb [2]);
tran (axi4s_slv_out[73], \axi4s_slv_out.tstrb [1]);
tran (axi4s_slv_out[72], \axi4s_slv_out.tstrb [0]);
tran (axi4s_slv_out[71], \axi4s_slv_out.tuser [7]);
tran (axi4s_slv_out[70], \axi4s_slv_out.tuser [6]);
tran (axi4s_slv_out[69], \axi4s_slv_out.tuser [5]);
tran (axi4s_slv_out[68], \axi4s_slv_out.tuser [4]);
tran (axi4s_slv_out[67], \axi4s_slv_out.tuser [3]);
tran (axi4s_slv_out[66], \axi4s_slv_out.tuser [2]);
tran (axi4s_slv_out[65], \axi4s_slv_out.tuser [1]);
tran (axi4s_slv_out[64], \axi4s_slv_out.tuser [0]);
tran (axi4s_slv_out[63], \axi4s_slv_out.tdata [63]);
tran (axi4s_slv_out[62], \axi4s_slv_out.tdata [62]);
tran (axi4s_slv_out[61], \axi4s_slv_out.tdata [61]);
tran (axi4s_slv_out[60], \axi4s_slv_out.tdata [60]);
tran (axi4s_slv_out[59], \axi4s_slv_out.tdata [59]);
tran (axi4s_slv_out[58], \axi4s_slv_out.tdata [58]);
tran (axi4s_slv_out[57], \axi4s_slv_out.tdata [57]);
tran (axi4s_slv_out[56], \axi4s_slv_out.tdata [56]);
tran (axi4s_slv_out[55], \axi4s_slv_out.tdata [55]);
tran (axi4s_slv_out[54], \axi4s_slv_out.tdata [54]);
tran (axi4s_slv_out[53], \axi4s_slv_out.tdata [53]);
tran (axi4s_slv_out[52], \axi4s_slv_out.tdata [52]);
tran (axi4s_slv_out[51], \axi4s_slv_out.tdata [51]);
tran (axi4s_slv_out[50], \axi4s_slv_out.tdata [50]);
tran (axi4s_slv_out[49], \axi4s_slv_out.tdata [49]);
tran (axi4s_slv_out[48], \axi4s_slv_out.tdata [48]);
tran (axi4s_slv_out[47], \axi4s_slv_out.tdata [47]);
tran (axi4s_slv_out[46], \axi4s_slv_out.tdata [46]);
tran (axi4s_slv_out[45], \axi4s_slv_out.tdata [45]);
tran (axi4s_slv_out[44], \axi4s_slv_out.tdata [44]);
tran (axi4s_slv_out[43], \axi4s_slv_out.tdata [43]);
tran (axi4s_slv_out[42], \axi4s_slv_out.tdata [42]);
tran (axi4s_slv_out[41], \axi4s_slv_out.tdata [41]);
tran (axi4s_slv_out[40], \axi4s_slv_out.tdata [40]);
tran (axi4s_slv_out[39], \axi4s_slv_out.tdata [39]);
tran (axi4s_slv_out[38], \axi4s_slv_out.tdata [38]);
tran (axi4s_slv_out[37], \axi4s_slv_out.tdata [37]);
tran (axi4s_slv_out[36], \axi4s_slv_out.tdata [36]);
tran (axi4s_slv_out[35], \axi4s_slv_out.tdata [35]);
tran (axi4s_slv_out[34], \axi4s_slv_out.tdata [34]);
tran (axi4s_slv_out[33], \axi4s_slv_out.tdata [33]);
tran (axi4s_slv_out[32], \axi4s_slv_out.tdata [32]);
tran (axi4s_slv_out[31], \axi4s_slv_out.tdata [31]);
tran (axi4s_slv_out[30], \axi4s_slv_out.tdata [30]);
tran (axi4s_slv_out[29], \axi4s_slv_out.tdata [29]);
tran (axi4s_slv_out[28], \axi4s_slv_out.tdata [28]);
tran (axi4s_slv_out[27], \axi4s_slv_out.tdata [27]);
tran (axi4s_slv_out[26], \axi4s_slv_out.tdata [26]);
tran (axi4s_slv_out[25], \axi4s_slv_out.tdata [25]);
tran (axi4s_slv_out[24], \axi4s_slv_out.tdata [24]);
tran (axi4s_slv_out[23], \axi4s_slv_out.tdata [23]);
tran (axi4s_slv_out[22], \axi4s_slv_out.tdata [22]);
tran (axi4s_slv_out[21], \axi4s_slv_out.tdata [21]);
tran (axi4s_slv_out[20], \axi4s_slv_out.tdata [20]);
tran (axi4s_slv_out[19], \axi4s_slv_out.tdata [19]);
tran (axi4s_slv_out[18], \axi4s_slv_out.tdata [18]);
tran (axi4s_slv_out[17], \axi4s_slv_out.tdata [17]);
tran (axi4s_slv_out[16], \axi4s_slv_out.tdata [16]);
tran (axi4s_slv_out[15], \axi4s_slv_out.tdata [15]);
tran (axi4s_slv_out[14], \axi4s_slv_out.tdata [14]);
tran (axi4s_slv_out[13], \axi4s_slv_out.tdata [13]);
tran (axi4s_slv_out[12], \axi4s_slv_out.tdata [12]);
tran (axi4s_slv_out[11], \axi4s_slv_out.tdata [11]);
tran (axi4s_slv_out[10], \axi4s_slv_out.tdata [10]);
tran (axi4s_slv_out[9], \axi4s_slv_out.tdata [9]);
tran (axi4s_slv_out[8], \axi4s_slv_out.tdata [8]);
tran (axi4s_slv_out[7], \axi4s_slv_out.tdata [7]);
tran (axi4s_slv_out[6], \axi4s_slv_out.tdata [6]);
tran (axi4s_slv_out[5], \axi4s_slv_out.tdata [5]);
tran (axi4s_slv_out[4], \axi4s_slv_out.tdata [4]);
tran (axi4s_slv_out[3], \axi4s_slv_out.tdata [3]);
tran (axi4s_slv_out[2], \axi4s_slv_out.tdata [2]);
tran (axi4s_slv_out[1], \axi4s_slv_out.tdata [1]);
tran (axi4s_slv_out[0], \axi4s_slv_out.tdata [0]);
tran (axi4s_ib_in[82], \axi4s_ib_in.tvalid );
tran (axi4s_ib_in[81], \axi4s_ib_in.tlast );
tran (axi4s_ib_in[80], \axi4s_ib_in.tid [0]);
tran (axi4s_ib_in[79], \axi4s_ib_in.tstrb [7]);
tran (axi4s_ib_in[78], \axi4s_ib_in.tstrb [6]);
tran (axi4s_ib_in[77], \axi4s_ib_in.tstrb [5]);
tran (axi4s_ib_in[76], \axi4s_ib_in.tstrb [4]);
tran (axi4s_ib_in[75], \axi4s_ib_in.tstrb [3]);
tran (axi4s_ib_in[74], \axi4s_ib_in.tstrb [2]);
tran (axi4s_ib_in[73], \axi4s_ib_in.tstrb [1]);
tran (axi4s_ib_in[72], \axi4s_ib_in.tstrb [0]);
tran (axi4s_ib_in[71], \axi4s_ib_in.tuser [7]);
tran (axi4s_ib_in[70], \axi4s_ib_in.tuser [6]);
tran (axi4s_ib_in[69], \axi4s_ib_in.tuser [5]);
tran (axi4s_ib_in[68], \axi4s_ib_in.tuser [4]);
tran (axi4s_ib_in[67], \axi4s_ib_in.tuser [3]);
tran (axi4s_ib_in[66], \axi4s_ib_in.tuser [2]);
tran (axi4s_ib_in[65], \axi4s_ib_in.tuser [1]);
tran (axi4s_ib_in[64], \axi4s_ib_in.tuser [0]);
tran (axi4s_ib_in[63], \axi4s_ib_in.tdata [63]);
tran (axi4s_ib_in[62], \axi4s_ib_in.tdata [62]);
tran (axi4s_ib_in[61], \axi4s_ib_in.tdata [61]);
tran (axi4s_ib_in[60], \axi4s_ib_in.tdata [60]);
tran (axi4s_ib_in[59], \axi4s_ib_in.tdata [59]);
tran (axi4s_ib_in[58], \axi4s_ib_in.tdata [58]);
tran (axi4s_ib_in[57], \axi4s_ib_in.tdata [57]);
tran (axi4s_ib_in[56], \axi4s_ib_in.tdata [56]);
tran (axi4s_ib_in[55], \axi4s_ib_in.tdata [55]);
tran (axi4s_ib_in[54], \axi4s_ib_in.tdata [54]);
tran (axi4s_ib_in[53], \axi4s_ib_in.tdata [53]);
tran (axi4s_ib_in[52], \axi4s_ib_in.tdata [52]);
tran (axi4s_ib_in[51], \axi4s_ib_in.tdata [51]);
tran (axi4s_ib_in[50], \axi4s_ib_in.tdata [50]);
tran (axi4s_ib_in[49], \axi4s_ib_in.tdata [49]);
tran (axi4s_ib_in[48], \axi4s_ib_in.tdata [48]);
tran (axi4s_ib_in[47], \axi4s_ib_in.tdata [47]);
tran (axi4s_ib_in[46], \axi4s_ib_in.tdata [46]);
tran (axi4s_ib_in[45], \axi4s_ib_in.tdata [45]);
tran (axi4s_ib_in[44], \axi4s_ib_in.tdata [44]);
tran (axi4s_ib_in[43], \axi4s_ib_in.tdata [43]);
tran (axi4s_ib_in[42], \axi4s_ib_in.tdata [42]);
tran (axi4s_ib_in[41], \axi4s_ib_in.tdata [41]);
tran (axi4s_ib_in[40], \axi4s_ib_in.tdata [40]);
tran (axi4s_ib_in[39], \axi4s_ib_in.tdata [39]);
tran (axi4s_ib_in[38], \axi4s_ib_in.tdata [38]);
tran (axi4s_ib_in[37], \axi4s_ib_in.tdata [37]);
tran (axi4s_ib_in[36], \axi4s_ib_in.tdata [36]);
tran (axi4s_ib_in[35], \axi4s_ib_in.tdata [35]);
tran (axi4s_ib_in[34], \axi4s_ib_in.tdata [34]);
tran (axi4s_ib_in[33], \axi4s_ib_in.tdata [33]);
tran (axi4s_ib_in[32], \axi4s_ib_in.tdata [32]);
tran (axi4s_ib_in[31], \axi4s_ib_in.tdata [31]);
tran (axi4s_ib_in[30], \axi4s_ib_in.tdata [30]);
tran (axi4s_ib_in[29], \axi4s_ib_in.tdata [29]);
tran (axi4s_ib_in[28], \axi4s_ib_in.tdata [28]);
tran (axi4s_ib_in[27], \axi4s_ib_in.tdata [27]);
tran (axi4s_ib_in[26], \axi4s_ib_in.tdata [26]);
tran (axi4s_ib_in[25], \axi4s_ib_in.tdata [25]);
tran (axi4s_ib_in[24], \axi4s_ib_in.tdata [24]);
tran (axi4s_ib_in[23], \axi4s_ib_in.tdata [23]);
tran (axi4s_ib_in[22], \axi4s_ib_in.tdata [22]);
tran (axi4s_ib_in[21], \axi4s_ib_in.tdata [21]);
tran (axi4s_ib_in[20], \axi4s_ib_in.tdata [20]);
tran (axi4s_ib_in[19], \axi4s_ib_in.tdata [19]);
tran (axi4s_ib_in[18], \axi4s_ib_in.tdata [18]);
tran (axi4s_ib_in[17], \axi4s_ib_in.tdata [17]);
tran (axi4s_ib_in[16], \axi4s_ib_in.tdata [16]);
tran (axi4s_ib_in[15], \axi4s_ib_in.tdata [15]);
tran (axi4s_ib_in[14], \axi4s_ib_in.tdata [14]);
tran (axi4s_ib_in[13], \axi4s_ib_in.tdata [13]);
tran (axi4s_ib_in[12], \axi4s_ib_in.tdata [12]);
tran (axi4s_ib_in[11], \axi4s_ib_in.tdata [11]);
tran (axi4s_ib_in[10], \axi4s_ib_in.tdata [10]);
tran (axi4s_ib_in[9], \axi4s_ib_in.tdata [9]);
tran (axi4s_ib_in[8], \axi4s_ib_in.tdata [8]);
tran (axi4s_ib_in[7], \axi4s_ib_in.tdata [7]);
tran (axi4s_ib_in[6], \axi4s_ib_in.tdata [6]);
tran (axi4s_ib_in[5], \axi4s_ib_in.tdata [5]);
tran (axi4s_ib_in[4], \axi4s_ib_in.tdata [4]);
tran (axi4s_ib_in[3], \axi4s_ib_in.tdata [3]);
tran (axi4s_ib_in[2], \axi4s_ib_in.tdata [2]);
tran (axi4s_ib_in[1], \axi4s_ib_in.tdata [1]);
tran (axi4s_ib_in[0], \axi4s_ib_in.tdata [0]);
cr_fifo_wrap2_xcm11 u_cr_fifo_wrap2 ( .full( _zy_simnet_axi4s_slv_full_5_w$), 
	.afull( _zy_simnet_axi4s_slv_afull_6_w$), .rdata( 
	_zy_simnet_axi4s_slv_out_7_w$[0:82]), .empty( axi4s_slv_empty), 
	.aempty( axi4s_slv_aempty), .bimc_odat( 
	_zy_simnet_axi4s_slv_bimc_odat_8_w$), .bimc_osync( 
	_zy_simnet_axi4s_slv_bimc_osync_9_w$), .ro_uncorrectable_ecc_error( 
	_zy_simnet_axi4s_slv_ro_uncorrectable_ecc_error_10_w$), .clk( clk), 
	.rst_n( rst_n), .wdata( _zy_simnet_axi4s_slv_datain_11_w$[0:82]), 
	.wen( _zy_simnet_axi4s_slv_wen_12_w$), .ren( axi4s_slv_rd), 
	.bimc_idat( axi4s_slv_bimc_idat), .bimc_isync( 
	axi4s_slv_bimc_isync), .bimc_rst_n( bimc_rst_n));
ixc_assign _zz_strnp_12 ( _zy_simnet_axi4s_slv_wen_12_w$, axi4s_slv_wen);
ixc_assign_83 _zz_strnp_11 ( _zy_simnet_axi4s_slv_datain_11_w$[0:82], 
	axi4s_slv_datain[82:0]);
ixc_assign _zz_strnp_10 ( axi4s_slv_ro_uncorrectable_ecc_error, 
	_zy_simnet_axi4s_slv_ro_uncorrectable_ecc_error_10_w$);
ixc_assign _zz_strnp_9 ( axi4s_slv_bimc_osync, 
	_zy_simnet_axi4s_slv_bimc_osync_9_w$);
ixc_assign _zz_strnp_8 ( axi4s_slv_bimc_odat, 
	_zy_simnet_axi4s_slv_bimc_odat_8_w$);
ixc_assign_83 _zz_strnp_7 ( axi4s_slv_out[82:0], 
	_zy_simnet_axi4s_slv_out_7_w$[0:82]);
ixc_assign _zz_strnp_6 ( axi4s_slv_afull, _zy_simnet_axi4s_slv_afull_6_w$);
ixc_assign _zz_strnp_5 ( axi4s_slv_full, _zy_simnet_axi4s_slv_full_5_w$);
ixc_assign _zz_strnp_4 ( _zy_simnet_axi4s_slv_ro_uncorrectable_ecc_error_4_w$, 
	axi4s_slv_ro_uncorrectable_ecc_error);
ixc_assign _zz_strnp_3 ( _zy_simnet_axi4s_slv_bimc_osync_3_w$, 
	axi4s_slv_bimc_osync);
ixc_assign _zz_strnp_2 ( _zy_simnet_axi4s_slv_bimc_odat_2_w$, 
	axi4s_slv_bimc_odat);
ixc_assign_83 _zz_strnp_1 ( _zy_simnet_axi4s_slv_out_1_w$[0:82], 
	axi4s_slv_out[82:0]);
ixc_assign _zz_strnp_0 ( _zy_simnet_axi4s_ib_out_0_w$, axi4s_ib_out[0]);
Q_INV U14 ( .A(axi4s_slv_afull), .Z(axi4s_ib_out[0]));
Q_FDP1 axi4s_slv_wen_REG  ( .CK(clk), .R(rst_n), .D(n1), .Q(axi4s_slv_wen), .QN( ));
Q_AN02 U16 ( .A0(axi4s_ib_in[82]), .A1(axi4s_ib_out[0]), .Z(n1));
Q_FDP1 \axi4s_slv_datain_REG[0] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[0]), .Q(axi4s_slv_datain[0]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[1] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[1]), .Q(axi4s_slv_datain[1]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[2] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[2]), .Q(axi4s_slv_datain[2]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[3] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[3]), .Q(axi4s_slv_datain[3]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[4] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[4]), .Q(axi4s_slv_datain[4]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[5] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[5]), .Q(axi4s_slv_datain[5]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[6] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[6]), .Q(axi4s_slv_datain[6]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[7] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[7]), .Q(axi4s_slv_datain[7]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[8] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[8]), .Q(axi4s_slv_datain[8]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[9] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[9]), .Q(axi4s_slv_datain[9]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[10] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[10]), .Q(axi4s_slv_datain[10]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[11] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[11]), .Q(axi4s_slv_datain[11]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[12] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[12]), .Q(axi4s_slv_datain[12]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[13] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[13]), .Q(axi4s_slv_datain[13]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[14] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[14]), .Q(axi4s_slv_datain[14]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[15] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[15]), .Q(axi4s_slv_datain[15]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[16] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[16]), .Q(axi4s_slv_datain[16]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[17] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[17]), .Q(axi4s_slv_datain[17]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[18] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[18]), .Q(axi4s_slv_datain[18]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[19] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[19]), .Q(axi4s_slv_datain[19]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[20] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[20]), .Q(axi4s_slv_datain[20]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[21] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[21]), .Q(axi4s_slv_datain[21]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[22] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[22]), .Q(axi4s_slv_datain[22]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[23] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[23]), .Q(axi4s_slv_datain[23]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[24] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[24]), .Q(axi4s_slv_datain[24]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[25] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[25]), .Q(axi4s_slv_datain[25]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[26] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[26]), .Q(axi4s_slv_datain[26]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[27] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[27]), .Q(axi4s_slv_datain[27]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[28] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[28]), .Q(axi4s_slv_datain[28]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[29] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[29]), .Q(axi4s_slv_datain[29]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[30] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[30]), .Q(axi4s_slv_datain[30]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[31] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[31]), .Q(axi4s_slv_datain[31]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[32] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[32]), .Q(axi4s_slv_datain[32]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[33] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[33]), .Q(axi4s_slv_datain[33]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[34] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[34]), .Q(axi4s_slv_datain[34]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[35] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[35]), .Q(axi4s_slv_datain[35]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[36] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[36]), .Q(axi4s_slv_datain[36]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[37] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[37]), .Q(axi4s_slv_datain[37]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[38] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[38]), .Q(axi4s_slv_datain[38]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[39] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[39]), .Q(axi4s_slv_datain[39]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[40] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[40]), .Q(axi4s_slv_datain[40]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[41] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[41]), .Q(axi4s_slv_datain[41]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[42] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[42]), .Q(axi4s_slv_datain[42]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[43] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[43]), .Q(axi4s_slv_datain[43]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[44] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[44]), .Q(axi4s_slv_datain[44]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[45] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[45]), .Q(axi4s_slv_datain[45]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[46] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[46]), .Q(axi4s_slv_datain[46]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[47] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[47]), .Q(axi4s_slv_datain[47]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[48] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[48]), .Q(axi4s_slv_datain[48]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[49] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[49]), .Q(axi4s_slv_datain[49]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[50] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[50]), .Q(axi4s_slv_datain[50]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[51] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[51]), .Q(axi4s_slv_datain[51]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[52] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[52]), .Q(axi4s_slv_datain[52]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[53] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[53]), .Q(axi4s_slv_datain[53]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[54] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[54]), .Q(axi4s_slv_datain[54]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[55] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[55]), .Q(axi4s_slv_datain[55]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[56] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[56]), .Q(axi4s_slv_datain[56]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[57] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[57]), .Q(axi4s_slv_datain[57]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[58] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[58]), .Q(axi4s_slv_datain[58]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[59] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[59]), .Q(axi4s_slv_datain[59]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[60] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[60]), .Q(axi4s_slv_datain[60]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[61] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[61]), .Q(axi4s_slv_datain[61]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[62] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[62]), .Q(axi4s_slv_datain[62]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[63] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[63]), .Q(axi4s_slv_datain[63]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[64] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[64]), .Q(axi4s_slv_datain[64]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[65] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[65]), .Q(axi4s_slv_datain[65]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[66] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[66]), .Q(axi4s_slv_datain[66]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[67] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[67]), .Q(axi4s_slv_datain[67]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[68] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[68]), .Q(axi4s_slv_datain[68]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[69] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[69]), .Q(axi4s_slv_datain[69]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[70] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[70]), .Q(axi4s_slv_datain[70]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[71] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[71]), .Q(axi4s_slv_datain[71]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[72] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[72]), .Q(axi4s_slv_datain[72]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[73] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[73]), .Q(axi4s_slv_datain[73]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[74] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[74]), .Q(axi4s_slv_datain[74]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[75] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[75]), .Q(axi4s_slv_datain[75]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[76] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[76]), .Q(axi4s_slv_datain[76]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[77] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[77]), .Q(axi4s_slv_datain[77]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[78] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[78]), .Q(axi4s_slv_datain[78]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[79] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[79]), .Q(axi4s_slv_datain[79]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[80] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[80]), .Q(axi4s_slv_datain[80]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[81] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[81]), .Q(axi4s_slv_datain[81]), .QN( ));
Q_FDP1 \axi4s_slv_datain_REG[82] ( .CK(clk), .R(rst_n), .D(axi4s_ib_in[82]), .Q(axi4s_slv_datain[82]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\axi4s_slv_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\axi4s_slv_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\axi4s_slv_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\axi4s_slv_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\axi4s_ib_in.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\axi4s_ib_in.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\axi4s_ib_in.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\axi4s_ib_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\axi_datain.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\axi_datain.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\axi_datain.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m12 "\axi_datain.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "12"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "axi4s_ib_out 1 \axi4s_ib_out.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "axi4s_slv_out 6 \axi4s_slv_out.tvalid  \axi4s_slv_out.tlast  \axi4s_slv_out.tid  \axi4s_slv_out.tstrb  \axi4s_slv_out.tuser  \axi4s_slv_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "axi4s_ib_in 6 \axi4s_ib_in.tvalid  \axi4s_ib_in.tlast  \axi4s_ib_in.tid  \axi4s_ib_in.tstrb  \axi4s_ib_in.tuser  \axi4s_ib_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "axi_datain 6 \axi_datain.tvalid  \axi_datain.tlast  \axi_datain.tid  \axi_datain.tstrb  \axi_datain.tuser  \axi_datain.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "4"
endmodule
