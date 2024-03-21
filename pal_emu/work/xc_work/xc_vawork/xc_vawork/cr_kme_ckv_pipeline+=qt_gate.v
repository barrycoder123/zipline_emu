
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_ckv_pipeline ( kme_slv_rd, .cceip_encrypt_in( {
	\cceip_encrypt_in.sot [0], \cceip_encrypt_in.eoi [0], 
	\cceip_encrypt_in.eot [0], \cceip_encrypt_in.id [3], 
	\cceip_encrypt_in.id [2], \cceip_encrypt_in.id [1], 
	\cceip_encrypt_in.id [0], \cceip_encrypt_in.tdata [63], 
	\cceip_encrypt_in.tdata [62], \cceip_encrypt_in.tdata [61], 
	\cceip_encrypt_in.tdata [60], \cceip_encrypt_in.tdata [59], 
	\cceip_encrypt_in.tdata [58], \cceip_encrypt_in.tdata [57], 
	\cceip_encrypt_in.tdata [56], \cceip_encrypt_in.tdata [55], 
	\cceip_encrypt_in.tdata [54], \cceip_encrypt_in.tdata [53], 
	\cceip_encrypt_in.tdata [52], \cceip_encrypt_in.tdata [51], 
	\cceip_encrypt_in.tdata [50], \cceip_encrypt_in.tdata [49], 
	\cceip_encrypt_in.tdata [48], \cceip_encrypt_in.tdata [47], 
	\cceip_encrypt_in.tdata [46], \cceip_encrypt_in.tdata [45], 
	\cceip_encrypt_in.tdata [44], \cceip_encrypt_in.tdata [43], 
	\cceip_encrypt_in.tdata [42], \cceip_encrypt_in.tdata [41], 
	\cceip_encrypt_in.tdata [40], \cceip_encrypt_in.tdata [39], 
	\cceip_encrypt_in.tdata [38], \cceip_encrypt_in.tdata [37], 
	\cceip_encrypt_in.tdata [36], \cceip_encrypt_in.tdata [35], 
	\cceip_encrypt_in.tdata [34], \cceip_encrypt_in.tdata [33], 
	\cceip_encrypt_in.tdata [32], \cceip_encrypt_in.tdata [31], 
	\cceip_encrypt_in.tdata [30], \cceip_encrypt_in.tdata [29], 
	\cceip_encrypt_in.tdata [28], \cceip_encrypt_in.tdata [27], 
	\cceip_encrypt_in.tdata [26], \cceip_encrypt_in.tdata [25], 
	\cceip_encrypt_in.tdata [24], \cceip_encrypt_in.tdata [23], 
	\cceip_encrypt_in.tdata [22], \cceip_encrypt_in.tdata [21], 
	\cceip_encrypt_in.tdata [20], \cceip_encrypt_in.tdata [19], 
	\cceip_encrypt_in.tdata [18], \cceip_encrypt_in.tdata [17], 
	\cceip_encrypt_in.tdata [16], \cceip_encrypt_in.tdata [15], 
	\cceip_encrypt_in.tdata [14], \cceip_encrypt_in.tdata [13], 
	\cceip_encrypt_in.tdata [12], \cceip_encrypt_in.tdata [11], 
	\cceip_encrypt_in.tdata [10], \cceip_encrypt_in.tdata [9], 
	\cceip_encrypt_in.tdata [8], \cceip_encrypt_in.tdata [7], 
	\cceip_encrypt_in.tdata [6], \cceip_encrypt_in.tdata [5], 
	\cceip_encrypt_in.tdata [4], \cceip_encrypt_in.tdata [3], 
	\cceip_encrypt_in.tdata [2], \cceip_encrypt_in.tdata [1], 
	\cceip_encrypt_in.tdata [0]} ), cceip_encrypt_in_valid, 
	.cceip_validate_in( {\cceip_validate_in.sot [0], 
	\cceip_validate_in.eoi [0], \cceip_validate_in.eot [0], 
	\cceip_validate_in.id [3], \cceip_validate_in.id [2], 
	\cceip_validate_in.id [1], \cceip_validate_in.id [0], 
	\cceip_validate_in.tdata [63], \cceip_validate_in.tdata [62], 
	\cceip_validate_in.tdata [61], \cceip_validate_in.tdata [60], 
	\cceip_validate_in.tdata [59], \cceip_validate_in.tdata [58], 
	\cceip_validate_in.tdata [57], \cceip_validate_in.tdata [56], 
	\cceip_validate_in.tdata [55], \cceip_validate_in.tdata [54], 
	\cceip_validate_in.tdata [53], \cceip_validate_in.tdata [52], 
	\cceip_validate_in.tdata [51], \cceip_validate_in.tdata [50], 
	\cceip_validate_in.tdata [49], \cceip_validate_in.tdata [48], 
	\cceip_validate_in.tdata [47], \cceip_validate_in.tdata [46], 
	\cceip_validate_in.tdata [45], \cceip_validate_in.tdata [44], 
	\cceip_validate_in.tdata [43], \cceip_validate_in.tdata [42], 
	\cceip_validate_in.tdata [41], \cceip_validate_in.tdata [40], 
	\cceip_validate_in.tdata [39], \cceip_validate_in.tdata [38], 
	\cceip_validate_in.tdata [37], \cceip_validate_in.tdata [36], 
	\cceip_validate_in.tdata [35], \cceip_validate_in.tdata [34], 
	\cceip_validate_in.tdata [33], \cceip_validate_in.tdata [32], 
	\cceip_validate_in.tdata [31], \cceip_validate_in.tdata [30], 
	\cceip_validate_in.tdata [29], \cceip_validate_in.tdata [28], 
	\cceip_validate_in.tdata [27], \cceip_validate_in.tdata [26], 
	\cceip_validate_in.tdata [25], \cceip_validate_in.tdata [24], 
	\cceip_validate_in.tdata [23], \cceip_validate_in.tdata [22], 
	\cceip_validate_in.tdata [21], \cceip_validate_in.tdata [20], 
	\cceip_validate_in.tdata [19], \cceip_validate_in.tdata [18], 
	\cceip_validate_in.tdata [17], \cceip_validate_in.tdata [16], 
	\cceip_validate_in.tdata [15], \cceip_validate_in.tdata [14], 
	\cceip_validate_in.tdata [13], \cceip_validate_in.tdata [12], 
	\cceip_validate_in.tdata [11], \cceip_validate_in.tdata [10], 
	\cceip_validate_in.tdata [9], \cceip_validate_in.tdata [8], 
	\cceip_validate_in.tdata [7], \cceip_validate_in.tdata [6], 
	\cceip_validate_in.tdata [5], \cceip_validate_in.tdata [4], 
	\cceip_validate_in.tdata [3], \cceip_validate_in.tdata [2], 
	\cceip_validate_in.tdata [1], \cceip_validate_in.tdata [0]} ), 
	cceip_validate_in_valid, .cddip_decrypt_in( {
	\cddip_decrypt_in.sot [0], \cddip_decrypt_in.eoi [0], 
	\cddip_decrypt_in.eot [0], \cddip_decrypt_in.id [3], 
	\cddip_decrypt_in.id [2], \cddip_decrypt_in.id [1], 
	\cddip_decrypt_in.id [0], \cddip_decrypt_in.tdata [63], 
	\cddip_decrypt_in.tdata [62], \cddip_decrypt_in.tdata [61], 
	\cddip_decrypt_in.tdata [60], \cddip_decrypt_in.tdata [59], 
	\cddip_decrypt_in.tdata [58], \cddip_decrypt_in.tdata [57], 
	\cddip_decrypt_in.tdata [56], \cddip_decrypt_in.tdata [55], 
	\cddip_decrypt_in.tdata [54], \cddip_decrypt_in.tdata [53], 
	\cddip_decrypt_in.tdata [52], \cddip_decrypt_in.tdata [51], 
	\cddip_decrypt_in.tdata [50], \cddip_decrypt_in.tdata [49], 
	\cddip_decrypt_in.tdata [48], \cddip_decrypt_in.tdata [47], 
	\cddip_decrypt_in.tdata [46], \cddip_decrypt_in.tdata [45], 
	\cddip_decrypt_in.tdata [44], \cddip_decrypt_in.tdata [43], 
	\cddip_decrypt_in.tdata [42], \cddip_decrypt_in.tdata [41], 
	\cddip_decrypt_in.tdata [40], \cddip_decrypt_in.tdata [39], 
	\cddip_decrypt_in.tdata [38], \cddip_decrypt_in.tdata [37], 
	\cddip_decrypt_in.tdata [36], \cddip_decrypt_in.tdata [35], 
	\cddip_decrypt_in.tdata [34], \cddip_decrypt_in.tdata [33], 
	\cddip_decrypt_in.tdata [32], \cddip_decrypt_in.tdata [31], 
	\cddip_decrypt_in.tdata [30], \cddip_decrypt_in.tdata [29], 
	\cddip_decrypt_in.tdata [28], \cddip_decrypt_in.tdata [27], 
	\cddip_decrypt_in.tdata [26], \cddip_decrypt_in.tdata [25], 
	\cddip_decrypt_in.tdata [24], \cddip_decrypt_in.tdata [23], 
	\cddip_decrypt_in.tdata [22], \cddip_decrypt_in.tdata [21], 
	\cddip_decrypt_in.tdata [20], \cddip_decrypt_in.tdata [19], 
	\cddip_decrypt_in.tdata [18], \cddip_decrypt_in.tdata [17], 
	\cddip_decrypt_in.tdata [16], \cddip_decrypt_in.tdata [15], 
	\cddip_decrypt_in.tdata [14], \cddip_decrypt_in.tdata [13], 
	\cddip_decrypt_in.tdata [12], \cddip_decrypt_in.tdata [11], 
	\cddip_decrypt_in.tdata [10], \cddip_decrypt_in.tdata [9], 
	\cddip_decrypt_in.tdata [8], \cddip_decrypt_in.tdata [7], 
	\cddip_decrypt_in.tdata [6], \cddip_decrypt_in.tdata [5], 
	\cddip_decrypt_in.tdata [4], \cddip_decrypt_in.tdata [3], 
	\cddip_decrypt_in.tdata [2], \cddip_decrypt_in.tdata [1], 
	\cddip_decrypt_in.tdata [0]} ), cddip_decrypt_in_valid, ckv_rd, 
	ckv_addr, kim_rd, kim_addr, drng_ack, stat_req_with_expired_seed, 
	stat_aux_key_type_0, stat_aux_key_type_1, stat_aux_key_type_2, 
	stat_aux_key_type_3, stat_aux_key_type_4, stat_aux_key_type_5, 
	stat_aux_key_type_6, stat_aux_key_type_7, stat_aux_key_type_8, 
	stat_aux_key_type_9, stat_aux_key_type_10, stat_aux_key_type_11, 
	stat_aux_key_type_12, stat_aux_key_type_13, 
	stat_aux_cmd_with_vf_pf_fail, tlv_parser_idle, 
	tlv_parser_int_tlv_start_pulse, set_tlv_bip2_error_int, clk, rst_n, 
	disable_debug_cmd_q, disable_unencrypted_keys, 
	always_validate_kim_ref, .kme_slv_out( {\kme_slv_out.tvalid , 
	\kme_slv_out.tlast , \kme_slv_out.tid [0], \kme_slv_out.tstrb [7], 
	\kme_slv_out.tstrb [6], \kme_slv_out.tstrb [5], 
	\kme_slv_out.tstrb [4], \kme_slv_out.tstrb [3], 
	\kme_slv_out.tstrb [2], \kme_slv_out.tstrb [1], 
	\kme_slv_out.tstrb [0], \kme_slv_out.tuser [7], 
	\kme_slv_out.tuser [6], \kme_slv_out.tuser [5], 
	\kme_slv_out.tuser [4], \kme_slv_out.tuser [3], 
	\kme_slv_out.tuser [2], \kme_slv_out.tuser [1], 
	\kme_slv_out.tuser [0], \kme_slv_out.tdata [63], 
	\kme_slv_out.tdata [62], \kme_slv_out.tdata [61], 
	\kme_slv_out.tdata [60], \kme_slv_out.tdata [59], 
	\kme_slv_out.tdata [58], \kme_slv_out.tdata [57], 
	\kme_slv_out.tdata [56], \kme_slv_out.tdata [55], 
	\kme_slv_out.tdata [54], \kme_slv_out.tdata [53], 
	\kme_slv_out.tdata [52], \kme_slv_out.tdata [51], 
	\kme_slv_out.tdata [50], \kme_slv_out.tdata [49], 
	\kme_slv_out.tdata [48], \kme_slv_out.tdata [47], 
	\kme_slv_out.tdata [46], \kme_slv_out.tdata [45], 
	\kme_slv_out.tdata [44], \kme_slv_out.tdata [43], 
	\kme_slv_out.tdata [42], \kme_slv_out.tdata [41], 
	\kme_slv_out.tdata [40], \kme_slv_out.tdata [39], 
	\kme_slv_out.tdata [38], \kme_slv_out.tdata [37], 
	\kme_slv_out.tdata [36], \kme_slv_out.tdata [35], 
	\kme_slv_out.tdata [34], \kme_slv_out.tdata [33], 
	\kme_slv_out.tdata [32], \kme_slv_out.tdata [31], 
	\kme_slv_out.tdata [30], \kme_slv_out.tdata [29], 
	\kme_slv_out.tdata [28], \kme_slv_out.tdata [27], 
	\kme_slv_out.tdata [26], \kme_slv_out.tdata [25], 
	\kme_slv_out.tdata [24], \kme_slv_out.tdata [23], 
	\kme_slv_out.tdata [22], \kme_slv_out.tdata [21], 
	\kme_slv_out.tdata [20], \kme_slv_out.tdata [19], 
	\kme_slv_out.tdata [18], \kme_slv_out.tdata [17], 
	\kme_slv_out.tdata [16], \kme_slv_out.tdata [15], 
	\kme_slv_out.tdata [14], \kme_slv_out.tdata [13], 
	\kme_slv_out.tdata [12], \kme_slv_out.tdata [11], 
	\kme_slv_out.tdata [10], \kme_slv_out.tdata [9], 
	\kme_slv_out.tdata [8], \kme_slv_out.tdata [7], 
	\kme_slv_out.tdata [6], \kme_slv_out.tdata [5], 
	\kme_slv_out.tdata [4], \kme_slv_out.tdata [3], 
	\kme_slv_out.tdata [2], \kme_slv_out.tdata [1], 
	\kme_slv_out.tdata [0]} ), kme_slv_aempty, kme_slv_empty, 
	cceip_encrypt_in_stall, cceip_validate_in_stall, 
	cddip_decrypt_in_stall, ckv_dout, ckv_mbe, .kim_dout( {
	\kim_dout.valid [0], \kim_dout.label_index [2], 
	\kim_dout.label_index [1], \kim_dout.label_index [0], 
	\kim_dout.ckv_length [1], \kim_dout.ckv_length [0], 
	\kim_dout.ckv_pointer [14], \kim_dout.ckv_pointer [13], 
	\kim_dout.ckv_pointer [12], \kim_dout.ckv_pointer [11], 
	\kim_dout.ckv_pointer [10], \kim_dout.ckv_pointer [9], 
	\kim_dout.ckv_pointer [8], \kim_dout.ckv_pointer [7], 
	\kim_dout.ckv_pointer [6], \kim_dout.ckv_pointer [5], 
	\kim_dout.ckv_pointer [4], \kim_dout.ckv_pointer [3], 
	\kim_dout.ckv_pointer [2], \kim_dout.ckv_pointer [1], 
	\kim_dout.ckv_pointer [0], \kim_dout.pf_num [3], 
	\kim_dout.pf_num [2], \kim_dout.pf_num [1], \kim_dout.pf_num [0], 
	\kim_dout.vf_num [11], \kim_dout.vf_num [10], \kim_dout.vf_num [9], 
	\kim_dout.vf_num [8], \kim_dout.vf_num [7], \kim_dout.vf_num [6], 
	\kim_dout.vf_num [5], \kim_dout.vf_num [4], \kim_dout.vf_num [3], 
	\kim_dout.vf_num [2], \kim_dout.vf_num [1], \kim_dout.vf_num [0], 
	\kim_dout.vf_valid [0]} ), kim_mbe, drng_seed_expired, 
	drng_health_fail, drng_256_out, drng_valid);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output kme_slv_rd;
output [0:0] \cceip_encrypt_in.sot ;
output [0:0] \cceip_encrypt_in.eoi ;
output [0:0] \cceip_encrypt_in.eot ;
output [3:0] \cceip_encrypt_in.id ;
output [63:0] \cceip_encrypt_in.tdata ;
wire [70:0] cceip_encrypt_in;
output cceip_encrypt_in_valid;
output [0:0] \cceip_validate_in.sot ;
output [0:0] \cceip_validate_in.eoi ;
output [0:0] \cceip_validate_in.eot ;
output [3:0] \cceip_validate_in.id ;
output [63:0] \cceip_validate_in.tdata ;
wire [70:0] cceip_validate_in;
output cceip_validate_in_valid;
output [0:0] \cddip_decrypt_in.sot ;
output [0:0] \cddip_decrypt_in.eoi ;
output [0:0] \cddip_decrypt_in.eot ;
output [3:0] \cddip_decrypt_in.id ;
output [63:0] \cddip_decrypt_in.tdata ;
wire [70:0] cddip_decrypt_in;
output cddip_decrypt_in_valid;
output ckv_rd;
output [14:0] ckv_addr;
output kim_rd;
output [13:0] kim_addr;
output drng_ack;
output stat_req_with_expired_seed;
output stat_aux_key_type_0;
output stat_aux_key_type_1;
output stat_aux_key_type_2;
output stat_aux_key_type_3;
output stat_aux_key_type_4;
output stat_aux_key_type_5;
output stat_aux_key_type_6;
output stat_aux_key_type_7;
output stat_aux_key_type_8;
output stat_aux_key_type_9;
output stat_aux_key_type_10;
output stat_aux_key_type_11;
output stat_aux_key_type_12;
output stat_aux_key_type_13;
output stat_aux_cmd_with_vf_pf_fail;
output tlv_parser_idle;
output tlv_parser_int_tlv_start_pulse;
output set_tlv_bip2_error_int;
input clk;
input rst_n;
input disable_debug_cmd_q;
input disable_unencrypted_keys;
input always_validate_kim_ref;
input \kme_slv_out.tvalid ;
input \kme_slv_out.tlast ;
input [0:0] \kme_slv_out.tid ;
input [7:0] \kme_slv_out.tstrb ;
input [7:0] \kme_slv_out.tuser ;
input [63:0] \kme_slv_out.tdata ;
wire [82:0] kme_slv_out;
input kme_slv_aempty;
input kme_slv_empty;
input cceip_encrypt_in_stall;
input cceip_validate_in_stall;
input cddip_decrypt_in_stall;
input [63:0] ckv_dout;
input ckv_mbe;
input [0:0] \kim_dout.valid ;
input [2:0] \kim_dout.label_index ;
input [1:0] \kim_dout.ckv_length ;
input [14:0] \kim_dout.ckv_pointer ;
input [3:0] \kim_dout.pf_num ;
input [11:0] \kim_dout.vf_num ;
input [0:0] \kim_dout.vf_valid ;
wire [37:0] kim_dout;
input kim_mbe;
input drng_seed_expired;
input drng_health_fail;
input [127:0] drng_256_out;
input drng_valid;
wire ckvreader_kimreader_ack;
wire ckvreader_kopassigner_valid;
wire kimreader_ckvreader_valid;
wire kimreader_parser_ack;
wire kopassigner_ckvreader_ack;
wire parser_kimreader_valid;
wire stitcher_empty;
wire stitcher_rd;
wire [0:70] _zy_simnet_cceip_encrypt_in_0_w$;
wire [0:70] _zy_simnet_cceip_validate_in_1_w$;
wire [0:70] _zy_simnet_cddip_decrypt_in_2_w$;
wire [0:82] _zy_simnet_stitcher_out_3_w$;
wire [0:70] _zy_simnet_parser_kimreader_data_4_w$;
wire [0:82] _zy_simnet_stitcher_out_5_w$;
wire [0:70] _zy_simnet_kimreader_ckvreader_data_6_w$;
wire [0:70] _zy_simnet_parser_kimreader_data_7_w$;
wire [0:70] _zy_simnet_ckvreader_kopassigner_data_8_w$;
wire [0:70] _zy_simnet_kimreader_ckvreader_data_9_w$;
wire [0:70] _zy_simnet_cceip_encrypt_in_10_w$;
wire [0:70] _zy_simnet_cceip_validate_in_11_w$;
wire [0:70] _zy_simnet_cddip_decrypt_in_12_w$;
wire [0:70] _zy_simnet_ckvreader_kopassigner_data_13_w$;
wire [70:0] ckvreader_kopassigner_data;
wire [70:0] kimreader_ckvreader_data;
wire [70:0] parser_kimreader_data;
wire [82:0] stitcher_out;
wire [0:0] \ckvreader_kopassigner_data.sot ;
wire [0:0] \ckvreader_kopassigner_data.eoi ;
wire [0:0] \ckvreader_kopassigner_data.eot ;
wire [3:0] \ckvreader_kopassigner_data.id ;
wire [63:0] \ckvreader_kopassigner_data.tdata ;
wire [0:0] \kimreader_ckvreader_data.sot ;
wire [0:0] \kimreader_ckvreader_data.eoi ;
wire [0:0] \kimreader_ckvreader_data.eot ;
wire [3:0] \kimreader_ckvreader_data.id ;
wire [63:0] \kimreader_ckvreader_data.tdata ;
wire [0:0] \parser_kimreader_data.sot ;
wire [0:0] \parser_kimreader_data.eoi ;
wire [0:0] \parser_kimreader_data.eot ;
wire [3:0] \parser_kimreader_data.id ;
wire [63:0] \parser_kimreader_data.tdata ;
wire \stitcher_out.tvalid ;
wire \stitcher_out.tlast ;
wire [0:0] \stitcher_out.tid ;
wire [7:0] \stitcher_out.tstrb ;
wire [7:0] \stitcher_out.tuser ;
wire [63:0] \stitcher_out.tdata ;
tran (cceip_encrypt_in[70], \cceip_encrypt_in.sot [0]);
tran (cceip_encrypt_in[69], \cceip_encrypt_in.eoi [0]);
tran (cceip_encrypt_in[68], \cceip_encrypt_in.eot [0]);
tran (cceip_encrypt_in[67], \cceip_encrypt_in.id [3]);
tran (cceip_encrypt_in[66], \cceip_encrypt_in.id [2]);
tran (cceip_encrypt_in[65], \cceip_encrypt_in.id [1]);
tran (cceip_encrypt_in[64], \cceip_encrypt_in.id [0]);
tran (cceip_encrypt_in[63], \cceip_encrypt_in.tdata [63]);
tran (cceip_encrypt_in[62], \cceip_encrypt_in.tdata [62]);
tran (cceip_encrypt_in[61], \cceip_encrypt_in.tdata [61]);
tran (cceip_encrypt_in[60], \cceip_encrypt_in.tdata [60]);
tran (cceip_encrypt_in[59], \cceip_encrypt_in.tdata [59]);
tran (cceip_encrypt_in[58], \cceip_encrypt_in.tdata [58]);
tran (cceip_encrypt_in[57], \cceip_encrypt_in.tdata [57]);
tran (cceip_encrypt_in[56], \cceip_encrypt_in.tdata [56]);
tran (cceip_encrypt_in[55], \cceip_encrypt_in.tdata [55]);
tran (cceip_encrypt_in[54], \cceip_encrypt_in.tdata [54]);
tran (cceip_encrypt_in[53], \cceip_encrypt_in.tdata [53]);
tran (cceip_encrypt_in[52], \cceip_encrypt_in.tdata [52]);
tran (cceip_encrypt_in[51], \cceip_encrypt_in.tdata [51]);
tran (cceip_encrypt_in[50], \cceip_encrypt_in.tdata [50]);
tran (cceip_encrypt_in[49], \cceip_encrypt_in.tdata [49]);
tran (cceip_encrypt_in[48], \cceip_encrypt_in.tdata [48]);
tran (cceip_encrypt_in[47], \cceip_encrypt_in.tdata [47]);
tran (cceip_encrypt_in[46], \cceip_encrypt_in.tdata [46]);
tran (cceip_encrypt_in[45], \cceip_encrypt_in.tdata [45]);
tran (cceip_encrypt_in[44], \cceip_encrypt_in.tdata [44]);
tran (cceip_encrypt_in[43], \cceip_encrypt_in.tdata [43]);
tran (cceip_encrypt_in[42], \cceip_encrypt_in.tdata [42]);
tran (cceip_encrypt_in[41], \cceip_encrypt_in.tdata [41]);
tran (cceip_encrypt_in[40], \cceip_encrypt_in.tdata [40]);
tran (cceip_encrypt_in[39], \cceip_encrypt_in.tdata [39]);
tran (cceip_encrypt_in[38], \cceip_encrypt_in.tdata [38]);
tran (cceip_encrypt_in[37], \cceip_encrypt_in.tdata [37]);
tran (cceip_encrypt_in[36], \cceip_encrypt_in.tdata [36]);
tran (cceip_encrypt_in[35], \cceip_encrypt_in.tdata [35]);
tran (cceip_encrypt_in[34], \cceip_encrypt_in.tdata [34]);
tran (cceip_encrypt_in[33], \cceip_encrypt_in.tdata [33]);
tran (cceip_encrypt_in[32], \cceip_encrypt_in.tdata [32]);
tran (cceip_encrypt_in[31], \cceip_encrypt_in.tdata [31]);
tran (cceip_encrypt_in[30], \cceip_encrypt_in.tdata [30]);
tran (cceip_encrypt_in[29], \cceip_encrypt_in.tdata [29]);
tran (cceip_encrypt_in[28], \cceip_encrypt_in.tdata [28]);
tran (cceip_encrypt_in[27], \cceip_encrypt_in.tdata [27]);
tran (cceip_encrypt_in[26], \cceip_encrypt_in.tdata [26]);
tran (cceip_encrypt_in[25], \cceip_encrypt_in.tdata [25]);
tran (cceip_encrypt_in[24], \cceip_encrypt_in.tdata [24]);
tran (cceip_encrypt_in[23], \cceip_encrypt_in.tdata [23]);
tran (cceip_encrypt_in[22], \cceip_encrypt_in.tdata [22]);
tran (cceip_encrypt_in[21], \cceip_encrypt_in.tdata [21]);
tran (cceip_encrypt_in[20], \cceip_encrypt_in.tdata [20]);
tran (cceip_encrypt_in[19], \cceip_encrypt_in.tdata [19]);
tran (cceip_encrypt_in[18], \cceip_encrypt_in.tdata [18]);
tran (cceip_encrypt_in[17], \cceip_encrypt_in.tdata [17]);
tran (cceip_encrypt_in[16], \cceip_encrypt_in.tdata [16]);
tran (cceip_encrypt_in[15], \cceip_encrypt_in.tdata [15]);
tran (cceip_encrypt_in[14], \cceip_encrypt_in.tdata [14]);
tran (cceip_encrypt_in[13], \cceip_encrypt_in.tdata [13]);
tran (cceip_encrypt_in[12], \cceip_encrypt_in.tdata [12]);
tran (cceip_encrypt_in[11], \cceip_encrypt_in.tdata [11]);
tran (cceip_encrypt_in[10], \cceip_encrypt_in.tdata [10]);
tran (cceip_encrypt_in[9], \cceip_encrypt_in.tdata [9]);
tran (cceip_encrypt_in[8], \cceip_encrypt_in.tdata [8]);
tran (cceip_encrypt_in[7], \cceip_encrypt_in.tdata [7]);
tran (cceip_encrypt_in[6], \cceip_encrypt_in.tdata [6]);
tran (cceip_encrypt_in[5], \cceip_encrypt_in.tdata [5]);
tran (cceip_encrypt_in[4], \cceip_encrypt_in.tdata [4]);
tran (cceip_encrypt_in[3], \cceip_encrypt_in.tdata [3]);
tran (cceip_encrypt_in[2], \cceip_encrypt_in.tdata [2]);
tran (cceip_encrypt_in[1], \cceip_encrypt_in.tdata [1]);
tran (cceip_encrypt_in[0], \cceip_encrypt_in.tdata [0]);
tran (cceip_validate_in[70], \cceip_validate_in.sot [0]);
tran (cceip_validate_in[69], \cceip_validate_in.eoi [0]);
tran (cceip_validate_in[68], \cceip_validate_in.eot [0]);
tran (cceip_validate_in[67], \cceip_validate_in.id [3]);
tran (cceip_validate_in[66], \cceip_validate_in.id [2]);
tran (cceip_validate_in[65], \cceip_validate_in.id [1]);
tran (cceip_validate_in[64], \cceip_validate_in.id [0]);
tran (cceip_validate_in[63], \cceip_validate_in.tdata [63]);
tran (cceip_validate_in[62], \cceip_validate_in.tdata [62]);
tran (cceip_validate_in[61], \cceip_validate_in.tdata [61]);
tran (cceip_validate_in[60], \cceip_validate_in.tdata [60]);
tran (cceip_validate_in[59], \cceip_validate_in.tdata [59]);
tran (cceip_validate_in[58], \cceip_validate_in.tdata [58]);
tran (cceip_validate_in[57], \cceip_validate_in.tdata [57]);
tran (cceip_validate_in[56], \cceip_validate_in.tdata [56]);
tran (cceip_validate_in[55], \cceip_validate_in.tdata [55]);
tran (cceip_validate_in[54], \cceip_validate_in.tdata [54]);
tran (cceip_validate_in[53], \cceip_validate_in.tdata [53]);
tran (cceip_validate_in[52], \cceip_validate_in.tdata [52]);
tran (cceip_validate_in[51], \cceip_validate_in.tdata [51]);
tran (cceip_validate_in[50], \cceip_validate_in.tdata [50]);
tran (cceip_validate_in[49], \cceip_validate_in.tdata [49]);
tran (cceip_validate_in[48], \cceip_validate_in.tdata [48]);
tran (cceip_validate_in[47], \cceip_validate_in.tdata [47]);
tran (cceip_validate_in[46], \cceip_validate_in.tdata [46]);
tran (cceip_validate_in[45], \cceip_validate_in.tdata [45]);
tran (cceip_validate_in[44], \cceip_validate_in.tdata [44]);
tran (cceip_validate_in[43], \cceip_validate_in.tdata [43]);
tran (cceip_validate_in[42], \cceip_validate_in.tdata [42]);
tran (cceip_validate_in[41], \cceip_validate_in.tdata [41]);
tran (cceip_validate_in[40], \cceip_validate_in.tdata [40]);
tran (cceip_validate_in[39], \cceip_validate_in.tdata [39]);
tran (cceip_validate_in[38], \cceip_validate_in.tdata [38]);
tran (cceip_validate_in[37], \cceip_validate_in.tdata [37]);
tran (cceip_validate_in[36], \cceip_validate_in.tdata [36]);
tran (cceip_validate_in[35], \cceip_validate_in.tdata [35]);
tran (cceip_validate_in[34], \cceip_validate_in.tdata [34]);
tran (cceip_validate_in[33], \cceip_validate_in.tdata [33]);
tran (cceip_validate_in[32], \cceip_validate_in.tdata [32]);
tran (cceip_validate_in[31], \cceip_validate_in.tdata [31]);
tran (cceip_validate_in[30], \cceip_validate_in.tdata [30]);
tran (cceip_validate_in[29], \cceip_validate_in.tdata [29]);
tran (cceip_validate_in[28], \cceip_validate_in.tdata [28]);
tran (cceip_validate_in[27], \cceip_validate_in.tdata [27]);
tran (cceip_validate_in[26], \cceip_validate_in.tdata [26]);
tran (cceip_validate_in[25], \cceip_validate_in.tdata [25]);
tran (cceip_validate_in[24], \cceip_validate_in.tdata [24]);
tran (cceip_validate_in[23], \cceip_validate_in.tdata [23]);
tran (cceip_validate_in[22], \cceip_validate_in.tdata [22]);
tran (cceip_validate_in[21], \cceip_validate_in.tdata [21]);
tran (cceip_validate_in[20], \cceip_validate_in.tdata [20]);
tran (cceip_validate_in[19], \cceip_validate_in.tdata [19]);
tran (cceip_validate_in[18], \cceip_validate_in.tdata [18]);
tran (cceip_validate_in[17], \cceip_validate_in.tdata [17]);
tran (cceip_validate_in[16], \cceip_validate_in.tdata [16]);
tran (cceip_validate_in[15], \cceip_validate_in.tdata [15]);
tran (cceip_validate_in[14], \cceip_validate_in.tdata [14]);
tran (cceip_validate_in[13], \cceip_validate_in.tdata [13]);
tran (cceip_validate_in[12], \cceip_validate_in.tdata [12]);
tran (cceip_validate_in[11], \cceip_validate_in.tdata [11]);
tran (cceip_validate_in[10], \cceip_validate_in.tdata [10]);
tran (cceip_validate_in[9], \cceip_validate_in.tdata [9]);
tran (cceip_validate_in[8], \cceip_validate_in.tdata [8]);
tran (cceip_validate_in[7], \cceip_validate_in.tdata [7]);
tran (cceip_validate_in[6], \cceip_validate_in.tdata [6]);
tran (cceip_validate_in[5], \cceip_validate_in.tdata [5]);
tran (cceip_validate_in[4], \cceip_validate_in.tdata [4]);
tran (cceip_validate_in[3], \cceip_validate_in.tdata [3]);
tran (cceip_validate_in[2], \cceip_validate_in.tdata [2]);
tran (cceip_validate_in[1], \cceip_validate_in.tdata [1]);
tran (cceip_validate_in[0], \cceip_validate_in.tdata [0]);
tran (cddip_decrypt_in[70], \cddip_decrypt_in.sot [0]);
tran (cddip_decrypt_in[69], \cddip_decrypt_in.eoi [0]);
tran (cddip_decrypt_in[68], \cddip_decrypt_in.eot [0]);
tran (cddip_decrypt_in[67], \cddip_decrypt_in.id [3]);
tran (cddip_decrypt_in[66], \cddip_decrypt_in.id [2]);
tran (cddip_decrypt_in[65], \cddip_decrypt_in.id [1]);
tran (cddip_decrypt_in[64], \cddip_decrypt_in.id [0]);
tran (cddip_decrypt_in[63], \cddip_decrypt_in.tdata [63]);
tran (cddip_decrypt_in[62], \cddip_decrypt_in.tdata [62]);
tran (cddip_decrypt_in[61], \cddip_decrypt_in.tdata [61]);
tran (cddip_decrypt_in[60], \cddip_decrypt_in.tdata [60]);
tran (cddip_decrypt_in[59], \cddip_decrypt_in.tdata [59]);
tran (cddip_decrypt_in[58], \cddip_decrypt_in.tdata [58]);
tran (cddip_decrypt_in[57], \cddip_decrypt_in.tdata [57]);
tran (cddip_decrypt_in[56], \cddip_decrypt_in.tdata [56]);
tran (cddip_decrypt_in[55], \cddip_decrypt_in.tdata [55]);
tran (cddip_decrypt_in[54], \cddip_decrypt_in.tdata [54]);
tran (cddip_decrypt_in[53], \cddip_decrypt_in.tdata [53]);
tran (cddip_decrypt_in[52], \cddip_decrypt_in.tdata [52]);
tran (cddip_decrypt_in[51], \cddip_decrypt_in.tdata [51]);
tran (cddip_decrypt_in[50], \cddip_decrypt_in.tdata [50]);
tran (cddip_decrypt_in[49], \cddip_decrypt_in.tdata [49]);
tran (cddip_decrypt_in[48], \cddip_decrypt_in.tdata [48]);
tran (cddip_decrypt_in[47], \cddip_decrypt_in.tdata [47]);
tran (cddip_decrypt_in[46], \cddip_decrypt_in.tdata [46]);
tran (cddip_decrypt_in[45], \cddip_decrypt_in.tdata [45]);
tran (cddip_decrypt_in[44], \cddip_decrypt_in.tdata [44]);
tran (cddip_decrypt_in[43], \cddip_decrypt_in.tdata [43]);
tran (cddip_decrypt_in[42], \cddip_decrypt_in.tdata [42]);
tran (cddip_decrypt_in[41], \cddip_decrypt_in.tdata [41]);
tran (cddip_decrypt_in[40], \cddip_decrypt_in.tdata [40]);
tran (cddip_decrypt_in[39], \cddip_decrypt_in.tdata [39]);
tran (cddip_decrypt_in[38], \cddip_decrypt_in.tdata [38]);
tran (cddip_decrypt_in[37], \cddip_decrypt_in.tdata [37]);
tran (cddip_decrypt_in[36], \cddip_decrypt_in.tdata [36]);
tran (cddip_decrypt_in[35], \cddip_decrypt_in.tdata [35]);
tran (cddip_decrypt_in[34], \cddip_decrypt_in.tdata [34]);
tran (cddip_decrypt_in[33], \cddip_decrypt_in.tdata [33]);
tran (cddip_decrypt_in[32], \cddip_decrypt_in.tdata [32]);
tran (cddip_decrypt_in[31], \cddip_decrypt_in.tdata [31]);
tran (cddip_decrypt_in[30], \cddip_decrypt_in.tdata [30]);
tran (cddip_decrypt_in[29], \cddip_decrypt_in.tdata [29]);
tran (cddip_decrypt_in[28], \cddip_decrypt_in.tdata [28]);
tran (cddip_decrypt_in[27], \cddip_decrypt_in.tdata [27]);
tran (cddip_decrypt_in[26], \cddip_decrypt_in.tdata [26]);
tran (cddip_decrypt_in[25], \cddip_decrypt_in.tdata [25]);
tran (cddip_decrypt_in[24], \cddip_decrypt_in.tdata [24]);
tran (cddip_decrypt_in[23], \cddip_decrypt_in.tdata [23]);
tran (cddip_decrypt_in[22], \cddip_decrypt_in.tdata [22]);
tran (cddip_decrypt_in[21], \cddip_decrypt_in.tdata [21]);
tran (cddip_decrypt_in[20], \cddip_decrypt_in.tdata [20]);
tran (cddip_decrypt_in[19], \cddip_decrypt_in.tdata [19]);
tran (cddip_decrypt_in[18], \cddip_decrypt_in.tdata [18]);
tran (cddip_decrypt_in[17], \cddip_decrypt_in.tdata [17]);
tran (cddip_decrypt_in[16], \cddip_decrypt_in.tdata [16]);
tran (cddip_decrypt_in[15], \cddip_decrypt_in.tdata [15]);
tran (cddip_decrypt_in[14], \cddip_decrypt_in.tdata [14]);
tran (cddip_decrypt_in[13], \cddip_decrypt_in.tdata [13]);
tran (cddip_decrypt_in[12], \cddip_decrypt_in.tdata [12]);
tran (cddip_decrypt_in[11], \cddip_decrypt_in.tdata [11]);
tran (cddip_decrypt_in[10], \cddip_decrypt_in.tdata [10]);
tran (cddip_decrypt_in[9], \cddip_decrypt_in.tdata [9]);
tran (cddip_decrypt_in[8], \cddip_decrypt_in.tdata [8]);
tran (cddip_decrypt_in[7], \cddip_decrypt_in.tdata [7]);
tran (cddip_decrypt_in[6], \cddip_decrypt_in.tdata [6]);
tran (cddip_decrypt_in[5], \cddip_decrypt_in.tdata [5]);
tran (cddip_decrypt_in[4], \cddip_decrypt_in.tdata [4]);
tran (cddip_decrypt_in[3], \cddip_decrypt_in.tdata [3]);
tran (cddip_decrypt_in[2], \cddip_decrypt_in.tdata [2]);
tran (cddip_decrypt_in[1], \cddip_decrypt_in.tdata [1]);
tran (cddip_decrypt_in[0], \cddip_decrypt_in.tdata [0]);
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
tran (kim_dout[37], \kim_dout.valid [0]);
tran (kim_dout[36], \kim_dout.label_index [2]);
tran (kim_dout[35], \kim_dout.label_index [1]);
tran (kim_dout[34], \kim_dout.label_index [0]);
tran (kim_dout[33], \kim_dout.ckv_length [1]);
tran (kim_dout[32], \kim_dout.ckv_length [0]);
tran (kim_dout[31], \kim_dout.ckv_pointer [14]);
tran (kim_dout[30], \kim_dout.ckv_pointer [13]);
tran (kim_dout[29], \kim_dout.ckv_pointer [12]);
tran (kim_dout[28], \kim_dout.ckv_pointer [11]);
tran (kim_dout[27], \kim_dout.ckv_pointer [10]);
tran (kim_dout[26], \kim_dout.ckv_pointer [9]);
tran (kim_dout[25], \kim_dout.ckv_pointer [8]);
tran (kim_dout[24], \kim_dout.ckv_pointer [7]);
tran (kim_dout[23], \kim_dout.ckv_pointer [6]);
tran (kim_dout[22], \kim_dout.ckv_pointer [5]);
tran (kim_dout[21], \kim_dout.ckv_pointer [4]);
tran (kim_dout[20], \kim_dout.ckv_pointer [3]);
tran (kim_dout[19], \kim_dout.ckv_pointer [2]);
tran (kim_dout[18], \kim_dout.ckv_pointer [1]);
tran (kim_dout[17], \kim_dout.ckv_pointer [0]);
tran (kim_dout[16], \kim_dout.pf_num [3]);
tran (kim_dout[15], \kim_dout.pf_num [2]);
tran (kim_dout[14], \kim_dout.pf_num [1]);
tran (kim_dout[13], \kim_dout.pf_num [0]);
tran (kim_dout[12], \kim_dout.vf_num [11]);
tran (kim_dout[11], \kim_dout.vf_num [10]);
tran (kim_dout[10], \kim_dout.vf_num [9]);
tran (kim_dout[9], \kim_dout.vf_num [8]);
tran (kim_dout[8], \kim_dout.vf_num [7]);
tran (kim_dout[7], \kim_dout.vf_num [6]);
tran (kim_dout[6], \kim_dout.vf_num [5]);
tran (kim_dout[5], \kim_dout.vf_num [4]);
tran (kim_dout[4], \kim_dout.vf_num [3]);
tran (kim_dout[3], \kim_dout.vf_num [2]);
tran (kim_dout[2], \kim_dout.vf_num [1]);
tran (kim_dout[1], \kim_dout.vf_num [0]);
tran (kim_dout[0], \kim_dout.vf_valid [0]);
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
tran (parser_kimreader_data[70], \parser_kimreader_data.sot [0]);
tran (parser_kimreader_data[69], \parser_kimreader_data.eoi [0]);
tran (parser_kimreader_data[68], \parser_kimreader_data.eot [0]);
tran (parser_kimreader_data[67], \parser_kimreader_data.id [3]);
tran (parser_kimreader_data[66], \parser_kimreader_data.id [2]);
tran (parser_kimreader_data[65], \parser_kimreader_data.id [1]);
tran (parser_kimreader_data[64], \parser_kimreader_data.id [0]);
tran (parser_kimreader_data[63], \parser_kimreader_data.tdata [63]);
tran (parser_kimreader_data[62], \parser_kimreader_data.tdata [62]);
tran (parser_kimreader_data[61], \parser_kimreader_data.tdata [61]);
tran (parser_kimreader_data[60], \parser_kimreader_data.tdata [60]);
tran (parser_kimreader_data[59], \parser_kimreader_data.tdata [59]);
tran (parser_kimreader_data[58], \parser_kimreader_data.tdata [58]);
tran (parser_kimreader_data[57], \parser_kimreader_data.tdata [57]);
tran (parser_kimreader_data[56], \parser_kimreader_data.tdata [56]);
tran (parser_kimreader_data[55], \parser_kimreader_data.tdata [55]);
tran (parser_kimreader_data[54], \parser_kimreader_data.tdata [54]);
tran (parser_kimreader_data[53], \parser_kimreader_data.tdata [53]);
tran (parser_kimreader_data[52], \parser_kimreader_data.tdata [52]);
tran (parser_kimreader_data[51], \parser_kimreader_data.tdata [51]);
tran (parser_kimreader_data[50], \parser_kimreader_data.tdata [50]);
tran (parser_kimreader_data[49], \parser_kimreader_data.tdata [49]);
tran (parser_kimreader_data[48], \parser_kimreader_data.tdata [48]);
tran (parser_kimreader_data[47], \parser_kimreader_data.tdata [47]);
tran (parser_kimreader_data[46], \parser_kimreader_data.tdata [46]);
tran (parser_kimreader_data[45], \parser_kimreader_data.tdata [45]);
tran (parser_kimreader_data[44], \parser_kimreader_data.tdata [44]);
tran (parser_kimreader_data[43], \parser_kimreader_data.tdata [43]);
tran (parser_kimreader_data[42], \parser_kimreader_data.tdata [42]);
tran (parser_kimreader_data[41], \parser_kimreader_data.tdata [41]);
tran (parser_kimreader_data[40], \parser_kimreader_data.tdata [40]);
tran (parser_kimreader_data[39], \parser_kimreader_data.tdata [39]);
tran (parser_kimreader_data[38], \parser_kimreader_data.tdata [38]);
tran (parser_kimreader_data[37], \parser_kimreader_data.tdata [37]);
tran (parser_kimreader_data[36], \parser_kimreader_data.tdata [36]);
tran (parser_kimreader_data[35], \parser_kimreader_data.tdata [35]);
tran (parser_kimreader_data[34], \parser_kimreader_data.tdata [34]);
tran (parser_kimreader_data[33], \parser_kimreader_data.tdata [33]);
tran (parser_kimreader_data[32], \parser_kimreader_data.tdata [32]);
tran (parser_kimreader_data[31], \parser_kimreader_data.tdata [31]);
tran (parser_kimreader_data[30], \parser_kimreader_data.tdata [30]);
tran (parser_kimreader_data[29], \parser_kimreader_data.tdata [29]);
tran (parser_kimreader_data[28], \parser_kimreader_data.tdata [28]);
tran (parser_kimreader_data[27], \parser_kimreader_data.tdata [27]);
tran (parser_kimreader_data[26], \parser_kimreader_data.tdata [26]);
tran (parser_kimreader_data[25], \parser_kimreader_data.tdata [25]);
tran (parser_kimreader_data[24], \parser_kimreader_data.tdata [24]);
tran (parser_kimreader_data[23], \parser_kimreader_data.tdata [23]);
tran (parser_kimreader_data[22], \parser_kimreader_data.tdata [22]);
tran (parser_kimreader_data[21], \parser_kimreader_data.tdata [21]);
tran (parser_kimreader_data[20], \parser_kimreader_data.tdata [20]);
tran (parser_kimreader_data[19], \parser_kimreader_data.tdata [19]);
tran (parser_kimreader_data[18], \parser_kimreader_data.tdata [18]);
tran (parser_kimreader_data[17], \parser_kimreader_data.tdata [17]);
tran (parser_kimreader_data[16], \parser_kimreader_data.tdata [16]);
tran (parser_kimreader_data[15], \parser_kimreader_data.tdata [15]);
tran (parser_kimreader_data[14], \parser_kimreader_data.tdata [14]);
tran (parser_kimreader_data[13], \parser_kimreader_data.tdata [13]);
tran (parser_kimreader_data[12], \parser_kimreader_data.tdata [12]);
tran (parser_kimreader_data[11], \parser_kimreader_data.tdata [11]);
tran (parser_kimreader_data[10], \parser_kimreader_data.tdata [10]);
tran (parser_kimreader_data[9], \parser_kimreader_data.tdata [9]);
tran (parser_kimreader_data[8], \parser_kimreader_data.tdata [8]);
tran (parser_kimreader_data[7], \parser_kimreader_data.tdata [7]);
tran (parser_kimreader_data[6], \parser_kimreader_data.tdata [6]);
tran (parser_kimreader_data[5], \parser_kimreader_data.tdata [5]);
tran (parser_kimreader_data[4], \parser_kimreader_data.tdata [4]);
tran (parser_kimreader_data[3], \parser_kimreader_data.tdata [3]);
tran (parser_kimreader_data[2], \parser_kimreader_data.tdata [2]);
tran (parser_kimreader_data[1], \parser_kimreader_data.tdata [1]);
tran (parser_kimreader_data[0], \parser_kimreader_data.tdata [0]);
tran (kimreader_ckvreader_data[70], \kimreader_ckvreader_data.sot [0]);
tran (kimreader_ckvreader_data[69], \kimreader_ckvreader_data.eoi [0]);
tran (kimreader_ckvreader_data[68], \kimreader_ckvreader_data.eot [0]);
tran (kimreader_ckvreader_data[67], \kimreader_ckvreader_data.id [3]);
tran (kimreader_ckvreader_data[66], \kimreader_ckvreader_data.id [2]);
tran (kimreader_ckvreader_data[65], \kimreader_ckvreader_data.id [1]);
tran (kimreader_ckvreader_data[64], \kimreader_ckvreader_data.id [0]);
tran (kimreader_ckvreader_data[63], \kimreader_ckvreader_data.tdata [63]);
tran (kimreader_ckvreader_data[62], \kimreader_ckvreader_data.tdata [62]);
tran (kimreader_ckvreader_data[61], \kimreader_ckvreader_data.tdata [61]);
tran (kimreader_ckvreader_data[60], \kimreader_ckvreader_data.tdata [60]);
tran (kimreader_ckvreader_data[59], \kimreader_ckvreader_data.tdata [59]);
tran (kimreader_ckvreader_data[58], \kimreader_ckvreader_data.tdata [58]);
tran (kimreader_ckvreader_data[57], \kimreader_ckvreader_data.tdata [57]);
tran (kimreader_ckvreader_data[56], \kimreader_ckvreader_data.tdata [56]);
tran (kimreader_ckvreader_data[55], \kimreader_ckvreader_data.tdata [55]);
tran (kimreader_ckvreader_data[54], \kimreader_ckvreader_data.tdata [54]);
tran (kimreader_ckvreader_data[53], \kimreader_ckvreader_data.tdata [53]);
tran (kimreader_ckvreader_data[52], \kimreader_ckvreader_data.tdata [52]);
tran (kimreader_ckvreader_data[51], \kimreader_ckvreader_data.tdata [51]);
tran (kimreader_ckvreader_data[50], \kimreader_ckvreader_data.tdata [50]);
tran (kimreader_ckvreader_data[49], \kimreader_ckvreader_data.tdata [49]);
tran (kimreader_ckvreader_data[48], \kimreader_ckvreader_data.tdata [48]);
tran (kimreader_ckvreader_data[47], \kimreader_ckvreader_data.tdata [47]);
tran (kimreader_ckvreader_data[46], \kimreader_ckvreader_data.tdata [46]);
tran (kimreader_ckvreader_data[45], \kimreader_ckvreader_data.tdata [45]);
tran (kimreader_ckvreader_data[44], \kimreader_ckvreader_data.tdata [44]);
tran (kimreader_ckvreader_data[43], \kimreader_ckvreader_data.tdata [43]);
tran (kimreader_ckvreader_data[42], \kimreader_ckvreader_data.tdata [42]);
tran (kimreader_ckvreader_data[41], \kimreader_ckvreader_data.tdata [41]);
tran (kimreader_ckvreader_data[40], \kimreader_ckvreader_data.tdata [40]);
tran (kimreader_ckvreader_data[39], \kimreader_ckvreader_data.tdata [39]);
tran (kimreader_ckvreader_data[38], \kimreader_ckvreader_data.tdata [38]);
tran (kimreader_ckvreader_data[37], \kimreader_ckvreader_data.tdata [37]);
tran (kimreader_ckvreader_data[36], \kimreader_ckvreader_data.tdata [36]);
tran (kimreader_ckvreader_data[35], \kimreader_ckvreader_data.tdata [35]);
tran (kimreader_ckvreader_data[34], \kimreader_ckvreader_data.tdata [34]);
tran (kimreader_ckvreader_data[33], \kimreader_ckvreader_data.tdata [33]);
tran (kimreader_ckvreader_data[32], \kimreader_ckvreader_data.tdata [32]);
tran (kimreader_ckvreader_data[31], \kimreader_ckvreader_data.tdata [31]);
tran (kimreader_ckvreader_data[30], \kimreader_ckvreader_data.tdata [30]);
tran (kimreader_ckvreader_data[29], \kimreader_ckvreader_data.tdata [29]);
tran (kimreader_ckvreader_data[28], \kimreader_ckvreader_data.tdata [28]);
tran (kimreader_ckvreader_data[27], \kimreader_ckvreader_data.tdata [27]);
tran (kimreader_ckvreader_data[26], \kimreader_ckvreader_data.tdata [26]);
tran (kimreader_ckvreader_data[25], \kimreader_ckvreader_data.tdata [25]);
tran (kimreader_ckvreader_data[24], \kimreader_ckvreader_data.tdata [24]);
tran (kimreader_ckvreader_data[23], \kimreader_ckvreader_data.tdata [23]);
tran (kimreader_ckvreader_data[22], \kimreader_ckvreader_data.tdata [22]);
tran (kimreader_ckvreader_data[21], \kimreader_ckvreader_data.tdata [21]);
tran (kimreader_ckvreader_data[20], \kimreader_ckvreader_data.tdata [20]);
tran (kimreader_ckvreader_data[19], \kimreader_ckvreader_data.tdata [19]);
tran (kimreader_ckvreader_data[18], \kimreader_ckvreader_data.tdata [18]);
tran (kimreader_ckvreader_data[17], \kimreader_ckvreader_data.tdata [17]);
tran (kimreader_ckvreader_data[16], \kimreader_ckvreader_data.tdata [16]);
tran (kimreader_ckvreader_data[15], \kimreader_ckvreader_data.tdata [15]);
tran (kimreader_ckvreader_data[14], \kimreader_ckvreader_data.tdata [14]);
tran (kimreader_ckvreader_data[13], \kimreader_ckvreader_data.tdata [13]);
tran (kimreader_ckvreader_data[12], \kimreader_ckvreader_data.tdata [12]);
tran (kimreader_ckvreader_data[11], \kimreader_ckvreader_data.tdata [11]);
tran (kimreader_ckvreader_data[10], \kimreader_ckvreader_data.tdata [10]);
tran (kimreader_ckvreader_data[9], \kimreader_ckvreader_data.tdata [9]);
tran (kimreader_ckvreader_data[8], \kimreader_ckvreader_data.tdata [8]);
tran (kimreader_ckvreader_data[7], \kimreader_ckvreader_data.tdata [7]);
tran (kimreader_ckvreader_data[6], \kimreader_ckvreader_data.tdata [6]);
tran (kimreader_ckvreader_data[5], \kimreader_ckvreader_data.tdata [5]);
tran (kimreader_ckvreader_data[4], \kimreader_ckvreader_data.tdata [4]);
tran (kimreader_ckvreader_data[3], \kimreader_ckvreader_data.tdata [3]);
tran (kimreader_ckvreader_data[2], \kimreader_ckvreader_data.tdata [2]);
tran (kimreader_ckvreader_data[1], \kimreader_ckvreader_data.tdata [1]);
tran (kimreader_ckvreader_data[0], \kimreader_ckvreader_data.tdata [0]);
tran (ckvreader_kopassigner_data[70], \ckvreader_kopassigner_data.sot [0]);
tran (ckvreader_kopassigner_data[69], \ckvreader_kopassigner_data.eoi [0]);
tran (ckvreader_kopassigner_data[68], \ckvreader_kopassigner_data.eot [0]);
tran (ckvreader_kopassigner_data[67], \ckvreader_kopassigner_data.id [3]);
tran (ckvreader_kopassigner_data[66], \ckvreader_kopassigner_data.id [2]);
tran (ckvreader_kopassigner_data[65], \ckvreader_kopassigner_data.id [1]);
tran (ckvreader_kopassigner_data[64], \ckvreader_kopassigner_data.id [0]);
tran (ckvreader_kopassigner_data[63], \ckvreader_kopassigner_data.tdata [63]);
tran (ckvreader_kopassigner_data[62], \ckvreader_kopassigner_data.tdata [62]);
tran (ckvreader_kopassigner_data[61], \ckvreader_kopassigner_data.tdata [61]);
tran (ckvreader_kopassigner_data[60], \ckvreader_kopassigner_data.tdata [60]);
tran (ckvreader_kopassigner_data[59], \ckvreader_kopassigner_data.tdata [59]);
tran (ckvreader_kopassigner_data[58], \ckvreader_kopassigner_data.tdata [58]);
tran (ckvreader_kopassigner_data[57], \ckvreader_kopassigner_data.tdata [57]);
tran (ckvreader_kopassigner_data[56], \ckvreader_kopassigner_data.tdata [56]);
tran (ckvreader_kopassigner_data[55], \ckvreader_kopassigner_data.tdata [55]);
tran (ckvreader_kopassigner_data[54], \ckvreader_kopassigner_data.tdata [54]);
tran (ckvreader_kopassigner_data[53], \ckvreader_kopassigner_data.tdata [53]);
tran (ckvreader_kopassigner_data[52], \ckvreader_kopassigner_data.tdata [52]);
tran (ckvreader_kopassigner_data[51], \ckvreader_kopassigner_data.tdata [51]);
tran (ckvreader_kopassigner_data[50], \ckvreader_kopassigner_data.tdata [50]);
tran (ckvreader_kopassigner_data[49], \ckvreader_kopassigner_data.tdata [49]);
tran (ckvreader_kopassigner_data[48], \ckvreader_kopassigner_data.tdata [48]);
tran (ckvreader_kopassigner_data[47], \ckvreader_kopassigner_data.tdata [47]);
tran (ckvreader_kopassigner_data[46], \ckvreader_kopassigner_data.tdata [46]);
tran (ckvreader_kopassigner_data[45], \ckvreader_kopassigner_data.tdata [45]);
tran (ckvreader_kopassigner_data[44], \ckvreader_kopassigner_data.tdata [44]);
tran (ckvreader_kopassigner_data[43], \ckvreader_kopassigner_data.tdata [43]);
tran (ckvreader_kopassigner_data[42], \ckvreader_kopassigner_data.tdata [42]);
tran (ckvreader_kopassigner_data[41], \ckvreader_kopassigner_data.tdata [41]);
tran (ckvreader_kopassigner_data[40], \ckvreader_kopassigner_data.tdata [40]);
tran (ckvreader_kopassigner_data[39], \ckvreader_kopassigner_data.tdata [39]);
tran (ckvreader_kopassigner_data[38], \ckvreader_kopassigner_data.tdata [38]);
tran (ckvreader_kopassigner_data[37], \ckvreader_kopassigner_data.tdata [37]);
tran (ckvreader_kopassigner_data[36], \ckvreader_kopassigner_data.tdata [36]);
tran (ckvreader_kopassigner_data[35], \ckvreader_kopassigner_data.tdata [35]);
tran (ckvreader_kopassigner_data[34], \ckvreader_kopassigner_data.tdata [34]);
tran (ckvreader_kopassigner_data[33], \ckvreader_kopassigner_data.tdata [33]);
tran (ckvreader_kopassigner_data[32], \ckvreader_kopassigner_data.tdata [32]);
tran (ckvreader_kopassigner_data[31], \ckvreader_kopassigner_data.tdata [31]);
tran (ckvreader_kopassigner_data[30], \ckvreader_kopassigner_data.tdata [30]);
tran (ckvreader_kopassigner_data[29], \ckvreader_kopassigner_data.tdata [29]);
tran (ckvreader_kopassigner_data[28], \ckvreader_kopassigner_data.tdata [28]);
tran (ckvreader_kopassigner_data[27], \ckvreader_kopassigner_data.tdata [27]);
tran (ckvreader_kopassigner_data[26], \ckvreader_kopassigner_data.tdata [26]);
tran (ckvreader_kopassigner_data[25], \ckvreader_kopassigner_data.tdata [25]);
tran (ckvreader_kopassigner_data[24], \ckvreader_kopassigner_data.tdata [24]);
tran (ckvreader_kopassigner_data[23], \ckvreader_kopassigner_data.tdata [23]);
tran (ckvreader_kopassigner_data[22], \ckvreader_kopassigner_data.tdata [22]);
tran (ckvreader_kopassigner_data[21], \ckvreader_kopassigner_data.tdata [21]);
tran (ckvreader_kopassigner_data[20], \ckvreader_kopassigner_data.tdata [20]);
tran (ckvreader_kopassigner_data[19], \ckvreader_kopassigner_data.tdata [19]);
tran (ckvreader_kopassigner_data[18], \ckvreader_kopassigner_data.tdata [18]);
tran (ckvreader_kopassigner_data[17], \ckvreader_kopassigner_data.tdata [17]);
tran (ckvreader_kopassigner_data[16], \ckvreader_kopassigner_data.tdata [16]);
tran (ckvreader_kopassigner_data[15], \ckvreader_kopassigner_data.tdata [15]);
tran (ckvreader_kopassigner_data[14], \ckvreader_kopassigner_data.tdata [14]);
tran (ckvreader_kopassigner_data[13], \ckvreader_kopassigner_data.tdata [13]);
tran (ckvreader_kopassigner_data[12], \ckvreader_kopassigner_data.tdata [12]);
tran (ckvreader_kopassigner_data[11], \ckvreader_kopassigner_data.tdata [11]);
tran (ckvreader_kopassigner_data[10], \ckvreader_kopassigner_data.tdata [10]);
tran (ckvreader_kopassigner_data[9], \ckvreader_kopassigner_data.tdata [9]);
tran (ckvreader_kopassigner_data[8], \ckvreader_kopassigner_data.tdata [8]);
tran (ckvreader_kopassigner_data[7], \ckvreader_kopassigner_data.tdata [7]);
tran (ckvreader_kopassigner_data[6], \ckvreader_kopassigner_data.tdata [6]);
tran (ckvreader_kopassigner_data[5], \ckvreader_kopassigner_data.tdata [5]);
tran (ckvreader_kopassigner_data[4], \ckvreader_kopassigner_data.tdata [4]);
tran (ckvreader_kopassigner_data[3], \ckvreader_kopassigner_data.tdata [3]);
tran (ckvreader_kopassigner_data[2], \ckvreader_kopassigner_data.tdata [2]);
tran (ckvreader_kopassigner_data[1], \ckvreader_kopassigner_data.tdata [1]);
tran (ckvreader_kopassigner_data[0], \ckvreader_kopassigner_data.tdata [0]);
ixc_assign_71 _zz_strnp_0 ( _zy_simnet_cceip_encrypt_in_0_w$[0:70], 
	cceip_encrypt_in[70:0]);
ixc_assign_71 _zz_strnp_1 ( _zy_simnet_cceip_validate_in_1_w$[0:70], 
	cceip_validate_in[70:0]);
ixc_assign_71 _zz_strnp_2 ( _zy_simnet_cddip_decrypt_in_2_w$[0:70], 
	cddip_decrypt_in[70:0]);
ixc_assign_83 _zz_strnp_3 ( stitcher_out[82:0], 
	_zy_simnet_stitcher_out_3_w$[0:82]);
ixc_assign_71 _zz_strnp_4 ( parser_kimreader_data[70:0], 
	_zy_simnet_parser_kimreader_data_4_w$[0:70]);
ixc_assign_83 _zz_strnp_5 ( _zy_simnet_stitcher_out_5_w$[0:82], 
	stitcher_out[82:0]);
ixc_assign_71 _zz_strnp_6 ( kimreader_ckvreader_data[70:0], 
	_zy_simnet_kimreader_ckvreader_data_6_w$[0:70]);
ixc_assign_71 _zz_strnp_7 ( _zy_simnet_parser_kimreader_data_7_w$[0:70], 
	parser_kimreader_data[70:0]);
ixc_assign_71 _zz_strnp_8 ( ckvreader_kopassigner_data[70:0], 
	_zy_simnet_ckvreader_kopassigner_data_8_w$[0:70]);
ixc_assign_71 _zz_strnp_9 ( _zy_simnet_kimreader_ckvreader_data_9_w$[0:70], 
	kimreader_ckvreader_data[70:0]);
ixc_assign_71 _zz_strnp_10 ( cceip_encrypt_in[70:0], 
	_zy_simnet_cceip_encrypt_in_10_w$[0:70]);
ixc_assign_71 _zz_strnp_11 ( cceip_validate_in[70:0], 
	_zy_simnet_cceip_validate_in_11_w$[0:70]);
ixc_assign_71 _zz_strnp_12 ( cddip_decrypt_in[70:0], 
	_zy_simnet_cddip_decrypt_in_12_w$[0:70]);
ixc_assign_71 _zz_strnp_13 ( _zy_simnet_ckvreader_kopassigner_data_13_w$[0:70], 
	ckvreader_kopassigner_data[70:0]);
cr_kme_guid_stitcher guid_stitcher ( .kme_slv_rd( kme_slv_rd), 
	.stitcher_out( _zy_simnet_stitcher_out_3_w$[0:82]), .stitcher_empty( 
	stitcher_empty), .set_tlv_bip2_error_int( set_tlv_bip2_error_int), 
	.clk( clk), .rst_n( rst_n), .kme_slv_out( kme_slv_out[82:0]), 
	.kme_slv_aempty( kme_slv_aempty), .kme_slv_empty( kme_slv_empty), 
	.stitcher_rd( stitcher_rd));
cr_kme_tlv_parser tlv_parser ( .stitcher_rd( stitcher_rd), 
	.parser_kimreader_valid( parser_kimreader_valid), 
	.parser_kimreader_data( _zy_simnet_parser_kimreader_data_4_w$[0:70]), 
	.tlv_parser_idle( tlv_parser_idle), 
	.tlv_parser_int_tlv_start_pulse( tlv_parser_int_tlv_start_pulse), 
	.clk( clk), .rst_n( rst_n), .disable_debug_cmd_q( 
	disable_debug_cmd_q), .always_validate_kim_ref( 
	always_validate_kim_ref), .stitcher_out( 
	_zy_simnet_stitcher_out_5_w$[0:82]), .stitcher_empty( stitcher_empty), 
	.kimreader_parser_ack( kimreader_parser_ack));
cr_kme_kim_drng_reader kim_drng_reader ( .kimreader_parser_ack( 
	kimreader_parser_ack), .kimreader_ckvreader_valid( 
	kimreader_ckvreader_valid), .kimreader_ckvreader_data( 
	_zy_simnet_kimreader_ckvreader_data_6_w$[0:70]), .drng_ack( drng_ack), 
	.kim_rd( kim_rd), .kim_addr( kim_addr[13:0]), 
	.stat_req_with_expired_seed( stat_req_with_expired_seed), 
	.stat_aux_key_type_0( stat_aux_key_type_0), .stat_aux_key_type_1( 
	stat_aux_key_type_1), .stat_aux_key_type_2( stat_aux_key_type_2), 
	.stat_aux_key_type_3( stat_aux_key_type_3), .stat_aux_key_type_4( 
	stat_aux_key_type_4), .stat_aux_key_type_5( stat_aux_key_type_5), 
	.stat_aux_key_type_6( stat_aux_key_type_6), .stat_aux_key_type_7( 
	stat_aux_key_type_7), .stat_aux_key_type_8( stat_aux_key_type_8), 
	.stat_aux_key_type_9( stat_aux_key_type_9), .stat_aux_key_type_10( 
	stat_aux_key_type_10), .stat_aux_key_type_11( stat_aux_key_type_11), 
	.stat_aux_key_type_12( stat_aux_key_type_12), 
	.stat_aux_key_type_13( stat_aux_key_type_13), 
	.stat_aux_cmd_with_vf_pf_fail( stat_aux_cmd_with_vf_pf_fail), .clk( 
	clk), .rst_n( rst_n), .parser_kimreader_valid( 
	parser_kimreader_valid), .parser_kimreader_data( 
	_zy_simnet_parser_kimreader_data_7_w$[0:70]), .ckvreader_kimreader_ack( 
	ckvreader_kimreader_ack), .drng_seed_expired( drng_seed_expired), 
	.drng_health_fail( drng_health_fail), .drng_256_out( 
	drng_256_out[127:0]), .drng_valid( drng_valid), .kim_dout( 
	kim_dout[37:0]), .kim_mbe( kim_mbe), .disable_unencrypted_keys( 
	disable_unencrypted_keys));
cr_kme_ckv_reader ckv_reader ( .ckvreader_kimreader_ack( 
	ckvreader_kimreader_ack), .ckvreader_kopassigner_valid( 
	ckvreader_kopassigner_valid), .ckvreader_kopassigner_data( 
	_zy_simnet_ckvreader_kopassigner_data_8_w$[0:70]), .ckv_rd( ckv_rd), 
	.ckv_addr( ckv_addr[14:0]), .clk( clk), .rst_n( rst_n), 
	.kimreader_ckvreader_valid( kimreader_ckvreader_valid), 
	.kimreader_ckvreader_data( 
	_zy_simnet_kimreader_ckvreader_data_9_w$[0:70]), 
	.kopassigner_ckvreader_ack( kopassigner_ckvreader_ack), .ckv_dout( 
	ckv_dout[63:0]), .ckv_mbe( ckv_mbe));
cr_kme_kop_assigner kop_assigner ( .kopassigner_ckvreader_ack( 
	kopassigner_ckvreader_ack), .cceip_encrypt_in( 
	_zy_simnet_cceip_encrypt_in_10_w$[0:70]), .cceip_encrypt_in_valid( 
	cceip_encrypt_in_valid), .cceip_validate_in( 
	_zy_simnet_cceip_validate_in_11_w$[0:70]), .cceip_validate_in_valid( 
	cceip_validate_in_valid), .cddip_decrypt_in( 
	_zy_simnet_cddip_decrypt_in_12_w$[0:70]), .cddip_decrypt_in_valid( 
	cddip_decrypt_in_valid), .clk( clk), .rst_n( rst_n), 
	.ckvreader_kopassigner_valid( ckvreader_kopassigner_valid), 
	.ckvreader_kopassigner_data( 
	_zy_simnet_ckvreader_kopassigner_data_13_w$[0:70]), 
	.cceip_encrypt_in_stall( cceip_encrypt_in_stall), 
	.cceip_validate_in_stall( cceip_validate_in_stall), 
	.cddip_decrypt_in_stall( cddip_decrypt_in_stall));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\cceip_encrypt_in.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\cceip_encrypt_in.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\cceip_encrypt_in.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\cceip_encrypt_in.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\cceip_encrypt_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\cceip_validate_in.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\cceip_validate_in.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\cceip_validate_in.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\cceip_validate_in.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\cceip_validate_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\cddip_decrypt_in.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m12 "\cddip_decrypt_in.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m13 "\cddip_decrypt_in.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m14 "\cddip_decrypt_in.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m15 "\cddip_decrypt_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m16 "\kme_slv_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m17 "\kme_slv_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m18 "\kme_slv_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m19 "\kme_slv_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m20 "\kim_dout.valid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m21 "\kim_dout.label_index  (1,0) 1 2 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m22 "\kim_dout.ckv_length  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m23 "\kim_dout.ckv_pointer  (1,0) 1 14 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m24 "\kim_dout.pf_num  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m25 "\kim_dout.vf_num  (1,0) 1 11 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m26 "\kim_dout.vf_valid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m27 "\ckvreader_kopassigner_data.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m28 "\ckvreader_kopassigner_data.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m29 "\ckvreader_kopassigner_data.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m30 "\ckvreader_kopassigner_data.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m31 "\ckvreader_kopassigner_data.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m32 "\kimreader_ckvreader_data.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m33 "\kimreader_ckvreader_data.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m34 "\kimreader_ckvreader_data.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m35 "\kimreader_ckvreader_data.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m36 "\kimreader_ckvreader_data.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m37 "\parser_kimreader_data.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m38 "\parser_kimreader_data.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m39 "\parser_kimreader_data.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m40 "\parser_kimreader_data.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m41 "\parser_kimreader_data.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m42 "\stitcher_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m43 "\stitcher_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m44 "\stitcher_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m45 "\stitcher_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "45"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "cceip_encrypt_in 5 \cceip_encrypt_in.sot  \cceip_encrypt_in.eoi  \cceip_encrypt_in.eot  \cceip_encrypt_in.id  \cceip_encrypt_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "cceip_validate_in 5 \cceip_validate_in.sot  \cceip_validate_in.eoi  \cceip_validate_in.eot  \cceip_validate_in.id  \cceip_validate_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "cddip_decrypt_in 5 \cddip_decrypt_in.sot  \cddip_decrypt_in.eoi  \cddip_decrypt_in.eot  \cddip_decrypt_in.id  \cddip_decrypt_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "kme_slv_out 6 \kme_slv_out.tvalid  \kme_slv_out.tlast  \kme_slv_out.tid  \kme_slv_out.tstrb  \kme_slv_out.tuser  \kme_slv_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "kim_dout 7 \kim_dout.valid  \kim_dout.label_index  \kim_dout.ckv_length  \kim_dout.ckv_pointer  \kim_dout.pf_num  \kim_dout.vf_num  \kim_dout.vf_valid "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r6 "ckvreader_kopassigner_data 5 \ckvreader_kopassigner_data.sot  \ckvreader_kopassigner_data.eoi  \ckvreader_kopassigner_data.eot  \ckvreader_kopassigner_data.id  \ckvreader_kopassigner_data.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r7 "kimreader_ckvreader_data 5 \kimreader_ckvreader_data.sot  \kimreader_ckvreader_data.eoi  \kimreader_ckvreader_data.eot  \kimreader_ckvreader_data.id  \kimreader_ckvreader_data.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r8 "parser_kimreader_data 5 \parser_kimreader_data.sot  \parser_kimreader_data.eoi  \parser_kimreader_data.eot  \parser_kimreader_data.id  \parser_kimreader_data.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r9 "stitcher_out 6 \stitcher_out.tvalid  \stitcher_out.tlast  \stitcher_out.tid  \stitcher_out.tstrb  \stitcher_out.tuser  \stitcher_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "9"
endmodule
