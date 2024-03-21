
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm33 ( empty, full, underflow, overflow, used_slots, free_slots, 
	rdata, clk, rst_n, wen, ren, clear, wdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output underflow;
output overflow;
output [4:0] used_slots;
output [4:0] free_slots;
output [82:0] rdata;
input clk;
input rst_n;
input wen;
input ren;
input clear;
input [82:0] wdata;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire \depth_n._zy_simnet_overflow_3_w$ ;
wire \depth_n._zy_simnet_underflow_2_w$ ;
wire [4:0] \depth_n.wptr ;
wire [4:0] \depth_n.rptr ;
supply0 n186;
ixc_assign \depth_n._zz_strnp_0 ( underflow, 
	\depth_n._zy_simnet_underflow_2_w$ );
ixc_assign \depth_n._zz_strnp_1 ( overflow, 
	\depth_n._zy_simnet_overflow_3_w$ );
nx_fifo_ctrl_xcm39 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
	.used_slots( used_slots[4:0]), .free_slots( free_slots[4:0]), 
	.rptr( \depth_n.rptr [4:0]), .wptr( \depth_n.wptr [4:0]), 
	.underflow( \depth_n._zy_simnet_underflow_2_w$ ), .overflow( 
	\depth_n._zy_simnet_overflow_3_w$ ), .clk( clk), .rst_n( rst_n), 
	.wen( wen), .ren( ren), .clear( clear));
Q_ND02 U3 ( .A0(\depth_n.wptr [4]), .A1(\depth_n.wptr [3]), .Z(n184));
Q_NR02 U4 ( .A0(\depth_n.wptr [2]), .A1(\depth_n.wptr [1]), .Z(n183));
Q_INV U5 ( .A(\depth_n.wptr [0]), .Z(n182));
Q_AO21 U6 ( .A0(n183), .A1(n182), .B0(n184), .Z(n181));
Q_AN03 U7 ( .A0(wen), .A1(n179), .A2(n181), .Z(n180));
Q_INV U8 ( .A(full), .Z(n179));
Q_AN02 U9 ( .A0(n95), .A1(n96), .Z(rdata[0]));
Q_AN02 U10 ( .A0(n95), .A1(n97), .Z(rdata[1]));
Q_AN02 U11 ( .A0(n95), .A1(n98), .Z(rdata[2]));
Q_AN02 U12 ( .A0(n95), .A1(n99), .Z(rdata[3]));
Q_AN02 U13 ( .A0(n95), .A1(n100), .Z(rdata[4]));
Q_AN02 U14 ( .A0(n95), .A1(n101), .Z(rdata[5]));
Q_AN02 U15 ( .A0(n95), .A1(n102), .Z(rdata[6]));
Q_AN02 U16 ( .A0(n95), .A1(n103), .Z(rdata[7]));
Q_AN02 U17 ( .A0(n95), .A1(n104), .Z(rdata[8]));
Q_AN02 U18 ( .A0(n95), .A1(n105), .Z(rdata[9]));
Q_AN02 U19 ( .A0(n95), .A1(n106), .Z(rdata[10]));
Q_AN02 U20 ( .A0(n95), .A1(n107), .Z(rdata[11]));
Q_AN02 U21 ( .A0(n95), .A1(n108), .Z(rdata[12]));
Q_AN02 U22 ( .A0(n95), .A1(n109), .Z(rdata[13]));
Q_AN02 U23 ( .A0(n95), .A1(n110), .Z(rdata[14]));
Q_AN02 U24 ( .A0(n95), .A1(n111), .Z(rdata[15]));
Q_AN02 U25 ( .A0(n95), .A1(n112), .Z(rdata[16]));
Q_AN02 U26 ( .A0(n95), .A1(n113), .Z(rdata[17]));
Q_AN02 U27 ( .A0(n95), .A1(n114), .Z(rdata[18]));
Q_AN02 U28 ( .A0(n95), .A1(n115), .Z(rdata[19]));
Q_AN02 U29 ( .A0(n95), .A1(n116), .Z(rdata[20]));
Q_AN02 U30 ( .A0(n95), .A1(n117), .Z(rdata[21]));
Q_AN02 U31 ( .A0(n95), .A1(n118), .Z(rdata[22]));
Q_AN02 U32 ( .A0(n95), .A1(n119), .Z(rdata[23]));
Q_AN02 U33 ( .A0(n95), .A1(n120), .Z(rdata[24]));
Q_AN02 U34 ( .A0(n95), .A1(n121), .Z(rdata[25]));
Q_AN02 U35 ( .A0(n95), .A1(n122), .Z(rdata[26]));
Q_AN02 U36 ( .A0(n95), .A1(n123), .Z(rdata[27]));
Q_AN02 U37 ( .A0(n95), .A1(n124), .Z(rdata[28]));
Q_AN02 U38 ( .A0(n95), .A1(n125), .Z(rdata[29]));
Q_AN02 U39 ( .A0(n95), .A1(n126), .Z(rdata[30]));
Q_AN02 U40 ( .A0(n95), .A1(n127), .Z(rdata[31]));
Q_AN02 U41 ( .A0(n95), .A1(n128), .Z(rdata[32]));
Q_AN02 U42 ( .A0(n95), .A1(n129), .Z(rdata[33]));
Q_AN02 U43 ( .A0(n95), .A1(n130), .Z(rdata[34]));
Q_AN02 U44 ( .A0(n95), .A1(n131), .Z(rdata[35]));
Q_AN02 U45 ( .A0(n95), .A1(n132), .Z(rdata[36]));
Q_AN02 U46 ( .A0(n95), .A1(n133), .Z(rdata[37]));
Q_AN02 U47 ( .A0(n95), .A1(n134), .Z(rdata[38]));
Q_AN02 U48 ( .A0(n95), .A1(n135), .Z(rdata[39]));
Q_AN02 U49 ( .A0(n95), .A1(n136), .Z(rdata[40]));
Q_AN02 U50 ( .A0(n95), .A1(n137), .Z(rdata[41]));
Q_AN02 U51 ( .A0(n95), .A1(n138), .Z(rdata[42]));
Q_AN02 U52 ( .A0(n95), .A1(n139), .Z(rdata[43]));
Q_AN02 U53 ( .A0(n95), .A1(n140), .Z(rdata[44]));
Q_AN02 U54 ( .A0(n95), .A1(n141), .Z(rdata[45]));
Q_AN02 U55 ( .A0(n95), .A1(n142), .Z(rdata[46]));
Q_AN02 U56 ( .A0(n95), .A1(n143), .Z(rdata[47]));
Q_AN02 U57 ( .A0(n95), .A1(n144), .Z(rdata[48]));
Q_AN02 U58 ( .A0(n95), .A1(n145), .Z(rdata[49]));
Q_AN02 U59 ( .A0(n95), .A1(n146), .Z(rdata[50]));
Q_AN02 U60 ( .A0(n95), .A1(n147), .Z(rdata[51]));
Q_AN02 U61 ( .A0(n95), .A1(n148), .Z(rdata[52]));
Q_AN02 U62 ( .A0(n95), .A1(n149), .Z(rdata[53]));
Q_AN02 U63 ( .A0(n95), .A1(n150), .Z(rdata[54]));
Q_AN02 U64 ( .A0(n95), .A1(n151), .Z(rdata[55]));
Q_AN02 U65 ( .A0(n95), .A1(n152), .Z(rdata[56]));
Q_AN02 U66 ( .A0(n95), .A1(n153), .Z(rdata[57]));
Q_AN02 U67 ( .A0(n95), .A1(n154), .Z(rdata[58]));
Q_AN02 U68 ( .A0(n95), .A1(n155), .Z(rdata[59]));
Q_AN02 U69 ( .A0(n95), .A1(n156), .Z(rdata[60]));
Q_AN02 U70 ( .A0(n95), .A1(n157), .Z(rdata[61]));
Q_AN02 U71 ( .A0(n95), .A1(n158), .Z(rdata[62]));
Q_AN02 U72 ( .A0(n95), .A1(n159), .Z(rdata[63]));
Q_AN02 U73 ( .A0(n95), .A1(n160), .Z(rdata[64]));
Q_AN02 U74 ( .A0(n95), .A1(n161), .Z(rdata[65]));
Q_AN02 U75 ( .A0(n95), .A1(n162), .Z(rdata[66]));
Q_AN02 U76 ( .A0(n95), .A1(n163), .Z(rdata[67]));
Q_AN02 U77 ( .A0(n95), .A1(n164), .Z(rdata[68]));
Q_AN02 U78 ( .A0(n95), .A1(n165), .Z(rdata[69]));
Q_AN02 U79 ( .A0(n95), .A1(n166), .Z(rdata[70]));
Q_AN02 U80 ( .A0(n95), .A1(n167), .Z(rdata[71]));
Q_AN02 U81 ( .A0(n95), .A1(n168), .Z(rdata[72]));
Q_AN02 U82 ( .A0(n95), .A1(n169), .Z(rdata[73]));
Q_AN02 U83 ( .A0(n95), .A1(n170), .Z(rdata[74]));
Q_AN02 U84 ( .A0(n95), .A1(n171), .Z(rdata[75]));
Q_AN02 U85 ( .A0(n95), .A1(n172), .Z(rdata[76]));
Q_AN02 U86 ( .A0(n95), .A1(n173), .Z(rdata[77]));
Q_AN02 U87 ( .A0(n95), .A1(n174), .Z(rdata[78]));
Q_AN02 U88 ( .A0(n95), .A1(n175), .Z(rdata[79]));
Q_AN02 U89 ( .A0(n95), .A1(n176), .Z(rdata[80]));
Q_AN02 U90 ( .A0(n95), .A1(n177), .Z(rdata[81]));
Q_AN02 U91 ( .A0(n95), .A1(n178), .Z(rdata[82]));
Q_INV U92 ( .A(empty), .Z(n95));
Q_FDP0 U93 ( .CK(clk), .D(n92), .Q(n94), .QN(n92));
Q_FDP0 U94 ( .CK(clk), .D(n180), .Q(n93), .QN( ));
Q_FDP0B U95 ( .D(n94), .QTFCLK( ), .Q(n91));
Q_XOR2 U96 ( .A0(n94), .A1(n91), .Z(n90));
// pragma CVAINTPROP NET n94 _2_state_ 1
// pragma CVAINTPROP INSTANCE U96 NOBREAKS 1
Q_AN02 U97 ( .A0(n93), .A1(n90), .Z(n89));
Q_FDP0 U98 ( .CK(clk), .D(\depth_n.wptr [0]), .Q(n88), .QN( ));
Q_FDP0 U99 ( .CK(clk), .D(\depth_n.wptr [1]), .Q(n87), .QN( ));
Q_FDP0 U100 ( .CK(clk), .D(\depth_n.wptr [2]), .Q(n86), .QN( ));
Q_FDP0 U101 ( .CK(clk), .D(\depth_n.wptr [3]), .Q(n85), .QN( ));
Q_FDP0 U102 ( .CK(clk), .D(\depth_n.wptr [4]), .Q(n84), .QN( ));
Q_FDP0 U103 ( .CK(clk), .D(wdata[0]), .Q(n83), .QN( ));
Q_FDP0 U104 ( .CK(clk), .D(wdata[1]), .Q(n82), .QN( ));
Q_FDP0 U105 ( .CK(clk), .D(wdata[2]), .Q(n81), .QN( ));
Q_FDP0 U106 ( .CK(clk), .D(wdata[3]), .Q(n80), .QN( ));
Q_FDP0 U107 ( .CK(clk), .D(wdata[4]), .Q(n79), .QN( ));
Q_FDP0 U108 ( .CK(clk), .D(wdata[5]), .Q(n78), .QN( ));
Q_FDP0 U109 ( .CK(clk), .D(wdata[6]), .Q(n77), .QN( ));
Q_FDP0 U110 ( .CK(clk), .D(wdata[7]), .Q(n76), .QN( ));
Q_FDP0 U111 ( .CK(clk), .D(wdata[8]), .Q(n75), .QN( ));
Q_FDP0 U112 ( .CK(clk), .D(wdata[9]), .Q(n74), .QN( ));
Q_FDP0 U113 ( .CK(clk), .D(wdata[10]), .Q(n73), .QN( ));
Q_FDP0 U114 ( .CK(clk), .D(wdata[11]), .Q(n72), .QN( ));
Q_FDP0 U115 ( .CK(clk), .D(wdata[12]), .Q(n71), .QN( ));
Q_FDP0 U116 ( .CK(clk), .D(wdata[13]), .Q(n70), .QN( ));
Q_FDP0 U117 ( .CK(clk), .D(wdata[14]), .Q(n69), .QN( ));
Q_FDP0 U118 ( .CK(clk), .D(wdata[15]), .Q(n68), .QN( ));
Q_FDP0 U119 ( .CK(clk), .D(wdata[16]), .Q(n67), .QN( ));
Q_FDP0 U120 ( .CK(clk), .D(wdata[17]), .Q(n66), .QN( ));
Q_FDP0 U121 ( .CK(clk), .D(wdata[18]), .Q(n65), .QN( ));
Q_FDP0 U122 ( .CK(clk), .D(wdata[19]), .Q(n64), .QN( ));
Q_FDP0 U123 ( .CK(clk), .D(wdata[20]), .Q(n63), .QN( ));
Q_FDP0 U124 ( .CK(clk), .D(wdata[21]), .Q(n62), .QN( ));
Q_FDP0 U125 ( .CK(clk), .D(wdata[22]), .Q(n61), .QN( ));
Q_FDP0 U126 ( .CK(clk), .D(wdata[23]), .Q(n60), .QN( ));
Q_FDP0 U127 ( .CK(clk), .D(wdata[24]), .Q(n59), .QN( ));
Q_FDP0 U128 ( .CK(clk), .D(wdata[25]), .Q(n58), .QN( ));
Q_FDP0 U129 ( .CK(clk), .D(wdata[26]), .Q(n57), .QN( ));
Q_FDP0 U130 ( .CK(clk), .D(wdata[27]), .Q(n56), .QN( ));
Q_FDP0 U131 ( .CK(clk), .D(wdata[28]), .Q(n55), .QN( ));
Q_FDP0 U132 ( .CK(clk), .D(wdata[29]), .Q(n54), .QN( ));
Q_FDP0 U133 ( .CK(clk), .D(wdata[30]), .Q(n53), .QN( ));
Q_FDP0 U134 ( .CK(clk), .D(wdata[31]), .Q(n52), .QN( ));
Q_FDP0 U135 ( .CK(clk), .D(wdata[32]), .Q(n51), .QN( ));
Q_FDP0 U136 ( .CK(clk), .D(wdata[33]), .Q(n50), .QN( ));
Q_FDP0 U137 ( .CK(clk), .D(wdata[34]), .Q(n49), .QN( ));
Q_FDP0 U138 ( .CK(clk), .D(wdata[35]), .Q(n48), .QN( ));
Q_FDP0 U139 ( .CK(clk), .D(wdata[36]), .Q(n47), .QN( ));
Q_FDP0 U140 ( .CK(clk), .D(wdata[37]), .Q(n46), .QN( ));
Q_FDP0 U141 ( .CK(clk), .D(wdata[38]), .Q(n45), .QN( ));
Q_FDP0 U142 ( .CK(clk), .D(wdata[39]), .Q(n44), .QN( ));
Q_FDP0 U143 ( .CK(clk), .D(wdata[40]), .Q(n43), .QN( ));
Q_FDP0 U144 ( .CK(clk), .D(wdata[41]), .Q(n42), .QN( ));
Q_FDP0 U145 ( .CK(clk), .D(wdata[42]), .Q(n41), .QN( ));
Q_FDP0 U146 ( .CK(clk), .D(wdata[43]), .Q(n40), .QN( ));
Q_FDP0 U147 ( .CK(clk), .D(wdata[44]), .Q(n39), .QN( ));
Q_FDP0 U148 ( .CK(clk), .D(wdata[45]), .Q(n38), .QN( ));
Q_FDP0 U149 ( .CK(clk), .D(wdata[46]), .Q(n37), .QN( ));
Q_FDP0 U150 ( .CK(clk), .D(wdata[47]), .Q(n36), .QN( ));
Q_FDP0 U151 ( .CK(clk), .D(wdata[48]), .Q(n35), .QN( ));
Q_FDP0 U152 ( .CK(clk), .D(wdata[49]), .Q(n34), .QN( ));
Q_FDP0 U153 ( .CK(clk), .D(wdata[50]), .Q(n33), .QN( ));
Q_FDP0 U154 ( .CK(clk), .D(wdata[51]), .Q(n32), .QN( ));
Q_FDP0 U155 ( .CK(clk), .D(wdata[52]), .Q(n31), .QN( ));
Q_FDP0 U156 ( .CK(clk), .D(wdata[53]), .Q(n30), .QN( ));
Q_FDP0 U157 ( .CK(clk), .D(wdata[54]), .Q(n29), .QN( ));
Q_FDP0 U158 ( .CK(clk), .D(wdata[55]), .Q(n28), .QN( ));
Q_FDP0 U159 ( .CK(clk), .D(wdata[56]), .Q(n27), .QN( ));
Q_FDP0 U160 ( .CK(clk), .D(wdata[57]), .Q(n26), .QN( ));
Q_FDP0 U161 ( .CK(clk), .D(wdata[58]), .Q(n25), .QN( ));
Q_FDP0 U162 ( .CK(clk), .D(wdata[59]), .Q(n24), .QN( ));
Q_FDP0 U163 ( .CK(clk), .D(wdata[60]), .Q(n23), .QN( ));
Q_FDP0 U164 ( .CK(clk), .D(wdata[61]), .Q(n22), .QN( ));
Q_FDP0 U165 ( .CK(clk), .D(wdata[62]), .Q(n21), .QN( ));
Q_FDP0 U166 ( .CK(clk), .D(wdata[63]), .Q(n20), .QN( ));
Q_FDP0 U167 ( .CK(clk), .D(wdata[64]), .Q(n19), .QN( ));
Q_FDP0 U168 ( .CK(clk), .D(wdata[65]), .Q(n18), .QN( ));
Q_FDP0 U169 ( .CK(clk), .D(wdata[66]), .Q(n17), .QN( ));
Q_FDP0 U170 ( .CK(clk), .D(wdata[67]), .Q(n16), .QN( ));
Q_FDP0 U171 ( .CK(clk), .D(wdata[68]), .Q(n15), .QN( ));
Q_FDP0 U172 ( .CK(clk), .D(wdata[69]), .Q(n14), .QN( ));
Q_FDP0 U173 ( .CK(clk), .D(wdata[70]), .Q(n13), .QN( ));
Q_FDP0 U174 ( .CK(clk), .D(wdata[71]), .Q(n12), .QN( ));
Q_FDP0 U175 ( .CK(clk), .D(wdata[72]), .Q(n11), .QN( ));
Q_FDP0 U176 ( .CK(clk), .D(wdata[73]), .Q(n10), .QN( ));
Q_FDP0 U177 ( .CK(clk), .D(wdata[74]), .Q(n9), .QN( ));
Q_FDP0 U178 ( .CK(clk), .D(wdata[75]), .Q(n8), .QN( ));
Q_FDP0 U179 ( .CK(clk), .D(wdata[76]), .Q(n7), .QN( ));
Q_FDP0 U180 ( .CK(clk), .D(wdata[77]), .Q(n6), .QN( ));
Q_FDP0 U181 ( .CK(clk), .D(wdata[78]), .Q(n5), .QN( ));
Q_FDP0 U182 ( .CK(clk), .D(wdata[79]), .Q(n4), .QN( ));
Q_FDP0 U183 ( .CK(clk), .D(wdata[80]), .Q(n3), .QN( ));
Q_FDP0 U184 ( .CK(clk), .D(wdata[81]), .Q(n2), .QN( ));
Q_FDP0 U185 ( .CK(clk), .D(wdata[82]), .Q(n1), .QN( ));
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
`ifdef CBV

reg [82:0] \depth_n.r_data  [24:0];
initial begin: U188
  integer i;
  for (i=24; i>=0; i=i-1) \depth_n.r_data [i] =
`ifdef CBV_MEM_INIT1
  {83{1'b1}};
`else
  83'b0;
`endif
end
reg [82:0] n187;
assign {n178, n177, n176, n175, n174, n173, n172,
n171, n170, n169, n168, n167, n166, n165, n164,
n163, n162, n161, n160, n159, n158, n157, n156,
n155, n154, n153, n152, n151, n150, n149, n148,
n147, n146, n145, n144, n143, n142, n141, n140,
n139, n138, n137, n136, n135, n134, n133, n132,
n131, n130, n129, n128, n127, n126, n125, n124,
n123, n122, n121, n120, n119, n118, n117, n116,
n115, n114, n113, n112, n111, n110, n109, n108,
n107, n106, n105, n104, n103, n102, n101, n100,
n99, n98, n97, n96} = n187; 
always @(n84 or n85 or n86 or n87 or n88
 or n1 or n2 or n3 or n4 or n5 or n6 or n7 or n8
 or n9 or n10 or n11 or n12 or n13 or n14 or n15 or n16
 or n17 or n18 or n19 or n20 or n21 or n22 or n23 or n24
 or n25 or n26 or n27 or n28 or n29 or n30 or n31 or n32
 or n33 or n34 or n35 or n36 or n37 or n38 or n39 or n40
 or n41 or n42 or n43 or n44 or n45 or n46 or n47 or n48
 or n49 or n50 or n51 or n52 or n53 or n54 or n55 or n56
 or n57 or n58 or n59 or n60 or n61 or n62 or n63 or n64
 or n65 or n66 or n67 or n68 or n69 or n70 or n71 or n72
 or n73 or n74 or n75 or n76 or n77 or n78 or n79 or n80
 or n81 or n82 or n83 or n89 or \depth_n.rptr [4] or \depth_n.rptr [3] or \depth_n.rptr [2] or \depth_n.rptr [1]
 or \depth_n.rptr [0])
#0 begin
if (n89)
\depth_n.r_data [{n84, n85, n86, n87, n88}] =
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
 n78, n79, n80, n81, n82, n83};
n187 = \depth_n.r_data [{\depth_n.rptr [4], \depth_n.rptr [3], \depth_n.rptr [2], \depth_n.rptr [1], \depth_n.rptr [0]}];
end
`else

MPW32X83 \depth_n.r_data  ( .A4(n84), .A3(n85), .A2(n86), .A1(n87), .A0(n88), .DI82(n1),
 .DI81(n2), .DI80(n3), .DI79(n4), .DI78(n5), .DI77(n6), .DI76(n7), .DI75(n8), .DI74(n9),
 .DI73(n10), .DI72(n11), .DI71(n12), .DI70(n13), .DI69(n14), .DI68(n15), .DI67(n16), .DI66(n17),
 .DI65(n18), .DI64(n19), .DI63(n20), .DI62(n21), .DI61(n22), .DI60(n23), .DI59(n24), .DI58(n25),
 .DI57(n26), .DI56(n27), .DI55(n28), .DI54(n29), .DI53(n30), .DI52(n31), .DI51(n32), .DI50(n33),
 .DI49(n34), .DI48(n35), .DI47(n36), .DI46(n37), .DI45(n38), .DI44(n39), .DI43(n40), .DI42(n41),
 .DI41(n42), .DI40(n43), .DI39(n44), .DI38(n45), .DI37(n46), .DI36(n47), .DI35(n48), .DI34(n49),
 .DI33(n50), .DI32(n51), .DI31(n52), .DI30(n53), .DI29(n54), .DI28(n55), .DI27(n56), .DI26(n57),
 .DI25(n58), .DI24(n59), .DI23(n60), .DI22(n61), .DI21(n62), .DI20(n63), .DI19(n64), .DI18(n65),
 .DI17(n66), .DI16(n67), .DI15(n68), .DI14(n69), .DI13(n70), .DI12(n71), .DI11(n72), .DI10(n73),
 .DI9(n74), .DI8(n75), .DI7(n76), .DI6(n77), .DI5(n78), .DI4(n79), .DI3(n80), .DI2(n81),
 .DI1(n82), .DI0(n83), .WE(n89), .SYNC_IN(n186), .SYNC_OUT(n187));
// pragma CVASTRPROP INSTANCE "\depth_n.r_data " HDL_MEMORY_DECL "1 82 0 24 0"
MPR32X83 U189 ( .A4(\depth_n.rptr [4]), .A3(\depth_n.rptr [3]), .A2(\depth_n.rptr [2]), .A1(\depth_n.rptr [1]), .A0(\depth_n.rptr [0]), .SYNC_IN(n187),
 .DO82(n178), .DO81(n177), .DO80(n176), .DO79(n175), .DO78(n174), .DO77(n173), .DO76(n172), .DO75(n171),
 .DO74(n170), .DO73(n169), .DO72(n168), .DO71(n167), .DO70(n166), .DO69(n165), .DO68(n164), .DO67(n163),
 .DO66(n162), .DO65(n161), .DO64(n160), .DO63(n159), .DO62(n158), .DO61(n157), .DO60(n156), .DO59(n155),
 .DO58(n154), .DO57(n153), .DO56(n152), .DO55(n151), .DO54(n150), .DO53(n149), .DO52(n148), .DO51(n147),
 .DO50(n146), .DO49(n145), .DO48(n144), .DO47(n143), .DO46(n142), .DO45(n141), .DO44(n140), .DO43(n139),
 .DO42(n138), .DO41(n137), .DO40(n136), .DO39(n135), .DO38(n134), .DO37(n133), .DO36(n132), .DO35(n131),
 .DO34(n130), .DO33(n129), .DO32(n128), .DO31(n127), .DO30(n126), .DO29(n125), .DO28(n124), .DO27(n123),
 .DO26(n122), .DO25(n121), .DO24(n120), .DO23(n119), .DO22(n118), .DO21(n117), .DO20(n116), .DO19(n115),
 .DO18(n114), .DO17(n113), .DO16(n112), .DO15(n111), .DO14(n110), .DO13(n109), .DO12(n108), .DO11(n107),
 .DO10(n106), .DO9(n105), .DO8(n104), .DO7(n103), .DO6(n102), .DO5(n101), .DO4(n100), .DO3(n99),
 .DO2(n98), .DO1(n97), .DO0(n96), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
`ifdef CBV
`else
`ifdef MPW32X83_MPR32X83
`else
module MPW32X83( A4, A3, A2, A1, A0, DI82, DI81,
 DI80, DI79, DI78, DI77, DI76, DI75, DI74, DI73,
 DI72, DI71, DI70, DI69, DI68, DI67, DI66, DI65,
 DI64, DI63, DI62, DI61, DI60, DI59, DI58, DI57,
 DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49,
 DI48, DI47, DI46, DI45, DI44, DI43, DI42, DI41,
 DI40, DI39, DI38, DI37, DI36, DI35, DI34, DI33,
 DI32, DI31, DI30, DI29, DI28, DI27, DI26, DI25,
 DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17,
 DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
 DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1,
 DI0, WE, SYNC_IN, SYNC_OUT);
input  A4, A3, A2, A1, A0, DI82, DI81, DI80,
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
`ifdef _MPR32X83_
`else
module MPR32X83( A4, A3, A2, A1, A0, SYNC_IN, DO82,
 DO81, DO80, DO79, DO78, DO77, DO76, DO75, DO74,
 DO73, DO72, DO71, DO70, DO69, DO68, DO67, DO66,
 DO65, DO64, DO63, DO62, DO61, DO60, DO59, DO58,
 DO57, DO56, DO55, DO54, DO53, DO52, DO51, DO50,
 DO49, DO48, DO47, DO46, DO45, DO44, DO43, DO42,
 DO41, DO40, DO39, DO38, DO37, DO36, DO35, DO34,
 DO33, DO32, DO31, DO30, DO29, DO28, DO27, DO26,
 DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18,
 DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10,
 DO9, DO8, DO7, DO6, DO5, DO4, DO3, DO2,
 DO1, DO0, SYNC_OUT);
input  A4, A3, A2, A1, A0, SYNC_IN;
output  DO82, DO81, DO80, DO79, DO78, DO77, DO76, DO75,
 DO74, DO73, DO72, DO71, DO70, DO69, DO68, DO67, DO66, DO65,
 DO64, DO63, DO62, DO61, DO60, DO59, DO58, DO57, DO56, DO55,
 DO54, DO53, DO52, DO51, DO50, DO49, DO48, DO47, DO46, DO45,
 DO44, DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36, DO35,
 DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27, DO26, DO25,
 DO24, DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16, DO15,
 DO14, DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6, DO5,
 DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR32X83_
`endif
`define MPW32X83_MPR32X83
`endif
`endif
