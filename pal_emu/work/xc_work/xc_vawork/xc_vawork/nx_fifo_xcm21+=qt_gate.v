
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm21 ( empty, full, underflow, overflow, used_slots, free_slots, 
	rdata, clk, rst_n, wen, ren, clear, wdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output underflow;
output overflow;
output [2:0] used_slots;
output [2:0] free_slots;
output [95:0] rdata;
input clk;
input rst_n;
input wen;
input ren;
input clear;
input [95:0] wdata;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire \depth_n._zy_simnet_overflow_3_w$ ;
wire \depth_n._zy_simnet_underflow_2_w$ ;
wire [1:0] \depth_n.wptr ;
wire [1:0] \depth_n.rptr ;
supply0 n205;
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
Q_FDP0 U2 ( .CK(clk), .D(wdata[95]), .Q(n204), .QN( ));
Q_FDP0 U3 ( .CK(clk), .D(wdata[94]), .Q(n203), .QN( ));
Q_FDP0 U4 ( .CK(clk), .D(wdata[93]), .Q(n202), .QN( ));
Q_FDP0 U5 ( .CK(clk), .D(wdata[92]), .Q(n201), .QN( ));
Q_FDP0 U6 ( .CK(clk), .D(wdata[91]), .Q(n200), .QN( ));
Q_FDP0 U7 ( .CK(clk), .D(wdata[90]), .Q(n199), .QN( ));
Q_FDP0 U8 ( .CK(clk), .D(wdata[89]), .Q(n198), .QN( ));
Q_FDP0 U9 ( .CK(clk), .D(wdata[88]), .Q(n197), .QN( ));
Q_FDP0 U10 ( .CK(clk), .D(wdata[87]), .Q(n196), .QN( ));
Q_FDP0 U11 ( .CK(clk), .D(wdata[86]), .Q(n195), .QN( ));
Q_FDP0 U12 ( .CK(clk), .D(wdata[85]), .Q(n194), .QN( ));
Q_FDP0 U13 ( .CK(clk), .D(wdata[84]), .Q(n193), .QN( ));
Q_FDP0 U14 ( .CK(clk), .D(wdata[83]), .Q(n192), .QN( ));
Q_FDP0 U15 ( .CK(clk), .D(wdata[82]), .Q(n191), .QN( ));
Q_FDP0 U16 ( .CK(clk), .D(wdata[81]), .Q(n190), .QN( ));
Q_FDP0 U17 ( .CK(clk), .D(wdata[80]), .Q(n189), .QN( ));
Q_FDP0 U18 ( .CK(clk), .D(wdata[79]), .Q(n188), .QN( ));
Q_FDP0 U19 ( .CK(clk), .D(wdata[78]), .Q(n187), .QN( ));
Q_FDP0 U20 ( .CK(clk), .D(wdata[77]), .Q(n186), .QN( ));
Q_FDP0 U21 ( .CK(clk), .D(wdata[76]), .Q(n185), .QN( ));
Q_FDP0 U22 ( .CK(clk), .D(wdata[75]), .Q(n184), .QN( ));
Q_FDP0 U23 ( .CK(clk), .D(wdata[74]), .Q(n183), .QN( ));
Q_FDP0 U24 ( .CK(clk), .D(wdata[73]), .Q(n182), .QN( ));
Q_FDP0 U25 ( .CK(clk), .D(wdata[72]), .Q(n181), .QN( ));
Q_FDP0 U26 ( .CK(clk), .D(wdata[71]), .Q(n180), .QN( ));
Q_FDP0 U27 ( .CK(clk), .D(wdata[70]), .Q(n179), .QN( ));
Q_FDP0 U28 ( .CK(clk), .D(wdata[69]), .Q(n178), .QN( ));
Q_FDP0 U29 ( .CK(clk), .D(wdata[68]), .Q(n177), .QN( ));
Q_FDP0 U30 ( .CK(clk), .D(wdata[67]), .Q(n176), .QN( ));
Q_FDP0 U31 ( .CK(clk), .D(wdata[66]), .Q(n175), .QN( ));
Q_FDP0 U32 ( .CK(clk), .D(wdata[65]), .Q(n174), .QN( ));
Q_FDP0 U33 ( .CK(clk), .D(wdata[64]), .Q(n173), .QN( ));
Q_FDP0 U34 ( .CK(clk), .D(wdata[63]), .Q(n172), .QN( ));
Q_FDP0 U35 ( .CK(clk), .D(wdata[62]), .Q(n171), .QN( ));
Q_FDP0 U36 ( .CK(clk), .D(wdata[61]), .Q(n170), .QN( ));
Q_FDP0 U37 ( .CK(clk), .D(wdata[60]), .Q(n169), .QN( ));
Q_FDP0 U38 ( .CK(clk), .D(wdata[59]), .Q(n168), .QN( ));
Q_FDP0 U39 ( .CK(clk), .D(wdata[58]), .Q(n167), .QN( ));
Q_FDP0 U40 ( .CK(clk), .D(wdata[57]), .Q(n166), .QN( ));
Q_FDP0 U41 ( .CK(clk), .D(wdata[56]), .Q(n165), .QN( ));
Q_FDP0 U42 ( .CK(clk), .D(wdata[55]), .Q(n164), .QN( ));
Q_FDP0 U43 ( .CK(clk), .D(wdata[54]), .Q(n163), .QN( ));
Q_FDP0 U44 ( .CK(clk), .D(wdata[53]), .Q(n162), .QN( ));
Q_FDP0 U45 ( .CK(clk), .D(wdata[52]), .Q(n161), .QN( ));
Q_FDP0 U46 ( .CK(clk), .D(wdata[51]), .Q(n160), .QN( ));
Q_FDP0 U47 ( .CK(clk), .D(wdata[50]), .Q(n159), .QN( ));
Q_FDP0 U48 ( .CK(clk), .D(wdata[49]), .Q(n158), .QN( ));
Q_FDP0 U49 ( .CK(clk), .D(wdata[48]), .Q(n157), .QN( ));
Q_FDP0 U50 ( .CK(clk), .D(wdata[47]), .Q(n156), .QN( ));
Q_FDP0 U51 ( .CK(clk), .D(wdata[46]), .Q(n155), .QN( ));
Q_FDP0 U52 ( .CK(clk), .D(wdata[45]), .Q(n154), .QN( ));
Q_FDP0 U53 ( .CK(clk), .D(wdata[44]), .Q(n153), .QN( ));
Q_FDP0 U54 ( .CK(clk), .D(wdata[43]), .Q(n152), .QN( ));
Q_FDP0 U55 ( .CK(clk), .D(wdata[42]), .Q(n151), .QN( ));
Q_FDP0 U56 ( .CK(clk), .D(wdata[41]), .Q(n150), .QN( ));
Q_FDP0 U57 ( .CK(clk), .D(wdata[40]), .Q(n149), .QN( ));
Q_FDP0 U58 ( .CK(clk), .D(wdata[39]), .Q(n148), .QN( ));
Q_FDP0 U59 ( .CK(clk), .D(wdata[38]), .Q(n147), .QN( ));
Q_FDP0 U60 ( .CK(clk), .D(wdata[37]), .Q(n146), .QN( ));
Q_FDP0 U61 ( .CK(clk), .D(wdata[36]), .Q(n145), .QN( ));
Q_FDP0 U62 ( .CK(clk), .D(wdata[35]), .Q(n144), .QN( ));
Q_FDP0 U63 ( .CK(clk), .D(wdata[34]), .Q(n143), .QN( ));
Q_FDP0 U64 ( .CK(clk), .D(wdata[33]), .Q(n142), .QN( ));
Q_FDP0 U65 ( .CK(clk), .D(wdata[32]), .Q(n141), .QN( ));
Q_FDP0 U66 ( .CK(clk), .D(wdata[31]), .Q(n140), .QN( ));
Q_FDP0 U67 ( .CK(clk), .D(wdata[30]), .Q(n139), .QN( ));
Q_FDP0 U68 ( .CK(clk), .D(wdata[29]), .Q(n138), .QN( ));
Q_FDP0 U69 ( .CK(clk), .D(wdata[28]), .Q(n137), .QN( ));
Q_FDP0 U70 ( .CK(clk), .D(wdata[27]), .Q(n136), .QN( ));
Q_FDP0 U71 ( .CK(clk), .D(wdata[26]), .Q(n135), .QN( ));
Q_FDP0 U72 ( .CK(clk), .D(wdata[25]), .Q(n134), .QN( ));
Q_FDP0 U73 ( .CK(clk), .D(wdata[24]), .Q(n133), .QN( ));
Q_FDP0 U74 ( .CK(clk), .D(wdata[23]), .Q(n132), .QN( ));
Q_FDP0 U75 ( .CK(clk), .D(wdata[22]), .Q(n131), .QN( ));
Q_FDP0 U76 ( .CK(clk), .D(wdata[21]), .Q(n130), .QN( ));
Q_FDP0 U77 ( .CK(clk), .D(wdata[20]), .Q(n129), .QN( ));
Q_FDP0 U78 ( .CK(clk), .D(wdata[19]), .Q(n128), .QN( ));
Q_FDP0 U79 ( .CK(clk), .D(wdata[18]), .Q(n127), .QN( ));
Q_FDP0 U80 ( .CK(clk), .D(wdata[17]), .Q(n126), .QN( ));
Q_FDP0 U81 ( .CK(clk), .D(wdata[16]), .Q(n125), .QN( ));
Q_FDP0 U82 ( .CK(clk), .D(wdata[15]), .Q(n124), .QN( ));
Q_FDP0 U83 ( .CK(clk), .D(wdata[14]), .Q(n123), .QN( ));
Q_FDP0 U84 ( .CK(clk), .D(wdata[13]), .Q(n122), .QN( ));
Q_FDP0 U85 ( .CK(clk), .D(wdata[12]), .Q(n121), .QN( ));
Q_FDP0 U86 ( .CK(clk), .D(wdata[11]), .Q(n120), .QN( ));
Q_FDP0 U87 ( .CK(clk), .D(wdata[10]), .Q(n119), .QN( ));
Q_FDP0 U88 ( .CK(clk), .D(wdata[9]), .Q(n118), .QN( ));
Q_FDP0 U89 ( .CK(clk), .D(wdata[8]), .Q(n117), .QN( ));
Q_FDP0 U90 ( .CK(clk), .D(wdata[7]), .Q(n116), .QN( ));
Q_FDP0 U91 ( .CK(clk), .D(wdata[6]), .Q(n115), .QN( ));
Q_FDP0 U92 ( .CK(clk), .D(wdata[5]), .Q(n114), .QN( ));
Q_FDP0 U93 ( .CK(clk), .D(wdata[4]), .Q(n113), .QN( ));
Q_FDP0 U94 ( .CK(clk), .D(wdata[3]), .Q(n112), .QN( ));
Q_FDP0 U95 ( .CK(clk), .D(wdata[2]), .Q(n111), .QN( ));
Q_FDP0 U96 ( .CK(clk), .D(wdata[1]), .Q(n110), .QN( ));
Q_FDP0 U97 ( .CK(clk), .D(wdata[0]), .Q(n109), .QN( ));
Q_FDP0 U98 ( .CK(clk), .D(\depth_n.wptr [1]), .Q(n108), .QN( ));
Q_FDP0 U99 ( .CK(clk), .D(\depth_n.wptr [0]), .Q(n107), .QN( ));
Q_AN02 U100 ( .A0(n102), .A1(n105), .Z(n106));
Q_XOR2 U101 ( .A0(n101), .A1(n104), .Z(n105));
// pragma CVAINTPROP NET n101 _2_state_ 1
// pragma CVAINTPROP INSTANCE U101 NOBREAKS 1
Q_FDP0B U102 ( .D(n101), .QTFCLK( ), .Q(n104));
Q_FDP0 U103 ( .CK(clk), .D(n3), .Q(n102), .QN( ));
Q_FDP0 U104 ( .CK(clk), .D(n103), .Q(n101), .QN(n103));
Q_INV U105 ( .A(empty), .Z(n100));
Q_AN02 U106 ( .A0(n100), .A1(n4), .Z(rdata[95]));
Q_AN02 U107 ( .A0(n100), .A1(n5), .Z(rdata[94]));
Q_AN02 U108 ( .A0(n100), .A1(n6), .Z(rdata[93]));
Q_AN02 U109 ( .A0(n100), .A1(n7), .Z(rdata[92]));
Q_AN02 U110 ( .A0(n100), .A1(n8), .Z(rdata[91]));
Q_AN02 U111 ( .A0(n100), .A1(n9), .Z(rdata[90]));
Q_AN02 U112 ( .A0(n100), .A1(n10), .Z(rdata[89]));
Q_AN02 U113 ( .A0(n100), .A1(n11), .Z(rdata[88]));
Q_AN02 U114 ( .A0(n100), .A1(n12), .Z(rdata[87]));
Q_AN02 U115 ( .A0(n100), .A1(n13), .Z(rdata[86]));
Q_AN02 U116 ( .A0(n100), .A1(n14), .Z(rdata[85]));
Q_AN02 U117 ( .A0(n100), .A1(n15), .Z(rdata[84]));
Q_AN02 U118 ( .A0(n100), .A1(n16), .Z(rdata[83]));
Q_AN02 U119 ( .A0(n100), .A1(n17), .Z(rdata[82]));
Q_AN02 U120 ( .A0(n100), .A1(n18), .Z(rdata[81]));
Q_AN02 U121 ( .A0(n100), .A1(n19), .Z(rdata[80]));
Q_AN02 U122 ( .A0(n100), .A1(n20), .Z(rdata[79]));
Q_AN02 U123 ( .A0(n100), .A1(n21), .Z(rdata[78]));
Q_AN02 U124 ( .A0(n100), .A1(n22), .Z(rdata[77]));
Q_AN02 U125 ( .A0(n100), .A1(n23), .Z(rdata[76]));
Q_AN02 U126 ( .A0(n100), .A1(n24), .Z(rdata[75]));
Q_AN02 U127 ( .A0(n100), .A1(n25), .Z(rdata[74]));
Q_AN02 U128 ( .A0(n100), .A1(n26), .Z(rdata[73]));
Q_AN02 U129 ( .A0(n100), .A1(n27), .Z(rdata[72]));
Q_AN02 U130 ( .A0(n100), .A1(n28), .Z(rdata[71]));
Q_AN02 U131 ( .A0(n100), .A1(n29), .Z(rdata[70]));
Q_AN02 U132 ( .A0(n100), .A1(n30), .Z(rdata[69]));
Q_AN02 U133 ( .A0(n100), .A1(n31), .Z(rdata[68]));
Q_AN02 U134 ( .A0(n100), .A1(n32), .Z(rdata[67]));
Q_AN02 U135 ( .A0(n100), .A1(n33), .Z(rdata[66]));
Q_AN02 U136 ( .A0(n100), .A1(n34), .Z(rdata[65]));
Q_AN02 U137 ( .A0(n100), .A1(n35), .Z(rdata[64]));
Q_AN02 U138 ( .A0(n100), .A1(n36), .Z(rdata[63]));
Q_AN02 U139 ( .A0(n100), .A1(n37), .Z(rdata[62]));
Q_AN02 U140 ( .A0(n100), .A1(n38), .Z(rdata[61]));
Q_AN02 U141 ( .A0(n100), .A1(n39), .Z(rdata[60]));
Q_AN02 U142 ( .A0(n100), .A1(n40), .Z(rdata[59]));
Q_AN02 U143 ( .A0(n100), .A1(n41), .Z(rdata[58]));
Q_AN02 U144 ( .A0(n100), .A1(n42), .Z(rdata[57]));
Q_AN02 U145 ( .A0(n100), .A1(n43), .Z(rdata[56]));
Q_AN02 U146 ( .A0(n100), .A1(n44), .Z(rdata[55]));
Q_AN02 U147 ( .A0(n100), .A1(n45), .Z(rdata[54]));
Q_AN02 U148 ( .A0(n100), .A1(n46), .Z(rdata[53]));
Q_AN02 U149 ( .A0(n100), .A1(n47), .Z(rdata[52]));
Q_AN02 U150 ( .A0(n100), .A1(n48), .Z(rdata[51]));
Q_AN02 U151 ( .A0(n100), .A1(n49), .Z(rdata[50]));
Q_AN02 U152 ( .A0(n100), .A1(n50), .Z(rdata[49]));
Q_AN02 U153 ( .A0(n100), .A1(n51), .Z(rdata[48]));
Q_AN02 U154 ( .A0(n100), .A1(n52), .Z(rdata[47]));
Q_AN02 U155 ( .A0(n100), .A1(n53), .Z(rdata[46]));
Q_AN02 U156 ( .A0(n100), .A1(n54), .Z(rdata[45]));
Q_AN02 U157 ( .A0(n100), .A1(n55), .Z(rdata[44]));
Q_AN02 U158 ( .A0(n100), .A1(n56), .Z(rdata[43]));
Q_AN02 U159 ( .A0(n100), .A1(n57), .Z(rdata[42]));
Q_AN02 U160 ( .A0(n100), .A1(n58), .Z(rdata[41]));
Q_AN02 U161 ( .A0(n100), .A1(n59), .Z(rdata[40]));
Q_AN02 U162 ( .A0(n100), .A1(n60), .Z(rdata[39]));
Q_AN02 U163 ( .A0(n100), .A1(n61), .Z(rdata[38]));
Q_AN02 U164 ( .A0(n100), .A1(n62), .Z(rdata[37]));
Q_AN02 U165 ( .A0(n100), .A1(n63), .Z(rdata[36]));
Q_AN02 U166 ( .A0(n100), .A1(n64), .Z(rdata[35]));
Q_AN02 U167 ( .A0(n100), .A1(n65), .Z(rdata[34]));
Q_AN02 U168 ( .A0(n100), .A1(n66), .Z(rdata[33]));
Q_AN02 U169 ( .A0(n100), .A1(n67), .Z(rdata[32]));
Q_AN02 U170 ( .A0(n100), .A1(n68), .Z(rdata[31]));
Q_AN02 U171 ( .A0(n100), .A1(n69), .Z(rdata[30]));
Q_AN02 U172 ( .A0(n100), .A1(n70), .Z(rdata[29]));
Q_AN02 U173 ( .A0(n100), .A1(n71), .Z(rdata[28]));
Q_AN02 U174 ( .A0(n100), .A1(n72), .Z(rdata[27]));
Q_AN02 U175 ( .A0(n100), .A1(n73), .Z(rdata[26]));
Q_AN02 U176 ( .A0(n100), .A1(n74), .Z(rdata[25]));
Q_AN02 U177 ( .A0(n100), .A1(n75), .Z(rdata[24]));
Q_AN02 U178 ( .A0(n100), .A1(n76), .Z(rdata[23]));
Q_AN02 U179 ( .A0(n100), .A1(n77), .Z(rdata[22]));
Q_AN02 U180 ( .A0(n100), .A1(n78), .Z(rdata[21]));
Q_AN02 U181 ( .A0(n100), .A1(n79), .Z(rdata[20]));
Q_AN02 U182 ( .A0(n100), .A1(n80), .Z(rdata[19]));
Q_AN02 U183 ( .A0(n100), .A1(n81), .Z(rdata[18]));
Q_AN02 U184 ( .A0(n100), .A1(n82), .Z(rdata[17]));
Q_AN02 U185 ( .A0(n100), .A1(n83), .Z(rdata[16]));
Q_AN02 U186 ( .A0(n100), .A1(n84), .Z(rdata[15]));
Q_AN02 U187 ( .A0(n100), .A1(n85), .Z(rdata[14]));
Q_AN02 U188 ( .A0(n100), .A1(n86), .Z(rdata[13]));
Q_AN02 U189 ( .A0(n100), .A1(n87), .Z(rdata[12]));
Q_AN02 U190 ( .A0(n100), .A1(n88), .Z(rdata[11]));
Q_AN02 U191 ( .A0(n100), .A1(n89), .Z(rdata[10]));
Q_AN02 U192 ( .A0(n100), .A1(n90), .Z(rdata[9]));
Q_AN02 U193 ( .A0(n100), .A1(n91), .Z(rdata[8]));
Q_AN02 U194 ( .A0(n100), .A1(n92), .Z(rdata[7]));
Q_AN02 U195 ( .A0(n100), .A1(n93), .Z(rdata[6]));
Q_AN02 U196 ( .A0(n100), .A1(n94), .Z(rdata[5]));
Q_AN02 U197 ( .A0(n100), .A1(n95), .Z(rdata[4]));
Q_AN02 U198 ( .A0(n100), .A1(n96), .Z(rdata[3]));
Q_AN02 U199 ( .A0(n100), .A1(n97), .Z(rdata[2]));
Q_AN02 U200 ( .A0(n100), .A1(n98), .Z(rdata[1]));
Q_AN02 U201 ( .A0(n100), .A1(n99), .Z(rdata[0]));
Q_INV U202 ( .A(full), .Z(n2));
Q_AN02 U203 ( .A0(wen), .A1(n2), .Z(n3));
nx_fifo_ctrl_xcm37 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
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

reg [95:0] \depth_n.r_data  [3:0];
initial begin: U207
  integer i;
  for (i=3; i>=0; i=i-1) \depth_n.r_data [i] =
`ifdef CBV_MEM_INIT1
  {96{1'b1}};
`else
  96'b0;
`endif
end
reg [95:0] n206;
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
n99} = n206; 
always @(n108 or n107 or n204 or n203 or n202
 or n201 or n200 or n199 or n198 or n197 or n196 or n195 or n194
 or n193 or n192 or n191 or n190 or n189 or n188 or n187 or n186
 or n185 or n184 or n183 or n182 or n181 or n180 or n179 or n178
 or n177 or n176 or n175 or n174 or n173 or n172 or n171 or n170
 or n169 or n168 or n167 or n166 or n165 or n164 or n163 or n162
 or n161 or n160 or n159 or n158 or n157 or n156 or n155 or n154
 or n153 or n152 or n151 or n150 or n149 or n148 or n147 or n146
 or n145 or n144 or n143 or n142 or n141 or n140 or n139 or n138
 or n137 or n136 or n135 or n134 or n133 or n132 or n131 or n130
 or n129 or n128 or n127 or n126 or n125 or n124 or n123 or n122
 or n121 or n120 or n119 or n118 or n117 or n116 or n115 or n114
 or n113 or n112 or n111 or n110 or n109 or n106 or \depth_n.rptr [1] or \depth_n.rptr [0])
#0 begin
if (n106)
\depth_n.r_data [{n108, n107}] =
{n204, n203, n202, n201, n200,
 n199, n198, n197, n196, n195, n194, n193, n192,
 n191, n190, n189, n188, n187, n186, n185, n184,
 n183, n182, n181, n180, n179, n178, n177, n176,
 n175, n174, n173, n172, n171, n170, n169, n168,
 n167, n166, n165, n164, n163, n162, n161, n160,
 n159, n158, n157, n156, n155, n154, n153, n152,
 n151, n150, n149, n148, n147, n146, n145, n144,
 n143, n142, n141, n140, n139, n138, n137, n136,
 n135, n134, n133, n132, n131, n130, n129, n128,
 n127, n126, n125, n124, n123, n122, n121, n120,
 n119, n118, n117, n116, n115, n114, n113, n112,
 n111, n110, n109};
n206 = \depth_n.r_data [{\depth_n.rptr [1], \depth_n.rptr [0]}];
end
`else

MPW4X96 \depth_n.r_data  ( .A1(n108), .A0(n107), .DI95(n204), .DI94(n203), .DI93(n202), .DI92(n201),
 .DI91(n200), .DI90(n199), .DI89(n198), .DI88(n197), .DI87(n196), .DI86(n195), .DI85(n194), .DI84(n193),
 .DI83(n192), .DI82(n191), .DI81(n190), .DI80(n189), .DI79(n188), .DI78(n187), .DI77(n186), .DI76(n185),
 .DI75(n184), .DI74(n183), .DI73(n182), .DI72(n181), .DI71(n180), .DI70(n179), .DI69(n178), .DI68(n177),
 .DI67(n176), .DI66(n175), .DI65(n174), .DI64(n173), .DI63(n172), .DI62(n171), .DI61(n170), .DI60(n169),
 .DI59(n168), .DI58(n167), .DI57(n166), .DI56(n165), .DI55(n164), .DI54(n163), .DI53(n162), .DI52(n161),
 .DI51(n160), .DI50(n159), .DI49(n158), .DI48(n157), .DI47(n156), .DI46(n155), .DI45(n154), .DI44(n153),
 .DI43(n152), .DI42(n151), .DI41(n150), .DI40(n149), .DI39(n148), .DI38(n147), .DI37(n146), .DI36(n145),
 .DI35(n144), .DI34(n143), .DI33(n142), .DI32(n141), .DI31(n140), .DI30(n139), .DI29(n138), .DI28(n137),
 .DI27(n136), .DI26(n135), .DI25(n134), .DI24(n133), .DI23(n132), .DI22(n131), .DI21(n130), .DI20(n129),
 .DI19(n128), .DI18(n127), .DI17(n126), .DI16(n125), .DI15(n124), .DI14(n123), .DI13(n122), .DI12(n121),
 .DI11(n120), .DI10(n119), .DI9(n118), .DI8(n117), .DI7(n116), .DI6(n115), .DI5(n114), .DI4(n113),
 .DI3(n112), .DI2(n111), .DI1(n110), .DI0(n109), .WE(n106), .SYNC_IN(n205), .SYNC_OUT(n206));
// pragma CVASTRPROP INSTANCE "\depth_n.r_data " HDL_MEMORY_DECL "1 95 0 3 0"
MPR4X96 U208 ( .A1(\depth_n.rptr [1]), .A0(\depth_n.rptr [0]), .SYNC_IN(n206), .DO95(n4), .DO94(n5), .DO93(n6),
 .DO92(n7), .DO91(n8), .DO90(n9), .DO89(n10), .DO88(n11), .DO87(n12), .DO86(n13), .DO85(n14),
 .DO84(n15), .DO83(n16), .DO82(n17), .DO81(n18), .DO80(n19), .DO79(n20), .DO78(n21), .DO77(n22),
 .DO76(n23), .DO75(n24), .DO74(n25), .DO73(n26), .DO72(n27), .DO71(n28), .DO70(n29), .DO69(n30),
 .DO68(n31), .DO67(n32), .DO66(n33), .DO65(n34), .DO64(n35), .DO63(n36), .DO62(n37), .DO61(n38),
 .DO60(n39), .DO59(n40), .DO58(n41), .DO57(n42), .DO56(n43), .DO55(n44), .DO54(n45), .DO53(n46),
 .DO52(n47), .DO51(n48), .DO50(n49), .DO49(n50), .DO48(n51), .DO47(n52), .DO46(n53), .DO45(n54),
 .DO44(n55), .DO43(n56), .DO42(n57), .DO41(n58), .DO40(n59), .DO39(n60), .DO38(n61), .DO37(n62),
 .DO36(n63), .DO35(n64), .DO34(n65), .DO33(n66), .DO32(n67), .DO31(n68), .DO30(n69), .DO29(n70),
 .DO28(n71), .DO27(n72), .DO26(n73), .DO25(n74), .DO24(n75), .DO23(n76), .DO22(n77), .DO21(n78),
 .DO20(n79), .DO19(n80), .DO18(n81), .DO17(n82), .DO16(n83), .DO15(n84), .DO14(n85), .DO13(n86),
 .DO12(n87), .DO11(n88), .DO10(n89), .DO9(n90), .DO8(n91), .DO7(n92), .DO6(n93), .DO5(n94),
 .DO4(n95), .DO3(n96), .DO2(n97), .DO1(n98), .DO0(n99), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\depth_n.r_data  1 95 0 3 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
`ifdef CBV
`else
`ifdef MPW4X96_MPR4X96
`else
module MPW4X96( A1, A0, DI95, DI94, DI93, DI92, DI91,
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
input  A1, A0, DI95, DI94, DI93, DI92, DI91, DI90,
 DI89, DI88, DI87, DI86, DI85, DI84, DI83, DI82, DI81, DI80,
 DI79, DI78, DI77, DI76, DI75, DI74, DI73, DI72, DI71, DI70,
 DI69, DI68, DI67, DI66, DI65, DI64, DI63, DI62, DI61, DI60,
 DI59, DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50,
 DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42, DI41, DI40,
 DI39, DI38, DI37, DI36, DI35, DI34, DI33, DI32, DI31, DI30,
 DI29, DI28, DI27, DI26, DI25, DI24, DI23, DI22, DI21, DI20,
 DI19, DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10,
 DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0,
 WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR4X96_
`else
module MPR4X96( A1, A0, SYNC_IN, DO95, DO94, DO93, DO92,
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
output  DO95, DO94, DO93, DO92, DO91, DO90, DO89, DO88,
 DO87, DO86, DO85, DO84, DO83, DO82, DO81, DO80, DO79, DO78,
 DO77, DO76, DO75, DO74, DO73, DO72, DO71, DO70, DO69, DO68,
 DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60, DO59, DO58,
 DO57, DO56, DO55, DO54, DO53, DO52, DO51, DO50, DO49, DO48,
 DO47, DO46, DO45, DO44, DO43, DO42, DO41, DO40, DO39, DO38,
 DO37, DO36, DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28,
 DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18,
 DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8,
 DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR4X96_
`endif
`define MPW4X96_MPR4X96
`endif
`endif
