
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_time ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire eClk;
wire [63:0] nextTbTime;
wire [63:0] nextClkTimePO;
wire [63:0] nextDutTime;
wire [31:0] delta32;
wire [63:0] nextTime;
wire [10:0] ScMinT;
wire [10:0] delta;
wire [10:0] minT;
wire [10:0] deltaTb;
wire VCC;
wire runClk;
wire [10:0] td1;
wire [63:0] simTime;
wire [63:0] lastClkTime;
wire [63:0] nextClkTime;
wire stopEcm;
wire zminT;
wire [63:0] lastClkTimeN;
wire [63:0] nextClkTimeN;
wire [63:0] mt64;
wire [71:0] ps1;
wire [71:0] ps0;
wire c;
wire stopEcmN;
wire [31:0] i;
supply0 n79;
supply1 n80;
Q_BUF U0 ( .A(n79), .Z(delta32[31]));
Q_BUF U1 ( .A(n79), .Z(delta32[30]));
Q_BUF U2 ( .A(n79), .Z(delta32[29]));
Q_BUF U3 ( .A(n79), .Z(delta32[28]));
Q_BUF U4 ( .A(n79), .Z(delta32[27]));
Q_BUF U5 ( .A(n79), .Z(delta32[26]));
Q_BUF U6 ( .A(n79), .Z(delta32[25]));
Q_BUF U7 ( .A(n79), .Z(delta32[24]));
Q_BUF U8 ( .A(n79), .Z(delta32[23]));
Q_BUF U9 ( .A(n79), .Z(delta32[22]));
Q_BUF U10 ( .A(n79), .Z(delta32[21]));
Q_BUF U11 ( .A(n79), .Z(delta32[20]));
Q_BUF U12 ( .A(n79), .Z(delta32[19]));
Q_BUF U13 ( .A(n79), .Z(delta32[18]));
Q_BUF U14 ( .A(n79), .Z(delta32[17]));
Q_BUF U15 ( .A(n79), .Z(delta32[16]));
Q_BUF U16 ( .A(n79), .Z(delta32[15]));
Q_BUF U17 ( .A(n79), .Z(delta32[14]));
Q_BUF U18 ( .A(n79), .Z(delta32[13]));
Q_BUF U19 ( .A(n79), .Z(delta32[12]));
Q_BUF U20 ( .A(n79), .Z(delta32[11]));
Q_BUF U21 ( .A(n79), .Z(mt64[63]));
Q_BUF U22 ( .A(n79), .Z(mt64[62]));
Q_BUF U23 ( .A(n79), .Z(mt64[61]));
Q_BUF U24 ( .A(n79), .Z(mt64[60]));
Q_BUF U25 ( .A(n79), .Z(mt64[59]));
Q_BUF U26 ( .A(n79), .Z(mt64[58]));
Q_BUF U27 ( .A(n79), .Z(mt64[57]));
Q_BUF U28 ( .A(n79), .Z(mt64[56]));
Q_BUF U29 ( .A(n79), .Z(mt64[55]));
Q_BUF U30 ( .A(n79), .Z(mt64[54]));
Q_BUF U31 ( .A(n79), .Z(mt64[53]));
Q_BUF U32 ( .A(n79), .Z(mt64[52]));
Q_BUF U33 ( .A(n79), .Z(mt64[51]));
Q_BUF U34 ( .A(n79), .Z(mt64[50]));
Q_BUF U35 ( .A(n79), .Z(mt64[49]));
Q_BUF U36 ( .A(n79), .Z(mt64[48]));
Q_BUF U37 ( .A(n79), .Z(mt64[47]));
Q_BUF U38 ( .A(n79), .Z(mt64[46]));
Q_BUF U39 ( .A(n79), .Z(mt64[45]));
Q_BUF U40 ( .A(n79), .Z(mt64[44]));
Q_BUF U41 ( .A(n79), .Z(mt64[43]));
Q_BUF U42 ( .A(n79), .Z(mt64[42]));
Q_BUF U43 ( .A(n79), .Z(mt64[41]));
Q_BUF U44 ( .A(n79), .Z(mt64[40]));
Q_BUF U45 ( .A(n79), .Z(mt64[39]));
Q_BUF U46 ( .A(n79), .Z(mt64[38]));
Q_BUF U47 ( .A(n79), .Z(mt64[37]));
Q_BUF U48 ( .A(n79), .Z(mt64[36]));
Q_BUF U49 ( .A(n79), .Z(mt64[35]));
Q_BUF U50 ( .A(n79), .Z(mt64[34]));
Q_BUF U51 ( .A(n79), .Z(mt64[33]));
Q_BUF U52 ( .A(n79), .Z(mt64[32]));
Q_BUF U53 ( .A(n79), .Z(mt64[31]));
Q_BUF U54 ( .A(n79), .Z(mt64[30]));
Q_BUF U55 ( .A(n79), .Z(mt64[29]));
Q_BUF U56 ( .A(n79), .Z(mt64[28]));
Q_BUF U57 ( .A(n79), .Z(mt64[27]));
Q_BUF U58 ( .A(n79), .Z(mt64[26]));
Q_BUF U59 ( .A(n79), .Z(mt64[25]));
Q_BUF U60 ( .A(n79), .Z(mt64[24]));
Q_BUF U61 ( .A(n79), .Z(mt64[23]));
Q_BUF U62 ( .A(n79), .Z(mt64[22]));
Q_BUF U63 ( .A(n79), .Z(mt64[21]));
Q_BUF U64 ( .A(n79), .Z(mt64[20]));
Q_BUF U65 ( .A(n79), .Z(mt64[19]));
Q_BUF U66 ( .A(n79), .Z(mt64[18]));
Q_BUF U67 ( .A(n79), .Z(mt64[17]));
Q_BUF U68 ( .A(n79), .Z(mt64[16]));
Q_BUF U69 ( .A(n79), .Z(mt64[15]));
Q_BUF U70 ( .A(n79), .Z(mt64[14]));
Q_BUF U71 ( .A(n79), .Z(mt64[13]));
Q_BUF U72 ( .A(n79), .Z(mt64[12]));
Q_BUF U73 ( .A(n79), .Z(mt64[11]));
Q_BUF U74 ( .A(n79), .Z(ps0[71]));
Q_BUF U75 ( .A(n79), .Z(ps0[62]));
Q_BUF U76 ( .A(n79), .Z(ps0[53]));
Q_BUF U77 ( .A(n79), .Z(ps0[44]));
Q_BUF U78 ( .A(n79), .Z(ps0[35]));
Q_BUF U79 ( .A(n79), .Z(ps0[26]));
Q_BUF U80 ( .A(n80), .Z(VCC));
Q_BUF U81 ( .A(delta32[10]), .Z(delta[10]));
Q_BUF U82 ( .A(delta32[9]), .Z(delta[9]));
Q_BUF U83 ( .A(delta32[8]), .Z(delta[8]));
Q_BUF U84 ( .A(delta32[7]), .Z(delta[7]));
Q_BUF U85 ( .A(delta32[6]), .Z(delta[6]));
Q_BUF U86 ( .A(delta32[5]), .Z(delta[5]));
Q_BUF U87 ( .A(delta32[4]), .Z(delta[4]));
Q_BUF U88 ( .A(delta32[3]), .Z(delta[3]));
Q_BUF U89 ( .A(delta32[2]), .Z(delta[2]));
Q_BUF U90 ( .A(delta32[1]), .Z(delta[1]));
Q_BUF U91 ( .A(delta32[0]), .Z(delta[0]));
Q_BUF U92 ( .A(lastClkTimeN[63]), .Z(ps0[70]));
Q_BUF U93 ( .A(lastClkTimeN[62]), .Z(ps0[69]));
Q_BUF U94 ( .A(lastClkTimeN[61]), .Z(ps0[68]));
Q_BUF U95 ( .A(lastClkTimeN[60]), .Z(ps0[67]));
Q_BUF U96 ( .A(lastClkTimeN[59]), .Z(ps0[66]));
Q_BUF U97 ( .A(lastClkTimeN[58]), .Z(ps0[65]));
Q_BUF U98 ( .A(lastClkTimeN[57]), .Z(ps0[64]));
Q_BUF U99 ( .A(lastClkTimeN[56]), .Z(ps0[63]));
Q_BUF U100 ( .A(lastClkTimeN[55]), .Z(ps0[61]));
Q_BUF U101 ( .A(lastClkTimeN[54]), .Z(ps0[60]));
Q_BUF U102 ( .A(lastClkTimeN[53]), .Z(ps0[59]));
Q_BUF U103 ( .A(lastClkTimeN[52]), .Z(ps0[58]));
Q_BUF U104 ( .A(lastClkTimeN[51]), .Z(ps0[57]));
Q_BUF U105 ( .A(lastClkTimeN[50]), .Z(ps0[56]));
Q_BUF U106 ( .A(lastClkTimeN[49]), .Z(ps0[55]));
Q_BUF U107 ( .A(lastClkTimeN[48]), .Z(ps0[54]));
Q_BUF U108 ( .A(lastClkTimeN[47]), .Z(ps0[52]));
Q_BUF U109 ( .A(lastClkTimeN[46]), .Z(ps0[51]));
Q_BUF U110 ( .A(lastClkTimeN[45]), .Z(ps0[50]));
Q_BUF U111 ( .A(lastClkTimeN[44]), .Z(ps0[49]));
Q_BUF U112 ( .A(lastClkTimeN[43]), .Z(ps0[48]));
Q_BUF U113 ( .A(lastClkTimeN[42]), .Z(ps0[47]));
Q_BUF U114 ( .A(lastClkTimeN[41]), .Z(ps0[46]));
Q_BUF U115 ( .A(lastClkTimeN[40]), .Z(ps0[45]));
Q_BUF U116 ( .A(lastClkTimeN[39]), .Z(ps0[43]));
Q_BUF U117 ( .A(lastClkTimeN[38]), .Z(ps0[42]));
Q_BUF U118 ( .A(lastClkTimeN[37]), .Z(ps0[41]));
Q_BUF U119 ( .A(lastClkTimeN[36]), .Z(ps0[40]));
Q_BUF U120 ( .A(lastClkTimeN[35]), .Z(ps0[39]));
Q_BUF U121 ( .A(lastClkTimeN[34]), .Z(ps0[38]));
Q_BUF U122 ( .A(lastClkTimeN[33]), .Z(ps0[37]));
Q_BUF U123 ( .A(lastClkTimeN[32]), .Z(ps0[36]));
Q_BUF U124 ( .A(lastClkTimeN[31]), .Z(ps0[34]));
Q_BUF U125 ( .A(lastClkTimeN[30]), .Z(ps0[33]));
Q_BUF U126 ( .A(lastClkTimeN[29]), .Z(ps0[32]));
Q_BUF U127 ( .A(lastClkTimeN[28]), .Z(ps0[31]));
Q_BUF U128 ( .A(lastClkTimeN[27]), .Z(ps0[30]));
Q_BUF U129 ( .A(lastClkTimeN[26]), .Z(ps0[29]));
Q_BUF U130 ( .A(lastClkTimeN[25]), .Z(ps0[28]));
Q_BUF U131 ( .A(lastClkTimeN[24]), .Z(ps0[27]));
Q_BUF U132 ( .A(lastClkTimeN[23]), .Z(ps0[25]));
Q_BUF U133 ( .A(lastClkTimeN[22]), .Z(ps0[24]));
Q_BUF U134 ( .A(lastClkTimeN[21]), .Z(ps0[23]));
Q_BUF U135 ( .A(lastClkTimeN[20]), .Z(ps0[22]));
Q_BUF U136 ( .A(lastClkTimeN[19]), .Z(ps0[21]));
Q_BUF U137 ( .A(lastClkTimeN[18]), .Z(ps0[20]));
Q_BUF U138 ( .A(lastClkTimeN[17]), .Z(ps0[19]));
Q_BUF U139 ( .A(lastClkTimeN[16]), .Z(ps0[18]));
Q_BUF U140 ( .A(nextClkTimeN[7]), .Z(ps0[7]));
Q_BUF U141 ( .A(nextClkTimeN[6]), .Z(ps0[6]));
Q_BUF U142 ( .A(nextClkTimeN[5]), .Z(ps0[5]));
Q_BUF U143 ( .A(nextClkTimeN[4]), .Z(ps0[4]));
Q_BUF U144 ( .A(nextClkTimeN[3]), .Z(ps0[3]));
Q_BUF U145 ( .A(nextClkTimeN[2]), .Z(ps0[2]));
Q_BUF U146 ( .A(nextClkTimeN[1]), .Z(ps0[1]));
Q_BUF U147 ( .A(nextClkTimeN[0]), .Z(ps0[0]));
Q_ASSIGN U148 ( .B(minT[10]), .A(ScMinT[10]));
Q_ASSIGN U149 ( .B(minT[10]), .A(mt64[10]));
Q_ASSIGN U150 ( .B(minT[9]), .A(ScMinT[9]));
Q_ASSIGN U151 ( .B(minT[9]), .A(mt64[9]));
Q_ASSIGN U152 ( .B(minT[8]), .A(ScMinT[8]));
Q_ASSIGN U153 ( .B(minT[8]), .A(mt64[8]));
Q_ASSIGN U154 ( .B(minT[7]), .A(ScMinT[7]));
Q_ASSIGN U155 ( .B(minT[7]), .A(mt64[7]));
Q_ASSIGN U156 ( .B(minT[6]), .A(ScMinT[6]));
Q_ASSIGN U157 ( .B(minT[6]), .A(mt64[6]));
Q_ASSIGN U158 ( .B(minT[5]), .A(ScMinT[5]));
Q_ASSIGN U159 ( .B(minT[5]), .A(mt64[5]));
Q_ASSIGN U160 ( .B(minT[4]), .A(ScMinT[4]));
Q_ASSIGN U161 ( .B(minT[4]), .A(mt64[4]));
Q_ASSIGN U162 ( .B(minT[3]), .A(ScMinT[3]));
Q_ASSIGN U163 ( .B(minT[3]), .A(mt64[3]));
Q_ASSIGN U164 ( .B(minT[2]), .A(ScMinT[2]));
Q_ASSIGN U165 ( .B(minT[2]), .A(mt64[2]));
Q_ASSIGN U166 ( .B(minT[1]), .A(ScMinT[1]));
Q_ASSIGN U167 ( .B(minT[1]), .A(mt64[1]));
Q_ASSIGN U168 ( .B(minT[0]), .A(ScMinT[0]));
Q_ASSIGN U169 ( .B(minT[0]), .A(mt64[0]));
Q_XOR2 U170 ( .A0(ps0[8]), .A1(ps0[9]), .Z(nextClkTimeN[8]));
Q_AN02 U171 ( .A0(minT[8]), .A1(lastClkTimeN[8]), .Z(n236));
ixc_assign_11 _zz_strnp_3 ( minT[10:0], td1[10:0]);
ixc_assign_11 _zz_strnp_2 ( td1[10:0], 
	xcva_top.my_clks.ixcg_0._zyiscTdM1[10:0]);
ixc_assign_64 _zz_strnp_1 ( nextClkTimePO[63:0], { zminT, nextClkTime[62], 
	nextClkTime[61], nextClkTime[60], nextClkTime[59], nextClkTime[58], 
	nextClkTime[57], nextClkTime[56], nextClkTime[55], nextClkTime[54], 
	nextClkTime[53], nextClkTime[52], nextClkTime[51], nextClkTime[50], 
	nextClkTime[49], nextClkTime[48], nextClkTime[47], nextClkTime[46], 
	nextClkTime[45], nextClkTime[44], nextClkTime[43], nextClkTime[42], 
	nextClkTime[41], nextClkTime[40], nextClkTime[39], nextClkTime[38], 
	nextClkTime[37], nextClkTime[36], nextClkTime[35], nextClkTime[34], 
	nextClkTime[33], nextClkTime[32], nextClkTime[31], nextClkTime[30], 
	nextClkTime[29], nextClkTime[28], nextClkTime[27], nextClkTime[26], 
	nextClkTime[25], nextClkTime[24], nextClkTime[23], nextClkTime[22], 
	nextClkTime[21], nextClkTime[20], nextClkTime[19], nextClkTime[18], 
	nextClkTime[17], nextClkTime[16], nextClkTime[15], nextClkTime[14], 
	nextClkTime[13], nextClkTime[12], nextClkTime[11], nextClkTime[10], 
	nextClkTime[9], nextClkTime[8], nextClkTime[7], nextClkTime[6], 
	nextClkTime[5], nextClkTime[4], nextClkTime[3], nextClkTime[2], 
	nextClkTime[1], nextClkTime[0]});
Q_NR02 U175 ( .A0(n410), .A1(n411), .Z(runClk));
Q_AO21 U176 ( .A0(n437), .A1(n430), .B0(n438), .Z(n410));
Q_AO21 U177 ( .A0(n413), .A1(n422), .B0(n412), .Z(n411));
Q_AN03 U178 ( .A0(n413), .A1(n421), .A2(n414), .Z(n412));
Q_AN02 U179 ( .A0(n437), .A1(n429), .Z(n413));
Q_OR03 U180 ( .A0(n417), .A1(n418), .A2(n415), .Z(n414));
Q_OR03 U181 ( .A0(n425), .A1(n426), .A2(n423), .Z(n422));
Q_OR03 U182 ( .A0(n433), .A1(n434), .A2(n431), .Z(n430));
Q_OR03 U183 ( .A0(n441), .A1(n442), .A2(n439), .Z(n438));
Q_OA21 U184 ( .A0(n445), .A1(n446), .B0(n419), .Z(n418));
Q_AO21 U185 ( .A0(n457), .A1(n455), .B0(n458), .Z(n445));
Q_AO21 U186 ( .A0(n449), .A1(n452), .B0(n447), .Z(n446));
Q_AN02 U187 ( .A0(n449), .A1(n451), .Z(n448));
Q_AN02 U188 ( .A0(n457), .A1(n454), .Z(n449));
Q_AN03 U189 ( .A0(nextClkTime[0]), .A1(n450), .A2(n448), .Z(n447));
Q_INV U190 ( .A(nextTbTime[0]), .Z(n450));
Q_OR02 U191 ( .A0(nextClkTime[1]), .A1(n453), .Z(n451));
Q_AN02 U192 ( .A0(nextClkTime[1]), .A1(n453), .Z(n452));
Q_INV U193 ( .A(nextTbTime[1]), .Z(n453));
Q_OR02 U194 ( .A0(nextClkTime[2]), .A1(n456), .Z(n454));
Q_AN02 U195 ( .A0(nextClkTime[2]), .A1(n456), .Z(n455));
Q_INV U196 ( .A(nextTbTime[2]), .Z(n456));
Q_OR02 U197 ( .A0(nextClkTime[3]), .A1(n459), .Z(n457));
Q_AN02 U198 ( .A0(nextClkTime[3]), .A1(n459), .Z(n458));
Q_INV U199 ( .A(nextTbTime[3]), .Z(n459));
Q_AN03 U200 ( .A0(n463), .A1(n465), .A2(n420), .Z(n419));
Q_OA21 U201 ( .A0(n460), .A1(n461), .B0(n420), .Z(n417));
Q_AO21 U202 ( .A0(n474), .A1(n472), .B0(n475), .Z(n460));
Q_AN02 U203 ( .A0(n464), .A1(n469), .Z(n462));
Q_AO21 U204 ( .A0(n463), .A1(n466), .B0(n462), .Z(n461));
Q_AN02 U205 ( .A0(n464), .A1(n468), .Z(n463));
Q_AN02 U206 ( .A0(n474), .A1(n471), .Z(n464));
Q_OR02 U207 ( .A0(nextClkTime[4]), .A1(n467), .Z(n465));
Q_AN02 U208 ( .A0(nextClkTime[4]), .A1(n467), .Z(n466));
Q_INV U209 ( .A(nextTbTime[4]), .Z(n467));
Q_OR02 U210 ( .A0(nextClkTime[5]), .A1(n470), .Z(n468));
Q_AN02 U211 ( .A0(nextClkTime[5]), .A1(n470), .Z(n469));
Q_INV U212 ( .A(nextTbTime[5]), .Z(n470));
Q_OR02 U213 ( .A0(nextClkTime[6]), .A1(n473), .Z(n471));
Q_AN02 U214 ( .A0(nextClkTime[6]), .A1(n473), .Z(n472));
Q_INV U215 ( .A(nextTbTime[6]), .Z(n473));
Q_OR02 U216 ( .A0(nextClkTime[7]), .A1(n476), .Z(n474));
Q_AN02 U217 ( .A0(nextClkTime[7]), .A1(n476), .Z(n475));
Q_INV U218 ( .A(nextTbTime[7]), .Z(n476));
Q_AN03 U219 ( .A0(n480), .A1(n482), .A2(n494), .Z(n420));
Q_OA21 U220 ( .A0(n477), .A1(n478), .B0(n494), .Z(n416));
Q_AO21 U221 ( .A0(n491), .A1(n489), .B0(n492), .Z(n477));
Q_AN02 U222 ( .A0(n481), .A1(n486), .Z(n479));
Q_AO21 U223 ( .A0(n480), .A1(n483), .B0(n479), .Z(n478));
Q_AN02 U224 ( .A0(n481), .A1(n485), .Z(n480));
Q_AN02 U225 ( .A0(n491), .A1(n488), .Z(n481));
Q_OR02 U226 ( .A0(nextClkTime[8]), .A1(n484), .Z(n482));
Q_AN02 U227 ( .A0(nextClkTime[8]), .A1(n484), .Z(n483));
Q_INV U228 ( .A(nextTbTime[8]), .Z(n484));
Q_OR02 U229 ( .A0(nextClkTime[9]), .A1(n487), .Z(n485));
Q_AN02 U230 ( .A0(nextClkTime[9]), .A1(n487), .Z(n486));
Q_INV U231 ( .A(nextTbTime[9]), .Z(n487));
Q_OR02 U232 ( .A0(nextClkTime[10]), .A1(n490), .Z(n488));
Q_AN02 U233 ( .A0(nextClkTime[10]), .A1(n490), .Z(n489));
Q_INV U234 ( .A(nextTbTime[10]), .Z(n490));
Q_OR02 U235 ( .A0(nextClkTime[11]), .A1(n493), .Z(n491));
Q_AN02 U236 ( .A0(nextClkTime[11]), .A1(n493), .Z(n492));
Q_INV U237 ( .A(nextTbTime[11]), .Z(n493));
Q_AN02 U238 ( .A0(n498), .A1(n500), .Z(n494));
Q_OR03 U239 ( .A0(n495), .A1(n496), .A2(n416), .Z(n415));
Q_AO21 U240 ( .A0(n509), .A1(n507), .B0(n510), .Z(n495));
Q_AN02 U241 ( .A0(n499), .A1(n504), .Z(n497));
Q_AO21 U242 ( .A0(n498), .A1(n501), .B0(n497), .Z(n496));
Q_AN02 U243 ( .A0(n499), .A1(n503), .Z(n498));
Q_AN02 U244 ( .A0(n509), .A1(n506), .Z(n499));
Q_OR02 U245 ( .A0(nextClkTime[12]), .A1(n502), .Z(n500));
Q_AN02 U246 ( .A0(nextClkTime[12]), .A1(n502), .Z(n501));
Q_INV U247 ( .A(nextTbTime[12]), .Z(n502));
Q_OR02 U248 ( .A0(nextClkTime[13]), .A1(n505), .Z(n503));
Q_AN02 U249 ( .A0(nextClkTime[13]), .A1(n505), .Z(n504));
Q_INV U250 ( .A(nextTbTime[13]), .Z(n505));
Q_OR02 U251 ( .A0(nextClkTime[14]), .A1(n508), .Z(n506));
Q_AN02 U252 ( .A0(nextClkTime[14]), .A1(n508), .Z(n507));
Q_INV U253 ( .A(nextTbTime[14]), .Z(n508));
Q_OR02 U254 ( .A0(nextClkTime[15]), .A1(n511), .Z(n509));
Q_AN02 U255 ( .A0(nextClkTime[15]), .A1(n511), .Z(n510));
Q_INV U256 ( .A(nextTbTime[15]), .Z(n511));
Q_AN03 U257 ( .A0(n515), .A1(n517), .A2(n427), .Z(n421));
Q_OA21 U258 ( .A0(n512), .A1(n513), .B0(n427), .Z(n426));
Q_AO21 U259 ( .A0(n526), .A1(n524), .B0(n527), .Z(n512));
Q_AN02 U260 ( .A0(n516), .A1(n521), .Z(n514));
Q_AO21 U261 ( .A0(n515), .A1(n518), .B0(n514), .Z(n513));
Q_AN02 U262 ( .A0(n516), .A1(n520), .Z(n515));
Q_AN02 U263 ( .A0(n526), .A1(n523), .Z(n516));
Q_OR02 U264 ( .A0(nextClkTime[16]), .A1(n519), .Z(n517));
Q_AN02 U265 ( .A0(nextClkTime[16]), .A1(n519), .Z(n518));
Q_INV U266 ( .A(nextTbTime[16]), .Z(n519));
Q_OR02 U267 ( .A0(nextClkTime[17]), .A1(n522), .Z(n520));
Q_AN02 U268 ( .A0(nextClkTime[17]), .A1(n522), .Z(n521));
Q_INV U269 ( .A(nextTbTime[17]), .Z(n522));
Q_OR02 U270 ( .A0(nextClkTime[18]), .A1(n525), .Z(n523));
Q_AN02 U271 ( .A0(nextClkTime[18]), .A1(n525), .Z(n524));
Q_INV U272 ( .A(nextTbTime[18]), .Z(n525));
Q_OR02 U273 ( .A0(nextClkTime[19]), .A1(n528), .Z(n526));
Q_AN02 U274 ( .A0(nextClkTime[19]), .A1(n528), .Z(n527));
Q_INV U275 ( .A(nextTbTime[19]), .Z(n528));
Q_AN03 U276 ( .A0(n532), .A1(n534), .A2(n428), .Z(n427));
Q_OA21 U277 ( .A0(n529), .A1(n530), .B0(n428), .Z(n425));
Q_AO21 U278 ( .A0(n543), .A1(n541), .B0(n544), .Z(n529));
Q_AN02 U279 ( .A0(n533), .A1(n538), .Z(n531));
Q_AO21 U280 ( .A0(n532), .A1(n535), .B0(n531), .Z(n530));
Q_AN02 U281 ( .A0(n533), .A1(n537), .Z(n532));
Q_AN02 U282 ( .A0(n543), .A1(n540), .Z(n533));
Q_OR02 U283 ( .A0(nextClkTime[20]), .A1(n536), .Z(n534));
Q_AN02 U284 ( .A0(nextClkTime[20]), .A1(n536), .Z(n535));
Q_INV U285 ( .A(nextTbTime[20]), .Z(n536));
Q_OR02 U286 ( .A0(nextClkTime[21]), .A1(n539), .Z(n537));
Q_AN02 U287 ( .A0(nextClkTime[21]), .A1(n539), .Z(n538));
Q_INV U288 ( .A(nextTbTime[21]), .Z(n539));
Q_OR02 U289 ( .A0(nextClkTime[22]), .A1(n542), .Z(n540));
Q_AN02 U290 ( .A0(nextClkTime[22]), .A1(n542), .Z(n541));
Q_INV U291 ( .A(nextTbTime[22]), .Z(n542));
Q_OR02 U292 ( .A0(nextClkTime[23]), .A1(n545), .Z(n543));
Q_AN02 U293 ( .A0(nextClkTime[23]), .A1(n545), .Z(n544));
Q_INV U294 ( .A(nextTbTime[23]), .Z(n545));
Q_AN03 U295 ( .A0(n549), .A1(n551), .A2(n563), .Z(n428));
Q_OA21 U296 ( .A0(n546), .A1(n547), .B0(n563), .Z(n424));
Q_AO21 U297 ( .A0(n560), .A1(n558), .B0(n561), .Z(n546));
Q_AN02 U298 ( .A0(n550), .A1(n555), .Z(n548));
Q_AO21 U299 ( .A0(n549), .A1(n552), .B0(n548), .Z(n547));
Q_AN02 U300 ( .A0(n550), .A1(n554), .Z(n549));
Q_AN02 U301 ( .A0(n560), .A1(n557), .Z(n550));
Q_OR02 U302 ( .A0(nextClkTime[24]), .A1(n553), .Z(n551));
Q_AN02 U303 ( .A0(nextClkTime[24]), .A1(n553), .Z(n552));
Q_INV U304 ( .A(nextTbTime[24]), .Z(n553));
Q_OR02 U305 ( .A0(nextClkTime[25]), .A1(n556), .Z(n554));
Q_AN02 U306 ( .A0(nextClkTime[25]), .A1(n556), .Z(n555));
Q_INV U307 ( .A(nextTbTime[25]), .Z(n556));
Q_OR02 U308 ( .A0(nextClkTime[26]), .A1(n559), .Z(n557));
Q_AN02 U309 ( .A0(nextClkTime[26]), .A1(n559), .Z(n558));
Q_INV U310 ( .A(nextTbTime[26]), .Z(n559));
Q_OR02 U311 ( .A0(nextClkTime[27]), .A1(n562), .Z(n560));
Q_AN02 U312 ( .A0(nextClkTime[27]), .A1(n562), .Z(n561));
Q_INV U313 ( .A(nextTbTime[27]), .Z(n562));
Q_AN02 U314 ( .A0(n567), .A1(n569), .Z(n563));
Q_OR03 U315 ( .A0(n564), .A1(n565), .A2(n424), .Z(n423));
Q_AO21 U316 ( .A0(n578), .A1(n576), .B0(n579), .Z(n564));
Q_AN02 U317 ( .A0(n568), .A1(n573), .Z(n566));
Q_AO21 U318 ( .A0(n567), .A1(n570), .B0(n566), .Z(n565));
Q_AN02 U319 ( .A0(n568), .A1(n572), .Z(n567));
Q_AN02 U320 ( .A0(n578), .A1(n575), .Z(n568));
Q_OR02 U321 ( .A0(nextClkTime[28]), .A1(n571), .Z(n569));
Q_AN02 U322 ( .A0(nextClkTime[28]), .A1(n571), .Z(n570));
Q_INV U323 ( .A(nextTbTime[28]), .Z(n571));
Q_OR02 U324 ( .A0(nextClkTime[29]), .A1(n574), .Z(n572));
Q_AN02 U325 ( .A0(nextClkTime[29]), .A1(n574), .Z(n573));
Q_INV U326 ( .A(nextTbTime[29]), .Z(n574));
Q_OR02 U327 ( .A0(nextClkTime[30]), .A1(n577), .Z(n575));
Q_AN02 U328 ( .A0(nextClkTime[30]), .A1(n577), .Z(n576));
Q_INV U329 ( .A(nextTbTime[30]), .Z(n577));
Q_OR02 U330 ( .A0(nextClkTime[31]), .A1(n580), .Z(n578));
Q_AN02 U331 ( .A0(nextClkTime[31]), .A1(n580), .Z(n579));
Q_INV U332 ( .A(nextTbTime[31]), .Z(n580));
Q_AN03 U333 ( .A0(n584), .A1(n586), .A2(n435), .Z(n429));
Q_OA21 U334 ( .A0(n581), .A1(n582), .B0(n435), .Z(n434));
Q_AO21 U335 ( .A0(n595), .A1(n593), .B0(n596), .Z(n581));
Q_AN02 U336 ( .A0(n585), .A1(n590), .Z(n583));
Q_AO21 U337 ( .A0(n584), .A1(n587), .B0(n583), .Z(n582));
Q_AN02 U338 ( .A0(n585), .A1(n589), .Z(n584));
Q_AN02 U339 ( .A0(n595), .A1(n592), .Z(n585));
Q_OR02 U340 ( .A0(nextClkTime[32]), .A1(n588), .Z(n586));
Q_AN02 U341 ( .A0(nextClkTime[32]), .A1(n588), .Z(n587));
Q_INV U342 ( .A(nextTbTime[32]), .Z(n588));
Q_OR02 U343 ( .A0(nextClkTime[33]), .A1(n591), .Z(n589));
Q_AN02 U344 ( .A0(nextClkTime[33]), .A1(n591), .Z(n590));
Q_INV U345 ( .A(nextTbTime[33]), .Z(n591));
Q_OR02 U346 ( .A0(nextClkTime[34]), .A1(n594), .Z(n592));
Q_AN02 U347 ( .A0(nextClkTime[34]), .A1(n594), .Z(n593));
Q_INV U348 ( .A(nextTbTime[34]), .Z(n594));
Q_OR02 U349 ( .A0(nextClkTime[35]), .A1(n597), .Z(n595));
Q_AN02 U350 ( .A0(nextClkTime[35]), .A1(n597), .Z(n596));
Q_INV U351 ( .A(nextTbTime[35]), .Z(n597));
Q_AN03 U352 ( .A0(n601), .A1(n603), .A2(n436), .Z(n435));
Q_OA21 U353 ( .A0(n598), .A1(n599), .B0(n436), .Z(n433));
Q_AO21 U354 ( .A0(n612), .A1(n610), .B0(n613), .Z(n598));
Q_AN02 U355 ( .A0(n602), .A1(n607), .Z(n600));
Q_AO21 U356 ( .A0(n601), .A1(n604), .B0(n600), .Z(n599));
Q_AN02 U357 ( .A0(n602), .A1(n606), .Z(n601));
Q_AN02 U358 ( .A0(n612), .A1(n609), .Z(n602));
Q_OR02 U359 ( .A0(nextClkTime[36]), .A1(n605), .Z(n603));
Q_AN02 U360 ( .A0(nextClkTime[36]), .A1(n605), .Z(n604));
Q_INV U361 ( .A(nextTbTime[36]), .Z(n605));
Q_OR02 U362 ( .A0(nextClkTime[37]), .A1(n608), .Z(n606));
Q_AN02 U363 ( .A0(nextClkTime[37]), .A1(n608), .Z(n607));
Q_INV U364 ( .A(nextTbTime[37]), .Z(n608));
Q_OR02 U365 ( .A0(nextClkTime[38]), .A1(n611), .Z(n609));
Q_AN02 U366 ( .A0(nextClkTime[38]), .A1(n611), .Z(n610));
Q_INV U367 ( .A(nextTbTime[38]), .Z(n611));
Q_OR02 U368 ( .A0(nextClkTime[39]), .A1(n614), .Z(n612));
Q_AN02 U369 ( .A0(nextClkTime[39]), .A1(n614), .Z(n613));
Q_INV U370 ( .A(nextTbTime[39]), .Z(n614));
Q_AN03 U371 ( .A0(n618), .A1(n620), .A2(n632), .Z(n436));
Q_OA21 U372 ( .A0(n615), .A1(n616), .B0(n632), .Z(n432));
Q_AO21 U373 ( .A0(n629), .A1(n627), .B0(n630), .Z(n615));
Q_AN02 U374 ( .A0(n619), .A1(n624), .Z(n617));
Q_AO21 U375 ( .A0(n618), .A1(n621), .B0(n617), .Z(n616));
Q_AN02 U376 ( .A0(n619), .A1(n623), .Z(n618));
Q_AN02 U377 ( .A0(n629), .A1(n626), .Z(n619));
Q_OR02 U378 ( .A0(nextClkTime[40]), .A1(n622), .Z(n620));
Q_AN02 U379 ( .A0(nextClkTime[40]), .A1(n622), .Z(n621));
Q_INV U380 ( .A(nextTbTime[40]), .Z(n622));
Q_OR02 U381 ( .A0(nextClkTime[41]), .A1(n625), .Z(n623));
Q_AN02 U382 ( .A0(nextClkTime[41]), .A1(n625), .Z(n624));
Q_INV U383 ( .A(nextTbTime[41]), .Z(n625));
Q_OR02 U384 ( .A0(nextClkTime[42]), .A1(n628), .Z(n626));
Q_AN02 U385 ( .A0(nextClkTime[42]), .A1(n628), .Z(n627));
Q_INV U386 ( .A(nextTbTime[42]), .Z(n628));
Q_OR02 U387 ( .A0(nextClkTime[43]), .A1(n631), .Z(n629));
Q_AN02 U388 ( .A0(nextClkTime[43]), .A1(n631), .Z(n630));
Q_INV U389 ( .A(nextTbTime[43]), .Z(n631));
Q_AN02 U390 ( .A0(n636), .A1(n638), .Z(n632));
Q_OR03 U391 ( .A0(n633), .A1(n634), .A2(n432), .Z(n431));
Q_AO21 U392 ( .A0(n647), .A1(n645), .B0(n648), .Z(n633));
Q_AN02 U393 ( .A0(n637), .A1(n642), .Z(n635));
Q_AO21 U394 ( .A0(n636), .A1(n639), .B0(n635), .Z(n634));
Q_AN02 U395 ( .A0(n637), .A1(n641), .Z(n636));
Q_AN02 U396 ( .A0(n647), .A1(n644), .Z(n637));
Q_OR02 U397 ( .A0(nextClkTime[44]), .A1(n640), .Z(n638));
Q_AN02 U398 ( .A0(nextClkTime[44]), .A1(n640), .Z(n639));
Q_INV U399 ( .A(nextTbTime[44]), .Z(n640));
Q_OR02 U400 ( .A0(nextClkTime[45]), .A1(n643), .Z(n641));
Q_AN02 U401 ( .A0(nextClkTime[45]), .A1(n643), .Z(n642));
Q_INV U402 ( .A(nextTbTime[45]), .Z(n643));
Q_OR02 U403 ( .A0(nextClkTime[46]), .A1(n646), .Z(n644));
Q_AN02 U404 ( .A0(nextClkTime[46]), .A1(n646), .Z(n645));
Q_INV U405 ( .A(nextTbTime[46]), .Z(n646));
Q_OR02 U406 ( .A0(nextClkTime[47]), .A1(n649), .Z(n647));
Q_AN02 U407 ( .A0(nextClkTime[47]), .A1(n649), .Z(n648));
Q_INV U408 ( .A(nextTbTime[47]), .Z(n649));
Q_AN03 U409 ( .A0(n653), .A1(n655), .A2(n443), .Z(n437));
Q_OA21 U410 ( .A0(n650), .A1(n651), .B0(n443), .Z(n442));
Q_AO21 U411 ( .A0(n664), .A1(n662), .B0(n665), .Z(n650));
Q_AN02 U412 ( .A0(n654), .A1(n659), .Z(n652));
Q_AO21 U413 ( .A0(n653), .A1(n656), .B0(n652), .Z(n651));
Q_AN02 U414 ( .A0(n654), .A1(n658), .Z(n653));
Q_AN02 U415 ( .A0(n664), .A1(n661), .Z(n654));
Q_OR02 U416 ( .A0(nextClkTime[48]), .A1(n657), .Z(n655));
Q_AN02 U417 ( .A0(nextClkTime[48]), .A1(n657), .Z(n656));
Q_INV U418 ( .A(nextTbTime[48]), .Z(n657));
Q_OR02 U419 ( .A0(nextClkTime[49]), .A1(n660), .Z(n658));
Q_AN02 U420 ( .A0(nextClkTime[49]), .A1(n660), .Z(n659));
Q_INV U421 ( .A(nextTbTime[49]), .Z(n660));
Q_OR02 U422 ( .A0(nextClkTime[50]), .A1(n663), .Z(n661));
Q_AN02 U423 ( .A0(nextClkTime[50]), .A1(n663), .Z(n662));
Q_INV U424 ( .A(nextTbTime[50]), .Z(n663));
Q_OR02 U425 ( .A0(nextClkTime[51]), .A1(n666), .Z(n664));
Q_AN02 U426 ( .A0(nextClkTime[51]), .A1(n666), .Z(n665));
Q_INV U427 ( .A(nextTbTime[51]), .Z(n666));
Q_AN03 U428 ( .A0(n670), .A1(n672), .A2(n444), .Z(n443));
Q_OA21 U429 ( .A0(n667), .A1(n668), .B0(n444), .Z(n441));
Q_AO21 U430 ( .A0(n681), .A1(n679), .B0(n682), .Z(n667));
Q_AN02 U431 ( .A0(n671), .A1(n676), .Z(n669));
Q_AO21 U432 ( .A0(n670), .A1(n673), .B0(n669), .Z(n668));
Q_AN02 U433 ( .A0(n671), .A1(n675), .Z(n670));
Q_AN02 U434 ( .A0(n681), .A1(n678), .Z(n671));
Q_OR02 U435 ( .A0(nextClkTime[52]), .A1(n674), .Z(n672));
Q_AN02 U436 ( .A0(nextClkTime[52]), .A1(n674), .Z(n673));
Q_INV U437 ( .A(nextTbTime[52]), .Z(n674));
Q_OR02 U438 ( .A0(nextClkTime[53]), .A1(n677), .Z(n675));
Q_AN02 U439 ( .A0(nextClkTime[53]), .A1(n677), .Z(n676));
Q_INV U440 ( .A(nextTbTime[53]), .Z(n677));
Q_OR02 U441 ( .A0(nextClkTime[54]), .A1(n680), .Z(n678));
Q_AN02 U442 ( .A0(nextClkTime[54]), .A1(n680), .Z(n679));
Q_INV U443 ( .A(nextTbTime[54]), .Z(n680));
Q_OR02 U444 ( .A0(nextClkTime[55]), .A1(n683), .Z(n681));
Q_AN02 U445 ( .A0(nextClkTime[55]), .A1(n683), .Z(n682));
Q_INV U446 ( .A(nextTbTime[55]), .Z(n683));
Q_AN03 U447 ( .A0(n687), .A1(n689), .A2(n701), .Z(n444));
Q_OA21 U448 ( .A0(n684), .A1(n685), .B0(n701), .Z(n440));
Q_AO21 U449 ( .A0(n698), .A1(n696), .B0(n699), .Z(n684));
Q_AN02 U450 ( .A0(n688), .A1(n693), .Z(n686));
Q_AO21 U451 ( .A0(n687), .A1(n690), .B0(n686), .Z(n685));
Q_AN02 U452 ( .A0(n688), .A1(n692), .Z(n687));
Q_AN02 U453 ( .A0(n698), .A1(n695), .Z(n688));
Q_OR02 U454 ( .A0(nextClkTime[56]), .A1(n691), .Z(n689));
Q_AN02 U455 ( .A0(nextClkTime[56]), .A1(n691), .Z(n690));
Q_INV U456 ( .A(nextTbTime[56]), .Z(n691));
Q_OR02 U457 ( .A0(nextClkTime[57]), .A1(n694), .Z(n692));
Q_AN02 U458 ( .A0(nextClkTime[57]), .A1(n694), .Z(n693));
Q_INV U459 ( .A(nextTbTime[57]), .Z(n694));
Q_OR02 U460 ( .A0(nextClkTime[58]), .A1(n697), .Z(n695));
Q_AN02 U461 ( .A0(nextClkTime[58]), .A1(n697), .Z(n696));
Q_INV U462 ( .A(nextTbTime[58]), .Z(n697));
Q_OR02 U463 ( .A0(nextClkTime[59]), .A1(n700), .Z(n698));
Q_AN02 U464 ( .A0(nextClkTime[59]), .A1(n700), .Z(n699));
Q_INV U465 ( .A(nextTbTime[59]), .Z(n700));
Q_AN02 U466 ( .A0(n705), .A1(n707), .Z(n701));
Q_OR03 U467 ( .A0(n702), .A1(n703), .A2(n440), .Z(n439));
Q_AO21 U468 ( .A0(n716), .A1(n714), .B0(n717), .Z(n702));
Q_AN02 U469 ( .A0(n706), .A1(n711), .Z(n704));
Q_AO21 U470 ( .A0(n705), .A1(n708), .B0(n704), .Z(n703));
Q_AN02 U471 ( .A0(n706), .A1(n710), .Z(n705));
Q_AN02 U472 ( .A0(n716), .A1(n713), .Z(n706));
Q_OR02 U473 ( .A0(nextClkTime[60]), .A1(n709), .Z(n707));
Q_AN02 U474 ( .A0(nextClkTime[60]), .A1(n709), .Z(n708));
Q_INV U475 ( .A(nextTbTime[60]), .Z(n709));
Q_OR02 U476 ( .A0(nextClkTime[61]), .A1(n712), .Z(n710));
Q_AN02 U477 ( .A0(nextClkTime[61]), .A1(n712), .Z(n711));
Q_INV U478 ( .A(nextTbTime[61]), .Z(n712));
Q_OR02 U479 ( .A0(nextClkTime[62]), .A1(n715), .Z(n713));
Q_AN02 U480 ( .A0(nextClkTime[62]), .A1(n715), .Z(n714));
Q_INV U481 ( .A(nextTbTime[62]), .Z(n715));
Q_OR02 U482 ( .A0(nextClkTime[63]), .A1(n718), .Z(n716));
Q_AN02 U483 ( .A0(nextClkTime[63]), .A1(n718), .Z(n717));
Q_INV U484 ( .A(nextTbTime[63]), .Z(n718));
axis_eclk ap ( eClk, VCC);
ixc_assign_64 _zz_strnp_0 ( nextTime[63:0], nextDutTime[63:0]);
Q_AN02 U487 ( .A0(runClk), .A1(minT[0]), .Z(delta32[0]));
Q_AN02 U488 ( .A0(runClk), .A1(minT[1]), .Z(delta32[1]));
Q_AN02 U489 ( .A0(runClk), .A1(minT[2]), .Z(delta32[2]));
Q_AN02 U490 ( .A0(runClk), .A1(minT[3]), .Z(delta32[3]));
Q_AN02 U491 ( .A0(runClk), .A1(minT[4]), .Z(delta32[4]));
Q_AN02 U492 ( .A0(runClk), .A1(minT[5]), .Z(delta32[5]));
Q_AN02 U493 ( .A0(runClk), .A1(minT[6]), .Z(delta32[6]));
Q_AN02 U494 ( .A0(runClk), .A1(minT[7]), .Z(delta32[7]));
Q_AN02 U495 ( .A0(runClk), .A1(minT[8]), .Z(delta32[8]));
Q_AN02 U496 ( .A0(runClk), .A1(minT[9]), .Z(delta32[9]));
Q_AN02 U497 ( .A0(runClk), .A1(minT[10]), .Z(delta32[10]));
Q_MX02 U498 ( .S(runClk), .A0(nextTbTime[0]), .A1(nextClkTime[0]), .Z(nextDutTime[0]));
Q_MX02 U499 ( .S(runClk), .A0(nextTbTime[1]), .A1(nextClkTime[1]), .Z(nextDutTime[1]));
Q_MX02 U500 ( .S(runClk), .A0(nextTbTime[2]), .A1(nextClkTime[2]), .Z(nextDutTime[2]));
Q_MX02 U501 ( .S(runClk), .A0(nextTbTime[3]), .A1(nextClkTime[3]), .Z(nextDutTime[3]));
Q_MX02 U502 ( .S(runClk), .A0(nextTbTime[4]), .A1(nextClkTime[4]), .Z(nextDutTime[4]));
Q_MX02 U503 ( .S(runClk), .A0(nextTbTime[5]), .A1(nextClkTime[5]), .Z(nextDutTime[5]));
Q_MX02 U504 ( .S(runClk), .A0(nextTbTime[6]), .A1(nextClkTime[6]), .Z(nextDutTime[6]));
Q_MX02 U505 ( .S(runClk), .A0(nextTbTime[7]), .A1(nextClkTime[7]), .Z(nextDutTime[7]));
Q_MX02 U506 ( .S(runClk), .A0(nextTbTime[8]), .A1(nextClkTime[8]), .Z(nextDutTime[8]));
Q_MX02 U507 ( .S(runClk), .A0(nextTbTime[9]), .A1(nextClkTime[9]), .Z(nextDutTime[9]));
Q_MX02 U508 ( .S(runClk), .A0(nextTbTime[10]), .A1(nextClkTime[10]), .Z(nextDutTime[10]));
Q_MX02 U509 ( .S(runClk), .A0(nextTbTime[11]), .A1(nextClkTime[11]), .Z(nextDutTime[11]));
Q_MX02 U510 ( .S(runClk), .A0(nextTbTime[12]), .A1(nextClkTime[12]), .Z(nextDutTime[12]));
Q_MX02 U511 ( .S(runClk), .A0(nextTbTime[13]), .A1(nextClkTime[13]), .Z(nextDutTime[13]));
Q_MX02 U512 ( .S(runClk), .A0(nextTbTime[14]), .A1(nextClkTime[14]), .Z(nextDutTime[14]));
Q_MX02 U513 ( .S(runClk), .A0(nextTbTime[15]), .A1(nextClkTime[15]), .Z(nextDutTime[15]));
Q_MX02 U514 ( .S(runClk), .A0(nextTbTime[16]), .A1(nextClkTime[16]), .Z(nextDutTime[16]));
Q_MX02 U515 ( .S(runClk), .A0(nextTbTime[17]), .A1(nextClkTime[17]), .Z(nextDutTime[17]));
Q_MX02 U516 ( .S(runClk), .A0(nextTbTime[18]), .A1(nextClkTime[18]), .Z(nextDutTime[18]));
Q_MX02 U517 ( .S(runClk), .A0(nextTbTime[19]), .A1(nextClkTime[19]), .Z(nextDutTime[19]));
Q_MX02 U518 ( .S(runClk), .A0(nextTbTime[20]), .A1(nextClkTime[20]), .Z(nextDutTime[20]));
Q_MX02 U519 ( .S(runClk), .A0(nextTbTime[21]), .A1(nextClkTime[21]), .Z(nextDutTime[21]));
Q_MX02 U520 ( .S(runClk), .A0(nextTbTime[22]), .A1(nextClkTime[22]), .Z(nextDutTime[22]));
Q_MX02 U521 ( .S(runClk), .A0(nextTbTime[23]), .A1(nextClkTime[23]), .Z(nextDutTime[23]));
Q_MX02 U522 ( .S(runClk), .A0(nextTbTime[24]), .A1(nextClkTime[24]), .Z(nextDutTime[24]));
Q_MX02 U523 ( .S(runClk), .A0(nextTbTime[25]), .A1(nextClkTime[25]), .Z(nextDutTime[25]));
Q_MX02 U524 ( .S(runClk), .A0(nextTbTime[26]), .A1(nextClkTime[26]), .Z(nextDutTime[26]));
Q_MX02 U525 ( .S(runClk), .A0(nextTbTime[27]), .A1(nextClkTime[27]), .Z(nextDutTime[27]));
Q_MX02 U526 ( .S(runClk), .A0(nextTbTime[28]), .A1(nextClkTime[28]), .Z(nextDutTime[28]));
Q_MX02 U527 ( .S(runClk), .A0(nextTbTime[29]), .A1(nextClkTime[29]), .Z(nextDutTime[29]));
Q_MX02 U528 ( .S(runClk), .A0(nextTbTime[30]), .A1(nextClkTime[30]), .Z(nextDutTime[30]));
Q_MX02 U529 ( .S(runClk), .A0(nextTbTime[31]), .A1(nextClkTime[31]), .Z(nextDutTime[31]));
Q_MX02 U530 ( .S(runClk), .A0(nextTbTime[32]), .A1(nextClkTime[32]), .Z(nextDutTime[32]));
Q_MX02 U531 ( .S(runClk), .A0(nextTbTime[33]), .A1(nextClkTime[33]), .Z(nextDutTime[33]));
Q_MX02 U532 ( .S(runClk), .A0(nextTbTime[34]), .A1(nextClkTime[34]), .Z(nextDutTime[34]));
Q_MX02 U533 ( .S(runClk), .A0(nextTbTime[35]), .A1(nextClkTime[35]), .Z(nextDutTime[35]));
Q_MX02 U534 ( .S(runClk), .A0(nextTbTime[36]), .A1(nextClkTime[36]), .Z(nextDutTime[36]));
Q_MX02 U535 ( .S(runClk), .A0(nextTbTime[37]), .A1(nextClkTime[37]), .Z(nextDutTime[37]));
Q_MX02 U536 ( .S(runClk), .A0(nextTbTime[38]), .A1(nextClkTime[38]), .Z(nextDutTime[38]));
Q_MX02 U537 ( .S(runClk), .A0(nextTbTime[39]), .A1(nextClkTime[39]), .Z(nextDutTime[39]));
Q_MX02 U538 ( .S(runClk), .A0(nextTbTime[40]), .A1(nextClkTime[40]), .Z(nextDutTime[40]));
Q_MX02 U539 ( .S(runClk), .A0(nextTbTime[41]), .A1(nextClkTime[41]), .Z(nextDutTime[41]));
Q_MX02 U540 ( .S(runClk), .A0(nextTbTime[42]), .A1(nextClkTime[42]), .Z(nextDutTime[42]));
Q_MX02 U541 ( .S(runClk), .A0(nextTbTime[43]), .A1(nextClkTime[43]), .Z(nextDutTime[43]));
Q_MX02 U542 ( .S(runClk), .A0(nextTbTime[44]), .A1(nextClkTime[44]), .Z(nextDutTime[44]));
Q_MX02 U543 ( .S(runClk), .A0(nextTbTime[45]), .A1(nextClkTime[45]), .Z(nextDutTime[45]));
Q_MX02 U544 ( .S(runClk), .A0(nextTbTime[46]), .A1(nextClkTime[46]), .Z(nextDutTime[46]));
Q_MX02 U545 ( .S(runClk), .A0(nextTbTime[47]), .A1(nextClkTime[47]), .Z(nextDutTime[47]));
Q_MX02 U546 ( .S(runClk), .A0(nextTbTime[48]), .A1(nextClkTime[48]), .Z(nextDutTime[48]));
Q_MX02 U547 ( .S(runClk), .A0(nextTbTime[49]), .A1(nextClkTime[49]), .Z(nextDutTime[49]));
Q_MX02 U548 ( .S(runClk), .A0(nextTbTime[50]), .A1(nextClkTime[50]), .Z(nextDutTime[50]));
Q_MX02 U549 ( .S(runClk), .A0(nextTbTime[51]), .A1(nextClkTime[51]), .Z(nextDutTime[51]));
Q_MX02 U550 ( .S(runClk), .A0(nextTbTime[52]), .A1(nextClkTime[52]), .Z(nextDutTime[52]));
Q_MX02 U551 ( .S(runClk), .A0(nextTbTime[53]), .A1(nextClkTime[53]), .Z(nextDutTime[53]));
Q_MX02 U552 ( .S(runClk), .A0(nextTbTime[54]), .A1(nextClkTime[54]), .Z(nextDutTime[54]));
Q_MX02 U553 ( .S(runClk), .A0(nextTbTime[55]), .A1(nextClkTime[55]), .Z(nextDutTime[55]));
Q_MX02 U554 ( .S(runClk), .A0(nextTbTime[56]), .A1(nextClkTime[56]), .Z(nextDutTime[56]));
Q_MX02 U555 ( .S(runClk), .A0(nextTbTime[57]), .A1(nextClkTime[57]), .Z(nextDutTime[57]));
Q_MX02 U556 ( .S(runClk), .A0(nextTbTime[58]), .A1(nextClkTime[58]), .Z(nextDutTime[58]));
Q_MX02 U557 ( .S(runClk), .A0(nextTbTime[59]), .A1(nextClkTime[59]), .Z(nextDutTime[59]));
Q_MX02 U558 ( .S(runClk), .A0(nextTbTime[60]), .A1(nextClkTime[60]), .Z(nextDutTime[60]));
Q_MX02 U559 ( .S(runClk), .A0(nextTbTime[61]), .A1(nextClkTime[61]), .Z(nextDutTime[61]));
Q_MX02 U560 ( .S(runClk), .A0(nextTbTime[62]), .A1(nextClkTime[62]), .Z(nextDutTime[62]));
Q_MX02 U561 ( .S(runClk), .A0(nextTbTime[63]), .A1(nextClkTime[63]), .Z(nextDutTime[63]));
Q_NR02 U562 ( .A0(n717), .A1(n714), .Z(n409));
Q_AN02 U563 ( .A0(n409), .A1(n3), .Z(n408));
Q_AO21 U564 ( .A0(n408), .A1(n4), .B0(n407), .Z(n406));
Q_AN02 U565 ( .A0(n409), .A1(n2), .Z(n407));
Q_NR02 U566 ( .A0(n717), .A1(n713), .Z(n405));
Q_OR03 U567 ( .A0(n1), .A1(n405), .A2(n406), .Z(n404));
Q_AN02 U568 ( .A0(n408), .A1(n5), .Z(n403));
Q_NR02 U569 ( .A0(n699), .A1(n696), .Z(n402));
Q_AN02 U570 ( .A0(n402), .A1(n8), .Z(n401));
Q_AO21 U571 ( .A0(n401), .A1(n9), .B0(n400), .Z(n399));
Q_AN02 U572 ( .A0(n402), .A1(n7), .Z(n400));
Q_NR02 U573 ( .A0(n699), .A1(n695), .Z(n398));
Q_OR03 U574 ( .A0(n6), .A1(n398), .A2(n399), .Z(n397));
Q_AN03 U575 ( .A0(n401), .A1(n10), .A2(n403), .Z(n308));
Q_NR02 U576 ( .A0(n682), .A1(n679), .Z(n396));
Q_AN02 U577 ( .A0(n396), .A1(n13), .Z(n395));
Q_AO21 U578 ( .A0(n395), .A1(n14), .B0(n394), .Z(n393));
Q_AN02 U579 ( .A0(n396), .A1(n12), .Z(n394));
Q_NR02 U580 ( .A0(n682), .A1(n678), .Z(n392));
Q_OR03 U581 ( .A0(n11), .A1(n392), .A2(n393), .Z(n391));
Q_AN03 U582 ( .A0(n395), .A1(n15), .A2(n308), .Z(n307));
Q_NR02 U583 ( .A0(n665), .A1(n662), .Z(n390));
Q_AN02 U584 ( .A0(n390), .A1(n18), .Z(n389));
Q_AO21 U585 ( .A0(n389), .A1(n19), .B0(n388), .Z(n387));
Q_AN02 U586 ( .A0(n390), .A1(n17), .Z(n388));
Q_NR02 U587 ( .A0(n665), .A1(n661), .Z(n386));
Q_OR03 U588 ( .A0(n16), .A1(n386), .A2(n387), .Z(n385));
Q_AN03 U589 ( .A0(n389), .A1(n20), .A2(n307), .Z(n303));
Q_NR02 U590 ( .A0(n648), .A1(n645), .Z(n384));
Q_AN02 U591 ( .A0(n384), .A1(n23), .Z(n383));
Q_AO21 U592 ( .A0(n383), .A1(n24), .B0(n382), .Z(n381));
Q_AN02 U593 ( .A0(n384), .A1(n22), .Z(n382));
Q_NR02 U594 ( .A0(n648), .A1(n644), .Z(n380));
Q_OR03 U595 ( .A0(n21), .A1(n380), .A2(n381), .Z(n379));
Q_AN02 U596 ( .A0(n383), .A1(n25), .Z(n378));
Q_NR02 U597 ( .A0(n630), .A1(n627), .Z(n377));
Q_AN02 U598 ( .A0(n377), .A1(n28), .Z(n376));
Q_AO21 U599 ( .A0(n376), .A1(n29), .B0(n375), .Z(n374));
Q_AN02 U600 ( .A0(n377), .A1(n27), .Z(n375));
Q_NR02 U601 ( .A0(n630), .A1(n626), .Z(n373));
Q_OR03 U602 ( .A0(n26), .A1(n373), .A2(n374), .Z(n372));
Q_AN03 U603 ( .A0(n376), .A1(n30), .A2(n378), .Z(n302));
Q_NR02 U604 ( .A0(n613), .A1(n610), .Z(n371));
Q_AN02 U605 ( .A0(n371), .A1(n33), .Z(n370));
Q_AO21 U606 ( .A0(n370), .A1(n34), .B0(n369), .Z(n368));
Q_AN02 U607 ( .A0(n371), .A1(n32), .Z(n369));
Q_NR02 U608 ( .A0(n613), .A1(n609), .Z(n367));
Q_OR03 U609 ( .A0(n31), .A1(n367), .A2(n368), .Z(n366));
Q_AN03 U610 ( .A0(n370), .A1(n35), .A2(n302), .Z(n301));
Q_NR02 U611 ( .A0(n596), .A1(n593), .Z(n365));
Q_AN02 U612 ( .A0(n365), .A1(n38), .Z(n364));
Q_AO21 U613 ( .A0(n364), .A1(n39), .B0(n363), .Z(n362));
Q_AN02 U614 ( .A0(n365), .A1(n37), .Z(n363));
Q_NR02 U615 ( .A0(n596), .A1(n592), .Z(n361));
Q_OR03 U616 ( .A0(n36), .A1(n361), .A2(n362), .Z(n360));
Q_AN03 U617 ( .A0(n364), .A1(n40), .A2(n301), .Z(n297));
Q_NR02 U618 ( .A0(n579), .A1(n576), .Z(n359));
Q_AN02 U619 ( .A0(n359), .A1(n43), .Z(n358));
Q_AO21 U620 ( .A0(n358), .A1(n44), .B0(n357), .Z(n356));
Q_AN02 U621 ( .A0(n359), .A1(n42), .Z(n357));
Q_NR02 U622 ( .A0(n579), .A1(n575), .Z(n355));
Q_OR03 U623 ( .A0(n41), .A1(n355), .A2(n356), .Z(n354));
Q_AN02 U624 ( .A0(n358), .A1(n45), .Z(n353));
Q_NR02 U625 ( .A0(n561), .A1(n558), .Z(n352));
Q_AN02 U626 ( .A0(n352), .A1(n48), .Z(n351));
Q_AO21 U627 ( .A0(n351), .A1(n49), .B0(n350), .Z(n349));
Q_AN02 U628 ( .A0(n352), .A1(n47), .Z(n350));
Q_NR02 U629 ( .A0(n561), .A1(n557), .Z(n348));
Q_OR03 U630 ( .A0(n46), .A1(n348), .A2(n349), .Z(n347));
Q_AN03 U631 ( .A0(n351), .A1(n50), .A2(n353), .Z(n296));
Q_NR02 U632 ( .A0(n544), .A1(n541), .Z(n346));
Q_AN02 U633 ( .A0(n346), .A1(n53), .Z(n345));
Q_AO21 U634 ( .A0(n345), .A1(n54), .B0(n344), .Z(n343));
Q_AN02 U635 ( .A0(n346), .A1(n52), .Z(n344));
Q_NR02 U636 ( .A0(n544), .A1(n540), .Z(n342));
Q_OR03 U637 ( .A0(n51), .A1(n342), .A2(n343), .Z(n341));
Q_AN03 U638 ( .A0(n345), .A1(n55), .A2(n296), .Z(n295));
Q_NR02 U639 ( .A0(n527), .A1(n524), .Z(n340));
Q_AN02 U640 ( .A0(n340), .A1(n58), .Z(n339));
Q_AO21 U641 ( .A0(n339), .A1(n59), .B0(n338), .Z(n337));
Q_AN02 U642 ( .A0(n340), .A1(n57), .Z(n338));
Q_NR02 U643 ( .A0(n527), .A1(n523), .Z(n336));
Q_OR03 U644 ( .A0(n56), .A1(n336), .A2(n337), .Z(n335));
Q_AN03 U645 ( .A0(n339), .A1(n60), .A2(n295), .Z(n291));
Q_NR02 U646 ( .A0(n510), .A1(n507), .Z(n334));
Q_AN02 U647 ( .A0(n334), .A1(n63), .Z(n333));
Q_AO21 U648 ( .A0(n333), .A1(n64), .B0(n332), .Z(n331));
Q_AN02 U649 ( .A0(n334), .A1(n62), .Z(n332));
Q_NR02 U650 ( .A0(n510), .A1(n506), .Z(n330));
Q_OR03 U651 ( .A0(n61), .A1(n330), .A2(n331), .Z(n329));
Q_AN02 U652 ( .A0(n333), .A1(n65), .Z(n328));
Q_NR02 U653 ( .A0(n492), .A1(n489), .Z(n327));
Q_AN02 U654 ( .A0(n327), .A1(n68), .Z(n326));
Q_AO21 U655 ( .A0(n326), .A1(n69), .B0(n325), .Z(n324));
Q_AN02 U656 ( .A0(n327), .A1(n67), .Z(n325));
Q_NR02 U657 ( .A0(n492), .A1(n488), .Z(n323));
Q_OR03 U658 ( .A0(n66), .A1(n323), .A2(n324), .Z(n322));
Q_AN03 U659 ( .A0(n326), .A1(n70), .A2(n328), .Z(n290));
Q_NR02 U660 ( .A0(n475), .A1(n472), .Z(n321));
Q_AN02 U661 ( .A0(n321), .A1(n73), .Z(n320));
Q_AO21 U662 ( .A0(n320), .A1(n74), .B0(n319), .Z(n318));
Q_AN02 U663 ( .A0(n321), .A1(n72), .Z(n319));
Q_NR02 U664 ( .A0(n475), .A1(n471), .Z(n317));
Q_OR03 U665 ( .A0(n71), .A1(n317), .A2(n318), .Z(n316));
Q_AN03 U666 ( .A0(n320), .A1(n75), .A2(n290), .Z(n289));
Q_AN03 U667 ( .A0(nextTbTime[0]), .A1(n315), .A2(n313), .Z(n312));
Q_NR02 U668 ( .A0(n458), .A1(n455), .Z(n314));
Q_AN02 U669 ( .A0(n314), .A1(n78), .Z(n313));
Q_AO21 U670 ( .A0(n314), .A1(n77), .B0(n312), .Z(n311));
Q_NR02 U671 ( .A0(n458), .A1(n454), .Z(n310));
Q_OR03 U672 ( .A0(n76), .A1(n310), .A2(n311), .Z(n309));
Q_AO21 U673 ( .A0(n307), .A1(n385), .B0(n306), .Z(n305));
Q_AN02 U674 ( .A0(n308), .A1(n391), .Z(n306));
Q_AO21 U675 ( .A0(n403), .A1(n397), .B0(n404), .Z(n304));
Q_OR03 U676 ( .A0(n304), .A1(n305), .A2(n281), .Z(n280));
Q_AO21 U677 ( .A0(n301), .A1(n360), .B0(n300), .Z(n299));
Q_AN02 U678 ( .A0(n302), .A1(n366), .Z(n300));
Q_AO21 U679 ( .A0(n378), .A1(n372), .B0(n379), .Z(n298));
Q_OA21 U680 ( .A0(n298), .A1(n299), .B0(n303), .Z(n281));
Q_AO21 U681 ( .A0(n295), .A1(n335), .B0(n294), .Z(n293));
Q_AN02 U682 ( .A0(n296), .A1(n341), .Z(n294));
Q_AO21 U683 ( .A0(n353), .A1(n347), .B0(n354), .Z(n292));
Q_OA21 U684 ( .A0(n292), .A1(n293), .B0(n285), .Z(n282));
Q_AO21 U685 ( .A0(n289), .A1(n309), .B0(n288), .Z(n287));
Q_AN02 U686 ( .A0(n290), .A1(n316), .Z(n288));
Q_AO21 U687 ( .A0(n328), .A1(n322), .B0(n329), .Z(n286));
Q_OA21 U688 ( .A0(n286), .A1(n287), .B0(n284), .Z(n283));
Q_AN02 U689 ( .A0(n303), .A1(n297), .Z(n285));
Q_AN02 U690 ( .A0(n285), .A1(n291), .Z(n284));
Q_NR03 U691 ( .A0(n282), .A1(n283), .A2(n280), .Z(n279));
Q_OR02 U692 ( .A0(zminT), .A1(n279), .Z(stopEcm));
Q_MX02 U693 ( .S(runClk), .A0(lastClkTime[0]), .A1(nextClkTime[0]), .Z(lastClkTimeN[0]));
Q_MX02 U694 ( .S(runClk), .A0(lastClkTime[1]), .A1(nextClkTime[1]), .Z(lastClkTimeN[1]));
Q_MX02 U695 ( .S(runClk), .A0(lastClkTime[2]), .A1(nextClkTime[2]), .Z(lastClkTimeN[2]));
Q_MX02 U696 ( .S(runClk), .A0(lastClkTime[3]), .A1(nextClkTime[3]), .Z(lastClkTimeN[3]));
Q_MX02 U697 ( .S(runClk), .A0(lastClkTime[4]), .A1(nextClkTime[4]), .Z(lastClkTimeN[4]));
Q_MX02 U698 ( .S(runClk), .A0(lastClkTime[5]), .A1(nextClkTime[5]), .Z(lastClkTimeN[5]));
Q_MX02 U699 ( .S(runClk), .A0(lastClkTime[6]), .A1(nextClkTime[6]), .Z(lastClkTimeN[6]));
Q_MX02 U700 ( .S(runClk), .A0(lastClkTime[7]), .A1(nextClkTime[7]), .Z(lastClkTimeN[7]));
Q_MX02 U701 ( .S(runClk), .A0(lastClkTime[8]), .A1(nextClkTime[8]), .Z(lastClkTimeN[8]));
Q_MX02 U702 ( .S(runClk), .A0(lastClkTime[9]), .A1(nextClkTime[9]), .Z(lastClkTimeN[9]));
Q_MX02 U703 ( .S(runClk), .A0(lastClkTime[10]), .A1(nextClkTime[10]), .Z(lastClkTimeN[10]));
Q_MX02 U704 ( .S(runClk), .A0(lastClkTime[11]), .A1(nextClkTime[11]), .Z(lastClkTimeN[11]));
Q_MX02 U705 ( .S(runClk), .A0(lastClkTime[12]), .A1(nextClkTime[12]), .Z(lastClkTimeN[12]));
Q_MX02 U706 ( .S(runClk), .A0(lastClkTime[13]), .A1(nextClkTime[13]), .Z(lastClkTimeN[13]));
Q_MX02 U707 ( .S(runClk), .A0(lastClkTime[14]), .A1(nextClkTime[14]), .Z(lastClkTimeN[14]));
Q_MX02 U708 ( .S(runClk), .A0(lastClkTime[15]), .A1(nextClkTime[15]), .Z(lastClkTimeN[15]));
Q_MX02 U709 ( .S(runClk), .A0(lastClkTime[16]), .A1(nextClkTime[16]), .Z(lastClkTimeN[16]));
Q_MX02 U710 ( .S(runClk), .A0(lastClkTime[17]), .A1(nextClkTime[17]), .Z(lastClkTimeN[17]));
Q_MX02 U711 ( .S(runClk), .A0(lastClkTime[18]), .A1(nextClkTime[18]), .Z(lastClkTimeN[18]));
Q_MX02 U712 ( .S(runClk), .A0(lastClkTime[19]), .A1(nextClkTime[19]), .Z(lastClkTimeN[19]));
Q_MX02 U713 ( .S(runClk), .A0(lastClkTime[20]), .A1(nextClkTime[20]), .Z(lastClkTimeN[20]));
Q_MX02 U714 ( .S(runClk), .A0(lastClkTime[21]), .A1(nextClkTime[21]), .Z(lastClkTimeN[21]));
Q_MX02 U715 ( .S(runClk), .A0(lastClkTime[22]), .A1(nextClkTime[22]), .Z(lastClkTimeN[22]));
Q_MX02 U716 ( .S(runClk), .A0(lastClkTime[23]), .A1(nextClkTime[23]), .Z(lastClkTimeN[23]));
Q_MX02 U717 ( .S(runClk), .A0(lastClkTime[24]), .A1(nextClkTime[24]), .Z(lastClkTimeN[24]));
Q_MX02 U718 ( .S(runClk), .A0(lastClkTime[25]), .A1(nextClkTime[25]), .Z(lastClkTimeN[25]));
Q_MX02 U719 ( .S(runClk), .A0(lastClkTime[26]), .A1(nextClkTime[26]), .Z(lastClkTimeN[26]));
Q_MX02 U720 ( .S(runClk), .A0(lastClkTime[27]), .A1(nextClkTime[27]), .Z(lastClkTimeN[27]));
Q_MX02 U721 ( .S(runClk), .A0(lastClkTime[28]), .A1(nextClkTime[28]), .Z(lastClkTimeN[28]));
Q_MX02 U722 ( .S(runClk), .A0(lastClkTime[29]), .A1(nextClkTime[29]), .Z(lastClkTimeN[29]));
Q_MX02 U723 ( .S(runClk), .A0(lastClkTime[30]), .A1(nextClkTime[30]), .Z(lastClkTimeN[30]));
Q_MX02 U724 ( .S(runClk), .A0(lastClkTime[31]), .A1(nextClkTime[31]), .Z(lastClkTimeN[31]));
Q_MX02 U725 ( .S(runClk), .A0(lastClkTime[32]), .A1(nextClkTime[32]), .Z(lastClkTimeN[32]));
Q_MX02 U726 ( .S(runClk), .A0(lastClkTime[33]), .A1(nextClkTime[33]), .Z(lastClkTimeN[33]));
Q_MX02 U727 ( .S(runClk), .A0(lastClkTime[34]), .A1(nextClkTime[34]), .Z(lastClkTimeN[34]));
Q_MX02 U728 ( .S(runClk), .A0(lastClkTime[35]), .A1(nextClkTime[35]), .Z(lastClkTimeN[35]));
Q_MX02 U729 ( .S(runClk), .A0(lastClkTime[36]), .A1(nextClkTime[36]), .Z(lastClkTimeN[36]));
Q_MX02 U730 ( .S(runClk), .A0(lastClkTime[37]), .A1(nextClkTime[37]), .Z(lastClkTimeN[37]));
Q_MX02 U731 ( .S(runClk), .A0(lastClkTime[38]), .A1(nextClkTime[38]), .Z(lastClkTimeN[38]));
Q_MX02 U732 ( .S(runClk), .A0(lastClkTime[39]), .A1(nextClkTime[39]), .Z(lastClkTimeN[39]));
Q_MX02 U733 ( .S(runClk), .A0(lastClkTime[40]), .A1(nextClkTime[40]), .Z(lastClkTimeN[40]));
Q_MX02 U734 ( .S(runClk), .A0(lastClkTime[41]), .A1(nextClkTime[41]), .Z(lastClkTimeN[41]));
Q_MX02 U735 ( .S(runClk), .A0(lastClkTime[42]), .A1(nextClkTime[42]), .Z(lastClkTimeN[42]));
Q_MX02 U736 ( .S(runClk), .A0(lastClkTime[43]), .A1(nextClkTime[43]), .Z(lastClkTimeN[43]));
Q_MX02 U737 ( .S(runClk), .A0(lastClkTime[44]), .A1(nextClkTime[44]), .Z(lastClkTimeN[44]));
Q_MX02 U738 ( .S(runClk), .A0(lastClkTime[45]), .A1(nextClkTime[45]), .Z(lastClkTimeN[45]));
Q_MX02 U739 ( .S(runClk), .A0(lastClkTime[46]), .A1(nextClkTime[46]), .Z(lastClkTimeN[46]));
Q_MX02 U740 ( .S(runClk), .A0(lastClkTime[47]), .A1(nextClkTime[47]), .Z(lastClkTimeN[47]));
Q_MX02 U741 ( .S(runClk), .A0(lastClkTime[48]), .A1(nextClkTime[48]), .Z(lastClkTimeN[48]));
Q_MX02 U742 ( .S(runClk), .A0(lastClkTime[49]), .A1(nextClkTime[49]), .Z(lastClkTimeN[49]));
Q_MX02 U743 ( .S(runClk), .A0(lastClkTime[50]), .A1(nextClkTime[50]), .Z(lastClkTimeN[50]));
Q_MX02 U744 ( .S(runClk), .A0(lastClkTime[51]), .A1(nextClkTime[51]), .Z(lastClkTimeN[51]));
Q_MX02 U745 ( .S(runClk), .A0(lastClkTime[52]), .A1(nextClkTime[52]), .Z(lastClkTimeN[52]));
Q_MX02 U746 ( .S(runClk), .A0(lastClkTime[53]), .A1(nextClkTime[53]), .Z(lastClkTimeN[53]));
Q_MX02 U747 ( .S(runClk), .A0(lastClkTime[54]), .A1(nextClkTime[54]), .Z(lastClkTimeN[54]));
Q_MX02 U748 ( .S(runClk), .A0(lastClkTime[55]), .A1(nextClkTime[55]), .Z(lastClkTimeN[55]));
Q_MX02 U749 ( .S(runClk), .A0(lastClkTime[56]), .A1(nextClkTime[56]), .Z(lastClkTimeN[56]));
Q_MX02 U750 ( .S(runClk), .A0(lastClkTime[57]), .A1(nextClkTime[57]), .Z(lastClkTimeN[57]));
Q_MX02 U751 ( .S(runClk), .A0(lastClkTime[58]), .A1(nextClkTime[58]), .Z(lastClkTimeN[58]));
Q_MX02 U752 ( .S(runClk), .A0(lastClkTime[59]), .A1(nextClkTime[59]), .Z(lastClkTimeN[59]));
Q_MX02 U753 ( .S(runClk), .A0(lastClkTime[60]), .A1(nextClkTime[60]), .Z(lastClkTimeN[60]));
Q_MX02 U754 ( .S(runClk), .A0(lastClkTime[61]), .A1(nextClkTime[61]), .Z(lastClkTimeN[61]));
Q_MX02 U755 ( .S(runClk), .A0(lastClkTime[62]), .A1(nextClkTime[62]), .Z(lastClkTimeN[62]));
Q_MX02 U756 ( .S(runClk), .A0(lastClkTime[63]), .A1(nextClkTime[63]), .Z(lastClkTimeN[63]));
Q_INV U757 ( .A(ps0[63]), .Z(ps1[63]));
Q_AD01HF U758 ( .A0(ps0[64]), .B0(ps0[63]), .S(ps1[64]), .CO(n278));
Q_AD01HF U759 ( .A0(n278), .B0(ps0[65]), .S(ps1[65]), .CO(n277));
Q_AD01HF U760 ( .A0(n277), .B0(ps0[66]), .S(ps1[66]), .CO(n276));
Q_AD01HF U761 ( .A0(n276), .B0(ps0[67]), .S(ps1[67]), .CO(n275));
Q_AD01HF U762 ( .A0(n275), .B0(ps0[68]), .S(ps1[68]), .CO(n274));
Q_AD01HF U763 ( .A0(n274), .B0(ps0[69]), .S(ps1[69]), .CO(n273));
Q_AD01HF U764 ( .A0(n273), .B0(ps0[70]), .S(ps1[70]), .CO(ps1[71]));
Q_INV U765 ( .A(ps0[54]), .Z(ps1[54]));
Q_AD01HF U766 ( .A0(ps0[55]), .B0(ps0[54]), .S(ps1[55]), .CO(n272));
Q_AD01HF U767 ( .A0(n272), .B0(ps0[56]), .S(ps1[56]), .CO(n271));
Q_AD01HF U768 ( .A0(n271), .B0(ps0[57]), .S(ps1[57]), .CO(n270));
Q_AD01HF U769 ( .A0(n270), .B0(ps0[58]), .S(ps1[58]), .CO(n269));
Q_AD01HF U770 ( .A0(n269), .B0(ps0[59]), .S(ps1[59]), .CO(n268));
Q_AD01HF U771 ( .A0(n268), .B0(ps0[60]), .S(ps1[60]), .CO(n267));
Q_AD01HF U772 ( .A0(n267), .B0(ps0[61]), .S(ps1[61]), .CO(ps1[62]));
Q_INV U773 ( .A(ps0[45]), .Z(ps1[45]));
Q_AD01HF U774 ( .A0(ps0[46]), .B0(ps0[45]), .S(ps1[46]), .CO(n266));
Q_AD01HF U775 ( .A0(n266), .B0(ps0[47]), .S(ps1[47]), .CO(n265));
Q_AD01HF U776 ( .A0(n265), .B0(ps0[48]), .S(ps1[48]), .CO(n264));
Q_AD01HF U777 ( .A0(n264), .B0(ps0[49]), .S(ps1[49]), .CO(n263));
Q_AD01HF U778 ( .A0(n263), .B0(ps0[50]), .S(ps1[50]), .CO(n262));
Q_AD01HF U779 ( .A0(n262), .B0(ps0[51]), .S(ps1[51]), .CO(n261));
Q_AD01HF U780 ( .A0(n261), .B0(ps0[52]), .S(ps1[52]), .CO(ps1[53]));
Q_INV U781 ( .A(ps0[36]), .Z(ps1[36]));
Q_AD01HF U782 ( .A0(ps0[37]), .B0(ps0[36]), .S(ps1[37]), .CO(n260));
Q_AD01HF U783 ( .A0(n260), .B0(ps0[38]), .S(ps1[38]), .CO(n259));
Q_AD01HF U784 ( .A0(n259), .B0(ps0[39]), .S(ps1[39]), .CO(n258));
Q_AD01HF U785 ( .A0(n258), .B0(ps0[40]), .S(ps1[40]), .CO(n257));
Q_AD01HF U786 ( .A0(n257), .B0(ps0[41]), .S(ps1[41]), .CO(n256));
Q_AD01HF U787 ( .A0(n256), .B0(ps0[42]), .S(ps1[42]), .CO(n255));
Q_AD01HF U788 ( .A0(n255), .B0(ps0[43]), .S(ps1[43]), .CO(ps1[44]));
Q_INV U789 ( .A(ps0[27]), .Z(ps1[27]));
Q_AD01HF U790 ( .A0(ps0[28]), .B0(ps0[27]), .S(ps1[28]), .CO(n254));
Q_AD01HF U791 ( .A0(n254), .B0(ps0[29]), .S(ps1[29]), .CO(n253));
Q_AD01HF U792 ( .A0(n253), .B0(ps0[30]), .S(ps1[30]), .CO(n252));
Q_AD01HF U793 ( .A0(n252), .B0(ps0[31]), .S(ps1[31]), .CO(n251));
Q_AD01HF U794 ( .A0(n251), .B0(ps0[32]), .S(ps1[32]), .CO(n250));
Q_AD01HF U795 ( .A0(n250), .B0(ps0[33]), .S(ps1[33]), .CO(n249));
Q_AD01HF U796 ( .A0(n249), .B0(ps0[34]), .S(ps1[34]), .CO(ps1[35]));
Q_INV U797 ( .A(ps0[18]), .Z(ps1[18]));
Q_AD01HF U798 ( .A0(ps0[19]), .B0(ps0[18]), .S(ps1[19]), .CO(n248));
Q_AD01HF U799 ( .A0(n248), .B0(ps0[20]), .S(ps1[20]), .CO(n247));
Q_AD01HF U800 ( .A0(n247), .B0(ps0[21]), .S(ps1[21]), .CO(n246));
Q_AD01HF U801 ( .A0(n246), .B0(ps0[22]), .S(ps1[22]), .CO(n245));
Q_AD01HF U802 ( .A0(n245), .B0(ps0[23]), .S(ps1[23]), .CO(n244));
Q_AD01HF U803 ( .A0(n244), .B0(ps0[24]), .S(ps1[24]), .CO(n243));
Q_AD01HF U804 ( .A0(n243), .B0(ps0[25]), .S(ps1[25]), .CO(ps1[26]));
Q_XNR2 U805 ( .A0(minT[8]), .A1(lastClkTimeN[8]), .Z(ps1[9]));
Q_OR02 U806 ( .A0(minT[8]), .A1(lastClkTimeN[8]), .Z(n242));
Q_AD02 U807 ( .CI(n242), .A0(minT[9]), .A1(minT[10]), .B0(lastClkTimeN[9]), .B1(lastClkTimeN[10]), .S0(ps1[10]), .S1(ps1[11]), .CO(n241));
Q_AD01HF U808 ( .A0(lastClkTimeN[11]), .B0(n241), .S(ps1[12]), .CO(n240));
Q_AD01HF U809 ( .A0(n240), .B0(lastClkTimeN[12]), .S(ps1[13]), .CO(n239));
Q_AD01HF U810 ( .A0(n239), .B0(lastClkTimeN[13]), .S(ps1[14]), .CO(n238));
Q_AD01HF U811 ( .A0(n238), .B0(lastClkTimeN[14]), .S(ps1[15]), .CO(n237));
Q_AD01HF U812 ( .A0(n237), .B0(lastClkTimeN[15]), .S(ps1[16]), .CO(ps1[17]));
Q_AD02 U813 ( .CI(lastClkTimeN[9]), .A0(minT[9]), .A1(minT[10]), .B0(n236), .B1(lastClkTimeN[10]), .S0(ps0[10]), .S1(ps0[11]), .CO(n235));
Q_AD01HF U814 ( .A0(lastClkTimeN[11]), .B0(n235), .S(ps0[12]), .CO(n234));
Q_AD01HF U815 ( .A0(n234), .B0(lastClkTimeN[12]), .S(ps0[13]), .CO(n233));
Q_AD01HF U816 ( .A0(n233), .B0(lastClkTimeN[13]), .S(ps0[14]), .CO(n232));
Q_AD01HF U817 ( .A0(n232), .B0(lastClkTimeN[14]), .S(ps0[15]), .CO(n231));
Q_AD01HF U818 ( .A0(n231), .B0(lastClkTimeN[15]), .S(ps0[16]), .CO(ps0[17]));
Q_AD01HF U819 ( .A0(minT[0]), .B0(lastClkTimeN[0]), .S(nextClkTimeN[0]), .CO(n230));
Q_AD01 U820 ( .CI(lastClkTimeN[1]), .A0(minT[1]), .B0(n230), .S(nextClkTimeN[1]), .CO(n229));
Q_AD02 U821 ( .CI(n229), .A0(minT[2]), .A1(minT[3]), .B0(lastClkTimeN[2]), .B1(lastClkTimeN[3]), .S0(nextClkTimeN[2]), .S1(nextClkTimeN[3]), .CO(n228));
Q_AD02 U822 ( .CI(n228), .A0(minT[4]), .A1(minT[5]), .B0(lastClkTimeN[4]), .B1(lastClkTimeN[5]), .S0(nextClkTimeN[4]), .S1(nextClkTimeN[5]), .CO(n227));
Q_AD02 U823 ( .CI(n227), .A0(minT[6]), .A1(minT[7]), .B0(lastClkTimeN[6]), .B1(lastClkTimeN[7]), .S0(nextClkTimeN[6]), .S1(nextClkTimeN[7]), .CO(ps0[8]));
Q_INV U824 ( .A(ps0[0]), .Z(ps1[0]));
Q_AD01HF U825 ( .A0(ps0[0]), .B0(ps0[1]), .S(ps1[1]), .CO(n226));
Q_AD01HF U826 ( .A0(n226), .B0(ps0[2]), .S(ps1[2]), .CO(n225));
Q_AD01HF U827 ( .A0(n225), .B0(ps0[3]), .S(ps1[3]), .CO(n224));
Q_AD01HF U828 ( .A0(n224), .B0(ps0[4]), .S(ps1[4]), .CO(n223));
Q_AD01HF U829 ( .A0(n223), .B0(ps0[5]), .S(ps1[5]), .CO(n222));
Q_AD01HF U830 ( .A0(n222), .B0(ps0[6]), .S(ps1[6]), .CO(n221));
Q_AD01HF U831 ( .A0(n221), .B0(ps0[7]), .S(ps1[7]), .CO(n220));
Q_XOR2 U832 ( .A0(n220), .A1(ps0[8]), .Z(ps1[8]));
Q_MX02 U833 ( .S(ps0[8]), .A0(ps0[10]), .A1(ps1[10]), .Z(nextClkTimeN[9]));
Q_MX02 U834 ( .S(ps0[8]), .A0(ps0[11]), .A1(ps1[11]), .Z(nextClkTimeN[10]));
Q_MX02 U835 ( .S(ps0[8]), .A0(ps0[12]), .A1(ps1[12]), .Z(nextClkTimeN[11]));
Q_MX02 U836 ( .S(ps0[8]), .A0(ps0[13]), .A1(ps1[13]), .Z(nextClkTimeN[12]));
Q_MX02 U837 ( .S(ps0[8]), .A0(ps0[14]), .A1(ps1[14]), .Z(nextClkTimeN[13]));
Q_MX02 U838 ( .S(ps0[8]), .A0(ps0[15]), .A1(ps1[15]), .Z(nextClkTimeN[14]));
Q_MX02 U839 ( .S(ps0[8]), .A0(ps0[16]), .A1(ps1[16]), .Z(nextClkTimeN[15]));
Q_MX02 U840 ( .S(ps0[8]), .A0(ps0[17]), .A1(ps1[17]), .Z(n219));
Q_XOR2 U841 ( .A0(n219), .A1(ps0[18]), .Z(nextClkTimeN[16]));
Q_MX02 U842 ( .S(n219), .A0(ps0[19]), .A1(ps1[19]), .Z(nextClkTimeN[17]));
Q_MX02 U843 ( .S(n219), .A0(ps0[20]), .A1(ps1[20]), .Z(nextClkTimeN[18]));
Q_MX02 U844 ( .S(n219), .A0(ps0[21]), .A1(ps1[21]), .Z(nextClkTimeN[19]));
Q_MX02 U845 ( .S(n219), .A0(ps0[22]), .A1(ps1[22]), .Z(nextClkTimeN[20]));
Q_MX02 U846 ( .S(n219), .A0(ps0[23]), .A1(ps1[23]), .Z(nextClkTimeN[21]));
Q_MX02 U847 ( .S(n219), .A0(ps0[24]), .A1(ps1[24]), .Z(nextClkTimeN[22]));
Q_MX02 U848 ( .S(n219), .A0(ps0[25]), .A1(ps1[25]), .Z(nextClkTimeN[23]));
Q_AN02 U849 ( .A0(n219), .A1(ps1[26]), .Z(n218));
Q_XOR2 U850 ( .A0(n218), .A1(ps0[27]), .Z(nextClkTimeN[24]));
Q_MX02 U851 ( .S(n218), .A0(ps0[28]), .A1(ps1[28]), .Z(nextClkTimeN[25]));
Q_MX02 U852 ( .S(n218), .A0(ps0[29]), .A1(ps1[29]), .Z(nextClkTimeN[26]));
Q_MX02 U853 ( .S(n218), .A0(ps0[30]), .A1(ps1[30]), .Z(nextClkTimeN[27]));
Q_MX02 U854 ( .S(n218), .A0(ps0[31]), .A1(ps1[31]), .Z(nextClkTimeN[28]));
Q_MX02 U855 ( .S(n218), .A0(ps0[32]), .A1(ps1[32]), .Z(nextClkTimeN[29]));
Q_MX02 U856 ( .S(n218), .A0(ps0[33]), .A1(ps1[33]), .Z(nextClkTimeN[30]));
Q_MX02 U857 ( .S(n218), .A0(ps0[34]), .A1(ps1[34]), .Z(nextClkTimeN[31]));
Q_AN02 U858 ( .A0(n218), .A1(ps1[35]), .Z(n217));
Q_XOR2 U859 ( .A0(n217), .A1(ps0[36]), .Z(nextClkTimeN[32]));
Q_MX02 U860 ( .S(n217), .A0(ps0[37]), .A1(ps1[37]), .Z(nextClkTimeN[33]));
Q_MX02 U861 ( .S(n217), .A0(ps0[38]), .A1(ps1[38]), .Z(nextClkTimeN[34]));
Q_MX02 U862 ( .S(n217), .A0(ps0[39]), .A1(ps1[39]), .Z(nextClkTimeN[35]));
Q_MX02 U863 ( .S(n217), .A0(ps0[40]), .A1(ps1[40]), .Z(nextClkTimeN[36]));
Q_MX02 U864 ( .S(n217), .A0(ps0[41]), .A1(ps1[41]), .Z(nextClkTimeN[37]));
Q_MX02 U865 ( .S(n217), .A0(ps0[42]), .A1(ps1[42]), .Z(nextClkTimeN[38]));
Q_MX02 U866 ( .S(n217), .A0(ps0[43]), .A1(ps1[43]), .Z(nextClkTimeN[39]));
Q_AN02 U867 ( .A0(n217), .A1(ps1[44]), .Z(n216));
Q_XOR2 U868 ( .A0(n216), .A1(ps0[45]), .Z(nextClkTimeN[40]));
Q_MX02 U869 ( .S(n216), .A0(ps0[46]), .A1(ps1[46]), .Z(nextClkTimeN[41]));
Q_MX02 U870 ( .S(n216), .A0(ps0[47]), .A1(ps1[47]), .Z(nextClkTimeN[42]));
Q_MX02 U871 ( .S(n216), .A0(ps0[48]), .A1(ps1[48]), .Z(nextClkTimeN[43]));
Q_MX02 U872 ( .S(n216), .A0(ps0[49]), .A1(ps1[49]), .Z(nextClkTimeN[44]));
Q_MX02 U873 ( .S(n216), .A0(ps0[50]), .A1(ps1[50]), .Z(nextClkTimeN[45]));
Q_MX02 U874 ( .S(n216), .A0(ps0[51]), .A1(ps1[51]), .Z(nextClkTimeN[46]));
Q_MX02 U875 ( .S(n216), .A0(ps0[52]), .A1(ps1[52]), .Z(nextClkTimeN[47]));
Q_AN02 U876 ( .A0(n216), .A1(ps1[53]), .Z(n215));
Q_XOR2 U877 ( .A0(n215), .A1(ps0[54]), .Z(nextClkTimeN[48]));
Q_MX02 U878 ( .S(n215), .A0(ps0[55]), .A1(ps1[55]), .Z(nextClkTimeN[49]));
Q_MX02 U879 ( .S(n215), .A0(ps0[56]), .A1(ps1[56]), .Z(nextClkTimeN[50]));
Q_MX02 U880 ( .S(n215), .A0(ps0[57]), .A1(ps1[57]), .Z(nextClkTimeN[51]));
Q_MX02 U881 ( .S(n215), .A0(ps0[58]), .A1(ps1[58]), .Z(nextClkTimeN[52]));
Q_MX02 U882 ( .S(n215), .A0(ps0[59]), .A1(ps1[59]), .Z(nextClkTimeN[53]));
Q_MX02 U883 ( .S(n215), .A0(ps0[60]), .A1(ps1[60]), .Z(nextClkTimeN[54]));
Q_MX02 U884 ( .S(n215), .A0(ps0[61]), .A1(ps1[61]), .Z(nextClkTimeN[55]));
Q_AN02 U885 ( .A0(n215), .A1(ps1[62]), .Z(n214));
Q_XOR2 U886 ( .A0(n214), .A1(ps0[63]), .Z(nextClkTimeN[56]));
Q_MX02 U887 ( .S(n214), .A0(ps0[64]), .A1(ps1[64]), .Z(nextClkTimeN[57]));
Q_MX02 U888 ( .S(n214), .A0(ps0[65]), .A1(ps1[65]), .Z(nextClkTimeN[58]));
Q_MX02 U889 ( .S(n214), .A0(ps0[66]), .A1(ps1[66]), .Z(nextClkTimeN[59]));
Q_MX02 U890 ( .S(n214), .A0(ps0[67]), .A1(ps1[67]), .Z(nextClkTimeN[60]));
Q_MX02 U891 ( .S(n214), .A0(ps0[68]), .A1(ps1[68]), .Z(nextClkTimeN[61]));
Q_MX02 U892 ( .S(n214), .A0(ps0[69]), .A1(ps1[69]), .Z(nextClkTimeN[62]));
Q_MX02 U893 ( .S(n214), .A0(ps0[70]), .A1(ps1[70]), .Z(nextClkTimeN[63]));
Q_AN02 U894 ( .A0(n214), .A1(ps1[71]), .Z(c));
Q_FDP0 \nextClkTime_REG[0] ( .CK(eClk), .D(ps0[0]), .Q(nextClkTime[0]), .QN(n315));
Q_FDP0 \nextClkTime_REG[1] ( .CK(eClk), .D(ps0[1]), .Q(nextClkTime[1]), .QN( ));
Q_FDP0 \nextClkTime_REG[2] ( .CK(eClk), .D(ps0[2]), .Q(nextClkTime[2]), .QN( ));
Q_FDP0 \nextClkTime_REG[3] ( .CK(eClk), .D(ps0[3]), .Q(nextClkTime[3]), .QN( ));
Q_FDP0 \nextClkTime_REG[4] ( .CK(eClk), .D(ps0[4]), .Q(nextClkTime[4]), .QN( ));
Q_FDP0 \nextClkTime_REG[5] ( .CK(eClk), .D(ps0[5]), .Q(nextClkTime[5]), .QN( ));
Q_FDP0 \nextClkTime_REG[6] ( .CK(eClk), .D(ps0[6]), .Q(nextClkTime[6]), .QN( ));
Q_FDP0 \nextClkTime_REG[7] ( .CK(eClk), .D(ps0[7]), .Q(nextClkTime[7]), .QN( ));
Q_FDP0 \nextClkTime_REG[8] ( .CK(eClk), .D(nextClkTimeN[8]), .Q(nextClkTime[8]), .QN( ));
Q_FDP0 \nextClkTime_REG[9] ( .CK(eClk), .D(nextClkTimeN[9]), .Q(nextClkTime[9]), .QN( ));
Q_FDP0 \nextClkTime_REG[10] ( .CK(eClk), .D(nextClkTimeN[10]), .Q(nextClkTime[10]), .QN( ));
Q_FDP0 \nextClkTime_REG[11] ( .CK(eClk), .D(nextClkTimeN[11]), .Q(nextClkTime[11]), .QN( ));
Q_FDP0 \nextClkTime_REG[12] ( .CK(eClk), .D(nextClkTimeN[12]), .Q(nextClkTime[12]), .QN( ));
Q_FDP0 \nextClkTime_REG[13] ( .CK(eClk), .D(nextClkTimeN[13]), .Q(nextClkTime[13]), .QN( ));
Q_FDP0 \nextClkTime_REG[14] ( .CK(eClk), .D(nextClkTimeN[14]), .Q(nextClkTime[14]), .QN( ));
Q_FDP0 \nextClkTime_REG[15] ( .CK(eClk), .D(nextClkTimeN[15]), .Q(nextClkTime[15]), .QN( ));
Q_FDP0 \nextClkTime_REG[16] ( .CK(eClk), .D(nextClkTimeN[16]), .Q(nextClkTime[16]), .QN( ));
Q_FDP0 \nextClkTime_REG[17] ( .CK(eClk), .D(nextClkTimeN[17]), .Q(nextClkTime[17]), .QN( ));
Q_FDP0 \nextClkTime_REG[18] ( .CK(eClk), .D(nextClkTimeN[18]), .Q(nextClkTime[18]), .QN( ));
Q_FDP0 \nextClkTime_REG[19] ( .CK(eClk), .D(nextClkTimeN[19]), .Q(nextClkTime[19]), .QN( ));
Q_FDP0 \nextClkTime_REG[20] ( .CK(eClk), .D(nextClkTimeN[20]), .Q(nextClkTime[20]), .QN( ));
Q_FDP0 \nextClkTime_REG[21] ( .CK(eClk), .D(nextClkTimeN[21]), .Q(nextClkTime[21]), .QN( ));
Q_FDP0 \nextClkTime_REG[22] ( .CK(eClk), .D(nextClkTimeN[22]), .Q(nextClkTime[22]), .QN( ));
Q_FDP0 \nextClkTime_REG[23] ( .CK(eClk), .D(nextClkTimeN[23]), .Q(nextClkTime[23]), .QN( ));
Q_FDP0 \nextClkTime_REG[24] ( .CK(eClk), .D(nextClkTimeN[24]), .Q(nextClkTime[24]), .QN( ));
Q_FDP0 \nextClkTime_REG[25] ( .CK(eClk), .D(nextClkTimeN[25]), .Q(nextClkTime[25]), .QN( ));
Q_FDP0 \nextClkTime_REG[26] ( .CK(eClk), .D(nextClkTimeN[26]), .Q(nextClkTime[26]), .QN( ));
Q_FDP0 \nextClkTime_REG[27] ( .CK(eClk), .D(nextClkTimeN[27]), .Q(nextClkTime[27]), .QN( ));
Q_FDP0 \nextClkTime_REG[28] ( .CK(eClk), .D(nextClkTimeN[28]), .Q(nextClkTime[28]), .QN( ));
Q_FDP0 \nextClkTime_REG[29] ( .CK(eClk), .D(nextClkTimeN[29]), .Q(nextClkTime[29]), .QN( ));
Q_FDP0 \nextClkTime_REG[30] ( .CK(eClk), .D(nextClkTimeN[30]), .Q(nextClkTime[30]), .QN( ));
Q_FDP0 \nextClkTime_REG[31] ( .CK(eClk), .D(nextClkTimeN[31]), .Q(nextClkTime[31]), .QN( ));
Q_FDP0 \nextClkTime_REG[32] ( .CK(eClk), .D(nextClkTimeN[32]), .Q(nextClkTime[32]), .QN( ));
Q_FDP0 \nextClkTime_REG[33] ( .CK(eClk), .D(nextClkTimeN[33]), .Q(nextClkTime[33]), .QN( ));
Q_FDP0 \nextClkTime_REG[34] ( .CK(eClk), .D(nextClkTimeN[34]), .Q(nextClkTime[34]), .QN( ));
Q_FDP0 \nextClkTime_REG[35] ( .CK(eClk), .D(nextClkTimeN[35]), .Q(nextClkTime[35]), .QN( ));
Q_FDP0 \nextClkTime_REG[36] ( .CK(eClk), .D(nextClkTimeN[36]), .Q(nextClkTime[36]), .QN( ));
Q_FDP0 \nextClkTime_REG[37] ( .CK(eClk), .D(nextClkTimeN[37]), .Q(nextClkTime[37]), .QN( ));
Q_FDP0 \nextClkTime_REG[38] ( .CK(eClk), .D(nextClkTimeN[38]), .Q(nextClkTime[38]), .QN( ));
Q_FDP0 \nextClkTime_REG[39] ( .CK(eClk), .D(nextClkTimeN[39]), .Q(nextClkTime[39]), .QN( ));
Q_FDP0 \nextClkTime_REG[40] ( .CK(eClk), .D(nextClkTimeN[40]), .Q(nextClkTime[40]), .QN( ));
Q_FDP0 \nextClkTime_REG[41] ( .CK(eClk), .D(nextClkTimeN[41]), .Q(nextClkTime[41]), .QN( ));
Q_FDP0 \nextClkTime_REG[42] ( .CK(eClk), .D(nextClkTimeN[42]), .Q(nextClkTime[42]), .QN( ));
Q_FDP0 \nextClkTime_REG[43] ( .CK(eClk), .D(nextClkTimeN[43]), .Q(nextClkTime[43]), .QN( ));
Q_FDP0 \nextClkTime_REG[44] ( .CK(eClk), .D(nextClkTimeN[44]), .Q(nextClkTime[44]), .QN( ));
Q_FDP0 \nextClkTime_REG[45] ( .CK(eClk), .D(nextClkTimeN[45]), .Q(nextClkTime[45]), .QN( ));
Q_FDP0 \nextClkTime_REG[46] ( .CK(eClk), .D(nextClkTimeN[46]), .Q(nextClkTime[46]), .QN( ));
Q_FDP0 \nextClkTime_REG[47] ( .CK(eClk), .D(nextClkTimeN[47]), .Q(nextClkTime[47]), .QN( ));
Q_FDP0 \nextClkTime_REG[48] ( .CK(eClk), .D(nextClkTimeN[48]), .Q(nextClkTime[48]), .QN( ));
Q_FDP0 \nextClkTime_REG[49] ( .CK(eClk), .D(nextClkTimeN[49]), .Q(nextClkTime[49]), .QN( ));
Q_FDP0 \nextClkTime_REG[50] ( .CK(eClk), .D(nextClkTimeN[50]), .Q(nextClkTime[50]), .QN( ));
Q_FDP0 \nextClkTime_REG[51] ( .CK(eClk), .D(nextClkTimeN[51]), .Q(nextClkTime[51]), .QN( ));
Q_FDP0 \nextClkTime_REG[52] ( .CK(eClk), .D(nextClkTimeN[52]), .Q(nextClkTime[52]), .QN( ));
Q_FDP0 \nextClkTime_REG[53] ( .CK(eClk), .D(nextClkTimeN[53]), .Q(nextClkTime[53]), .QN( ));
Q_FDP0 \nextClkTime_REG[54] ( .CK(eClk), .D(nextClkTimeN[54]), .Q(nextClkTime[54]), .QN( ));
Q_FDP0 \nextClkTime_REG[55] ( .CK(eClk), .D(nextClkTimeN[55]), .Q(nextClkTime[55]), .QN( ));
Q_FDP0 \nextClkTime_REG[56] ( .CK(eClk), .D(nextClkTimeN[56]), .Q(nextClkTime[56]), .QN( ));
Q_FDP0 \nextClkTime_REG[57] ( .CK(eClk), .D(nextClkTimeN[57]), .Q(nextClkTime[57]), .QN( ));
Q_FDP0 \nextClkTime_REG[58] ( .CK(eClk), .D(nextClkTimeN[58]), .Q(nextClkTime[58]), .QN( ));
Q_FDP0 \nextClkTime_REG[59] ( .CK(eClk), .D(nextClkTimeN[59]), .Q(nextClkTime[59]), .QN( ));
Q_FDP0 \nextClkTime_REG[60] ( .CK(eClk), .D(nextClkTimeN[60]), .Q(nextClkTime[60]), .QN( ));
Q_FDP0 \nextClkTime_REG[61] ( .CK(eClk), .D(nextClkTimeN[61]), .Q(nextClkTime[61]), .QN( ));
Q_FDP0 \nextClkTime_REG[62] ( .CK(eClk), .D(nextClkTimeN[62]), .Q(nextClkTime[62]), .QN( ));
Q_FDP0 \nextClkTime_REG[63] ( .CK(eClk), .D(nextClkTimeN[63]), .Q(nextClkTime[63]), .QN( ));
Q_FDP0 \lastClkTime_REG[0] ( .CK(eClk), .D(lastClkTimeN[0]), .Q(lastClkTime[0]), .QN( ));
Q_FDP0 \lastClkTime_REG[1] ( .CK(eClk), .D(lastClkTimeN[1]), .Q(lastClkTime[1]), .QN( ));
Q_FDP0 \lastClkTime_REG[2] ( .CK(eClk), .D(lastClkTimeN[2]), .Q(lastClkTime[2]), .QN( ));
Q_FDP0 \lastClkTime_REG[3] ( .CK(eClk), .D(lastClkTimeN[3]), .Q(lastClkTime[3]), .QN( ));
Q_FDP0 \lastClkTime_REG[4] ( .CK(eClk), .D(lastClkTimeN[4]), .Q(lastClkTime[4]), .QN( ));
Q_FDP0 \lastClkTime_REG[5] ( .CK(eClk), .D(lastClkTimeN[5]), .Q(lastClkTime[5]), .QN( ));
Q_FDP0 \lastClkTime_REG[6] ( .CK(eClk), .D(lastClkTimeN[6]), .Q(lastClkTime[6]), .QN( ));
Q_FDP0 \lastClkTime_REG[7] ( .CK(eClk), .D(lastClkTimeN[7]), .Q(lastClkTime[7]), .QN( ));
Q_FDP0 \lastClkTime_REG[8] ( .CK(eClk), .D(lastClkTimeN[8]), .Q(lastClkTime[8]), .QN( ));
Q_FDP0 \lastClkTime_REG[9] ( .CK(eClk), .D(lastClkTimeN[9]), .Q(lastClkTime[9]), .QN( ));
Q_FDP0 \lastClkTime_REG[10] ( .CK(eClk), .D(lastClkTimeN[10]), .Q(lastClkTime[10]), .QN( ));
Q_FDP0 \lastClkTime_REG[11] ( .CK(eClk), .D(lastClkTimeN[11]), .Q(lastClkTime[11]), .QN( ));
Q_FDP0 \lastClkTime_REG[12] ( .CK(eClk), .D(lastClkTimeN[12]), .Q(lastClkTime[12]), .QN( ));
Q_FDP0 \lastClkTime_REG[13] ( .CK(eClk), .D(lastClkTimeN[13]), .Q(lastClkTime[13]), .QN( ));
Q_FDP0 \lastClkTime_REG[14] ( .CK(eClk), .D(lastClkTimeN[14]), .Q(lastClkTime[14]), .QN( ));
Q_FDP0 \lastClkTime_REG[15] ( .CK(eClk), .D(lastClkTimeN[15]), .Q(lastClkTime[15]), .QN( ));
Q_FDP0 \lastClkTime_REG[16] ( .CK(eClk), .D(ps0[18]), .Q(lastClkTime[16]), .QN( ));
Q_FDP0 \lastClkTime_REG[17] ( .CK(eClk), .D(ps0[19]), .Q(lastClkTime[17]), .QN( ));
Q_FDP0 \lastClkTime_REG[18] ( .CK(eClk), .D(ps0[20]), .Q(lastClkTime[18]), .QN( ));
Q_FDP0 \lastClkTime_REG[19] ( .CK(eClk), .D(ps0[21]), .Q(lastClkTime[19]), .QN( ));
Q_FDP0 \lastClkTime_REG[20] ( .CK(eClk), .D(ps0[22]), .Q(lastClkTime[20]), .QN( ));
Q_FDP0 \lastClkTime_REG[21] ( .CK(eClk), .D(ps0[23]), .Q(lastClkTime[21]), .QN( ));
Q_FDP0 \lastClkTime_REG[22] ( .CK(eClk), .D(ps0[24]), .Q(lastClkTime[22]), .QN( ));
Q_FDP0 \lastClkTime_REG[23] ( .CK(eClk), .D(ps0[25]), .Q(lastClkTime[23]), .QN( ));
Q_FDP0 \lastClkTime_REG[24] ( .CK(eClk), .D(ps0[27]), .Q(lastClkTime[24]), .QN( ));
Q_FDP0 \lastClkTime_REG[25] ( .CK(eClk), .D(ps0[28]), .Q(lastClkTime[25]), .QN( ));
Q_FDP0 \lastClkTime_REG[26] ( .CK(eClk), .D(ps0[29]), .Q(lastClkTime[26]), .QN( ));
Q_FDP0 \lastClkTime_REG[27] ( .CK(eClk), .D(ps0[30]), .Q(lastClkTime[27]), .QN( ));
Q_FDP0 \lastClkTime_REG[28] ( .CK(eClk), .D(ps0[31]), .Q(lastClkTime[28]), .QN( ));
Q_FDP0 \lastClkTime_REG[29] ( .CK(eClk), .D(ps0[32]), .Q(lastClkTime[29]), .QN( ));
Q_FDP0 \lastClkTime_REG[30] ( .CK(eClk), .D(ps0[33]), .Q(lastClkTime[30]), .QN( ));
Q_FDP0 \lastClkTime_REG[31] ( .CK(eClk), .D(ps0[34]), .Q(lastClkTime[31]), .QN( ));
Q_FDP0 \lastClkTime_REG[32] ( .CK(eClk), .D(ps0[36]), .Q(lastClkTime[32]), .QN( ));
Q_FDP0 \lastClkTime_REG[33] ( .CK(eClk), .D(ps0[37]), .Q(lastClkTime[33]), .QN( ));
Q_FDP0 \lastClkTime_REG[34] ( .CK(eClk), .D(ps0[38]), .Q(lastClkTime[34]), .QN( ));
Q_FDP0 \lastClkTime_REG[35] ( .CK(eClk), .D(ps0[39]), .Q(lastClkTime[35]), .QN( ));
Q_FDP0 \lastClkTime_REG[36] ( .CK(eClk), .D(ps0[40]), .Q(lastClkTime[36]), .QN( ));
Q_FDP0 \lastClkTime_REG[37] ( .CK(eClk), .D(ps0[41]), .Q(lastClkTime[37]), .QN( ));
Q_FDP0 \lastClkTime_REG[38] ( .CK(eClk), .D(ps0[42]), .Q(lastClkTime[38]), .QN( ));
Q_FDP0 \lastClkTime_REG[39] ( .CK(eClk), .D(ps0[43]), .Q(lastClkTime[39]), .QN( ));
Q_FDP0 \lastClkTime_REG[40] ( .CK(eClk), .D(ps0[45]), .Q(lastClkTime[40]), .QN( ));
Q_FDP0 \lastClkTime_REG[41] ( .CK(eClk), .D(ps0[46]), .Q(lastClkTime[41]), .QN( ));
Q_FDP0 \lastClkTime_REG[42] ( .CK(eClk), .D(ps0[47]), .Q(lastClkTime[42]), .QN( ));
Q_FDP0 \lastClkTime_REG[43] ( .CK(eClk), .D(ps0[48]), .Q(lastClkTime[43]), .QN( ));
Q_FDP0 \lastClkTime_REG[44] ( .CK(eClk), .D(ps0[49]), .Q(lastClkTime[44]), .QN( ));
Q_FDP0 \lastClkTime_REG[45] ( .CK(eClk), .D(ps0[50]), .Q(lastClkTime[45]), .QN( ));
Q_FDP0 \lastClkTime_REG[46] ( .CK(eClk), .D(ps0[51]), .Q(lastClkTime[46]), .QN( ));
Q_FDP0 \lastClkTime_REG[47] ( .CK(eClk), .D(ps0[52]), .Q(lastClkTime[47]), .QN( ));
Q_FDP0 \lastClkTime_REG[48] ( .CK(eClk), .D(ps0[54]), .Q(lastClkTime[48]), .QN( ));
Q_FDP0 \lastClkTime_REG[49] ( .CK(eClk), .D(ps0[55]), .Q(lastClkTime[49]), .QN( ));
Q_FDP0 \lastClkTime_REG[50] ( .CK(eClk), .D(ps0[56]), .Q(lastClkTime[50]), .QN( ));
Q_FDP0 \lastClkTime_REG[51] ( .CK(eClk), .D(ps0[57]), .Q(lastClkTime[51]), .QN( ));
Q_FDP0 \lastClkTime_REG[52] ( .CK(eClk), .D(ps0[58]), .Q(lastClkTime[52]), .QN( ));
Q_FDP0 \lastClkTime_REG[53] ( .CK(eClk), .D(ps0[59]), .Q(lastClkTime[53]), .QN( ));
Q_FDP0 \lastClkTime_REG[54] ( .CK(eClk), .D(ps0[60]), .Q(lastClkTime[54]), .QN( ));
Q_FDP0 \lastClkTime_REG[55] ( .CK(eClk), .D(ps0[61]), .Q(lastClkTime[55]), .QN( ));
Q_FDP0 \lastClkTime_REG[56] ( .CK(eClk), .D(ps0[63]), .Q(lastClkTime[56]), .QN( ));
Q_FDP0 \lastClkTime_REG[57] ( .CK(eClk), .D(ps0[64]), .Q(lastClkTime[57]), .QN( ));
Q_FDP0 \lastClkTime_REG[58] ( .CK(eClk), .D(ps0[65]), .Q(lastClkTime[58]), .QN( ));
Q_FDP0 \lastClkTime_REG[59] ( .CK(eClk), .D(ps0[66]), .Q(lastClkTime[59]), .QN( ));
Q_FDP0 \lastClkTime_REG[60] ( .CK(eClk), .D(ps0[67]), .Q(lastClkTime[60]), .QN( ));
Q_FDP0 \lastClkTime_REG[61] ( .CK(eClk), .D(ps0[68]), .Q(lastClkTime[61]), .QN( ));
Q_FDP0 \lastClkTime_REG[62] ( .CK(eClk), .D(ps0[69]), .Q(lastClkTime[62]), .QN( ));
Q_FDP0 \lastClkTime_REG[63] ( .CK(eClk), .D(ps0[70]), .Q(lastClkTime[63]), .QN( ));
Q_FDP0 \simTime_REG[0] ( .CK(eClk), .D(nextDutTime[0]), .Q(simTime[0]), .QN( ));
Q_FDP0 \simTime_REG[1] ( .CK(eClk), .D(nextDutTime[1]), .Q(simTime[1]), .QN( ));
Q_FDP0 \simTime_REG[2] ( .CK(eClk), .D(nextDutTime[2]), .Q(simTime[2]), .QN( ));
Q_FDP0 \simTime_REG[3] ( .CK(eClk), .D(nextDutTime[3]), .Q(simTime[3]), .QN( ));
Q_FDP0 \simTime_REG[4] ( .CK(eClk), .D(nextDutTime[4]), .Q(simTime[4]), .QN( ));
Q_FDP0 \simTime_REG[5] ( .CK(eClk), .D(nextDutTime[5]), .Q(simTime[5]), .QN( ));
Q_FDP0 \simTime_REG[6] ( .CK(eClk), .D(nextDutTime[6]), .Q(simTime[6]), .QN( ));
Q_FDP0 \simTime_REG[7] ( .CK(eClk), .D(nextDutTime[7]), .Q(simTime[7]), .QN( ));
Q_FDP0 \simTime_REG[8] ( .CK(eClk), .D(nextDutTime[8]), .Q(simTime[8]), .QN( ));
Q_FDP0 \simTime_REG[9] ( .CK(eClk), .D(nextDutTime[9]), .Q(simTime[9]), .QN( ));
Q_FDP0 \simTime_REG[10] ( .CK(eClk), .D(nextDutTime[10]), .Q(simTime[10]), .QN( ));
Q_FDP0 \simTime_REG[11] ( .CK(eClk), .D(nextDutTime[11]), .Q(simTime[11]), .QN( ));
Q_FDP0 \simTime_REG[12] ( .CK(eClk), .D(nextDutTime[12]), .Q(simTime[12]), .QN( ));
Q_FDP0 \simTime_REG[13] ( .CK(eClk), .D(nextDutTime[13]), .Q(simTime[13]), .QN( ));
Q_FDP0 \simTime_REG[14] ( .CK(eClk), .D(nextDutTime[14]), .Q(simTime[14]), .QN( ));
Q_FDP0 \simTime_REG[15] ( .CK(eClk), .D(nextDutTime[15]), .Q(simTime[15]), .QN( ));
Q_FDP0 \simTime_REG[16] ( .CK(eClk), .D(nextDutTime[16]), .Q(simTime[16]), .QN( ));
Q_FDP0 \simTime_REG[17] ( .CK(eClk), .D(nextDutTime[17]), .Q(simTime[17]), .QN( ));
Q_FDP0 \simTime_REG[18] ( .CK(eClk), .D(nextDutTime[18]), .Q(simTime[18]), .QN( ));
Q_FDP0 \simTime_REG[19] ( .CK(eClk), .D(nextDutTime[19]), .Q(simTime[19]), .QN( ));
Q_FDP0 \simTime_REG[20] ( .CK(eClk), .D(nextDutTime[20]), .Q(simTime[20]), .QN( ));
Q_FDP0 \simTime_REG[21] ( .CK(eClk), .D(nextDutTime[21]), .Q(simTime[21]), .QN( ));
Q_FDP0 \simTime_REG[22] ( .CK(eClk), .D(nextDutTime[22]), .Q(simTime[22]), .QN( ));
Q_FDP0 \simTime_REG[23] ( .CK(eClk), .D(nextDutTime[23]), .Q(simTime[23]), .QN( ));
Q_FDP0 \simTime_REG[24] ( .CK(eClk), .D(nextDutTime[24]), .Q(simTime[24]), .QN( ));
Q_FDP0 \simTime_REG[25] ( .CK(eClk), .D(nextDutTime[25]), .Q(simTime[25]), .QN( ));
Q_FDP0 \simTime_REG[26] ( .CK(eClk), .D(nextDutTime[26]), .Q(simTime[26]), .QN( ));
Q_FDP0 \simTime_REG[27] ( .CK(eClk), .D(nextDutTime[27]), .Q(simTime[27]), .QN( ));
Q_FDP0 \simTime_REG[28] ( .CK(eClk), .D(nextDutTime[28]), .Q(simTime[28]), .QN( ));
Q_FDP0 \simTime_REG[29] ( .CK(eClk), .D(nextDutTime[29]), .Q(simTime[29]), .QN( ));
Q_FDP0 \simTime_REG[30] ( .CK(eClk), .D(nextDutTime[30]), .Q(simTime[30]), .QN( ));
Q_FDP0 \simTime_REG[31] ( .CK(eClk), .D(nextDutTime[31]), .Q(simTime[31]), .QN( ));
Q_FDP0 \simTime_REG[32] ( .CK(eClk), .D(nextDutTime[32]), .Q(simTime[32]), .QN( ));
Q_FDP0 \simTime_REG[33] ( .CK(eClk), .D(nextDutTime[33]), .Q(simTime[33]), .QN( ));
Q_FDP0 \simTime_REG[34] ( .CK(eClk), .D(nextDutTime[34]), .Q(simTime[34]), .QN( ));
Q_FDP0 \simTime_REG[35] ( .CK(eClk), .D(nextDutTime[35]), .Q(simTime[35]), .QN( ));
Q_FDP0 \simTime_REG[36] ( .CK(eClk), .D(nextDutTime[36]), .Q(simTime[36]), .QN( ));
Q_FDP0 \simTime_REG[37] ( .CK(eClk), .D(nextDutTime[37]), .Q(simTime[37]), .QN( ));
Q_FDP0 \simTime_REG[38] ( .CK(eClk), .D(nextDutTime[38]), .Q(simTime[38]), .QN( ));
Q_FDP0 \simTime_REG[39] ( .CK(eClk), .D(nextDutTime[39]), .Q(simTime[39]), .QN( ));
Q_FDP0 \simTime_REG[40] ( .CK(eClk), .D(nextDutTime[40]), .Q(simTime[40]), .QN( ));
Q_FDP0 \simTime_REG[41] ( .CK(eClk), .D(nextDutTime[41]), .Q(simTime[41]), .QN( ));
Q_FDP0 \simTime_REG[42] ( .CK(eClk), .D(nextDutTime[42]), .Q(simTime[42]), .QN( ));
Q_FDP0 \simTime_REG[43] ( .CK(eClk), .D(nextDutTime[43]), .Q(simTime[43]), .QN( ));
Q_FDP0 \simTime_REG[44] ( .CK(eClk), .D(nextDutTime[44]), .Q(simTime[44]), .QN( ));
Q_FDP0 \simTime_REG[45] ( .CK(eClk), .D(nextDutTime[45]), .Q(simTime[45]), .QN( ));
Q_FDP0 \simTime_REG[46] ( .CK(eClk), .D(nextDutTime[46]), .Q(simTime[46]), .QN( ));
Q_FDP0 \simTime_REG[47] ( .CK(eClk), .D(nextDutTime[47]), .Q(simTime[47]), .QN( ));
Q_FDP0 \simTime_REG[48] ( .CK(eClk), .D(nextDutTime[48]), .Q(simTime[48]), .QN( ));
Q_FDP0 \simTime_REG[49] ( .CK(eClk), .D(nextDutTime[49]), .Q(simTime[49]), .QN( ));
Q_FDP0 \simTime_REG[50] ( .CK(eClk), .D(nextDutTime[50]), .Q(simTime[50]), .QN( ));
Q_FDP0 \simTime_REG[51] ( .CK(eClk), .D(nextDutTime[51]), .Q(simTime[51]), .QN( ));
Q_FDP0 \simTime_REG[52] ( .CK(eClk), .D(nextDutTime[52]), .Q(simTime[52]), .QN( ));
Q_FDP0 \simTime_REG[53] ( .CK(eClk), .D(nextDutTime[53]), .Q(simTime[53]), .QN( ));
Q_FDP0 \simTime_REG[54] ( .CK(eClk), .D(nextDutTime[54]), .Q(simTime[54]), .QN( ));
Q_FDP0 \simTime_REG[55] ( .CK(eClk), .D(nextDutTime[55]), .Q(simTime[55]), .QN( ));
Q_FDP0 \simTime_REG[56] ( .CK(eClk), .D(nextDutTime[56]), .Q(simTime[56]), .QN( ));
Q_FDP0 \simTime_REG[57] ( .CK(eClk), .D(nextDutTime[57]), .Q(simTime[57]), .QN( ));
Q_FDP0 \simTime_REG[58] ( .CK(eClk), .D(nextDutTime[58]), .Q(simTime[58]), .QN( ));
Q_FDP0 \simTime_REG[59] ( .CK(eClk), .D(nextDutTime[59]), .Q(simTime[59]), .QN( ));
Q_FDP0 \simTime_REG[60] ( .CK(eClk), .D(nextDutTime[60]), .Q(simTime[60]), .QN( ));
Q_FDP0 \simTime_REG[61] ( .CK(eClk), .D(nextDutTime[61]), .Q(simTime[61]), .QN( ));
Q_FDP0 \simTime_REG[62] ( .CK(eClk), .D(nextDutTime[62]), .Q(simTime[62]), .QN( ));
Q_FDP0 \simTime_REG[63] ( .CK(eClk), .D(nextDutTime[63]), .Q(simTime[63]), .QN( ));
Q_FDP0 zminT_REG  ( .CK(eClk), .D(n213), .Q(zminT), .QN( ));
Q_NR03 U1088 ( .A0(n210), .A1(n211), .A2(n212), .Z(n213));
Q_OR03 U1089 ( .A0(minT[1]), .A1(minT[0]), .A2(n209), .Z(n212));
Q_OR03 U1090 ( .A0(minT[4]), .A1(minT[3]), .A2(minT[2]), .Z(n211));
Q_OR03 U1091 ( .A0(minT[7]), .A1(minT[6]), .A2(minT[5]), .Z(n210));
Q_OR03 U1092 ( .A0(minT[10]), .A1(minT[9]), .A2(minT[8]), .Z(n209));
Q_FDP0 \xc_top.mioPIW_1_REG[0] ( .CK(xc_top.uClk), .D(n145), .Q(xc_top.mioPIW_1[0]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[1] ( .CK(xc_top.uClk), .D(n146), .Q(xc_top.mioPIW_1[1]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[2] ( .CK(xc_top.uClk), .D(n147), .Q(xc_top.mioPIW_1[2]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[3] ( .CK(xc_top.uClk), .D(n148), .Q(xc_top.mioPIW_1[3]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[4] ( .CK(xc_top.uClk), .D(n149), .Q(xc_top.mioPIW_1[4]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[5] ( .CK(xc_top.uClk), .D(n150), .Q(xc_top.mioPIW_1[5]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[6] ( .CK(xc_top.uClk), .D(n151), .Q(xc_top.mioPIW_1[6]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[7] ( .CK(xc_top.uClk), .D(n152), .Q(xc_top.mioPIW_1[7]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[8] ( .CK(xc_top.uClk), .D(n153), .Q(xc_top.mioPIW_1[8]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[9] ( .CK(xc_top.uClk), .D(n154), .Q(xc_top.mioPIW_1[9]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[10] ( .CK(xc_top.uClk), .D(n155), .Q(xc_top.mioPIW_1[10]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[11] ( .CK(xc_top.uClk), .D(n156), .Q(xc_top.mioPIW_1[11]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[12] ( .CK(xc_top.uClk), .D(n157), .Q(xc_top.mioPIW_1[12]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[13] ( .CK(xc_top.uClk), .D(n158), .Q(xc_top.mioPIW_1[13]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[14] ( .CK(xc_top.uClk), .D(n159), .Q(xc_top.mioPIW_1[14]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[15] ( .CK(xc_top.uClk), .D(n160), .Q(xc_top.mioPIW_1[15]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[16] ( .CK(xc_top.uClk), .D(n161), .Q(xc_top.mioPIW_1[16]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[17] ( .CK(xc_top.uClk), .D(n162), .Q(xc_top.mioPIW_1[17]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[18] ( .CK(xc_top.uClk), .D(n163), .Q(xc_top.mioPIW_1[18]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[19] ( .CK(xc_top.uClk), .D(n164), .Q(xc_top.mioPIW_1[19]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[20] ( .CK(xc_top.uClk), .D(n165), .Q(xc_top.mioPIW_1[20]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[21] ( .CK(xc_top.uClk), .D(n166), .Q(xc_top.mioPIW_1[21]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[22] ( .CK(xc_top.uClk), .D(n167), .Q(xc_top.mioPIW_1[22]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[23] ( .CK(xc_top.uClk), .D(n168), .Q(xc_top.mioPIW_1[23]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[24] ( .CK(xc_top.uClk), .D(n169), .Q(xc_top.mioPIW_1[24]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[25] ( .CK(xc_top.uClk), .D(n170), .Q(xc_top.mioPIW_1[25]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[26] ( .CK(xc_top.uClk), .D(n171), .Q(xc_top.mioPIW_1[26]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[27] ( .CK(xc_top.uClk), .D(n172), .Q(xc_top.mioPIW_1[27]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[28] ( .CK(xc_top.uClk), .D(n173), .Q(xc_top.mioPIW_1[28]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[29] ( .CK(xc_top.uClk), .D(n174), .Q(xc_top.mioPIW_1[29]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[30] ( .CK(xc_top.uClk), .D(n175), .Q(xc_top.mioPIW_1[30]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[31] ( .CK(xc_top.uClk), .D(n176), .Q(xc_top.mioPIW_1[31]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[32] ( .CK(xc_top.uClk), .D(n177), .Q(xc_top.mioPIW_1[32]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[33] ( .CK(xc_top.uClk), .D(n178), .Q(xc_top.mioPIW_1[33]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[34] ( .CK(xc_top.uClk), .D(n179), .Q(xc_top.mioPIW_1[34]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[35] ( .CK(xc_top.uClk), .D(n180), .Q(xc_top.mioPIW_1[35]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[36] ( .CK(xc_top.uClk), .D(n181), .Q(xc_top.mioPIW_1[36]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[37] ( .CK(xc_top.uClk), .D(n182), .Q(xc_top.mioPIW_1[37]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[38] ( .CK(xc_top.uClk), .D(n183), .Q(xc_top.mioPIW_1[38]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[39] ( .CK(xc_top.uClk), .D(n184), .Q(xc_top.mioPIW_1[39]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[40] ( .CK(xc_top.uClk), .D(n185), .Q(xc_top.mioPIW_1[40]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[41] ( .CK(xc_top.uClk), .D(n186), .Q(xc_top.mioPIW_1[41]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[42] ( .CK(xc_top.uClk), .D(n187), .Q(xc_top.mioPIW_1[42]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[43] ( .CK(xc_top.uClk), .D(n188), .Q(xc_top.mioPIW_1[43]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[44] ( .CK(xc_top.uClk), .D(n189), .Q(xc_top.mioPIW_1[44]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[45] ( .CK(xc_top.uClk), .D(n190), .Q(xc_top.mioPIW_1[45]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[46] ( .CK(xc_top.uClk), .D(n191), .Q(xc_top.mioPIW_1[46]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[47] ( .CK(xc_top.uClk), .D(n192), .Q(xc_top.mioPIW_1[47]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[48] ( .CK(xc_top.uClk), .D(n193), .Q(xc_top.mioPIW_1[48]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[49] ( .CK(xc_top.uClk), .D(n194), .Q(xc_top.mioPIW_1[49]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[50] ( .CK(xc_top.uClk), .D(n195), .Q(xc_top.mioPIW_1[50]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[51] ( .CK(xc_top.uClk), .D(n196), .Q(xc_top.mioPIW_1[51]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[52] ( .CK(xc_top.uClk), .D(n197), .Q(xc_top.mioPIW_1[52]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[53] ( .CK(xc_top.uClk), .D(n198), .Q(xc_top.mioPIW_1[53]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[54] ( .CK(xc_top.uClk), .D(n199), .Q(xc_top.mioPIW_1[54]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[55] ( .CK(xc_top.uClk), .D(n200), .Q(xc_top.mioPIW_1[55]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[56] ( .CK(xc_top.uClk), .D(n201), .Q(xc_top.mioPIW_1[56]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[57] ( .CK(xc_top.uClk), .D(n202), .Q(xc_top.mioPIW_1[57]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[58] ( .CK(xc_top.uClk), .D(n203), .Q(xc_top.mioPIW_1[58]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[59] ( .CK(xc_top.uClk), .D(n204), .Q(xc_top.mioPIW_1[59]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[60] ( .CK(xc_top.uClk), .D(n205), .Q(xc_top.mioPIW_1[60]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[61] ( .CK(xc_top.uClk), .D(n206), .Q(xc_top.mioPIW_1[61]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[62] ( .CK(xc_top.uClk), .D(n207), .Q(xc_top.mioPIW_1[62]), .QN( ));
Q_FDP0 \xc_top.mioPIW_1_REG[63] ( .CK(xc_top.uClk), .D(n208), .Q(xc_top.mioPIW_1[63]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[0] ( .CK(xc_top.uClk), .D(n81), .Q(xc_top.mioPIW_0[0]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[1] ( .CK(xc_top.uClk), .D(n82), .Q(xc_top.mioPIW_0[1]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[2] ( .CK(xc_top.uClk), .D(n83), .Q(xc_top.mioPIW_0[2]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[3] ( .CK(xc_top.uClk), .D(n84), .Q(xc_top.mioPIW_0[3]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[4] ( .CK(xc_top.uClk), .D(n85), .Q(xc_top.mioPIW_0[4]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[5] ( .CK(xc_top.uClk), .D(n86), .Q(xc_top.mioPIW_0[5]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[6] ( .CK(xc_top.uClk), .D(n87), .Q(xc_top.mioPIW_0[6]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[7] ( .CK(xc_top.uClk), .D(n88), .Q(xc_top.mioPIW_0[7]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[8] ( .CK(xc_top.uClk), .D(n89), .Q(xc_top.mioPIW_0[8]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[9] ( .CK(xc_top.uClk), .D(n90), .Q(xc_top.mioPIW_0[9]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[10] ( .CK(xc_top.uClk), .D(n91), .Q(xc_top.mioPIW_0[10]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[11] ( .CK(xc_top.uClk), .D(n92), .Q(xc_top.mioPIW_0[11]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[12] ( .CK(xc_top.uClk), .D(n93), .Q(xc_top.mioPIW_0[12]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[13] ( .CK(xc_top.uClk), .D(n94), .Q(xc_top.mioPIW_0[13]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[14] ( .CK(xc_top.uClk), .D(n95), .Q(xc_top.mioPIW_0[14]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[15] ( .CK(xc_top.uClk), .D(n96), .Q(xc_top.mioPIW_0[15]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[16] ( .CK(xc_top.uClk), .D(n97), .Q(xc_top.mioPIW_0[16]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[17] ( .CK(xc_top.uClk), .D(n98), .Q(xc_top.mioPIW_0[17]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[18] ( .CK(xc_top.uClk), .D(n99), .Q(xc_top.mioPIW_0[18]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[19] ( .CK(xc_top.uClk), .D(n100), .Q(xc_top.mioPIW_0[19]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[20] ( .CK(xc_top.uClk), .D(n101), .Q(xc_top.mioPIW_0[20]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[21] ( .CK(xc_top.uClk), .D(n102), .Q(xc_top.mioPIW_0[21]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[22] ( .CK(xc_top.uClk), .D(n103), .Q(xc_top.mioPIW_0[22]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[23] ( .CK(xc_top.uClk), .D(n104), .Q(xc_top.mioPIW_0[23]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[24] ( .CK(xc_top.uClk), .D(n105), .Q(xc_top.mioPIW_0[24]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[25] ( .CK(xc_top.uClk), .D(n106), .Q(xc_top.mioPIW_0[25]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[26] ( .CK(xc_top.uClk), .D(n107), .Q(xc_top.mioPIW_0[26]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[27] ( .CK(xc_top.uClk), .D(n108), .Q(xc_top.mioPIW_0[27]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[28] ( .CK(xc_top.uClk), .D(n109), .Q(xc_top.mioPIW_0[28]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[29] ( .CK(xc_top.uClk), .D(n110), .Q(xc_top.mioPIW_0[29]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[30] ( .CK(xc_top.uClk), .D(n111), .Q(xc_top.mioPIW_0[30]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[31] ( .CK(xc_top.uClk), .D(n112), .Q(xc_top.mioPIW_0[31]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[32] ( .CK(xc_top.uClk), .D(n113), .Q(xc_top.mioPIW_0[32]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[33] ( .CK(xc_top.uClk), .D(n114), .Q(xc_top.mioPIW_0[33]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[34] ( .CK(xc_top.uClk), .D(n115), .Q(xc_top.mioPIW_0[34]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[35] ( .CK(xc_top.uClk), .D(n116), .Q(xc_top.mioPIW_0[35]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[36] ( .CK(xc_top.uClk), .D(n117), .Q(xc_top.mioPIW_0[36]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[37] ( .CK(xc_top.uClk), .D(n118), .Q(xc_top.mioPIW_0[37]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[38] ( .CK(xc_top.uClk), .D(n119), .Q(xc_top.mioPIW_0[38]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[39] ( .CK(xc_top.uClk), .D(n120), .Q(xc_top.mioPIW_0[39]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[40] ( .CK(xc_top.uClk), .D(n121), .Q(xc_top.mioPIW_0[40]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[41] ( .CK(xc_top.uClk), .D(n122), .Q(xc_top.mioPIW_0[41]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[42] ( .CK(xc_top.uClk), .D(n123), .Q(xc_top.mioPIW_0[42]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[43] ( .CK(xc_top.uClk), .D(n124), .Q(xc_top.mioPIW_0[43]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[44] ( .CK(xc_top.uClk), .D(n125), .Q(xc_top.mioPIW_0[44]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[45] ( .CK(xc_top.uClk), .D(n126), .Q(xc_top.mioPIW_0[45]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[46] ( .CK(xc_top.uClk), .D(n127), .Q(xc_top.mioPIW_0[46]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[47] ( .CK(xc_top.uClk), .D(n128), .Q(xc_top.mioPIW_0[47]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[48] ( .CK(xc_top.uClk), .D(n129), .Q(xc_top.mioPIW_0[48]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[49] ( .CK(xc_top.uClk), .D(n130), .Q(xc_top.mioPIW_0[49]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[50] ( .CK(xc_top.uClk), .D(n131), .Q(xc_top.mioPIW_0[50]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[51] ( .CK(xc_top.uClk), .D(n132), .Q(xc_top.mioPIW_0[51]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[52] ( .CK(xc_top.uClk), .D(n133), .Q(xc_top.mioPIW_0[52]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[53] ( .CK(xc_top.uClk), .D(n134), .Q(xc_top.mioPIW_0[53]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[54] ( .CK(xc_top.uClk), .D(n135), .Q(xc_top.mioPIW_0[54]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[55] ( .CK(xc_top.uClk), .D(n136), .Q(xc_top.mioPIW_0[55]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[56] ( .CK(xc_top.uClk), .D(n137), .Q(xc_top.mioPIW_0[56]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[57] ( .CK(xc_top.uClk), .D(n138), .Q(xc_top.mioPIW_0[57]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[58] ( .CK(xc_top.uClk), .D(n139), .Q(xc_top.mioPIW_0[58]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[59] ( .CK(xc_top.uClk), .D(n140), .Q(xc_top.mioPIW_0[59]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[60] ( .CK(xc_top.uClk), .D(n141), .Q(xc_top.mioPIW_0[60]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[61] ( .CK(xc_top.uClk), .D(n142), .Q(xc_top.mioPIW_0[61]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[62] ( .CK(xc_top.uClk), .D(n143), .Q(xc_top.mioPIW_0[62]), .QN( ));
Q_FDP0 \xc_top.mioPIW_0_REG[63] ( .CK(xc_top.uClk), .D(n144), .Q(xc_top.mioPIW_0[63]), .QN( ));
Q_INV U1221 ( .A(ps1[9]), .Z(ps0[9]));
Q_INV U1222 ( .A(n452), .Z(n78));
Q_INV U1223 ( .A(n451), .Z(n77));
Q_INV U1224 ( .A(n457), .Z(n76));
Q_INV U1225 ( .A(n466), .Z(n75));
Q_INV U1226 ( .A(n465), .Z(n74));
Q_INV U1227 ( .A(n469), .Z(n73));
Q_INV U1228 ( .A(n468), .Z(n72));
Q_INV U1229 ( .A(n474), .Z(n71));
Q_INV U1230 ( .A(n483), .Z(n70));
Q_INV U1231 ( .A(n482), .Z(n69));
Q_INV U1232 ( .A(n486), .Z(n68));
Q_INV U1233 ( .A(n485), .Z(n67));
Q_INV U1234 ( .A(n491), .Z(n66));
Q_INV U1235 ( .A(n501), .Z(n65));
Q_INV U1236 ( .A(n500), .Z(n64));
Q_INV U1237 ( .A(n504), .Z(n63));
Q_INV U1238 ( .A(n503), .Z(n62));
Q_INV U1239 ( .A(n509), .Z(n61));
Q_INV U1240 ( .A(n518), .Z(n60));
Q_INV U1241 ( .A(n517), .Z(n59));
Q_INV U1242 ( .A(n521), .Z(n58));
Q_INV U1243 ( .A(n520), .Z(n57));
Q_INV U1244 ( .A(n526), .Z(n56));
Q_INV U1245 ( .A(n535), .Z(n55));
Q_INV U1246 ( .A(n534), .Z(n54));
Q_INV U1247 ( .A(n538), .Z(n53));
Q_INV U1248 ( .A(n537), .Z(n52));
Q_INV U1249 ( .A(n543), .Z(n51));
Q_INV U1250 ( .A(n552), .Z(n50));
Q_INV U1251 ( .A(n551), .Z(n49));
Q_INV U1252 ( .A(n555), .Z(n48));
Q_INV U1253 ( .A(n554), .Z(n47));
Q_INV U1254 ( .A(n560), .Z(n46));
Q_INV U1255 ( .A(n570), .Z(n45));
Q_INV U1256 ( .A(n569), .Z(n44));
Q_INV U1257 ( .A(n573), .Z(n43));
Q_INV U1258 ( .A(n572), .Z(n42));
Q_INV U1259 ( .A(n578), .Z(n41));
Q_INV U1260 ( .A(n587), .Z(n40));
Q_INV U1261 ( .A(n586), .Z(n39));
Q_INV U1262 ( .A(n590), .Z(n38));
Q_INV U1263 ( .A(n589), .Z(n37));
Q_INV U1264 ( .A(n595), .Z(n36));
Q_INV U1265 ( .A(n604), .Z(n35));
Q_INV U1266 ( .A(n603), .Z(n34));
Q_INV U1267 ( .A(n607), .Z(n33));
Q_INV U1268 ( .A(n606), .Z(n32));
Q_INV U1269 ( .A(n612), .Z(n31));
Q_INV U1270 ( .A(n621), .Z(n30));
Q_INV U1271 ( .A(n620), .Z(n29));
Q_INV U1272 ( .A(n624), .Z(n28));
Q_INV U1273 ( .A(n623), .Z(n27));
Q_INV U1274 ( .A(n629), .Z(n26));
Q_INV U1275 ( .A(n639), .Z(n25));
Q_INV U1276 ( .A(n638), .Z(n24));
Q_INV U1277 ( .A(n642), .Z(n23));
Q_INV U1278 ( .A(n641), .Z(n22));
Q_INV U1279 ( .A(n647), .Z(n21));
Q_INV U1280 ( .A(n656), .Z(n20));
Q_INV U1281 ( .A(n655), .Z(n19));
Q_INV U1282 ( .A(n659), .Z(n18));
Q_INV U1283 ( .A(n658), .Z(n17));
Q_INV U1284 ( .A(n664), .Z(n16));
Q_INV U1285 ( .A(n673), .Z(n15));
Q_INV U1286 ( .A(n672), .Z(n14));
Q_INV U1287 ( .A(n676), .Z(n13));
Q_INV U1288 ( .A(n675), .Z(n12));
Q_INV U1289 ( .A(n681), .Z(n11));
Q_INV U1290 ( .A(n690), .Z(n10));
Q_INV U1291 ( .A(n689), .Z(n9));
Q_INV U1292 ( .A(n693), .Z(n8));
Q_INV U1293 ( .A(n692), .Z(n7));
Q_INV U1294 ( .A(n698), .Z(n6));
Q_INV U1295 ( .A(n708), .Z(n5));
Q_INV U1296 ( .A(n707), .Z(n4));
Q_INV U1297 ( .A(n711), .Z(n3));
Q_INV U1298 ( .A(n710), .Z(n2));
Q_INV U1299 ( .A(n716), .Z(n1));
`ifdef CBV

reg [63:0] _zzmiopos [0:3];
always @(n79 or xc_top.mioPOW_0[63] or xc_top.mioPOW_0[62] or xc_top.mioPOW_0[61] or xc_top.mioPOW_0[60]
 or xc_top.mioPOW_0[59] or xc_top.mioPOW_0[58] or xc_top.mioPOW_0[57] or xc_top.mioPOW_0[56] or xc_top.mioPOW_0[55] or xc_top.mioPOW_0[54] or xc_top.mioPOW_0[53] or xc_top.mioPOW_0[52]
 or xc_top.mioPOW_0[51] or xc_top.mioPOW_0[50] or xc_top.mioPOW_0[49] or xc_top.mioPOW_0[48] or xc_top.mioPOW_0[47] or xc_top.mioPOW_0[46] or xc_top.mioPOW_0[45] or xc_top.mioPOW_0[44]
 or xc_top.mioPOW_0[43] or xc_top.mioPOW_0[42] or xc_top.mioPOW_0[41] or xc_top.mioPOW_0[40] or xc_top.mioPOW_0[39] or xc_top.mioPOW_0[38] or xc_top.mioPOW_0[37] or xc_top.mioPOW_0[36]
 or xc_top.mioPOW_0[35] or xc_top.mioPOW_0[34] or xc_top.mioPOW_0[33] or xc_top.mioPOW_0[32] or xc_top.mioPOW_0[31] or xc_top.mioPOW_0[30] or xc_top.mioPOW_0[29] or xc_top.mioPOW_0[28]
 or xc_top.mioPOW_0[27] or xc_top.mioPOW_0[26] or xc_top.mioPOW_0[25] or xc_top.mioPOW_0[24] or xc_top.mioPOW_0[23] or xc_top.mioPOW_0[22] or xc_top.mioPOW_0[21] or xc_top.mioPOW_0[20]
 or xc_top.mioPOW_0[19] or xc_top.mioPOW_0[18] or xc_top.mioPOW_0[17] or xc_top.mioPOW_0[16] or xc_top.mioPOW_0[15] or xc_top.mioPOW_0[14] or xc_top.mioPOW_0[13] or xc_top.mioPOW_0[12]
 or xc_top.mioPOW_0[11] or xc_top.mioPOW_0[10] or xc_top.mioPOW_0[9] or xc_top.mioPOW_0[8] or xc_top.mioPOW_0[7] or xc_top.mioPOW_0[6] or xc_top.mioPOW_0[5] or xc_top.mioPOW_0[4]
 or xc_top.mioPOW_0[3] or xc_top.mioPOW_0[2] or xc_top.mioPOW_0[1] or xc_top.mioPOW_0[0] or n80 or nextClkTimePO[63] or nextClkTimePO[62] or nextClkTimePO[61]
 or nextClkTimePO[60] or nextClkTimePO[59] or nextClkTimePO[58] or nextClkTimePO[57] or nextClkTimePO[56] or nextClkTimePO[55] or nextClkTimePO[54] or nextClkTimePO[53]
 or nextClkTimePO[52] or nextClkTimePO[51] or nextClkTimePO[50] or nextClkTimePO[49] or nextClkTimePO[48] or nextClkTimePO[47] or nextClkTimePO[46] or nextClkTimePO[45]
 or nextClkTimePO[44] or nextClkTimePO[43] or nextClkTimePO[42] or nextClkTimePO[41] or nextClkTimePO[40] or nextClkTimePO[39] or nextClkTimePO[38] or nextClkTimePO[37]
 or nextClkTimePO[36] or nextClkTimePO[35] or nextClkTimePO[34] or nextClkTimePO[33] or nextClkTimePO[32] or nextClkTimePO[31] or nextClkTimePO[30] or nextClkTimePO[29]
 or nextClkTimePO[28] or nextClkTimePO[27] or nextClkTimePO[26] or nextClkTimePO[25] or nextClkTimePO[24] or nextClkTimePO[23] or nextClkTimePO[22] or nextClkTimePO[21]
 or nextClkTimePO[20] or nextClkTimePO[19] or nextClkTimePO[18] or nextClkTimePO[17] or nextClkTimePO[16] or nextClkTimePO[15] or nextClkTimePO[14] or nextClkTimePO[13]
 or nextClkTimePO[12] or nextClkTimePO[11] or nextClkTimePO[10] or nextClkTimePO[9] or nextClkTimePO[8] or nextClkTimePO[7] or nextClkTimePO[6] or nextClkTimePO[5]
 or nextClkTimePO[4] or nextClkTimePO[3] or nextClkTimePO[2] or nextClkTimePO[1] or nextClkTimePO[0] or xc_top.mioPOW_2[63] or xc_top.mioPOW_2[62] or xc_top.mioPOW_2[61]
 or xc_top.mioPOW_2[60] or xc_top.mioPOW_2[59] or xc_top.mioPOW_2[58] or xc_top.mioPOW_2[57] or xc_top.mioPOW_2[56] or xc_top.mioPOW_2[55] or xc_top.mioPOW_2[54] or xc_top.mioPOW_2[53]
 or xc_top.mioPOW_2[52] or xc_top.mioPOW_2[51] or xc_top.mioPOW_2[50] or xc_top.mioPOW_2[49] or xc_top.mioPOW_2[48] or xc_top.mioPOW_2[47] or xc_top.mioPOW_2[46] or xc_top.mioPOW_2[45]
 or xc_top.mioPOW_2[44] or xc_top.mioPOW_2[43] or xc_top.mioPOW_2[42] or xc_top.mioPOW_2[41] or xc_top.mioPOW_2[40] or xc_top.mioPOW_2[39] or xc_top.mioPOW_2[38] or xc_top.mioPOW_2[37]
 or xc_top.mioPOW_2[36] or xc_top.mioPOW_2[35] or xc_top.mioPOW_2[34] or xc_top.mioPOW_2[33] or xc_top.mioPOW_2[32] or xc_top.mioPOW_2[31] or xc_top.mioPOW_2[30] or xc_top.mioPOW_2[29]
 or xc_top.mioPOW_2[28] or xc_top.mioPOW_2[27] or xc_top.mioPOW_2[26] or xc_top.mioPOW_2[25] or xc_top.mioPOW_2[24] or xc_top.mioPOW_2[23] or xc_top.mioPOW_2[22] or xc_top.mioPOW_2[21]
 or xc_top.mioPOW_2[20] or xc_top.mioPOW_2[19] or xc_top.mioPOW_2[18] or xc_top.mioPOW_2[17] or xc_top.mioPOW_2[16] or xc_top.mioPOW_2[15] or xc_top.mioPOW_2[14] or xc_top.mioPOW_2[13]
 or xc_top.mioPOW_2[12] or xc_top.mioPOW_2[11] or xc_top.mioPOW_2[10] or xc_top.mioPOW_2[9] or xc_top.mioPOW_2[8] or xc_top.mioPOW_2[7] or xc_top.mioPOW_2[6] or xc_top.mioPOW_2[5]
 or xc_top.mioPOW_2[4] or xc_top.mioPOW_2[3] or xc_top.mioPOW_2[2] or xc_top.mioPOW_2[1] or xc_top.mioPOW_2[0])
#0 begin
if (n80)
_zzmiopos[{n79, n79}] =
{xc_top.mioPOW_0[63], xc_top.mioPOW_0[62], xc_top.mioPOW_0[61], xc_top.mioPOW_0[60], xc_top.mioPOW_0[59],
 xc_top.mioPOW_0[58], xc_top.mioPOW_0[57], xc_top.mioPOW_0[56], xc_top.mioPOW_0[55], xc_top.mioPOW_0[54], xc_top.mioPOW_0[53], xc_top.mioPOW_0[52], xc_top.mioPOW_0[51],
 xc_top.mioPOW_0[50], xc_top.mioPOW_0[49], xc_top.mioPOW_0[48], xc_top.mioPOW_0[47], xc_top.mioPOW_0[46], xc_top.mioPOW_0[45], xc_top.mioPOW_0[44], xc_top.mioPOW_0[43],
 xc_top.mioPOW_0[42], xc_top.mioPOW_0[41], xc_top.mioPOW_0[40], xc_top.mioPOW_0[39], xc_top.mioPOW_0[38], xc_top.mioPOW_0[37], xc_top.mioPOW_0[36], xc_top.mioPOW_0[35],
 xc_top.mioPOW_0[34], xc_top.mioPOW_0[33], xc_top.mioPOW_0[32], xc_top.mioPOW_0[31], xc_top.mioPOW_0[30], xc_top.mioPOW_0[29], xc_top.mioPOW_0[28], xc_top.mioPOW_0[27],
 xc_top.mioPOW_0[26], xc_top.mioPOW_0[25], xc_top.mioPOW_0[24], xc_top.mioPOW_0[23], xc_top.mioPOW_0[22], xc_top.mioPOW_0[21], xc_top.mioPOW_0[20], xc_top.mioPOW_0[19],
 xc_top.mioPOW_0[18], xc_top.mioPOW_0[17], xc_top.mioPOW_0[16], xc_top.mioPOW_0[15], xc_top.mioPOW_0[14], xc_top.mioPOW_0[13], xc_top.mioPOW_0[12], xc_top.mioPOW_0[11],
 xc_top.mioPOW_0[10], xc_top.mioPOW_0[9], xc_top.mioPOW_0[8], xc_top.mioPOW_0[7], xc_top.mioPOW_0[6], xc_top.mioPOW_0[5], xc_top.mioPOW_0[4], xc_top.mioPOW_0[3],
 xc_top.mioPOW_0[2], xc_top.mioPOW_0[1], xc_top.mioPOW_0[0]};
if (n80)
_zzmiopos[{n79, n80}] =
{nextClkTimePO[63], nextClkTimePO[62], nextClkTimePO[61], nextClkTimePO[60], nextClkTimePO[59],
 nextClkTimePO[58], nextClkTimePO[57], nextClkTimePO[56], nextClkTimePO[55], nextClkTimePO[54], nextClkTimePO[53], nextClkTimePO[52], nextClkTimePO[51],
 nextClkTimePO[50], nextClkTimePO[49], nextClkTimePO[48], nextClkTimePO[47], nextClkTimePO[46], nextClkTimePO[45], nextClkTimePO[44], nextClkTimePO[43],
 nextClkTimePO[42], nextClkTimePO[41], nextClkTimePO[40], nextClkTimePO[39], nextClkTimePO[38], nextClkTimePO[37], nextClkTimePO[36], nextClkTimePO[35],
 nextClkTimePO[34], nextClkTimePO[33], nextClkTimePO[32], nextClkTimePO[31], nextClkTimePO[30], nextClkTimePO[29], nextClkTimePO[28], nextClkTimePO[27],
 nextClkTimePO[26], nextClkTimePO[25], nextClkTimePO[24], nextClkTimePO[23], nextClkTimePO[22], nextClkTimePO[21], nextClkTimePO[20], nextClkTimePO[19],
 nextClkTimePO[18], nextClkTimePO[17], nextClkTimePO[16], nextClkTimePO[15], nextClkTimePO[14], nextClkTimePO[13], nextClkTimePO[12], nextClkTimePO[11],
 nextClkTimePO[10], nextClkTimePO[9], nextClkTimePO[8], nextClkTimePO[7], nextClkTimePO[6], nextClkTimePO[5], nextClkTimePO[4], nextClkTimePO[3],
 nextClkTimePO[2], nextClkTimePO[1], nextClkTimePO[0]};
if (n80)
_zzmiopos[{n80, n79}] =
{xc_top.mioPOW_2[63], xc_top.mioPOW_2[62], xc_top.mioPOW_2[61], xc_top.mioPOW_2[60], xc_top.mioPOW_2[59],
 xc_top.mioPOW_2[58], xc_top.mioPOW_2[57], xc_top.mioPOW_2[56], xc_top.mioPOW_2[55], xc_top.mioPOW_2[54], xc_top.mioPOW_2[53], xc_top.mioPOW_2[52], xc_top.mioPOW_2[51],
 xc_top.mioPOW_2[50], xc_top.mioPOW_2[49], xc_top.mioPOW_2[48], xc_top.mioPOW_2[47], xc_top.mioPOW_2[46], xc_top.mioPOW_2[45], xc_top.mioPOW_2[44], xc_top.mioPOW_2[43],
 xc_top.mioPOW_2[42], xc_top.mioPOW_2[41], xc_top.mioPOW_2[40], xc_top.mioPOW_2[39], xc_top.mioPOW_2[38], xc_top.mioPOW_2[37], xc_top.mioPOW_2[36], xc_top.mioPOW_2[35],
 xc_top.mioPOW_2[34], xc_top.mioPOW_2[33], xc_top.mioPOW_2[32], xc_top.mioPOW_2[31], xc_top.mioPOW_2[30], xc_top.mioPOW_2[29], xc_top.mioPOW_2[28], xc_top.mioPOW_2[27],
 xc_top.mioPOW_2[26], xc_top.mioPOW_2[25], xc_top.mioPOW_2[24], xc_top.mioPOW_2[23], xc_top.mioPOW_2[22], xc_top.mioPOW_2[21], xc_top.mioPOW_2[20], xc_top.mioPOW_2[19],
 xc_top.mioPOW_2[18], xc_top.mioPOW_2[17], xc_top.mioPOW_2[16], xc_top.mioPOW_2[15], xc_top.mioPOW_2[14], xc_top.mioPOW_2[13], xc_top.mioPOW_2[12], xc_top.mioPOW_2[11],
 xc_top.mioPOW_2[10], xc_top.mioPOW_2[9], xc_top.mioPOW_2[8], xc_top.mioPOW_2[7], xc_top.mioPOW_2[6], xc_top.mioPOW_2[5], xc_top.mioPOW_2[4], xc_top.mioPOW_2[3],
 xc_top.mioPOW_2[2], xc_top.mioPOW_2[1], xc_top.mioPOW_2[0]};
end
`else

MPW4X64 _zzmiopos ( .A1(n79), .A0(n79), .DI63(xc_top.mioPOW_0[63]), .DI62(xc_top.mioPOW_0[62]), .DI61(xc_top.mioPOW_0[61]), .DI60(xc_top.mioPOW_0[60]),
 .DI59(xc_top.mioPOW_0[59]), .DI58(xc_top.mioPOW_0[58]), .DI57(xc_top.mioPOW_0[57]), .DI56(xc_top.mioPOW_0[56]), .DI55(xc_top.mioPOW_0[55]), .DI54(xc_top.mioPOW_0[54]), .DI53(xc_top.mioPOW_0[53]), .DI52(xc_top.mioPOW_0[52]),
 .DI51(xc_top.mioPOW_0[51]), .DI50(xc_top.mioPOW_0[50]), .DI49(xc_top.mioPOW_0[49]), .DI48(xc_top.mioPOW_0[48]), .DI47(xc_top.mioPOW_0[47]), .DI46(xc_top.mioPOW_0[46]), .DI45(xc_top.mioPOW_0[45]), .DI44(xc_top.mioPOW_0[44]),
 .DI43(xc_top.mioPOW_0[43]), .DI42(xc_top.mioPOW_0[42]), .DI41(xc_top.mioPOW_0[41]), .DI40(xc_top.mioPOW_0[40]), .DI39(xc_top.mioPOW_0[39]), .DI38(xc_top.mioPOW_0[38]), .DI37(xc_top.mioPOW_0[37]), .DI36(xc_top.mioPOW_0[36]),
 .DI35(xc_top.mioPOW_0[35]), .DI34(xc_top.mioPOW_0[34]), .DI33(xc_top.mioPOW_0[33]), .DI32(xc_top.mioPOW_0[32]), .DI31(xc_top.mioPOW_0[31]), .DI30(xc_top.mioPOW_0[30]), .DI29(xc_top.mioPOW_0[29]), .DI28(xc_top.mioPOW_0[28]),
 .DI27(xc_top.mioPOW_0[27]), .DI26(xc_top.mioPOW_0[26]), .DI25(xc_top.mioPOW_0[25]), .DI24(xc_top.mioPOW_0[24]), .DI23(xc_top.mioPOW_0[23]), .DI22(xc_top.mioPOW_0[22]), .DI21(xc_top.mioPOW_0[21]), .DI20(xc_top.mioPOW_0[20]),
 .DI19(xc_top.mioPOW_0[19]), .DI18(xc_top.mioPOW_0[18]), .DI17(xc_top.mioPOW_0[17]), .DI16(xc_top.mioPOW_0[16]), .DI15(xc_top.mioPOW_0[15]), .DI14(xc_top.mioPOW_0[14]), .DI13(xc_top.mioPOW_0[13]), .DI12(xc_top.mioPOW_0[12]),
 .DI11(xc_top.mioPOW_0[11]), .DI10(xc_top.mioPOW_0[10]), .DI9(xc_top.mioPOW_0[9]), .DI8(xc_top.mioPOW_0[8]), .DI7(xc_top.mioPOW_0[7]), .DI6(xc_top.mioPOW_0[6]), .DI5(xc_top.mioPOW_0[5]), .DI4(xc_top.mioPOW_0[4]),
 .DI3(xc_top.mioPOW_0[3]), .DI2(xc_top.mioPOW_0[2]), .DI1(xc_top.mioPOW_0[1]), .DI0(xc_top.mioPOW_0[0]), .WE(n80), .SYNC_IN(n79), .SYNC_OUT(n719));
// pragma CVASTRPROP INSTANCE "_zzmiopos" HDL_MEMORY_DECL "1 63 0 0 3"
MPW4X64 U1301 ( .A1(n79), .A0(n80), .DI63(nextClkTimePO[63]), .DI62(nextClkTimePO[62]), .DI61(nextClkTimePO[61]), .DI60(nextClkTimePO[60]),
 .DI59(nextClkTimePO[59]), .DI58(nextClkTimePO[58]), .DI57(nextClkTimePO[57]), .DI56(nextClkTimePO[56]), .DI55(nextClkTimePO[55]), .DI54(nextClkTimePO[54]), .DI53(nextClkTimePO[53]), .DI52(nextClkTimePO[52]),
 .DI51(nextClkTimePO[51]), .DI50(nextClkTimePO[50]), .DI49(nextClkTimePO[49]), .DI48(nextClkTimePO[48]), .DI47(nextClkTimePO[47]), .DI46(nextClkTimePO[46]), .DI45(nextClkTimePO[45]), .DI44(nextClkTimePO[44]),
 .DI43(nextClkTimePO[43]), .DI42(nextClkTimePO[42]), .DI41(nextClkTimePO[41]), .DI40(nextClkTimePO[40]), .DI39(nextClkTimePO[39]), .DI38(nextClkTimePO[38]), .DI37(nextClkTimePO[37]), .DI36(nextClkTimePO[36]),
 .DI35(nextClkTimePO[35]), .DI34(nextClkTimePO[34]), .DI33(nextClkTimePO[33]), .DI32(nextClkTimePO[32]), .DI31(nextClkTimePO[31]), .DI30(nextClkTimePO[30]), .DI29(nextClkTimePO[29]), .DI28(nextClkTimePO[28]),
 .DI27(nextClkTimePO[27]), .DI26(nextClkTimePO[26]), .DI25(nextClkTimePO[25]), .DI24(nextClkTimePO[24]), .DI23(nextClkTimePO[23]), .DI22(nextClkTimePO[22]), .DI21(nextClkTimePO[21]), .DI20(nextClkTimePO[20]),
 .DI19(nextClkTimePO[19]), .DI18(nextClkTimePO[18]), .DI17(nextClkTimePO[17]), .DI16(nextClkTimePO[16]), .DI15(nextClkTimePO[15]), .DI14(nextClkTimePO[14]), .DI13(nextClkTimePO[13]), .DI12(nextClkTimePO[12]),
 .DI11(nextClkTimePO[11]), .DI10(nextClkTimePO[10]), .DI9(nextClkTimePO[9]), .DI8(nextClkTimePO[8]), .DI7(nextClkTimePO[7]), .DI6(nextClkTimePO[6]), .DI5(nextClkTimePO[5]), .DI4(nextClkTimePO[4]),
 .DI3(nextClkTimePO[3]), .DI2(nextClkTimePO[2]), .DI1(nextClkTimePO[1]), .DI0(nextClkTimePO[0]), .WE(n80), .SYNC_IN(n719), .SYNC_OUT(n720));
MPW4X64 U1302 ( .A1(n80), .A0(n79), .DI63(xc_top.mioPOW_2[63]), .DI62(xc_top.mioPOW_2[62]), .DI61(xc_top.mioPOW_2[61]), .DI60(xc_top.mioPOW_2[60]),
 .DI59(xc_top.mioPOW_2[59]), .DI58(xc_top.mioPOW_2[58]), .DI57(xc_top.mioPOW_2[57]), .DI56(xc_top.mioPOW_2[56]), .DI55(xc_top.mioPOW_2[55]), .DI54(xc_top.mioPOW_2[54]), .DI53(xc_top.mioPOW_2[53]), .DI52(xc_top.mioPOW_2[52]),
 .DI51(xc_top.mioPOW_2[51]), .DI50(xc_top.mioPOW_2[50]), .DI49(xc_top.mioPOW_2[49]), .DI48(xc_top.mioPOW_2[48]), .DI47(xc_top.mioPOW_2[47]), .DI46(xc_top.mioPOW_2[46]), .DI45(xc_top.mioPOW_2[45]), .DI44(xc_top.mioPOW_2[44]),
 .DI43(xc_top.mioPOW_2[43]), .DI42(xc_top.mioPOW_2[42]), .DI41(xc_top.mioPOW_2[41]), .DI40(xc_top.mioPOW_2[40]), .DI39(xc_top.mioPOW_2[39]), .DI38(xc_top.mioPOW_2[38]), .DI37(xc_top.mioPOW_2[37]), .DI36(xc_top.mioPOW_2[36]),
 .DI35(xc_top.mioPOW_2[35]), .DI34(xc_top.mioPOW_2[34]), .DI33(xc_top.mioPOW_2[33]), .DI32(xc_top.mioPOW_2[32]), .DI31(xc_top.mioPOW_2[31]), .DI30(xc_top.mioPOW_2[30]), .DI29(xc_top.mioPOW_2[29]), .DI28(xc_top.mioPOW_2[28]),
 .DI27(xc_top.mioPOW_2[27]), .DI26(xc_top.mioPOW_2[26]), .DI25(xc_top.mioPOW_2[25]), .DI24(xc_top.mioPOW_2[24]), .DI23(xc_top.mioPOW_2[23]), .DI22(xc_top.mioPOW_2[22]), .DI21(xc_top.mioPOW_2[21]), .DI20(xc_top.mioPOW_2[20]),
 .DI19(xc_top.mioPOW_2[19]), .DI18(xc_top.mioPOW_2[18]), .DI17(xc_top.mioPOW_2[17]), .DI16(xc_top.mioPOW_2[16]), .DI15(xc_top.mioPOW_2[15]), .DI14(xc_top.mioPOW_2[14]), .DI13(xc_top.mioPOW_2[13]), .DI12(xc_top.mioPOW_2[12]),
 .DI11(xc_top.mioPOW_2[11]), .DI10(xc_top.mioPOW_2[10]), .DI9(xc_top.mioPOW_2[9]), .DI8(xc_top.mioPOW_2[8]), .DI7(xc_top.mioPOW_2[7]), .DI6(xc_top.mioPOW_2[6]), .DI5(xc_top.mioPOW_2[5]), .DI4(xc_top.mioPOW_2[4]),
 .DI3(xc_top.mioPOW_2[3]), .DI2(xc_top.mioPOW_2[2]), .DI1(xc_top.mioPOW_2[1]), .DI0(xc_top.mioPOW_2[0]), .WE(n80), .SYNC_IN(n720), .SYNC_OUT( ));
`endif
`ifdef CBV

reg [63:0] _zzmiopis [0:3];
initial begin: U1303
  integer i;
  for (i=0; i<=3; i=i+1) _zzmiopis[i] =
`ifdef CBV_MEM_INIT1
  {64{1'b1}};
`else
  64'b0;
`endif
end
reg [63:0] n723;
assign {n144, n143, n142, n141, n140, n139, n138,
n137, n136, n135, n134, n133, n132, n131, n130,
n129, n128, n127, n126, n125, n124, n123, n122,
n121, n120, n119, n118, n117, n116, n115, n114,
n113, n112, n111, n110, n109, n108, n107, n106,
n105, n104, n103, n102, n101, n100, n99, n98,
n97, n96, n95, n94, n93, n92, n91, n90,
n89, n88, n87, n86, n85, n84, n83, n82,
n81} = n723; 
reg [63:0] n721;
assign {n208, n207, n206, n205, n204, n203, n202,
n201, n200, n199, n198, n197, n196, n195, n194,
n193, n192, n191, n190, n189, n188, n187, n186,
n185, n184, n183, n182, n181, n180, n179, n178,
n177, n176, n175, n174, n173, n172, n171, n170,
n169, n168, n167, n166, n165, n164, n163, n162,
n161, n160, n159, n158, n157, n156, n155, n154,
n153, n152, n151, n150, n149, n148, n147, n146,
n145} = n721; 
always @(n79 or n80)
#0 begin
n723 = _zzmiopis[{n79, n79}];
n721 = _zzmiopis[{n79, n80}];
end
`else

MPR4X64 _zzmiopis ( .A1(n79), .A0(n79), .SYNC_IN(n79), .DO63(n144), .DO62(n143), .DO61(n142),
 .DO60(n141), .DO59(n140), .DO58(n139), .DO57(n138), .DO56(n137), .DO55(n136), .DO54(n135), .DO53(n134),
 .DO52(n133), .DO51(n132), .DO50(n131), .DO49(n130), .DO48(n129), .DO47(n128), .DO46(n127), .DO45(n126),
 .DO44(n125), .DO43(n124), .DO42(n123), .DO41(n122), .DO40(n121), .DO39(n120), .DO38(n119), .DO37(n118),
 .DO36(n117), .DO35(n116), .DO34(n115), .DO33(n114), .DO32(n113), .DO31(n112), .DO30(n111), .DO29(n110),
 .DO28(n109), .DO27(n108), .DO26(n107), .DO25(n106), .DO24(n105), .DO23(n104), .DO22(n103), .DO21(n102),
 .DO20(n101), .DO19(n100), .DO18(n99), .DO17(n98), .DO16(n97), .DO15(n96), .DO14(n95), .DO13(n94),
 .DO12(n93), .DO11(n92), .DO10(n91), .DO9(n90), .DO8(n89), .DO7(n88), .DO6(n87), .DO5(n86),
 .DO4(n85), .DO3(n84), .DO2(n83), .DO1(n82), .DO0(n81), .SYNC_OUT(n721));
// pragma CVASTRPROP INSTANCE "_zzmiopis" HDL_MEMORY_DECL "1 63 0 0 3"
MPR4X64 U1304 ( .A1(n79), .A0(n80), .SYNC_IN(n721), .DO63(n208), .DO62(n207), .DO61(n206),
 .DO60(n205), .DO59(n204), .DO58(n203), .DO57(n202), .DO56(n201), .DO55(n200), .DO54(n199), .DO53(n198),
 .DO52(n197), .DO51(n196), .DO50(n195), .DO49(n194), .DO48(n193), .DO47(n192), .DO46(n191), .DO45(n190),
 .DO44(n189), .DO43(n188), .DO42(n187), .DO41(n186), .DO40(n185), .DO39(n184), .DO38(n183), .DO37(n182),
 .DO36(n181), .DO35(n180), .DO34(n179), .DO33(n178), .DO32(n177), .DO31(n176), .DO30(n175), .DO29(n174),
 .DO28(n173), .DO27(n172), .DO26(n171), .DO25(n170), .DO24(n169), .DO23(n168), .DO22(n167), .DO21(n166),
 .DO20(n165), .DO19(n164), .DO18(n163), .DO17(n162), .DO16(n161), .DO15(n160), .DO14(n159), .DO13(n158),
 .DO12(n157), .DO11(n156), .DO10(n155), .DO9(n154), .DO8(n153), .DO7(n152), .DO6(n151), .DO5(n150),
 .DO4(n149), .DO3(n148), .DO2(n147), .DO1(n146), .DO0(n145), .SYNC_OUT( ));
`endif
`ifdef CBV

reg [63:0] _zzcmds [0:3];
always @(n79 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0] or n80 or xc_top.simTime[63] or xc_top.simTime[62] or xc_top.simTime[61]
 or xc_top.simTime[60] or xc_top.simTime[59] or xc_top.simTime[58] or xc_top.simTime[57] or xc_top.simTime[56] or xc_top.simTime[55] or xc_top.simTime[54] or xc_top.simTime[53]
 or xc_top.simTime[52] or xc_top.simTime[51] or xc_top.simTime[50] or xc_top.simTime[49] or xc_top.simTime[48] or xc_top.simTime[47] or xc_top.simTime[46] or xc_top.simTime[45]
 or xc_top.simTime[44] or xc_top.simTime[43] or xc_top.simTime[42] or xc_top.simTime[41] or xc_top.simTime[40] or xc_top.simTime[39] or xc_top.simTime[38] or xc_top.simTime[37]
 or xc_top.simTime[36] or xc_top.simTime[35] or xc_top.simTime[34] or xc_top.simTime[33] or xc_top.simTime[32] or xc_top.simTime[31] or xc_top.simTime[30] or xc_top.simTime[29]
 or xc_top.simTime[28] or xc_top.simTime[27] or xc_top.simTime[26] or xc_top.simTime[25] or xc_top.simTime[24] or xc_top.simTime[23] or xc_top.simTime[22] or xc_top.simTime[21]
 or xc_top.simTime[20] or xc_top.simTime[19] or xc_top.simTime[18] or xc_top.simTime[17] or xc_top.simTime[16] or xc_top.simTime[15] or xc_top.simTime[14] or xc_top.simTime[13]
 or xc_top.simTime[12] or xc_top.simTime[11] or xc_top.simTime[10] or xc_top.simTime[9] or xc_top.simTime[8] or xc_top.simTime[7] or xc_top.simTime[6] or xc_top.simTime[5]
 or xc_top.simTime[4] or xc_top.simTime[3] or xc_top.simTime[2] or xc_top.simTime[1] or xc_top.simTime[0])
#0 begin
if (n80)
_zzcmds[{n79, n79}] =
{xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0]};
if (n80)
_zzcmds[{n79, n80}] =
{xc_top.simTime[63], xc_top.simTime[62], xc_top.simTime[61], xc_top.simTime[60], xc_top.simTime[59],
 xc_top.simTime[58], xc_top.simTime[57], xc_top.simTime[56], xc_top.simTime[55], xc_top.simTime[54], xc_top.simTime[53], xc_top.simTime[52], xc_top.simTime[51],
 xc_top.simTime[50], xc_top.simTime[49], xc_top.simTime[48], xc_top.simTime[47], xc_top.simTime[46], xc_top.simTime[45], xc_top.simTime[44], xc_top.simTime[43],
 xc_top.simTime[42], xc_top.simTime[41], xc_top.simTime[40], xc_top.simTime[39], xc_top.simTime[38], xc_top.simTime[37], xc_top.simTime[36], xc_top.simTime[35],
 xc_top.simTime[34], xc_top.simTime[33], xc_top.simTime[32], xc_top.simTime[31], xc_top.simTime[30], xc_top.simTime[29], xc_top.simTime[28], xc_top.simTime[27],
 xc_top.simTime[26], xc_top.simTime[25], xc_top.simTime[24], xc_top.simTime[23], xc_top.simTime[22], xc_top.simTime[21], xc_top.simTime[20], xc_top.simTime[19],
 xc_top.simTime[18], xc_top.simTime[17], xc_top.simTime[16], xc_top.simTime[15], xc_top.simTime[14], xc_top.simTime[13], xc_top.simTime[12], xc_top.simTime[11],
 xc_top.simTime[10], xc_top.simTime[9], xc_top.simTime[8], xc_top.simTime[7], xc_top.simTime[6], xc_top.simTime[5], xc_top.simTime[4], xc_top.simTime[3],
 xc_top.simTime[2], xc_top.simTime[1], xc_top.simTime[0]};
end
`else

MPW4X64 _zzcmds ( .A1(n79), .A0(n79), .DI63(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63]), .DI62(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62]), .DI61(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61]), .DI60(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60]),
 .DI59(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59]), .DI58(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58]), .DI57(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57]), .DI56(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56]), .DI55(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55]), .DI54(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54]), .DI53(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53]), .DI52(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52]),
 .DI51(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51]), .DI50(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50]), .DI49(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49]), .DI48(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48]), .DI47(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47]), .DI46(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46]), .DI45(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45]), .DI44(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44]),
 .DI43(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43]), .DI42(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42]), .DI41(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41]), .DI40(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40]), .DI39(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39]), .DI38(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38]), .DI37(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37]), .DI36(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36]),
 .DI35(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35]), .DI34(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34]), .DI33(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33]), .DI32(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32]), .DI31(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31]), .DI30(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30]), .DI29(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29]), .DI28(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28]),
 .DI27(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27]), .DI26(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26]), .DI25(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25]), .DI24(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24]), .DI23(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23]), .DI22(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22]), .DI21(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21]), .DI20(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20]),
 .DI19(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19]), .DI18(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18]), .DI17(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17]), .DI16(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16]), .DI15(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15]), .DI14(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14]), .DI13(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13]), .DI12(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12]),
 .DI11(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11]), .DI10(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10]), .DI9(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9]), .DI8(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8]), .DI7(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7]), .DI6(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6]), .DI5(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5]), .DI4(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4]),
 .DI3(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3]), .DI2(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2]), .DI1(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1]), .DI0(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0]), .WE(n80), .SYNC_IN(n79), .SYNC_OUT(n722));
// pragma CVASTRPROP INSTANCE "_zzcmds" HDL_MEMORY_DECL "1 63 0 0 3"
MPW4X64 U1306 ( .A1(n79), .A0(n80), .DI63(xc_top.simTime[63]), .DI62(xc_top.simTime[62]), .DI61(xc_top.simTime[61]), .DI60(xc_top.simTime[60]),
 .DI59(xc_top.simTime[59]), .DI58(xc_top.simTime[58]), .DI57(xc_top.simTime[57]), .DI56(xc_top.simTime[56]), .DI55(xc_top.simTime[55]), .DI54(xc_top.simTime[54]), .DI53(xc_top.simTime[53]), .DI52(xc_top.simTime[52]),
 .DI51(xc_top.simTime[51]), .DI50(xc_top.simTime[50]), .DI49(xc_top.simTime[49]), .DI48(xc_top.simTime[48]), .DI47(xc_top.simTime[47]), .DI46(xc_top.simTime[46]), .DI45(xc_top.simTime[45]), .DI44(xc_top.simTime[44]),
 .DI43(xc_top.simTime[43]), .DI42(xc_top.simTime[42]), .DI41(xc_top.simTime[41]), .DI40(xc_top.simTime[40]), .DI39(xc_top.simTime[39]), .DI38(xc_top.simTime[38]), .DI37(xc_top.simTime[37]), .DI36(xc_top.simTime[36]),
 .DI35(xc_top.simTime[35]), .DI34(xc_top.simTime[34]), .DI33(xc_top.simTime[33]), .DI32(xc_top.simTime[32]), .DI31(xc_top.simTime[31]), .DI30(xc_top.simTime[30]), .DI29(xc_top.simTime[29]), .DI28(xc_top.simTime[28]),
 .DI27(xc_top.simTime[27]), .DI26(xc_top.simTime[26]), .DI25(xc_top.simTime[25]), .DI24(xc_top.simTime[24]), .DI23(xc_top.simTime[23]), .DI22(xc_top.simTime[22]), .DI21(xc_top.simTime[21]), .DI20(xc_top.simTime[20]),
 .DI19(xc_top.simTime[19]), .DI18(xc_top.simTime[18]), .DI17(xc_top.simTime[17]), .DI16(xc_top.simTime[16]), .DI15(xc_top.simTime[15]), .DI14(xc_top.simTime[14]), .DI13(xc_top.simTime[13]), .DI12(xc_top.simTime[12]),
 .DI11(xc_top.simTime[11]), .DI10(xc_top.simTime[10]), .DI9(xc_top.simTime[9]), .DI8(xc_top.simTime[8]), .DI7(xc_top.simTime[7]), .DI6(xc_top.simTime[6]), .DI5(xc_top.simTime[5]), .DI4(xc_top.simTime[4]),
 .DI3(xc_top.simTime[3]), .DI2(xc_top.simTime[2]), .DI1(xc_top.simTime[1]), .DI0(xc_top.simTime[0]), .WE(n80), .SYNC_IN(n722), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zzcmds 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "_zzmiopis 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "_zzmiopos 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "3"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW4X64_MPR4X64
`else
module MPW4X64( A1, A0, DI63, DI62, DI61, DI60, DI59,
 DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51,
 DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43,
 DI42, DI41, DI40, DI39, DI38, DI37, DI36, DI35,
 DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19,
 DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11,
 DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3,
 DI2, DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A1, A0, DI63, DI62, DI61, DI60, DI59, DI58,
 DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49, DI48,
 DI47, DI46, DI45, DI44, DI43, DI42, DI41, DI40, DI39, DI38,
 DI37, DI36, DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28,
 DI27, DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
 DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9, DI8,
 DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR4X64_
`else
module MPR4X64( A1, A0, SYNC_IN, DO63, DO62, DO61, DO60,
 DO59, DO58, DO57, DO56, DO55, DO54, DO53, DO52,
 DO51, DO50, DO49, DO48, DO47, DO46, DO45, DO44,
 DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28,
 DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20,
 DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12,
 DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4,
 DO3, DO2, DO1, DO0, SYNC_OUT);
input  A1, A0, SYNC_IN;
output  DO63, DO62, DO61, DO60, DO59, DO58, DO57, DO56,
 DO55, DO54, DO53, DO52, DO51, DO50, DO49, DO48, DO47, DO46,
 DO45, DO44, DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27, DO26,
 DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16,
 DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6,
 DO5, DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR4X64_
`endif
`define MPW4X64_MPR4X64
`endif
`endif
