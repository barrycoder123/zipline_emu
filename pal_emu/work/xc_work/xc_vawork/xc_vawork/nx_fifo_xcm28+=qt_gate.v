
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm28 ( empty, full, underflow, overflow, used_slots, free_slots, 
	rdata, clk, rst_n, wen, ren, clear, wdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output underflow;
output overflow;
output [1:0] used_slots;
output [1:0] free_slots;
output [33:0] rdata;
input clk;
input rst_n;
input wen;
input ren;
input clear;
input [33:0] wdata;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire \depth_n._zy_simnet_overflow_3_w$ ;
wire \depth_n._zy_simnet_underflow_2_w$ ;
wire [0:0] \depth_n.wptr ;
wire [0:0] \depth_n.rptr ;
supply0 n41;
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
Q_MX02 U2 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][33] ), .A1(\depth_n.r_data[1][33] ), .Z(n1));
Q_MX02 U3 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][32] ), .A1(\depth_n.r_data[1][32] ), .Z(n2));
Q_MX02 U4 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][31] ), .A1(\depth_n.r_data[1][31] ), .Z(n3));
Q_MX02 U5 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][30] ), .A1(\depth_n.r_data[1][30] ), .Z(n4));
Q_MX02 U6 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][29] ), .A1(\depth_n.r_data[1][29] ), .Z(n5));
Q_MX02 U7 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][28] ), .A1(\depth_n.r_data[1][28] ), .Z(n6));
Q_MX02 U8 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][27] ), .A1(\depth_n.r_data[1][27] ), .Z(n7));
Q_MX02 U9 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][26] ), .A1(\depth_n.r_data[1][26] ), .Z(n8));
Q_MX02 U10 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][25] ), .A1(\depth_n.r_data[1][25] ), .Z(n9));
Q_MX02 U11 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][24] ), .A1(\depth_n.r_data[1][24] ), .Z(n10));
Q_MX02 U12 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][23] ), .A1(\depth_n.r_data[1][23] ), .Z(n11));
Q_MX02 U13 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][22] ), .A1(\depth_n.r_data[1][22] ), .Z(n12));
Q_MX02 U14 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][21] ), .A1(\depth_n.r_data[1][21] ), .Z(n13));
Q_MX02 U15 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][20] ), .A1(\depth_n.r_data[1][20] ), .Z(n14));
Q_MX02 U16 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][19] ), .A1(\depth_n.r_data[1][19] ), .Z(n15));
Q_MX02 U17 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][18] ), .A1(\depth_n.r_data[1][18] ), .Z(n16));
Q_MX02 U18 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][17] ), .A1(\depth_n.r_data[1][17] ), .Z(n17));
Q_MX02 U19 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][16] ), .A1(\depth_n.r_data[1][16] ), .Z(n18));
Q_MX02 U20 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][15] ), .A1(\depth_n.r_data[1][15] ), .Z(n19));
Q_MX02 U21 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][14] ), .A1(\depth_n.r_data[1][14] ), .Z(n20));
Q_MX02 U22 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][13] ), .A1(\depth_n.r_data[1][13] ), .Z(n21));
Q_MX02 U23 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][12] ), .A1(\depth_n.r_data[1][12] ), .Z(n22));
Q_MX02 U24 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][11] ), .A1(\depth_n.r_data[1][11] ), .Z(n23));
Q_MX02 U25 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][10] ), .A1(\depth_n.r_data[1][10] ), .Z(n24));
Q_MX02 U26 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][9] ), .A1(\depth_n.r_data[1][9] ), .Z(n25));
Q_MX02 U27 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][8] ), .A1(\depth_n.r_data[1][8] ), .Z(n26));
Q_MX02 U28 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][7] ), .A1(\depth_n.r_data[1][7] ), .Z(n27));
Q_MX02 U29 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][6] ), .A1(\depth_n.r_data[1][6] ), .Z(n28));
Q_MX02 U30 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][5] ), .A1(\depth_n.r_data[1][5] ), .Z(n29));
Q_MX02 U31 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][4] ), .A1(\depth_n.r_data[1][4] ), .Z(n30));
Q_MX02 U32 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][3] ), .A1(\depth_n.r_data[1][3] ), .Z(n31));
Q_MX02 U33 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][2] ), .A1(\depth_n.r_data[1][2] ), .Z(n32));
Q_MX02 U34 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][1] ), .A1(\depth_n.r_data[1][1] ), .Z(n33));
Q_MX02 U35 ( .S(\depth_n.rptr [0]), .A0(\depth_n.r_data[0][0] ), .A1(\depth_n.r_data[1][0] ), .Z(n34));
Q_AN02 U36 ( .A0(n36), .A1(n39), .Z(n35));
Q_INV U37 ( .A(n37), .Z(n36));
Q_AN02 U38 ( .A0(\depth_n.wptr [0]), .A1(n39), .Z(n37));
Q_INV U39 ( .A(empty), .Z(n38));
Q_AN02 U40 ( .A0(n38), .A1(n1), .Z(rdata[33]));
Q_AN02 U41 ( .A0(n38), .A1(n2), .Z(rdata[32]));
Q_AN02 U42 ( .A0(n38), .A1(n3), .Z(rdata[31]));
Q_AN02 U43 ( .A0(n38), .A1(n4), .Z(rdata[30]));
Q_AN02 U44 ( .A0(n38), .A1(n5), .Z(rdata[29]));
Q_AN02 U45 ( .A0(n38), .A1(n6), .Z(rdata[28]));
Q_AN02 U46 ( .A0(n38), .A1(n7), .Z(rdata[27]));
Q_AN02 U47 ( .A0(n38), .A1(n8), .Z(rdata[26]));
Q_AN02 U48 ( .A0(n38), .A1(n9), .Z(rdata[25]));
Q_AN02 U49 ( .A0(n38), .A1(n10), .Z(rdata[24]));
Q_AN02 U50 ( .A0(n38), .A1(n11), .Z(rdata[23]));
Q_AN02 U51 ( .A0(n38), .A1(n12), .Z(rdata[22]));
Q_AN02 U52 ( .A0(n38), .A1(n13), .Z(rdata[21]));
Q_AN02 U53 ( .A0(n38), .A1(n14), .Z(rdata[20]));
Q_AN02 U54 ( .A0(n38), .A1(n15), .Z(rdata[19]));
Q_AN02 U55 ( .A0(n38), .A1(n16), .Z(rdata[18]));
Q_AN02 U56 ( .A0(n38), .A1(n17), .Z(rdata[17]));
Q_AN02 U57 ( .A0(n38), .A1(n18), .Z(rdata[16]));
Q_AN02 U58 ( .A0(n38), .A1(n19), .Z(rdata[15]));
Q_AN02 U59 ( .A0(n38), .A1(n20), .Z(rdata[14]));
Q_AN02 U60 ( .A0(n38), .A1(n21), .Z(rdata[13]));
Q_AN02 U61 ( .A0(n38), .A1(n22), .Z(rdata[12]));
Q_AN02 U62 ( .A0(n38), .A1(n23), .Z(rdata[11]));
Q_AN02 U63 ( .A0(n38), .A1(n24), .Z(rdata[10]));
Q_AN02 U64 ( .A0(n38), .A1(n25), .Z(rdata[9]));
Q_AN02 U65 ( .A0(n38), .A1(n26), .Z(rdata[8]));
Q_AN02 U66 ( .A0(n38), .A1(n27), .Z(rdata[7]));
Q_AN02 U67 ( .A0(n38), .A1(n28), .Z(rdata[6]));
Q_AN02 U68 ( .A0(n38), .A1(n29), .Z(rdata[5]));
Q_AN02 U69 ( .A0(n38), .A1(n30), .Z(rdata[4]));
Q_AN02 U70 ( .A0(n38), .A1(n31), .Z(rdata[3]));
Q_AN02 U71 ( .A0(n38), .A1(n32), .Z(rdata[2]));
Q_AN02 U72 ( .A0(n38), .A1(n33), .Z(rdata[1]));
Q_AN02 U73 ( .A0(n38), .A1(n34), .Z(rdata[0]));
Q_INV U74 ( .A(full), .Z(n40));
Q_AN02 U75 ( .A0(wen), .A1(n40), .Z(n39));
nx_fifo_ctrl_xcm39 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
	.used_slots( used_slots[1:0]), .free_slots( free_slots[1:0]), 
	.rptr( \depth_n.rptr [0]), .wptr( \depth_n.wptr [0]), .underflow( 
	\depth_n._zy_simnet_underflow_2_w$ ), .overflow( 
	\depth_n._zy_simnet_overflow_3_w$ ), .clk( clk), .rst_n( rst_n), 
	.wen( wen), .ren( ren), .clear( clear));
ixc_assign \depth_n._zz_strnp_1 ( overflow, 
	\depth_n._zy_simnet_overflow_3_w$ );
ixc_assign \depth_n._zz_strnp_0 ( underflow, 
	\depth_n._zy_simnet_underflow_2_w$ );
Q_FDP4EP \depth_n.r_data_REG[0][0] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[0]), .Q(\depth_n.r_data[0][0] ));
Q_FDP4EP \depth_n.r_data_REG[0][1] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[1]), .Q(\depth_n.r_data[0][1] ));
Q_FDP4EP \depth_n.r_data_REG[0][2] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[2]), .Q(\depth_n.r_data[0][2] ));
Q_FDP4EP \depth_n.r_data_REG[0][3] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[3]), .Q(\depth_n.r_data[0][3] ));
Q_FDP4EP \depth_n.r_data_REG[0][4] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[4]), .Q(\depth_n.r_data[0][4] ));
Q_FDP4EP \depth_n.r_data_REG[0][5] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[5]), .Q(\depth_n.r_data[0][5] ));
Q_FDP4EP \depth_n.r_data_REG[0][6] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[6]), .Q(\depth_n.r_data[0][6] ));
Q_FDP4EP \depth_n.r_data_REG[0][7] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[7]), .Q(\depth_n.r_data[0][7] ));
Q_FDP4EP \depth_n.r_data_REG[0][8] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[8]), .Q(\depth_n.r_data[0][8] ));
Q_FDP4EP \depth_n.r_data_REG[0][9] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[9]), .Q(\depth_n.r_data[0][9] ));
Q_FDP4EP \depth_n.r_data_REG[0][10] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[10]), .Q(\depth_n.r_data[0][10] ));
Q_FDP4EP \depth_n.r_data_REG[0][11] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[11]), .Q(\depth_n.r_data[0][11] ));
Q_FDP4EP \depth_n.r_data_REG[0][12] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[12]), .Q(\depth_n.r_data[0][12] ));
Q_FDP4EP \depth_n.r_data_REG[0][13] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[13]), .Q(\depth_n.r_data[0][13] ));
Q_FDP4EP \depth_n.r_data_REG[0][14] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[14]), .Q(\depth_n.r_data[0][14] ));
Q_FDP4EP \depth_n.r_data_REG[0][15] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[15]), .Q(\depth_n.r_data[0][15] ));
Q_FDP4EP \depth_n.r_data_REG[0][16] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[16]), .Q(\depth_n.r_data[0][16] ));
Q_FDP4EP \depth_n.r_data_REG[0][17] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[17]), .Q(\depth_n.r_data[0][17] ));
Q_FDP4EP \depth_n.r_data_REG[0][18] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[18]), .Q(\depth_n.r_data[0][18] ));
Q_FDP4EP \depth_n.r_data_REG[0][19] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[19]), .Q(\depth_n.r_data[0][19] ));
Q_FDP4EP \depth_n.r_data_REG[0][20] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[20]), .Q(\depth_n.r_data[0][20] ));
Q_FDP4EP \depth_n.r_data_REG[0][21] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[21]), .Q(\depth_n.r_data[0][21] ));
Q_FDP4EP \depth_n.r_data_REG[0][22] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[22]), .Q(\depth_n.r_data[0][22] ));
Q_FDP4EP \depth_n.r_data_REG[0][23] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[23]), .Q(\depth_n.r_data[0][23] ));
Q_FDP4EP \depth_n.r_data_REG[0][24] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[24]), .Q(\depth_n.r_data[0][24] ));
Q_FDP4EP \depth_n.r_data_REG[0][25] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[25]), .Q(\depth_n.r_data[0][25] ));
Q_FDP4EP \depth_n.r_data_REG[0][26] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[26]), .Q(\depth_n.r_data[0][26] ));
Q_FDP4EP \depth_n.r_data_REG[0][27] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[27]), .Q(\depth_n.r_data[0][27] ));
Q_FDP4EP \depth_n.r_data_REG[0][28] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[28]), .Q(\depth_n.r_data[0][28] ));
Q_FDP4EP \depth_n.r_data_REG[0][29] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[29]), .Q(\depth_n.r_data[0][29] ));
Q_FDP4EP \depth_n.r_data_REG[0][30] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[30]), .Q(\depth_n.r_data[0][30] ));
Q_FDP4EP \depth_n.r_data_REG[0][31] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[31]), .Q(\depth_n.r_data[0][31] ));
Q_FDP4EP \depth_n.r_data_REG[0][32] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[32]), .Q(\depth_n.r_data[0][32] ));
Q_FDP4EP \depth_n.r_data_REG[0][33] ( .CK(clk), .CE(n35), .R(n41), .D(wdata[33]), .Q(\depth_n.r_data[0][33] ));
Q_FDP4EP \depth_n.r_data_REG[1][0] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[0]), .Q(\depth_n.r_data[1][0] ));
Q_FDP4EP \depth_n.r_data_REG[1][1] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[1]), .Q(\depth_n.r_data[1][1] ));
Q_FDP4EP \depth_n.r_data_REG[1][2] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[2]), .Q(\depth_n.r_data[1][2] ));
Q_FDP4EP \depth_n.r_data_REG[1][3] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[3]), .Q(\depth_n.r_data[1][3] ));
Q_FDP4EP \depth_n.r_data_REG[1][4] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[4]), .Q(\depth_n.r_data[1][4] ));
Q_FDP4EP \depth_n.r_data_REG[1][5] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[5]), .Q(\depth_n.r_data[1][5] ));
Q_FDP4EP \depth_n.r_data_REG[1][6] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[6]), .Q(\depth_n.r_data[1][6] ));
Q_FDP4EP \depth_n.r_data_REG[1][7] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[7]), .Q(\depth_n.r_data[1][7] ));
Q_FDP4EP \depth_n.r_data_REG[1][8] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[8]), .Q(\depth_n.r_data[1][8] ));
Q_FDP4EP \depth_n.r_data_REG[1][9] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[9]), .Q(\depth_n.r_data[1][9] ));
Q_FDP4EP \depth_n.r_data_REG[1][10] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[10]), .Q(\depth_n.r_data[1][10] ));
Q_FDP4EP \depth_n.r_data_REG[1][11] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[11]), .Q(\depth_n.r_data[1][11] ));
Q_FDP4EP \depth_n.r_data_REG[1][12] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[12]), .Q(\depth_n.r_data[1][12] ));
Q_FDP4EP \depth_n.r_data_REG[1][13] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[13]), .Q(\depth_n.r_data[1][13] ));
Q_FDP4EP \depth_n.r_data_REG[1][14] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[14]), .Q(\depth_n.r_data[1][14] ));
Q_FDP4EP \depth_n.r_data_REG[1][15] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[15]), .Q(\depth_n.r_data[1][15] ));
Q_FDP4EP \depth_n.r_data_REG[1][16] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[16]), .Q(\depth_n.r_data[1][16] ));
Q_FDP4EP \depth_n.r_data_REG[1][17] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[17]), .Q(\depth_n.r_data[1][17] ));
Q_FDP4EP \depth_n.r_data_REG[1][18] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[18]), .Q(\depth_n.r_data[1][18] ));
Q_FDP4EP \depth_n.r_data_REG[1][19] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[19]), .Q(\depth_n.r_data[1][19] ));
Q_FDP4EP \depth_n.r_data_REG[1][20] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[20]), .Q(\depth_n.r_data[1][20] ));
Q_FDP4EP \depth_n.r_data_REG[1][21] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[21]), .Q(\depth_n.r_data[1][21] ));
Q_FDP4EP \depth_n.r_data_REG[1][22] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[22]), .Q(\depth_n.r_data[1][22] ));
Q_FDP4EP \depth_n.r_data_REG[1][23] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[23]), .Q(\depth_n.r_data[1][23] ));
Q_FDP4EP \depth_n.r_data_REG[1][24] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[24]), .Q(\depth_n.r_data[1][24] ));
Q_FDP4EP \depth_n.r_data_REG[1][25] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[25]), .Q(\depth_n.r_data[1][25] ));
Q_FDP4EP \depth_n.r_data_REG[1][26] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[26]), .Q(\depth_n.r_data[1][26] ));
Q_FDP4EP \depth_n.r_data_REG[1][27] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[27]), .Q(\depth_n.r_data[1][27] ));
Q_FDP4EP \depth_n.r_data_REG[1][28] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[28]), .Q(\depth_n.r_data[1][28] ));
Q_FDP4EP \depth_n.r_data_REG[1][29] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[29]), .Q(\depth_n.r_data[1][29] ));
Q_FDP4EP \depth_n.r_data_REG[1][30] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[30]), .Q(\depth_n.r_data[1][30] ));
Q_FDP4EP \depth_n.r_data_REG[1][31] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[31]), .Q(\depth_n.r_data[1][31] ));
Q_FDP4EP \depth_n.r_data_REG[1][32] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[32]), .Q(\depth_n.r_data[1][32] ));
Q_FDP4EP \depth_n.r_data_REG[1][33] ( .CK(clk), .CE(n37), .R(n41), .D(wdata[33]), .Q(\depth_n.r_data[1][33] ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "\depth_n.r_data  1 33 0 1 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
