
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_hmac_sha256_stub ( hash_cmdfifo_ack, hash_keyfifo_ack, 
	hash_len_data_out_ack, hash_in_stall, sha_tag_data, sha_tag_valid, 
	sha_tag_last, clk, rst_n, scan_en, scan_mode, scan_rst_n, 
	cmdfifo_hash_valid, cmdfifo_hash_skip, cmdfifo_hash_small_size, 
	keyfifo_hash_data, keyfifo_hash_valid, hash_len_data_out, 
	hash_len_data_out_valid, in_hash_valid, in_hash_eof, in_hash_eoc, 
	in_hash_num_bytes, in_hash_data, sha_tag_stall);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output hash_cmdfifo_ack;
output hash_keyfifo_ack;
output hash_len_data_out_ack;
output hash_in_stall;
output [127:0] sha_tag_data;
output sha_tag_valid;
output sha_tag_last;
input clk;
input rst_n;
input scan_en;
input scan_mode;
input scan_rst_n;
input cmdfifo_hash_valid;
input cmdfifo_hash_skip;
input cmdfifo_hash_small_size;
input [255:0] keyfifo_hash_data;
input keyfifo_hash_valid;
input [31:0] hash_len_data_out;
input hash_len_data_out_valid;
input in_hash_valid;
input in_hash_eof;
input in_hash_eoc;
input [4:0] in_hash_num_bytes;
input [127:0] in_hash_data;
input sha_tag_stall;
supply1 n1;
supply0 n2;
Q_BUF U0 ( .A(n1), .Z(hash_cmdfifo_ack));
Q_BUF U1 ( .A(n1), .Z(hash_keyfifo_ack));
Q_BUF U2 ( .A(n1), .Z(hash_len_data_out_ack));
Q_BUF U3 ( .A(n2), .Z(hash_in_stall));
Q_BUF U4 ( .A(n2), .Z(sha_tag_data[127]));
Q_BUF U5 ( .A(n2), .Z(sha_tag_data[126]));
Q_BUF U6 ( .A(n2), .Z(sha_tag_data[125]));
Q_BUF U7 ( .A(n2), .Z(sha_tag_data[124]));
Q_BUF U8 ( .A(n2), .Z(sha_tag_data[123]));
Q_BUF U9 ( .A(n2), .Z(sha_tag_data[122]));
Q_BUF U10 ( .A(n2), .Z(sha_tag_data[121]));
Q_BUF U11 ( .A(n2), .Z(sha_tag_data[120]));
Q_BUF U12 ( .A(n2), .Z(sha_tag_data[119]));
Q_BUF U13 ( .A(n2), .Z(sha_tag_data[118]));
Q_BUF U14 ( .A(n2), .Z(sha_tag_data[117]));
Q_BUF U15 ( .A(n2), .Z(sha_tag_data[116]));
Q_BUF U16 ( .A(n2), .Z(sha_tag_data[115]));
Q_BUF U17 ( .A(n2), .Z(sha_tag_data[114]));
Q_BUF U18 ( .A(n2), .Z(sha_tag_data[113]));
Q_BUF U19 ( .A(n2), .Z(sha_tag_data[112]));
Q_BUF U20 ( .A(n2), .Z(sha_tag_data[111]));
Q_BUF U21 ( .A(n2), .Z(sha_tag_data[110]));
Q_BUF U22 ( .A(n2), .Z(sha_tag_data[109]));
Q_BUF U23 ( .A(n2), .Z(sha_tag_data[108]));
Q_BUF U24 ( .A(n2), .Z(sha_tag_data[107]));
Q_BUF U25 ( .A(n2), .Z(sha_tag_data[106]));
Q_BUF U26 ( .A(n2), .Z(sha_tag_data[105]));
Q_BUF U27 ( .A(n2), .Z(sha_tag_data[104]));
Q_BUF U28 ( .A(n2), .Z(sha_tag_data[103]));
Q_BUF U29 ( .A(n2), .Z(sha_tag_data[102]));
Q_BUF U30 ( .A(n2), .Z(sha_tag_data[101]));
Q_BUF U31 ( .A(n2), .Z(sha_tag_data[100]));
Q_BUF U32 ( .A(n2), .Z(sha_tag_data[99]));
Q_BUF U33 ( .A(n2), .Z(sha_tag_data[98]));
Q_BUF U34 ( .A(n2), .Z(sha_tag_data[97]));
Q_BUF U35 ( .A(n2), .Z(sha_tag_data[96]));
Q_BUF U36 ( .A(n2), .Z(sha_tag_data[95]));
Q_BUF U37 ( .A(n2), .Z(sha_tag_data[94]));
Q_BUF U38 ( .A(n2), .Z(sha_tag_data[93]));
Q_BUF U39 ( .A(n2), .Z(sha_tag_data[92]));
Q_BUF U40 ( .A(n2), .Z(sha_tag_data[91]));
Q_BUF U41 ( .A(n2), .Z(sha_tag_data[90]));
Q_BUF U42 ( .A(n2), .Z(sha_tag_data[89]));
Q_BUF U43 ( .A(n2), .Z(sha_tag_data[88]));
Q_BUF U44 ( .A(n2), .Z(sha_tag_data[87]));
Q_BUF U45 ( .A(n2), .Z(sha_tag_data[86]));
Q_BUF U46 ( .A(n2), .Z(sha_tag_data[85]));
Q_BUF U47 ( .A(n2), .Z(sha_tag_data[84]));
Q_BUF U48 ( .A(n2), .Z(sha_tag_data[83]));
Q_BUF U49 ( .A(n2), .Z(sha_tag_data[82]));
Q_BUF U50 ( .A(n2), .Z(sha_tag_data[81]));
Q_BUF U51 ( .A(n2), .Z(sha_tag_data[80]));
Q_BUF U52 ( .A(n2), .Z(sha_tag_data[79]));
Q_BUF U53 ( .A(n2), .Z(sha_tag_data[78]));
Q_BUF U54 ( .A(n2), .Z(sha_tag_data[77]));
Q_BUF U55 ( .A(n2), .Z(sha_tag_data[76]));
Q_BUF U56 ( .A(n2), .Z(sha_tag_data[75]));
Q_BUF U57 ( .A(n2), .Z(sha_tag_data[74]));
Q_BUF U58 ( .A(n2), .Z(sha_tag_data[73]));
Q_BUF U59 ( .A(n2), .Z(sha_tag_data[72]));
Q_BUF U60 ( .A(n2), .Z(sha_tag_data[71]));
Q_BUF U61 ( .A(n2), .Z(sha_tag_data[70]));
Q_BUF U62 ( .A(n2), .Z(sha_tag_data[69]));
Q_BUF U63 ( .A(n2), .Z(sha_tag_data[68]));
Q_BUF U64 ( .A(n2), .Z(sha_tag_data[67]));
Q_BUF U65 ( .A(n2), .Z(sha_tag_data[66]));
Q_BUF U66 ( .A(n2), .Z(sha_tag_data[65]));
Q_BUF U67 ( .A(n2), .Z(sha_tag_data[64]));
Q_BUF U68 ( .A(n2), .Z(sha_tag_data[63]));
Q_BUF U69 ( .A(n2), .Z(sha_tag_data[62]));
Q_BUF U70 ( .A(n2), .Z(sha_tag_data[61]));
Q_BUF U71 ( .A(n2), .Z(sha_tag_data[60]));
Q_BUF U72 ( .A(n2), .Z(sha_tag_data[59]));
Q_BUF U73 ( .A(n2), .Z(sha_tag_data[58]));
Q_BUF U74 ( .A(n2), .Z(sha_tag_data[57]));
Q_BUF U75 ( .A(n2), .Z(sha_tag_data[56]));
Q_BUF U76 ( .A(n2), .Z(sha_tag_data[55]));
Q_BUF U77 ( .A(n2), .Z(sha_tag_data[54]));
Q_BUF U78 ( .A(n2), .Z(sha_tag_data[53]));
Q_BUF U79 ( .A(n2), .Z(sha_tag_data[52]));
Q_BUF U80 ( .A(n2), .Z(sha_tag_data[51]));
Q_BUF U81 ( .A(n2), .Z(sha_tag_data[50]));
Q_BUF U82 ( .A(n2), .Z(sha_tag_data[49]));
Q_BUF U83 ( .A(n2), .Z(sha_tag_data[48]));
Q_BUF U84 ( .A(n2), .Z(sha_tag_data[47]));
Q_BUF U85 ( .A(n2), .Z(sha_tag_data[46]));
Q_BUF U86 ( .A(n2), .Z(sha_tag_data[45]));
Q_BUF U87 ( .A(n2), .Z(sha_tag_data[44]));
Q_BUF U88 ( .A(n2), .Z(sha_tag_data[43]));
Q_BUF U89 ( .A(n2), .Z(sha_tag_data[42]));
Q_BUF U90 ( .A(n2), .Z(sha_tag_data[41]));
Q_BUF U91 ( .A(n2), .Z(sha_tag_data[40]));
Q_BUF U92 ( .A(n2), .Z(sha_tag_data[39]));
Q_BUF U93 ( .A(n2), .Z(sha_tag_data[38]));
Q_BUF U94 ( .A(n2), .Z(sha_tag_data[37]));
Q_BUF U95 ( .A(n2), .Z(sha_tag_data[36]));
Q_BUF U96 ( .A(n2), .Z(sha_tag_data[35]));
Q_BUF U97 ( .A(n2), .Z(sha_tag_data[34]));
Q_BUF U98 ( .A(n2), .Z(sha_tag_data[33]));
Q_BUF U99 ( .A(n2), .Z(sha_tag_data[32]));
Q_BUF U100 ( .A(n2), .Z(sha_tag_data[31]));
Q_BUF U101 ( .A(n2), .Z(sha_tag_data[30]));
Q_BUF U102 ( .A(n2), .Z(sha_tag_data[29]));
Q_BUF U103 ( .A(n2), .Z(sha_tag_data[28]));
Q_BUF U104 ( .A(n2), .Z(sha_tag_data[27]));
Q_BUF U105 ( .A(n2), .Z(sha_tag_data[26]));
Q_BUF U106 ( .A(n2), .Z(sha_tag_data[25]));
Q_BUF U107 ( .A(n2), .Z(sha_tag_data[24]));
Q_BUF U108 ( .A(n2), .Z(sha_tag_data[23]));
Q_BUF U109 ( .A(n2), .Z(sha_tag_data[22]));
Q_BUF U110 ( .A(n2), .Z(sha_tag_data[21]));
Q_BUF U111 ( .A(n2), .Z(sha_tag_data[20]));
Q_BUF U112 ( .A(n2), .Z(sha_tag_data[19]));
Q_BUF U113 ( .A(n2), .Z(sha_tag_data[18]));
Q_BUF U114 ( .A(n2), .Z(sha_tag_data[17]));
Q_BUF U115 ( .A(n2), .Z(sha_tag_data[16]));
Q_BUF U116 ( .A(n2), .Z(sha_tag_data[15]));
Q_BUF U117 ( .A(n2), .Z(sha_tag_data[14]));
Q_BUF U118 ( .A(n2), .Z(sha_tag_data[13]));
Q_BUF U119 ( .A(n2), .Z(sha_tag_data[12]));
Q_BUF U120 ( .A(n2), .Z(sha_tag_data[11]));
Q_BUF U121 ( .A(n2), .Z(sha_tag_data[10]));
Q_BUF U122 ( .A(n2), .Z(sha_tag_data[9]));
Q_BUF U123 ( .A(n2), .Z(sha_tag_data[8]));
Q_BUF U124 ( .A(n2), .Z(sha_tag_data[7]));
Q_BUF U125 ( .A(n2), .Z(sha_tag_data[6]));
Q_BUF U126 ( .A(n2), .Z(sha_tag_data[5]));
Q_BUF U127 ( .A(n2), .Z(sha_tag_data[4]));
Q_BUF U128 ( .A(n2), .Z(sha_tag_data[3]));
Q_BUF U129 ( .A(n2), .Z(sha_tag_data[2]));
Q_BUF U130 ( .A(n2), .Z(sha_tag_data[1]));
Q_BUF U131 ( .A(n2), .Z(sha_tag_data[0]));
Q_BUF U132 ( .A(n2), .Z(sha_tag_last));
Q_INV U133 ( .A(sha_tag_stall), .Z(sha_tag_valid));
endmodule
