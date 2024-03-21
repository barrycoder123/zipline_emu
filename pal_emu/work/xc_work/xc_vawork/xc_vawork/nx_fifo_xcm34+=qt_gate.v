
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm34 ( empty, full, underflow, overflow, used_slots, free_slots, 
	rdata, clk, rst_n, wen, ren, clear, wdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output underflow;
output overflow;
output [2:0] used_slots;
output [2:0] free_slots;
output [127:0] rdata;
input clk;
input rst_n;
input wen;
input ren;
input clear;
input [127:0] wdata;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire \depth_n._zy_simnet_overflow_3_w$ ;
wire \depth_n._zy_simnet_underflow_2_w$ ;
wire [2:0] \depth_n.wptr ;
wire [2:0] \depth_n.rptr ;
supply0 n271;
ixc_assign \depth_n._zz_strnp_0 ( underflow, 
	\depth_n._zy_simnet_underflow_2_w$ );
ixc_assign \depth_n._zz_strnp_1 ( overflow, 
	\depth_n._zy_simnet_overflow_3_w$ );
nx_fifo_ctrl_xcm40 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
	.used_slots( used_slots[2:0]), .free_slots( free_slots[2:0]), 
	.rptr( \depth_n.rptr [2:0]), .wptr( \depth_n.wptr [2:0]), 
	.underflow( \depth_n._zy_simnet_underflow_2_w$ ), .overflow( 
	\depth_n._zy_simnet_overflow_3_w$ ), .clk( clk), .rst_n( rst_n), 
	.wen( wen), .ren( ren), .clear( clear));
Q_ND02 U3 ( .A0(\depth_n.wptr [2]), .A1(\depth_n.wptr [1]), .Z(n269));
Q_AN03 U4 ( .A0(wen), .A1(n267), .A2(n269), .Z(n268));
Q_INV U5 ( .A(full), .Z(n267));
Q_AN02 U6 ( .A0(n138), .A1(n139), .Z(rdata[0]));
Q_AN02 U7 ( .A0(n138), .A1(n140), .Z(rdata[1]));
Q_AN02 U8 ( .A0(n138), .A1(n141), .Z(rdata[2]));
Q_AN02 U9 ( .A0(n138), .A1(n142), .Z(rdata[3]));
Q_AN02 U10 ( .A0(n138), .A1(n143), .Z(rdata[4]));
Q_AN02 U11 ( .A0(n138), .A1(n144), .Z(rdata[5]));
Q_AN02 U12 ( .A0(n138), .A1(n145), .Z(rdata[6]));
Q_AN02 U13 ( .A0(n138), .A1(n146), .Z(rdata[7]));
Q_AN02 U14 ( .A0(n138), .A1(n147), .Z(rdata[8]));
Q_AN02 U15 ( .A0(n138), .A1(n148), .Z(rdata[9]));
Q_AN02 U16 ( .A0(n138), .A1(n149), .Z(rdata[10]));
Q_AN02 U17 ( .A0(n138), .A1(n150), .Z(rdata[11]));
Q_AN02 U18 ( .A0(n138), .A1(n151), .Z(rdata[12]));
Q_AN02 U19 ( .A0(n138), .A1(n152), .Z(rdata[13]));
Q_AN02 U20 ( .A0(n138), .A1(n153), .Z(rdata[14]));
Q_AN02 U21 ( .A0(n138), .A1(n154), .Z(rdata[15]));
Q_AN02 U22 ( .A0(n138), .A1(n155), .Z(rdata[16]));
Q_AN02 U23 ( .A0(n138), .A1(n156), .Z(rdata[17]));
Q_AN02 U24 ( .A0(n138), .A1(n157), .Z(rdata[18]));
Q_AN02 U25 ( .A0(n138), .A1(n158), .Z(rdata[19]));
Q_AN02 U26 ( .A0(n138), .A1(n159), .Z(rdata[20]));
Q_AN02 U27 ( .A0(n138), .A1(n160), .Z(rdata[21]));
Q_AN02 U28 ( .A0(n138), .A1(n161), .Z(rdata[22]));
Q_AN02 U29 ( .A0(n138), .A1(n162), .Z(rdata[23]));
Q_AN02 U30 ( .A0(n138), .A1(n163), .Z(rdata[24]));
Q_AN02 U31 ( .A0(n138), .A1(n164), .Z(rdata[25]));
Q_AN02 U32 ( .A0(n138), .A1(n165), .Z(rdata[26]));
Q_AN02 U33 ( .A0(n138), .A1(n166), .Z(rdata[27]));
Q_AN02 U34 ( .A0(n138), .A1(n167), .Z(rdata[28]));
Q_AN02 U35 ( .A0(n138), .A1(n168), .Z(rdata[29]));
Q_AN02 U36 ( .A0(n138), .A1(n169), .Z(rdata[30]));
Q_AN02 U37 ( .A0(n138), .A1(n170), .Z(rdata[31]));
Q_AN02 U38 ( .A0(n138), .A1(n171), .Z(rdata[32]));
Q_AN02 U39 ( .A0(n138), .A1(n172), .Z(rdata[33]));
Q_AN02 U40 ( .A0(n138), .A1(n173), .Z(rdata[34]));
Q_AN02 U41 ( .A0(n138), .A1(n174), .Z(rdata[35]));
Q_AN02 U42 ( .A0(n138), .A1(n175), .Z(rdata[36]));
Q_AN02 U43 ( .A0(n138), .A1(n176), .Z(rdata[37]));
Q_AN02 U44 ( .A0(n138), .A1(n177), .Z(rdata[38]));
Q_AN02 U45 ( .A0(n138), .A1(n178), .Z(rdata[39]));
Q_AN02 U46 ( .A0(n138), .A1(n179), .Z(rdata[40]));
Q_AN02 U47 ( .A0(n138), .A1(n180), .Z(rdata[41]));
Q_AN02 U48 ( .A0(n138), .A1(n181), .Z(rdata[42]));
Q_AN02 U49 ( .A0(n138), .A1(n182), .Z(rdata[43]));
Q_AN02 U50 ( .A0(n138), .A1(n183), .Z(rdata[44]));
Q_AN02 U51 ( .A0(n138), .A1(n184), .Z(rdata[45]));
Q_AN02 U52 ( .A0(n138), .A1(n185), .Z(rdata[46]));
Q_AN02 U53 ( .A0(n138), .A1(n186), .Z(rdata[47]));
Q_AN02 U54 ( .A0(n138), .A1(n187), .Z(rdata[48]));
Q_AN02 U55 ( .A0(n138), .A1(n188), .Z(rdata[49]));
Q_AN02 U56 ( .A0(n138), .A1(n189), .Z(rdata[50]));
Q_AN02 U57 ( .A0(n138), .A1(n190), .Z(rdata[51]));
Q_AN02 U58 ( .A0(n138), .A1(n191), .Z(rdata[52]));
Q_AN02 U59 ( .A0(n138), .A1(n192), .Z(rdata[53]));
Q_AN02 U60 ( .A0(n138), .A1(n193), .Z(rdata[54]));
Q_AN02 U61 ( .A0(n138), .A1(n194), .Z(rdata[55]));
Q_AN02 U62 ( .A0(n138), .A1(n195), .Z(rdata[56]));
Q_AN02 U63 ( .A0(n138), .A1(n196), .Z(rdata[57]));
Q_AN02 U64 ( .A0(n138), .A1(n197), .Z(rdata[58]));
Q_AN02 U65 ( .A0(n138), .A1(n198), .Z(rdata[59]));
Q_AN02 U66 ( .A0(n138), .A1(n199), .Z(rdata[60]));
Q_AN02 U67 ( .A0(n138), .A1(n200), .Z(rdata[61]));
Q_AN02 U68 ( .A0(n138), .A1(n201), .Z(rdata[62]));
Q_AN02 U69 ( .A0(n138), .A1(n202), .Z(rdata[63]));
Q_AN02 U70 ( .A0(n138), .A1(n203), .Z(rdata[64]));
Q_AN02 U71 ( .A0(n138), .A1(n204), .Z(rdata[65]));
Q_AN02 U72 ( .A0(n138), .A1(n205), .Z(rdata[66]));
Q_AN02 U73 ( .A0(n138), .A1(n206), .Z(rdata[67]));
Q_AN02 U74 ( .A0(n138), .A1(n207), .Z(rdata[68]));
Q_AN02 U75 ( .A0(n138), .A1(n208), .Z(rdata[69]));
Q_AN02 U76 ( .A0(n138), .A1(n209), .Z(rdata[70]));
Q_AN02 U77 ( .A0(n138), .A1(n210), .Z(rdata[71]));
Q_AN02 U78 ( .A0(n138), .A1(n211), .Z(rdata[72]));
Q_AN02 U79 ( .A0(n138), .A1(n212), .Z(rdata[73]));
Q_AN02 U80 ( .A0(n138), .A1(n213), .Z(rdata[74]));
Q_AN02 U81 ( .A0(n138), .A1(n214), .Z(rdata[75]));
Q_AN02 U82 ( .A0(n138), .A1(n215), .Z(rdata[76]));
Q_AN02 U83 ( .A0(n138), .A1(n216), .Z(rdata[77]));
Q_AN02 U84 ( .A0(n138), .A1(n217), .Z(rdata[78]));
Q_AN02 U85 ( .A0(n138), .A1(n218), .Z(rdata[79]));
Q_AN02 U86 ( .A0(n138), .A1(n219), .Z(rdata[80]));
Q_AN02 U87 ( .A0(n138), .A1(n220), .Z(rdata[81]));
Q_AN02 U88 ( .A0(n138), .A1(n221), .Z(rdata[82]));
Q_AN02 U89 ( .A0(n138), .A1(n222), .Z(rdata[83]));
Q_AN02 U90 ( .A0(n138), .A1(n223), .Z(rdata[84]));
Q_AN02 U91 ( .A0(n138), .A1(n224), .Z(rdata[85]));
Q_AN02 U92 ( .A0(n138), .A1(n225), .Z(rdata[86]));
Q_AN02 U93 ( .A0(n138), .A1(n226), .Z(rdata[87]));
Q_AN02 U94 ( .A0(n138), .A1(n227), .Z(rdata[88]));
Q_AN02 U95 ( .A0(n138), .A1(n228), .Z(rdata[89]));
Q_AN02 U96 ( .A0(n138), .A1(n229), .Z(rdata[90]));
Q_AN02 U97 ( .A0(n138), .A1(n230), .Z(rdata[91]));
Q_AN02 U98 ( .A0(n138), .A1(n231), .Z(rdata[92]));
Q_AN02 U99 ( .A0(n138), .A1(n232), .Z(rdata[93]));
Q_AN02 U100 ( .A0(n138), .A1(n233), .Z(rdata[94]));
Q_AN02 U101 ( .A0(n138), .A1(n234), .Z(rdata[95]));
Q_AN02 U102 ( .A0(n138), .A1(n235), .Z(rdata[96]));
Q_AN02 U103 ( .A0(n138), .A1(n236), .Z(rdata[97]));
Q_AN02 U104 ( .A0(n138), .A1(n237), .Z(rdata[98]));
Q_AN02 U105 ( .A0(n138), .A1(n238), .Z(rdata[99]));
Q_AN02 U106 ( .A0(n138), .A1(n239), .Z(rdata[100]));
Q_AN02 U107 ( .A0(n138), .A1(n240), .Z(rdata[101]));
Q_AN02 U108 ( .A0(n138), .A1(n241), .Z(rdata[102]));
Q_AN02 U109 ( .A0(n138), .A1(n242), .Z(rdata[103]));
Q_AN02 U110 ( .A0(n138), .A1(n243), .Z(rdata[104]));
Q_AN02 U111 ( .A0(n138), .A1(n244), .Z(rdata[105]));
Q_AN02 U112 ( .A0(n138), .A1(n245), .Z(rdata[106]));
Q_AN02 U113 ( .A0(n138), .A1(n246), .Z(rdata[107]));
Q_AN02 U114 ( .A0(n138), .A1(n247), .Z(rdata[108]));
Q_AN02 U115 ( .A0(n138), .A1(n248), .Z(rdata[109]));
Q_AN02 U116 ( .A0(n138), .A1(n249), .Z(rdata[110]));
Q_AN02 U117 ( .A0(n138), .A1(n250), .Z(rdata[111]));
Q_AN02 U118 ( .A0(n138), .A1(n251), .Z(rdata[112]));
Q_AN02 U119 ( .A0(n138), .A1(n252), .Z(rdata[113]));
Q_AN02 U120 ( .A0(n138), .A1(n253), .Z(rdata[114]));
Q_AN02 U121 ( .A0(n138), .A1(n254), .Z(rdata[115]));
Q_AN02 U122 ( .A0(n138), .A1(n255), .Z(rdata[116]));
Q_AN02 U123 ( .A0(n138), .A1(n256), .Z(rdata[117]));
Q_AN02 U124 ( .A0(n138), .A1(n257), .Z(rdata[118]));
Q_AN02 U125 ( .A0(n138), .A1(n258), .Z(rdata[119]));
Q_AN02 U126 ( .A0(n138), .A1(n259), .Z(rdata[120]));
Q_AN02 U127 ( .A0(n138), .A1(n260), .Z(rdata[121]));
Q_AN02 U128 ( .A0(n138), .A1(n261), .Z(rdata[122]));
Q_AN02 U129 ( .A0(n138), .A1(n262), .Z(rdata[123]));
Q_AN02 U130 ( .A0(n138), .A1(n263), .Z(rdata[124]));
Q_AN02 U131 ( .A0(n138), .A1(n264), .Z(rdata[125]));
Q_AN02 U132 ( .A0(n138), .A1(n265), .Z(rdata[126]));
Q_AN02 U133 ( .A0(n138), .A1(n266), .Z(rdata[127]));
Q_INV U134 ( .A(empty), .Z(n138));
Q_FDP0 U135 ( .CK(clk), .D(n135), .Q(n137), .QN(n135));
Q_FDP0 U136 ( .CK(clk), .D(n268), .Q(n136), .QN( ));
Q_FDP0B U137 ( .D(n137), .QTFCLK( ), .Q(n134));
Q_XOR2 U138 ( .A0(n137), .A1(n134), .Z(n133));
// pragma CVAINTPROP NET n137 _2_state_ 1
// pragma CVAINTPROP INSTANCE U138 NOBREAKS 1
Q_AN02 U139 ( .A0(n136), .A1(n133), .Z(n132));
Q_FDP0 U140 ( .CK(clk), .D(\depth_n.wptr [0]), .Q(n131), .QN( ));
Q_FDP0 U141 ( .CK(clk), .D(\depth_n.wptr [1]), .Q(n130), .QN( ));
Q_FDP0 U142 ( .CK(clk), .D(\depth_n.wptr [2]), .Q(n129), .QN( ));
Q_FDP0 U143 ( .CK(clk), .D(wdata[0]), .Q(n128), .QN( ));
Q_FDP0 U144 ( .CK(clk), .D(wdata[1]), .Q(n127), .QN( ));
Q_FDP0 U145 ( .CK(clk), .D(wdata[2]), .Q(n126), .QN( ));
Q_FDP0 U146 ( .CK(clk), .D(wdata[3]), .Q(n125), .QN( ));
Q_FDP0 U147 ( .CK(clk), .D(wdata[4]), .Q(n124), .QN( ));
Q_FDP0 U148 ( .CK(clk), .D(wdata[5]), .Q(n123), .QN( ));
Q_FDP0 U149 ( .CK(clk), .D(wdata[6]), .Q(n122), .QN( ));
Q_FDP0 U150 ( .CK(clk), .D(wdata[7]), .Q(n121), .QN( ));
Q_FDP0 U151 ( .CK(clk), .D(wdata[8]), .Q(n120), .QN( ));
Q_FDP0 U152 ( .CK(clk), .D(wdata[9]), .Q(n119), .QN( ));
Q_FDP0 U153 ( .CK(clk), .D(wdata[10]), .Q(n118), .QN( ));
Q_FDP0 U154 ( .CK(clk), .D(wdata[11]), .Q(n117), .QN( ));
Q_FDP0 U155 ( .CK(clk), .D(wdata[12]), .Q(n116), .QN( ));
Q_FDP0 U156 ( .CK(clk), .D(wdata[13]), .Q(n115), .QN( ));
Q_FDP0 U157 ( .CK(clk), .D(wdata[14]), .Q(n114), .QN( ));
Q_FDP0 U158 ( .CK(clk), .D(wdata[15]), .Q(n113), .QN( ));
Q_FDP0 U159 ( .CK(clk), .D(wdata[16]), .Q(n112), .QN( ));
Q_FDP0 U160 ( .CK(clk), .D(wdata[17]), .Q(n111), .QN( ));
Q_FDP0 U161 ( .CK(clk), .D(wdata[18]), .Q(n110), .QN( ));
Q_FDP0 U162 ( .CK(clk), .D(wdata[19]), .Q(n109), .QN( ));
Q_FDP0 U163 ( .CK(clk), .D(wdata[20]), .Q(n108), .QN( ));
Q_FDP0 U164 ( .CK(clk), .D(wdata[21]), .Q(n107), .QN( ));
Q_FDP0 U165 ( .CK(clk), .D(wdata[22]), .Q(n106), .QN( ));
Q_FDP0 U166 ( .CK(clk), .D(wdata[23]), .Q(n105), .QN( ));
Q_FDP0 U167 ( .CK(clk), .D(wdata[24]), .Q(n104), .QN( ));
Q_FDP0 U168 ( .CK(clk), .D(wdata[25]), .Q(n103), .QN( ));
Q_FDP0 U169 ( .CK(clk), .D(wdata[26]), .Q(n102), .QN( ));
Q_FDP0 U170 ( .CK(clk), .D(wdata[27]), .Q(n101), .QN( ));
Q_FDP0 U171 ( .CK(clk), .D(wdata[28]), .Q(n100), .QN( ));
Q_FDP0 U172 ( .CK(clk), .D(wdata[29]), .Q(n99), .QN( ));
Q_FDP0 U173 ( .CK(clk), .D(wdata[30]), .Q(n98), .QN( ));
Q_FDP0 U174 ( .CK(clk), .D(wdata[31]), .Q(n97), .QN( ));
Q_FDP0 U175 ( .CK(clk), .D(wdata[32]), .Q(n96), .QN( ));
Q_FDP0 U176 ( .CK(clk), .D(wdata[33]), .Q(n95), .QN( ));
Q_FDP0 U177 ( .CK(clk), .D(wdata[34]), .Q(n94), .QN( ));
Q_FDP0 U178 ( .CK(clk), .D(wdata[35]), .Q(n93), .QN( ));
Q_FDP0 U179 ( .CK(clk), .D(wdata[36]), .Q(n92), .QN( ));
Q_FDP0 U180 ( .CK(clk), .D(wdata[37]), .Q(n91), .QN( ));
Q_FDP0 U181 ( .CK(clk), .D(wdata[38]), .Q(n90), .QN( ));
Q_FDP0 U182 ( .CK(clk), .D(wdata[39]), .Q(n89), .QN( ));
Q_FDP0 U183 ( .CK(clk), .D(wdata[40]), .Q(n88), .QN( ));
Q_FDP0 U184 ( .CK(clk), .D(wdata[41]), .Q(n87), .QN( ));
Q_FDP0 U185 ( .CK(clk), .D(wdata[42]), .Q(n86), .QN( ));
Q_FDP0 U186 ( .CK(clk), .D(wdata[43]), .Q(n85), .QN( ));
Q_FDP0 U187 ( .CK(clk), .D(wdata[44]), .Q(n84), .QN( ));
Q_FDP0 U188 ( .CK(clk), .D(wdata[45]), .Q(n83), .QN( ));
Q_FDP0 U189 ( .CK(clk), .D(wdata[46]), .Q(n82), .QN( ));
Q_FDP0 U190 ( .CK(clk), .D(wdata[47]), .Q(n81), .QN( ));
Q_FDP0 U191 ( .CK(clk), .D(wdata[48]), .Q(n80), .QN( ));
Q_FDP0 U192 ( .CK(clk), .D(wdata[49]), .Q(n79), .QN( ));
Q_FDP0 U193 ( .CK(clk), .D(wdata[50]), .Q(n78), .QN( ));
Q_FDP0 U194 ( .CK(clk), .D(wdata[51]), .Q(n77), .QN( ));
Q_FDP0 U195 ( .CK(clk), .D(wdata[52]), .Q(n76), .QN( ));
Q_FDP0 U196 ( .CK(clk), .D(wdata[53]), .Q(n75), .QN( ));
Q_FDP0 U197 ( .CK(clk), .D(wdata[54]), .Q(n74), .QN( ));
Q_FDP0 U198 ( .CK(clk), .D(wdata[55]), .Q(n73), .QN( ));
Q_FDP0 U199 ( .CK(clk), .D(wdata[56]), .Q(n72), .QN( ));
Q_FDP0 U200 ( .CK(clk), .D(wdata[57]), .Q(n71), .QN( ));
Q_FDP0 U201 ( .CK(clk), .D(wdata[58]), .Q(n70), .QN( ));
Q_FDP0 U202 ( .CK(clk), .D(wdata[59]), .Q(n69), .QN( ));
Q_FDP0 U203 ( .CK(clk), .D(wdata[60]), .Q(n68), .QN( ));
Q_FDP0 U204 ( .CK(clk), .D(wdata[61]), .Q(n67), .QN( ));
Q_FDP0 U205 ( .CK(clk), .D(wdata[62]), .Q(n66), .QN( ));
Q_FDP0 U206 ( .CK(clk), .D(wdata[63]), .Q(n65), .QN( ));
Q_FDP0 U207 ( .CK(clk), .D(wdata[64]), .Q(n64), .QN( ));
Q_FDP0 U208 ( .CK(clk), .D(wdata[65]), .Q(n63), .QN( ));
Q_FDP0 U209 ( .CK(clk), .D(wdata[66]), .Q(n62), .QN( ));
Q_FDP0 U210 ( .CK(clk), .D(wdata[67]), .Q(n61), .QN( ));
Q_FDP0 U211 ( .CK(clk), .D(wdata[68]), .Q(n60), .QN( ));
Q_FDP0 U212 ( .CK(clk), .D(wdata[69]), .Q(n59), .QN( ));
Q_FDP0 U213 ( .CK(clk), .D(wdata[70]), .Q(n58), .QN( ));
Q_FDP0 U214 ( .CK(clk), .D(wdata[71]), .Q(n57), .QN( ));
Q_FDP0 U215 ( .CK(clk), .D(wdata[72]), .Q(n56), .QN( ));
Q_FDP0 U216 ( .CK(clk), .D(wdata[73]), .Q(n55), .QN( ));
Q_FDP0 U217 ( .CK(clk), .D(wdata[74]), .Q(n54), .QN( ));
Q_FDP0 U218 ( .CK(clk), .D(wdata[75]), .Q(n53), .QN( ));
Q_FDP0 U219 ( .CK(clk), .D(wdata[76]), .Q(n52), .QN( ));
Q_FDP0 U220 ( .CK(clk), .D(wdata[77]), .Q(n51), .QN( ));
Q_FDP0 U221 ( .CK(clk), .D(wdata[78]), .Q(n50), .QN( ));
Q_FDP0 U222 ( .CK(clk), .D(wdata[79]), .Q(n49), .QN( ));
Q_FDP0 U223 ( .CK(clk), .D(wdata[80]), .Q(n48), .QN( ));
Q_FDP0 U224 ( .CK(clk), .D(wdata[81]), .Q(n47), .QN( ));
Q_FDP0 U225 ( .CK(clk), .D(wdata[82]), .Q(n46), .QN( ));
Q_FDP0 U226 ( .CK(clk), .D(wdata[83]), .Q(n45), .QN( ));
Q_FDP0 U227 ( .CK(clk), .D(wdata[84]), .Q(n44), .QN( ));
Q_FDP0 U228 ( .CK(clk), .D(wdata[85]), .Q(n43), .QN( ));
Q_FDP0 U229 ( .CK(clk), .D(wdata[86]), .Q(n42), .QN( ));
Q_FDP0 U230 ( .CK(clk), .D(wdata[87]), .Q(n41), .QN( ));
Q_FDP0 U231 ( .CK(clk), .D(wdata[88]), .Q(n40), .QN( ));
Q_FDP0 U232 ( .CK(clk), .D(wdata[89]), .Q(n39), .QN( ));
Q_FDP0 U233 ( .CK(clk), .D(wdata[90]), .Q(n38), .QN( ));
Q_FDP0 U234 ( .CK(clk), .D(wdata[91]), .Q(n37), .QN( ));
Q_FDP0 U235 ( .CK(clk), .D(wdata[92]), .Q(n36), .QN( ));
Q_FDP0 U236 ( .CK(clk), .D(wdata[93]), .Q(n35), .QN( ));
Q_FDP0 U237 ( .CK(clk), .D(wdata[94]), .Q(n34), .QN( ));
Q_FDP0 U238 ( .CK(clk), .D(wdata[95]), .Q(n33), .QN( ));
Q_FDP0 U239 ( .CK(clk), .D(wdata[96]), .Q(n32), .QN( ));
Q_FDP0 U240 ( .CK(clk), .D(wdata[97]), .Q(n31), .QN( ));
Q_FDP0 U241 ( .CK(clk), .D(wdata[98]), .Q(n30), .QN( ));
Q_FDP0 U242 ( .CK(clk), .D(wdata[99]), .Q(n29), .QN( ));
Q_FDP0 U243 ( .CK(clk), .D(wdata[100]), .Q(n28), .QN( ));
Q_FDP0 U244 ( .CK(clk), .D(wdata[101]), .Q(n27), .QN( ));
Q_FDP0 U245 ( .CK(clk), .D(wdata[102]), .Q(n26), .QN( ));
Q_FDP0 U246 ( .CK(clk), .D(wdata[103]), .Q(n25), .QN( ));
Q_FDP0 U247 ( .CK(clk), .D(wdata[104]), .Q(n24), .QN( ));
Q_FDP0 U248 ( .CK(clk), .D(wdata[105]), .Q(n23), .QN( ));
Q_FDP0 U249 ( .CK(clk), .D(wdata[106]), .Q(n22), .QN( ));
Q_FDP0 U250 ( .CK(clk), .D(wdata[107]), .Q(n21), .QN( ));
Q_FDP0 U251 ( .CK(clk), .D(wdata[108]), .Q(n20), .QN( ));
Q_FDP0 U252 ( .CK(clk), .D(wdata[109]), .Q(n19), .QN( ));
Q_FDP0 U253 ( .CK(clk), .D(wdata[110]), .Q(n18), .QN( ));
Q_FDP0 U254 ( .CK(clk), .D(wdata[111]), .Q(n17), .QN( ));
Q_FDP0 U255 ( .CK(clk), .D(wdata[112]), .Q(n16), .QN( ));
Q_FDP0 U256 ( .CK(clk), .D(wdata[113]), .Q(n15), .QN( ));
Q_FDP0 U257 ( .CK(clk), .D(wdata[114]), .Q(n14), .QN( ));
Q_FDP0 U258 ( .CK(clk), .D(wdata[115]), .Q(n13), .QN( ));
Q_FDP0 U259 ( .CK(clk), .D(wdata[116]), .Q(n12), .QN( ));
Q_FDP0 U260 ( .CK(clk), .D(wdata[117]), .Q(n11), .QN( ));
Q_FDP0 U261 ( .CK(clk), .D(wdata[118]), .Q(n10), .QN( ));
Q_FDP0 U262 ( .CK(clk), .D(wdata[119]), .Q(n9), .QN( ));
Q_FDP0 U263 ( .CK(clk), .D(wdata[120]), .Q(n8), .QN( ));
Q_FDP0 U264 ( .CK(clk), .D(wdata[121]), .Q(n7), .QN( ));
Q_FDP0 U265 ( .CK(clk), .D(wdata[122]), .Q(n6), .QN( ));
Q_FDP0 U266 ( .CK(clk), .D(wdata[123]), .Q(n5), .QN( ));
Q_FDP0 U267 ( .CK(clk), .D(wdata[124]), .Q(n4), .QN( ));
Q_FDP0 U268 ( .CK(clk), .D(wdata[125]), .Q(n3), .QN( ));
Q_FDP0 U269 ( .CK(clk), .D(wdata[126]), .Q(n2), .QN( ));
Q_FDP0 U270 ( .CK(clk), .D(wdata[127]), .Q(n1), .QN( ));
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
`ifdef CBV

reg [127:0] \depth_n.r_data  [5:0];
initial begin: U273
  integer i;
  for (i=5; i>=0; i=i-1) \depth_n.r_data [i] =
`ifdef CBV_MEM_INIT1
  {128{1'b1}};
`else
  128'b0;
`endif
end
reg [127:0] n272;
assign {n266, n265, n264, n263, n262, n261, n260,
n259, n258, n257, n256, n255, n254, n253, n252,
n251, n250, n249, n248, n247, n246, n245, n244,
n243, n242, n241, n240, n239, n238, n237, n236,
n235, n234, n233, n232, n231, n230, n229, n228,
n227, n226, n225, n224, n223, n222, n221, n220,
n219, n218, n217, n216, n215, n214, n213, n212,
n211, n210, n209, n208, n207, n206, n205, n204,
n203, n202, n201, n200, n199, n198, n197, n196,
n195, n194, n193, n192, n191, n190, n189, n188,
n187, n186, n185, n184, n183, n182, n181, n180,
n179, n178, n177, n176, n175, n174, n173, n172,
n171, n170, n169, n168, n167, n166, n165, n164,
n163, n162, n161, n160, n159, n158, n157, n156,
n155, n154, n153, n152, n151, n150, n149, n148,
n147, n146, n145, n144, n143, n142, n141, n140,
n139} = n272; 
always @(n129 or n130 or n131 or n1 or n2
 or n3 or n4 or n5 or n6 or n7 or n8 or n9 or n10
 or n11 or n12 or n13 or n14 or n15 or n16 or n17 or n18
 or n19 or n20 or n21 or n22 or n23 or n24 or n25 or n26
 or n27 or n28 or n29 or n30 or n31 or n32 or n33 or n34
 or n35 or n36 or n37 or n38 or n39 or n40 or n41 or n42
 or n43 or n44 or n45 or n46 or n47 or n48 or n49 or n50
 or n51 or n52 or n53 or n54 or n55 or n56 or n57 or n58
 or n59 or n60 or n61 or n62 or n63 or n64 or n65 or n66
 or n67 or n68 or n69 or n70 or n71 or n72 or n73 or n74
 or n75 or n76 or n77 or n78 or n79 or n80 or n81 or n82
 or n83 or n84 or n85 or n86 or n87 or n88 or n89 or n90
 or n91 or n92 or n93 or n94 or n95 or n96 or n97 or n98
 or n99 or n100 or n101 or n102 or n103 or n104 or n105 or n106
 or n107 or n108 or n109 or n110 or n111 or n112 or n113 or n114
 or n115 or n116 or n117 or n118 or n119 or n120 or n121 or n122
 or n123 or n124 or n125 or n126 or n127 or n128 or n132 or \depth_n.rptr [2]
 or \depth_n.rptr [1] or \depth_n.rptr [0])
#0 begin
if (n132)
\depth_n.r_data [{n129, n130, n131}] =
{n1, n2, n3, n4, n5,
 n6, n7, n8, n9, n10, n11, n12, n13,
 n14, n15, n16, n17, n18, n19, n20, n21,
 n22, n23, n24, n25, n26, n27, n28, n29,
 n30, n31, n32, n33, n34, n35, n36, n37,
 n38, n39, n40, n41, n42, n43, n44, n45,
 n46, n47, n48, n49, n50, n51, n52, n53,
 n54, n55, n56, n57, n58, n59, n60, n61,
 n62, n63, n64, n65, n66, n67, n68, n69,
 n70, n71, n72, n73, n74, n75, n76, n77,
 n78, n79, n80, n81, n82, n83, n84, n85,
 n86, n87, n88, n89, n90, n91, n92, n93,
 n94, n95, n96, n97, n98, n99, n100, n101,
 n102, n103, n104, n105, n106, n107, n108, n109,
 n110, n111, n112, n113, n114, n115, n116, n117,
 n118, n119, n120, n121, n122, n123, n124, n125,
 n126, n127, n128};
n272 = \depth_n.r_data [{\depth_n.rptr [2], \depth_n.rptr [1], \depth_n.rptr [0]}];
end
`else

MPW8X128 \depth_n.r_data  ( .A2(n129), .A1(n130), .A0(n131), .DI127(n1), .DI126(n2), .DI125(n3),
 .DI124(n4), .DI123(n5), .DI122(n6), .DI121(n7), .DI120(n8), .DI119(n9), .DI118(n10), .DI117(n11),
 .DI116(n12), .DI115(n13), .DI114(n14), .DI113(n15), .DI112(n16), .DI111(n17), .DI110(n18), .DI109(n19),
 .DI108(n20), .DI107(n21), .DI106(n22), .DI105(n23), .DI104(n24), .DI103(n25), .DI102(n26), .DI101(n27),
 .DI100(n28), .DI99(n29), .DI98(n30), .DI97(n31), .DI96(n32), .DI95(n33), .DI94(n34), .DI93(n35),
 .DI92(n36), .DI91(n37), .DI90(n38), .DI89(n39), .DI88(n40), .DI87(n41), .DI86(n42), .DI85(n43),
 .DI84(n44), .DI83(n45), .DI82(n46), .DI81(n47), .DI80(n48), .DI79(n49), .DI78(n50), .DI77(n51),
 .DI76(n52), .DI75(n53), .DI74(n54), .DI73(n55), .DI72(n56), .DI71(n57), .DI70(n58), .DI69(n59),
 .DI68(n60), .DI67(n61), .DI66(n62), .DI65(n63), .DI64(n64), .DI63(n65), .DI62(n66), .DI61(n67),
 .DI60(n68), .DI59(n69), .DI58(n70), .DI57(n71), .DI56(n72), .DI55(n73), .DI54(n74), .DI53(n75),
 .DI52(n76), .DI51(n77), .DI50(n78), .DI49(n79), .DI48(n80), .DI47(n81), .DI46(n82), .DI45(n83),
 .DI44(n84), .DI43(n85), .DI42(n86), .DI41(n87), .DI40(n88), .DI39(n89), .DI38(n90), .DI37(n91),
 .DI36(n92), .DI35(n93), .DI34(n94), .DI33(n95), .DI32(n96), .DI31(n97), .DI30(n98), .DI29(n99),
 .DI28(n100), .DI27(n101), .DI26(n102), .DI25(n103), .DI24(n104), .DI23(n105), .DI22(n106), .DI21(n107),
 .DI20(n108), .DI19(n109), .DI18(n110), .DI17(n111), .DI16(n112), .DI15(n113), .DI14(n114), .DI13(n115),
 .DI12(n116), .DI11(n117), .DI10(n118), .DI9(n119), .DI8(n120), .DI7(n121), .DI6(n122), .DI5(n123),
 .DI4(n124), .DI3(n125), .DI2(n126), .DI1(n127), .DI0(n128), .WE(n132), .SYNC_IN(n271), .SYNC_OUT(n272));
// pragma CVASTRPROP INSTANCE "\depth_n.r_data " HDL_MEMORY_DECL "1 127 0 5 0"
MPR8X128 U274 ( .A2(\depth_n.rptr [2]), .A1(\depth_n.rptr [1]), .A0(\depth_n.rptr [0]), .SYNC_IN(n272), .DO127(n266), .DO126(n265),
 .DO125(n264), .DO124(n263), .DO123(n262), .DO122(n261), .DO121(n260), .DO120(n259), .DO119(n258), .DO118(n257),
 .DO117(n256), .DO116(n255), .DO115(n254), .DO114(n253), .DO113(n252), .DO112(n251), .DO111(n250), .DO110(n249),
 .DO109(n248), .DO108(n247), .DO107(n246), .DO106(n245), .DO105(n244), .DO104(n243), .DO103(n242), .DO102(n241),
 .DO101(n240), .DO100(n239), .DO99(n238), .DO98(n237), .DO97(n236), .DO96(n235), .DO95(n234), .DO94(n233),
 .DO93(n232), .DO92(n231), .DO91(n230), .DO90(n229), .DO89(n228), .DO88(n227), .DO87(n226), .DO86(n225),
 .DO85(n224), .DO84(n223), .DO83(n222), .DO82(n221), .DO81(n220), .DO80(n219), .DO79(n218), .DO78(n217),
 .DO77(n216), .DO76(n215), .DO75(n214), .DO74(n213), .DO73(n212), .DO72(n211), .DO71(n210), .DO70(n209),
 .DO69(n208), .DO68(n207), .DO67(n206), .DO66(n205), .DO65(n204), .DO64(n203), .DO63(n202), .DO62(n201),
 .DO61(n200), .DO60(n199), .DO59(n198), .DO58(n197), .DO57(n196), .DO56(n195), .DO55(n194), .DO54(n193),
 .DO53(n192), .DO52(n191), .DO51(n190), .DO50(n189), .DO49(n188), .DO48(n187), .DO47(n186), .DO46(n185),
 .DO45(n184), .DO44(n183), .DO43(n182), .DO42(n181), .DO41(n180), .DO40(n179), .DO39(n178), .DO38(n177),
 .DO37(n176), .DO36(n175), .DO35(n174), .DO34(n173), .DO33(n172), .DO32(n171), .DO31(n170), .DO30(n169),
 .DO29(n168), .DO28(n167), .DO27(n166), .DO26(n165), .DO25(n164), .DO24(n163), .DO23(n162), .DO22(n161),
 .DO21(n160), .DO20(n159), .DO19(n158), .DO18(n157), .DO17(n156), .DO16(n155), .DO15(n154), .DO14(n153),
 .DO13(n152), .DO12(n151), .DO11(n150), .DO10(n149), .DO9(n148), .DO8(n147), .DO7(n146), .DO6(n145),
 .DO5(n144), .DO4(n143), .DO3(n142), .DO2(n141), .DO1(n140), .DO0(n139), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\depth_n.r_data  1 127 0 5 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
`ifdef CBV
`else
`ifdef MPW8X128_MPR8X128
`else
module MPW8X128( A2, A1, A0, DI127, DI126, DI125, DI124,
 DI123, DI122, DI121, DI120, DI119, DI118, DI117, DI116,
 DI115, DI114, DI113, DI112, DI111, DI110, DI109, DI108,
 DI107, DI106, DI105, DI104, DI103, DI102, DI101, DI100,
 DI99, DI98, DI97, DI96, DI95, DI94, DI93, DI92,
 DI91, DI90, DI89, DI88, DI87, DI86, DI85, DI84,
 DI83, DI82, DI81, DI80, DI79, DI78, DI77, DI76,
 DI75, DI74, DI73, DI72, DI71, DI70, DI69, DI68,
 DI67, DI66, DI65, DI64, DI63, DI62, DI61, DI60,
 DI59, DI58, DI57, DI56, DI55, DI54, DI53, DI52,
 DI51, DI50, DI49, DI48, DI47, DI46, DI45, DI44,
 DI43, DI42, DI41, DI40, DI39, DI38, DI37, DI36,
 DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28,
 DI27, DI26, DI25, DI24, DI23, DI22, DI21, DI20,
 DI19, DI18, DI17, DI16, DI15, DI14, DI13, DI12,
 DI11, DI10, DI9, DI8, DI7, DI6, DI5, DI4,
 DI3, DI2, DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A2, A1, A0, DI127, DI126, DI125, DI124, DI123,
 DI122, DI121, DI120, DI119, DI118, DI117, DI116, DI115, DI114, DI113,
 DI112, DI111, DI110, DI109, DI108, DI107, DI106, DI105, DI104, DI103,
 DI102, DI101, DI100, DI99, DI98, DI97, DI96, DI95, DI94, DI93,
 DI92, DI91, DI90, DI89, DI88, DI87, DI86, DI85, DI84, DI83,
 DI82, DI81, DI80, DI79, DI78, DI77, DI76, DI75, DI74, DI73,
 DI72, DI71, DI70, DI69, DI68, DI67, DI66, DI65, DI64, DI63,
 DI62, DI61, DI60, DI59, DI58, DI57, DI56, DI55, DI54, DI53,
 DI52, DI51, DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43,
 DI42, DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34, DI33,
 DI32, DI31, DI30, DI29, DI28, DI27, DI26, DI25, DI24, DI23,
 DI22, DI21, DI20, DI19, DI18, DI17, DI16, DI15, DI14, DI13,
 DI12, DI11, DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3,
 DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR8X128_
`else
module MPR8X128( A2, A1, A0, SYNC_IN, DO127, DO126, DO125,
 DO124, DO123, DO122, DO121, DO120, DO119, DO118, DO117,
 DO116, DO115, DO114, DO113, DO112, DO111, DO110, DO109,
 DO108, DO107, DO106, DO105, DO104, DO103, DO102, DO101,
 DO100, DO99, DO98, DO97, DO96, DO95, DO94, DO93,
 DO92, DO91, DO90, DO89, DO88, DO87, DO86, DO85,
 DO84, DO83, DO82, DO81, DO80, DO79, DO78, DO77,
 DO76, DO75, DO74, DO73, DO72, DO71, DO70, DO69,
 DO68, DO67, DO66, DO65, DO64, DO63, DO62, DO61,
 DO60, DO59, DO58, DO57, DO56, DO55, DO54, DO53,
 DO52, DO51, DO50, DO49, DO48, DO47, DO46, DO45,
 DO44, DO43, DO42, DO41, DO40, DO39, DO38, DO37,
 DO36, DO35, DO34, DO33, DO32, DO31, DO30, DO29,
 DO28, DO27, DO26, DO25, DO24, DO23, DO22, DO21,
 DO20, DO19, DO18, DO17, DO16, DO15, DO14, DO13,
 DO12, DO11, DO10, DO9, DO8, DO7, DO6, DO5,
 DO4, DO3, DO2, DO1, DO0, SYNC_OUT);
input  A2, A1, A0, SYNC_IN;
output  DO127, DO126, DO125, DO124, DO123, DO122, DO121, DO120,
 DO119, DO118, DO117, DO116, DO115, DO114, DO113, DO112, DO111, DO110,
 DO109, DO108, DO107, DO106, DO105, DO104, DO103, DO102, DO101, DO100,
 DO99, DO98, DO97, DO96, DO95, DO94, DO93, DO92, DO91, DO90,
 DO89, DO88, DO87, DO86, DO85, DO84, DO83, DO82, DO81, DO80,
 DO79, DO78, DO77, DO76, DO75, DO74, DO73, DO72, DO71, DO70,
 DO69, DO68, DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60,
 DO59, DO58, DO57, DO56, DO55, DO54, DO53, DO52, DO51, DO50,
 DO49, DO48, DO47, DO46, DO45, DO44, DO43, DO42, DO41, DO40,
 DO39, DO38, DO37, DO36, DO35, DO34, DO33, DO32, DO31, DO30,
 DO29, DO28, DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20,
 DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10,
 DO9, DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0,
 SYNC_OUT;
endmodule
`define _MPR8X128_
`endif
`define MPW8X128_MPR8X128
`endif
`endif
