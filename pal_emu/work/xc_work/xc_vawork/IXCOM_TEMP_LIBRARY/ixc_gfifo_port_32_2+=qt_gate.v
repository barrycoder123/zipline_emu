
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_gfifo_port_32_2 ( tkout, tkin, ireq, cbid, len, idata, CGFtsReq, 
	CGFcbid, CGFlen, CGFidata, CGFfull, CLBreq, CLBrd, CLBwr, CLBfull, 
	Rtkin);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output tkout;
input tkin;
input ireq;
input [19:0] cbid;
input [11:0] len;
input [31:0] idata;
output CGFtsReq;
output [19:0] CGFcbid;
output [11:0] CGFlen;
output [511:0] CGFidata;
input CGFfull;
output CLBreq;
input [3:0] CLBrd;
input [3:0] CLBwr;
input CLBfull;
input Rtkin;
wire fclk;
wire enq;
wire CLBreqWhileFull;
`_2_ wire en;
`_2_ wire ack;
`_2_ wire [31:0] odata;
`_2_ wire oreq;
`_2_ wire [19:0] ocbid;
`_2_ wire [19:0] xcbid;
`_2_ wire [11:0] olen;
`_2_ wire [11:0] xlen;
`_2_ wire [0:0] sel;
`_2_ wire [31:0] xdata;
wire [31:0] i;
`_2_ wire ireqR;
supply1 n5;
Q_ASSIGN U0 ( .B(len[0]), .A(xlen[0]));
Q_ASSIGN U1 ( .B(len[0]), .A(olen[0]));
Q_ASSIGN U2 ( .B(len[1]), .A(xlen[1]));
Q_ASSIGN U3 ( .B(len[1]), .A(olen[1]));
Q_ASSIGN U4 ( .B(len[2]), .A(xlen[2]));
Q_ASSIGN U5 ( .B(len[2]), .A(olen[2]));
Q_ASSIGN U6 ( .B(len[3]), .A(xlen[3]));
Q_ASSIGN U7 ( .B(len[3]), .A(olen[3]));
Q_ASSIGN U8 ( .B(len[4]), .A(xlen[4]));
Q_ASSIGN U9 ( .B(len[4]), .A(olen[4]));
Q_ASSIGN U10 ( .B(len[5]), .A(xlen[5]));
Q_ASSIGN U11 ( .B(len[5]), .A(olen[5]));
Q_ASSIGN U12 ( .B(len[6]), .A(xlen[6]));
Q_ASSIGN U13 ( .B(len[6]), .A(olen[6]));
Q_ASSIGN U14 ( .B(len[7]), .A(xlen[7]));
Q_ASSIGN U15 ( .B(len[7]), .A(olen[7]));
Q_ASSIGN U16 ( .B(len[8]), .A(xlen[8]));
Q_ASSIGN U17 ( .B(len[8]), .A(olen[8]));
Q_ASSIGN U18 ( .B(len[9]), .A(xlen[9]));
Q_ASSIGN U19 ( .B(len[9]), .A(olen[9]));
Q_ASSIGN U20 ( .B(len[10]), .A(xlen[10]));
Q_ASSIGN U21 ( .B(len[10]), .A(olen[10]));
Q_ASSIGN U22 ( .B(len[11]), .A(xlen[11]));
Q_ASSIGN U23 ( .B(len[11]), .A(olen[11]));
Q_BUF U24 ( .A(ocbid[0]), .Z(xcbid[0]));
Q_BUF U25 ( .A(ocbid[1]), .Z(xcbid[1]));
Q_BUF U26 ( .A(ocbid[2]), .Z(xcbid[2]));
Q_BUF U27 ( .A(ocbid[3]), .Z(xcbid[3]));
Q_BUF U28 ( .A(ocbid[4]), .Z(xcbid[4]));
Q_BUF U29 ( .A(ocbid[5]), .Z(xcbid[5]));
Q_BUF U30 ( .A(ocbid[6]), .Z(xcbid[6]));
Q_BUF U31 ( .A(ocbid[7]), .Z(xcbid[7]));
Q_BUF U32 ( .A(ocbid[8]), .Z(xcbid[8]));
Q_BUF U33 ( .A(ocbid[9]), .Z(xcbid[9]));
Q_BUF U34 ( .A(ocbid[10]), .Z(xcbid[10]));
Q_BUF U35 ( .A(ocbid[11]), .Z(xcbid[11]));
Q_BUF U36 ( .A(ocbid[12]), .Z(xcbid[12]));
Q_BUF U37 ( .A(ocbid[13]), .Z(xcbid[13]));
Q_BUF U38 ( .A(ocbid[14]), .Z(xcbid[14]));
Q_BUF U39 ( .A(ocbid[15]), .Z(xcbid[15]));
Q_BUF U40 ( .A(ocbid[16]), .Z(xcbid[16]));
Q_BUF U41 ( .A(ocbid[17]), .Z(xcbid[17]));
Q_BUF U42 ( .A(ocbid[18]), .Z(xcbid[18]));
Q_BUF U43 ( .A(ocbid[19]), .Z(xcbid[19]));
Q_BUF U44 ( .A(odata[0]), .Z(xdata[0]));
Q_BUF U45 ( .A(odata[1]), .Z(xdata[1]));
Q_BUF U46 ( .A(odata[2]), .Z(xdata[2]));
Q_BUF U47 ( .A(odata[3]), .Z(xdata[3]));
Q_BUF U48 ( .A(odata[4]), .Z(xdata[4]));
Q_BUF U49 ( .A(odata[5]), .Z(xdata[5]));
Q_BUF U50 ( .A(odata[6]), .Z(xdata[6]));
Q_BUF U51 ( .A(odata[7]), .Z(xdata[7]));
Q_BUF U52 ( .A(odata[8]), .Z(xdata[8]));
Q_BUF U53 ( .A(odata[9]), .Z(xdata[9]));
Q_BUF U54 ( .A(odata[10]), .Z(xdata[10]));
Q_BUF U55 ( .A(odata[11]), .Z(xdata[11]));
Q_BUF U56 ( .A(odata[12]), .Z(xdata[12]));
Q_BUF U57 ( .A(odata[13]), .Z(xdata[13]));
Q_BUF U58 ( .A(odata[14]), .Z(xdata[14]));
Q_BUF U59 ( .A(odata[15]), .Z(xdata[15]));
Q_BUF U60 ( .A(odata[16]), .Z(xdata[16]));
Q_BUF U61 ( .A(odata[17]), .Z(xdata[17]));
Q_BUF U62 ( .A(odata[18]), .Z(xdata[18]));
Q_BUF U63 ( .A(odata[19]), .Z(xdata[19]));
Q_BUF U64 ( .A(odata[20]), .Z(xdata[20]));
Q_BUF U65 ( .A(odata[21]), .Z(xdata[21]));
Q_BUF U66 ( .A(odata[22]), .Z(xdata[22]));
Q_BUF U67 ( .A(odata[23]), .Z(xdata[23]));
Q_BUF U68 ( .A(odata[24]), .Z(xdata[24]));
Q_BUF U69 ( .A(odata[25]), .Z(xdata[25]));
Q_BUF U70 ( .A(odata[26]), .Z(xdata[26]));
Q_BUF U71 ( .A(odata[27]), .Z(xdata[27]));
Q_BUF U72 ( .A(odata[28]), .Z(xdata[28]));
Q_BUF U73 ( .A(odata[29]), .Z(xdata[29]));
Q_BUF U74 ( .A(odata[30]), .Z(xdata[30]));
Q_BUF U75 ( .A(odata[31]), .Z(xdata[31]));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_EV_WOR_START qi ( .A(CLBreqWhileFull));
Q_INV U78 ( .A(n4), .Z(tkout));
Q_XNR2 U79 ( .A0(oreq), .A1(ack), .Z(n4));
Q_CCLKCHK cchk ( .sig(ireq));
Q_AN02 U81 ( .A0(enq), .A1(CLBfull), .Z(CLBreqWhileFull));
Q_AN02 U82 ( .A0(n2), .A1(n3), .Z(enq));
Q_INV U83 ( .A(xc_top.GFLock2), .Z(n3));
Q_XOR2 U84 ( .A0(ireq), .A1(ireqR), .Z(n2));
Q_BUFZP U85 ( .OE(CLBreqWhileFull), .A(n5), .Z(xc_top.GFLBfull));
Q_BUFZP U86 ( .OE(en), .A(xcbid[0]), .Z(CGFcbid[0]));
Q_BUFZP U87 ( .OE(en), .A(xcbid[1]), .Z(CGFcbid[1]));
Q_BUFZP U88 ( .OE(en), .A(xcbid[2]), .Z(CGFcbid[2]));
Q_BUFZP U89 ( .OE(en), .A(xcbid[3]), .Z(CGFcbid[3]));
Q_BUFZP U90 ( .OE(en), .A(xcbid[4]), .Z(CGFcbid[4]));
Q_BUFZP U91 ( .OE(en), .A(xcbid[5]), .Z(CGFcbid[5]));
Q_BUFZP U92 ( .OE(en), .A(xcbid[6]), .Z(CGFcbid[6]));
Q_BUFZP U93 ( .OE(en), .A(xcbid[7]), .Z(CGFcbid[7]));
Q_BUFZP U94 ( .OE(en), .A(xcbid[8]), .Z(CGFcbid[8]));
Q_BUFZP U95 ( .OE(en), .A(xcbid[9]), .Z(CGFcbid[9]));
Q_BUFZP U96 ( .OE(en), .A(xcbid[10]), .Z(CGFcbid[10]));
Q_BUFZP U97 ( .OE(en), .A(xcbid[11]), .Z(CGFcbid[11]));
Q_BUFZP U98 ( .OE(en), .A(xcbid[12]), .Z(CGFcbid[12]));
Q_BUFZP U99 ( .OE(en), .A(xcbid[13]), .Z(CGFcbid[13]));
Q_BUFZP U100 ( .OE(en), .A(xcbid[14]), .Z(CGFcbid[14]));
Q_BUFZP U101 ( .OE(en), .A(xcbid[15]), .Z(CGFcbid[15]));
Q_BUFZP U102 ( .OE(en), .A(xcbid[16]), .Z(CGFcbid[16]));
Q_BUFZP U103 ( .OE(en), .A(xcbid[17]), .Z(CGFcbid[17]));
Q_BUFZP U104 ( .OE(en), .A(xcbid[18]), .Z(CGFcbid[18]));
Q_BUFZP U105 ( .OE(en), .A(xcbid[19]), .Z(CGFcbid[19]));
Q_BUFZP U106 ( .OE(en), .A(len[0]), .Z(CGFlen[0]));
Q_BUFZP U107 ( .OE(en), .A(len[1]), .Z(CGFlen[1]));
Q_BUFZP U108 ( .OE(en), .A(len[2]), .Z(CGFlen[2]));
Q_BUFZP U109 ( .OE(en), .A(len[3]), .Z(CGFlen[3]));
Q_BUFZP U110 ( .OE(en), .A(len[4]), .Z(CGFlen[4]));
Q_BUFZP U111 ( .OE(en), .A(len[5]), .Z(CGFlen[5]));
Q_BUFZP U112 ( .OE(en), .A(len[6]), .Z(CGFlen[6]));
Q_BUFZP U113 ( .OE(en), .A(len[7]), .Z(CGFlen[7]));
Q_BUFZP U114 ( .OE(en), .A(len[8]), .Z(CGFlen[8]));
Q_BUFZP U115 ( .OE(en), .A(len[9]), .Z(CGFlen[9]));
Q_BUFZP U116 ( .OE(en), .A(len[10]), .Z(CGFlen[10]));
Q_BUFZP U117 ( .OE(en), .A(len[11]), .Z(CGFlen[11]));
Q_BUFZP U118 ( .OE(en), .A(xdata[0]), .Z(CGFidata[0]));
Q_BUFZP U119 ( .OE(en), .A(xdata[1]), .Z(CGFidata[1]));
Q_BUFZP U120 ( .OE(en), .A(xdata[2]), .Z(CGFidata[2]));
Q_BUFZP U121 ( .OE(en), .A(xdata[3]), .Z(CGFidata[3]));
Q_BUFZP U122 ( .OE(en), .A(xdata[4]), .Z(CGFidata[4]));
Q_BUFZP U123 ( .OE(en), .A(xdata[5]), .Z(CGFidata[5]));
Q_BUFZP U124 ( .OE(en), .A(xdata[6]), .Z(CGFidata[6]));
Q_BUFZP U125 ( .OE(en), .A(xdata[7]), .Z(CGFidata[7]));
Q_BUFZP U126 ( .OE(en), .A(xdata[8]), .Z(CGFidata[8]));
Q_BUFZP U127 ( .OE(en), .A(xdata[9]), .Z(CGFidata[9]));
Q_BUFZP U128 ( .OE(en), .A(xdata[10]), .Z(CGFidata[10]));
Q_BUFZP U129 ( .OE(en), .A(xdata[11]), .Z(CGFidata[11]));
Q_BUFZP U130 ( .OE(en), .A(xdata[12]), .Z(CGFidata[12]));
Q_BUFZP U131 ( .OE(en), .A(xdata[13]), .Z(CGFidata[13]));
Q_BUFZP U132 ( .OE(en), .A(xdata[14]), .Z(CGFidata[14]));
Q_BUFZP U133 ( .OE(en), .A(xdata[15]), .Z(CGFidata[15]));
Q_BUFZP U134 ( .OE(en), .A(xdata[16]), .Z(CGFidata[16]));
Q_BUFZP U135 ( .OE(en), .A(xdata[17]), .Z(CGFidata[17]));
Q_BUFZP U136 ( .OE(en), .A(xdata[18]), .Z(CGFidata[18]));
Q_BUFZP U137 ( .OE(en), .A(xdata[19]), .Z(CGFidata[19]));
Q_BUFZP U138 ( .OE(en), .A(xdata[20]), .Z(CGFidata[20]));
Q_BUFZP U139 ( .OE(en), .A(xdata[21]), .Z(CGFidata[21]));
Q_BUFZP U140 ( .OE(en), .A(xdata[22]), .Z(CGFidata[22]));
Q_BUFZP U141 ( .OE(en), .A(xdata[23]), .Z(CGFidata[23]));
Q_BUFZP U142 ( .OE(en), .A(xdata[24]), .Z(CGFidata[24]));
Q_BUFZP U143 ( .OE(en), .A(xdata[25]), .Z(CGFidata[25]));
Q_BUFZP U144 ( .OE(en), .A(xdata[26]), .Z(CGFidata[26]));
Q_BUFZP U145 ( .OE(en), .A(xdata[27]), .Z(CGFidata[27]));
Q_BUFZP U146 ( .OE(en), .A(xdata[28]), .Z(CGFidata[28]));
Q_BUFZP U147 ( .OE(en), .A(xdata[29]), .Z(CGFidata[29]));
Q_BUFZP U148 ( .OE(en), .A(xdata[30]), .Z(CGFidata[30]));
Q_BUFZP U149 ( .OE(en), .A(xdata[31]), .Z(CGFidata[31]));
Q_BUFZP U150 ( .OE(enq), .A(n5), .Z(CLBreq));
Q_BUFZP U151 ( .OE(enq), .A(n5), .Z(CGFtsReq));
Q_INV U152 ( .A(CLBwr[2]), .Z(n6));
ixc_bind \genblk3.b5 ( CLBfull, IXC_GFIFO.O.O.LBfull);
ixc_bind_4 \genblk3.b4 ( CLBwr[3:0], IXC_GFIFO.O.O.LBwr[3:0]);
ixc_bind_4 \genblk3.b3 ( CLBrd[3:0], IXC_GFIFO.O.O.LBrd[3:0]);
ixc_bind \genblk3.b2 ( CLBreq, IXC_GFIFO.O.O.LBreq);
ixc_bind \genblk3.b1 ( CGFfull, IXC_GFIFO.O.O.GFfull);
ixc_bind \genblk3.b0 ( CGFtsReq, IXC_GFIFO.O.O.GFtsReq);
Q_MX02 U159 ( .S(xc_top.GFLock2), .A0(oreq), .A1(ireq), .Z(n8));
Q_FDP0UA U160 ( .D(n9), .QTFCLK( ), .Q(ack));
Q_MX02 U161 ( .S(n14), .A0(ack), .A1(n8), .Z(n9));
Q_FDP0UA U162 ( .D(n10), .QTFCLK( ), .Q(en));
Q_NR02 U163 ( .A0(xc_top.GFLock2), .A1(n11), .Z(n10));
Q_OR02 U164 ( .A0(xc_top.GFLock2), .A1(n12), .Z(n14));
Q_INV U165 ( .A(n11), .Z(n12));
Q_OR03 U166 ( .A0(n4), .A1(tkin), .A2(n13), .Z(n11));
Q_OR02 U167 ( .A0(Rtkin), .A1(CGFfull), .Z(n13));
Q_MX02 U168 ( .S(CLBfull), .A0(ireq), .A1(ireqR), .Z(n15));
Q_FDP0UA U169 ( .D(n15), .QTFCLK( ), .Q(ireqR));
Q_AN02 U170 ( .A0(CLBwr[0]), .A1(n6), .Z(n16));
Q_AN02 U171 ( .A0(CLBwr[1]), .A1(n6), .Z(n17));
Q_INV U172 ( .A(n16), .Z(n18));
Q_INV U173 ( .A(n17), .Z(n19));
Q_NR02 U174 ( .A0(n17), .A1(n16), .Z(n20));
Q_AN02 U175 ( .A0(n19), .A1(n16), .Z(n21));
Q_AN02 U176 ( .A0(n17), .A1(n18), .Z(n22));
Q_AN02 U177 ( .A0(n17), .A1(n16), .Z(n23));
Q_AN02 U178 ( .A0(n20), .A1(n6), .Z(n24));
Q_LDP0 \_zzLB_REG[0][0] ( .G(n24), .D(cbid[0]), .Q(\_zzLB[0][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][1] ( .G(n24), .D(cbid[1]), .Q(\_zzLB[0][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][2] ( .G(n24), .D(cbid[2]), .Q(\_zzLB[0][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][3] ( .G(n24), .D(cbid[3]), .Q(\_zzLB[0][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][4] ( .G(n24), .D(cbid[4]), .Q(\_zzLB[0][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][5] ( .G(n24), .D(cbid[5]), .Q(\_zzLB[0][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][6] ( .G(n24), .D(cbid[6]), .Q(\_zzLB[0][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][7] ( .G(n24), .D(cbid[7]), .Q(\_zzLB[0][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][8] ( .G(n24), .D(cbid[8]), .Q(\_zzLB[0][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][9] ( .G(n24), .D(cbid[9]), .Q(\_zzLB[0][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][10] ( .G(n24), .D(cbid[10]), .Q(\_zzLB[0][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][11] ( .G(n24), .D(cbid[11]), .Q(\_zzLB[0][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][12] ( .G(n24), .D(cbid[12]), .Q(\_zzLB[0][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][13] ( .G(n24), .D(cbid[13]), .Q(\_zzLB[0][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][14] ( .G(n24), .D(cbid[14]), .Q(\_zzLB[0][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][15] ( .G(n24), .D(cbid[15]), .Q(\_zzLB[0][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][16] ( .G(n24), .D(cbid[16]), .Q(\_zzLB[0][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][17] ( .G(n24), .D(cbid[17]), .Q(\_zzLB[0][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][18] ( .G(n24), .D(cbid[18]), .Q(\_zzLB[0][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][19] ( .G(n24), .D(cbid[19]), .Q(\_zzLB[0][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][20] ( .G(n24), .D(idata[0]), .Q(\_zzLB[0][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][21] ( .G(n24), .D(idata[1]), .Q(\_zzLB[0][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][22] ( .G(n24), .D(idata[2]), .Q(\_zzLB[0][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][23] ( .G(n24), .D(idata[3]), .Q(\_zzLB[0][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][24] ( .G(n24), .D(idata[4]), .Q(\_zzLB[0][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][25] ( .G(n24), .D(idata[5]), .Q(\_zzLB[0][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][26] ( .G(n24), .D(idata[6]), .Q(\_zzLB[0][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][27] ( .G(n24), .D(idata[7]), .Q(\_zzLB[0][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][28] ( .G(n24), .D(idata[8]), .Q(\_zzLB[0][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][29] ( .G(n24), .D(idata[9]), .Q(\_zzLB[0][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][30] ( .G(n24), .D(idata[10]), .Q(\_zzLB[0][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][31] ( .G(n24), .D(idata[11]), .Q(\_zzLB[0][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][32] ( .G(n24), .D(idata[12]), .Q(\_zzLB[0][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][33] ( .G(n24), .D(idata[13]), .Q(\_zzLB[0][33] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][34] ( .G(n24), .D(idata[14]), .Q(\_zzLB[0][34] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][35] ( .G(n24), .D(idata[15]), .Q(\_zzLB[0][35] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][36] ( .G(n24), .D(idata[16]), .Q(\_zzLB[0][36] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][37] ( .G(n24), .D(idata[17]), .Q(\_zzLB[0][37] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][38] ( .G(n24), .D(idata[18]), .Q(\_zzLB[0][38] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][39] ( .G(n24), .D(idata[19]), .Q(\_zzLB[0][39] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][40] ( .G(n24), .D(idata[20]), .Q(\_zzLB[0][40] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][41] ( .G(n24), .D(idata[21]), .Q(\_zzLB[0][41] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][42] ( .G(n24), .D(idata[22]), .Q(\_zzLB[0][42] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][43] ( .G(n24), .D(idata[23]), .Q(\_zzLB[0][43] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][44] ( .G(n24), .D(idata[24]), .Q(\_zzLB[0][44] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][45] ( .G(n24), .D(idata[25]), .Q(\_zzLB[0][45] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][46] ( .G(n24), .D(idata[26]), .Q(\_zzLB[0][46] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][47] ( .G(n24), .D(idata[27]), .Q(\_zzLB[0][47] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][48] ( .G(n24), .D(idata[28]), .Q(\_zzLB[0][48] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][49] ( .G(n24), .D(idata[29]), .Q(\_zzLB[0][49] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][50] ( .G(n24), .D(idata[30]), .Q(\_zzLB[0][50] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][51] ( .G(n24), .D(idata[31]), .Q(\_zzLB[0][51] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][52] ( .G(n24), .D(ireq), .Q(\_zzLB[0][52] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][0] ( .G(n21), .D(cbid[0]), .Q(\_zzLB[1][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][1] ( .G(n21), .D(cbid[1]), .Q(\_zzLB[1][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][2] ( .G(n21), .D(cbid[2]), .Q(\_zzLB[1][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][3] ( .G(n21), .D(cbid[3]), .Q(\_zzLB[1][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][4] ( .G(n21), .D(cbid[4]), .Q(\_zzLB[1][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][5] ( .G(n21), .D(cbid[5]), .Q(\_zzLB[1][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][6] ( .G(n21), .D(cbid[6]), .Q(\_zzLB[1][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][7] ( .G(n21), .D(cbid[7]), .Q(\_zzLB[1][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][8] ( .G(n21), .D(cbid[8]), .Q(\_zzLB[1][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][9] ( .G(n21), .D(cbid[9]), .Q(\_zzLB[1][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][10] ( .G(n21), .D(cbid[10]), .Q(\_zzLB[1][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][11] ( .G(n21), .D(cbid[11]), .Q(\_zzLB[1][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][12] ( .G(n21), .D(cbid[12]), .Q(\_zzLB[1][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][13] ( .G(n21), .D(cbid[13]), .Q(\_zzLB[1][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][14] ( .G(n21), .D(cbid[14]), .Q(\_zzLB[1][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][15] ( .G(n21), .D(cbid[15]), .Q(\_zzLB[1][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][16] ( .G(n21), .D(cbid[16]), .Q(\_zzLB[1][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][17] ( .G(n21), .D(cbid[17]), .Q(\_zzLB[1][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][18] ( .G(n21), .D(cbid[18]), .Q(\_zzLB[1][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][19] ( .G(n21), .D(cbid[19]), .Q(\_zzLB[1][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][20] ( .G(n21), .D(idata[0]), .Q(\_zzLB[1][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][21] ( .G(n21), .D(idata[1]), .Q(\_zzLB[1][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][22] ( .G(n21), .D(idata[2]), .Q(\_zzLB[1][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][23] ( .G(n21), .D(idata[3]), .Q(\_zzLB[1][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][24] ( .G(n21), .D(idata[4]), .Q(\_zzLB[1][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][25] ( .G(n21), .D(idata[5]), .Q(\_zzLB[1][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][26] ( .G(n21), .D(idata[6]), .Q(\_zzLB[1][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][27] ( .G(n21), .D(idata[7]), .Q(\_zzLB[1][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][28] ( .G(n21), .D(idata[8]), .Q(\_zzLB[1][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][29] ( .G(n21), .D(idata[9]), .Q(\_zzLB[1][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][30] ( .G(n21), .D(idata[10]), .Q(\_zzLB[1][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][31] ( .G(n21), .D(idata[11]), .Q(\_zzLB[1][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][32] ( .G(n21), .D(idata[12]), .Q(\_zzLB[1][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][33] ( .G(n21), .D(idata[13]), .Q(\_zzLB[1][33] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][34] ( .G(n21), .D(idata[14]), .Q(\_zzLB[1][34] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][35] ( .G(n21), .D(idata[15]), .Q(\_zzLB[1][35] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][36] ( .G(n21), .D(idata[16]), .Q(\_zzLB[1][36] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][37] ( .G(n21), .D(idata[17]), .Q(\_zzLB[1][37] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][38] ( .G(n21), .D(idata[18]), .Q(\_zzLB[1][38] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][39] ( .G(n21), .D(idata[19]), .Q(\_zzLB[1][39] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][40] ( .G(n21), .D(idata[20]), .Q(\_zzLB[1][40] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][41] ( .G(n21), .D(idata[21]), .Q(\_zzLB[1][41] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][42] ( .G(n21), .D(idata[22]), .Q(\_zzLB[1][42] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][43] ( .G(n21), .D(idata[23]), .Q(\_zzLB[1][43] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][44] ( .G(n21), .D(idata[24]), .Q(\_zzLB[1][44] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][45] ( .G(n21), .D(idata[25]), .Q(\_zzLB[1][45] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][46] ( .G(n21), .D(idata[26]), .Q(\_zzLB[1][46] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][47] ( .G(n21), .D(idata[27]), .Q(\_zzLB[1][47] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][48] ( .G(n21), .D(idata[28]), .Q(\_zzLB[1][48] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][49] ( .G(n21), .D(idata[29]), .Q(\_zzLB[1][49] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][50] ( .G(n21), .D(idata[30]), .Q(\_zzLB[1][50] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][51] ( .G(n21), .D(idata[31]), .Q(\_zzLB[1][51] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][52] ( .G(n21), .D(ireq), .Q(\_zzLB[1][52] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][0] ( .G(n22), .D(cbid[0]), .Q(\_zzLB[2][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][1] ( .G(n22), .D(cbid[1]), .Q(\_zzLB[2][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][2] ( .G(n22), .D(cbid[2]), .Q(\_zzLB[2][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][3] ( .G(n22), .D(cbid[3]), .Q(\_zzLB[2][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][4] ( .G(n22), .D(cbid[4]), .Q(\_zzLB[2][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][5] ( .G(n22), .D(cbid[5]), .Q(\_zzLB[2][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][6] ( .G(n22), .D(cbid[6]), .Q(\_zzLB[2][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][7] ( .G(n22), .D(cbid[7]), .Q(\_zzLB[2][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][8] ( .G(n22), .D(cbid[8]), .Q(\_zzLB[2][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][9] ( .G(n22), .D(cbid[9]), .Q(\_zzLB[2][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][10] ( .G(n22), .D(cbid[10]), .Q(\_zzLB[2][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][11] ( .G(n22), .D(cbid[11]), .Q(\_zzLB[2][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][12] ( .G(n22), .D(cbid[12]), .Q(\_zzLB[2][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][13] ( .G(n22), .D(cbid[13]), .Q(\_zzLB[2][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][14] ( .G(n22), .D(cbid[14]), .Q(\_zzLB[2][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][15] ( .G(n22), .D(cbid[15]), .Q(\_zzLB[2][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][16] ( .G(n22), .D(cbid[16]), .Q(\_zzLB[2][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][17] ( .G(n22), .D(cbid[17]), .Q(\_zzLB[2][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][18] ( .G(n22), .D(cbid[18]), .Q(\_zzLB[2][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][19] ( .G(n22), .D(cbid[19]), .Q(\_zzLB[2][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][20] ( .G(n22), .D(idata[0]), .Q(\_zzLB[2][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][21] ( .G(n22), .D(idata[1]), .Q(\_zzLB[2][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][22] ( .G(n22), .D(idata[2]), .Q(\_zzLB[2][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][23] ( .G(n22), .D(idata[3]), .Q(\_zzLB[2][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][24] ( .G(n22), .D(idata[4]), .Q(\_zzLB[2][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][25] ( .G(n22), .D(idata[5]), .Q(\_zzLB[2][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][26] ( .G(n22), .D(idata[6]), .Q(\_zzLB[2][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][27] ( .G(n22), .D(idata[7]), .Q(\_zzLB[2][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][28] ( .G(n22), .D(idata[8]), .Q(\_zzLB[2][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][29] ( .G(n22), .D(idata[9]), .Q(\_zzLB[2][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][30] ( .G(n22), .D(idata[10]), .Q(\_zzLB[2][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][31] ( .G(n22), .D(idata[11]), .Q(\_zzLB[2][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][32] ( .G(n22), .D(idata[12]), .Q(\_zzLB[2][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][33] ( .G(n22), .D(idata[13]), .Q(\_zzLB[2][33] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][34] ( .G(n22), .D(idata[14]), .Q(\_zzLB[2][34] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][35] ( .G(n22), .D(idata[15]), .Q(\_zzLB[2][35] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][36] ( .G(n22), .D(idata[16]), .Q(\_zzLB[2][36] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][37] ( .G(n22), .D(idata[17]), .Q(\_zzLB[2][37] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][38] ( .G(n22), .D(idata[18]), .Q(\_zzLB[2][38] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][39] ( .G(n22), .D(idata[19]), .Q(\_zzLB[2][39] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][40] ( .G(n22), .D(idata[20]), .Q(\_zzLB[2][40] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][41] ( .G(n22), .D(idata[21]), .Q(\_zzLB[2][41] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][42] ( .G(n22), .D(idata[22]), .Q(\_zzLB[2][42] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][43] ( .G(n22), .D(idata[23]), .Q(\_zzLB[2][43] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][44] ( .G(n22), .D(idata[24]), .Q(\_zzLB[2][44] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][45] ( .G(n22), .D(idata[25]), .Q(\_zzLB[2][45] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][46] ( .G(n22), .D(idata[26]), .Q(\_zzLB[2][46] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][47] ( .G(n22), .D(idata[27]), .Q(\_zzLB[2][47] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][48] ( .G(n22), .D(idata[28]), .Q(\_zzLB[2][48] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][49] ( .G(n22), .D(idata[29]), .Q(\_zzLB[2][49] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][50] ( .G(n22), .D(idata[30]), .Q(\_zzLB[2][50] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][51] ( .G(n22), .D(idata[31]), .Q(\_zzLB[2][51] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][52] ( .G(n22), .D(ireq), .Q(\_zzLB[2][52] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][0] ( .G(n23), .D(cbid[0]), .Q(\_zzLB[3][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][1] ( .G(n23), .D(cbid[1]), .Q(\_zzLB[3][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][2] ( .G(n23), .D(cbid[2]), .Q(\_zzLB[3][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][3] ( .G(n23), .D(cbid[3]), .Q(\_zzLB[3][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][4] ( .G(n23), .D(cbid[4]), .Q(\_zzLB[3][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][5] ( .G(n23), .D(cbid[5]), .Q(\_zzLB[3][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][6] ( .G(n23), .D(cbid[6]), .Q(\_zzLB[3][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][7] ( .G(n23), .D(cbid[7]), .Q(\_zzLB[3][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][8] ( .G(n23), .D(cbid[8]), .Q(\_zzLB[3][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][9] ( .G(n23), .D(cbid[9]), .Q(\_zzLB[3][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][10] ( .G(n23), .D(cbid[10]), .Q(\_zzLB[3][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][11] ( .G(n23), .D(cbid[11]), .Q(\_zzLB[3][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][12] ( .G(n23), .D(cbid[12]), .Q(\_zzLB[3][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][13] ( .G(n23), .D(cbid[13]), .Q(\_zzLB[3][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][14] ( .G(n23), .D(cbid[14]), .Q(\_zzLB[3][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][15] ( .G(n23), .D(cbid[15]), .Q(\_zzLB[3][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][16] ( .G(n23), .D(cbid[16]), .Q(\_zzLB[3][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][17] ( .G(n23), .D(cbid[17]), .Q(\_zzLB[3][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][18] ( .G(n23), .D(cbid[18]), .Q(\_zzLB[3][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][19] ( .G(n23), .D(cbid[19]), .Q(\_zzLB[3][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][20] ( .G(n23), .D(idata[0]), .Q(\_zzLB[3][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][21] ( .G(n23), .D(idata[1]), .Q(\_zzLB[3][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][22] ( .G(n23), .D(idata[2]), .Q(\_zzLB[3][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][23] ( .G(n23), .D(idata[3]), .Q(\_zzLB[3][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][24] ( .G(n23), .D(idata[4]), .Q(\_zzLB[3][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][25] ( .G(n23), .D(idata[5]), .Q(\_zzLB[3][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][26] ( .G(n23), .D(idata[6]), .Q(\_zzLB[3][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][27] ( .G(n23), .D(idata[7]), .Q(\_zzLB[3][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][28] ( .G(n23), .D(idata[8]), .Q(\_zzLB[3][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][29] ( .G(n23), .D(idata[9]), .Q(\_zzLB[3][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][30] ( .G(n23), .D(idata[10]), .Q(\_zzLB[3][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][31] ( .G(n23), .D(idata[11]), .Q(\_zzLB[3][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][32] ( .G(n23), .D(idata[12]), .Q(\_zzLB[3][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][33] ( .G(n23), .D(idata[13]), .Q(\_zzLB[3][33] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][34] ( .G(n23), .D(idata[14]), .Q(\_zzLB[3][34] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][35] ( .G(n23), .D(idata[15]), .Q(\_zzLB[3][35] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][36] ( .G(n23), .D(idata[16]), .Q(\_zzLB[3][36] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][37] ( .G(n23), .D(idata[17]), .Q(\_zzLB[3][37] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][38] ( .G(n23), .D(idata[18]), .Q(\_zzLB[3][38] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][39] ( .G(n23), .D(idata[19]), .Q(\_zzLB[3][39] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][40] ( .G(n23), .D(idata[20]), .Q(\_zzLB[3][40] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][41] ( .G(n23), .D(idata[21]), .Q(\_zzLB[3][41] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][42] ( .G(n23), .D(idata[22]), .Q(\_zzLB[3][42] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][43] ( .G(n23), .D(idata[23]), .Q(\_zzLB[3][43] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][44] ( .G(n23), .D(idata[24]), .Q(\_zzLB[3][44] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][45] ( .G(n23), .D(idata[25]), .Q(\_zzLB[3][45] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][46] ( .G(n23), .D(idata[26]), .Q(\_zzLB[3][46] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][47] ( .G(n23), .D(idata[27]), .Q(\_zzLB[3][47] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][48] ( .G(n23), .D(idata[28]), .Q(\_zzLB[3][48] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][49] ( .G(n23), .D(idata[29]), .Q(\_zzLB[3][49] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][50] ( .G(n23), .D(idata[30]), .Q(\_zzLB[3][50] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][51] ( .G(n23), .D(idata[31]), .Q(\_zzLB[3][51] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][52] ( .G(n23), .D(ireq), .Q(\_zzLB[3][52] ), .QN( ));
Q_MX04 U391 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][0] ), .A1(\_zzLB[1][0] ), .A2(\_zzLB[2][0] ), .A3(\_zzLB[3][0] ), .Z(ocbid[0]));
Q_MX04 U392 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][1] ), .A1(\_zzLB[1][1] ), .A2(\_zzLB[2][1] ), .A3(\_zzLB[3][1] ), .Z(ocbid[1]));
Q_MX04 U393 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][2] ), .A1(\_zzLB[1][2] ), .A2(\_zzLB[2][2] ), .A3(\_zzLB[3][2] ), .Z(ocbid[2]));
Q_MX04 U394 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][3] ), .A1(\_zzLB[1][3] ), .A2(\_zzLB[2][3] ), .A3(\_zzLB[3][3] ), .Z(ocbid[3]));
Q_MX04 U395 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][4] ), .A1(\_zzLB[1][4] ), .A2(\_zzLB[2][4] ), .A3(\_zzLB[3][4] ), .Z(ocbid[4]));
Q_MX04 U396 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][5] ), .A1(\_zzLB[1][5] ), .A2(\_zzLB[2][5] ), .A3(\_zzLB[3][5] ), .Z(ocbid[5]));
Q_MX04 U397 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][6] ), .A1(\_zzLB[1][6] ), .A2(\_zzLB[2][6] ), .A3(\_zzLB[3][6] ), .Z(ocbid[6]));
Q_MX04 U398 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][7] ), .A1(\_zzLB[1][7] ), .A2(\_zzLB[2][7] ), .A3(\_zzLB[3][7] ), .Z(ocbid[7]));
Q_MX04 U399 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][8] ), .A1(\_zzLB[1][8] ), .A2(\_zzLB[2][8] ), .A3(\_zzLB[3][8] ), .Z(ocbid[8]));
Q_MX04 U400 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][9] ), .A1(\_zzLB[1][9] ), .A2(\_zzLB[2][9] ), .A3(\_zzLB[3][9] ), .Z(ocbid[9]));
Q_MX04 U401 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][10] ), .A1(\_zzLB[1][10] ), .A2(\_zzLB[2][10] ), .A3(\_zzLB[3][10] ), .Z(ocbid[10]));
Q_MX04 U402 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][11] ), .A1(\_zzLB[1][11] ), .A2(\_zzLB[2][11] ), .A3(\_zzLB[3][11] ), .Z(ocbid[11]));
Q_MX04 U403 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][12] ), .A1(\_zzLB[1][12] ), .A2(\_zzLB[2][12] ), .A3(\_zzLB[3][12] ), .Z(ocbid[12]));
Q_MX04 U404 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][13] ), .A1(\_zzLB[1][13] ), .A2(\_zzLB[2][13] ), .A3(\_zzLB[3][13] ), .Z(ocbid[13]));
Q_MX04 U405 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][14] ), .A1(\_zzLB[1][14] ), .A2(\_zzLB[2][14] ), .A3(\_zzLB[3][14] ), .Z(ocbid[14]));
Q_MX04 U406 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][15] ), .A1(\_zzLB[1][15] ), .A2(\_zzLB[2][15] ), .A3(\_zzLB[3][15] ), .Z(ocbid[15]));
Q_MX04 U407 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][16] ), .A1(\_zzLB[1][16] ), .A2(\_zzLB[2][16] ), .A3(\_zzLB[3][16] ), .Z(ocbid[16]));
Q_MX04 U408 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][17] ), .A1(\_zzLB[1][17] ), .A2(\_zzLB[2][17] ), .A3(\_zzLB[3][17] ), .Z(ocbid[17]));
Q_MX04 U409 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][18] ), .A1(\_zzLB[1][18] ), .A2(\_zzLB[2][18] ), .A3(\_zzLB[3][18] ), .Z(ocbid[18]));
Q_MX04 U410 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][19] ), .A1(\_zzLB[1][19] ), .A2(\_zzLB[2][19] ), .A3(\_zzLB[3][19] ), .Z(ocbid[19]));
Q_MX04 U411 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][20] ), .A1(\_zzLB[1][20] ), .A2(\_zzLB[2][20] ), .A3(\_zzLB[3][20] ), .Z(odata[0]));
Q_MX04 U412 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][21] ), .A1(\_zzLB[1][21] ), .A2(\_zzLB[2][21] ), .A3(\_zzLB[3][21] ), .Z(odata[1]));
Q_MX04 U413 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][22] ), .A1(\_zzLB[1][22] ), .A2(\_zzLB[2][22] ), .A3(\_zzLB[3][22] ), .Z(odata[2]));
Q_MX04 U414 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][23] ), .A1(\_zzLB[1][23] ), .A2(\_zzLB[2][23] ), .A3(\_zzLB[3][23] ), .Z(odata[3]));
Q_MX04 U415 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][24] ), .A1(\_zzLB[1][24] ), .A2(\_zzLB[2][24] ), .A3(\_zzLB[3][24] ), .Z(odata[4]));
Q_MX04 U416 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][25] ), .A1(\_zzLB[1][25] ), .A2(\_zzLB[2][25] ), .A3(\_zzLB[3][25] ), .Z(odata[5]));
Q_MX04 U417 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][26] ), .A1(\_zzLB[1][26] ), .A2(\_zzLB[2][26] ), .A3(\_zzLB[3][26] ), .Z(odata[6]));
Q_MX04 U418 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][27] ), .A1(\_zzLB[1][27] ), .A2(\_zzLB[2][27] ), .A3(\_zzLB[3][27] ), .Z(odata[7]));
Q_MX04 U419 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][28] ), .A1(\_zzLB[1][28] ), .A2(\_zzLB[2][28] ), .A3(\_zzLB[3][28] ), .Z(odata[8]));
Q_MX04 U420 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][29] ), .A1(\_zzLB[1][29] ), .A2(\_zzLB[2][29] ), .A3(\_zzLB[3][29] ), .Z(odata[9]));
Q_MX04 U421 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][30] ), .A1(\_zzLB[1][30] ), .A2(\_zzLB[2][30] ), .A3(\_zzLB[3][30] ), .Z(odata[10]));
Q_MX04 U422 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][31] ), .A1(\_zzLB[1][31] ), .A2(\_zzLB[2][31] ), .A3(\_zzLB[3][31] ), .Z(odata[11]));
Q_MX04 U423 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][32] ), .A1(\_zzLB[1][32] ), .A2(\_zzLB[2][32] ), .A3(\_zzLB[3][32] ), .Z(odata[12]));
Q_MX04 U424 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][33] ), .A1(\_zzLB[1][33] ), .A2(\_zzLB[2][33] ), .A3(\_zzLB[3][33] ), .Z(odata[13]));
Q_MX04 U425 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][34] ), .A1(\_zzLB[1][34] ), .A2(\_zzLB[2][34] ), .A3(\_zzLB[3][34] ), .Z(odata[14]));
Q_MX04 U426 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][35] ), .A1(\_zzLB[1][35] ), .A2(\_zzLB[2][35] ), .A3(\_zzLB[3][35] ), .Z(odata[15]));
Q_MX04 U427 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][36] ), .A1(\_zzLB[1][36] ), .A2(\_zzLB[2][36] ), .A3(\_zzLB[3][36] ), .Z(odata[16]));
Q_MX04 U428 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][37] ), .A1(\_zzLB[1][37] ), .A2(\_zzLB[2][37] ), .A3(\_zzLB[3][37] ), .Z(odata[17]));
Q_MX04 U429 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][38] ), .A1(\_zzLB[1][38] ), .A2(\_zzLB[2][38] ), .A3(\_zzLB[3][38] ), .Z(odata[18]));
Q_MX04 U430 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][39] ), .A1(\_zzLB[1][39] ), .A2(\_zzLB[2][39] ), .A3(\_zzLB[3][39] ), .Z(odata[19]));
Q_MX04 U431 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][40] ), .A1(\_zzLB[1][40] ), .A2(\_zzLB[2][40] ), .A3(\_zzLB[3][40] ), .Z(odata[20]));
Q_MX04 U432 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][41] ), .A1(\_zzLB[1][41] ), .A2(\_zzLB[2][41] ), .A3(\_zzLB[3][41] ), .Z(odata[21]));
Q_MX04 U433 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][42] ), .A1(\_zzLB[1][42] ), .A2(\_zzLB[2][42] ), .A3(\_zzLB[3][42] ), .Z(odata[22]));
Q_MX04 U434 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][43] ), .A1(\_zzLB[1][43] ), .A2(\_zzLB[2][43] ), .A3(\_zzLB[3][43] ), .Z(odata[23]));
Q_MX04 U435 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][44] ), .A1(\_zzLB[1][44] ), .A2(\_zzLB[2][44] ), .A3(\_zzLB[3][44] ), .Z(odata[24]));
Q_MX04 U436 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][45] ), .A1(\_zzLB[1][45] ), .A2(\_zzLB[2][45] ), .A3(\_zzLB[3][45] ), .Z(odata[25]));
Q_MX04 U437 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][46] ), .A1(\_zzLB[1][46] ), .A2(\_zzLB[2][46] ), .A3(\_zzLB[3][46] ), .Z(odata[26]));
Q_MX04 U438 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][47] ), .A1(\_zzLB[1][47] ), .A2(\_zzLB[2][47] ), .A3(\_zzLB[3][47] ), .Z(odata[27]));
Q_MX04 U439 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][48] ), .A1(\_zzLB[1][48] ), .A2(\_zzLB[2][48] ), .A3(\_zzLB[3][48] ), .Z(odata[28]));
Q_MX04 U440 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][49] ), .A1(\_zzLB[1][49] ), .A2(\_zzLB[2][49] ), .A3(\_zzLB[3][49] ), .Z(odata[29]));
Q_MX04 U441 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][50] ), .A1(\_zzLB[1][50] ), .A2(\_zzLB[2][50] ), .A3(\_zzLB[3][50] ), .Z(odata[30]));
Q_MX04 U442 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][51] ), .A1(\_zzLB[1][51] ), .A2(\_zzLB[2][51] ), .A3(\_zzLB[3][51] ), .Z(odata[31]));
Q_MX04 U443 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][52] ), .A1(\_zzLB[1][52] ), .A2(\_zzLB[2][52] ), .A3(\_zzLB[3][52] ), .Z(oreq));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "_zzLB 1 52 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_gfifo_port"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
