
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_gfifo_port_32_0_0 ( tkout, tkin, ireq, cbid, len, idata, CGFtsReq, 
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
Q_ASSIGN U24 ( .B(cbid[0]), .A(xcbid[0]));
Q_ASSIGN U25 ( .B(cbid[0]), .A(ocbid[0]));
Q_ASSIGN U26 ( .B(cbid[1]), .A(xcbid[1]));
Q_ASSIGN U27 ( .B(cbid[1]), .A(ocbid[1]));
Q_ASSIGN U28 ( .B(cbid[2]), .A(xcbid[2]));
Q_ASSIGN U29 ( .B(cbid[2]), .A(ocbid[2]));
Q_ASSIGN U30 ( .B(cbid[3]), .A(xcbid[3]));
Q_ASSIGN U31 ( .B(cbid[3]), .A(ocbid[3]));
Q_ASSIGN U32 ( .B(cbid[4]), .A(xcbid[4]));
Q_ASSIGN U33 ( .B(cbid[4]), .A(ocbid[4]));
Q_ASSIGN U34 ( .B(cbid[5]), .A(xcbid[5]));
Q_ASSIGN U35 ( .B(cbid[5]), .A(ocbid[5]));
Q_ASSIGN U36 ( .B(cbid[6]), .A(xcbid[6]));
Q_ASSIGN U37 ( .B(cbid[6]), .A(ocbid[6]));
Q_ASSIGN U38 ( .B(cbid[7]), .A(xcbid[7]));
Q_ASSIGN U39 ( .B(cbid[7]), .A(ocbid[7]));
Q_ASSIGN U40 ( .B(cbid[8]), .A(xcbid[8]));
Q_ASSIGN U41 ( .B(cbid[8]), .A(ocbid[8]));
Q_ASSIGN U42 ( .B(cbid[9]), .A(xcbid[9]));
Q_ASSIGN U43 ( .B(cbid[9]), .A(ocbid[9]));
Q_ASSIGN U44 ( .B(cbid[10]), .A(xcbid[10]));
Q_ASSIGN U45 ( .B(cbid[10]), .A(ocbid[10]));
Q_ASSIGN U46 ( .B(cbid[11]), .A(xcbid[11]));
Q_ASSIGN U47 ( .B(cbid[11]), .A(ocbid[11]));
Q_ASSIGN U48 ( .B(cbid[12]), .A(xcbid[12]));
Q_ASSIGN U49 ( .B(cbid[12]), .A(ocbid[12]));
Q_ASSIGN U50 ( .B(cbid[13]), .A(xcbid[13]));
Q_ASSIGN U51 ( .B(cbid[13]), .A(ocbid[13]));
Q_ASSIGN U52 ( .B(cbid[14]), .A(xcbid[14]));
Q_ASSIGN U53 ( .B(cbid[14]), .A(ocbid[14]));
Q_ASSIGN U54 ( .B(cbid[15]), .A(xcbid[15]));
Q_ASSIGN U55 ( .B(cbid[15]), .A(ocbid[15]));
Q_ASSIGN U56 ( .B(cbid[16]), .A(xcbid[16]));
Q_ASSIGN U57 ( .B(cbid[16]), .A(ocbid[16]));
Q_ASSIGN U58 ( .B(cbid[17]), .A(xcbid[17]));
Q_ASSIGN U59 ( .B(cbid[17]), .A(ocbid[17]));
Q_ASSIGN U60 ( .B(cbid[18]), .A(xcbid[18]));
Q_ASSIGN U61 ( .B(cbid[18]), .A(ocbid[18]));
Q_ASSIGN U62 ( .B(cbid[19]), .A(xcbid[19]));
Q_ASSIGN U63 ( .B(cbid[19]), .A(ocbid[19]));
Q_BUF U64 ( .A(odata[0]), .Z(xdata[0]));
Q_BUF U65 ( .A(odata[1]), .Z(xdata[1]));
Q_BUF U66 ( .A(odata[2]), .Z(xdata[2]));
Q_BUF U67 ( .A(odata[3]), .Z(xdata[3]));
Q_BUF U68 ( .A(odata[4]), .Z(xdata[4]));
Q_BUF U69 ( .A(odata[5]), .Z(xdata[5]));
Q_BUF U70 ( .A(odata[6]), .Z(xdata[6]));
Q_BUF U71 ( .A(odata[7]), .Z(xdata[7]));
Q_BUF U72 ( .A(odata[8]), .Z(xdata[8]));
Q_BUF U73 ( .A(odata[9]), .Z(xdata[9]));
Q_BUF U74 ( .A(odata[10]), .Z(xdata[10]));
Q_BUF U75 ( .A(odata[11]), .Z(xdata[11]));
Q_BUF U76 ( .A(odata[12]), .Z(xdata[12]));
Q_BUF U77 ( .A(odata[13]), .Z(xdata[13]));
Q_BUF U78 ( .A(odata[14]), .Z(xdata[14]));
Q_BUF U79 ( .A(odata[15]), .Z(xdata[15]));
Q_BUF U80 ( .A(odata[16]), .Z(xdata[16]));
Q_BUF U81 ( .A(odata[17]), .Z(xdata[17]));
Q_BUF U82 ( .A(odata[18]), .Z(xdata[18]));
Q_BUF U83 ( .A(odata[19]), .Z(xdata[19]));
Q_BUF U84 ( .A(odata[20]), .Z(xdata[20]));
Q_BUF U85 ( .A(odata[21]), .Z(xdata[21]));
Q_BUF U86 ( .A(odata[22]), .Z(xdata[22]));
Q_BUF U87 ( .A(odata[23]), .Z(xdata[23]));
Q_BUF U88 ( .A(odata[24]), .Z(xdata[24]));
Q_BUF U89 ( .A(odata[25]), .Z(xdata[25]));
Q_BUF U90 ( .A(odata[26]), .Z(xdata[26]));
Q_BUF U91 ( .A(odata[27]), .Z(xdata[27]));
Q_BUF U92 ( .A(odata[28]), .Z(xdata[28]));
Q_BUF U93 ( .A(odata[29]), .Z(xdata[29]));
Q_BUF U94 ( .A(odata[30]), .Z(xdata[30]));
Q_BUF U95 ( .A(odata[31]), .Z(xdata[31]));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_EV_WOR_START qi ( .A(CLBreqWhileFull));
Q_INV U98 ( .A(n4), .Z(tkout));
Q_XNR2 U99 ( .A0(oreq), .A1(ack), .Z(n4));
Q_CCLKCHK cchk ( .sig(ireq));
Q_AN02 U101 ( .A0(enq), .A1(CLBfull), .Z(CLBreqWhileFull));
Q_AN02 U102 ( .A0(n2), .A1(n3), .Z(enq));
Q_INV U103 ( .A(xc_top.GFLock2), .Z(n3));
Q_XOR2 U104 ( .A0(ireq), .A1(ireqR), .Z(n2));
Q_BUFZP U105 ( .OE(CLBreqWhileFull), .A(n5), .Z(xc_top.GFLBfull));
Q_BUFZP U106 ( .OE(en), .A(cbid[0]), .Z(CGFcbid[0]));
Q_BUFZP U107 ( .OE(en), .A(cbid[1]), .Z(CGFcbid[1]));
Q_BUFZP U108 ( .OE(en), .A(cbid[2]), .Z(CGFcbid[2]));
Q_BUFZP U109 ( .OE(en), .A(cbid[3]), .Z(CGFcbid[3]));
Q_BUFZP U110 ( .OE(en), .A(cbid[4]), .Z(CGFcbid[4]));
Q_BUFZP U111 ( .OE(en), .A(cbid[5]), .Z(CGFcbid[5]));
Q_BUFZP U112 ( .OE(en), .A(cbid[6]), .Z(CGFcbid[6]));
Q_BUFZP U113 ( .OE(en), .A(cbid[7]), .Z(CGFcbid[7]));
Q_BUFZP U114 ( .OE(en), .A(cbid[8]), .Z(CGFcbid[8]));
Q_BUFZP U115 ( .OE(en), .A(cbid[9]), .Z(CGFcbid[9]));
Q_BUFZP U116 ( .OE(en), .A(cbid[10]), .Z(CGFcbid[10]));
Q_BUFZP U117 ( .OE(en), .A(cbid[11]), .Z(CGFcbid[11]));
Q_BUFZP U118 ( .OE(en), .A(cbid[12]), .Z(CGFcbid[12]));
Q_BUFZP U119 ( .OE(en), .A(cbid[13]), .Z(CGFcbid[13]));
Q_BUFZP U120 ( .OE(en), .A(cbid[14]), .Z(CGFcbid[14]));
Q_BUFZP U121 ( .OE(en), .A(cbid[15]), .Z(CGFcbid[15]));
Q_BUFZP U122 ( .OE(en), .A(cbid[16]), .Z(CGFcbid[16]));
Q_BUFZP U123 ( .OE(en), .A(cbid[17]), .Z(CGFcbid[17]));
Q_BUFZP U124 ( .OE(en), .A(cbid[18]), .Z(CGFcbid[18]));
Q_BUFZP U125 ( .OE(en), .A(cbid[19]), .Z(CGFcbid[19]));
Q_BUFZP U126 ( .OE(en), .A(len[0]), .Z(CGFlen[0]));
Q_BUFZP U127 ( .OE(en), .A(len[1]), .Z(CGFlen[1]));
Q_BUFZP U128 ( .OE(en), .A(len[2]), .Z(CGFlen[2]));
Q_BUFZP U129 ( .OE(en), .A(len[3]), .Z(CGFlen[3]));
Q_BUFZP U130 ( .OE(en), .A(len[4]), .Z(CGFlen[4]));
Q_BUFZP U131 ( .OE(en), .A(len[5]), .Z(CGFlen[5]));
Q_BUFZP U132 ( .OE(en), .A(len[6]), .Z(CGFlen[6]));
Q_BUFZP U133 ( .OE(en), .A(len[7]), .Z(CGFlen[7]));
Q_BUFZP U134 ( .OE(en), .A(len[8]), .Z(CGFlen[8]));
Q_BUFZP U135 ( .OE(en), .A(len[9]), .Z(CGFlen[9]));
Q_BUFZP U136 ( .OE(en), .A(len[10]), .Z(CGFlen[10]));
Q_BUFZP U137 ( .OE(en), .A(len[11]), .Z(CGFlen[11]));
Q_BUFZP U138 ( .OE(en), .A(xdata[0]), .Z(CGFidata[0]));
Q_BUFZP U139 ( .OE(en), .A(xdata[1]), .Z(CGFidata[1]));
Q_BUFZP U140 ( .OE(en), .A(xdata[2]), .Z(CGFidata[2]));
Q_BUFZP U141 ( .OE(en), .A(xdata[3]), .Z(CGFidata[3]));
Q_BUFZP U142 ( .OE(en), .A(xdata[4]), .Z(CGFidata[4]));
Q_BUFZP U143 ( .OE(en), .A(xdata[5]), .Z(CGFidata[5]));
Q_BUFZP U144 ( .OE(en), .A(xdata[6]), .Z(CGFidata[6]));
Q_BUFZP U145 ( .OE(en), .A(xdata[7]), .Z(CGFidata[7]));
Q_BUFZP U146 ( .OE(en), .A(xdata[8]), .Z(CGFidata[8]));
Q_BUFZP U147 ( .OE(en), .A(xdata[9]), .Z(CGFidata[9]));
Q_BUFZP U148 ( .OE(en), .A(xdata[10]), .Z(CGFidata[10]));
Q_BUFZP U149 ( .OE(en), .A(xdata[11]), .Z(CGFidata[11]));
Q_BUFZP U150 ( .OE(en), .A(xdata[12]), .Z(CGFidata[12]));
Q_BUFZP U151 ( .OE(en), .A(xdata[13]), .Z(CGFidata[13]));
Q_BUFZP U152 ( .OE(en), .A(xdata[14]), .Z(CGFidata[14]));
Q_BUFZP U153 ( .OE(en), .A(xdata[15]), .Z(CGFidata[15]));
Q_BUFZP U154 ( .OE(en), .A(xdata[16]), .Z(CGFidata[16]));
Q_BUFZP U155 ( .OE(en), .A(xdata[17]), .Z(CGFidata[17]));
Q_BUFZP U156 ( .OE(en), .A(xdata[18]), .Z(CGFidata[18]));
Q_BUFZP U157 ( .OE(en), .A(xdata[19]), .Z(CGFidata[19]));
Q_BUFZP U158 ( .OE(en), .A(xdata[20]), .Z(CGFidata[20]));
Q_BUFZP U159 ( .OE(en), .A(xdata[21]), .Z(CGFidata[21]));
Q_BUFZP U160 ( .OE(en), .A(xdata[22]), .Z(CGFidata[22]));
Q_BUFZP U161 ( .OE(en), .A(xdata[23]), .Z(CGFidata[23]));
Q_BUFZP U162 ( .OE(en), .A(xdata[24]), .Z(CGFidata[24]));
Q_BUFZP U163 ( .OE(en), .A(xdata[25]), .Z(CGFidata[25]));
Q_BUFZP U164 ( .OE(en), .A(xdata[26]), .Z(CGFidata[26]));
Q_BUFZP U165 ( .OE(en), .A(xdata[27]), .Z(CGFidata[27]));
Q_BUFZP U166 ( .OE(en), .A(xdata[28]), .Z(CGFidata[28]));
Q_BUFZP U167 ( .OE(en), .A(xdata[29]), .Z(CGFidata[29]));
Q_BUFZP U168 ( .OE(en), .A(xdata[30]), .Z(CGFidata[30]));
Q_BUFZP U169 ( .OE(en), .A(xdata[31]), .Z(CGFidata[31]));
Q_BUFZP U170 ( .OE(enq), .A(n5), .Z(CLBreq));
Q_INV U171 ( .A(CLBwr[2]), .Z(n6));
ixc_bind \genblk3.b5 ( CLBfull, IXC_GFIFO.O.O.LBfull);
ixc_bind_4 \genblk3.b4 ( CLBwr[3:0], IXC_GFIFO.O.O.LBwr[3:0]);
ixc_bind_4 \genblk3.b3 ( CLBrd[3:0], IXC_GFIFO.O.O.LBrd[3:0]);
ixc_bind \genblk3.b2 ( CLBreq, IXC_GFIFO.O.O.LBreq);
ixc_bind \genblk3.b1 ( CGFfull, IXC_GFIFO.O.O.GFfull);
ixc_bind \genblk3.b0 ( CGFtsReq, IXC_GFIFO.O.O.GFtsReq);
Q_MX02 U178 ( .S(xc_top.GFLock2), .A0(oreq), .A1(ireq), .Z(n8));
Q_FDP0UA U179 ( .D(n9), .QTFCLK( ), .Q(ack));
Q_MX02 U180 ( .S(n14), .A0(ack), .A1(n8), .Z(n9));
Q_FDP0UA U181 ( .D(n10), .QTFCLK( ), .Q(en));
Q_NR02 U182 ( .A0(xc_top.GFLock2), .A1(n11), .Z(n10));
Q_OR02 U183 ( .A0(xc_top.GFLock2), .A1(n12), .Z(n14));
Q_INV U184 ( .A(n11), .Z(n12));
Q_OR03 U185 ( .A0(n4), .A1(tkin), .A2(n13), .Z(n11));
Q_OR02 U186 ( .A0(Rtkin), .A1(CGFfull), .Z(n13));
Q_MX02 U187 ( .S(CLBfull), .A0(ireq), .A1(ireqR), .Z(n15));
Q_FDP0UA U188 ( .D(n15), .QTFCLK( ), .Q(ireqR));
Q_AN02 U189 ( .A0(CLBwr[0]), .A1(n6), .Z(n16));
Q_AN02 U190 ( .A0(CLBwr[1]), .A1(n6), .Z(n17));
Q_INV U191 ( .A(n16), .Z(n18));
Q_INV U192 ( .A(n17), .Z(n19));
Q_NR02 U193 ( .A0(n17), .A1(n16), .Z(n20));
Q_AN02 U194 ( .A0(n19), .A1(n16), .Z(n21));
Q_AN02 U195 ( .A0(n17), .A1(n18), .Z(n22));
Q_AN02 U196 ( .A0(n17), .A1(n16), .Z(n23));
Q_AN02 U197 ( .A0(n20), .A1(n6), .Z(n24));
Q_LDP0 \_zzLB_REG[0][0] ( .G(n24), .D(idata[0]), .Q(\_zzLB[0][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][1] ( .G(n24), .D(idata[1]), .Q(\_zzLB[0][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][2] ( .G(n24), .D(idata[2]), .Q(\_zzLB[0][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][3] ( .G(n24), .D(idata[3]), .Q(\_zzLB[0][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][4] ( .G(n24), .D(idata[4]), .Q(\_zzLB[0][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][5] ( .G(n24), .D(idata[5]), .Q(\_zzLB[0][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][6] ( .G(n24), .D(idata[6]), .Q(\_zzLB[0][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][7] ( .G(n24), .D(idata[7]), .Q(\_zzLB[0][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][8] ( .G(n24), .D(idata[8]), .Q(\_zzLB[0][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][9] ( .G(n24), .D(idata[9]), .Q(\_zzLB[0][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][10] ( .G(n24), .D(idata[10]), .Q(\_zzLB[0][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][11] ( .G(n24), .D(idata[11]), .Q(\_zzLB[0][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][12] ( .G(n24), .D(idata[12]), .Q(\_zzLB[0][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][13] ( .G(n24), .D(idata[13]), .Q(\_zzLB[0][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][14] ( .G(n24), .D(idata[14]), .Q(\_zzLB[0][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][15] ( .G(n24), .D(idata[15]), .Q(\_zzLB[0][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][16] ( .G(n24), .D(idata[16]), .Q(\_zzLB[0][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][17] ( .G(n24), .D(idata[17]), .Q(\_zzLB[0][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][18] ( .G(n24), .D(idata[18]), .Q(\_zzLB[0][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][19] ( .G(n24), .D(idata[19]), .Q(\_zzLB[0][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][20] ( .G(n24), .D(idata[20]), .Q(\_zzLB[0][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][21] ( .G(n24), .D(idata[21]), .Q(\_zzLB[0][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][22] ( .G(n24), .D(idata[22]), .Q(\_zzLB[0][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][23] ( .G(n24), .D(idata[23]), .Q(\_zzLB[0][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][24] ( .G(n24), .D(idata[24]), .Q(\_zzLB[0][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][25] ( .G(n24), .D(idata[25]), .Q(\_zzLB[0][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][26] ( .G(n24), .D(idata[26]), .Q(\_zzLB[0][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][27] ( .G(n24), .D(idata[27]), .Q(\_zzLB[0][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][28] ( .G(n24), .D(idata[28]), .Q(\_zzLB[0][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][29] ( .G(n24), .D(idata[29]), .Q(\_zzLB[0][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][30] ( .G(n24), .D(idata[30]), .Q(\_zzLB[0][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][31] ( .G(n24), .D(idata[31]), .Q(\_zzLB[0][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[0][32] ( .G(n24), .D(ireq), .Q(\_zzLB[0][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][0] ( .G(n21), .D(idata[0]), .Q(\_zzLB[1][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][1] ( .G(n21), .D(idata[1]), .Q(\_zzLB[1][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][2] ( .G(n21), .D(idata[2]), .Q(\_zzLB[1][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][3] ( .G(n21), .D(idata[3]), .Q(\_zzLB[1][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][4] ( .G(n21), .D(idata[4]), .Q(\_zzLB[1][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][5] ( .G(n21), .D(idata[5]), .Q(\_zzLB[1][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][6] ( .G(n21), .D(idata[6]), .Q(\_zzLB[1][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][7] ( .G(n21), .D(idata[7]), .Q(\_zzLB[1][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][8] ( .G(n21), .D(idata[8]), .Q(\_zzLB[1][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][9] ( .G(n21), .D(idata[9]), .Q(\_zzLB[1][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][10] ( .G(n21), .D(idata[10]), .Q(\_zzLB[1][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][11] ( .G(n21), .D(idata[11]), .Q(\_zzLB[1][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][12] ( .G(n21), .D(idata[12]), .Q(\_zzLB[1][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][13] ( .G(n21), .D(idata[13]), .Q(\_zzLB[1][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][14] ( .G(n21), .D(idata[14]), .Q(\_zzLB[1][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][15] ( .G(n21), .D(idata[15]), .Q(\_zzLB[1][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][16] ( .G(n21), .D(idata[16]), .Q(\_zzLB[1][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][17] ( .G(n21), .D(idata[17]), .Q(\_zzLB[1][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][18] ( .G(n21), .D(idata[18]), .Q(\_zzLB[1][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][19] ( .G(n21), .D(idata[19]), .Q(\_zzLB[1][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][20] ( .G(n21), .D(idata[20]), .Q(\_zzLB[1][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][21] ( .G(n21), .D(idata[21]), .Q(\_zzLB[1][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][22] ( .G(n21), .D(idata[22]), .Q(\_zzLB[1][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][23] ( .G(n21), .D(idata[23]), .Q(\_zzLB[1][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][24] ( .G(n21), .D(idata[24]), .Q(\_zzLB[1][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][25] ( .G(n21), .D(idata[25]), .Q(\_zzLB[1][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][26] ( .G(n21), .D(idata[26]), .Q(\_zzLB[1][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][27] ( .G(n21), .D(idata[27]), .Q(\_zzLB[1][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][28] ( .G(n21), .D(idata[28]), .Q(\_zzLB[1][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][29] ( .G(n21), .D(idata[29]), .Q(\_zzLB[1][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][30] ( .G(n21), .D(idata[30]), .Q(\_zzLB[1][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][31] ( .G(n21), .D(idata[31]), .Q(\_zzLB[1][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[1][32] ( .G(n21), .D(ireq), .Q(\_zzLB[1][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][0] ( .G(n22), .D(idata[0]), .Q(\_zzLB[2][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][1] ( .G(n22), .D(idata[1]), .Q(\_zzLB[2][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][2] ( .G(n22), .D(idata[2]), .Q(\_zzLB[2][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][3] ( .G(n22), .D(idata[3]), .Q(\_zzLB[2][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][4] ( .G(n22), .D(idata[4]), .Q(\_zzLB[2][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][5] ( .G(n22), .D(idata[5]), .Q(\_zzLB[2][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][6] ( .G(n22), .D(idata[6]), .Q(\_zzLB[2][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][7] ( .G(n22), .D(idata[7]), .Q(\_zzLB[2][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][8] ( .G(n22), .D(idata[8]), .Q(\_zzLB[2][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][9] ( .G(n22), .D(idata[9]), .Q(\_zzLB[2][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][10] ( .G(n22), .D(idata[10]), .Q(\_zzLB[2][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][11] ( .G(n22), .D(idata[11]), .Q(\_zzLB[2][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][12] ( .G(n22), .D(idata[12]), .Q(\_zzLB[2][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][13] ( .G(n22), .D(idata[13]), .Q(\_zzLB[2][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][14] ( .G(n22), .D(idata[14]), .Q(\_zzLB[2][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][15] ( .G(n22), .D(idata[15]), .Q(\_zzLB[2][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][16] ( .G(n22), .D(idata[16]), .Q(\_zzLB[2][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][17] ( .G(n22), .D(idata[17]), .Q(\_zzLB[2][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][18] ( .G(n22), .D(idata[18]), .Q(\_zzLB[2][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][19] ( .G(n22), .D(idata[19]), .Q(\_zzLB[2][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][20] ( .G(n22), .D(idata[20]), .Q(\_zzLB[2][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][21] ( .G(n22), .D(idata[21]), .Q(\_zzLB[2][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][22] ( .G(n22), .D(idata[22]), .Q(\_zzLB[2][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][23] ( .G(n22), .D(idata[23]), .Q(\_zzLB[2][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][24] ( .G(n22), .D(idata[24]), .Q(\_zzLB[2][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][25] ( .G(n22), .D(idata[25]), .Q(\_zzLB[2][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][26] ( .G(n22), .D(idata[26]), .Q(\_zzLB[2][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][27] ( .G(n22), .D(idata[27]), .Q(\_zzLB[2][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][28] ( .G(n22), .D(idata[28]), .Q(\_zzLB[2][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][29] ( .G(n22), .D(idata[29]), .Q(\_zzLB[2][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][30] ( .G(n22), .D(idata[30]), .Q(\_zzLB[2][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][31] ( .G(n22), .D(idata[31]), .Q(\_zzLB[2][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[2][32] ( .G(n22), .D(ireq), .Q(\_zzLB[2][32] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][0] ( .G(n23), .D(idata[0]), .Q(\_zzLB[3][0] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][1] ( .G(n23), .D(idata[1]), .Q(\_zzLB[3][1] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][2] ( .G(n23), .D(idata[2]), .Q(\_zzLB[3][2] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][3] ( .G(n23), .D(idata[3]), .Q(\_zzLB[3][3] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][4] ( .G(n23), .D(idata[4]), .Q(\_zzLB[3][4] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][5] ( .G(n23), .D(idata[5]), .Q(\_zzLB[3][5] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][6] ( .G(n23), .D(idata[6]), .Q(\_zzLB[3][6] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][7] ( .G(n23), .D(idata[7]), .Q(\_zzLB[3][7] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][8] ( .G(n23), .D(idata[8]), .Q(\_zzLB[3][8] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][9] ( .G(n23), .D(idata[9]), .Q(\_zzLB[3][9] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][10] ( .G(n23), .D(idata[10]), .Q(\_zzLB[3][10] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][11] ( .G(n23), .D(idata[11]), .Q(\_zzLB[3][11] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][12] ( .G(n23), .D(idata[12]), .Q(\_zzLB[3][12] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][13] ( .G(n23), .D(idata[13]), .Q(\_zzLB[3][13] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][14] ( .G(n23), .D(idata[14]), .Q(\_zzLB[3][14] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][15] ( .G(n23), .D(idata[15]), .Q(\_zzLB[3][15] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][16] ( .G(n23), .D(idata[16]), .Q(\_zzLB[3][16] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][17] ( .G(n23), .D(idata[17]), .Q(\_zzLB[3][17] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][18] ( .G(n23), .D(idata[18]), .Q(\_zzLB[3][18] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][19] ( .G(n23), .D(idata[19]), .Q(\_zzLB[3][19] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][20] ( .G(n23), .D(idata[20]), .Q(\_zzLB[3][20] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][21] ( .G(n23), .D(idata[21]), .Q(\_zzLB[3][21] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][22] ( .G(n23), .D(idata[22]), .Q(\_zzLB[3][22] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][23] ( .G(n23), .D(idata[23]), .Q(\_zzLB[3][23] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][24] ( .G(n23), .D(idata[24]), .Q(\_zzLB[3][24] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][25] ( .G(n23), .D(idata[25]), .Q(\_zzLB[3][25] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][26] ( .G(n23), .D(idata[26]), .Q(\_zzLB[3][26] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][27] ( .G(n23), .D(idata[27]), .Q(\_zzLB[3][27] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][28] ( .G(n23), .D(idata[28]), .Q(\_zzLB[3][28] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][29] ( .G(n23), .D(idata[29]), .Q(\_zzLB[3][29] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][30] ( .G(n23), .D(idata[30]), .Q(\_zzLB[3][30] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][31] ( .G(n23), .D(idata[31]), .Q(\_zzLB[3][31] ), .QN( ));
Q_LDP0 \_zzLB_REG[3][32] ( .G(n23), .D(ireq), .Q(\_zzLB[3][32] ), .QN( ));
Q_MX04 U330 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][0] ), .A1(\_zzLB[1][0] ), .A2(\_zzLB[2][0] ), .A3(\_zzLB[3][0] ), .Z(odata[0]));
Q_MX04 U331 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][1] ), .A1(\_zzLB[1][1] ), .A2(\_zzLB[2][1] ), .A3(\_zzLB[3][1] ), .Z(odata[1]));
Q_MX04 U332 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][2] ), .A1(\_zzLB[1][2] ), .A2(\_zzLB[2][2] ), .A3(\_zzLB[3][2] ), .Z(odata[2]));
Q_MX04 U333 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][3] ), .A1(\_zzLB[1][3] ), .A2(\_zzLB[2][3] ), .A3(\_zzLB[3][3] ), .Z(odata[3]));
Q_MX04 U334 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][4] ), .A1(\_zzLB[1][4] ), .A2(\_zzLB[2][4] ), .A3(\_zzLB[3][4] ), .Z(odata[4]));
Q_MX04 U335 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][5] ), .A1(\_zzLB[1][5] ), .A2(\_zzLB[2][5] ), .A3(\_zzLB[3][5] ), .Z(odata[5]));
Q_MX04 U336 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][6] ), .A1(\_zzLB[1][6] ), .A2(\_zzLB[2][6] ), .A3(\_zzLB[3][6] ), .Z(odata[6]));
Q_MX04 U337 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][7] ), .A1(\_zzLB[1][7] ), .A2(\_zzLB[2][7] ), .A3(\_zzLB[3][7] ), .Z(odata[7]));
Q_MX04 U338 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][8] ), .A1(\_zzLB[1][8] ), .A2(\_zzLB[2][8] ), .A3(\_zzLB[3][8] ), .Z(odata[8]));
Q_MX04 U339 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][9] ), .A1(\_zzLB[1][9] ), .A2(\_zzLB[2][9] ), .A3(\_zzLB[3][9] ), .Z(odata[9]));
Q_MX04 U340 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][10] ), .A1(\_zzLB[1][10] ), .A2(\_zzLB[2][10] ), .A3(\_zzLB[3][10] ), .Z(odata[10]));
Q_MX04 U341 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][11] ), .A1(\_zzLB[1][11] ), .A2(\_zzLB[2][11] ), .A3(\_zzLB[3][11] ), .Z(odata[11]));
Q_MX04 U342 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][12] ), .A1(\_zzLB[1][12] ), .A2(\_zzLB[2][12] ), .A3(\_zzLB[3][12] ), .Z(odata[12]));
Q_MX04 U343 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][13] ), .A1(\_zzLB[1][13] ), .A2(\_zzLB[2][13] ), .A3(\_zzLB[3][13] ), .Z(odata[13]));
Q_MX04 U344 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][14] ), .A1(\_zzLB[1][14] ), .A2(\_zzLB[2][14] ), .A3(\_zzLB[3][14] ), .Z(odata[14]));
Q_MX04 U345 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][15] ), .A1(\_zzLB[1][15] ), .A2(\_zzLB[2][15] ), .A3(\_zzLB[3][15] ), .Z(odata[15]));
Q_MX04 U346 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][16] ), .A1(\_zzLB[1][16] ), .A2(\_zzLB[2][16] ), .A3(\_zzLB[3][16] ), .Z(odata[16]));
Q_MX04 U347 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][17] ), .A1(\_zzLB[1][17] ), .A2(\_zzLB[2][17] ), .A3(\_zzLB[3][17] ), .Z(odata[17]));
Q_MX04 U348 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][18] ), .A1(\_zzLB[1][18] ), .A2(\_zzLB[2][18] ), .A3(\_zzLB[3][18] ), .Z(odata[18]));
Q_MX04 U349 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][19] ), .A1(\_zzLB[1][19] ), .A2(\_zzLB[2][19] ), .A3(\_zzLB[3][19] ), .Z(odata[19]));
Q_MX04 U350 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][20] ), .A1(\_zzLB[1][20] ), .A2(\_zzLB[2][20] ), .A3(\_zzLB[3][20] ), .Z(odata[20]));
Q_MX04 U351 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][21] ), .A1(\_zzLB[1][21] ), .A2(\_zzLB[2][21] ), .A3(\_zzLB[3][21] ), .Z(odata[21]));
Q_MX04 U352 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][22] ), .A1(\_zzLB[1][22] ), .A2(\_zzLB[2][22] ), .A3(\_zzLB[3][22] ), .Z(odata[22]));
Q_MX04 U353 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][23] ), .A1(\_zzLB[1][23] ), .A2(\_zzLB[2][23] ), .A3(\_zzLB[3][23] ), .Z(odata[23]));
Q_MX04 U354 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][24] ), .A1(\_zzLB[1][24] ), .A2(\_zzLB[2][24] ), .A3(\_zzLB[3][24] ), .Z(odata[24]));
Q_MX04 U355 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][25] ), .A1(\_zzLB[1][25] ), .A2(\_zzLB[2][25] ), .A3(\_zzLB[3][25] ), .Z(odata[25]));
Q_MX04 U356 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][26] ), .A1(\_zzLB[1][26] ), .A2(\_zzLB[2][26] ), .A3(\_zzLB[3][26] ), .Z(odata[26]));
Q_MX04 U357 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][27] ), .A1(\_zzLB[1][27] ), .A2(\_zzLB[2][27] ), .A3(\_zzLB[3][27] ), .Z(odata[27]));
Q_MX04 U358 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][28] ), .A1(\_zzLB[1][28] ), .A2(\_zzLB[2][28] ), .A3(\_zzLB[3][28] ), .Z(odata[28]));
Q_MX04 U359 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][29] ), .A1(\_zzLB[1][29] ), .A2(\_zzLB[2][29] ), .A3(\_zzLB[3][29] ), .Z(odata[29]));
Q_MX04 U360 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][30] ), .A1(\_zzLB[1][30] ), .A2(\_zzLB[2][30] ), .A3(\_zzLB[3][30] ), .Z(odata[30]));
Q_MX04 U361 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][31] ), .A1(\_zzLB[1][31] ), .A2(\_zzLB[2][31] ), .A3(\_zzLB[3][31] ), .Z(odata[31]));
Q_MX04 U362 ( .S0(CLBrd[0]), .S1(CLBrd[1]), .A0(\_zzLB[0][32] ), .A1(\_zzLB[1][32] ), .A2(\_zzLB[2][32] ), .A3(\_zzLB[3][32] ), .Z(oreq));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "_zzLB 1 32 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_gfifo_port"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
