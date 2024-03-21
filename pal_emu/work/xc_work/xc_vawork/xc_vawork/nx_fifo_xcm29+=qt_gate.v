
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm29 ( empty, full, underflow, overflow, used_slots, free_slots, 
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
wire [1:0] \depth_n.wptr ;
wire [1:0] \depth_n.rptr ;
supply0 n269;
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
Q_FDP0 U2 ( .CK(clk), .D(wdata[127]), .Q(n268), .QN( ));
Q_FDP0 U3 ( .CK(clk), .D(wdata[126]), .Q(n267), .QN( ));
Q_FDP0 U4 ( .CK(clk), .D(wdata[125]), .Q(n266), .QN( ));
Q_FDP0 U5 ( .CK(clk), .D(wdata[124]), .Q(n265), .QN( ));
Q_FDP0 U6 ( .CK(clk), .D(wdata[123]), .Q(n264), .QN( ));
Q_FDP0 U7 ( .CK(clk), .D(wdata[122]), .Q(n263), .QN( ));
Q_FDP0 U8 ( .CK(clk), .D(wdata[121]), .Q(n262), .QN( ));
Q_FDP0 U9 ( .CK(clk), .D(wdata[120]), .Q(n261), .QN( ));
Q_FDP0 U10 ( .CK(clk), .D(wdata[119]), .Q(n260), .QN( ));
Q_FDP0 U11 ( .CK(clk), .D(wdata[118]), .Q(n259), .QN( ));
Q_FDP0 U12 ( .CK(clk), .D(wdata[117]), .Q(n258), .QN( ));
Q_FDP0 U13 ( .CK(clk), .D(wdata[116]), .Q(n257), .QN( ));
Q_FDP0 U14 ( .CK(clk), .D(wdata[115]), .Q(n256), .QN( ));
Q_FDP0 U15 ( .CK(clk), .D(wdata[114]), .Q(n255), .QN( ));
Q_FDP0 U16 ( .CK(clk), .D(wdata[113]), .Q(n254), .QN( ));
Q_FDP0 U17 ( .CK(clk), .D(wdata[112]), .Q(n253), .QN( ));
Q_FDP0 U18 ( .CK(clk), .D(wdata[111]), .Q(n252), .QN( ));
Q_FDP0 U19 ( .CK(clk), .D(wdata[110]), .Q(n251), .QN( ));
Q_FDP0 U20 ( .CK(clk), .D(wdata[109]), .Q(n250), .QN( ));
Q_FDP0 U21 ( .CK(clk), .D(wdata[108]), .Q(n249), .QN( ));
Q_FDP0 U22 ( .CK(clk), .D(wdata[107]), .Q(n248), .QN( ));
Q_FDP0 U23 ( .CK(clk), .D(wdata[106]), .Q(n247), .QN( ));
Q_FDP0 U24 ( .CK(clk), .D(wdata[105]), .Q(n246), .QN( ));
Q_FDP0 U25 ( .CK(clk), .D(wdata[104]), .Q(n245), .QN( ));
Q_FDP0 U26 ( .CK(clk), .D(wdata[103]), .Q(n244), .QN( ));
Q_FDP0 U27 ( .CK(clk), .D(wdata[102]), .Q(n243), .QN( ));
Q_FDP0 U28 ( .CK(clk), .D(wdata[101]), .Q(n242), .QN( ));
Q_FDP0 U29 ( .CK(clk), .D(wdata[100]), .Q(n241), .QN( ));
Q_FDP0 U30 ( .CK(clk), .D(wdata[99]), .Q(n240), .QN( ));
Q_FDP0 U31 ( .CK(clk), .D(wdata[98]), .Q(n239), .QN( ));
Q_FDP0 U32 ( .CK(clk), .D(wdata[97]), .Q(n238), .QN( ));
Q_FDP0 U33 ( .CK(clk), .D(wdata[96]), .Q(n237), .QN( ));
Q_FDP0 U34 ( .CK(clk), .D(wdata[95]), .Q(n236), .QN( ));
Q_FDP0 U35 ( .CK(clk), .D(wdata[94]), .Q(n235), .QN( ));
Q_FDP0 U36 ( .CK(clk), .D(wdata[93]), .Q(n234), .QN( ));
Q_FDP0 U37 ( .CK(clk), .D(wdata[92]), .Q(n233), .QN( ));
Q_FDP0 U38 ( .CK(clk), .D(wdata[91]), .Q(n232), .QN( ));
Q_FDP0 U39 ( .CK(clk), .D(wdata[90]), .Q(n231), .QN( ));
Q_FDP0 U40 ( .CK(clk), .D(wdata[89]), .Q(n230), .QN( ));
Q_FDP0 U41 ( .CK(clk), .D(wdata[88]), .Q(n229), .QN( ));
Q_FDP0 U42 ( .CK(clk), .D(wdata[87]), .Q(n228), .QN( ));
Q_FDP0 U43 ( .CK(clk), .D(wdata[86]), .Q(n227), .QN( ));
Q_FDP0 U44 ( .CK(clk), .D(wdata[85]), .Q(n226), .QN( ));
Q_FDP0 U45 ( .CK(clk), .D(wdata[84]), .Q(n225), .QN( ));
Q_FDP0 U46 ( .CK(clk), .D(wdata[83]), .Q(n224), .QN( ));
Q_FDP0 U47 ( .CK(clk), .D(wdata[82]), .Q(n223), .QN( ));
Q_FDP0 U48 ( .CK(clk), .D(wdata[81]), .Q(n222), .QN( ));
Q_FDP0 U49 ( .CK(clk), .D(wdata[80]), .Q(n221), .QN( ));
Q_FDP0 U50 ( .CK(clk), .D(wdata[79]), .Q(n220), .QN( ));
Q_FDP0 U51 ( .CK(clk), .D(wdata[78]), .Q(n219), .QN( ));
Q_FDP0 U52 ( .CK(clk), .D(wdata[77]), .Q(n218), .QN( ));
Q_FDP0 U53 ( .CK(clk), .D(wdata[76]), .Q(n217), .QN( ));
Q_FDP0 U54 ( .CK(clk), .D(wdata[75]), .Q(n216), .QN( ));
Q_FDP0 U55 ( .CK(clk), .D(wdata[74]), .Q(n215), .QN( ));
Q_FDP0 U56 ( .CK(clk), .D(wdata[73]), .Q(n214), .QN( ));
Q_FDP0 U57 ( .CK(clk), .D(wdata[72]), .Q(n213), .QN( ));
Q_FDP0 U58 ( .CK(clk), .D(wdata[71]), .Q(n212), .QN( ));
Q_FDP0 U59 ( .CK(clk), .D(wdata[70]), .Q(n211), .QN( ));
Q_FDP0 U60 ( .CK(clk), .D(wdata[69]), .Q(n210), .QN( ));
Q_FDP0 U61 ( .CK(clk), .D(wdata[68]), .Q(n209), .QN( ));
Q_FDP0 U62 ( .CK(clk), .D(wdata[67]), .Q(n208), .QN( ));
Q_FDP0 U63 ( .CK(clk), .D(wdata[66]), .Q(n207), .QN( ));
Q_FDP0 U64 ( .CK(clk), .D(wdata[65]), .Q(n206), .QN( ));
Q_FDP0 U65 ( .CK(clk), .D(wdata[64]), .Q(n205), .QN( ));
Q_FDP0 U66 ( .CK(clk), .D(wdata[63]), .Q(n204), .QN( ));
Q_FDP0 U67 ( .CK(clk), .D(wdata[62]), .Q(n203), .QN( ));
Q_FDP0 U68 ( .CK(clk), .D(wdata[61]), .Q(n202), .QN( ));
Q_FDP0 U69 ( .CK(clk), .D(wdata[60]), .Q(n201), .QN( ));
Q_FDP0 U70 ( .CK(clk), .D(wdata[59]), .Q(n200), .QN( ));
Q_FDP0 U71 ( .CK(clk), .D(wdata[58]), .Q(n199), .QN( ));
Q_FDP0 U72 ( .CK(clk), .D(wdata[57]), .Q(n198), .QN( ));
Q_FDP0 U73 ( .CK(clk), .D(wdata[56]), .Q(n197), .QN( ));
Q_FDP0 U74 ( .CK(clk), .D(wdata[55]), .Q(n196), .QN( ));
Q_FDP0 U75 ( .CK(clk), .D(wdata[54]), .Q(n195), .QN( ));
Q_FDP0 U76 ( .CK(clk), .D(wdata[53]), .Q(n194), .QN( ));
Q_FDP0 U77 ( .CK(clk), .D(wdata[52]), .Q(n193), .QN( ));
Q_FDP0 U78 ( .CK(clk), .D(wdata[51]), .Q(n192), .QN( ));
Q_FDP0 U79 ( .CK(clk), .D(wdata[50]), .Q(n191), .QN( ));
Q_FDP0 U80 ( .CK(clk), .D(wdata[49]), .Q(n190), .QN( ));
Q_FDP0 U81 ( .CK(clk), .D(wdata[48]), .Q(n189), .QN( ));
Q_FDP0 U82 ( .CK(clk), .D(wdata[47]), .Q(n188), .QN( ));
Q_FDP0 U83 ( .CK(clk), .D(wdata[46]), .Q(n187), .QN( ));
Q_FDP0 U84 ( .CK(clk), .D(wdata[45]), .Q(n186), .QN( ));
Q_FDP0 U85 ( .CK(clk), .D(wdata[44]), .Q(n185), .QN( ));
Q_FDP0 U86 ( .CK(clk), .D(wdata[43]), .Q(n184), .QN( ));
Q_FDP0 U87 ( .CK(clk), .D(wdata[42]), .Q(n183), .QN( ));
Q_FDP0 U88 ( .CK(clk), .D(wdata[41]), .Q(n182), .QN( ));
Q_FDP0 U89 ( .CK(clk), .D(wdata[40]), .Q(n181), .QN( ));
Q_FDP0 U90 ( .CK(clk), .D(wdata[39]), .Q(n180), .QN( ));
Q_FDP0 U91 ( .CK(clk), .D(wdata[38]), .Q(n179), .QN( ));
Q_FDP0 U92 ( .CK(clk), .D(wdata[37]), .Q(n178), .QN( ));
Q_FDP0 U93 ( .CK(clk), .D(wdata[36]), .Q(n177), .QN( ));
Q_FDP0 U94 ( .CK(clk), .D(wdata[35]), .Q(n176), .QN( ));
Q_FDP0 U95 ( .CK(clk), .D(wdata[34]), .Q(n175), .QN( ));
Q_FDP0 U96 ( .CK(clk), .D(wdata[33]), .Q(n174), .QN( ));
Q_FDP0 U97 ( .CK(clk), .D(wdata[32]), .Q(n173), .QN( ));
Q_FDP0 U98 ( .CK(clk), .D(wdata[31]), .Q(n172), .QN( ));
Q_FDP0 U99 ( .CK(clk), .D(wdata[30]), .Q(n171), .QN( ));
Q_FDP0 U100 ( .CK(clk), .D(wdata[29]), .Q(n170), .QN( ));
Q_FDP0 U101 ( .CK(clk), .D(wdata[28]), .Q(n169), .QN( ));
Q_FDP0 U102 ( .CK(clk), .D(wdata[27]), .Q(n168), .QN( ));
Q_FDP0 U103 ( .CK(clk), .D(wdata[26]), .Q(n167), .QN( ));
Q_FDP0 U104 ( .CK(clk), .D(wdata[25]), .Q(n166), .QN( ));
Q_FDP0 U105 ( .CK(clk), .D(wdata[24]), .Q(n165), .QN( ));
Q_FDP0 U106 ( .CK(clk), .D(wdata[23]), .Q(n164), .QN( ));
Q_FDP0 U107 ( .CK(clk), .D(wdata[22]), .Q(n163), .QN( ));
Q_FDP0 U108 ( .CK(clk), .D(wdata[21]), .Q(n162), .QN( ));
Q_FDP0 U109 ( .CK(clk), .D(wdata[20]), .Q(n161), .QN( ));
Q_FDP0 U110 ( .CK(clk), .D(wdata[19]), .Q(n160), .QN( ));
Q_FDP0 U111 ( .CK(clk), .D(wdata[18]), .Q(n159), .QN( ));
Q_FDP0 U112 ( .CK(clk), .D(wdata[17]), .Q(n158), .QN( ));
Q_FDP0 U113 ( .CK(clk), .D(wdata[16]), .Q(n157), .QN( ));
Q_FDP0 U114 ( .CK(clk), .D(wdata[15]), .Q(n156), .QN( ));
Q_FDP0 U115 ( .CK(clk), .D(wdata[14]), .Q(n155), .QN( ));
Q_FDP0 U116 ( .CK(clk), .D(wdata[13]), .Q(n154), .QN( ));
Q_FDP0 U117 ( .CK(clk), .D(wdata[12]), .Q(n153), .QN( ));
Q_FDP0 U118 ( .CK(clk), .D(wdata[11]), .Q(n152), .QN( ));
Q_FDP0 U119 ( .CK(clk), .D(wdata[10]), .Q(n151), .QN( ));
Q_FDP0 U120 ( .CK(clk), .D(wdata[9]), .Q(n150), .QN( ));
Q_FDP0 U121 ( .CK(clk), .D(wdata[8]), .Q(n149), .QN( ));
Q_FDP0 U122 ( .CK(clk), .D(wdata[7]), .Q(n148), .QN( ));
Q_FDP0 U123 ( .CK(clk), .D(wdata[6]), .Q(n147), .QN( ));
Q_FDP0 U124 ( .CK(clk), .D(wdata[5]), .Q(n146), .QN( ));
Q_FDP0 U125 ( .CK(clk), .D(wdata[4]), .Q(n145), .QN( ));
Q_FDP0 U126 ( .CK(clk), .D(wdata[3]), .Q(n144), .QN( ));
Q_FDP0 U127 ( .CK(clk), .D(wdata[2]), .Q(n143), .QN( ));
Q_FDP0 U128 ( .CK(clk), .D(wdata[1]), .Q(n142), .QN( ));
Q_FDP0 U129 ( .CK(clk), .D(wdata[0]), .Q(n141), .QN( ));
Q_FDP0 U130 ( .CK(clk), .D(\depth_n.wptr [1]), .Q(n140), .QN( ));
Q_FDP0 U131 ( .CK(clk), .D(\depth_n.wptr [0]), .Q(n139), .QN( ));
Q_AN02 U132 ( .A0(n134), .A1(n137), .Z(n138));
Q_XOR2 U133 ( .A0(n133), .A1(n136), .Z(n137));
// pragma CVAINTPROP NET n133 _2_state_ 1
// pragma CVAINTPROP INSTANCE U133 NOBREAKS 1
Q_FDP0B U134 ( .D(n133), .QTFCLK( ), .Q(n136));
Q_FDP0 U135 ( .CK(clk), .D(n3), .Q(n134), .QN( ));
Q_FDP0 U136 ( .CK(clk), .D(n135), .Q(n133), .QN(n135));
Q_INV U137 ( .A(empty), .Z(n132));
Q_AN02 U138 ( .A0(n132), .A1(n4), .Z(rdata[127]));
Q_AN02 U139 ( .A0(n132), .A1(n5), .Z(rdata[126]));
Q_AN02 U140 ( .A0(n132), .A1(n6), .Z(rdata[125]));
Q_AN02 U141 ( .A0(n132), .A1(n7), .Z(rdata[124]));
Q_AN02 U142 ( .A0(n132), .A1(n8), .Z(rdata[123]));
Q_AN02 U143 ( .A0(n132), .A1(n9), .Z(rdata[122]));
Q_AN02 U144 ( .A0(n132), .A1(n10), .Z(rdata[121]));
Q_AN02 U145 ( .A0(n132), .A1(n11), .Z(rdata[120]));
Q_AN02 U146 ( .A0(n132), .A1(n12), .Z(rdata[119]));
Q_AN02 U147 ( .A0(n132), .A1(n13), .Z(rdata[118]));
Q_AN02 U148 ( .A0(n132), .A1(n14), .Z(rdata[117]));
Q_AN02 U149 ( .A0(n132), .A1(n15), .Z(rdata[116]));
Q_AN02 U150 ( .A0(n132), .A1(n16), .Z(rdata[115]));
Q_AN02 U151 ( .A0(n132), .A1(n17), .Z(rdata[114]));
Q_AN02 U152 ( .A0(n132), .A1(n18), .Z(rdata[113]));
Q_AN02 U153 ( .A0(n132), .A1(n19), .Z(rdata[112]));
Q_AN02 U154 ( .A0(n132), .A1(n20), .Z(rdata[111]));
Q_AN02 U155 ( .A0(n132), .A1(n21), .Z(rdata[110]));
Q_AN02 U156 ( .A0(n132), .A1(n22), .Z(rdata[109]));
Q_AN02 U157 ( .A0(n132), .A1(n23), .Z(rdata[108]));
Q_AN02 U158 ( .A0(n132), .A1(n24), .Z(rdata[107]));
Q_AN02 U159 ( .A0(n132), .A1(n25), .Z(rdata[106]));
Q_AN02 U160 ( .A0(n132), .A1(n26), .Z(rdata[105]));
Q_AN02 U161 ( .A0(n132), .A1(n27), .Z(rdata[104]));
Q_AN02 U162 ( .A0(n132), .A1(n28), .Z(rdata[103]));
Q_AN02 U163 ( .A0(n132), .A1(n29), .Z(rdata[102]));
Q_AN02 U164 ( .A0(n132), .A1(n30), .Z(rdata[101]));
Q_AN02 U165 ( .A0(n132), .A1(n31), .Z(rdata[100]));
Q_AN02 U166 ( .A0(n132), .A1(n32), .Z(rdata[99]));
Q_AN02 U167 ( .A0(n132), .A1(n33), .Z(rdata[98]));
Q_AN02 U168 ( .A0(n132), .A1(n34), .Z(rdata[97]));
Q_AN02 U169 ( .A0(n132), .A1(n35), .Z(rdata[96]));
Q_AN02 U170 ( .A0(n132), .A1(n36), .Z(rdata[95]));
Q_AN02 U171 ( .A0(n132), .A1(n37), .Z(rdata[94]));
Q_AN02 U172 ( .A0(n132), .A1(n38), .Z(rdata[93]));
Q_AN02 U173 ( .A0(n132), .A1(n39), .Z(rdata[92]));
Q_AN02 U174 ( .A0(n132), .A1(n40), .Z(rdata[91]));
Q_AN02 U175 ( .A0(n132), .A1(n41), .Z(rdata[90]));
Q_AN02 U176 ( .A0(n132), .A1(n42), .Z(rdata[89]));
Q_AN02 U177 ( .A0(n132), .A1(n43), .Z(rdata[88]));
Q_AN02 U178 ( .A0(n132), .A1(n44), .Z(rdata[87]));
Q_AN02 U179 ( .A0(n132), .A1(n45), .Z(rdata[86]));
Q_AN02 U180 ( .A0(n132), .A1(n46), .Z(rdata[85]));
Q_AN02 U181 ( .A0(n132), .A1(n47), .Z(rdata[84]));
Q_AN02 U182 ( .A0(n132), .A1(n48), .Z(rdata[83]));
Q_AN02 U183 ( .A0(n132), .A1(n49), .Z(rdata[82]));
Q_AN02 U184 ( .A0(n132), .A1(n50), .Z(rdata[81]));
Q_AN02 U185 ( .A0(n132), .A1(n51), .Z(rdata[80]));
Q_AN02 U186 ( .A0(n132), .A1(n52), .Z(rdata[79]));
Q_AN02 U187 ( .A0(n132), .A1(n53), .Z(rdata[78]));
Q_AN02 U188 ( .A0(n132), .A1(n54), .Z(rdata[77]));
Q_AN02 U189 ( .A0(n132), .A1(n55), .Z(rdata[76]));
Q_AN02 U190 ( .A0(n132), .A1(n56), .Z(rdata[75]));
Q_AN02 U191 ( .A0(n132), .A1(n57), .Z(rdata[74]));
Q_AN02 U192 ( .A0(n132), .A1(n58), .Z(rdata[73]));
Q_AN02 U193 ( .A0(n132), .A1(n59), .Z(rdata[72]));
Q_AN02 U194 ( .A0(n132), .A1(n60), .Z(rdata[71]));
Q_AN02 U195 ( .A0(n132), .A1(n61), .Z(rdata[70]));
Q_AN02 U196 ( .A0(n132), .A1(n62), .Z(rdata[69]));
Q_AN02 U197 ( .A0(n132), .A1(n63), .Z(rdata[68]));
Q_AN02 U198 ( .A0(n132), .A1(n64), .Z(rdata[67]));
Q_AN02 U199 ( .A0(n132), .A1(n65), .Z(rdata[66]));
Q_AN02 U200 ( .A0(n132), .A1(n66), .Z(rdata[65]));
Q_AN02 U201 ( .A0(n132), .A1(n67), .Z(rdata[64]));
Q_AN02 U202 ( .A0(n132), .A1(n68), .Z(rdata[63]));
Q_AN02 U203 ( .A0(n132), .A1(n69), .Z(rdata[62]));
Q_AN02 U204 ( .A0(n132), .A1(n70), .Z(rdata[61]));
Q_AN02 U205 ( .A0(n132), .A1(n71), .Z(rdata[60]));
Q_AN02 U206 ( .A0(n132), .A1(n72), .Z(rdata[59]));
Q_AN02 U207 ( .A0(n132), .A1(n73), .Z(rdata[58]));
Q_AN02 U208 ( .A0(n132), .A1(n74), .Z(rdata[57]));
Q_AN02 U209 ( .A0(n132), .A1(n75), .Z(rdata[56]));
Q_AN02 U210 ( .A0(n132), .A1(n76), .Z(rdata[55]));
Q_AN02 U211 ( .A0(n132), .A1(n77), .Z(rdata[54]));
Q_AN02 U212 ( .A0(n132), .A1(n78), .Z(rdata[53]));
Q_AN02 U213 ( .A0(n132), .A1(n79), .Z(rdata[52]));
Q_AN02 U214 ( .A0(n132), .A1(n80), .Z(rdata[51]));
Q_AN02 U215 ( .A0(n132), .A1(n81), .Z(rdata[50]));
Q_AN02 U216 ( .A0(n132), .A1(n82), .Z(rdata[49]));
Q_AN02 U217 ( .A0(n132), .A1(n83), .Z(rdata[48]));
Q_AN02 U218 ( .A0(n132), .A1(n84), .Z(rdata[47]));
Q_AN02 U219 ( .A0(n132), .A1(n85), .Z(rdata[46]));
Q_AN02 U220 ( .A0(n132), .A1(n86), .Z(rdata[45]));
Q_AN02 U221 ( .A0(n132), .A1(n87), .Z(rdata[44]));
Q_AN02 U222 ( .A0(n132), .A1(n88), .Z(rdata[43]));
Q_AN02 U223 ( .A0(n132), .A1(n89), .Z(rdata[42]));
Q_AN02 U224 ( .A0(n132), .A1(n90), .Z(rdata[41]));
Q_AN02 U225 ( .A0(n132), .A1(n91), .Z(rdata[40]));
Q_AN02 U226 ( .A0(n132), .A1(n92), .Z(rdata[39]));
Q_AN02 U227 ( .A0(n132), .A1(n93), .Z(rdata[38]));
Q_AN02 U228 ( .A0(n132), .A1(n94), .Z(rdata[37]));
Q_AN02 U229 ( .A0(n132), .A1(n95), .Z(rdata[36]));
Q_AN02 U230 ( .A0(n132), .A1(n96), .Z(rdata[35]));
Q_AN02 U231 ( .A0(n132), .A1(n97), .Z(rdata[34]));
Q_AN02 U232 ( .A0(n132), .A1(n98), .Z(rdata[33]));
Q_AN02 U233 ( .A0(n132), .A1(n99), .Z(rdata[32]));
Q_AN02 U234 ( .A0(n132), .A1(n100), .Z(rdata[31]));
Q_AN02 U235 ( .A0(n132), .A1(n101), .Z(rdata[30]));
Q_AN02 U236 ( .A0(n132), .A1(n102), .Z(rdata[29]));
Q_AN02 U237 ( .A0(n132), .A1(n103), .Z(rdata[28]));
Q_AN02 U238 ( .A0(n132), .A1(n104), .Z(rdata[27]));
Q_AN02 U239 ( .A0(n132), .A1(n105), .Z(rdata[26]));
Q_AN02 U240 ( .A0(n132), .A1(n106), .Z(rdata[25]));
Q_AN02 U241 ( .A0(n132), .A1(n107), .Z(rdata[24]));
Q_AN02 U242 ( .A0(n132), .A1(n108), .Z(rdata[23]));
Q_AN02 U243 ( .A0(n132), .A1(n109), .Z(rdata[22]));
Q_AN02 U244 ( .A0(n132), .A1(n110), .Z(rdata[21]));
Q_AN02 U245 ( .A0(n132), .A1(n111), .Z(rdata[20]));
Q_AN02 U246 ( .A0(n132), .A1(n112), .Z(rdata[19]));
Q_AN02 U247 ( .A0(n132), .A1(n113), .Z(rdata[18]));
Q_AN02 U248 ( .A0(n132), .A1(n114), .Z(rdata[17]));
Q_AN02 U249 ( .A0(n132), .A1(n115), .Z(rdata[16]));
Q_AN02 U250 ( .A0(n132), .A1(n116), .Z(rdata[15]));
Q_AN02 U251 ( .A0(n132), .A1(n117), .Z(rdata[14]));
Q_AN02 U252 ( .A0(n132), .A1(n118), .Z(rdata[13]));
Q_AN02 U253 ( .A0(n132), .A1(n119), .Z(rdata[12]));
Q_AN02 U254 ( .A0(n132), .A1(n120), .Z(rdata[11]));
Q_AN02 U255 ( .A0(n132), .A1(n121), .Z(rdata[10]));
Q_AN02 U256 ( .A0(n132), .A1(n122), .Z(rdata[9]));
Q_AN02 U257 ( .A0(n132), .A1(n123), .Z(rdata[8]));
Q_AN02 U258 ( .A0(n132), .A1(n124), .Z(rdata[7]));
Q_AN02 U259 ( .A0(n132), .A1(n125), .Z(rdata[6]));
Q_AN02 U260 ( .A0(n132), .A1(n126), .Z(rdata[5]));
Q_AN02 U261 ( .A0(n132), .A1(n127), .Z(rdata[4]));
Q_AN02 U262 ( .A0(n132), .A1(n128), .Z(rdata[3]));
Q_AN02 U263 ( .A0(n132), .A1(n129), .Z(rdata[2]));
Q_AN02 U264 ( .A0(n132), .A1(n130), .Z(rdata[1]));
Q_AN02 U265 ( .A0(n132), .A1(n131), .Z(rdata[0]));
Q_INV U266 ( .A(full), .Z(n2));
Q_AN02 U267 ( .A0(wen), .A1(n2), .Z(n3));
nx_fifo_ctrl_xcm36 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
	.used_slots( used_slots[2:0]), .free_slots( free_slots[2:0]), 
	.rptr( \depth_n.rptr [1:0]), .wptr( \depth_n.wptr [1:0]), 
	.underflow( \depth_n._zy_simnet_underflow_2_w$ ), .overflow( 
	\depth_n._zy_simnet_overflow_3_w$ ), .clk( clk), .rst_n( rst_n), 
	.wen( wen), .ren( ren), .clear( clear));
ixc_assign \depth_n._zz_strnp_1 ( overflow, 
	\depth_n._zy_simnet_overflow_3_w$ );
ixc_assign \depth_n._zz_strnp_0 ( underflow, 
	\depth_n._zy_simnet_underflow_2_w$ );
`ifdef CBV

reg [127:0] \depth_n.r_data  [3:0];
initial begin: U271
  integer i;
  for (i=3; i>=0; i=i-1) \depth_n.r_data [i] =
`ifdef CBV_MEM_INIT1
  {128{1'b1}};
`else
  128'b0;
`endif
end
reg [127:0] n270;
assign {n4, n5, n6, n7, n8, n9, n10,
n11, n12, n13, n14, n15, n16, n17, n18,
n19, n20, n21, n22, n23, n24, n25, n26,
n27, n28, n29, n30, n31, n32, n33, n34,
n35, n36, n37, n38, n39, n40, n41, n42,
n43, n44, n45, n46, n47, n48, n49, n50,
n51, n52, n53, n54, n55, n56, n57, n58,
n59, n60, n61, n62, n63, n64, n65, n66,
n67, n68, n69, n70, n71, n72, n73, n74,
n75, n76, n77, n78, n79, n80, n81, n82,
n83, n84, n85, n86, n87, n88, n89, n90,
n91, n92, n93, n94, n95, n96, n97, n98,
n99, n100, n101, n102, n103, n104, n105, n106,
n107, n108, n109, n110, n111, n112, n113, n114,
n115, n116, n117, n118, n119, n120, n121, n122,
n123, n124, n125, n126, n127, n128, n129, n130,
n131} = n270; 
always @(n140 or n139 or n268 or n267 or n266
 or n265 or n264 or n263 or n262 or n261 or n260 or n259 or n258
 or n257 or n256 or n255 or n254 or n253 or n252 or n251 or n250
 or n249 or n248 or n247 or n246 or n245 or n244 or n243 or n242
 or n241 or n240 or n239 or n238 or n237 or n236 or n235 or n234
 or n233 or n232 or n231 or n230 or n229 or n228 or n227 or n226
 or n225 or n224 or n223 or n222 or n221 or n220 or n219 or n218
 or n217 or n216 or n215 or n214 or n213 or n212 or n211 or n210
 or n209 or n208 or n207 or n206 or n205 or n204 or n203 or n202
 or n201 or n200 or n199 or n198 or n197 or n196 or n195 or n194
 or n193 or n192 or n191 or n190 or n189 or n188 or n187 or n186
 or n185 or n184 or n183 or n182 or n181 or n180 or n179 or n178
 or n177 or n176 or n175 or n174 or n173 or n172 or n171 or n170
 or n169 or n168 or n167 or n166 or n165 or n164 or n163 or n162
 or n161 or n160 or n159 or n158 or n157 or n156 or n155 or n154
 or n153 or n152 or n151 or n150 or n149 or n148 or n147 or n146
 or n145 or n144 or n143 or n142 or n141 or n138 or \depth_n.rptr [1] or \depth_n.rptr [0])
#0 begin
if (n138)
\depth_n.r_data [{n140, n139}] =
{n268, n267, n266, n265, n264,
 n263, n262, n261, n260, n259, n258, n257, n256,
 n255, n254, n253, n252, n251, n250, n249, n248,
 n247, n246, n245, n244, n243, n242, n241, n240,
 n239, n238, n237, n236, n235, n234, n233, n232,
 n231, n230, n229, n228, n227, n226, n225, n224,
 n223, n222, n221, n220, n219, n218, n217, n216,
 n215, n214, n213, n212, n211, n210, n209, n208,
 n207, n206, n205, n204, n203, n202, n201, n200,
 n199, n198, n197, n196, n195, n194, n193, n192,
 n191, n190, n189, n188, n187, n186, n185, n184,
 n183, n182, n181, n180, n179, n178, n177, n176,
 n175, n174, n173, n172, n171, n170, n169, n168,
 n167, n166, n165, n164, n163, n162, n161, n160,
 n159, n158, n157, n156, n155, n154, n153, n152,
 n151, n150, n149, n148, n147, n146, n145, n144,
 n143, n142, n141};
n270 = \depth_n.r_data [{\depth_n.rptr [1], \depth_n.rptr [0]}];
end
`else

MPW4X128 \depth_n.r_data  ( .A1(n140), .A0(n139), .DI127(n268), .DI126(n267), .DI125(n266), .DI124(n265),
 .DI123(n264), .DI122(n263), .DI121(n262), .DI120(n261), .DI119(n260), .DI118(n259), .DI117(n258), .DI116(n257),
 .DI115(n256), .DI114(n255), .DI113(n254), .DI112(n253), .DI111(n252), .DI110(n251), .DI109(n250), .DI108(n249),
 .DI107(n248), .DI106(n247), .DI105(n246), .DI104(n245), .DI103(n244), .DI102(n243), .DI101(n242), .DI100(n241),
 .DI99(n240), .DI98(n239), .DI97(n238), .DI96(n237), .DI95(n236), .DI94(n235), .DI93(n234), .DI92(n233),
 .DI91(n232), .DI90(n231), .DI89(n230), .DI88(n229), .DI87(n228), .DI86(n227), .DI85(n226), .DI84(n225),
 .DI83(n224), .DI82(n223), .DI81(n222), .DI80(n221), .DI79(n220), .DI78(n219), .DI77(n218), .DI76(n217),
 .DI75(n216), .DI74(n215), .DI73(n214), .DI72(n213), .DI71(n212), .DI70(n211), .DI69(n210), .DI68(n209),
 .DI67(n208), .DI66(n207), .DI65(n206), .DI64(n205), .DI63(n204), .DI62(n203), .DI61(n202), .DI60(n201),
 .DI59(n200), .DI58(n199), .DI57(n198), .DI56(n197), .DI55(n196), .DI54(n195), .DI53(n194), .DI52(n193),
 .DI51(n192), .DI50(n191), .DI49(n190), .DI48(n189), .DI47(n188), .DI46(n187), .DI45(n186), .DI44(n185),
 .DI43(n184), .DI42(n183), .DI41(n182), .DI40(n181), .DI39(n180), .DI38(n179), .DI37(n178), .DI36(n177),
 .DI35(n176), .DI34(n175), .DI33(n174), .DI32(n173), .DI31(n172), .DI30(n171), .DI29(n170), .DI28(n169),
 .DI27(n168), .DI26(n167), .DI25(n166), .DI24(n165), .DI23(n164), .DI22(n163), .DI21(n162), .DI20(n161),
 .DI19(n160), .DI18(n159), .DI17(n158), .DI16(n157), .DI15(n156), .DI14(n155), .DI13(n154), .DI12(n153),
 .DI11(n152), .DI10(n151), .DI9(n150), .DI8(n149), .DI7(n148), .DI6(n147), .DI5(n146), .DI4(n145),
 .DI3(n144), .DI2(n143), .DI1(n142), .DI0(n141), .WE(n138), .SYNC_IN(n269), .SYNC_OUT(n270));
// pragma CVASTRPROP INSTANCE "\depth_n.r_data " HDL_MEMORY_DECL "1 127 0 3 0"
MPR4X128 U272 ( .A1(\depth_n.rptr [1]), .A0(\depth_n.rptr [0]), .SYNC_IN(n270), .DO127(n4), .DO126(n5), .DO125(n6),
 .DO124(n7), .DO123(n8), .DO122(n9), .DO121(n10), .DO120(n11), .DO119(n12), .DO118(n13), .DO117(n14),
 .DO116(n15), .DO115(n16), .DO114(n17), .DO113(n18), .DO112(n19), .DO111(n20), .DO110(n21), .DO109(n22),
 .DO108(n23), .DO107(n24), .DO106(n25), .DO105(n26), .DO104(n27), .DO103(n28), .DO102(n29), .DO101(n30),
 .DO100(n31), .DO99(n32), .DO98(n33), .DO97(n34), .DO96(n35), .DO95(n36), .DO94(n37), .DO93(n38),
 .DO92(n39), .DO91(n40), .DO90(n41), .DO89(n42), .DO88(n43), .DO87(n44), .DO86(n45), .DO85(n46),
 .DO84(n47), .DO83(n48), .DO82(n49), .DO81(n50), .DO80(n51), .DO79(n52), .DO78(n53), .DO77(n54),
 .DO76(n55), .DO75(n56), .DO74(n57), .DO73(n58), .DO72(n59), .DO71(n60), .DO70(n61), .DO69(n62),
 .DO68(n63), .DO67(n64), .DO66(n65), .DO65(n66), .DO64(n67), .DO63(n68), .DO62(n69), .DO61(n70),
 .DO60(n71), .DO59(n72), .DO58(n73), .DO57(n74), .DO56(n75), .DO55(n76), .DO54(n77), .DO53(n78),
 .DO52(n79), .DO51(n80), .DO50(n81), .DO49(n82), .DO48(n83), .DO47(n84), .DO46(n85), .DO45(n86),
 .DO44(n87), .DO43(n88), .DO42(n89), .DO41(n90), .DO40(n91), .DO39(n92), .DO38(n93), .DO37(n94),
 .DO36(n95), .DO35(n96), .DO34(n97), .DO33(n98), .DO32(n99), .DO31(n100), .DO30(n101), .DO29(n102),
 .DO28(n103), .DO27(n104), .DO26(n105), .DO25(n106), .DO24(n107), .DO23(n108), .DO22(n109), .DO21(n110),
 .DO20(n111), .DO19(n112), .DO18(n113), .DO17(n114), .DO16(n115), .DO15(n116), .DO14(n117), .DO13(n118),
 .DO12(n119), .DO11(n120), .DO10(n121), .DO9(n122), .DO8(n123), .DO7(n124), .DO6(n125), .DO5(n126),
 .DO4(n127), .DO3(n128), .DO2(n129), .DO1(n130), .DO0(n131), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\depth_n.r_data  1 127 0 3 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
`ifdef CBV
`else
`ifdef MPW4X128_MPR4X128
`else
module MPW4X128( A1, A0, DI127, DI126, DI125, DI124, DI123,
 DI122, DI121, DI120, DI119, DI118, DI117, DI116, DI115,
 DI114, DI113, DI112, DI111, DI110, DI109, DI108, DI107,
 DI106, DI105, DI104, DI103, DI102, DI101, DI100, DI99,
 DI98, DI97, DI96, DI95, DI94, DI93, DI92, DI91,
 DI90, DI89, DI88, DI87, DI86, DI85, DI84, DI83,
 DI82, DI81, DI80, DI79, DI78, DI77, DI76, DI75,
 DI74, DI73, DI72, DI71, DI70, DI69, DI68, DI67,
 DI66, DI65, DI64, DI63, DI62, DI61, DI60, DI59,
 DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51,
 DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43,
 DI42, DI41, DI40, DI39, DI38, DI37, DI36, DI35,
 DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19,
 DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11,
 DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3,
 DI2, DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A1, A0, DI127, DI126, DI125, DI124, DI123, DI122,
 DI121, DI120, DI119, DI118, DI117, DI116, DI115, DI114, DI113, DI112,
 DI111, DI110, DI109, DI108, DI107, DI106, DI105, DI104, DI103, DI102,
 DI101, DI100, DI99, DI98, DI97, DI96, DI95, DI94, DI93, DI92,
 DI91, DI90, DI89, DI88, DI87, DI86, DI85, DI84, DI83, DI82,
 DI81, DI80, DI79, DI78, DI77, DI76, DI75, DI74, DI73, DI72,
 DI71, DI70, DI69, DI68, DI67, DI66, DI65, DI64, DI63, DI62,
 DI61, DI60, DI59, DI58, DI57, DI56, DI55, DI54, DI53, DI52,
 DI51, DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42,
 DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34, DI33, DI32,
 DI31, DI30, DI29, DI28, DI27, DI26, DI25, DI24, DI23, DI22,
 DI21, DI20, DI19, DI18, DI17, DI16, DI15, DI14, DI13, DI12,
 DI11, DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2,
 DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR4X128_
`else
module MPR4X128( A1, A0, SYNC_IN, DO127, DO126, DO125, DO124,
 DO123, DO122, DO121, DO120, DO119, DO118, DO117, DO116,
 DO115, DO114, DO113, DO112, DO111, DO110, DO109, DO108,
 DO107, DO106, DO105, DO104, DO103, DO102, DO101, DO100,
 DO99, DO98, DO97, DO96, DO95, DO94, DO93, DO92,
 DO91, DO90, DO89, DO88, DO87, DO86, DO85, DO84,
 DO83, DO82, DO81, DO80, DO79, DO78, DO77, DO76,
 DO75, DO74, DO73, DO72, DO71, DO70, DO69, DO68,
 DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60,
 DO59, DO58, DO57, DO56, DO55, DO54, DO53, DO52,
 DO51, DO50, DO49, DO48, DO47, DO46, DO45, DO44,
 DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28,
 DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20,
 DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12,
 DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4,
 DO3, DO2, DO1, DO0, SYNC_OUT);
input  A1, A0, SYNC_IN;
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
`define _MPR4X128_
`endif
`define MPW4X128_MPR4X128
`endif
`endif
