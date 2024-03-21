
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_key_tlv_rsm ( usr_ob_full, usr_ob_afull, .axi4s_ob_out( {
	\axi4s_ob_out.tvalid , \axi4s_ob_out.tlast , \axi4s_ob_out.tid [0], 
	\axi4s_ob_out.tstrb [7], \axi4s_ob_out.tstrb [6], 
	\axi4s_ob_out.tstrb [5], \axi4s_ob_out.tstrb [4], 
	\axi4s_ob_out.tstrb [3], \axi4s_ob_out.tstrb [2], 
	\axi4s_ob_out.tstrb [1], \axi4s_ob_out.tstrb [0], 
	\axi4s_ob_out.tuser [7], \axi4s_ob_out.tuser [6], 
	\axi4s_ob_out.tuser [5], \axi4s_ob_out.tuser [4], 
	\axi4s_ob_out.tuser [3], \axi4s_ob_out.tuser [2], 
	\axi4s_ob_out.tuser [1], \axi4s_ob_out.tuser [0], 
	\axi4s_ob_out.tdata [63], \axi4s_ob_out.tdata [62], 
	\axi4s_ob_out.tdata [61], \axi4s_ob_out.tdata [60], 
	\axi4s_ob_out.tdata [59], \axi4s_ob_out.tdata [58], 
	\axi4s_ob_out.tdata [57], \axi4s_ob_out.tdata [56], 
	\axi4s_ob_out.tdata [55], \axi4s_ob_out.tdata [54], 
	\axi4s_ob_out.tdata [53], \axi4s_ob_out.tdata [52], 
	\axi4s_ob_out.tdata [51], \axi4s_ob_out.tdata [50], 
	\axi4s_ob_out.tdata [49], \axi4s_ob_out.tdata [48], 
	\axi4s_ob_out.tdata [47], \axi4s_ob_out.tdata [46], 
	\axi4s_ob_out.tdata [45], \axi4s_ob_out.tdata [44], 
	\axi4s_ob_out.tdata [43], \axi4s_ob_out.tdata [42], 
	\axi4s_ob_out.tdata [41], \axi4s_ob_out.tdata [40], 
	\axi4s_ob_out.tdata [39], \axi4s_ob_out.tdata [38], 
	\axi4s_ob_out.tdata [37], \axi4s_ob_out.tdata [36], 
	\axi4s_ob_out.tdata [35], \axi4s_ob_out.tdata [34], 
	\axi4s_ob_out.tdata [33], \axi4s_ob_out.tdata [32], 
	\axi4s_ob_out.tdata [31], \axi4s_ob_out.tdata [30], 
	\axi4s_ob_out.tdata [29], \axi4s_ob_out.tdata [28], 
	\axi4s_ob_out.tdata [27], \axi4s_ob_out.tdata [26], 
	\axi4s_ob_out.tdata [25], \axi4s_ob_out.tdata [24], 
	\axi4s_ob_out.tdata [23], \axi4s_ob_out.tdata [22], 
	\axi4s_ob_out.tdata [21], \axi4s_ob_out.tdata [20], 
	\axi4s_ob_out.tdata [19], \axi4s_ob_out.tdata [18], 
	\axi4s_ob_out.tdata [17], \axi4s_ob_out.tdata [16], 
	\axi4s_ob_out.tdata [15], \axi4s_ob_out.tdata [14], 
	\axi4s_ob_out.tdata [13], \axi4s_ob_out.tdata [12], 
	\axi4s_ob_out.tdata [11], \axi4s_ob_out.tdata [10], 
	\axi4s_ob_out.tdata [9], \axi4s_ob_out.tdata [8], 
	\axi4s_ob_out.tdata [7], \axi4s_ob_out.tdata [6], 
	\axi4s_ob_out.tdata [5], \axi4s_ob_out.tdata [4], 
	\axi4s_ob_out.tdata [3], \axi4s_ob_out.tdata [2], 
	\axi4s_ob_out.tdata [1], \axi4s_ob_out.tdata [0]} ), 
	stat_stall_on_valid_key, key_tlv_rsm_end_pulse, key_tlv_rsm_idle, 
	clk, rst_n, usr_ob_wr, .usr_ob_tlv( {\usr_ob_tlv.insert , 
	\usr_ob_tlv.ordern [12], \usr_ob_tlv.ordern [11], 
	\usr_ob_tlv.ordern [10], \usr_ob_tlv.ordern [9], 
	\usr_ob_tlv.ordern [8], \usr_ob_tlv.ordern [7], 
	\usr_ob_tlv.ordern [6], \usr_ob_tlv.ordern [5], 
	\usr_ob_tlv.ordern [4], \usr_ob_tlv.ordern [3], 
	\usr_ob_tlv.ordern [2], \usr_ob_tlv.ordern [1], 
	\usr_ob_tlv.ordern [0], \usr_ob_tlv.typen [7], \usr_ob_tlv.typen [6], 
	\usr_ob_tlv.typen [5], \usr_ob_tlv.typen [4], \usr_ob_tlv.typen [3], 
	\usr_ob_tlv.typen [2], \usr_ob_tlv.typen [1], \usr_ob_tlv.typen [0], 
	\usr_ob_tlv.sot , \usr_ob_tlv.eot , \usr_ob_tlv.tlast , 
	\usr_ob_tlv.tid [0], \usr_ob_tlv.tstrb [7], \usr_ob_tlv.tstrb [6], 
	\usr_ob_tlv.tstrb [5], \usr_ob_tlv.tstrb [4], \usr_ob_tlv.tstrb [3], 
	\usr_ob_tlv.tstrb [2], \usr_ob_tlv.tstrb [1], \usr_ob_tlv.tstrb [0], 
	\usr_ob_tlv.tuser [7], \usr_ob_tlv.tuser [6], \usr_ob_tlv.tuser [5], 
	\usr_ob_tlv.tuser [4], \usr_ob_tlv.tuser [3], \usr_ob_tlv.tuser [2], 
	\usr_ob_tlv.tuser [1], \usr_ob_tlv.tuser [0], \usr_ob_tlv.tdata [63], 
	\usr_ob_tlv.tdata [62], \usr_ob_tlv.tdata [61], 
	\usr_ob_tlv.tdata [60], \usr_ob_tlv.tdata [59], 
	\usr_ob_tlv.tdata [58], \usr_ob_tlv.tdata [57], 
	\usr_ob_tlv.tdata [56], \usr_ob_tlv.tdata [55], 
	\usr_ob_tlv.tdata [54], \usr_ob_tlv.tdata [53], 
	\usr_ob_tlv.tdata [52], \usr_ob_tlv.tdata [51], 
	\usr_ob_tlv.tdata [50], \usr_ob_tlv.tdata [49], 
	\usr_ob_tlv.tdata [48], \usr_ob_tlv.tdata [47], 
	\usr_ob_tlv.tdata [46], \usr_ob_tlv.tdata [45], 
	\usr_ob_tlv.tdata [44], \usr_ob_tlv.tdata [43], 
	\usr_ob_tlv.tdata [42], \usr_ob_tlv.tdata [41], 
	\usr_ob_tlv.tdata [40], \usr_ob_tlv.tdata [39], 
	\usr_ob_tlv.tdata [38], \usr_ob_tlv.tdata [37], 
	\usr_ob_tlv.tdata [36], \usr_ob_tlv.tdata [35], 
	\usr_ob_tlv.tdata [34], \usr_ob_tlv.tdata [33], 
	\usr_ob_tlv.tdata [32], \usr_ob_tlv.tdata [31], 
	\usr_ob_tlv.tdata [30], \usr_ob_tlv.tdata [29], 
	\usr_ob_tlv.tdata [28], \usr_ob_tlv.tdata [27], 
	\usr_ob_tlv.tdata [26], \usr_ob_tlv.tdata [25], 
	\usr_ob_tlv.tdata [24], \usr_ob_tlv.tdata [23], 
	\usr_ob_tlv.tdata [22], \usr_ob_tlv.tdata [21], 
	\usr_ob_tlv.tdata [20], \usr_ob_tlv.tdata [19], 
	\usr_ob_tlv.tdata [18], \usr_ob_tlv.tdata [17], 
	\usr_ob_tlv.tdata [16], \usr_ob_tlv.tdata [15], 
	\usr_ob_tlv.tdata [14], \usr_ob_tlv.tdata [13], 
	\usr_ob_tlv.tdata [12], \usr_ob_tlv.tdata [11], 
	\usr_ob_tlv.tdata [10], \usr_ob_tlv.tdata [9], \usr_ob_tlv.tdata [8], 
	\usr_ob_tlv.tdata [7], \usr_ob_tlv.tdata [6], \usr_ob_tlv.tdata [5], 
	\usr_ob_tlv.tdata [4], \usr_ob_tlv.tdata [3], \usr_ob_tlv.tdata [2], 
	\usr_ob_tlv.tdata [1], \usr_ob_tlv.tdata [0]} ), .axi4s_ob_in( {
	\axi4s_ob_in.tready } ));
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output usr_ob_full;
output usr_ob_afull;
output \axi4s_ob_out.tvalid ;
output \axi4s_ob_out.tlast ;
output [0:0] \axi4s_ob_out.tid ;
output [7:0] \axi4s_ob_out.tstrb ;
output [7:0] \axi4s_ob_out.tuser ;
output [63:0] \axi4s_ob_out.tdata ;
wire [82:0] axi4s_ob_out;
output stat_stall_on_valid_key;
output key_tlv_rsm_end_pulse;
output key_tlv_rsm_idle;
input clk;
input rst_n;
input usr_ob_wr;
input \usr_ob_tlv.insert ;
input [12:0] \usr_ob_tlv.ordern ;
input [7:0] \usr_ob_tlv.typen ;
input \usr_ob_tlv.sot ;
input \usr_ob_tlv.eot ;
input \usr_ob_tlv.tlast ;
input [0:0] \usr_ob_tlv.tid ;
input [7:0] \usr_ob_tlv.tstrb ;
input [7:0] \usr_ob_tlv.tuser ;
input [63:0] \usr_ob_tlv.tdata ;
wire [105:0] usr_ob_tlv;
input \axi4s_ob_in.tready ;
wire [0:0] axi4s_ob_in;
wire [0:82] _zy_simnet_axi4s_ob_out_0_w$;
wire _zy_simnet_dio_1;
wire _zy_simnet_tlvp_ob_empty_2_w$;
wire _zy_simnet_tlvp_ob_aempty_3_w$;
wire [0:82] _zy_simnet_tlvp_ob_4_w$;
wire _zy_simnet_dio_5;
wire _zy_simnet_dio_6;
wire _zy_simnet_dio_7;
wire _zy_simnet_dio_8;
wire _zy_simnet_cio_9;
wire _zy_simnet_cio_10;
wire [0:105] _zy_simnet_cio_11;
wire _zy_simnet_tlvp_ob_rd_12_w$;
wire _zy_simnet_cio_13;
wire _zy_simnet_cio_14;
wire _zy_simnet_cio_15;
wire _zy_simnet_tlvp_ob_rd_16_w$;
wire [0:82] _zy_simnet_axi4s_ob_out_17_w$;
wire [0:82] _zy_simnet_tlvp_ob_18_w$;
wire _zy_simnet_tlvp_ob_empty_19_w$;
wire _zy_simnet_tlvp_ob_aempty_20_w$;
wire [82:0] tlvp_ob;
wire tlvp_ob_aempty;
wire tlvp_ob_empty;
wire tlvp_ob_rd;
supply0 n1;
supply1 n2;
wire \tlvp_ob.tvalid ;
wire \tlvp_ob.tlast ;
wire [0:0] \tlvp_ob.tid ;
wire [7:0] \tlvp_ob.tstrb ;
wire [7:0] \tlvp_ob.tuser ;
wire [63:0] \tlvp_ob.tdata ;
tran (axi4s_ob_out[82], \axi4s_ob_out.tvalid );
tran (axi4s_ob_out[81], \axi4s_ob_out.tlast );
tran (axi4s_ob_out[80], \axi4s_ob_out.tid [0]);
tran (axi4s_ob_out[79], \axi4s_ob_out.tstrb [7]);
tran (axi4s_ob_out[78], \axi4s_ob_out.tstrb [6]);
tran (axi4s_ob_out[77], \axi4s_ob_out.tstrb [5]);
tran (axi4s_ob_out[76], \axi4s_ob_out.tstrb [4]);
tran (axi4s_ob_out[75], \axi4s_ob_out.tstrb [3]);
tran (axi4s_ob_out[74], \axi4s_ob_out.tstrb [2]);
tran (axi4s_ob_out[73], \axi4s_ob_out.tstrb [1]);
tran (axi4s_ob_out[72], \axi4s_ob_out.tstrb [0]);
tran (axi4s_ob_out[71], \axi4s_ob_out.tuser [7]);
tran (axi4s_ob_out[70], \axi4s_ob_out.tuser [6]);
tran (axi4s_ob_out[69], \axi4s_ob_out.tuser [5]);
tran (axi4s_ob_out[68], \axi4s_ob_out.tuser [4]);
tran (axi4s_ob_out[67], \axi4s_ob_out.tuser [3]);
tran (axi4s_ob_out[66], \axi4s_ob_out.tuser [2]);
tran (axi4s_ob_out[65], \axi4s_ob_out.tuser [1]);
tran (axi4s_ob_out[64], \axi4s_ob_out.tuser [0]);
tran (axi4s_ob_out[63], \axi4s_ob_out.tdata [63]);
tran (axi4s_ob_out[62], \axi4s_ob_out.tdata [62]);
tran (axi4s_ob_out[61], \axi4s_ob_out.tdata [61]);
tran (axi4s_ob_out[60], \axi4s_ob_out.tdata [60]);
tran (axi4s_ob_out[59], \axi4s_ob_out.tdata [59]);
tran (axi4s_ob_out[58], \axi4s_ob_out.tdata [58]);
tran (axi4s_ob_out[57], \axi4s_ob_out.tdata [57]);
tran (axi4s_ob_out[56], \axi4s_ob_out.tdata [56]);
tran (axi4s_ob_out[55], \axi4s_ob_out.tdata [55]);
tran (axi4s_ob_out[54], \axi4s_ob_out.tdata [54]);
tran (axi4s_ob_out[53], \axi4s_ob_out.tdata [53]);
tran (axi4s_ob_out[52], \axi4s_ob_out.tdata [52]);
tran (axi4s_ob_out[51], \axi4s_ob_out.tdata [51]);
tran (axi4s_ob_out[50], \axi4s_ob_out.tdata [50]);
tran (axi4s_ob_out[49], \axi4s_ob_out.tdata [49]);
tran (axi4s_ob_out[48], \axi4s_ob_out.tdata [48]);
tran (axi4s_ob_out[47], \axi4s_ob_out.tdata [47]);
tran (axi4s_ob_out[46], \axi4s_ob_out.tdata [46]);
tran (axi4s_ob_out[45], \axi4s_ob_out.tdata [45]);
tran (axi4s_ob_out[44], \axi4s_ob_out.tdata [44]);
tran (axi4s_ob_out[43], \axi4s_ob_out.tdata [43]);
tran (axi4s_ob_out[42], \axi4s_ob_out.tdata [42]);
tran (axi4s_ob_out[41], \axi4s_ob_out.tdata [41]);
tran (axi4s_ob_out[40], \axi4s_ob_out.tdata [40]);
tran (axi4s_ob_out[39], \axi4s_ob_out.tdata [39]);
tran (axi4s_ob_out[38], \axi4s_ob_out.tdata [38]);
tran (axi4s_ob_out[37], \axi4s_ob_out.tdata [37]);
tran (axi4s_ob_out[36], \axi4s_ob_out.tdata [36]);
tran (axi4s_ob_out[35], \axi4s_ob_out.tdata [35]);
tran (axi4s_ob_out[34], \axi4s_ob_out.tdata [34]);
tran (axi4s_ob_out[33], \axi4s_ob_out.tdata [33]);
tran (axi4s_ob_out[32], \axi4s_ob_out.tdata [32]);
tran (axi4s_ob_out[31], \axi4s_ob_out.tdata [31]);
tran (axi4s_ob_out[30], \axi4s_ob_out.tdata [30]);
tran (axi4s_ob_out[29], \axi4s_ob_out.tdata [29]);
tran (axi4s_ob_out[28], \axi4s_ob_out.tdata [28]);
tran (axi4s_ob_out[27], \axi4s_ob_out.tdata [27]);
tran (axi4s_ob_out[26], \axi4s_ob_out.tdata [26]);
tran (axi4s_ob_out[25], \axi4s_ob_out.tdata [25]);
tran (axi4s_ob_out[24], \axi4s_ob_out.tdata [24]);
tran (axi4s_ob_out[23], \axi4s_ob_out.tdata [23]);
tran (axi4s_ob_out[22], \axi4s_ob_out.tdata [22]);
tran (axi4s_ob_out[21], \axi4s_ob_out.tdata [21]);
tran (axi4s_ob_out[20], \axi4s_ob_out.tdata [20]);
tran (axi4s_ob_out[19], \axi4s_ob_out.tdata [19]);
tran (axi4s_ob_out[18], \axi4s_ob_out.tdata [18]);
tran (axi4s_ob_out[17], \axi4s_ob_out.tdata [17]);
tran (axi4s_ob_out[16], \axi4s_ob_out.tdata [16]);
tran (axi4s_ob_out[15], \axi4s_ob_out.tdata [15]);
tran (axi4s_ob_out[14], \axi4s_ob_out.tdata [14]);
tran (axi4s_ob_out[13], \axi4s_ob_out.tdata [13]);
tran (axi4s_ob_out[12], \axi4s_ob_out.tdata [12]);
tran (axi4s_ob_out[11], \axi4s_ob_out.tdata [11]);
tran (axi4s_ob_out[10], \axi4s_ob_out.tdata [10]);
tran (axi4s_ob_out[9], \axi4s_ob_out.tdata [9]);
tran (axi4s_ob_out[8], \axi4s_ob_out.tdata [8]);
tran (axi4s_ob_out[7], \axi4s_ob_out.tdata [7]);
tran (axi4s_ob_out[6], \axi4s_ob_out.tdata [6]);
tran (axi4s_ob_out[5], \axi4s_ob_out.tdata [5]);
tran (axi4s_ob_out[4], \axi4s_ob_out.tdata [4]);
tran (axi4s_ob_out[3], \axi4s_ob_out.tdata [3]);
tran (axi4s_ob_out[2], \axi4s_ob_out.tdata [2]);
tran (axi4s_ob_out[1], \axi4s_ob_out.tdata [1]);
tran (axi4s_ob_out[0], \axi4s_ob_out.tdata [0]);
tran (usr_ob_tlv[105], \usr_ob_tlv.insert );
tran (usr_ob_tlv[104], \usr_ob_tlv.ordern [12]);
tran (usr_ob_tlv[103], \usr_ob_tlv.ordern [11]);
tran (usr_ob_tlv[102], \usr_ob_tlv.ordern [10]);
tran (usr_ob_tlv[101], \usr_ob_tlv.ordern [9]);
tran (usr_ob_tlv[100], \usr_ob_tlv.ordern [8]);
tran (usr_ob_tlv[99], \usr_ob_tlv.ordern [7]);
tran (usr_ob_tlv[98], \usr_ob_tlv.ordern [6]);
tran (usr_ob_tlv[97], \usr_ob_tlv.ordern [5]);
tran (usr_ob_tlv[96], \usr_ob_tlv.ordern [4]);
tran (usr_ob_tlv[95], \usr_ob_tlv.ordern [3]);
tran (usr_ob_tlv[94], \usr_ob_tlv.ordern [2]);
tran (usr_ob_tlv[93], \usr_ob_tlv.ordern [1]);
tran (usr_ob_tlv[92], \usr_ob_tlv.ordern [0]);
tran (usr_ob_tlv[91], \usr_ob_tlv.typen [7]);
tran (usr_ob_tlv[90], \usr_ob_tlv.typen [6]);
tran (usr_ob_tlv[89], \usr_ob_tlv.typen [5]);
tran (usr_ob_tlv[88], \usr_ob_tlv.typen [4]);
tran (usr_ob_tlv[87], \usr_ob_tlv.typen [3]);
tran (usr_ob_tlv[86], \usr_ob_tlv.typen [2]);
tran (usr_ob_tlv[85], \usr_ob_tlv.typen [1]);
tran (usr_ob_tlv[84], \usr_ob_tlv.typen [0]);
tran (usr_ob_tlv[83], \usr_ob_tlv.sot );
tran (usr_ob_tlv[82], \usr_ob_tlv.eot );
tran (usr_ob_tlv[81], \usr_ob_tlv.tlast );
tran (usr_ob_tlv[80], \usr_ob_tlv.tid [0]);
tran (usr_ob_tlv[79], \usr_ob_tlv.tstrb [7]);
tran (usr_ob_tlv[78], \usr_ob_tlv.tstrb [6]);
tran (usr_ob_tlv[77], \usr_ob_tlv.tstrb [5]);
tran (usr_ob_tlv[76], \usr_ob_tlv.tstrb [4]);
tran (usr_ob_tlv[75], \usr_ob_tlv.tstrb [3]);
tran (usr_ob_tlv[74], \usr_ob_tlv.tstrb [2]);
tran (usr_ob_tlv[73], \usr_ob_tlv.tstrb [1]);
tran (usr_ob_tlv[72], \usr_ob_tlv.tstrb [0]);
tran (usr_ob_tlv[71], \usr_ob_tlv.tuser [7]);
tran (usr_ob_tlv[70], \usr_ob_tlv.tuser [6]);
tran (usr_ob_tlv[69], \usr_ob_tlv.tuser [5]);
tran (usr_ob_tlv[68], \usr_ob_tlv.tuser [4]);
tran (usr_ob_tlv[67], \usr_ob_tlv.tuser [3]);
tran (usr_ob_tlv[66], \usr_ob_tlv.tuser [2]);
tran (usr_ob_tlv[65], \usr_ob_tlv.tuser [1]);
tran (usr_ob_tlv[64], \usr_ob_tlv.tuser [0]);
tran (usr_ob_tlv[63], \usr_ob_tlv.tdata [63]);
tran (usr_ob_tlv[62], \usr_ob_tlv.tdata [62]);
tran (usr_ob_tlv[61], \usr_ob_tlv.tdata [61]);
tran (usr_ob_tlv[60], \usr_ob_tlv.tdata [60]);
tran (usr_ob_tlv[59], \usr_ob_tlv.tdata [59]);
tran (usr_ob_tlv[58], \usr_ob_tlv.tdata [58]);
tran (usr_ob_tlv[57], \usr_ob_tlv.tdata [57]);
tran (usr_ob_tlv[56], \usr_ob_tlv.tdata [56]);
tran (usr_ob_tlv[55], \usr_ob_tlv.tdata [55]);
tran (usr_ob_tlv[54], \usr_ob_tlv.tdata [54]);
tran (usr_ob_tlv[53], \usr_ob_tlv.tdata [53]);
tran (usr_ob_tlv[52], \usr_ob_tlv.tdata [52]);
tran (usr_ob_tlv[51], \usr_ob_tlv.tdata [51]);
tran (usr_ob_tlv[50], \usr_ob_tlv.tdata [50]);
tran (usr_ob_tlv[49], \usr_ob_tlv.tdata [49]);
tran (usr_ob_tlv[48], \usr_ob_tlv.tdata [48]);
tran (usr_ob_tlv[47], \usr_ob_tlv.tdata [47]);
tran (usr_ob_tlv[46], \usr_ob_tlv.tdata [46]);
tran (usr_ob_tlv[45], \usr_ob_tlv.tdata [45]);
tran (usr_ob_tlv[44], \usr_ob_tlv.tdata [44]);
tran (usr_ob_tlv[43], \usr_ob_tlv.tdata [43]);
tran (usr_ob_tlv[42], \usr_ob_tlv.tdata [42]);
tran (usr_ob_tlv[41], \usr_ob_tlv.tdata [41]);
tran (usr_ob_tlv[40], \usr_ob_tlv.tdata [40]);
tran (usr_ob_tlv[39], \usr_ob_tlv.tdata [39]);
tran (usr_ob_tlv[38], \usr_ob_tlv.tdata [38]);
tran (usr_ob_tlv[37], \usr_ob_tlv.tdata [37]);
tran (usr_ob_tlv[36], \usr_ob_tlv.tdata [36]);
tran (usr_ob_tlv[35], \usr_ob_tlv.tdata [35]);
tran (usr_ob_tlv[34], \usr_ob_tlv.tdata [34]);
tran (usr_ob_tlv[33], \usr_ob_tlv.tdata [33]);
tran (usr_ob_tlv[32], \usr_ob_tlv.tdata [32]);
tran (usr_ob_tlv[31], \usr_ob_tlv.tdata [31]);
tran (usr_ob_tlv[30], \usr_ob_tlv.tdata [30]);
tran (usr_ob_tlv[29], \usr_ob_tlv.tdata [29]);
tran (usr_ob_tlv[28], \usr_ob_tlv.tdata [28]);
tran (usr_ob_tlv[27], \usr_ob_tlv.tdata [27]);
tran (usr_ob_tlv[26], \usr_ob_tlv.tdata [26]);
tran (usr_ob_tlv[25], \usr_ob_tlv.tdata [25]);
tran (usr_ob_tlv[24], \usr_ob_tlv.tdata [24]);
tran (usr_ob_tlv[23], \usr_ob_tlv.tdata [23]);
tran (usr_ob_tlv[22], \usr_ob_tlv.tdata [22]);
tran (usr_ob_tlv[21], \usr_ob_tlv.tdata [21]);
tran (usr_ob_tlv[20], \usr_ob_tlv.tdata [20]);
tran (usr_ob_tlv[19], \usr_ob_tlv.tdata [19]);
tran (usr_ob_tlv[18], \usr_ob_tlv.tdata [18]);
tran (usr_ob_tlv[17], \usr_ob_tlv.tdata [17]);
tran (usr_ob_tlv[16], \usr_ob_tlv.tdata [16]);
tran (usr_ob_tlv[15], \usr_ob_tlv.tdata [15]);
tran (usr_ob_tlv[14], \usr_ob_tlv.tdata [14]);
tran (usr_ob_tlv[13], \usr_ob_tlv.tdata [13]);
tran (usr_ob_tlv[12], \usr_ob_tlv.tdata [12]);
tran (usr_ob_tlv[11], \usr_ob_tlv.tdata [11]);
tran (usr_ob_tlv[10], \usr_ob_tlv.tdata [10]);
tran (usr_ob_tlv[9], \usr_ob_tlv.tdata [9]);
tran (usr_ob_tlv[8], \usr_ob_tlv.tdata [8]);
tran (usr_ob_tlv[7], \usr_ob_tlv.tdata [7]);
tran (usr_ob_tlv[6], \usr_ob_tlv.tdata [6]);
tran (usr_ob_tlv[5], \usr_ob_tlv.tdata [5]);
tran (usr_ob_tlv[4], \usr_ob_tlv.tdata [4]);
tran (usr_ob_tlv[3], \usr_ob_tlv.tdata [3]);
tran (usr_ob_tlv[2], \usr_ob_tlv.tdata [2]);
tran (usr_ob_tlv[1], \usr_ob_tlv.tdata [1]);
tran (usr_ob_tlv[0], \usr_ob_tlv.tdata [0]);
tran (axi4s_ob_in[0], \axi4s_ob_in.tready );
tran (tlvp_ob[82], \tlvp_ob.tvalid );
tran (tlvp_ob[81], \tlvp_ob.tlast );
tran (tlvp_ob[80], \tlvp_ob.tid [0]);
tran (tlvp_ob[79], \tlvp_ob.tstrb [7]);
tran (tlvp_ob[78], \tlvp_ob.tstrb [6]);
tran (tlvp_ob[77], \tlvp_ob.tstrb [5]);
tran (tlvp_ob[76], \tlvp_ob.tstrb [4]);
tran (tlvp_ob[75], \tlvp_ob.tstrb [3]);
tran (tlvp_ob[74], \tlvp_ob.tstrb [2]);
tran (tlvp_ob[73], \tlvp_ob.tstrb [1]);
tran (tlvp_ob[72], \tlvp_ob.tstrb [0]);
tran (tlvp_ob[71], \tlvp_ob.tuser [7]);
tran (tlvp_ob[70], \tlvp_ob.tuser [6]);
tran (tlvp_ob[69], \tlvp_ob.tuser [5]);
tran (tlvp_ob[68], \tlvp_ob.tuser [4]);
tran (tlvp_ob[67], \tlvp_ob.tuser [3]);
tran (tlvp_ob[66], \tlvp_ob.tuser [2]);
tran (tlvp_ob[65], \tlvp_ob.tuser [1]);
tran (tlvp_ob[64], \tlvp_ob.tuser [0]);
tran (tlvp_ob[63], \tlvp_ob.tdata [63]);
tran (tlvp_ob[62], \tlvp_ob.tdata [62]);
tran (tlvp_ob[61], \tlvp_ob.tdata [61]);
tran (tlvp_ob[60], \tlvp_ob.tdata [60]);
tran (tlvp_ob[59], \tlvp_ob.tdata [59]);
tran (tlvp_ob[58], \tlvp_ob.tdata [58]);
tran (tlvp_ob[57], \tlvp_ob.tdata [57]);
tran (tlvp_ob[56], \tlvp_ob.tdata [56]);
tran (tlvp_ob[55], \tlvp_ob.tdata [55]);
tran (tlvp_ob[54], \tlvp_ob.tdata [54]);
tran (tlvp_ob[53], \tlvp_ob.tdata [53]);
tran (tlvp_ob[52], \tlvp_ob.tdata [52]);
tran (tlvp_ob[51], \tlvp_ob.tdata [51]);
tran (tlvp_ob[50], \tlvp_ob.tdata [50]);
tran (tlvp_ob[49], \tlvp_ob.tdata [49]);
tran (tlvp_ob[48], \tlvp_ob.tdata [48]);
tran (tlvp_ob[47], \tlvp_ob.tdata [47]);
tran (tlvp_ob[46], \tlvp_ob.tdata [46]);
tran (tlvp_ob[45], \tlvp_ob.tdata [45]);
tran (tlvp_ob[44], \tlvp_ob.tdata [44]);
tran (tlvp_ob[43], \tlvp_ob.tdata [43]);
tran (tlvp_ob[42], \tlvp_ob.tdata [42]);
tran (tlvp_ob[41], \tlvp_ob.tdata [41]);
tran (tlvp_ob[40], \tlvp_ob.tdata [40]);
tran (tlvp_ob[39], \tlvp_ob.tdata [39]);
tran (tlvp_ob[38], \tlvp_ob.tdata [38]);
tran (tlvp_ob[37], \tlvp_ob.tdata [37]);
tran (tlvp_ob[36], \tlvp_ob.tdata [36]);
tran (tlvp_ob[35], \tlvp_ob.tdata [35]);
tran (tlvp_ob[34], \tlvp_ob.tdata [34]);
tran (tlvp_ob[33], \tlvp_ob.tdata [33]);
tran (tlvp_ob[32], \tlvp_ob.tdata [32]);
tran (tlvp_ob[31], \tlvp_ob.tdata [31]);
tran (tlvp_ob[30], \tlvp_ob.tdata [30]);
tran (tlvp_ob[29], \tlvp_ob.tdata [29]);
tran (tlvp_ob[28], \tlvp_ob.tdata [28]);
tran (tlvp_ob[27], \tlvp_ob.tdata [27]);
tran (tlvp_ob[26], \tlvp_ob.tdata [26]);
tran (tlvp_ob[25], \tlvp_ob.tdata [25]);
tran (tlvp_ob[24], \tlvp_ob.tdata [24]);
tran (tlvp_ob[23], \tlvp_ob.tdata [23]);
tran (tlvp_ob[22], \tlvp_ob.tdata [22]);
tran (tlvp_ob[21], \tlvp_ob.tdata [21]);
tran (tlvp_ob[20], \tlvp_ob.tdata [20]);
tran (tlvp_ob[19], \tlvp_ob.tdata [19]);
tran (tlvp_ob[18], \tlvp_ob.tdata [18]);
tran (tlvp_ob[17], \tlvp_ob.tdata [17]);
tran (tlvp_ob[16], \tlvp_ob.tdata [16]);
tran (tlvp_ob[15], \tlvp_ob.tdata [15]);
tran (tlvp_ob[14], \tlvp_ob.tdata [14]);
tran (tlvp_ob[13], \tlvp_ob.tdata [13]);
tran (tlvp_ob[12], \tlvp_ob.tdata [12]);
tran (tlvp_ob[11], \tlvp_ob.tdata [11]);
tran (tlvp_ob[10], \tlvp_ob.tdata [10]);
tran (tlvp_ob[9], \tlvp_ob.tdata [9]);
tran (tlvp_ob[8], \tlvp_ob.tdata [8]);
tran (tlvp_ob[7], \tlvp_ob.tdata [7]);
tran (tlvp_ob[6], \tlvp_ob.tdata [6]);
tran (tlvp_ob[5], \tlvp_ob.tdata [5]);
tran (tlvp_ob[4], \tlvp_ob.tdata [4]);
tran (tlvp_ob[3], \tlvp_ob.tdata [3]);
tran (tlvp_ob[2], \tlvp_ob.tdata [2]);
tran (tlvp_ob[1], \tlvp_ob.tdata [1]);
tran (tlvp_ob[0], \tlvp_ob.tdata [0]);
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_15));
Q_BUF U1 ( .A(n1), .Z(_zy_simnet_cio_14));
Q_BUF U2 ( .A(n1), .Z(_zy_simnet_cio_13));
Q_BUF U3 ( .A(n1), .Z(_zy_simnet_cio_11[105]));
Q_BUF U4 ( .A(n1), .Z(_zy_simnet_cio_11[104]));
Q_BUF U5 ( .A(n1), .Z(_zy_simnet_cio_11[103]));
Q_BUF U6 ( .A(n1), .Z(_zy_simnet_cio_11[102]));
Q_BUF U7 ( .A(n1), .Z(_zy_simnet_cio_11[101]));
Q_BUF U8 ( .A(n1), .Z(_zy_simnet_cio_11[100]));
Q_BUF U9 ( .A(n1), .Z(_zy_simnet_cio_11[99]));
Q_BUF U10 ( .A(n1), .Z(_zy_simnet_cio_11[98]));
Q_BUF U11 ( .A(n1), .Z(_zy_simnet_cio_11[97]));
Q_BUF U12 ( .A(n1), .Z(_zy_simnet_cio_11[96]));
Q_BUF U13 ( .A(n1), .Z(_zy_simnet_cio_11[95]));
Q_BUF U14 ( .A(n1), .Z(_zy_simnet_cio_11[94]));
Q_BUF U15 ( .A(n1), .Z(_zy_simnet_cio_11[93]));
Q_BUF U16 ( .A(n1), .Z(_zy_simnet_cio_11[92]));
Q_BUF U17 ( .A(n1), .Z(_zy_simnet_cio_11[91]));
Q_BUF U18 ( .A(n1), .Z(_zy_simnet_cio_11[90]));
Q_BUF U19 ( .A(n1), .Z(_zy_simnet_cio_11[89]));
Q_BUF U20 ( .A(n1), .Z(_zy_simnet_cio_11[88]));
Q_BUF U21 ( .A(n1), .Z(_zy_simnet_cio_11[87]));
Q_BUF U22 ( .A(n1), .Z(_zy_simnet_cio_11[86]));
Q_BUF U23 ( .A(n1), .Z(_zy_simnet_cio_11[85]));
Q_BUF U24 ( .A(n1), .Z(_zy_simnet_cio_11[84]));
Q_BUF U25 ( .A(n1), .Z(_zy_simnet_cio_11[83]));
Q_BUF U26 ( .A(n1), .Z(_zy_simnet_cio_11[82]));
Q_BUF U27 ( .A(n1), .Z(_zy_simnet_cio_11[81]));
Q_BUF U28 ( .A(n1), .Z(_zy_simnet_cio_11[80]));
Q_BUF U29 ( .A(n1), .Z(_zy_simnet_cio_11[79]));
Q_BUF U30 ( .A(n1), .Z(_zy_simnet_cio_11[78]));
Q_BUF U31 ( .A(n1), .Z(_zy_simnet_cio_11[77]));
Q_BUF U32 ( .A(n1), .Z(_zy_simnet_cio_11[76]));
Q_BUF U33 ( .A(n1), .Z(_zy_simnet_cio_11[75]));
Q_BUF U34 ( .A(n1), .Z(_zy_simnet_cio_11[74]));
Q_BUF U35 ( .A(n1), .Z(_zy_simnet_cio_11[73]));
Q_BUF U36 ( .A(n1), .Z(_zy_simnet_cio_11[72]));
Q_BUF U37 ( .A(n1), .Z(_zy_simnet_cio_11[71]));
Q_BUF U38 ( .A(n1), .Z(_zy_simnet_cio_11[70]));
Q_BUF U39 ( .A(n1), .Z(_zy_simnet_cio_11[69]));
Q_BUF U40 ( .A(n1), .Z(_zy_simnet_cio_11[68]));
Q_BUF U41 ( .A(n1), .Z(_zy_simnet_cio_11[67]));
Q_BUF U42 ( .A(n1), .Z(_zy_simnet_cio_11[66]));
Q_BUF U43 ( .A(n1), .Z(_zy_simnet_cio_11[65]));
Q_BUF U44 ( .A(n1), .Z(_zy_simnet_cio_11[64]));
Q_BUF U45 ( .A(n1), .Z(_zy_simnet_cio_11[63]));
Q_BUF U46 ( .A(n1), .Z(_zy_simnet_cio_11[62]));
Q_BUF U47 ( .A(n1), .Z(_zy_simnet_cio_11[61]));
Q_BUF U48 ( .A(n1), .Z(_zy_simnet_cio_11[60]));
Q_BUF U49 ( .A(n1), .Z(_zy_simnet_cio_11[59]));
Q_BUF U50 ( .A(n1), .Z(_zy_simnet_cio_11[58]));
Q_BUF U51 ( .A(n1), .Z(_zy_simnet_cio_11[57]));
Q_BUF U52 ( .A(n1), .Z(_zy_simnet_cio_11[56]));
Q_BUF U53 ( .A(n1), .Z(_zy_simnet_cio_11[55]));
Q_BUF U54 ( .A(n1), .Z(_zy_simnet_cio_11[54]));
Q_BUF U55 ( .A(n1), .Z(_zy_simnet_cio_11[53]));
Q_BUF U56 ( .A(n1), .Z(_zy_simnet_cio_11[52]));
Q_BUF U57 ( .A(n1), .Z(_zy_simnet_cio_11[51]));
Q_BUF U58 ( .A(n1), .Z(_zy_simnet_cio_11[50]));
Q_BUF U59 ( .A(n1), .Z(_zy_simnet_cio_11[49]));
Q_BUF U60 ( .A(n1), .Z(_zy_simnet_cio_11[48]));
Q_BUF U61 ( .A(n1), .Z(_zy_simnet_cio_11[47]));
Q_BUF U62 ( .A(n1), .Z(_zy_simnet_cio_11[46]));
Q_BUF U63 ( .A(n1), .Z(_zy_simnet_cio_11[45]));
Q_BUF U64 ( .A(n1), .Z(_zy_simnet_cio_11[44]));
Q_BUF U65 ( .A(n1), .Z(_zy_simnet_cio_11[43]));
Q_BUF U66 ( .A(n1), .Z(_zy_simnet_cio_11[42]));
Q_BUF U67 ( .A(n1), .Z(_zy_simnet_cio_11[41]));
Q_BUF U68 ( .A(n1), .Z(_zy_simnet_cio_11[40]));
Q_BUF U69 ( .A(n1), .Z(_zy_simnet_cio_11[39]));
Q_BUF U70 ( .A(n1), .Z(_zy_simnet_cio_11[38]));
Q_BUF U71 ( .A(n1), .Z(_zy_simnet_cio_11[37]));
Q_BUF U72 ( .A(n1), .Z(_zy_simnet_cio_11[36]));
Q_BUF U73 ( .A(n1), .Z(_zy_simnet_cio_11[35]));
Q_BUF U74 ( .A(n1), .Z(_zy_simnet_cio_11[34]));
Q_BUF U75 ( .A(n1), .Z(_zy_simnet_cio_11[33]));
Q_BUF U76 ( .A(n1), .Z(_zy_simnet_cio_11[32]));
Q_BUF U77 ( .A(n1), .Z(_zy_simnet_cio_11[31]));
Q_BUF U78 ( .A(n1), .Z(_zy_simnet_cio_11[30]));
Q_BUF U79 ( .A(n1), .Z(_zy_simnet_cio_11[29]));
Q_BUF U80 ( .A(n1), .Z(_zy_simnet_cio_11[28]));
Q_BUF U81 ( .A(n1), .Z(_zy_simnet_cio_11[27]));
Q_BUF U82 ( .A(n1), .Z(_zy_simnet_cio_11[26]));
Q_BUF U83 ( .A(n1), .Z(_zy_simnet_cio_11[25]));
Q_BUF U84 ( .A(n1), .Z(_zy_simnet_cio_11[24]));
Q_BUF U85 ( .A(n1), .Z(_zy_simnet_cio_11[23]));
Q_BUF U86 ( .A(n1), .Z(_zy_simnet_cio_11[22]));
Q_BUF U87 ( .A(n1), .Z(_zy_simnet_cio_11[21]));
Q_BUF U88 ( .A(n1), .Z(_zy_simnet_cio_11[20]));
Q_BUF U89 ( .A(n1), .Z(_zy_simnet_cio_11[19]));
Q_BUF U90 ( .A(n1), .Z(_zy_simnet_cio_11[18]));
Q_BUF U91 ( .A(n1), .Z(_zy_simnet_cio_11[17]));
Q_BUF U92 ( .A(n1), .Z(_zy_simnet_cio_11[16]));
Q_BUF U93 ( .A(n1), .Z(_zy_simnet_cio_11[15]));
Q_BUF U94 ( .A(n1), .Z(_zy_simnet_cio_11[14]));
Q_BUF U95 ( .A(n1), .Z(_zy_simnet_cio_11[13]));
Q_BUF U96 ( .A(n1), .Z(_zy_simnet_cio_11[12]));
Q_BUF U97 ( .A(n1), .Z(_zy_simnet_cio_11[11]));
Q_BUF U98 ( .A(n1), .Z(_zy_simnet_cio_11[10]));
Q_BUF U99 ( .A(n1), .Z(_zy_simnet_cio_11[9]));
Q_BUF U100 ( .A(n1), .Z(_zy_simnet_cio_11[8]));
Q_BUF U101 ( .A(n1), .Z(_zy_simnet_cio_11[7]));
Q_BUF U102 ( .A(n1), .Z(_zy_simnet_cio_11[6]));
Q_BUF U103 ( .A(n1), .Z(_zy_simnet_cio_11[5]));
Q_BUF U104 ( .A(n1), .Z(_zy_simnet_cio_11[4]));
Q_BUF U105 ( .A(n1), .Z(_zy_simnet_cio_11[3]));
Q_BUF U106 ( .A(n1), .Z(_zy_simnet_cio_11[2]));
Q_BUF U107 ( .A(n1), .Z(_zy_simnet_cio_11[1]));
Q_BUF U108 ( .A(n1), .Z(_zy_simnet_cio_11[0]));
Q_BUF U109 ( .A(n2), .Z(_zy_simnet_cio_10));
Q_BUF U110 ( .A(n2), .Z(_zy_simnet_cio_9));
Q_NR02 U111 ( .A0(tlvp_ob_empty), .A1(tlvp_ob_rd), .Z(stat_stall_on_valid_key));
Q_AN02 U112 ( .A0(usr_ob_wr), .A1(usr_ob_tlv[82]), .Z(key_tlv_rsm_end_pulse));
Q_INV U113 ( .A(axi4s_ob_out[82]), .Z(n3));
Q_AN02 U114 ( .A0(tlvp_ob_empty), .A1(n3), .Z(key_tlv_rsm_idle));
ixc_assign_83 _zz_strnp_0 ( _zy_simnet_axi4s_ob_out_0_w$[0:82], 
	axi4s_ob_out[82:0]);
ixc_assign _zz_strnp_1 ( tlvp_ob_empty, _zy_simnet_tlvp_ob_empty_2_w$);
ixc_assign _zz_strnp_2 ( tlvp_ob_aempty, _zy_simnet_tlvp_ob_aempty_3_w$);
ixc_assign_83 _zz_strnp_3 ( tlvp_ob[82:0], _zy_simnet_tlvp_ob_4_w$[0:82]);
ixc_assign _zz_strnp_4 ( _zy_simnet_tlvp_ob_rd_12_w$, tlvp_ob_rd);
ixc_assign _zz_strnp_5 ( tlvp_ob_rd, _zy_simnet_tlvp_ob_rd_16_w$);
ixc_assign_83 _zz_strnp_6 ( axi4s_ob_out[82:0], 
	_zy_simnet_axi4s_ob_out_17_w$[0:82]);
ixc_assign_83 _zz_strnp_7 ( _zy_simnet_tlvp_ob_18_w$[0:82], tlvp_ob[82:0]);
ixc_assign _zz_strnp_8 ( _zy_simnet_tlvp_ob_empty_19_w$, tlvp_ob_empty);
ixc_assign _zz_strnp_9 ( _zy_simnet_tlvp_ob_aempty_20_w$, tlvp_ob_aempty);
cr_tlvp2_rsm u_cr_tlvp2_rsm ( .pt_ob_rd( _zy_simnet_dio_1), .usr_ob_full( 
	usr_ob_full), .usr_ob_afull( usr_ob_afull), .tlvp_ob_empty( 
	_zy_simnet_tlvp_ob_empty_2_w$), .tlvp_ob_aempty( 
	_zy_simnet_tlvp_ob_aempty_3_w$), .tlvp_ob( 
	_zy_simnet_tlvp_ob_4_w$[0:82]), .tlvp_rsm_bimc_odat( _zy_simnet_dio_5), 
	.tlvp_rsm_bimc_osync( _zy_simnet_dio_6), 
	.tlvp_ob_ro_uncorrectable_ecc_error( _zy_simnet_dio_7), 
	.usr_ob_ro_uncorrectable_ecc_error( _zy_simnet_dio_8), .clk( clk), 
	.rst_n( rst_n), .pt_ob_empty( _zy_simnet_cio_9), .pt_ob_aempty( 
	_zy_simnet_cio_10), .pt_ob_tlv( _zy_simnet_cio_11[0:105]), 
	.usr_ob_wr( usr_ob_wr), .usr_ob_tlv( usr_ob_tlv[105:0]), 
	.tlvp_ob_rd( _zy_simnet_tlvp_ob_rd_12_w$), .tlvp_rsm_bimc_idat( 
	_zy_simnet_cio_13), .tlvp_rsm_bimc_isync( _zy_simnet_cio_14), 
	.bimc_rst_n( _zy_simnet_cio_15));
cr_axi4s_mstr u_cr_axi4s_mstr ( .axi4s_mstr_rd( _zy_simnet_tlvp_ob_rd_16_w$), 
	.axi4s_ob_out( _zy_simnet_axi4s_ob_out_17_w$[0:82]), .clk( clk), 
	.rst_n( rst_n), .axi4s_in( _zy_simnet_tlvp_ob_18_w$[0:82]), 
	.axi4s_in_empty( _zy_simnet_tlvp_ob_empty_19_w$), .axi4s_in_aempty( 
	_zy_simnet_tlvp_ob_aempty_20_w$), .axi4s_ob_in( axi4s_ob_in[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\axi4s_ob_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\axi4s_ob_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\axi4s_ob_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\axi4s_ob_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\usr_ob_tlv.ordern  (1,0) 1 12 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\usr_ob_tlv.typen  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\usr_ob_tlv.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\usr_ob_tlv.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\usr_ob_tlv.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\usr_ob_tlv.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\tlvp_ob.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m12 "\tlvp_ob.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m13 "\tlvp_ob.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m14 "\tlvp_ob.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "14"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "axi4s_ob_out 6 \axi4s_ob_out.tvalid  \axi4s_ob_out.tlast  \axi4s_ob_out.tid  \axi4s_ob_out.tstrb  \axi4s_ob_out.tuser  \axi4s_ob_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "usr_ob_tlv 10 \usr_ob_tlv.insert  \usr_ob_tlv.ordern  \usr_ob_tlv.typen  \usr_ob_tlv.sot  \usr_ob_tlv.eot  \usr_ob_tlv.tlast  \usr_ob_tlv.tid  \usr_ob_tlv.tstrb  \usr_ob_tlv.tuser  \usr_ob_tlv.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "axi4s_ob_in 1 \axi4s_ob_in.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "tlvp_ob 6 \tlvp_ob.tvalid  \tlvp_ob.tlast  \tlvp_ob.tid  \tlvp_ob.tstrb  \tlvp_ob.tuser  \tlvp_ob.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "4"
endmodule
