
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_guid_stitcher ( kme_slv_rd, .stitcher_out( {
	\stitcher_out.tvalid , \stitcher_out.tlast , \stitcher_out.tid [0], 
	\stitcher_out.tstrb [7], \stitcher_out.tstrb [6], 
	\stitcher_out.tstrb [5], \stitcher_out.tstrb [4], 
	\stitcher_out.tstrb [3], \stitcher_out.tstrb [2], 
	\stitcher_out.tstrb [1], \stitcher_out.tstrb [0], 
	\stitcher_out.tuser [7], \stitcher_out.tuser [6], 
	\stitcher_out.tuser [5], \stitcher_out.tuser [4], 
	\stitcher_out.tuser [3], \stitcher_out.tuser [2], 
	\stitcher_out.tuser [1], \stitcher_out.tuser [0], 
	\stitcher_out.tdata [63], \stitcher_out.tdata [62], 
	\stitcher_out.tdata [61], \stitcher_out.tdata [60], 
	\stitcher_out.tdata [59], \stitcher_out.tdata [58], 
	\stitcher_out.tdata [57], \stitcher_out.tdata [56], 
	\stitcher_out.tdata [55], \stitcher_out.tdata [54], 
	\stitcher_out.tdata [53], \stitcher_out.tdata [52], 
	\stitcher_out.tdata [51], \stitcher_out.tdata [50], 
	\stitcher_out.tdata [49], \stitcher_out.tdata [48], 
	\stitcher_out.tdata [47], \stitcher_out.tdata [46], 
	\stitcher_out.tdata [45], \stitcher_out.tdata [44], 
	\stitcher_out.tdata [43], \stitcher_out.tdata [42], 
	\stitcher_out.tdata [41], \stitcher_out.tdata [40], 
	\stitcher_out.tdata [39], \stitcher_out.tdata [38], 
	\stitcher_out.tdata [37], \stitcher_out.tdata [36], 
	\stitcher_out.tdata [35], \stitcher_out.tdata [34], 
	\stitcher_out.tdata [33], \stitcher_out.tdata [32], 
	\stitcher_out.tdata [31], \stitcher_out.tdata [30], 
	\stitcher_out.tdata [29], \stitcher_out.tdata [28], 
	\stitcher_out.tdata [27], \stitcher_out.tdata [26], 
	\stitcher_out.tdata [25], \stitcher_out.tdata [24], 
	\stitcher_out.tdata [23], \stitcher_out.tdata [22], 
	\stitcher_out.tdata [21], \stitcher_out.tdata [20], 
	\stitcher_out.tdata [19], \stitcher_out.tdata [18], 
	\stitcher_out.tdata [17], \stitcher_out.tdata [16], 
	\stitcher_out.tdata [15], \stitcher_out.tdata [14], 
	\stitcher_out.tdata [13], \stitcher_out.tdata [12], 
	\stitcher_out.tdata [11], \stitcher_out.tdata [10], 
	\stitcher_out.tdata [9], \stitcher_out.tdata [8], 
	\stitcher_out.tdata [7], \stitcher_out.tdata [6], 
	\stitcher_out.tdata [5], \stitcher_out.tdata [4], 
	\stitcher_out.tdata [3], \stitcher_out.tdata [2], 
	\stitcher_out.tdata [1], \stitcher_out.tdata [0]} ), stitcher_empty, 
	set_tlv_bip2_error_int, clk, rst_n, .kme_slv_out( {
	\kme_slv_out.tvalid , \kme_slv_out.tlast , \kme_slv_out.tid [0], 
	\kme_slv_out.tstrb [7], \kme_slv_out.tstrb [6], 
	\kme_slv_out.tstrb [5], \kme_slv_out.tstrb [4], 
	\kme_slv_out.tstrb [3], \kme_slv_out.tstrb [2], 
	\kme_slv_out.tstrb [1], \kme_slv_out.tstrb [0], 
	\kme_slv_out.tuser [7], \kme_slv_out.tuser [6], 
	\kme_slv_out.tuser [5], \kme_slv_out.tuser [4], 
	\kme_slv_out.tuser [3], \kme_slv_out.tuser [2], 
	\kme_slv_out.tuser [1], \kme_slv_out.tuser [0], 
	\kme_slv_out.tdata [63], \kme_slv_out.tdata [62], 
	\kme_slv_out.tdata [61], \kme_slv_out.tdata [60], 
	\kme_slv_out.tdata [59], \kme_slv_out.tdata [58], 
	\kme_slv_out.tdata [57], \kme_slv_out.tdata [56], 
	\kme_slv_out.tdata [55], \kme_slv_out.tdata [54], 
	\kme_slv_out.tdata [53], \kme_slv_out.tdata [52], 
	\kme_slv_out.tdata [51], \kme_slv_out.tdata [50], 
	\kme_slv_out.tdata [49], \kme_slv_out.tdata [48], 
	\kme_slv_out.tdata [47], \kme_slv_out.tdata [46], 
	\kme_slv_out.tdata [45], \kme_slv_out.tdata [44], 
	\kme_slv_out.tdata [43], \kme_slv_out.tdata [42], 
	\kme_slv_out.tdata [41], \kme_slv_out.tdata [40], 
	\kme_slv_out.tdata [39], \kme_slv_out.tdata [38], 
	\kme_slv_out.tdata [37], \kme_slv_out.tdata [36], 
	\kme_slv_out.tdata [35], \kme_slv_out.tdata [34], 
	\kme_slv_out.tdata [33], \kme_slv_out.tdata [32], 
	\kme_slv_out.tdata [31], \kme_slv_out.tdata [30], 
	\kme_slv_out.tdata [29], \kme_slv_out.tdata [28], 
	\kme_slv_out.tdata [27], \kme_slv_out.tdata [26], 
	\kme_slv_out.tdata [25], \kme_slv_out.tdata [24], 
	\kme_slv_out.tdata [23], \kme_slv_out.tdata [22], 
	\kme_slv_out.tdata [21], \kme_slv_out.tdata [20], 
	\kme_slv_out.tdata [19], \kme_slv_out.tdata [18], 
	\kme_slv_out.tdata [17], \kme_slv_out.tdata [16], 
	\kme_slv_out.tdata [15], \kme_slv_out.tdata [14], 
	\kme_slv_out.tdata [13], \kme_slv_out.tdata [12], 
	\kme_slv_out.tdata [11], \kme_slv_out.tdata [10], 
	\kme_slv_out.tdata [9], \kme_slv_out.tdata [8], 
	\kme_slv_out.tdata [7], \kme_slv_out.tdata [6], 
	\kme_slv_out.tdata [5], \kme_slv_out.tdata [4], 
	\kme_slv_out.tdata [3], \kme_slv_out.tdata [2], 
	\kme_slv_out.tdata [1], \kme_slv_out.tdata [0]} ), kme_slv_aempty, 
	kme_slv_empty, stitcher_rd);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output kme_slv_rd;
output \stitcher_out.tvalid ;
output \stitcher_out.tlast ;
output [0:0] \stitcher_out.tid ;
output [7:0] \stitcher_out.tstrb ;
output [7:0] \stitcher_out.tuser ;
output [63:0] \stitcher_out.tdata ;
wire [82:0] stitcher_out;
output stitcher_empty;
output set_tlv_bip2_error_int;
input clk;
input rst_n;
input \kme_slv_out.tvalid ;
input \kme_slv_out.tlast ;
input [0:0] \kme_slv_out.tid ;
input [7:0] \kme_slv_out.tstrb ;
input [7:0] \kme_slv_out.tuser ;
input [63:0] \kme_slv_out.tdata ;
wire [82:0] kme_slv_out;
input kme_slv_aempty;
input kme_slv_empty;
input stitcher_rd;
wire fifo_out_valid;
wire kme_slv_sot;
wire kme_slv_eot;
wire _zy_simnet_kme_slv_rd_0_w$;
wire [0:82] _zy_simnet_stitcher_out_1_w$;
wire _zy_simnet_stitcher_empty_2_w$;
wire _zy_simnet_set_tlv_bip2_error_int_3_w$;
wire _zy_simnet_dio_4;
wire [0:82] _zy_simnet_fifo_out_5_w$;
wire _zy_simnet_dio_6;
wire _zy_simnet_dio_7;
wire [0:82] _zy_simnet_fifo_in_8_w$;
wire _zy_simnet_fifo_in_valid_9_w$;
wire _zy_simnet_fifo_out_ack_10_w$;
wire _zy_simnet_cio_11;
wire [2:0] cur_state;
wire [2:0] nxt_state;
wire use_aux_guid;
wire src_guid_present;
wire fifo_in_valid;
wire [82:0] fifo_in;
wire [82:0] fifo_out;
wire fifo_out_ack;
wire [63:0] tlv_word0;
wire [63:0] frame_word;
supply0 n1;
wire \fifo_in.tvalid ;
wire \fifo_in.tlast ;
wire [0:0] \fifo_in.tid ;
wire [7:0] \fifo_in.tstrb ;
wire [7:0] \fifo_in.tuser ;
wire [63:0] \fifo_in.tdata ;
wire \fifo_out.tvalid ;
wire \fifo_out.tlast ;
wire [0:0] \fifo_out.tid ;
wire [7:0] \fifo_out.tstrb ;
wire [7:0] \fifo_out.tuser ;
wire [63:0] \fifo_out.tdata ;
wire [1:0] \tlv_word0.tlv_bip2 ;
wire \tlv_word0.no_data ;
wire \tlv_word0.aux_frmd_crc ;
wire [3:0] \tlv_word0.frame_size ;
wire \tlv_word0.vf_valid ;
wire [0:0] \tlv_word0.trace ;
wire [10:0] \tlv_word0.unused ;
wire [10:0] \tlv_word0.tlv_frame_num ;
wire [3:0] \tlv_word0.resv0 ;
wire [3:0] \tlv_word0.tlv_eng_id ;
wire [7:0] \tlv_word0.tlv_seq_num ;
wire [7:0] \tlv_word0.tlv_len ;
wire [7:0] \tlv_word0.tlv_type ;
wire [0:0] \frame_word.debug.tlvp_corrupt ;
wire [1:0] \frame_word.debug.cmd_mode ;
wire [4:0] \frame_word.debug.module_id ;
wire [0:0] \frame_word.debug.cmd_type ;
wire [4:0] \frame_word.debug.tlv_num ;
wire [9:0] \frame_word.debug.byte_num ;
wire [7:0] \frame_word.debug.byte_msk ;
wire \frame_word.trace ;
wire \frame_word.dst_guid_present ;
wire [6:0] \frame_word.frmd_out_type ;
wire [1:0] \frame_word.md_op ;
wire [1:0] \frame_word.md_type ;
wire [6:0] \frame_word.frmd_in_type ;
wire [5:0] \frame_word.frmd_in_aux ;
wire [0:0] \frame_word.frmd_crc_in ;
wire [0:0] \frame_word.src_guid_present ;
wire [3:0] \frame_word.compound_cmd_frm_size ;
tran (stitcher_out[82], \stitcher_out.tvalid );
tran (stitcher_out[81], \stitcher_out.tlast );
tran (stitcher_out[80], \stitcher_out.tid [0]);
tran (stitcher_out[79], \stitcher_out.tstrb [7]);
tran (stitcher_out[78], \stitcher_out.tstrb [6]);
tran (stitcher_out[77], \stitcher_out.tstrb [5]);
tran (stitcher_out[76], \stitcher_out.tstrb [4]);
tran (stitcher_out[75], \stitcher_out.tstrb [3]);
tran (stitcher_out[74], \stitcher_out.tstrb [2]);
tran (stitcher_out[73], \stitcher_out.tstrb [1]);
tran (stitcher_out[72], \stitcher_out.tstrb [0]);
tran (stitcher_out[71], \stitcher_out.tuser [7]);
tran (stitcher_out[70], \stitcher_out.tuser [6]);
tran (stitcher_out[69], \stitcher_out.tuser [5]);
tran (stitcher_out[68], \stitcher_out.tuser [4]);
tran (stitcher_out[67], \stitcher_out.tuser [3]);
tran (stitcher_out[66], \stitcher_out.tuser [2]);
tran (stitcher_out[65], \stitcher_out.tuser [1]);
tran (stitcher_out[64], \stitcher_out.tuser [0]);
tran (stitcher_out[63], \stitcher_out.tdata [63]);
tran (stitcher_out[62], \stitcher_out.tdata [62]);
tran (stitcher_out[61], \stitcher_out.tdata [61]);
tran (stitcher_out[60], \stitcher_out.tdata [60]);
tran (stitcher_out[59], \stitcher_out.tdata [59]);
tran (stitcher_out[58], \stitcher_out.tdata [58]);
tran (stitcher_out[57], \stitcher_out.tdata [57]);
tran (stitcher_out[56], \stitcher_out.tdata [56]);
tran (stitcher_out[55], \stitcher_out.tdata [55]);
tran (stitcher_out[54], \stitcher_out.tdata [54]);
tran (stitcher_out[53], \stitcher_out.tdata [53]);
tran (stitcher_out[52], \stitcher_out.tdata [52]);
tran (stitcher_out[51], \stitcher_out.tdata [51]);
tran (stitcher_out[50], \stitcher_out.tdata [50]);
tran (stitcher_out[49], \stitcher_out.tdata [49]);
tran (stitcher_out[48], \stitcher_out.tdata [48]);
tran (stitcher_out[47], \stitcher_out.tdata [47]);
tran (stitcher_out[46], \stitcher_out.tdata [46]);
tran (stitcher_out[45], \stitcher_out.tdata [45]);
tran (stitcher_out[44], \stitcher_out.tdata [44]);
tran (stitcher_out[43], \stitcher_out.tdata [43]);
tran (stitcher_out[42], \stitcher_out.tdata [42]);
tran (stitcher_out[41], \stitcher_out.tdata [41]);
tran (stitcher_out[40], \stitcher_out.tdata [40]);
tran (stitcher_out[39], \stitcher_out.tdata [39]);
tran (stitcher_out[38], \stitcher_out.tdata [38]);
tran (stitcher_out[37], \stitcher_out.tdata [37]);
tran (stitcher_out[36], \stitcher_out.tdata [36]);
tran (stitcher_out[35], \stitcher_out.tdata [35]);
tran (stitcher_out[34], \stitcher_out.tdata [34]);
tran (stitcher_out[33], \stitcher_out.tdata [33]);
tran (stitcher_out[32], \stitcher_out.tdata [32]);
tran (stitcher_out[31], \stitcher_out.tdata [31]);
tran (stitcher_out[30], \stitcher_out.tdata [30]);
tran (stitcher_out[29], \stitcher_out.tdata [29]);
tran (stitcher_out[28], \stitcher_out.tdata [28]);
tran (stitcher_out[27], \stitcher_out.tdata [27]);
tran (stitcher_out[26], \stitcher_out.tdata [26]);
tran (stitcher_out[25], \stitcher_out.tdata [25]);
tran (stitcher_out[24], \stitcher_out.tdata [24]);
tran (stitcher_out[23], \stitcher_out.tdata [23]);
tran (stitcher_out[22], \stitcher_out.tdata [22]);
tran (stitcher_out[21], \stitcher_out.tdata [21]);
tran (stitcher_out[20], \stitcher_out.tdata [20]);
tran (stitcher_out[19], \stitcher_out.tdata [19]);
tran (stitcher_out[18], \stitcher_out.tdata [18]);
tran (stitcher_out[17], \stitcher_out.tdata [17]);
tran (stitcher_out[16], \stitcher_out.tdata [16]);
tran (stitcher_out[15], \stitcher_out.tdata [15]);
tran (stitcher_out[14], \stitcher_out.tdata [14]);
tran (stitcher_out[13], \stitcher_out.tdata [13]);
tran (stitcher_out[12], \stitcher_out.tdata [12]);
tran (stitcher_out[11], \stitcher_out.tdata [11]);
tran (stitcher_out[10], \stitcher_out.tdata [10]);
tran (stitcher_out[9], \stitcher_out.tdata [9]);
tran (stitcher_out[8], \stitcher_out.tdata [8]);
tran (stitcher_out[7], \stitcher_out.tdata [7]);
tran (stitcher_out[6], \stitcher_out.tdata [6]);
tran (stitcher_out[5], \stitcher_out.tdata [5]);
tran (stitcher_out[4], \stitcher_out.tdata [4]);
tran (stitcher_out[3], \stitcher_out.tdata [3]);
tran (stitcher_out[2], \stitcher_out.tdata [2]);
tran (stitcher_out[1], \stitcher_out.tdata [1]);
tran (stitcher_out[0], \stitcher_out.tdata [0]);
tran (kme_slv_out[82], \kme_slv_out.tvalid );
tran (kme_slv_out[81], \kme_slv_out.tlast );
tran (kme_slv_out[80], \kme_slv_out.tid [0]);
tran (kme_slv_out[79], \kme_slv_out.tstrb [7]);
tran (kme_slv_out[78], \kme_slv_out.tstrb [6]);
tran (kme_slv_out[77], \kme_slv_out.tstrb [5]);
tran (kme_slv_out[76], \kme_slv_out.tstrb [4]);
tran (kme_slv_out[75], \kme_slv_out.tstrb [3]);
tran (kme_slv_out[74], \kme_slv_out.tstrb [2]);
tran (kme_slv_out[73], \kme_slv_out.tstrb [1]);
tran (kme_slv_out[72], \kme_slv_out.tstrb [0]);
tran (kme_slv_out[71], \kme_slv_out.tuser [7]);
tran (kme_slv_out[70], \kme_slv_out.tuser [6]);
tran (kme_slv_out[69], \kme_slv_out.tuser [5]);
tran (kme_slv_out[68], \kme_slv_out.tuser [4]);
tran (kme_slv_out[67], \kme_slv_out.tuser [3]);
tran (kme_slv_out[66], \kme_slv_out.tuser [2]);
tran (kme_slv_out[65], \kme_slv_out.tuser [1]);
tran (kme_slv_out[64], \kme_slv_out.tuser [0]);
tran (kme_slv_out[63], \kme_slv_out.tdata [63]);
tran (kme_slv_out[62], \kme_slv_out.tdata [62]);
tran (kme_slv_out[61], \kme_slv_out.tdata [61]);
tran (kme_slv_out[60], \kme_slv_out.tdata [60]);
tran (kme_slv_out[59], \kme_slv_out.tdata [59]);
tran (kme_slv_out[58], \kme_slv_out.tdata [58]);
tran (kme_slv_out[57], \kme_slv_out.tdata [57]);
tran (kme_slv_out[56], \kme_slv_out.tdata [56]);
tran (kme_slv_out[55], \kme_slv_out.tdata [55]);
tran (kme_slv_out[54], \kme_slv_out.tdata [54]);
tran (kme_slv_out[53], \kme_slv_out.tdata [53]);
tran (kme_slv_out[52], \kme_slv_out.tdata [52]);
tran (kme_slv_out[51], \kme_slv_out.tdata [51]);
tran (kme_slv_out[50], \kme_slv_out.tdata [50]);
tran (kme_slv_out[49], \kme_slv_out.tdata [49]);
tran (kme_slv_out[48], \kme_slv_out.tdata [48]);
tran (kme_slv_out[47], \kme_slv_out.tdata [47]);
tran (kme_slv_out[46], \kme_slv_out.tdata [46]);
tran (kme_slv_out[45], \kme_slv_out.tdata [45]);
tran (kme_slv_out[44], \kme_slv_out.tdata [44]);
tran (kme_slv_out[43], \kme_slv_out.tdata [43]);
tran (kme_slv_out[42], \kme_slv_out.tdata [42]);
tran (kme_slv_out[41], \kme_slv_out.tdata [41]);
tran (kme_slv_out[40], \kme_slv_out.tdata [40]);
tran (kme_slv_out[39], \kme_slv_out.tdata [39]);
tran (kme_slv_out[38], \kme_slv_out.tdata [38]);
tran (kme_slv_out[37], \kme_slv_out.tdata [37]);
tran (kme_slv_out[36], \kme_slv_out.tdata [36]);
tran (kme_slv_out[35], \kme_slv_out.tdata [35]);
tran (kme_slv_out[34], \kme_slv_out.tdata [34]);
tran (kme_slv_out[33], \kme_slv_out.tdata [33]);
tran (kme_slv_out[32], \kme_slv_out.tdata [32]);
tran (kme_slv_out[31], \kme_slv_out.tdata [31]);
tran (kme_slv_out[30], \kme_slv_out.tdata [30]);
tran (kme_slv_out[29], \kme_slv_out.tdata [29]);
tran (kme_slv_out[28], \kme_slv_out.tdata [28]);
tran (kme_slv_out[27], \kme_slv_out.tdata [27]);
tran (kme_slv_out[26], \kme_slv_out.tdata [26]);
tran (kme_slv_out[25], \kme_slv_out.tdata [25]);
tran (kme_slv_out[24], \kme_slv_out.tdata [24]);
tran (kme_slv_out[23], \kme_slv_out.tdata [23]);
tran (kme_slv_out[22], \kme_slv_out.tdata [22]);
tran (kme_slv_out[21], \kme_slv_out.tdata [21]);
tran (kme_slv_out[20], \kme_slv_out.tdata [20]);
tran (kme_slv_out[19], \kme_slv_out.tdata [19]);
tran (kme_slv_out[18], \kme_slv_out.tdata [18]);
tran (kme_slv_out[17], \kme_slv_out.tdata [17]);
tran (kme_slv_out[16], \kme_slv_out.tdata [16]);
tran (kme_slv_out[15], \kme_slv_out.tdata [15]);
tran (kme_slv_out[14], \kme_slv_out.tdata [14]);
tran (kme_slv_out[13], \kme_slv_out.tdata [13]);
tran (kme_slv_out[12], \kme_slv_out.tdata [12]);
tran (kme_slv_out[11], \kme_slv_out.tdata [11]);
tran (kme_slv_out[10], \kme_slv_out.tdata [10]);
tran (kme_slv_out[9], \kme_slv_out.tdata [9]);
tran (kme_slv_out[8], \kme_slv_out.tdata [8]);
tran (kme_slv_out[7], \kme_slv_out.tdata [7]);
tran (kme_slv_out[6], \kme_slv_out.tdata [6]);
tran (kme_slv_out[5], \kme_slv_out.tdata [5]);
tran (kme_slv_out[4], \kme_slv_out.tdata [4]);
tran (kme_slv_out[3], \kme_slv_out.tdata [3]);
tran (kme_slv_out[2], \kme_slv_out.tdata [2]);
tran (kme_slv_out[1], \kme_slv_out.tdata [1]);
tran (kme_slv_out[0], \kme_slv_out.tdata [0]);
tran (tlv_word0[63], \tlv_word0.tlv_bip2 [1]);
tran (tlv_word0[62], \tlv_word0.tlv_bip2 [0]);
tran (tlv_word0[61], \tlv_word0.no_data );
tran (tlv_word0[60], \tlv_word0.aux_frmd_crc );
tran (tlv_word0[59], \tlv_word0.frame_size [3]);
tran (tlv_word0[58], \tlv_word0.frame_size [2]);
tran (tlv_word0[57], \tlv_word0.frame_size [1]);
tran (tlv_word0[56], \tlv_word0.frame_size [0]);
tran (tlv_word0[55], \tlv_word0.vf_valid );
tran (tlv_word0[54], \tlv_word0.trace [0]);
tran (tlv_word0[53], \tlv_word0.unused [10]);
tran (tlv_word0[52], \tlv_word0.unused [9]);
tran (tlv_word0[51], \tlv_word0.unused [8]);
tran (tlv_word0[50], \tlv_word0.unused [7]);
tran (tlv_word0[49], \tlv_word0.unused [6]);
tran (tlv_word0[48], \tlv_word0.unused [5]);
tran (tlv_word0[47], \tlv_word0.unused [4]);
tran (tlv_word0[46], \tlv_word0.unused [3]);
tran (tlv_word0[45], \tlv_word0.unused [2]);
tran (tlv_word0[44], \tlv_word0.unused [1]);
tran (tlv_word0[43], \tlv_word0.unused [0]);
tran (tlv_word0[42], \tlv_word0.tlv_frame_num [10]);
tran (tlv_word0[41], \tlv_word0.tlv_frame_num [9]);
tran (tlv_word0[40], \tlv_word0.tlv_frame_num [8]);
tran (tlv_word0[39], \tlv_word0.tlv_frame_num [7]);
tran (tlv_word0[38], \tlv_word0.tlv_frame_num [6]);
tran (tlv_word0[37], \tlv_word0.tlv_frame_num [5]);
tran (tlv_word0[36], \tlv_word0.tlv_frame_num [4]);
tran (tlv_word0[35], \tlv_word0.tlv_frame_num [3]);
tran (tlv_word0[34], \tlv_word0.tlv_frame_num [2]);
tran (tlv_word0[33], \tlv_word0.tlv_frame_num [1]);
tran (tlv_word0[32], \tlv_word0.tlv_frame_num [0]);
tran (tlv_word0[31], \tlv_word0.resv0 [3]);
tran (tlv_word0[30], \tlv_word0.resv0 [2]);
tran (tlv_word0[29], \tlv_word0.resv0 [1]);
tran (tlv_word0[28], \tlv_word0.resv0 [0]);
tran (tlv_word0[27], \tlv_word0.tlv_eng_id [3]);
tran (tlv_word0[26], \tlv_word0.tlv_eng_id [2]);
tran (tlv_word0[25], \tlv_word0.tlv_eng_id [1]);
tran (tlv_word0[24], \tlv_word0.tlv_eng_id [0]);
tran (tlv_word0[23], \tlv_word0.tlv_seq_num [7]);
tran (tlv_word0[22], \tlv_word0.tlv_seq_num [6]);
tran (tlv_word0[21], \tlv_word0.tlv_seq_num [5]);
tran (tlv_word0[20], \tlv_word0.tlv_seq_num [4]);
tran (tlv_word0[19], \tlv_word0.tlv_seq_num [3]);
tran (tlv_word0[18], \tlv_word0.tlv_seq_num [2]);
tran (tlv_word0[17], \tlv_word0.tlv_seq_num [1]);
tran (tlv_word0[16], \tlv_word0.tlv_seq_num [0]);
tran (tlv_word0[15], \tlv_word0.tlv_len [7]);
tran (tlv_word0[14], \tlv_word0.tlv_len [6]);
tran (tlv_word0[13], \tlv_word0.tlv_len [5]);
tran (tlv_word0[12], \tlv_word0.tlv_len [4]);
tran (tlv_word0[11], \tlv_word0.tlv_len [3]);
tran (tlv_word0[10], \tlv_word0.tlv_len [2]);
tran (tlv_word0[9], \tlv_word0.tlv_len [1]);
tran (tlv_word0[8], \tlv_word0.tlv_len [0]);
tran (tlv_word0[7], \tlv_word0.tlv_type [7]);
tran (tlv_word0[6], \tlv_word0.tlv_type [6]);
tran (tlv_word0[5], \tlv_word0.tlv_type [5]);
tran (tlv_word0[4], \tlv_word0.tlv_type [4]);
tran (tlv_word0[3], \tlv_word0.tlv_type [3]);
tran (tlv_word0[2], \tlv_word0.tlv_type [2]);
tran (tlv_word0[1], \tlv_word0.tlv_type [1]);
tran (tlv_word0[0], \tlv_word0.tlv_type [0]);
tran (frame_word[63], \frame_word.debug.tlvp_corrupt [0]);
tran (frame_word[62], \frame_word.debug.cmd_mode [1]);
tran (frame_word[61], \frame_word.debug.cmd_mode [0]);
tran (frame_word[60], \frame_word.debug.module_id [4]);
tran (frame_word[59], \frame_word.debug.module_id [3]);
tran (frame_word[58], \frame_word.debug.module_id [2]);
tran (frame_word[57], \frame_word.debug.module_id [1]);
tran (frame_word[56], \frame_word.debug.module_id [0]);
tran (frame_word[55], \frame_word.debug.cmd_type [0]);
tran (frame_word[54], \frame_word.debug.tlv_num [4]);
tran (frame_word[53], \frame_word.debug.tlv_num [3]);
tran (frame_word[52], \frame_word.debug.tlv_num [2]);
tran (frame_word[51], \frame_word.debug.tlv_num [1]);
tran (frame_word[50], \frame_word.debug.tlv_num [0]);
tran (frame_word[49], \frame_word.debug.byte_num [9]);
tran (frame_word[48], \frame_word.debug.byte_num [8]);
tran (frame_word[47], \frame_word.debug.byte_num [7]);
tran (frame_word[46], \frame_word.debug.byte_num [6]);
tran (frame_word[45], \frame_word.debug.byte_num [5]);
tran (frame_word[44], \frame_word.debug.byte_num [4]);
tran (frame_word[43], \frame_word.debug.byte_num [3]);
tran (frame_word[42], \frame_word.debug.byte_num [2]);
tran (frame_word[41], \frame_word.debug.byte_num [1]);
tran (frame_word[40], \frame_word.debug.byte_num [0]);
tran (frame_word[39], \frame_word.debug.byte_msk [7]);
tran (frame_word[38], \frame_word.debug.byte_msk [6]);
tran (frame_word[37], \frame_word.debug.byte_msk [5]);
tran (frame_word[36], \frame_word.debug.byte_msk [4]);
tran (frame_word[35], \frame_word.debug.byte_msk [3]);
tran (frame_word[34], \frame_word.debug.byte_msk [2]);
tran (frame_word[33], \frame_word.debug.byte_msk [1]);
tran (frame_word[32], \frame_word.debug.byte_msk [0]);
tran (frame_word[31], \frame_word.trace );
tran (frame_word[30], \frame_word.dst_guid_present );
tran (frame_word[29], \frame_word.frmd_out_type [6]);
tran (frame_word[28], \frame_word.frmd_out_type [5]);
tran (frame_word[27], \frame_word.frmd_out_type [4]);
tran (frame_word[26], \frame_word.frmd_out_type [3]);
tran (frame_word[25], \frame_word.frmd_out_type [2]);
tran (frame_word[24], \frame_word.frmd_out_type [1]);
tran (frame_word[23], \frame_word.frmd_out_type [0]);
tran (frame_word[22], \frame_word.md_op [1]);
tran (frame_word[21], \frame_word.md_op [0]);
tran (frame_word[20], \frame_word.md_type [1]);
tran (frame_word[19], \frame_word.md_type [0]);
tran (frame_word[18], \frame_word.frmd_in_type [6]);
tran (frame_word[17], \frame_word.frmd_in_type [5]);
tran (frame_word[16], \frame_word.frmd_in_type [4]);
tran (frame_word[15], \frame_word.frmd_in_type [3]);
tran (frame_word[14], \frame_word.frmd_in_type [2]);
tran (frame_word[13], \frame_word.frmd_in_type [1]);
tran (frame_word[12], \frame_word.frmd_in_type [0]);
tran (frame_word[11], \frame_word.frmd_in_aux [5]);
tran (frame_word[10], \frame_word.frmd_in_aux [4]);
tran (frame_word[9], \frame_word.frmd_in_aux [3]);
tran (frame_word[8], \frame_word.frmd_in_aux [2]);
tran (frame_word[7], \frame_word.frmd_in_aux [1]);
tran (frame_word[6], \frame_word.frmd_in_aux [0]);
tran (frame_word[5], \frame_word.frmd_crc_in [0]);
tran (frame_word[4], \frame_word.src_guid_present [0]);
tran (frame_word[3], \frame_word.compound_cmd_frm_size [3]);
tran (frame_word[2], \frame_word.compound_cmd_frm_size [2]);
tran (frame_word[1], \frame_word.compound_cmd_frm_size [1]);
tran (frame_word[0], \frame_word.compound_cmd_frm_size [0]);
tran (fifo_out[82], \fifo_out.tvalid );
tran (fifo_out[81], \fifo_out.tlast );
tran (fifo_out[80], \fifo_out.tid [0]);
tran (fifo_out[79], \fifo_out.tstrb [7]);
tran (fifo_out[78], \fifo_out.tstrb [6]);
tran (fifo_out[77], \fifo_out.tstrb [5]);
tran (fifo_out[76], \fifo_out.tstrb [4]);
tran (fifo_out[75], \fifo_out.tstrb [3]);
tran (fifo_out[74], \fifo_out.tstrb [2]);
tran (fifo_out[73], \fifo_out.tstrb [1]);
tran (fifo_out[72], \fifo_out.tstrb [0]);
tran (fifo_out[71], \fifo_out.tuser [7]);
tran (fifo_out[70], \fifo_out.tuser [6]);
tran (fifo_out[69], \fifo_out.tuser [5]);
tran (fifo_out[68], \fifo_out.tuser [4]);
tran (fifo_out[67], \fifo_out.tuser [3]);
tran (fifo_out[66], \fifo_out.tuser [2]);
tran (fifo_out[65], \fifo_out.tuser [1]);
tran (fifo_out[64], \fifo_out.tuser [0]);
tran (fifo_out[63], \fifo_out.tdata [63]);
tran (fifo_out[62], \fifo_out.tdata [62]);
tran (fifo_out[61], \fifo_out.tdata [61]);
tran (fifo_out[60], \fifo_out.tdata [60]);
tran (fifo_out[59], \fifo_out.tdata [59]);
tran (fifo_out[58], \fifo_out.tdata [58]);
tran (fifo_out[57], \fifo_out.tdata [57]);
tran (fifo_out[56], \fifo_out.tdata [56]);
tran (fifo_out[55], \fifo_out.tdata [55]);
tran (fifo_out[54], \fifo_out.tdata [54]);
tran (fifo_out[53], \fifo_out.tdata [53]);
tran (fifo_out[52], \fifo_out.tdata [52]);
tran (fifo_out[51], \fifo_out.tdata [51]);
tran (fifo_out[50], \fifo_out.tdata [50]);
tran (fifo_out[49], \fifo_out.tdata [49]);
tran (fifo_out[48], \fifo_out.tdata [48]);
tran (fifo_out[47], \fifo_out.tdata [47]);
tran (fifo_out[46], \fifo_out.tdata [46]);
tran (fifo_out[45], \fifo_out.tdata [45]);
tran (fifo_out[44], \fifo_out.tdata [44]);
tran (fifo_out[43], \fifo_out.tdata [43]);
tran (fifo_out[42], \fifo_out.tdata [42]);
tran (fifo_out[41], \fifo_out.tdata [41]);
tran (fifo_out[40], \fifo_out.tdata [40]);
tran (fifo_out[39], \fifo_out.tdata [39]);
tran (fifo_out[38], \fifo_out.tdata [38]);
tran (fifo_out[37], \fifo_out.tdata [37]);
tran (fifo_out[36], \fifo_out.tdata [36]);
tran (fifo_out[35], \fifo_out.tdata [35]);
tran (fifo_out[34], \fifo_out.tdata [34]);
tran (fifo_out[33], \fifo_out.tdata [33]);
tran (fifo_out[32], \fifo_out.tdata [32]);
tran (fifo_out[31], \fifo_out.tdata [31]);
tran (fifo_out[30], \fifo_out.tdata [30]);
tran (fifo_out[29], \fifo_out.tdata [29]);
tran (fifo_out[28], \fifo_out.tdata [28]);
tran (fifo_out[27], \fifo_out.tdata [27]);
tran (fifo_out[26], \fifo_out.tdata [26]);
tran (fifo_out[25], \fifo_out.tdata [25]);
tran (fifo_out[24], \fifo_out.tdata [24]);
tran (fifo_out[23], \fifo_out.tdata [23]);
tran (fifo_out[22], \fifo_out.tdata [22]);
tran (fifo_out[21], \fifo_out.tdata [21]);
tran (fifo_out[20], \fifo_out.tdata [20]);
tran (fifo_out[19], \fifo_out.tdata [19]);
tran (fifo_out[18], \fifo_out.tdata [18]);
tran (fifo_out[17], \fifo_out.tdata [17]);
tran (fifo_out[16], \fifo_out.tdata [16]);
tran (fifo_out[15], \fifo_out.tdata [15]);
tran (fifo_out[14], \fifo_out.tdata [14]);
tran (fifo_out[13], \fifo_out.tdata [13]);
tran (fifo_out[12], \fifo_out.tdata [12]);
tran (fifo_out[11], \fifo_out.tdata [11]);
tran (fifo_out[10], \fifo_out.tdata [10]);
tran (fifo_out[9], \fifo_out.tdata [9]);
tran (fifo_out[8], \fifo_out.tdata [8]);
tran (fifo_out[7], \fifo_out.tdata [7]);
tran (fifo_out[6], \fifo_out.tdata [6]);
tran (fifo_out[5], \fifo_out.tdata [5]);
tran (fifo_out[4], \fifo_out.tdata [4]);
tran (fifo_out[3], \fifo_out.tdata [3]);
tran (fifo_out[2], \fifo_out.tdata [2]);
tran (fifo_out[1], \fifo_out.tdata [1]);
tran (fifo_out[0], \fifo_out.tdata [0]);
tran (fifo_in[82], \fifo_in.tvalid );
tran (fifo_in[81], \fifo_in.tlast );
tran (fifo_in[80], \fifo_in.tid [0]);
tran (fifo_in[79], \fifo_in.tstrb [7]);
tran (fifo_in[78], \fifo_in.tstrb [6]);
tran (fifo_in[77], \fifo_in.tstrb [5]);
tran (fifo_in[76], \fifo_in.tstrb [4]);
tran (fifo_in[75], \fifo_in.tstrb [3]);
tran (fifo_in[74], \fifo_in.tstrb [2]);
tran (fifo_in[73], \fifo_in.tstrb [1]);
tran (fifo_in[72], \fifo_in.tstrb [0]);
tran (fifo_in[71], \fifo_in.tuser [7]);
tran (fifo_in[70], \fifo_in.tuser [6]);
tran (fifo_in[69], \fifo_in.tuser [5]);
tran (fifo_in[68], \fifo_in.tuser [4]);
tran (fifo_in[67], \fifo_in.tuser [3]);
tran (fifo_in[66], \fifo_in.tuser [2]);
tran (fifo_in[65], \fifo_in.tuser [1]);
tran (fifo_in[64], \fifo_in.tuser [0]);
tran (fifo_in[63], \fifo_in.tdata [63]);
tran (fifo_in[62], \fifo_in.tdata [62]);
tran (fifo_in[61], \fifo_in.tdata [61]);
tran (fifo_in[60], \fifo_in.tdata [60]);
tran (fifo_in[59], \fifo_in.tdata [59]);
tran (fifo_in[58], \fifo_in.tdata [58]);
tran (fifo_in[57], \fifo_in.tdata [57]);
tran (fifo_in[56], \fifo_in.tdata [56]);
tran (fifo_in[55], \fifo_in.tdata [55]);
tran (fifo_in[54], \fifo_in.tdata [54]);
tran (fifo_in[53], \fifo_in.tdata [53]);
tran (fifo_in[52], \fifo_in.tdata [52]);
tran (fifo_in[51], \fifo_in.tdata [51]);
tran (fifo_in[50], \fifo_in.tdata [50]);
tran (fifo_in[49], \fifo_in.tdata [49]);
tran (fifo_in[48], \fifo_in.tdata [48]);
tran (fifo_in[47], \fifo_in.tdata [47]);
tran (fifo_in[46], \fifo_in.tdata [46]);
tran (fifo_in[45], \fifo_in.tdata [45]);
tran (fifo_in[44], \fifo_in.tdata [44]);
tran (fifo_in[43], \fifo_in.tdata [43]);
tran (fifo_in[42], \fifo_in.tdata [42]);
tran (fifo_in[41], \fifo_in.tdata [41]);
tran (fifo_in[40], \fifo_in.tdata [40]);
tran (fifo_in[39], \fifo_in.tdata [39]);
tran (fifo_in[38], \fifo_in.tdata [38]);
tran (fifo_in[37], \fifo_in.tdata [37]);
tran (fifo_in[36], \fifo_in.tdata [36]);
tran (fifo_in[35], \fifo_in.tdata [35]);
tran (fifo_in[34], \fifo_in.tdata [34]);
tran (fifo_in[33], \fifo_in.tdata [33]);
tran (fifo_in[32], \fifo_in.tdata [32]);
tran (fifo_in[31], \fifo_in.tdata [31]);
tran (fifo_in[30], \fifo_in.tdata [30]);
tran (fifo_in[29], \fifo_in.tdata [29]);
tran (fifo_in[28], \fifo_in.tdata [28]);
tran (fifo_in[27], \fifo_in.tdata [27]);
tran (fifo_in[26], \fifo_in.tdata [26]);
tran (fifo_in[25], \fifo_in.tdata [25]);
tran (fifo_in[24], \fifo_in.tdata [24]);
tran (fifo_in[23], \fifo_in.tdata [23]);
tran (fifo_in[22], \fifo_in.tdata [22]);
tran (fifo_in[21], \fifo_in.tdata [21]);
tran (fifo_in[20], \fifo_in.tdata [20]);
tran (fifo_in[19], \fifo_in.tdata [19]);
tran (fifo_in[18], \fifo_in.tdata [18]);
tran (fifo_in[17], \fifo_in.tdata [17]);
tran (fifo_in[16], \fifo_in.tdata [16]);
tran (fifo_in[15], \fifo_in.tdata [15]);
tran (fifo_in[14], \fifo_in.tdata [14]);
tran (fifo_in[13], \fifo_in.tdata [13]);
tran (fifo_in[12], \fifo_in.tdata [12]);
tran (fifo_in[11], \fifo_in.tdata [11]);
tran (fifo_in[10], \fifo_in.tdata [10]);
tran (fifo_in[9], \fifo_in.tdata [9]);
tran (fifo_in[8], \fifo_in.tdata [8]);
tran (fifo_in[7], \fifo_in.tdata [7]);
tran (fifo_in[6], \fifo_in.tdata [6]);
tran (fifo_in[5], \fifo_in.tdata [5]);
tran (fifo_in[4], \fifo_in.tdata [4]);
tran (fifo_in[3], \fifo_in.tdata [3]);
tran (fifo_in[2], \fifo_in.tdata [2]);
tran (fifo_in[1], \fifo_in.tdata [1]);
tran (fifo_in[0], \fifo_in.tdata [0]);
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_11));
Q_INV U1 ( .A(n68), .Z(n2));
cr_kme_fifo_xcm59 aux_cmd_fifo ( .fifo_in_stall( _zy_simnet_dio_4), 
	.fifo_out( _zy_simnet_fifo_out_5_w$[0:82]), .fifo_out_valid( 
	fifo_out_valid), .fifo_overflow( _zy_simnet_dio_6), 
	.fifo_underflow( _zy_simnet_dio_7), .clk( clk), .rst_n( rst_n), 
	.fifo_in( _zy_simnet_fifo_in_8_w$[0:82]), .fifo_in_valid( 
	_zy_simnet_fifo_in_valid_9_w$), .fifo_out_ack( 
	_zy_simnet_fifo_out_ack_10_w$), .fifo_in_stall_override( 
	_zy_simnet_cio_11));
ixc_assign _zz_strnp_9 ( _zy_simnet_fifo_out_ack_10_w$, fifo_out_ack);
ixc_assign _zz_strnp_8 ( _zy_simnet_fifo_in_valid_9_w$, fifo_in_valid);
ixc_assign_83 _zz_strnp_7 ( _zy_simnet_fifo_in_8_w$[0:82], fifo_in[82:0]);
ixc_assign_83 _zz_strnp_6 ( fifo_out[82:0], _zy_simnet_fifo_out_5_w$[0:82]);
ixc_assign _zz_strnp_5 ( _zy_simnet_set_tlv_bip2_error_int_3_w$, 
	set_tlv_bip2_error_int);
ixc_assign _zz_strnp_4 ( _zy_simnet_stitcher_empty_2_w$, stitcher_empty);
ixc_assign_83 _zz_strnp_3 ( _zy_simnet_stitcher_out_1_w$[0:82], 
	stitcher_out[82:0]);
ixc_assign _zz_strnp_2 ( _zy_simnet_kme_slv_rd_0_w$, kme_slv_rd);
ixc_assign_64 _zz_strnp_1 ( frame_word[63:0], kme_slv_out[63:0]);
ixc_assign_64 _zz_strnp_0 ( tlv_word0[63:0], kme_slv_out[63:0]);
Q_INV U13 ( .A(n10), .Z(kme_slv_eot));
Q_OR02 U14 ( .A0(n8), .A1(n9), .Z(n10));
Q_OR03 U15 ( .A0(n6), .A1(kme_slv_out[64]), .A2(n7), .Z(n9));
Q_OR03 U16 ( .A0(kme_slv_out[68]), .A1(kme_slv_out[67]), .A2(kme_slv_out[66]), .Z(n8));
Q_OR03 U17 ( .A0(kme_slv_out[71]), .A1(kme_slv_out[70]), .A2(kme_slv_out[69]), .Z(n7));
Q_INV U18 ( .A(kme_slv_out[65]), .Z(n6));
Q_INV U19 ( .A(n5), .Z(kme_slv_sot));
Q_OR02 U20 ( .A0(n8), .A1(n4), .Z(n5));
Q_OR03 U21 ( .A0(kme_slv_out[65]), .A1(n3), .A2(n7), .Z(n4));
Q_INV U22 ( .A(kme_slv_out[64]), .Z(n3));
Q_AN03 U23 ( .A0(kme_slv_rd), .A1(kme_slv_sot), .A2(n41), .Z(set_tlv_bip2_error_int));
Q_OR02 U24 ( .A0(n42), .A1(n43), .Z(n41));
Q_FDP1 \cur_state_REG[0] ( .CK(clk), .R(rst_n), .D(nxt_state[0]), .Q(cur_state[0]), .QN(n190));
Q_FDP1 \cur_state_REG[1] ( .CK(clk), .R(rst_n), .D(nxt_state[1]), .Q(cur_state[1]), .QN(n200));
Q_FDP1 \cur_state_REG[2] ( .CK(clk), .R(rst_n), .D(nxt_state[2]), .Q(cur_state[2]), .QN(n197));
Q_INV U28 ( .A(n104), .Z(n87));
Q_ND02 U29 ( .A0(stitcher_rd), .A1(stitcher_out[81]), .Z(n86));
Q_OR03 U30 ( .A0(tlv_word0[7]), .A1(tlv_word0[6]), .A2(tlv_word0[5]), .Z(n44));
Q_OR03 U31 ( .A0(tlv_word0[4]), .A1(tlv_word0[3]), .A2(tlv_word0[2]), .Z(n45));
Q_OR03 U32 ( .A0(tlv_word0[1]), .A1(tlv_word0[0]), .A2(n44), .Z(n46));
Q_OR02 U33 ( .A0(n45), .A1(n46), .Z(n47));
Q_AN03 U34 ( .A0(kme_slv_rd), .A1(n47), .A2(kme_slv_sot), .Z(n85));
Q_MX02 U35 ( .S(n84), .A0(n48), .A1(n82), .Z(nxt_state[0]));
Q_INV U36 ( .A(n83), .Z(n48));
Q_INV U37 ( .A(n49), .Z(nxt_state[1]));
Q_MX02 U38 ( .S(n84), .A0(n53), .A1(n83), .Z(n49));
Q_INV U39 ( .A(n50), .Z(nxt_state[2]));
Q_MX02 U40 ( .S(n84), .A0(n51), .A1(n52), .Z(n50));
Q_AN02 U41 ( .A0(n83), .A1(n82), .Z(n51));
Q_OR02 U42 ( .A0(n83), .A1(n82), .Z(n52));
Q_INV U43 ( .A(n53), .Z(n82));
Q_MX03 U44 ( .S0(cur_state[1]), .S1(cur_state[2]), .A0(n54), .A1(n55), .A2(n59), .Z(n53));
Q_NR02 U45 ( .A0(cur_state[0]), .A1(n85), .Z(n54));
Q_MX02 U46 ( .S(cur_state[0]), .A0(n56), .A1(n57), .Z(n55));
Q_OA21 U47 ( .A0(kme_slv_out[81]), .A1(kme_slv_eot), .B0(kme_slv_rd), .Z(n56));
Q_AN02 U48 ( .A0(kme_slv_rd), .A1(n58), .Z(n57));
Q_OR03 U49 ( .A0(n60), .A1(n61), .A2(n200), .Z(n59));
Q_NR02 U50 ( .A0(n62), .A1(cur_state[0]), .Z(n61));
Q_AN02 U51 ( .A0(kme_slv_rd), .A1(use_aux_guid), .Z(n62));
Q_AN02 U52 ( .A0(n63), .A1(cur_state[0]), .Z(n60));
Q_MX04 U53 ( .S0(cur_state[1]), .S1(cur_state[2]), .A0(n64), .A1(n65), .A2(n69), .A3(n60), .Z(n83));
Q_ND02 U54 ( .A0(cur_state[0]), .A1(kme_slv_rd), .Z(n64));
Q_AN02 U55 ( .A0(n66), .A1(n67), .Z(n65));
Q_AO21 U56 ( .A0(kme_slv_rd), .A1(n68), .B0(n190), .Z(n66));
Q_OR02 U57 ( .A0(n190), .A1(n63), .Z(n69));
Q_MX02 U58 ( .S(cur_state[2]), .A0(n70), .A1(n75), .Z(n84));
Q_OR03 U59 ( .A0(n71), .A1(n72), .A2(n200), .Z(n70));
Q_INV U60 ( .A(n67), .Z(n72));
Q_OR03 U61 ( .A0(n73), .A1(n68), .A2(cur_state[0]), .Z(n67));
Q_OR02 U62 ( .A0(kme_slv_out[81]), .A1(n10), .Z(n68));
Q_OA21 U63 ( .A0(n73), .A1(n58), .B0(cur_state[0]), .Z(n71));
Q_OR02 U64 ( .A0(kme_slv_out[81]), .A1(n74), .Z(n58));
Q_ND02 U65 ( .A0(n10), .A1(src_guid_present), .Z(n74));
Q_MX02 U66 ( .S(cur_state[1]), .A0(n76), .A1(n80), .Z(n75));
Q_INV U67 ( .A(n77), .Z(n76));
Q_MX02 U68 ( .S(cur_state[0]), .A0(n86), .A1(n78), .Z(n77));
Q_OR02 U69 ( .A0(fifo_out_valid), .A1(n79), .Z(n78));
Q_INV U70 ( .A(n63), .Z(n79));
Q_AN02 U71 ( .A0(kme_slv_rd), .A1(kme_slv_out[81]), .Z(n63));
Q_MX02 U72 ( .S(cur_state[0]), .A0(n73), .A1(n81), .Z(n80));
Q_INV U73 ( .A(kme_slv_rd), .Z(n73));
Q_AN03 U74 ( .A0(kme_slv_out[81]), .A1(n87), .A2(kme_slv_rd), .Z(n81));
Q_AN03 U75 ( .A0(n89), .A1(n90), .A2(n88), .Z(n96));
Q_INV U76 ( .A(tlv_word0[1]), .Z(n90));
Q_AN03 U77 ( .A0(tlv_word0[3]), .A1(n92), .A2(n91), .Z(n88));
Q_INV U78 ( .A(tlv_word0[2]), .Z(n92));
Q_AN02 U79 ( .A0(n93), .A1(tlv_word0[4]), .Z(n91));
Q_INV U80 ( .A(tlv_word0[5]), .Z(n93));
Q_NR02 U81 ( .A0(tlv_word0[7]), .A1(tlv_word0[6]), .Z(n89));
Q_AN02 U82 ( .A0(n94), .A1(n95), .Z(n97));
Q_NR02 U83 ( .A0(cur_state[0]), .A1(n5), .Z(n95));
Q_AN02 U84 ( .A0(n94), .A1(cur_state[0]), .Z(n98));
Q_NR02 U85 ( .A0(cur_state[2]), .A1(cur_state[1]), .Z(n94));
Q_INV U86 ( .A(kme_slv_empty), .Z(n99));
Q_INV U87 ( .A(fifo_out[65]), .Z(n100));
Q_OR03 U88 ( .A0(fifo_out[71]), .A1(fifo_out[70]), .A2(fifo_out[69]), .Z(n101));
Q_OR03 U89 ( .A0(fifo_out[68]), .A1(fifo_out[67]), .A2(fifo_out[66]), .Z(n102));
Q_OR03 U90 ( .A0(n100), .A1(fifo_out[64]), .A2(n101), .Z(n103));
Q_OR02 U91 ( .A0(n102), .A1(n103), .Z(n104));
Q_AN02 U92 ( .A0(n202), .A1(stitcher_rd), .Z(fifo_out_ack));
Q_AN02 U93 ( .A0(n203), .A1(kme_slv_out[0]), .Z(fifo_in[0]));
Q_AN02 U94 ( .A0(n203), .A1(kme_slv_out[1]), .Z(fifo_in[1]));
Q_AN02 U95 ( .A0(n203), .A1(kme_slv_out[2]), .Z(fifo_in[2]));
Q_AN02 U96 ( .A0(n203), .A1(kme_slv_out[3]), .Z(fifo_in[3]));
Q_AN02 U97 ( .A0(n203), .A1(kme_slv_out[4]), .Z(fifo_in[4]));
Q_AN02 U98 ( .A0(n203), .A1(kme_slv_out[5]), .Z(fifo_in[5]));
Q_AN02 U99 ( .A0(n203), .A1(kme_slv_out[6]), .Z(fifo_in[6]));
Q_AN02 U100 ( .A0(n203), .A1(kme_slv_out[7]), .Z(fifo_in[7]));
Q_AN02 U101 ( .A0(n203), .A1(kme_slv_out[8]), .Z(fifo_in[8]));
Q_AN02 U102 ( .A0(n203), .A1(kme_slv_out[9]), .Z(fifo_in[9]));
Q_AN02 U103 ( .A0(n203), .A1(kme_slv_out[10]), .Z(fifo_in[10]));
Q_AN02 U104 ( .A0(n203), .A1(kme_slv_out[11]), .Z(fifo_in[11]));
Q_AN02 U105 ( .A0(n203), .A1(kme_slv_out[12]), .Z(fifo_in[12]));
Q_AN02 U106 ( .A0(n203), .A1(kme_slv_out[13]), .Z(fifo_in[13]));
Q_AN02 U107 ( .A0(n203), .A1(kme_slv_out[14]), .Z(fifo_in[14]));
Q_AN02 U108 ( .A0(n203), .A1(kme_slv_out[15]), .Z(fifo_in[15]));
Q_AN02 U109 ( .A0(n203), .A1(kme_slv_out[16]), .Z(fifo_in[16]));
Q_AN02 U110 ( .A0(n203), .A1(kme_slv_out[17]), .Z(fifo_in[17]));
Q_AN02 U111 ( .A0(n203), .A1(kme_slv_out[18]), .Z(fifo_in[18]));
Q_AN02 U112 ( .A0(n203), .A1(kme_slv_out[19]), .Z(fifo_in[19]));
Q_AN02 U113 ( .A0(n203), .A1(kme_slv_out[20]), .Z(fifo_in[20]));
Q_AN02 U114 ( .A0(n203), .A1(kme_slv_out[21]), .Z(fifo_in[21]));
Q_AN02 U115 ( .A0(n203), .A1(kme_slv_out[22]), .Z(fifo_in[22]));
Q_AN02 U116 ( .A0(n203), .A1(kme_slv_out[23]), .Z(fifo_in[23]));
Q_AN02 U117 ( .A0(n203), .A1(kme_slv_out[24]), .Z(fifo_in[24]));
Q_AN02 U118 ( .A0(n203), .A1(kme_slv_out[25]), .Z(fifo_in[25]));
Q_AN02 U119 ( .A0(n203), .A1(kme_slv_out[26]), .Z(fifo_in[26]));
Q_AN02 U120 ( .A0(n203), .A1(kme_slv_out[27]), .Z(fifo_in[27]));
Q_AN02 U121 ( .A0(n203), .A1(kme_slv_out[28]), .Z(fifo_in[28]));
Q_AN02 U122 ( .A0(n203), .A1(kme_slv_out[29]), .Z(fifo_in[29]));
Q_AN02 U123 ( .A0(n203), .A1(kme_slv_out[30]), .Z(fifo_in[30]));
Q_AN02 U124 ( .A0(n203), .A1(kme_slv_out[31]), .Z(fifo_in[31]));
Q_AN02 U125 ( .A0(n203), .A1(kme_slv_out[32]), .Z(fifo_in[32]));
Q_AN02 U126 ( .A0(n203), .A1(kme_slv_out[33]), .Z(fifo_in[33]));
Q_AN02 U127 ( .A0(n203), .A1(kme_slv_out[34]), .Z(fifo_in[34]));
Q_AN02 U128 ( .A0(n203), .A1(kme_slv_out[35]), .Z(fifo_in[35]));
Q_AN02 U129 ( .A0(n203), .A1(kme_slv_out[36]), .Z(fifo_in[36]));
Q_AN02 U130 ( .A0(n203), .A1(kme_slv_out[37]), .Z(fifo_in[37]));
Q_AN02 U131 ( .A0(n203), .A1(kme_slv_out[38]), .Z(fifo_in[38]));
Q_AN02 U132 ( .A0(n203), .A1(kme_slv_out[39]), .Z(fifo_in[39]));
Q_AN02 U133 ( .A0(n203), .A1(kme_slv_out[40]), .Z(fifo_in[40]));
Q_AN02 U134 ( .A0(n203), .A1(kme_slv_out[41]), .Z(fifo_in[41]));
Q_AN02 U135 ( .A0(n203), .A1(kme_slv_out[42]), .Z(fifo_in[42]));
Q_AN02 U136 ( .A0(n203), .A1(kme_slv_out[43]), .Z(fifo_in[43]));
Q_AN02 U137 ( .A0(n203), .A1(kme_slv_out[44]), .Z(fifo_in[44]));
Q_AN02 U138 ( .A0(n203), .A1(kme_slv_out[45]), .Z(fifo_in[45]));
Q_AN02 U139 ( .A0(n203), .A1(kme_slv_out[46]), .Z(fifo_in[46]));
Q_AN02 U140 ( .A0(n203), .A1(kme_slv_out[47]), .Z(fifo_in[47]));
Q_AN02 U141 ( .A0(n203), .A1(kme_slv_out[48]), .Z(fifo_in[48]));
Q_AN02 U142 ( .A0(n203), .A1(kme_slv_out[49]), .Z(fifo_in[49]));
Q_AN02 U143 ( .A0(n203), .A1(kme_slv_out[50]), .Z(fifo_in[50]));
Q_AN02 U144 ( .A0(n203), .A1(kme_slv_out[51]), .Z(fifo_in[51]));
Q_AN02 U145 ( .A0(n203), .A1(kme_slv_out[52]), .Z(fifo_in[52]));
Q_AN02 U146 ( .A0(n203), .A1(kme_slv_out[53]), .Z(fifo_in[53]));
Q_AN02 U147 ( .A0(n203), .A1(kme_slv_out[54]), .Z(fifo_in[54]));
Q_AN02 U148 ( .A0(n203), .A1(kme_slv_out[55]), .Z(fifo_in[55]));
Q_AN02 U149 ( .A0(n203), .A1(kme_slv_out[56]), .Z(fifo_in[56]));
Q_AN02 U150 ( .A0(n203), .A1(kme_slv_out[57]), .Z(fifo_in[57]));
Q_AN02 U151 ( .A0(n203), .A1(kme_slv_out[58]), .Z(fifo_in[58]));
Q_AN02 U152 ( .A0(n203), .A1(kme_slv_out[59]), .Z(fifo_in[59]));
Q_AN02 U153 ( .A0(n203), .A1(kme_slv_out[60]), .Z(fifo_in[60]));
Q_AN02 U154 ( .A0(n203), .A1(kme_slv_out[61]), .Z(fifo_in[61]));
Q_AN02 U155 ( .A0(n203), .A1(kme_slv_out[62]), .Z(fifo_in[62]));
Q_AN02 U156 ( .A0(n203), .A1(kme_slv_out[63]), .Z(fifo_in[63]));
Q_AN02 U157 ( .A0(n203), .A1(kme_slv_out[64]), .Z(fifo_in[64]));
Q_AN02 U158 ( .A0(n203), .A1(kme_slv_out[65]), .Z(fifo_in[65]));
Q_AN02 U159 ( .A0(n203), .A1(kme_slv_out[66]), .Z(fifo_in[66]));
Q_AN02 U160 ( .A0(n203), .A1(kme_slv_out[67]), .Z(fifo_in[67]));
Q_AN02 U161 ( .A0(n203), .A1(kme_slv_out[68]), .Z(fifo_in[68]));
Q_AN02 U162 ( .A0(n203), .A1(kme_slv_out[69]), .Z(fifo_in[69]));
Q_AN02 U163 ( .A0(n203), .A1(kme_slv_out[70]), .Z(fifo_in[70]));
Q_AN02 U164 ( .A0(n203), .A1(kme_slv_out[71]), .Z(fifo_in[71]));
Q_AN02 U165 ( .A0(n203), .A1(kme_slv_out[72]), .Z(fifo_in[72]));
Q_AN02 U166 ( .A0(n203), .A1(kme_slv_out[73]), .Z(fifo_in[73]));
Q_AN02 U167 ( .A0(n203), .A1(kme_slv_out[74]), .Z(fifo_in[74]));
Q_AN02 U168 ( .A0(n203), .A1(kme_slv_out[75]), .Z(fifo_in[75]));
Q_AN02 U169 ( .A0(n203), .A1(kme_slv_out[76]), .Z(fifo_in[76]));
Q_AN02 U170 ( .A0(n203), .A1(kme_slv_out[77]), .Z(fifo_in[77]));
Q_AN02 U171 ( .A0(n203), .A1(kme_slv_out[78]), .Z(fifo_in[78]));
Q_AN02 U172 ( .A0(n203), .A1(kme_slv_out[79]), .Z(fifo_in[79]));
Q_AN02 U173 ( .A0(n203), .A1(kme_slv_out[80]), .Z(fifo_in[80]));
Q_AN02 U174 ( .A0(n203), .A1(kme_slv_out[81]), .Z(fifo_in[81]));
Q_AN02 U175 ( .A0(n203), .A1(kme_slv_out[82]), .Z(fifo_in[82]));
Q_AN02 U176 ( .A0(n203), .A1(n99), .Z(fifo_in_valid));
Q_MX02 U177 ( .S(n201), .A0(kme_slv_empty), .A1(n204), .Z(stitcher_empty));
Q_AN02 U178 ( .A0(n205), .A1(kme_slv_out[0]), .Z(n105));
Q_MX02 U179 ( .S(n202), .A0(n105), .A1(fifo_out[0]), .Z(stitcher_out[0]));
Q_AN02 U180 ( .A0(n205), .A1(kme_slv_out[1]), .Z(n106));
Q_MX02 U181 ( .S(n202), .A0(n106), .A1(fifo_out[1]), .Z(stitcher_out[1]));
Q_AN02 U182 ( .A0(n205), .A1(kme_slv_out[2]), .Z(n107));
Q_MX02 U183 ( .S(n202), .A0(n107), .A1(fifo_out[2]), .Z(stitcher_out[2]));
Q_AN02 U184 ( .A0(n205), .A1(kme_slv_out[3]), .Z(n108));
Q_MX02 U185 ( .S(n202), .A0(n108), .A1(fifo_out[3]), .Z(stitcher_out[3]));
Q_AN02 U186 ( .A0(n205), .A1(kme_slv_out[4]), .Z(n109));
Q_MX02 U187 ( .S(n202), .A0(n109), .A1(fifo_out[4]), .Z(stitcher_out[4]));
Q_AN02 U188 ( .A0(n205), .A1(kme_slv_out[5]), .Z(n110));
Q_MX02 U189 ( .S(n202), .A0(n110), .A1(fifo_out[5]), .Z(stitcher_out[5]));
Q_AN02 U190 ( .A0(n205), .A1(kme_slv_out[6]), .Z(n111));
Q_MX02 U191 ( .S(n202), .A0(n111), .A1(fifo_out[6]), .Z(stitcher_out[6]));
Q_AN02 U192 ( .A0(n205), .A1(kme_slv_out[7]), .Z(n112));
Q_MX02 U193 ( .S(n202), .A0(n112), .A1(fifo_out[7]), .Z(stitcher_out[7]));
Q_AN02 U194 ( .A0(n205), .A1(kme_slv_out[8]), .Z(n113));
Q_MX02 U195 ( .S(n202), .A0(n113), .A1(fifo_out[8]), .Z(stitcher_out[8]));
Q_AN02 U196 ( .A0(n205), .A1(kme_slv_out[9]), .Z(n114));
Q_MX02 U197 ( .S(n202), .A0(n114), .A1(fifo_out[9]), .Z(stitcher_out[9]));
Q_AN02 U198 ( .A0(n205), .A1(kme_slv_out[10]), .Z(n115));
Q_MX02 U199 ( .S(n202), .A0(n115), .A1(fifo_out[10]), .Z(stitcher_out[10]));
Q_AN02 U200 ( .A0(n205), .A1(kme_slv_out[11]), .Z(n116));
Q_MX02 U201 ( .S(n202), .A0(n116), .A1(fifo_out[11]), .Z(stitcher_out[11]));
Q_AN02 U202 ( .A0(n205), .A1(kme_slv_out[12]), .Z(n117));
Q_MX02 U203 ( .S(n202), .A0(n117), .A1(fifo_out[12]), .Z(stitcher_out[12]));
Q_AN02 U204 ( .A0(n205), .A1(kme_slv_out[13]), .Z(n118));
Q_MX02 U205 ( .S(n202), .A0(n118), .A1(fifo_out[13]), .Z(stitcher_out[13]));
Q_AN02 U206 ( .A0(n205), .A1(kme_slv_out[14]), .Z(n119));
Q_MX02 U207 ( .S(n202), .A0(n119), .A1(fifo_out[14]), .Z(stitcher_out[14]));
Q_AN02 U208 ( .A0(n205), .A1(kme_slv_out[15]), .Z(n120));
Q_MX02 U209 ( .S(n202), .A0(n120), .A1(fifo_out[15]), .Z(stitcher_out[15]));
Q_AN02 U210 ( .A0(n205), .A1(kme_slv_out[16]), .Z(n121));
Q_MX02 U211 ( .S(n202), .A0(n121), .A1(fifo_out[16]), .Z(stitcher_out[16]));
Q_AN02 U212 ( .A0(n205), .A1(kme_slv_out[17]), .Z(n122));
Q_MX02 U213 ( .S(n202), .A0(n122), .A1(fifo_out[17]), .Z(stitcher_out[17]));
Q_AN02 U214 ( .A0(n205), .A1(kme_slv_out[18]), .Z(n123));
Q_MX02 U215 ( .S(n202), .A0(n123), .A1(fifo_out[18]), .Z(stitcher_out[18]));
Q_AN02 U216 ( .A0(n205), .A1(kme_slv_out[19]), .Z(n124));
Q_MX02 U217 ( .S(n202), .A0(n124), .A1(fifo_out[19]), .Z(stitcher_out[19]));
Q_AN02 U218 ( .A0(n205), .A1(kme_slv_out[20]), .Z(n125));
Q_MX02 U219 ( .S(n202), .A0(n125), .A1(fifo_out[20]), .Z(stitcher_out[20]));
Q_AN02 U220 ( .A0(n205), .A1(kme_slv_out[21]), .Z(n126));
Q_MX02 U221 ( .S(n202), .A0(n126), .A1(fifo_out[21]), .Z(stitcher_out[21]));
Q_AN02 U222 ( .A0(n205), .A1(kme_slv_out[22]), .Z(n127));
Q_MX02 U223 ( .S(n202), .A0(n127), .A1(fifo_out[22]), .Z(stitcher_out[22]));
Q_AN02 U224 ( .A0(n205), .A1(kme_slv_out[23]), .Z(n128));
Q_MX02 U225 ( .S(n202), .A0(n128), .A1(fifo_out[23]), .Z(stitcher_out[23]));
Q_AN02 U226 ( .A0(n205), .A1(kme_slv_out[24]), .Z(n129));
Q_MX02 U227 ( .S(n202), .A0(n129), .A1(fifo_out[24]), .Z(stitcher_out[24]));
Q_AN02 U228 ( .A0(n205), .A1(kme_slv_out[25]), .Z(n130));
Q_MX02 U229 ( .S(n202), .A0(n130), .A1(fifo_out[25]), .Z(stitcher_out[25]));
Q_AN02 U230 ( .A0(n205), .A1(kme_slv_out[26]), .Z(n131));
Q_MX02 U231 ( .S(n202), .A0(n131), .A1(fifo_out[26]), .Z(stitcher_out[26]));
Q_AN02 U232 ( .A0(n205), .A1(kme_slv_out[27]), .Z(n132));
Q_MX02 U233 ( .S(n202), .A0(n132), .A1(fifo_out[27]), .Z(stitcher_out[27]));
Q_AN02 U234 ( .A0(n205), .A1(kme_slv_out[28]), .Z(n133));
Q_MX02 U235 ( .S(n202), .A0(n133), .A1(fifo_out[28]), .Z(stitcher_out[28]));
Q_AN02 U236 ( .A0(n205), .A1(kme_slv_out[29]), .Z(n134));
Q_MX02 U237 ( .S(n202), .A0(n134), .A1(fifo_out[29]), .Z(stitcher_out[29]));
Q_AN02 U238 ( .A0(n205), .A1(kme_slv_out[30]), .Z(n135));
Q_MX02 U239 ( .S(n202), .A0(n135), .A1(fifo_out[30]), .Z(stitcher_out[30]));
Q_AN02 U240 ( .A0(n205), .A1(kme_slv_out[31]), .Z(n136));
Q_MX02 U241 ( .S(n202), .A0(n136), .A1(fifo_out[31]), .Z(stitcher_out[31]));
Q_AN02 U242 ( .A0(n205), .A1(kme_slv_out[32]), .Z(n137));
Q_MX02 U243 ( .S(n202), .A0(n137), .A1(fifo_out[32]), .Z(stitcher_out[32]));
Q_AN02 U244 ( .A0(n205), .A1(kme_slv_out[33]), .Z(n138));
Q_MX02 U245 ( .S(n202), .A0(n138), .A1(fifo_out[33]), .Z(stitcher_out[33]));
Q_AN02 U246 ( .A0(n205), .A1(kme_slv_out[34]), .Z(n139));
Q_MX02 U247 ( .S(n202), .A0(n139), .A1(fifo_out[34]), .Z(stitcher_out[34]));
Q_AN02 U248 ( .A0(n205), .A1(kme_slv_out[35]), .Z(n140));
Q_MX02 U249 ( .S(n202), .A0(n140), .A1(fifo_out[35]), .Z(stitcher_out[35]));
Q_AN02 U250 ( .A0(n205), .A1(kme_slv_out[36]), .Z(n141));
Q_MX02 U251 ( .S(n202), .A0(n141), .A1(fifo_out[36]), .Z(stitcher_out[36]));
Q_AN02 U252 ( .A0(n205), .A1(kme_slv_out[37]), .Z(n142));
Q_MX02 U253 ( .S(n202), .A0(n142), .A1(fifo_out[37]), .Z(stitcher_out[37]));
Q_AN02 U254 ( .A0(n205), .A1(kme_slv_out[38]), .Z(n143));
Q_MX02 U255 ( .S(n202), .A0(n143), .A1(fifo_out[38]), .Z(stitcher_out[38]));
Q_AN02 U256 ( .A0(n205), .A1(kme_slv_out[39]), .Z(n144));
Q_MX02 U257 ( .S(n202), .A0(n144), .A1(fifo_out[39]), .Z(stitcher_out[39]));
Q_AN02 U258 ( .A0(n205), .A1(kme_slv_out[40]), .Z(n145));
Q_MX02 U259 ( .S(n202), .A0(n145), .A1(fifo_out[40]), .Z(stitcher_out[40]));
Q_AN02 U260 ( .A0(n205), .A1(kme_slv_out[41]), .Z(n146));
Q_MX02 U261 ( .S(n202), .A0(n146), .A1(fifo_out[41]), .Z(stitcher_out[41]));
Q_AN02 U262 ( .A0(n205), .A1(kme_slv_out[42]), .Z(n147));
Q_MX02 U263 ( .S(n202), .A0(n147), .A1(fifo_out[42]), .Z(stitcher_out[42]));
Q_AN02 U264 ( .A0(n205), .A1(kme_slv_out[43]), .Z(n148));
Q_MX02 U265 ( .S(n202), .A0(n148), .A1(fifo_out[43]), .Z(stitcher_out[43]));
Q_AN02 U266 ( .A0(n205), .A1(kme_slv_out[44]), .Z(n149));
Q_MX02 U267 ( .S(n202), .A0(n149), .A1(fifo_out[44]), .Z(stitcher_out[44]));
Q_AN02 U268 ( .A0(n205), .A1(kme_slv_out[45]), .Z(n150));
Q_MX02 U269 ( .S(n202), .A0(n150), .A1(fifo_out[45]), .Z(stitcher_out[45]));
Q_AN02 U270 ( .A0(n205), .A1(kme_slv_out[46]), .Z(n151));
Q_MX02 U271 ( .S(n202), .A0(n151), .A1(fifo_out[46]), .Z(stitcher_out[46]));
Q_AN02 U272 ( .A0(n205), .A1(kme_slv_out[47]), .Z(n152));
Q_MX02 U273 ( .S(n202), .A0(n152), .A1(fifo_out[47]), .Z(stitcher_out[47]));
Q_AN02 U274 ( .A0(n205), .A1(kme_slv_out[48]), .Z(n153));
Q_MX02 U275 ( .S(n202), .A0(n153), .A1(fifo_out[48]), .Z(stitcher_out[48]));
Q_AN02 U276 ( .A0(n205), .A1(kme_slv_out[49]), .Z(n154));
Q_MX02 U277 ( .S(n202), .A0(n154), .A1(fifo_out[49]), .Z(stitcher_out[49]));
Q_AN02 U278 ( .A0(n205), .A1(kme_slv_out[50]), .Z(n155));
Q_MX02 U279 ( .S(n202), .A0(n155), .A1(fifo_out[50]), .Z(stitcher_out[50]));
Q_AN02 U280 ( .A0(n205), .A1(kme_slv_out[51]), .Z(n156));
Q_MX02 U281 ( .S(n202), .A0(n156), .A1(fifo_out[51]), .Z(stitcher_out[51]));
Q_AN02 U282 ( .A0(n205), .A1(kme_slv_out[52]), .Z(n157));
Q_MX02 U283 ( .S(n202), .A0(n157), .A1(fifo_out[52]), .Z(stitcher_out[52]));
Q_AN02 U284 ( .A0(n205), .A1(kme_slv_out[53]), .Z(n158));
Q_MX02 U285 ( .S(n202), .A0(n158), .A1(fifo_out[53]), .Z(stitcher_out[53]));
Q_AN02 U286 ( .A0(n205), .A1(kme_slv_out[54]), .Z(n159));
Q_MX02 U287 ( .S(n202), .A0(n159), .A1(fifo_out[54]), .Z(stitcher_out[54]));
Q_AN02 U288 ( .A0(n205), .A1(kme_slv_out[55]), .Z(n160));
Q_MX02 U289 ( .S(n202), .A0(n160), .A1(fifo_out[55]), .Z(stitcher_out[55]));
Q_AN02 U290 ( .A0(n205), .A1(kme_slv_out[56]), .Z(n161));
Q_MX02 U291 ( .S(n202), .A0(n161), .A1(fifo_out[56]), .Z(stitcher_out[56]));
Q_AN02 U292 ( .A0(n205), .A1(kme_slv_out[57]), .Z(n162));
Q_MX02 U293 ( .S(n202), .A0(n162), .A1(fifo_out[57]), .Z(stitcher_out[57]));
Q_AN02 U294 ( .A0(n205), .A1(kme_slv_out[58]), .Z(n163));
Q_MX02 U295 ( .S(n202), .A0(n163), .A1(fifo_out[58]), .Z(stitcher_out[58]));
Q_AN02 U296 ( .A0(n205), .A1(kme_slv_out[59]), .Z(n164));
Q_MX02 U297 ( .S(n202), .A0(n164), .A1(fifo_out[59]), .Z(stitcher_out[59]));
Q_AN02 U298 ( .A0(n205), .A1(kme_slv_out[60]), .Z(n165));
Q_MX02 U299 ( .S(n202), .A0(n165), .A1(fifo_out[60]), .Z(stitcher_out[60]));
Q_AN02 U300 ( .A0(n205), .A1(kme_slv_out[61]), .Z(n166));
Q_MX02 U301 ( .S(n202), .A0(n166), .A1(fifo_out[61]), .Z(stitcher_out[61]));
Q_AN02 U302 ( .A0(n205), .A1(kme_slv_out[62]), .Z(n167));
Q_MX02 U303 ( .S(n202), .A0(n167), .A1(fifo_out[62]), .Z(stitcher_out[62]));
Q_AN02 U304 ( .A0(n205), .A1(kme_slv_out[63]), .Z(n168));
Q_MX02 U305 ( .S(n202), .A0(n168), .A1(fifo_out[63]), .Z(stitcher_out[63]));
Q_MX02 U306 ( .S(n206), .A0(kme_slv_out[64]), .A1(fifo_out[64]), .Z(n169));
Q_AN02 U307 ( .A0(n192), .A1(n169), .Z(stitcher_out[64]));
Q_MX02 U308 ( .S(n206), .A0(kme_slv_out[65]), .A1(fifo_out[65]), .Z(n170));
Q_AN02 U309 ( .A0(n192), .A1(n170), .Z(stitcher_out[65]));
Q_MX02 U310 ( .S(n206), .A0(kme_slv_out[66]), .A1(fifo_out[66]), .Z(n171));
Q_AN02 U311 ( .A0(n192), .A1(n171), .Z(stitcher_out[66]));
Q_MX02 U312 ( .S(n206), .A0(kme_slv_out[67]), .A1(fifo_out[67]), .Z(n172));
Q_AN02 U313 ( .A0(n192), .A1(n172), .Z(stitcher_out[67]));
Q_MX02 U314 ( .S(n206), .A0(kme_slv_out[68]), .A1(fifo_out[68]), .Z(n173));
Q_AN02 U315 ( .A0(n192), .A1(n173), .Z(stitcher_out[68]));
Q_MX02 U316 ( .S(n206), .A0(kme_slv_out[69]), .A1(fifo_out[69]), .Z(n174));
Q_AN02 U317 ( .A0(n192), .A1(n174), .Z(stitcher_out[69]));
Q_MX02 U318 ( .S(n206), .A0(kme_slv_out[70]), .A1(fifo_out[70]), .Z(n175));
Q_AN02 U319 ( .A0(n192), .A1(n175), .Z(stitcher_out[70]));
Q_MX02 U320 ( .S(n206), .A0(kme_slv_out[71]), .A1(fifo_out[71]), .Z(n176));
Q_AN02 U321 ( .A0(n192), .A1(n176), .Z(stitcher_out[71]));
Q_AN02 U322 ( .A0(n205), .A1(kme_slv_out[72]), .Z(n177));
Q_MX02 U323 ( .S(n202), .A0(n177), .A1(fifo_out[72]), .Z(stitcher_out[72]));
Q_AN02 U324 ( .A0(n205), .A1(kme_slv_out[73]), .Z(n178));
Q_MX02 U325 ( .S(n202), .A0(n178), .A1(fifo_out[73]), .Z(stitcher_out[73]));
Q_AN02 U326 ( .A0(n205), .A1(kme_slv_out[74]), .Z(n179));
Q_MX02 U327 ( .S(n202), .A0(n179), .A1(fifo_out[74]), .Z(stitcher_out[74]));
Q_AN02 U328 ( .A0(n205), .A1(kme_slv_out[75]), .Z(n180));
Q_MX02 U329 ( .S(n202), .A0(n180), .A1(fifo_out[75]), .Z(stitcher_out[75]));
Q_AN02 U330 ( .A0(n205), .A1(kme_slv_out[76]), .Z(n181));
Q_MX02 U331 ( .S(n202), .A0(n181), .A1(fifo_out[76]), .Z(stitcher_out[76]));
Q_AN02 U332 ( .A0(n205), .A1(kme_slv_out[77]), .Z(n182));
Q_MX02 U333 ( .S(n202), .A0(n182), .A1(fifo_out[77]), .Z(stitcher_out[77]));
Q_AN02 U334 ( .A0(n205), .A1(kme_slv_out[78]), .Z(n183));
Q_MX02 U335 ( .S(n202), .A0(n183), .A1(fifo_out[78]), .Z(stitcher_out[78]));
Q_AN02 U336 ( .A0(n205), .A1(kme_slv_out[79]), .Z(n184));
Q_MX02 U337 ( .S(n202), .A0(n184), .A1(fifo_out[79]), .Z(stitcher_out[79]));
Q_AN02 U338 ( .A0(n205), .A1(kme_slv_out[80]), .Z(n185));
Q_MX02 U339 ( .S(n202), .A0(n185), .A1(fifo_out[80]), .Z(stitcher_out[80]));
Q_OA21 U340 ( .A0(n199), .A1(kme_slv_out[81]), .B0(n193), .Z(n186));
Q_MX02 U341 ( .S(n207), .A0(n186), .A1(fifo_out[81]), .Z(stitcher_out[81]));
Q_AN02 U342 ( .A0(n205), .A1(kme_slv_out[82]), .Z(n187));
Q_MX02 U343 ( .S(n202), .A0(n187), .A1(fifo_out[82]), .Z(stitcher_out[82]));
Q_AN02 U344 ( .A0(n204), .A1(n99), .Z(n188));
Q_MX02 U345 ( .S(n201), .A0(stitcher_rd), .A1(n188), .Z(kme_slv_rd));
Q_AN02 U346 ( .A0(n189), .A1(n190), .Z(n203));
Q_OR02 U347 ( .A0(n202), .A1(n191), .Z(n206));
Q_NR02 U348 ( .A0(n204), .A1(n191), .Z(n192));
Q_AN02 U349 ( .A0(n194), .A1(cur_state[0]), .Z(n191));
Q_AO21 U350 ( .A0(n196), .A1(fifo_out_valid), .B0(n195), .Z(n194));
Q_AN02 U351 ( .A0(n189), .A1(n2), .Z(n195));
Q_AN02 U352 ( .A0(n197), .A1(cur_state[1]), .Z(n189));
Q_NR03 U353 ( .A0(n204), .A1(n207), .A2(n191), .Z(n193));
Q_AN03 U354 ( .A0(cur_state[2]), .A1(n104), .A2(n198), .Z(n207));
Q_INV U355 ( .A(n199), .Z(n205));
Q_OR02 U356 ( .A0(n204), .A1(n202), .Z(n199));
Q_AN02 U357 ( .A0(cur_state[2]), .A1(n198), .Z(n202));
Q_AN02 U358 ( .A0(cur_state[1]), .A1(n190), .Z(n204));
Q_OA21 U359 ( .A0(n196), .A1(cur_state[1]), .B0(n190), .Z(n201));
Q_AN02 U360 ( .A0(cur_state[2]), .A1(n200), .Z(n196));
Q_XOR2 U361 ( .A0(n39), .A1(n40), .Z(n43));
Q_XOR3 U362 ( .A0(n38), .A1(n36), .A2(n37), .Z(n40));
Q_XOR3 U363 ( .A0(n35), .A1(n33), .A2(n34), .Z(n39));
Q_XOR3 U364 ( .A0(n32), .A1(n30), .A2(n31), .Z(n38));
Q_XOR3 U365 ( .A0(n29), .A1(n27), .A2(n28), .Z(n37));
Q_XOR3 U366 ( .A0(n26), .A1(kme_slv_out[61]), .A2(kme_slv_out[63]), .Z(n36));
Q_XOR3 U367 ( .A0(kme_slv_out[59]), .A1(kme_slv_out[55]), .A2(kme_slv_out[57]), .Z(n35));
Q_XOR3 U368 ( .A0(kme_slv_out[53]), .A1(kme_slv_out[49]), .A2(kme_slv_out[51]), .Z(n34));
Q_XOR3 U369 ( .A0(kme_slv_out[47]), .A1(kme_slv_out[43]), .A2(kme_slv_out[45]), .Z(n33));
Q_XOR3 U370 ( .A0(kme_slv_out[41]), .A1(kme_slv_out[37]), .A2(kme_slv_out[39]), .Z(n32));
Q_XOR3 U371 ( .A0(kme_slv_out[35]), .A1(kme_slv_out[31]), .A2(kme_slv_out[33]), .Z(n31));
Q_XOR3 U372 ( .A0(kme_slv_out[29]), .A1(kme_slv_out[25]), .A2(kme_slv_out[27]), .Z(n30));
Q_XOR3 U373 ( .A0(kme_slv_out[23]), .A1(kme_slv_out[19]), .A2(kme_slv_out[21]), .Z(n29));
Q_XOR3 U374 ( .A0(kme_slv_out[17]), .A1(kme_slv_out[13]), .A2(kme_slv_out[15]), .Z(n28));
Q_XOR3 U375 ( .A0(kme_slv_out[11]), .A1(kme_slv_out[7]), .A2(kme_slv_out[9]), .Z(n27));
Q_XOR3 U376 ( .A0(kme_slv_out[5]), .A1(kme_slv_out[1]), .A2(kme_slv_out[3]), .Z(n26));
Q_XOR2 U377 ( .A0(n24), .A1(n25), .Z(n42));
Q_XOR3 U378 ( .A0(n23), .A1(n21), .A2(n22), .Z(n25));
Q_XOR3 U379 ( .A0(n20), .A1(n18), .A2(n19), .Z(n24));
Q_XOR3 U380 ( .A0(n17), .A1(n15), .A2(n16), .Z(n23));
Q_XOR3 U381 ( .A0(n14), .A1(n12), .A2(n13), .Z(n22));
Q_XOR3 U382 ( .A0(n11), .A1(kme_slv_out[60]), .A2(kme_slv_out[62]), .Z(n21));
Q_XOR3 U383 ( .A0(kme_slv_out[58]), .A1(kme_slv_out[54]), .A2(kme_slv_out[56]), .Z(n20));
Q_XOR3 U384 ( .A0(kme_slv_out[52]), .A1(kme_slv_out[48]), .A2(kme_slv_out[50]), .Z(n19));
Q_XOR3 U385 ( .A0(kme_slv_out[46]), .A1(kme_slv_out[42]), .A2(kme_slv_out[44]), .Z(n18));
Q_XOR3 U386 ( .A0(kme_slv_out[40]), .A1(kme_slv_out[36]), .A2(kme_slv_out[38]), .Z(n17));
Q_XOR3 U387 ( .A0(kme_slv_out[34]), .A1(kme_slv_out[30]), .A2(kme_slv_out[32]), .Z(n16));
Q_XOR3 U388 ( .A0(kme_slv_out[28]), .A1(kme_slv_out[24]), .A2(kme_slv_out[26]), .Z(n15));
Q_XOR3 U389 ( .A0(kme_slv_out[22]), .A1(kme_slv_out[18]), .A2(kme_slv_out[20]), .Z(n14));
Q_XOR3 U390 ( .A0(kme_slv_out[16]), .A1(kme_slv_out[12]), .A2(kme_slv_out[14]), .Z(n13));
Q_XOR3 U391 ( .A0(kme_slv_out[10]), .A1(kme_slv_out[6]), .A2(kme_slv_out[8]), .Z(n12));
Q_XOR3 U392 ( .A0(kme_slv_out[4]), .A1(kme_slv_out[0]), .A2(kme_slv_out[2]), .Z(n11));
Q_XOR2 U393 ( .A0(cur_state[1]), .A1(n190), .Z(n198));
Q_FDP4EP use_aux_guid_REG  ( .CK(clk), .CE(n97), .R(n208), .D(n96), .Q(use_aux_guid));
Q_INV U395 ( .A(rst_n), .Z(n208));
Q_FDP4EP src_guid_present_REG  ( .CK(clk), .CE(n98), .R(n208), .D(frame_word[4]), .Q(src_guid_present));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\stitcher_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\stitcher_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\stitcher_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\stitcher_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\kme_slv_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\kme_slv_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\kme_slv_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\kme_slv_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\fifo_in.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\fifo_in.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\fifo_in.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m12 "\fifo_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m13 "\fifo_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m14 "\fifo_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m15 "\fifo_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m16 "\fifo_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m17 "\tlv_word0.tlv_bip2  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m18 "\tlv_word0.frame_size  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m19 "\tlv_word0.trace  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m20 "\tlv_word0.unused  (1,0) 1 10 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m21 "\tlv_word0.tlv_frame_num  (1,0) 1 10 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m22 "\tlv_word0.resv0  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m23 "\tlv_word0.tlv_eng_id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m24 "\tlv_word0.tlv_seq_num  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m25 "\tlv_word0.tlv_len  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m26 "\tlv_word0.tlv_type  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m27 "\frame_word.debug.tlvp_corrupt  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m28 "\frame_word.debug.cmd_mode  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m29 "\frame_word.debug.module_id  (1,0) 1 4 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m30 "\frame_word.debug.cmd_type  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m31 "\frame_word.debug.tlv_num  (1,0) 1 4 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m32 "\frame_word.debug.byte_num  (1,0) 1 9 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m33 "\frame_word.debug.byte_msk  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m34 "\frame_word.frmd_out_type  (1,0) 1 6 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m35 "\frame_word.md_op  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m36 "\frame_word.md_type  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m37 "\frame_word.frmd_in_type  (1,0) 1 6 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m38 "\frame_word.frmd_in_aux  (1,0) 1 5 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m39 "\frame_word.frmd_crc_in  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m40 "\frame_word.src_guid_present  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m41 "\frame_word.compound_cmd_frm_size  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "41"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "stitcher_out 6 \stitcher_out.tvalid  \stitcher_out.tlast  \stitcher_out.tid  \stitcher_out.tstrb  \stitcher_out.tuser  \stitcher_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "kme_slv_out 6 \kme_slv_out.tvalid  \kme_slv_out.tlast  \kme_slv_out.tid  \kme_slv_out.tstrb  \kme_slv_out.tuser  \kme_slv_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "fifo_in 6 \fifo_in.tvalid  \fifo_in.tlast  \fifo_in.tid  \fifo_in.tstrb  \fifo_in.tuser  \fifo_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "fifo_out 6 \fifo_out.tvalid  \fifo_out.tlast  \fifo_out.tid  \fifo_out.tstrb  \fifo_out.tuser  \fifo_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "tlv_word0 13 \tlv_word0.tlv_bip2  \tlv_word0.no_data  \tlv_word0.aux_frmd_crc  \tlv_word0.frame_size  \tlv_word0.vf_valid  \tlv_word0.trace  \tlv_word0.unused  \tlv_word0.tlv_frame_num  \tlv_word0.resv0  \tlv_word0.tlv_eng_id  \tlv_word0.tlv_seq_num  \tlv_word0.tlv_len  \tlv_word0.tlv_type "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r6 "frame_word 11 \frame_word.debug  { \frame_word.debug.tlvp_corrupt  \frame_word.debug.cmd_mode  \frame_word.debug.module_id  \frame_word.debug.cmd_type  \frame_word.debug.tlv_num  \frame_word.debug.byte_num  \frame_word.debug.byte_msk  } \frame_word.trace  \frame_word.dst_guid_present  \frame_word.frmd_out_type  \frame_word.md_op  \frame_word.md_type  \frame_word.frmd_in_type  \frame_word.frmd_in_aux  \frame_word.frmd_crc_in  \frame_word.src_guid_present  \frame_word.compound_cmd_frm_size "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "6"
endmodule
