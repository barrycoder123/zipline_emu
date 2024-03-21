
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_kop_assigner ( kopassigner_ckvreader_ack, .cceip_encrypt_in( {
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
	\cddip_decrypt_in.tdata [0]} ), cddip_decrypt_in_valid, clk, rst_n, 
	ckvreader_kopassigner_valid, .ckvreader_kopassigner_data( {
	\ckvreader_kopassigner_data.sot [0], 
	\ckvreader_kopassigner_data.eoi [0], 
	\ckvreader_kopassigner_data.eot [0], 
	\ckvreader_kopassigner_data.id [3], 
	\ckvreader_kopassigner_data.id [2], 
	\ckvreader_kopassigner_data.id [1], 
	\ckvreader_kopassigner_data.id [0], 
	\ckvreader_kopassigner_data.tdata [63], 
	\ckvreader_kopassigner_data.tdata [62], 
	\ckvreader_kopassigner_data.tdata [61], 
	\ckvreader_kopassigner_data.tdata [60], 
	\ckvreader_kopassigner_data.tdata [59], 
	\ckvreader_kopassigner_data.tdata [58], 
	\ckvreader_kopassigner_data.tdata [57], 
	\ckvreader_kopassigner_data.tdata [56], 
	\ckvreader_kopassigner_data.tdata [55], 
	\ckvreader_kopassigner_data.tdata [54], 
	\ckvreader_kopassigner_data.tdata [53], 
	\ckvreader_kopassigner_data.tdata [52], 
	\ckvreader_kopassigner_data.tdata [51], 
	\ckvreader_kopassigner_data.tdata [50], 
	\ckvreader_kopassigner_data.tdata [49], 
	\ckvreader_kopassigner_data.tdata [48], 
	\ckvreader_kopassigner_data.tdata [47], 
	\ckvreader_kopassigner_data.tdata [46], 
	\ckvreader_kopassigner_data.tdata [45], 
	\ckvreader_kopassigner_data.tdata [44], 
	\ckvreader_kopassigner_data.tdata [43], 
	\ckvreader_kopassigner_data.tdata [42], 
	\ckvreader_kopassigner_data.tdata [41], 
	\ckvreader_kopassigner_data.tdata [40], 
	\ckvreader_kopassigner_data.tdata [39], 
	\ckvreader_kopassigner_data.tdata [38], 
	\ckvreader_kopassigner_data.tdata [37], 
	\ckvreader_kopassigner_data.tdata [36], 
	\ckvreader_kopassigner_data.tdata [35], 
	\ckvreader_kopassigner_data.tdata [34], 
	\ckvreader_kopassigner_data.tdata [33], 
	\ckvreader_kopassigner_data.tdata [32], 
	\ckvreader_kopassigner_data.tdata [31], 
	\ckvreader_kopassigner_data.tdata [30], 
	\ckvreader_kopassigner_data.tdata [29], 
	\ckvreader_kopassigner_data.tdata [28], 
	\ckvreader_kopassigner_data.tdata [27], 
	\ckvreader_kopassigner_data.tdata [26], 
	\ckvreader_kopassigner_data.tdata [25], 
	\ckvreader_kopassigner_data.tdata [24], 
	\ckvreader_kopassigner_data.tdata [23], 
	\ckvreader_kopassigner_data.tdata [22], 
	\ckvreader_kopassigner_data.tdata [21], 
	\ckvreader_kopassigner_data.tdata [20], 
	\ckvreader_kopassigner_data.tdata [19], 
	\ckvreader_kopassigner_data.tdata [18], 
	\ckvreader_kopassigner_data.tdata [17], 
	\ckvreader_kopassigner_data.tdata [16], 
	\ckvreader_kopassigner_data.tdata [15], 
	\ckvreader_kopassigner_data.tdata [14], 
	\ckvreader_kopassigner_data.tdata [13], 
	\ckvreader_kopassigner_data.tdata [12], 
	\ckvreader_kopassigner_data.tdata [11], 
	\ckvreader_kopassigner_data.tdata [10], 
	\ckvreader_kopassigner_data.tdata [9], 
	\ckvreader_kopassigner_data.tdata [8], 
	\ckvreader_kopassigner_data.tdata [7], 
	\ckvreader_kopassigner_data.tdata [6], 
	\ckvreader_kopassigner_data.tdata [5], 
	\ckvreader_kopassigner_data.tdata [4], 
	\ckvreader_kopassigner_data.tdata [3], 
	\ckvreader_kopassigner_data.tdata [2], 
	\ckvreader_kopassigner_data.tdata [1], 
	\ckvreader_kopassigner_data.tdata [0]} ), cceip_encrypt_in_stall, 
	cceip_validate_in_stall, cddip_decrypt_in_stall);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output kopassigner_ckvreader_ack;
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
input clk;
input rst_n;
input ckvreader_kopassigner_valid;
input [0:0] \ckvreader_kopassigner_data.sot ;
input [0:0] \ckvreader_kopassigner_data.eoi ;
input [0:0] \ckvreader_kopassigner_data.eot ;
input [3:0] \ckvreader_kopassigner_data.id ;
input [63:0] \ckvreader_kopassigner_data.tdata ;
wire [70:0] ckvreader_kopassigner_data;
input cceip_encrypt_in_stall;
input cceip_validate_in_stall;
input cddip_decrypt_in_stall;
wire _zy_simnet_kopassigner_ckvreader_ack_0_w$;
wire [0:70] _zy_simnet_cceip_encrypt_in_1_w$;
wire _zy_simnet_cceip_encrypt_in_valid_2_w$;
wire [0:70] _zy_simnet_cceip_validate_in_3_w$;
wire _zy_simnet_cceip_validate_in_valid_4_w$;
wire [0:70] _zy_simnet_cddip_decrypt_in_5_w$;
wire _zy_simnet_cddip_decrypt_in_valid_6_w$;
wire [1:0] cur_state;
wire [1:0] nxt_state;
wire [63:0] tlv_word0;
supply0 n1;
supply0 n2;
supply0 n3;
supply0 n4;
supply0 n5;
supply0 n6;
supply0 n7;
supply0 n8;
supply0 n9;
supply0 n10;
supply0 n11;
supply0 n12;
supply0 n13;
supply0 n14;
supply0 n15;
supply0 n16;
supply0 n17;
supply0 n18;
supply0 n19;
supply0 n20;
supply0 n21;
supply0 n22;
supply0 n23;
supply0 n24;
supply0 n25;
supply0 n26;
supply0 n27;
supply0 n28;
supply0 n29;
supply0 n30;
supply0 n31;
supply0 n32;
supply0 n33;
supply0 n34;
supply0 n35;
supply0 n36;
supply0 n37;
supply0 n38;
supply0 n39;
supply0 n40;
supply0 n41;
supply0 n42;
supply0 n43;
supply0 n44;
supply0 n45;
supply0 n46;
supply0 n47;
supply0 n48;
supply0 n49;
supply0 n50;
supply0 n51;
supply0 n52;
supply0 n53;
supply0 n54;
supply0 n55;
supply0 n56;
supply0 n57;
supply0 n58;
supply0 n59;
supply0 n60;
supply0 n61;
supply0 n62;
supply0 n63;
supply0 n64;
supply0 n65;
supply0 n66;
supply0 n67;
supply0 n68;
supply0 n69;
supply0 n70;
supply0 n71;
supply0 n72;
wire [1:0] \tlv_word0.tlv_bip2 ;
wire [12:0] \tlv_word0.resv0 ;
wire [0:0] \tlv_word0.kdf_dek_iter ;
wire [0:0] \tlv_word0.keyless_algos ;
wire [0:0] \tlv_word0.needs_dek ;
wire [0:0] \tlv_word0.needs_dak ;
wire [5:0] \tlv_word0.key_type ;
wire [10:0] \tlv_word0.tlv_frame_num ;
wire [3:0] \tlv_word0.tlv_eng_id ;
wire [7:0] \tlv_word0.tlv_seq_num ;
wire [7:0] \tlv_word0.tlv_len ;
wire [7:0] \tlv_word0.tlv_type ;
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
tran (tlv_word0[0], \tlv_word0.tlv_type [0]);
tran (tlv_word0[1], \tlv_word0.tlv_type [1]);
tran (tlv_word0[2], \tlv_word0.tlv_type [2]);
tran (tlv_word0[3], \tlv_word0.tlv_type [3]);
tran (tlv_word0[4], \tlv_word0.tlv_type [4]);
tran (tlv_word0[5], \tlv_word0.tlv_type [5]);
tran (tlv_word0[6], \tlv_word0.tlv_type [6]);
tran (tlv_word0[7], \tlv_word0.tlv_type [7]);
tran (tlv_word0[8], \tlv_word0.tlv_len [0]);
tran (tlv_word0[9], \tlv_word0.tlv_len [1]);
tran (tlv_word0[10], \tlv_word0.tlv_len [2]);
tran (tlv_word0[11], \tlv_word0.tlv_len [3]);
tran (tlv_word0[12], \tlv_word0.tlv_len [4]);
tran (tlv_word0[13], \tlv_word0.tlv_len [5]);
tran (tlv_word0[14], \tlv_word0.tlv_len [6]);
tran (tlv_word0[15], \tlv_word0.tlv_len [7]);
tran (tlv_word0[16], \tlv_word0.tlv_seq_num [0]);
tran (tlv_word0[17], \tlv_word0.tlv_seq_num [1]);
tran (tlv_word0[18], \tlv_word0.tlv_seq_num [2]);
tran (tlv_word0[19], \tlv_word0.tlv_seq_num [3]);
tran (tlv_word0[20], \tlv_word0.tlv_seq_num [4]);
tran (tlv_word0[21], \tlv_word0.tlv_seq_num [5]);
tran (tlv_word0[22], \tlv_word0.tlv_seq_num [6]);
tran (tlv_word0[23], \tlv_word0.tlv_seq_num [7]);
tran (tlv_word0[24], \tlv_word0.tlv_eng_id [0]);
tran (tlv_word0[25], \tlv_word0.tlv_eng_id [1]);
tran (tlv_word0[26], \tlv_word0.tlv_eng_id [2]);
tran (tlv_word0[27], \tlv_word0.tlv_eng_id [3]);
tran (tlv_word0[28], \tlv_word0.tlv_frame_num [0]);
tran (tlv_word0[29], \tlv_word0.tlv_frame_num [1]);
tran (tlv_word0[30], \tlv_word0.tlv_frame_num [2]);
tran (tlv_word0[31], \tlv_word0.tlv_frame_num [3]);
tran (tlv_word0[32], \tlv_word0.tlv_frame_num [4]);
tran (tlv_word0[33], \tlv_word0.tlv_frame_num [5]);
tran (tlv_word0[34], \tlv_word0.tlv_frame_num [6]);
tran (tlv_word0[35], \tlv_word0.tlv_frame_num [7]);
tran (tlv_word0[36], \tlv_word0.tlv_frame_num [8]);
tran (tlv_word0[37], \tlv_word0.tlv_frame_num [9]);
tran (tlv_word0[38], \tlv_word0.tlv_frame_num [10]);
tran (tlv_word0[39], \tlv_word0.key_type [0]);
tran (tlv_word0[40], \tlv_word0.key_type [1]);
tran (tlv_word0[41], \tlv_word0.key_type [2]);
tran (tlv_word0[42], \tlv_word0.key_type [3]);
tran (tlv_word0[43], \tlv_word0.key_type [4]);
tran (tlv_word0[44], \tlv_word0.key_type [5]);
tran (tlv_word0[45], \tlv_word0.needs_dak [0]);
tran (tlv_word0[46], \tlv_word0.needs_dek [0]);
tran (tlv_word0[47], \tlv_word0.keyless_algos [0]);
tran (tlv_word0[48], \tlv_word0.kdf_dek_iter [0]);
tran (tlv_word0[49], \tlv_word0.resv0 [0]);
tran (tlv_word0[50], \tlv_word0.resv0 [1]);
tran (tlv_word0[51], \tlv_word0.resv0 [2]);
tran (tlv_word0[52], \tlv_word0.resv0 [3]);
tran (tlv_word0[53], \tlv_word0.resv0 [4]);
tran (tlv_word0[54], \tlv_word0.resv0 [5]);
tran (tlv_word0[55], \tlv_word0.resv0 [6]);
tran (tlv_word0[56], \tlv_word0.resv0 [7]);
tran (tlv_word0[57], \tlv_word0.resv0 [8]);
tran (tlv_word0[58], \tlv_word0.resv0 [9]);
tran (tlv_word0[59], \tlv_word0.resv0 [10]);
tran (tlv_word0[60], \tlv_word0.resv0 [11]);
tran (tlv_word0[61], \tlv_word0.resv0 [12]);
tran (tlv_word0[62], \tlv_word0.tlv_bip2 [0]);
tran (tlv_word0[63], \tlv_word0.tlv_bip2 [1]);
Q_ASSIGN U0 ( .B(ckvreader_kopassigner_data[0]), .A(tlv_word0[0]));
Q_ASSIGN U1 ( .B(ckvreader_kopassigner_data[1]), .A(tlv_word0[1]));
Q_ASSIGN U2 ( .B(ckvreader_kopassigner_data[2]), .A(tlv_word0[2]));
Q_ASSIGN U3 ( .B(ckvreader_kopassigner_data[3]), .A(tlv_word0[3]));
Q_ASSIGN U4 ( .B(ckvreader_kopassigner_data[4]), .A(tlv_word0[4]));
Q_ASSIGN U5 ( .B(ckvreader_kopassigner_data[5]), .A(tlv_word0[5]));
Q_ASSIGN U6 ( .B(ckvreader_kopassigner_data[6]), .A(tlv_word0[6]));
Q_ASSIGN U7 ( .B(ckvreader_kopassigner_data[7]), .A(tlv_word0[7]));
Q_ASSIGN U8 ( .B(ckvreader_kopassigner_data[8]), .A(tlv_word0[8]));
Q_ASSIGN U9 ( .B(ckvreader_kopassigner_data[9]), .A(tlv_word0[9]));
Q_ASSIGN U10 ( .B(ckvreader_kopassigner_data[10]), .A(tlv_word0[10]));
Q_ASSIGN U11 ( .B(ckvreader_kopassigner_data[11]), .A(tlv_word0[11]));
Q_ASSIGN U12 ( .B(ckvreader_kopassigner_data[12]), .A(tlv_word0[12]));
Q_ASSIGN U13 ( .B(ckvreader_kopassigner_data[13]), .A(tlv_word0[13]));
Q_ASSIGN U14 ( .B(ckvreader_kopassigner_data[14]), .A(tlv_word0[14]));
Q_ASSIGN U15 ( .B(ckvreader_kopassigner_data[15]), .A(tlv_word0[15]));
Q_ASSIGN U16 ( .B(ckvreader_kopassigner_data[16]), .A(tlv_word0[16]));
Q_ASSIGN U17 ( .B(ckvreader_kopassigner_data[17]), .A(tlv_word0[17]));
Q_ASSIGN U18 ( .B(ckvreader_kopassigner_data[18]), .A(tlv_word0[18]));
Q_ASSIGN U19 ( .B(ckvreader_kopassigner_data[19]), .A(tlv_word0[19]));
Q_ASSIGN U20 ( .B(ckvreader_kopassigner_data[20]), .A(tlv_word0[20]));
Q_ASSIGN U21 ( .B(ckvreader_kopassigner_data[21]), .A(tlv_word0[21]));
Q_ASSIGN U22 ( .B(ckvreader_kopassigner_data[22]), .A(tlv_word0[22]));
Q_ASSIGN U23 ( .B(ckvreader_kopassigner_data[23]), .A(tlv_word0[23]));
Q_ASSIGN U24 ( .B(ckvreader_kopassigner_data[24]), .A(tlv_word0[24]));
Q_ASSIGN U25 ( .B(ckvreader_kopassigner_data[25]), .A(tlv_word0[25]));
Q_ASSIGN U26 ( .B(ckvreader_kopassigner_data[26]), .A(tlv_word0[26]));
Q_ASSIGN U27 ( .B(ckvreader_kopassigner_data[27]), .A(tlv_word0[27]));
Q_ASSIGN U28 ( .B(ckvreader_kopassigner_data[28]), .A(tlv_word0[28]));
Q_ASSIGN U29 ( .B(ckvreader_kopassigner_data[29]), .A(tlv_word0[29]));
Q_ASSIGN U30 ( .B(ckvreader_kopassigner_data[30]), .A(tlv_word0[30]));
Q_ASSIGN U31 ( .B(ckvreader_kopassigner_data[31]), .A(tlv_word0[31]));
Q_ASSIGN U32 ( .B(ckvreader_kopassigner_data[32]), .A(tlv_word0[32]));
Q_ASSIGN U33 ( .B(ckvreader_kopassigner_data[33]), .A(tlv_word0[33]));
Q_ASSIGN U34 ( .B(ckvreader_kopassigner_data[34]), .A(tlv_word0[34]));
Q_ASSIGN U35 ( .B(ckvreader_kopassigner_data[35]), .A(tlv_word0[35]));
Q_ASSIGN U36 ( .B(ckvreader_kopassigner_data[36]), .A(tlv_word0[36]));
Q_ASSIGN U37 ( .B(ckvreader_kopassigner_data[37]), .A(tlv_word0[37]));
Q_ASSIGN U38 ( .B(ckvreader_kopassigner_data[38]), .A(tlv_word0[38]));
Q_ASSIGN U39 ( .B(ckvreader_kopassigner_data[39]), .A(tlv_word0[39]));
Q_ASSIGN U40 ( .B(ckvreader_kopassigner_data[40]), .A(tlv_word0[40]));
Q_ASSIGN U41 ( .B(ckvreader_kopassigner_data[41]), .A(tlv_word0[41]));
Q_ASSIGN U42 ( .B(ckvreader_kopassigner_data[42]), .A(tlv_word0[42]));
Q_ASSIGN U43 ( .B(ckvreader_kopassigner_data[43]), .A(tlv_word0[43]));
Q_ASSIGN U44 ( .B(ckvreader_kopassigner_data[44]), .A(tlv_word0[44]));
Q_ASSIGN U45 ( .B(ckvreader_kopassigner_data[45]), .A(tlv_word0[45]));
Q_ASSIGN U46 ( .B(ckvreader_kopassigner_data[46]), .A(tlv_word0[46]));
Q_ASSIGN U47 ( .B(ckvreader_kopassigner_data[47]), .A(tlv_word0[47]));
Q_ASSIGN U48 ( .B(ckvreader_kopassigner_data[48]), .A(tlv_word0[48]));
Q_ASSIGN U49 ( .B(ckvreader_kopassigner_data[49]), .A(tlv_word0[49]));
Q_ASSIGN U50 ( .B(ckvreader_kopassigner_data[50]), .A(tlv_word0[50]));
Q_ASSIGN U51 ( .B(ckvreader_kopassigner_data[51]), .A(tlv_word0[51]));
Q_ASSIGN U52 ( .B(ckvreader_kopassigner_data[52]), .A(tlv_word0[52]));
Q_ASSIGN U53 ( .B(ckvreader_kopassigner_data[53]), .A(tlv_word0[53]));
Q_ASSIGN U54 ( .B(ckvreader_kopassigner_data[54]), .A(tlv_word0[54]));
Q_ASSIGN U55 ( .B(ckvreader_kopassigner_data[55]), .A(tlv_word0[55]));
Q_ASSIGN U56 ( .B(ckvreader_kopassigner_data[56]), .A(tlv_word0[56]));
Q_ASSIGN U57 ( .B(ckvreader_kopassigner_data[57]), .A(tlv_word0[57]));
Q_ASSIGN U58 ( .B(ckvreader_kopassigner_data[58]), .A(tlv_word0[58]));
Q_ASSIGN U59 ( .B(ckvreader_kopassigner_data[59]), .A(tlv_word0[59]));
Q_ASSIGN U60 ( .B(ckvreader_kopassigner_data[60]), .A(tlv_word0[60]));
Q_ASSIGN U61 ( .B(ckvreader_kopassigner_data[61]), .A(tlv_word0[61]));
Q_ASSIGN U62 ( .B(ckvreader_kopassigner_data[62]), .A(tlv_word0[62]));
Q_ASSIGN U63 ( .B(ckvreader_kopassigner_data[63]), .A(tlv_word0[63]));
Q_BUF U64 ( .A(cur_state[1]), .Z(nxt_state[1]));
Q_BUF U65 ( .A(n72), .Z(cddip_decrypt_in_valid));
Q_BUF U66 ( .A(n71), .Z(cddip_decrypt_in[0]));
Q_BUF U67 ( .A(n70), .Z(cddip_decrypt_in[1]));
Q_BUF U68 ( .A(n69), .Z(cddip_decrypt_in[2]));
Q_BUF U69 ( .A(n68), .Z(cddip_decrypt_in[3]));
Q_BUF U70 ( .A(n67), .Z(cddip_decrypt_in[4]));
Q_BUF U71 ( .A(n66), .Z(cddip_decrypt_in[5]));
Q_BUF U72 ( .A(n65), .Z(cddip_decrypt_in[6]));
Q_BUF U73 ( .A(n64), .Z(cddip_decrypt_in[7]));
Q_BUF U74 ( .A(n63), .Z(cddip_decrypt_in[8]));
Q_BUF U75 ( .A(n62), .Z(cddip_decrypt_in[9]));
Q_BUF U76 ( .A(n61), .Z(cddip_decrypt_in[10]));
Q_BUF U77 ( .A(n60), .Z(cddip_decrypt_in[11]));
Q_BUF U78 ( .A(n59), .Z(cddip_decrypt_in[12]));
Q_BUF U79 ( .A(n58), .Z(cddip_decrypt_in[13]));
Q_BUF U80 ( .A(n57), .Z(cddip_decrypt_in[14]));
Q_BUF U81 ( .A(n56), .Z(cddip_decrypt_in[15]));
Q_BUF U82 ( .A(n55), .Z(cddip_decrypt_in[16]));
Q_BUF U83 ( .A(n54), .Z(cddip_decrypt_in[17]));
Q_BUF U84 ( .A(n53), .Z(cddip_decrypt_in[18]));
Q_BUF U85 ( .A(n52), .Z(cddip_decrypt_in[19]));
Q_BUF U86 ( .A(n51), .Z(cddip_decrypt_in[20]));
Q_BUF U87 ( .A(n50), .Z(cddip_decrypt_in[21]));
Q_BUF U88 ( .A(n49), .Z(cddip_decrypt_in[22]));
Q_BUF U89 ( .A(n48), .Z(cddip_decrypt_in[23]));
Q_BUF U90 ( .A(n47), .Z(cddip_decrypt_in[24]));
Q_BUF U91 ( .A(n46), .Z(cddip_decrypt_in[25]));
Q_BUF U92 ( .A(n45), .Z(cddip_decrypt_in[26]));
Q_BUF U93 ( .A(n44), .Z(cddip_decrypt_in[27]));
Q_BUF U94 ( .A(n43), .Z(cddip_decrypt_in[28]));
Q_BUF U95 ( .A(n42), .Z(cddip_decrypt_in[29]));
Q_BUF U96 ( .A(n41), .Z(cddip_decrypt_in[30]));
Q_BUF U97 ( .A(n40), .Z(cddip_decrypt_in[31]));
Q_BUF U98 ( .A(n39), .Z(cddip_decrypt_in[32]));
Q_BUF U99 ( .A(n38), .Z(cddip_decrypt_in[33]));
Q_BUF U100 ( .A(n37), .Z(cddip_decrypt_in[34]));
Q_BUF U101 ( .A(n36), .Z(cddip_decrypt_in[35]));
Q_BUF U102 ( .A(n35), .Z(cddip_decrypt_in[36]));
Q_BUF U103 ( .A(n34), .Z(cddip_decrypt_in[37]));
Q_BUF U104 ( .A(n33), .Z(cddip_decrypt_in[38]));
Q_BUF U105 ( .A(n32), .Z(cddip_decrypt_in[39]));
Q_BUF U106 ( .A(n31), .Z(cddip_decrypt_in[40]));
Q_BUF U107 ( .A(n30), .Z(cddip_decrypt_in[41]));
Q_BUF U108 ( .A(n29), .Z(cddip_decrypt_in[42]));
Q_BUF U109 ( .A(n28), .Z(cddip_decrypt_in[43]));
Q_BUF U110 ( .A(n27), .Z(cddip_decrypt_in[44]));
Q_BUF U111 ( .A(n26), .Z(cddip_decrypt_in[45]));
Q_BUF U112 ( .A(n25), .Z(cddip_decrypt_in[46]));
Q_BUF U113 ( .A(n24), .Z(cddip_decrypt_in[47]));
Q_BUF U114 ( .A(n23), .Z(cddip_decrypt_in[48]));
Q_BUF U115 ( .A(n22), .Z(cddip_decrypt_in[49]));
Q_BUF U116 ( .A(n21), .Z(cddip_decrypt_in[50]));
Q_BUF U117 ( .A(n20), .Z(cddip_decrypt_in[51]));
Q_BUF U118 ( .A(n19), .Z(cddip_decrypt_in[52]));
Q_BUF U119 ( .A(n18), .Z(cddip_decrypt_in[53]));
Q_BUF U120 ( .A(n17), .Z(cddip_decrypt_in[54]));
Q_BUF U121 ( .A(n16), .Z(cddip_decrypt_in[55]));
Q_BUF U122 ( .A(n15), .Z(cddip_decrypt_in[56]));
Q_BUF U123 ( .A(n14), .Z(cddip_decrypt_in[57]));
Q_BUF U124 ( .A(n13), .Z(cddip_decrypt_in[58]));
Q_BUF U125 ( .A(n12), .Z(cddip_decrypt_in[59]));
Q_BUF U126 ( .A(n11), .Z(cddip_decrypt_in[60]));
Q_BUF U127 ( .A(n10), .Z(cddip_decrypt_in[61]));
Q_BUF U128 ( .A(n9), .Z(cddip_decrypt_in[62]));
Q_BUF U129 ( .A(n8), .Z(cddip_decrypt_in[63]));
Q_BUF U130 ( .A(n7), .Z(cddip_decrypt_in[64]));
Q_BUF U131 ( .A(n6), .Z(cddip_decrypt_in[65]));
Q_BUF U132 ( .A(n5), .Z(cddip_decrypt_in[66]));
Q_BUF U133 ( .A(n4), .Z(cddip_decrypt_in[67]));
Q_BUF U134 ( .A(n3), .Z(cddip_decrypt_in[68]));
Q_BUF U135 ( .A(n2), .Z(cddip_decrypt_in[69]));
Q_BUF U136 ( .A(n1), .Z(cddip_decrypt_in[70]));
Q_BUF U137 ( .A(cceip_encrypt_in[68]), .Z(cceip_validate_in[68]));
Q_BUF U138 ( .A(cceip_validate_in[0]), .Z(cceip_encrypt_in[0]));
Q_BUF U139 ( .A(cceip_validate_in[1]), .Z(cceip_encrypt_in[1]));
Q_BUF U140 ( .A(cceip_validate_in[2]), .Z(cceip_encrypt_in[2]));
Q_BUF U141 ( .A(cceip_validate_in[3]), .Z(cceip_encrypt_in[3]));
Q_BUF U142 ( .A(cceip_validate_in[4]), .Z(cceip_encrypt_in[4]));
Q_BUF U143 ( .A(cceip_validate_in[5]), .Z(cceip_encrypt_in[5]));
Q_BUF U144 ( .A(cceip_validate_in[6]), .Z(cceip_encrypt_in[6]));
Q_BUF U145 ( .A(cceip_validate_in[7]), .Z(cceip_encrypt_in[7]));
Q_BUF U146 ( .A(cceip_validate_in[8]), .Z(cceip_encrypt_in[8]));
Q_BUF U147 ( .A(cceip_validate_in[9]), .Z(cceip_encrypt_in[9]));
Q_BUF U148 ( .A(cceip_validate_in[10]), .Z(cceip_encrypt_in[10]));
Q_BUF U149 ( .A(cceip_validate_in[11]), .Z(cceip_encrypt_in[11]));
Q_BUF U150 ( .A(cceip_validate_in[12]), .Z(cceip_encrypt_in[12]));
Q_BUF U151 ( .A(cceip_validate_in[13]), .Z(cceip_encrypt_in[13]));
Q_BUF U152 ( .A(cceip_validate_in[14]), .Z(cceip_encrypt_in[14]));
Q_BUF U153 ( .A(cceip_validate_in[15]), .Z(cceip_encrypt_in[15]));
Q_BUF U154 ( .A(cceip_validate_in[16]), .Z(cceip_encrypt_in[16]));
Q_BUF U155 ( .A(cceip_validate_in[17]), .Z(cceip_encrypt_in[17]));
Q_BUF U156 ( .A(cceip_validate_in[18]), .Z(cceip_encrypt_in[18]));
Q_BUF U157 ( .A(cceip_validate_in[19]), .Z(cceip_encrypt_in[19]));
Q_BUF U158 ( .A(cceip_validate_in[20]), .Z(cceip_encrypt_in[20]));
Q_BUF U159 ( .A(cceip_validate_in[21]), .Z(cceip_encrypt_in[21]));
Q_BUF U160 ( .A(cceip_validate_in[22]), .Z(cceip_encrypt_in[22]));
Q_BUF U161 ( .A(cceip_validate_in[23]), .Z(cceip_encrypt_in[23]));
Q_BUF U162 ( .A(cceip_validate_in[24]), .Z(cceip_encrypt_in[24]));
Q_BUF U163 ( .A(cceip_validate_in[25]), .Z(cceip_encrypt_in[25]));
Q_BUF U164 ( .A(cceip_validate_in[26]), .Z(cceip_encrypt_in[26]));
Q_BUF U165 ( .A(cceip_validate_in[27]), .Z(cceip_encrypt_in[27]));
Q_BUF U166 ( .A(cceip_validate_in[28]), .Z(cceip_encrypt_in[28]));
Q_BUF U167 ( .A(cceip_validate_in[29]), .Z(cceip_encrypt_in[29]));
Q_BUF U168 ( .A(cceip_validate_in[30]), .Z(cceip_encrypt_in[30]));
Q_BUF U169 ( .A(cceip_validate_in[31]), .Z(cceip_encrypt_in[31]));
Q_BUF U170 ( .A(cceip_validate_in[32]), .Z(cceip_encrypt_in[32]));
Q_BUF U171 ( .A(cceip_validate_in[33]), .Z(cceip_encrypt_in[33]));
Q_BUF U172 ( .A(cceip_validate_in[34]), .Z(cceip_encrypt_in[34]));
Q_BUF U173 ( .A(cceip_validate_in[35]), .Z(cceip_encrypt_in[35]));
Q_BUF U174 ( .A(cceip_validate_in[36]), .Z(cceip_encrypt_in[36]));
Q_BUF U175 ( .A(cceip_validate_in[37]), .Z(cceip_encrypt_in[37]));
Q_BUF U176 ( .A(cceip_validate_in[38]), .Z(cceip_encrypt_in[38]));
Q_BUF U177 ( .A(cceip_validate_in[39]), .Z(cceip_encrypt_in[39]));
Q_BUF U178 ( .A(cceip_validate_in[40]), .Z(cceip_encrypt_in[40]));
Q_BUF U179 ( .A(cceip_validate_in[41]), .Z(cceip_encrypt_in[41]));
Q_BUF U180 ( .A(cceip_validate_in[42]), .Z(cceip_encrypt_in[42]));
Q_BUF U181 ( .A(cceip_validate_in[43]), .Z(cceip_encrypt_in[43]));
Q_BUF U182 ( .A(cceip_validate_in[44]), .Z(cceip_encrypt_in[44]));
Q_BUF U183 ( .A(cceip_validate_in[45]), .Z(cceip_encrypt_in[45]));
Q_BUF U184 ( .A(cceip_validate_in[46]), .Z(cceip_encrypt_in[46]));
Q_BUF U185 ( .A(cceip_validate_in[47]), .Z(cceip_encrypt_in[47]));
Q_BUF U186 ( .A(cceip_validate_in[48]), .Z(cceip_encrypt_in[48]));
Q_BUF U187 ( .A(cceip_validate_in[49]), .Z(cceip_encrypt_in[49]));
Q_BUF U188 ( .A(cceip_validate_in[50]), .Z(cceip_encrypt_in[50]));
Q_BUF U189 ( .A(cceip_validate_in[51]), .Z(cceip_encrypt_in[51]));
Q_BUF U190 ( .A(cceip_validate_in[52]), .Z(cceip_encrypt_in[52]));
Q_BUF U191 ( .A(cceip_validate_in[53]), .Z(cceip_encrypt_in[53]));
Q_BUF U192 ( .A(cceip_validate_in[54]), .Z(cceip_encrypt_in[54]));
Q_BUF U193 ( .A(cceip_validate_in[55]), .Z(cceip_encrypt_in[55]));
Q_BUF U194 ( .A(cceip_validate_in[56]), .Z(cceip_encrypt_in[56]));
Q_BUF U195 ( .A(cceip_validate_in[57]), .Z(cceip_encrypt_in[57]));
Q_BUF U196 ( .A(cceip_validate_in[58]), .Z(cceip_encrypt_in[58]));
Q_BUF U197 ( .A(cceip_validate_in[59]), .Z(cceip_encrypt_in[59]));
Q_BUF U198 ( .A(cceip_validate_in[60]), .Z(cceip_encrypt_in[60]));
Q_BUF U199 ( .A(cceip_validate_in[61]), .Z(cceip_encrypt_in[61]));
Q_BUF U200 ( .A(cceip_validate_in[62]), .Z(cceip_encrypt_in[62]));
Q_BUF U201 ( .A(cceip_validate_in[63]), .Z(cceip_encrypt_in[63]));
Q_BUF U202 ( .A(cceip_validate_in[64]), .Z(cceip_encrypt_in[64]));
Q_BUF U203 ( .A(cceip_validate_in[65]), .Z(cceip_encrypt_in[65]));
Q_BUF U204 ( .A(cceip_validate_in[66]), .Z(cceip_encrypt_in[66]));
Q_BUF U205 ( .A(cceip_validate_in[67]), .Z(cceip_encrypt_in[67]));
Q_BUF U206 ( .A(cceip_validate_in[69]), .Z(cceip_encrypt_in[69]));
Q_BUF U207 ( .A(cceip_validate_in[70]), .Z(cceip_encrypt_in[70]));
Q_BUF U208 ( .A(kopassigner_ckvreader_ack), .Z(cceip_encrypt_in_valid));
Q_BUF U209 ( .A(kopassigner_ckvreader_ack), .Z(cceip_validate_in_valid));
ixc_assign _zz_strnp_6 ( _zy_simnet_cddip_decrypt_in_valid_6_w$, n72);
ixc_assign_71 _zz_strnp_5 ( _zy_simnet_cddip_decrypt_in_5_w$[0:70], { n1, n2, 
	n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
	n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, 
	n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, 
	n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
	n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71});
ixc_assign _zz_strnp_4 ( _zy_simnet_cceip_validate_in_valid_4_w$, 
	kopassigner_ckvreader_ack);
ixc_assign_71 _zz_strnp_3 ( _zy_simnet_cceip_validate_in_3_w$[0:70], { 
	cceip_validate_in[70], cceip_validate_in[69], cceip_encrypt_in[68], 
	cceip_validate_in[67], cceip_validate_in[66], cceip_validate_in[65], 
	cceip_validate_in[64], cceip_validate_in[63], cceip_validate_in[62], 
	cceip_validate_in[61], cceip_validate_in[60], cceip_validate_in[59], 
	cceip_validate_in[58], cceip_validate_in[57], cceip_validate_in[56], 
	cceip_validate_in[55], cceip_validate_in[54], cceip_validate_in[53], 
	cceip_validate_in[52], cceip_validate_in[51], cceip_validate_in[50], 
	cceip_validate_in[49], cceip_validate_in[48], cceip_validate_in[47], 
	cceip_validate_in[46], cceip_validate_in[45], cceip_validate_in[44], 
	cceip_validate_in[43], cceip_validate_in[42], cceip_validate_in[41], 
	cceip_validate_in[40], cceip_validate_in[39], cceip_validate_in[38], 
	cceip_validate_in[37], cceip_validate_in[36], cceip_validate_in[35], 
	cceip_validate_in[34], cceip_validate_in[33], cceip_validate_in[32], 
	cceip_validate_in[31], cceip_validate_in[30], cceip_validate_in[29], 
	cceip_validate_in[28], cceip_validate_in[27], cceip_validate_in[26], 
	cceip_validate_in[25], cceip_validate_in[24], cceip_validate_in[23], 
	cceip_validate_in[22], cceip_validate_in[21], cceip_validate_in[20], 
	cceip_validate_in[19], cceip_validate_in[18], cceip_validate_in[17], 
	cceip_validate_in[16], cceip_validate_in[15], cceip_validate_in[14], 
	cceip_validate_in[13], cceip_validate_in[12], cceip_validate_in[11], 
	cceip_validate_in[10], cceip_validate_in[9], cceip_validate_in[8], 
	cceip_validate_in[7], cceip_validate_in[6], cceip_validate_in[5], 
	cceip_validate_in[4], cceip_validate_in[3], cceip_validate_in[2], 
	cceip_validate_in[1], cceip_validate_in[0]});
ixc_assign _zz_strnp_2 ( _zy_simnet_cceip_encrypt_in_valid_2_w$, 
	kopassigner_ckvreader_ack);
ixc_assign_71 _zz_strnp_1 ( _zy_simnet_cceip_encrypt_in_1_w$[0:70], { 
	cceip_validate_in[70], cceip_validate_in[69], cceip_encrypt_in[68], 
	cceip_validate_in[67], cceip_validate_in[66], cceip_validate_in[65], 
	cceip_validate_in[64], cceip_validate_in[63], cceip_validate_in[62], 
	cceip_validate_in[61], cceip_validate_in[60], cceip_validate_in[59], 
	cceip_validate_in[58], cceip_validate_in[57], cceip_validate_in[56], 
	cceip_validate_in[55], cceip_validate_in[54], cceip_validate_in[53], 
	cceip_validate_in[52], cceip_validate_in[51], cceip_validate_in[50], 
	cceip_validate_in[49], cceip_validate_in[48], cceip_validate_in[47], 
	cceip_validate_in[46], cceip_validate_in[45], cceip_validate_in[44], 
	cceip_validate_in[43], cceip_validate_in[42], cceip_validate_in[41], 
	cceip_validate_in[40], cceip_validate_in[39], cceip_validate_in[38], 
	cceip_validate_in[37], cceip_validate_in[36], cceip_validate_in[35], 
	cceip_validate_in[34], cceip_validate_in[33], cceip_validate_in[32], 
	cceip_validate_in[31], cceip_validate_in[30], cceip_validate_in[29], 
	cceip_validate_in[28], cceip_validate_in[27], cceip_validate_in[26], 
	cceip_validate_in[25], cceip_validate_in[24], cceip_validate_in[23], 
	cceip_validate_in[22], cceip_validate_in[21], cceip_validate_in[20], 
	cceip_validate_in[19], cceip_validate_in[18], cceip_validate_in[17], 
	cceip_validate_in[16], cceip_validate_in[15], cceip_validate_in[14], 
	cceip_validate_in[13], cceip_validate_in[12], cceip_validate_in[11], 
	cceip_validate_in[10], cceip_validate_in[9], cceip_validate_in[8], 
	cceip_validate_in[7], cceip_validate_in[6], cceip_validate_in[5], 
	cceip_validate_in[4], cceip_validate_in[3], cceip_validate_in[2], 
	cceip_validate_in[1], cceip_validate_in[0]});
ixc_assign _zz_strnp_0 ( _zy_simnet_kopassigner_ckvreader_ack_0_w$, 
	kopassigner_ckvreader_ack);
Q_FDP1 \cur_state_REG[0] ( .CK(clk), .R(rst_n), .D(nxt_state[0]), .Q(cur_state[0]), .QN( ));
Q_FDP1 \cur_state_REG[1] ( .CK(clk), .R(rst_n), .D(nxt_state[1]), .Q(cur_state[1]), .QN(n74));
Q_AN02 U219 ( .A0(kopassigner_ckvreader_ack), .A1(cceip_encrypt_in[68]), .Z(n78));
Q_MX02 U220 ( .S(n75), .A0(n77), .A1(cur_state[0]), .Z(nxt_state[0]));
Q_AN02 U221 ( .A0(n73), .A1(kopassigner_ckvreader_ack), .Z(n77));
Q_NR02 U222 ( .A0(nxt_state[1]), .A1(cur_state[0]), .Z(n73));
Q_ND02 U223 ( .A0(n74), .A1(n76), .Z(n75));
Q_MX02 U224 ( .S(cur_state[0]), .A0(kopassigner_ckvreader_ack), .A1(n78), .Z(n76));
Q_AN02 U225 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[68]), .Z(cceip_encrypt_in[68]));
Q_AN02 U226 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[0]), .Z(cceip_validate_in[0]));
Q_AN02 U227 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[1]), .Z(cceip_validate_in[1]));
Q_AN02 U228 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[2]), .Z(cceip_validate_in[2]));
Q_AN02 U229 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[3]), .Z(cceip_validate_in[3]));
Q_AN02 U230 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[4]), .Z(cceip_validate_in[4]));
Q_AN02 U231 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[5]), .Z(cceip_validate_in[5]));
Q_AN02 U232 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[6]), .Z(cceip_validate_in[6]));
Q_AN02 U233 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[7]), .Z(cceip_validate_in[7]));
Q_AN02 U234 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[8]), .Z(cceip_validate_in[8]));
Q_AN02 U235 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[9]), .Z(cceip_validate_in[9]));
Q_AN02 U236 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[10]), .Z(cceip_validate_in[10]));
Q_AN02 U237 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[11]), .Z(cceip_validate_in[11]));
Q_AN02 U238 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[12]), .Z(cceip_validate_in[12]));
Q_AN02 U239 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[13]), .Z(cceip_validate_in[13]));
Q_AN02 U240 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[14]), .Z(cceip_validate_in[14]));
Q_AN02 U241 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[15]), .Z(cceip_validate_in[15]));
Q_AN02 U242 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[16]), .Z(cceip_validate_in[16]));
Q_AN02 U243 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[17]), .Z(cceip_validate_in[17]));
Q_AN02 U244 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[18]), .Z(cceip_validate_in[18]));
Q_AN02 U245 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[19]), .Z(cceip_validate_in[19]));
Q_AN02 U246 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[20]), .Z(cceip_validate_in[20]));
Q_AN02 U247 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[21]), .Z(cceip_validate_in[21]));
Q_AN02 U248 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[22]), .Z(cceip_validate_in[22]));
Q_AN02 U249 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[23]), .Z(cceip_validate_in[23]));
Q_AN02 U250 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[24]), .Z(cceip_validate_in[24]));
Q_AN02 U251 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[25]), .Z(cceip_validate_in[25]));
Q_AN02 U252 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[26]), .Z(cceip_validate_in[26]));
Q_AN02 U253 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[27]), .Z(cceip_validate_in[27]));
Q_AN02 U254 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[28]), .Z(cceip_validate_in[28]));
Q_AN02 U255 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[29]), .Z(cceip_validate_in[29]));
Q_AN02 U256 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[30]), .Z(cceip_validate_in[30]));
Q_AN02 U257 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[31]), .Z(cceip_validate_in[31]));
Q_AN02 U258 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[32]), .Z(cceip_validate_in[32]));
Q_AN02 U259 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[33]), .Z(cceip_validate_in[33]));
Q_AN02 U260 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[34]), .Z(cceip_validate_in[34]));
Q_AN02 U261 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[35]), .Z(cceip_validate_in[35]));
Q_AN02 U262 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[36]), .Z(cceip_validate_in[36]));
Q_AN02 U263 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[37]), .Z(cceip_validate_in[37]));
Q_AN02 U264 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[38]), .Z(cceip_validate_in[38]));
Q_AN02 U265 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[39]), .Z(cceip_validate_in[39]));
Q_AN02 U266 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[40]), .Z(cceip_validate_in[40]));
Q_AN02 U267 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[41]), .Z(cceip_validate_in[41]));
Q_AN02 U268 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[42]), .Z(cceip_validate_in[42]));
Q_AN02 U269 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[43]), .Z(cceip_validate_in[43]));
Q_AN02 U270 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[44]), .Z(cceip_validate_in[44]));
Q_AN02 U271 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[45]), .Z(cceip_validate_in[45]));
Q_AN02 U272 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[46]), .Z(cceip_validate_in[46]));
Q_AN02 U273 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[47]), .Z(cceip_validate_in[47]));
Q_AN02 U274 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[48]), .Z(cceip_validate_in[48]));
Q_AN02 U275 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[49]), .Z(cceip_validate_in[49]));
Q_AN02 U276 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[50]), .Z(cceip_validate_in[50]));
Q_AN02 U277 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[51]), .Z(cceip_validate_in[51]));
Q_AN02 U278 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[52]), .Z(cceip_validate_in[52]));
Q_AN02 U279 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[53]), .Z(cceip_validate_in[53]));
Q_AN02 U280 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[54]), .Z(cceip_validate_in[54]));
Q_AN02 U281 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[55]), .Z(cceip_validate_in[55]));
Q_AN02 U282 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[56]), .Z(cceip_validate_in[56]));
Q_AN02 U283 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[57]), .Z(cceip_validate_in[57]));
Q_AN02 U284 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[58]), .Z(cceip_validate_in[58]));
Q_AN02 U285 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[59]), .Z(cceip_validate_in[59]));
Q_AN02 U286 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[60]), .Z(cceip_validate_in[60]));
Q_AN02 U287 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[61]), .Z(cceip_validate_in[61]));
Q_AN02 U288 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[62]), .Z(cceip_validate_in[62]));
Q_AN02 U289 ( .A0(kopassigner_ckvreader_ack), .A1(tlv_word0[63]), .Z(cceip_validate_in[63]));
Q_AN02 U290 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[64]), .Z(cceip_validate_in[64]));
Q_AN02 U291 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[65]), .Z(cceip_validate_in[65]));
Q_AN02 U292 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[66]), .Z(cceip_validate_in[66]));
Q_AN02 U293 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[67]), .Z(cceip_validate_in[67]));
Q_AN02 U294 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[69]), .Z(cceip_validate_in[69]));
Q_AN02 U295 ( .A0(kopassigner_ckvreader_ack), .A1(ckvreader_kopassigner_data[70]), .Z(cceip_validate_in[70]));
Q_AN03 U296 ( .A0(ckvreader_kopassigner_valid), .A1(n74), .A2(n79), .Z(kopassigner_ckvreader_ack));
Q_ND02 U297 ( .A0(cceip_encrypt_in_stall), .A1(cceip_validate_in_stall), .Z(n79));
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
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m16 "\ckvreader_kopassigner_data.sot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m17 "\ckvreader_kopassigner_data.eoi  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m18 "\ckvreader_kopassigner_data.eot  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m19 "\ckvreader_kopassigner_data.id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m20 "\ckvreader_kopassigner_data.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m21 "\tlv_word0.tlv_bip2  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m22 "\tlv_word0.resv0  (1,0) 1 12 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m23 "\tlv_word0.kdf_dek_iter  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m24 "\tlv_word0.keyless_algos  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m25 "\tlv_word0.needs_dek  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m26 "\tlv_word0.needs_dak  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m27 "\tlv_word0.key_type  (1,0) 1 5 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m28 "\tlv_word0.tlv_frame_num  (1,0) 1 10 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m29 "\tlv_word0.tlv_eng_id  (1,0) 1 3 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m30 "\tlv_word0.tlv_seq_num  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m31 "\tlv_word0.tlv_len  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m32 "\tlv_word0.tlv_type  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "32"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "cceip_encrypt_in 5 \cceip_encrypt_in.sot  \cceip_encrypt_in.eoi  \cceip_encrypt_in.eot  \cceip_encrypt_in.id  \cceip_encrypt_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "cceip_validate_in 5 \cceip_validate_in.sot  \cceip_validate_in.eoi  \cceip_validate_in.eot  \cceip_validate_in.id  \cceip_validate_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "cddip_decrypt_in 5 \cddip_decrypt_in.sot  \cddip_decrypt_in.eoi  \cddip_decrypt_in.eot  \cddip_decrypt_in.id  \cddip_decrypt_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "ckvreader_kopassigner_data 5 \ckvreader_kopassigner_data.sot  \ckvreader_kopassigner_data.eoi  \ckvreader_kopassigner_data.eot  \ckvreader_kopassigner_data.id  \ckvreader_kopassigner_data.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "tlv_word0 12 \tlv_word0.tlv_bip2  \tlv_word0.resv0  \tlv_word0.kdf_dek_iter  \tlv_word0.keyless_algos  \tlv_word0.needs_dek  \tlv_word0.needs_dak  \tlv_word0.key_type  \tlv_word0.tlv_frame_num  \tlv_word0.tlv_eng_id  \tlv_word0.tlv_seq_num  \tlv_word0.tlv_len  \tlv_word0.tlv_type "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "5"
endmodule
