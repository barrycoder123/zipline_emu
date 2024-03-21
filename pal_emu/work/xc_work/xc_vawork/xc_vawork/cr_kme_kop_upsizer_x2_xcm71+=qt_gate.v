
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_kop_upsizer_x2_xcm71 ( upsizer_in_stall, upsizer_out_valid, 
	upsizer_out_eof, upsizer_out_data, clk, rst_n, in_upsizer_valid, 
	in_upsizer_eof, in_upsizer_data, out_upsizer_stall);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output upsizer_in_stall;
output upsizer_out_valid;
output upsizer_out_eof;
output [255:0] upsizer_out_data;
input clk;
input rst_n;
input in_upsizer_valid;
input in_upsizer_eof;
input [127:0] in_upsizer_data;
input out_upsizer_stall;
wire _zy_simnet_upsizer_in_stall_0_w$;
wire _zy_simnet_upsizer_out_valid_1_w$;
wire _zy_simnet_upsizer_out_eof_2_w$;
wire [0:255] _zy_simnet_upsizer_out_data_3_w$;
wire send_data;
wire [127:0] buffer;
Q_BUF U0 ( .A(out_upsizer_stall), .Z(upsizer_in_stall));
ixc_assign_256 _zz_strnp_3 ( _zy_simnet_upsizer_out_data_3_w$[0:255], 
	upsizer_out_data[255:0]);
ixc_assign _zz_strnp_2 ( _zy_simnet_upsizer_out_eof_2_w$, upsizer_out_eof);
ixc_assign _zz_strnp_1 ( _zy_simnet_upsizer_out_valid_1_w$, upsizer_out_valid);
ixc_assign _zz_strnp_0 ( _zy_simnet_upsizer_in_stall_0_w$, out_upsizer_stall);
Q_AN02 U5 ( .A0(n1), .A1(in_upsizer_valid), .Z(n2));
Q_AN02 U6 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[0]), .Z(upsizer_out_data[0]));
Q_AN02 U7 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[1]), .Z(upsizer_out_data[1]));
Q_AN02 U8 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[2]), .Z(upsizer_out_data[2]));
Q_AN02 U9 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[3]), .Z(upsizer_out_data[3]));
Q_AN02 U10 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[4]), .Z(upsizer_out_data[4]));
Q_AN02 U11 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[5]), .Z(upsizer_out_data[5]));
Q_AN02 U12 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[6]), .Z(upsizer_out_data[6]));
Q_AN02 U13 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[7]), .Z(upsizer_out_data[7]));
Q_AN02 U14 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[8]), .Z(upsizer_out_data[8]));
Q_AN02 U15 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[9]), .Z(upsizer_out_data[9]));
Q_AN02 U16 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[10]), .Z(upsizer_out_data[10]));
Q_AN02 U17 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[11]), .Z(upsizer_out_data[11]));
Q_AN02 U18 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[12]), .Z(upsizer_out_data[12]));
Q_AN02 U19 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[13]), .Z(upsizer_out_data[13]));
Q_AN02 U20 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[14]), .Z(upsizer_out_data[14]));
Q_AN02 U21 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[15]), .Z(upsizer_out_data[15]));
Q_AN02 U22 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[16]), .Z(upsizer_out_data[16]));
Q_AN02 U23 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[17]), .Z(upsizer_out_data[17]));
Q_AN02 U24 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[18]), .Z(upsizer_out_data[18]));
Q_AN02 U25 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[19]), .Z(upsizer_out_data[19]));
Q_AN02 U26 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[20]), .Z(upsizer_out_data[20]));
Q_AN02 U27 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[21]), .Z(upsizer_out_data[21]));
Q_AN02 U28 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[22]), .Z(upsizer_out_data[22]));
Q_AN02 U29 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[23]), .Z(upsizer_out_data[23]));
Q_AN02 U30 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[24]), .Z(upsizer_out_data[24]));
Q_AN02 U31 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[25]), .Z(upsizer_out_data[25]));
Q_AN02 U32 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[26]), .Z(upsizer_out_data[26]));
Q_AN02 U33 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[27]), .Z(upsizer_out_data[27]));
Q_AN02 U34 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[28]), .Z(upsizer_out_data[28]));
Q_AN02 U35 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[29]), .Z(upsizer_out_data[29]));
Q_AN02 U36 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[30]), .Z(upsizer_out_data[30]));
Q_AN02 U37 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[31]), .Z(upsizer_out_data[31]));
Q_AN02 U38 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[32]), .Z(upsizer_out_data[32]));
Q_AN02 U39 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[33]), .Z(upsizer_out_data[33]));
Q_AN02 U40 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[34]), .Z(upsizer_out_data[34]));
Q_AN02 U41 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[35]), .Z(upsizer_out_data[35]));
Q_AN02 U42 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[36]), .Z(upsizer_out_data[36]));
Q_AN02 U43 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[37]), .Z(upsizer_out_data[37]));
Q_AN02 U44 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[38]), .Z(upsizer_out_data[38]));
Q_AN02 U45 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[39]), .Z(upsizer_out_data[39]));
Q_AN02 U46 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[40]), .Z(upsizer_out_data[40]));
Q_AN02 U47 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[41]), .Z(upsizer_out_data[41]));
Q_AN02 U48 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[42]), .Z(upsizer_out_data[42]));
Q_AN02 U49 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[43]), .Z(upsizer_out_data[43]));
Q_AN02 U50 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[44]), .Z(upsizer_out_data[44]));
Q_AN02 U51 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[45]), .Z(upsizer_out_data[45]));
Q_AN02 U52 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[46]), .Z(upsizer_out_data[46]));
Q_AN02 U53 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[47]), .Z(upsizer_out_data[47]));
Q_AN02 U54 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[48]), .Z(upsizer_out_data[48]));
Q_AN02 U55 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[49]), .Z(upsizer_out_data[49]));
Q_AN02 U56 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[50]), .Z(upsizer_out_data[50]));
Q_AN02 U57 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[51]), .Z(upsizer_out_data[51]));
Q_AN02 U58 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[52]), .Z(upsizer_out_data[52]));
Q_AN02 U59 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[53]), .Z(upsizer_out_data[53]));
Q_AN02 U60 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[54]), .Z(upsizer_out_data[54]));
Q_AN02 U61 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[55]), .Z(upsizer_out_data[55]));
Q_AN02 U62 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[56]), .Z(upsizer_out_data[56]));
Q_AN02 U63 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[57]), .Z(upsizer_out_data[57]));
Q_AN02 U64 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[58]), .Z(upsizer_out_data[58]));
Q_AN02 U65 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[59]), .Z(upsizer_out_data[59]));
Q_AN02 U66 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[60]), .Z(upsizer_out_data[60]));
Q_AN02 U67 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[61]), .Z(upsizer_out_data[61]));
Q_AN02 U68 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[62]), .Z(upsizer_out_data[62]));
Q_AN02 U69 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[63]), .Z(upsizer_out_data[63]));
Q_AN02 U70 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[64]), .Z(upsizer_out_data[64]));
Q_AN02 U71 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[65]), .Z(upsizer_out_data[65]));
Q_AN02 U72 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[66]), .Z(upsizer_out_data[66]));
Q_AN02 U73 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[67]), .Z(upsizer_out_data[67]));
Q_AN02 U74 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[68]), .Z(upsizer_out_data[68]));
Q_AN02 U75 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[69]), .Z(upsizer_out_data[69]));
Q_AN02 U76 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[70]), .Z(upsizer_out_data[70]));
Q_AN02 U77 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[71]), .Z(upsizer_out_data[71]));
Q_AN02 U78 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[72]), .Z(upsizer_out_data[72]));
Q_AN02 U79 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[73]), .Z(upsizer_out_data[73]));
Q_AN02 U80 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[74]), .Z(upsizer_out_data[74]));
Q_AN02 U81 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[75]), .Z(upsizer_out_data[75]));
Q_AN02 U82 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[76]), .Z(upsizer_out_data[76]));
Q_AN02 U83 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[77]), .Z(upsizer_out_data[77]));
Q_AN02 U84 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[78]), .Z(upsizer_out_data[78]));
Q_AN02 U85 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[79]), .Z(upsizer_out_data[79]));
Q_AN02 U86 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[80]), .Z(upsizer_out_data[80]));
Q_AN02 U87 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[81]), .Z(upsizer_out_data[81]));
Q_AN02 U88 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[82]), .Z(upsizer_out_data[82]));
Q_AN02 U89 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[83]), .Z(upsizer_out_data[83]));
Q_AN02 U90 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[84]), .Z(upsizer_out_data[84]));
Q_AN02 U91 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[85]), .Z(upsizer_out_data[85]));
Q_AN02 U92 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[86]), .Z(upsizer_out_data[86]));
Q_AN02 U93 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[87]), .Z(upsizer_out_data[87]));
Q_AN02 U94 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[88]), .Z(upsizer_out_data[88]));
Q_AN02 U95 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[89]), .Z(upsizer_out_data[89]));
Q_AN02 U96 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[90]), .Z(upsizer_out_data[90]));
Q_AN02 U97 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[91]), .Z(upsizer_out_data[91]));
Q_AN02 U98 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[92]), .Z(upsizer_out_data[92]));
Q_AN02 U99 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[93]), .Z(upsizer_out_data[93]));
Q_AN02 U100 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[94]), .Z(upsizer_out_data[94]));
Q_AN02 U101 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[95]), .Z(upsizer_out_data[95]));
Q_AN02 U102 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[96]), .Z(upsizer_out_data[96]));
Q_AN02 U103 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[97]), .Z(upsizer_out_data[97]));
Q_AN02 U104 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[98]), .Z(upsizer_out_data[98]));
Q_AN02 U105 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[99]), .Z(upsizer_out_data[99]));
Q_AN02 U106 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[100]), .Z(upsizer_out_data[100]));
Q_AN02 U107 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[101]), .Z(upsizer_out_data[101]));
Q_AN02 U108 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[102]), .Z(upsizer_out_data[102]));
Q_AN02 U109 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[103]), .Z(upsizer_out_data[103]));
Q_AN02 U110 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[104]), .Z(upsizer_out_data[104]));
Q_AN02 U111 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[105]), .Z(upsizer_out_data[105]));
Q_AN02 U112 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[106]), .Z(upsizer_out_data[106]));
Q_AN02 U113 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[107]), .Z(upsizer_out_data[107]));
Q_AN02 U114 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[108]), .Z(upsizer_out_data[108]));
Q_AN02 U115 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[109]), .Z(upsizer_out_data[109]));
Q_AN02 U116 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[110]), .Z(upsizer_out_data[110]));
Q_AN02 U117 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[111]), .Z(upsizer_out_data[111]));
Q_AN02 U118 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[112]), .Z(upsizer_out_data[112]));
Q_AN02 U119 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[113]), .Z(upsizer_out_data[113]));
Q_AN02 U120 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[114]), .Z(upsizer_out_data[114]));
Q_AN02 U121 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[115]), .Z(upsizer_out_data[115]));
Q_AN02 U122 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[116]), .Z(upsizer_out_data[116]));
Q_AN02 U123 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[117]), .Z(upsizer_out_data[117]));
Q_AN02 U124 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[118]), .Z(upsizer_out_data[118]));
Q_AN02 U125 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[119]), .Z(upsizer_out_data[119]));
Q_AN02 U126 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[120]), .Z(upsizer_out_data[120]));
Q_AN02 U127 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[121]), .Z(upsizer_out_data[121]));
Q_AN02 U128 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[122]), .Z(upsizer_out_data[122]));
Q_AN02 U129 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[123]), .Z(upsizer_out_data[123]));
Q_AN02 U130 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[124]), .Z(upsizer_out_data[124]));
Q_AN02 U131 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[125]), .Z(upsizer_out_data[125]));
Q_AN02 U132 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[126]), .Z(upsizer_out_data[126]));
Q_AN02 U133 ( .A0(upsizer_out_valid), .A1(in_upsizer_data[127]), .Z(upsizer_out_data[127]));
Q_AN02 U134 ( .A0(upsizer_out_valid), .A1(buffer[0]), .Z(upsizer_out_data[128]));
Q_AN02 U135 ( .A0(upsizer_out_valid), .A1(buffer[1]), .Z(upsizer_out_data[129]));
Q_AN02 U136 ( .A0(upsizer_out_valid), .A1(buffer[2]), .Z(upsizer_out_data[130]));
Q_AN02 U137 ( .A0(upsizer_out_valid), .A1(buffer[3]), .Z(upsizer_out_data[131]));
Q_AN02 U138 ( .A0(upsizer_out_valid), .A1(buffer[4]), .Z(upsizer_out_data[132]));
Q_AN02 U139 ( .A0(upsizer_out_valid), .A1(buffer[5]), .Z(upsizer_out_data[133]));
Q_AN02 U140 ( .A0(upsizer_out_valid), .A1(buffer[6]), .Z(upsizer_out_data[134]));
Q_AN02 U141 ( .A0(upsizer_out_valid), .A1(buffer[7]), .Z(upsizer_out_data[135]));
Q_AN02 U142 ( .A0(upsizer_out_valid), .A1(buffer[8]), .Z(upsizer_out_data[136]));
Q_AN02 U143 ( .A0(upsizer_out_valid), .A1(buffer[9]), .Z(upsizer_out_data[137]));
Q_AN02 U144 ( .A0(upsizer_out_valid), .A1(buffer[10]), .Z(upsizer_out_data[138]));
Q_AN02 U145 ( .A0(upsizer_out_valid), .A1(buffer[11]), .Z(upsizer_out_data[139]));
Q_AN02 U146 ( .A0(upsizer_out_valid), .A1(buffer[12]), .Z(upsizer_out_data[140]));
Q_AN02 U147 ( .A0(upsizer_out_valid), .A1(buffer[13]), .Z(upsizer_out_data[141]));
Q_AN02 U148 ( .A0(upsizer_out_valid), .A1(buffer[14]), .Z(upsizer_out_data[142]));
Q_AN02 U149 ( .A0(upsizer_out_valid), .A1(buffer[15]), .Z(upsizer_out_data[143]));
Q_AN02 U150 ( .A0(upsizer_out_valid), .A1(buffer[16]), .Z(upsizer_out_data[144]));
Q_AN02 U151 ( .A0(upsizer_out_valid), .A1(buffer[17]), .Z(upsizer_out_data[145]));
Q_AN02 U152 ( .A0(upsizer_out_valid), .A1(buffer[18]), .Z(upsizer_out_data[146]));
Q_AN02 U153 ( .A0(upsizer_out_valid), .A1(buffer[19]), .Z(upsizer_out_data[147]));
Q_AN02 U154 ( .A0(upsizer_out_valid), .A1(buffer[20]), .Z(upsizer_out_data[148]));
Q_AN02 U155 ( .A0(upsizer_out_valid), .A1(buffer[21]), .Z(upsizer_out_data[149]));
Q_AN02 U156 ( .A0(upsizer_out_valid), .A1(buffer[22]), .Z(upsizer_out_data[150]));
Q_AN02 U157 ( .A0(upsizer_out_valid), .A1(buffer[23]), .Z(upsizer_out_data[151]));
Q_AN02 U158 ( .A0(upsizer_out_valid), .A1(buffer[24]), .Z(upsizer_out_data[152]));
Q_AN02 U159 ( .A0(upsizer_out_valid), .A1(buffer[25]), .Z(upsizer_out_data[153]));
Q_AN02 U160 ( .A0(upsizer_out_valid), .A1(buffer[26]), .Z(upsizer_out_data[154]));
Q_AN02 U161 ( .A0(upsizer_out_valid), .A1(buffer[27]), .Z(upsizer_out_data[155]));
Q_AN02 U162 ( .A0(upsizer_out_valid), .A1(buffer[28]), .Z(upsizer_out_data[156]));
Q_AN02 U163 ( .A0(upsizer_out_valid), .A1(buffer[29]), .Z(upsizer_out_data[157]));
Q_AN02 U164 ( .A0(upsizer_out_valid), .A1(buffer[30]), .Z(upsizer_out_data[158]));
Q_AN02 U165 ( .A0(upsizer_out_valid), .A1(buffer[31]), .Z(upsizer_out_data[159]));
Q_AN02 U166 ( .A0(upsizer_out_valid), .A1(buffer[32]), .Z(upsizer_out_data[160]));
Q_AN02 U167 ( .A0(upsizer_out_valid), .A1(buffer[33]), .Z(upsizer_out_data[161]));
Q_AN02 U168 ( .A0(upsizer_out_valid), .A1(buffer[34]), .Z(upsizer_out_data[162]));
Q_AN02 U169 ( .A0(upsizer_out_valid), .A1(buffer[35]), .Z(upsizer_out_data[163]));
Q_AN02 U170 ( .A0(upsizer_out_valid), .A1(buffer[36]), .Z(upsizer_out_data[164]));
Q_AN02 U171 ( .A0(upsizer_out_valid), .A1(buffer[37]), .Z(upsizer_out_data[165]));
Q_AN02 U172 ( .A0(upsizer_out_valid), .A1(buffer[38]), .Z(upsizer_out_data[166]));
Q_AN02 U173 ( .A0(upsizer_out_valid), .A1(buffer[39]), .Z(upsizer_out_data[167]));
Q_AN02 U174 ( .A0(upsizer_out_valid), .A1(buffer[40]), .Z(upsizer_out_data[168]));
Q_AN02 U175 ( .A0(upsizer_out_valid), .A1(buffer[41]), .Z(upsizer_out_data[169]));
Q_AN02 U176 ( .A0(upsizer_out_valid), .A1(buffer[42]), .Z(upsizer_out_data[170]));
Q_AN02 U177 ( .A0(upsizer_out_valid), .A1(buffer[43]), .Z(upsizer_out_data[171]));
Q_AN02 U178 ( .A0(upsizer_out_valid), .A1(buffer[44]), .Z(upsizer_out_data[172]));
Q_AN02 U179 ( .A0(upsizer_out_valid), .A1(buffer[45]), .Z(upsizer_out_data[173]));
Q_AN02 U180 ( .A0(upsizer_out_valid), .A1(buffer[46]), .Z(upsizer_out_data[174]));
Q_AN02 U181 ( .A0(upsizer_out_valid), .A1(buffer[47]), .Z(upsizer_out_data[175]));
Q_AN02 U182 ( .A0(upsizer_out_valid), .A1(buffer[48]), .Z(upsizer_out_data[176]));
Q_AN02 U183 ( .A0(upsizer_out_valid), .A1(buffer[49]), .Z(upsizer_out_data[177]));
Q_AN02 U184 ( .A0(upsizer_out_valid), .A1(buffer[50]), .Z(upsizer_out_data[178]));
Q_AN02 U185 ( .A0(upsizer_out_valid), .A1(buffer[51]), .Z(upsizer_out_data[179]));
Q_AN02 U186 ( .A0(upsizer_out_valid), .A1(buffer[52]), .Z(upsizer_out_data[180]));
Q_AN02 U187 ( .A0(upsizer_out_valid), .A1(buffer[53]), .Z(upsizer_out_data[181]));
Q_AN02 U188 ( .A0(upsizer_out_valid), .A1(buffer[54]), .Z(upsizer_out_data[182]));
Q_AN02 U189 ( .A0(upsizer_out_valid), .A1(buffer[55]), .Z(upsizer_out_data[183]));
Q_AN02 U190 ( .A0(upsizer_out_valid), .A1(buffer[56]), .Z(upsizer_out_data[184]));
Q_AN02 U191 ( .A0(upsizer_out_valid), .A1(buffer[57]), .Z(upsizer_out_data[185]));
Q_AN02 U192 ( .A0(upsizer_out_valid), .A1(buffer[58]), .Z(upsizer_out_data[186]));
Q_AN02 U193 ( .A0(upsizer_out_valid), .A1(buffer[59]), .Z(upsizer_out_data[187]));
Q_AN02 U194 ( .A0(upsizer_out_valid), .A1(buffer[60]), .Z(upsizer_out_data[188]));
Q_AN02 U195 ( .A0(upsizer_out_valid), .A1(buffer[61]), .Z(upsizer_out_data[189]));
Q_AN02 U196 ( .A0(upsizer_out_valid), .A1(buffer[62]), .Z(upsizer_out_data[190]));
Q_AN02 U197 ( .A0(upsizer_out_valid), .A1(buffer[63]), .Z(upsizer_out_data[191]));
Q_AN02 U198 ( .A0(upsizer_out_valid), .A1(buffer[64]), .Z(upsizer_out_data[192]));
Q_AN02 U199 ( .A0(upsizer_out_valid), .A1(buffer[65]), .Z(upsizer_out_data[193]));
Q_AN02 U200 ( .A0(upsizer_out_valid), .A1(buffer[66]), .Z(upsizer_out_data[194]));
Q_AN02 U201 ( .A0(upsizer_out_valid), .A1(buffer[67]), .Z(upsizer_out_data[195]));
Q_AN02 U202 ( .A0(upsizer_out_valid), .A1(buffer[68]), .Z(upsizer_out_data[196]));
Q_AN02 U203 ( .A0(upsizer_out_valid), .A1(buffer[69]), .Z(upsizer_out_data[197]));
Q_AN02 U204 ( .A0(upsizer_out_valid), .A1(buffer[70]), .Z(upsizer_out_data[198]));
Q_AN02 U205 ( .A0(upsizer_out_valid), .A1(buffer[71]), .Z(upsizer_out_data[199]));
Q_AN02 U206 ( .A0(upsizer_out_valid), .A1(buffer[72]), .Z(upsizer_out_data[200]));
Q_AN02 U207 ( .A0(upsizer_out_valid), .A1(buffer[73]), .Z(upsizer_out_data[201]));
Q_AN02 U208 ( .A0(upsizer_out_valid), .A1(buffer[74]), .Z(upsizer_out_data[202]));
Q_AN02 U209 ( .A0(upsizer_out_valid), .A1(buffer[75]), .Z(upsizer_out_data[203]));
Q_AN02 U210 ( .A0(upsizer_out_valid), .A1(buffer[76]), .Z(upsizer_out_data[204]));
Q_AN02 U211 ( .A0(upsizer_out_valid), .A1(buffer[77]), .Z(upsizer_out_data[205]));
Q_AN02 U212 ( .A0(upsizer_out_valid), .A1(buffer[78]), .Z(upsizer_out_data[206]));
Q_AN02 U213 ( .A0(upsizer_out_valid), .A1(buffer[79]), .Z(upsizer_out_data[207]));
Q_AN02 U214 ( .A0(upsizer_out_valid), .A1(buffer[80]), .Z(upsizer_out_data[208]));
Q_AN02 U215 ( .A0(upsizer_out_valid), .A1(buffer[81]), .Z(upsizer_out_data[209]));
Q_AN02 U216 ( .A0(upsizer_out_valid), .A1(buffer[82]), .Z(upsizer_out_data[210]));
Q_AN02 U217 ( .A0(upsizer_out_valid), .A1(buffer[83]), .Z(upsizer_out_data[211]));
Q_AN02 U218 ( .A0(upsizer_out_valid), .A1(buffer[84]), .Z(upsizer_out_data[212]));
Q_AN02 U219 ( .A0(upsizer_out_valid), .A1(buffer[85]), .Z(upsizer_out_data[213]));
Q_AN02 U220 ( .A0(upsizer_out_valid), .A1(buffer[86]), .Z(upsizer_out_data[214]));
Q_AN02 U221 ( .A0(upsizer_out_valid), .A1(buffer[87]), .Z(upsizer_out_data[215]));
Q_AN02 U222 ( .A0(upsizer_out_valid), .A1(buffer[88]), .Z(upsizer_out_data[216]));
Q_AN02 U223 ( .A0(upsizer_out_valid), .A1(buffer[89]), .Z(upsizer_out_data[217]));
Q_AN02 U224 ( .A0(upsizer_out_valid), .A1(buffer[90]), .Z(upsizer_out_data[218]));
Q_AN02 U225 ( .A0(upsizer_out_valid), .A1(buffer[91]), .Z(upsizer_out_data[219]));
Q_AN02 U226 ( .A0(upsizer_out_valid), .A1(buffer[92]), .Z(upsizer_out_data[220]));
Q_AN02 U227 ( .A0(upsizer_out_valid), .A1(buffer[93]), .Z(upsizer_out_data[221]));
Q_AN02 U228 ( .A0(upsizer_out_valid), .A1(buffer[94]), .Z(upsizer_out_data[222]));
Q_AN02 U229 ( .A0(upsizer_out_valid), .A1(buffer[95]), .Z(upsizer_out_data[223]));
Q_AN02 U230 ( .A0(upsizer_out_valid), .A1(buffer[96]), .Z(upsizer_out_data[224]));
Q_AN02 U231 ( .A0(upsizer_out_valid), .A1(buffer[97]), .Z(upsizer_out_data[225]));
Q_AN02 U232 ( .A0(upsizer_out_valid), .A1(buffer[98]), .Z(upsizer_out_data[226]));
Q_AN02 U233 ( .A0(upsizer_out_valid), .A1(buffer[99]), .Z(upsizer_out_data[227]));
Q_AN02 U234 ( .A0(upsizer_out_valid), .A1(buffer[100]), .Z(upsizer_out_data[228]));
Q_AN02 U235 ( .A0(upsizer_out_valid), .A1(buffer[101]), .Z(upsizer_out_data[229]));
Q_AN02 U236 ( .A0(upsizer_out_valid), .A1(buffer[102]), .Z(upsizer_out_data[230]));
Q_AN02 U237 ( .A0(upsizer_out_valid), .A1(buffer[103]), .Z(upsizer_out_data[231]));
Q_AN02 U238 ( .A0(upsizer_out_valid), .A1(buffer[104]), .Z(upsizer_out_data[232]));
Q_AN02 U239 ( .A0(upsizer_out_valid), .A1(buffer[105]), .Z(upsizer_out_data[233]));
Q_AN02 U240 ( .A0(upsizer_out_valid), .A1(buffer[106]), .Z(upsizer_out_data[234]));
Q_AN02 U241 ( .A0(upsizer_out_valid), .A1(buffer[107]), .Z(upsizer_out_data[235]));
Q_AN02 U242 ( .A0(upsizer_out_valid), .A1(buffer[108]), .Z(upsizer_out_data[236]));
Q_AN02 U243 ( .A0(upsizer_out_valid), .A1(buffer[109]), .Z(upsizer_out_data[237]));
Q_AN02 U244 ( .A0(upsizer_out_valid), .A1(buffer[110]), .Z(upsizer_out_data[238]));
Q_AN02 U245 ( .A0(upsizer_out_valid), .A1(buffer[111]), .Z(upsizer_out_data[239]));
Q_AN02 U246 ( .A0(upsizer_out_valid), .A1(buffer[112]), .Z(upsizer_out_data[240]));
Q_AN02 U247 ( .A0(upsizer_out_valid), .A1(buffer[113]), .Z(upsizer_out_data[241]));
Q_AN02 U248 ( .A0(upsizer_out_valid), .A1(buffer[114]), .Z(upsizer_out_data[242]));
Q_AN02 U249 ( .A0(upsizer_out_valid), .A1(buffer[115]), .Z(upsizer_out_data[243]));
Q_AN02 U250 ( .A0(upsizer_out_valid), .A1(buffer[116]), .Z(upsizer_out_data[244]));
Q_AN02 U251 ( .A0(upsizer_out_valid), .A1(buffer[117]), .Z(upsizer_out_data[245]));
Q_AN02 U252 ( .A0(upsizer_out_valid), .A1(buffer[118]), .Z(upsizer_out_data[246]));
Q_AN02 U253 ( .A0(upsizer_out_valid), .A1(buffer[119]), .Z(upsizer_out_data[247]));
Q_AN02 U254 ( .A0(upsizer_out_valid), .A1(buffer[120]), .Z(upsizer_out_data[248]));
Q_AN02 U255 ( .A0(upsizer_out_valid), .A1(buffer[121]), .Z(upsizer_out_data[249]));
Q_AN02 U256 ( .A0(upsizer_out_valid), .A1(buffer[122]), .Z(upsizer_out_data[250]));
Q_AN02 U257 ( .A0(upsizer_out_valid), .A1(buffer[123]), .Z(upsizer_out_data[251]));
Q_AN02 U258 ( .A0(upsizer_out_valid), .A1(buffer[124]), .Z(upsizer_out_data[252]));
Q_AN02 U259 ( .A0(upsizer_out_valid), .A1(buffer[125]), .Z(upsizer_out_data[253]));
Q_AN02 U260 ( .A0(upsizer_out_valid), .A1(buffer[126]), .Z(upsizer_out_data[254]));
Q_AN02 U261 ( .A0(upsizer_out_valid), .A1(buffer[127]), .Z(upsizer_out_data[255]));
Q_AN02 U262 ( .A0(upsizer_out_valid), .A1(in_upsizer_eof), .Z(upsizer_out_eof));
Q_AN03 U263 ( .A0(n3), .A1(send_data), .A2(in_upsizer_valid), .Z(upsizer_out_valid));
Q_INV U264 ( .A(out_upsizer_stall), .Z(n3));
Q_FDP4EP send_data_REG  ( .CK(clk), .CE(in_upsizer_valid), .R(n4), .D(n1), .Q(send_data));
Q_INV U266 ( .A(rst_n), .Z(n4));
Q_INV U267 ( .A(send_data), .Z(n1));
Q_FDP4EP \buffer_REG[0] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[0]), .Q(buffer[0]));
Q_FDP4EP \buffer_REG[1] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[1]), .Q(buffer[1]));
Q_FDP4EP \buffer_REG[2] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[2]), .Q(buffer[2]));
Q_FDP4EP \buffer_REG[3] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[3]), .Q(buffer[3]));
Q_FDP4EP \buffer_REG[4] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[4]), .Q(buffer[4]));
Q_FDP4EP \buffer_REG[5] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[5]), .Q(buffer[5]));
Q_FDP4EP \buffer_REG[6] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[6]), .Q(buffer[6]));
Q_FDP4EP \buffer_REG[7] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[7]), .Q(buffer[7]));
Q_FDP4EP \buffer_REG[8] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[8]), .Q(buffer[8]));
Q_FDP4EP \buffer_REG[9] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[9]), .Q(buffer[9]));
Q_FDP4EP \buffer_REG[10] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[10]), .Q(buffer[10]));
Q_FDP4EP \buffer_REG[11] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[11]), .Q(buffer[11]));
Q_FDP4EP \buffer_REG[12] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[12]), .Q(buffer[12]));
Q_FDP4EP \buffer_REG[13] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[13]), .Q(buffer[13]));
Q_FDP4EP \buffer_REG[14] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[14]), .Q(buffer[14]));
Q_FDP4EP \buffer_REG[15] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[15]), .Q(buffer[15]));
Q_FDP4EP \buffer_REG[16] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[16]), .Q(buffer[16]));
Q_FDP4EP \buffer_REG[17] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[17]), .Q(buffer[17]));
Q_FDP4EP \buffer_REG[18] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[18]), .Q(buffer[18]));
Q_FDP4EP \buffer_REG[19] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[19]), .Q(buffer[19]));
Q_FDP4EP \buffer_REG[20] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[20]), .Q(buffer[20]));
Q_FDP4EP \buffer_REG[21] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[21]), .Q(buffer[21]));
Q_FDP4EP \buffer_REG[22] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[22]), .Q(buffer[22]));
Q_FDP4EP \buffer_REG[23] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[23]), .Q(buffer[23]));
Q_FDP4EP \buffer_REG[24] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[24]), .Q(buffer[24]));
Q_FDP4EP \buffer_REG[25] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[25]), .Q(buffer[25]));
Q_FDP4EP \buffer_REG[26] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[26]), .Q(buffer[26]));
Q_FDP4EP \buffer_REG[27] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[27]), .Q(buffer[27]));
Q_FDP4EP \buffer_REG[28] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[28]), .Q(buffer[28]));
Q_FDP4EP \buffer_REG[29] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[29]), .Q(buffer[29]));
Q_FDP4EP \buffer_REG[30] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[30]), .Q(buffer[30]));
Q_FDP4EP \buffer_REG[31] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[31]), .Q(buffer[31]));
Q_FDP4EP \buffer_REG[32] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[32]), .Q(buffer[32]));
Q_FDP4EP \buffer_REG[33] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[33]), .Q(buffer[33]));
Q_FDP4EP \buffer_REG[34] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[34]), .Q(buffer[34]));
Q_FDP4EP \buffer_REG[35] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[35]), .Q(buffer[35]));
Q_FDP4EP \buffer_REG[36] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[36]), .Q(buffer[36]));
Q_FDP4EP \buffer_REG[37] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[37]), .Q(buffer[37]));
Q_FDP4EP \buffer_REG[38] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[38]), .Q(buffer[38]));
Q_FDP4EP \buffer_REG[39] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[39]), .Q(buffer[39]));
Q_FDP4EP \buffer_REG[40] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[40]), .Q(buffer[40]));
Q_FDP4EP \buffer_REG[41] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[41]), .Q(buffer[41]));
Q_FDP4EP \buffer_REG[42] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[42]), .Q(buffer[42]));
Q_FDP4EP \buffer_REG[43] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[43]), .Q(buffer[43]));
Q_FDP4EP \buffer_REG[44] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[44]), .Q(buffer[44]));
Q_FDP4EP \buffer_REG[45] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[45]), .Q(buffer[45]));
Q_FDP4EP \buffer_REG[46] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[46]), .Q(buffer[46]));
Q_FDP4EP \buffer_REG[47] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[47]), .Q(buffer[47]));
Q_FDP4EP \buffer_REG[48] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[48]), .Q(buffer[48]));
Q_FDP4EP \buffer_REG[49] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[49]), .Q(buffer[49]));
Q_FDP4EP \buffer_REG[50] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[50]), .Q(buffer[50]));
Q_FDP4EP \buffer_REG[51] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[51]), .Q(buffer[51]));
Q_FDP4EP \buffer_REG[52] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[52]), .Q(buffer[52]));
Q_FDP4EP \buffer_REG[53] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[53]), .Q(buffer[53]));
Q_FDP4EP \buffer_REG[54] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[54]), .Q(buffer[54]));
Q_FDP4EP \buffer_REG[55] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[55]), .Q(buffer[55]));
Q_FDP4EP \buffer_REG[56] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[56]), .Q(buffer[56]));
Q_FDP4EP \buffer_REG[57] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[57]), .Q(buffer[57]));
Q_FDP4EP \buffer_REG[58] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[58]), .Q(buffer[58]));
Q_FDP4EP \buffer_REG[59] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[59]), .Q(buffer[59]));
Q_FDP4EP \buffer_REG[60] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[60]), .Q(buffer[60]));
Q_FDP4EP \buffer_REG[61] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[61]), .Q(buffer[61]));
Q_FDP4EP \buffer_REG[62] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[62]), .Q(buffer[62]));
Q_FDP4EP \buffer_REG[63] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[63]), .Q(buffer[63]));
Q_FDP4EP \buffer_REG[64] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[64]), .Q(buffer[64]));
Q_FDP4EP \buffer_REG[65] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[65]), .Q(buffer[65]));
Q_FDP4EP \buffer_REG[66] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[66]), .Q(buffer[66]));
Q_FDP4EP \buffer_REG[67] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[67]), .Q(buffer[67]));
Q_FDP4EP \buffer_REG[68] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[68]), .Q(buffer[68]));
Q_FDP4EP \buffer_REG[69] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[69]), .Q(buffer[69]));
Q_FDP4EP \buffer_REG[70] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[70]), .Q(buffer[70]));
Q_FDP4EP \buffer_REG[71] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[71]), .Q(buffer[71]));
Q_FDP4EP \buffer_REG[72] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[72]), .Q(buffer[72]));
Q_FDP4EP \buffer_REG[73] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[73]), .Q(buffer[73]));
Q_FDP4EP \buffer_REG[74] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[74]), .Q(buffer[74]));
Q_FDP4EP \buffer_REG[75] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[75]), .Q(buffer[75]));
Q_FDP4EP \buffer_REG[76] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[76]), .Q(buffer[76]));
Q_FDP4EP \buffer_REG[77] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[77]), .Q(buffer[77]));
Q_FDP4EP \buffer_REG[78] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[78]), .Q(buffer[78]));
Q_FDP4EP \buffer_REG[79] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[79]), .Q(buffer[79]));
Q_FDP4EP \buffer_REG[80] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[80]), .Q(buffer[80]));
Q_FDP4EP \buffer_REG[81] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[81]), .Q(buffer[81]));
Q_FDP4EP \buffer_REG[82] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[82]), .Q(buffer[82]));
Q_FDP4EP \buffer_REG[83] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[83]), .Q(buffer[83]));
Q_FDP4EP \buffer_REG[84] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[84]), .Q(buffer[84]));
Q_FDP4EP \buffer_REG[85] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[85]), .Q(buffer[85]));
Q_FDP4EP \buffer_REG[86] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[86]), .Q(buffer[86]));
Q_FDP4EP \buffer_REG[87] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[87]), .Q(buffer[87]));
Q_FDP4EP \buffer_REG[88] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[88]), .Q(buffer[88]));
Q_FDP4EP \buffer_REG[89] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[89]), .Q(buffer[89]));
Q_FDP4EP \buffer_REG[90] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[90]), .Q(buffer[90]));
Q_FDP4EP \buffer_REG[91] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[91]), .Q(buffer[91]));
Q_FDP4EP \buffer_REG[92] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[92]), .Q(buffer[92]));
Q_FDP4EP \buffer_REG[93] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[93]), .Q(buffer[93]));
Q_FDP4EP \buffer_REG[94] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[94]), .Q(buffer[94]));
Q_FDP4EP \buffer_REG[95] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[95]), .Q(buffer[95]));
Q_FDP4EP \buffer_REG[96] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[96]), .Q(buffer[96]));
Q_FDP4EP \buffer_REG[97] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[97]), .Q(buffer[97]));
Q_FDP4EP \buffer_REG[98] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[98]), .Q(buffer[98]));
Q_FDP4EP \buffer_REG[99] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[99]), .Q(buffer[99]));
Q_FDP4EP \buffer_REG[100] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[100]), .Q(buffer[100]));
Q_FDP4EP \buffer_REG[101] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[101]), .Q(buffer[101]));
Q_FDP4EP \buffer_REG[102] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[102]), .Q(buffer[102]));
Q_FDP4EP \buffer_REG[103] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[103]), .Q(buffer[103]));
Q_FDP4EP \buffer_REG[104] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[104]), .Q(buffer[104]));
Q_FDP4EP \buffer_REG[105] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[105]), .Q(buffer[105]));
Q_FDP4EP \buffer_REG[106] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[106]), .Q(buffer[106]));
Q_FDP4EP \buffer_REG[107] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[107]), .Q(buffer[107]));
Q_FDP4EP \buffer_REG[108] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[108]), .Q(buffer[108]));
Q_FDP4EP \buffer_REG[109] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[109]), .Q(buffer[109]));
Q_FDP4EP \buffer_REG[110] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[110]), .Q(buffer[110]));
Q_FDP4EP \buffer_REG[111] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[111]), .Q(buffer[111]));
Q_FDP4EP \buffer_REG[112] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[112]), .Q(buffer[112]));
Q_FDP4EP \buffer_REG[113] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[113]), .Q(buffer[113]));
Q_FDP4EP \buffer_REG[114] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[114]), .Q(buffer[114]));
Q_FDP4EP \buffer_REG[115] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[115]), .Q(buffer[115]));
Q_FDP4EP \buffer_REG[116] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[116]), .Q(buffer[116]));
Q_FDP4EP \buffer_REG[117] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[117]), .Q(buffer[117]));
Q_FDP4EP \buffer_REG[118] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[118]), .Q(buffer[118]));
Q_FDP4EP \buffer_REG[119] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[119]), .Q(buffer[119]));
Q_FDP4EP \buffer_REG[120] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[120]), .Q(buffer[120]));
Q_FDP4EP \buffer_REG[121] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[121]), .Q(buffer[121]));
Q_FDP4EP \buffer_REG[122] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[122]), .Q(buffer[122]));
Q_FDP4EP \buffer_REG[123] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[123]), .Q(buffer[123]));
Q_FDP4EP \buffer_REG[124] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[124]), .Q(buffer[124]));
Q_FDP4EP \buffer_REG[125] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[125]), .Q(buffer[125]));
Q_FDP4EP \buffer_REG[126] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[126]), .Q(buffer[126]));
Q_FDP4EP \buffer_REG[127] ( .CK(clk), .CE(n2), .R(n4), .D(in_upsizer_data[127]), .Q(buffer[127]));
endmodule
