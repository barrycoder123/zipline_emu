
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_sfifo_port_136_0 ( call, iarg, oarg, tid, fen, CiData, CtId, CoData, 
	CoDataEn, CoDataLen);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output call;
`_2_ output [135:0] iarg;
input [0:0] oarg;
input [21:0] tid;
`_2_ output fen;
input [511:0] CiData;
input [21:0] CtId;
output [511:0] CoData;
output CoDataEn;
output [3:0] CoDataLen;
wire fclk;
`_2_ wire fenN;
`_2_ wire callr;
`_2_ wire callrN;
`_2_ wire [15:0] argl;
`_2_ wire [15:0] arglN;
`_2_ wire [0:0] lden;
`_2_ wire [0:0] ldenN;
wire [31:0] i;
`_2_ wire [511:0] oargB;
`_2_ wire oen;
`_2_ wire [15:0] opktl;
`_2_ wire [0:0] sten;
`_2_ wire [3:0] wlen;
`_2_ wire oState;
Q_FDP0UA U0 ( .D(callrN), .QTFCLK( ), .Q(callr));
Q_FDP0UA U1 ( .D(arglN[15]), .QTFCLK( ), .Q(argl[15]));
Q_FDP0UA U2 ( .D(arglN[14]), .QTFCLK( ), .Q(argl[14]));
Q_FDP0UA U3 ( .D(arglN[13]), .QTFCLK( ), .Q(argl[13]));
Q_FDP0UA U4 ( .D(arglN[12]), .QTFCLK( ), .Q(argl[12]));
Q_FDP0UA U5 ( .D(arglN[11]), .QTFCLK( ), .Q(argl[11]));
Q_FDP0UA U6 ( .D(arglN[10]), .QTFCLK( ), .Q(argl[10]));
Q_FDP0UA U7 ( .D(arglN[9]), .QTFCLK( ), .Q(argl[9]));
Q_FDP0UA U8 ( .D(arglN[8]), .QTFCLK( ), .Q(argl[8]));
Q_FDP0UA U9 ( .D(arglN[7]), .QTFCLK( ), .Q(argl[7]));
Q_FDP0UA U10 ( .D(arglN[6]), .QTFCLK( ), .Q(argl[6]));
Q_FDP0UA U11 ( .D(arglN[5]), .QTFCLK( ), .Q(argl[5]));
Q_FDP0UA U12 ( .D(arglN[4]), .QTFCLK( ), .Q(argl[4]));
Q_FDP0UA U13 ( .D(arglN[3]), .QTFCLK( ), .Q(argl[3]));
Q_FDP0UA U14 ( .D(arglN[2]), .QTFCLK( ), .Q(argl[2]));
Q_FDP0UA U15 ( .D(arglN[1]), .QTFCLK( ), .Q(argl[1]));
Q_FDP0UA U16 ( .D(arglN[0]), .QTFCLK( ), .Q(argl[0]));
Q_FDP0UA U17 ( .D(ldenN[0]), .QTFCLK( ), .Q(lden[0]));
Q_FDP0UA U18 ( .D(fenN), .QTFCLK( ), .Q(fen));
Q_NR02 U19 ( .A0(n2), .A1(n3), .Z(n6));
Q_OR02 U20 ( .A0(n6), .A1(n5), .Z(n4));
Q_INV U21 ( .A(n4), .Z(fenN));
Q_XNR2 U22 ( .A0(n4), .A1(callr), .Z(callrN));
Q_AN02 U23 ( .A0(n5), .A1(n7), .Z(arglN[15]));
Q_AN02 U24 ( .A0(n5), .A1(n9), .Z(arglN[14]));
Q_AN02 U25 ( .A0(n5), .A1(n11), .Z(arglN[13]));
Q_AN02 U26 ( .A0(n5), .A1(n13), .Z(arglN[12]));
Q_AN02 U27 ( .A0(n5), .A1(n15), .Z(arglN[11]));
Q_AN02 U28 ( .A0(n5), .A1(n17), .Z(arglN[10]));
Q_AN02 U29 ( .A0(n5), .A1(n19), .Z(arglN[9]));
Q_AN02 U30 ( .A0(n5), .A1(n21), .Z(arglN[8]));
Q_AN02 U31 ( .A0(n5), .A1(n23), .Z(arglN[7]));
Q_AN02 U32 ( .A0(n5), .A1(n25), .Z(arglN[6]));
Q_AN02 U33 ( .A0(n5), .A1(n27), .Z(arglN[5]));
Q_AN02 U34 ( .A0(n5), .A1(n29), .Z(arglN[4]));
Q_AN02 U35 ( .A0(n5), .A1(n31), .Z(arglN[3]));
Q_AN02 U36 ( .A0(n5), .A1(n33), .Z(arglN[2]));
Q_AN02 U37 ( .A0(n5), .A1(n35), .Z(arglN[1]));
Q_AN02 U38 ( .A0(n5), .A1(n36), .Z(arglN[0]));
Q_INV U39 ( .A(n5), .Z(ldenN[0]));
Q_XNR2 U40 ( .A0(argl[15]), .A1(n8), .Z(n7));
Q_OR02 U41 ( .A0(argl[14]), .A1(n10), .Z(n8));
Q_XNR2 U42 ( .A0(argl[14]), .A1(n10), .Z(n9));
Q_OR02 U43 ( .A0(argl[13]), .A1(n12), .Z(n10));
Q_XNR2 U44 ( .A0(argl[13]), .A1(n12), .Z(n11));
Q_OR02 U45 ( .A0(argl[12]), .A1(n14), .Z(n12));
Q_XNR2 U46 ( .A0(argl[12]), .A1(n14), .Z(n13));
Q_OR02 U47 ( .A0(argl[11]), .A1(n16), .Z(n14));
Q_XNR2 U48 ( .A0(argl[11]), .A1(n16), .Z(n15));
Q_OR02 U49 ( .A0(argl[10]), .A1(n18), .Z(n16));
Q_XNR2 U50 ( .A0(argl[10]), .A1(n18), .Z(n17));
Q_OR02 U51 ( .A0(argl[9]), .A1(n20), .Z(n18));
Q_XNR2 U52 ( .A0(argl[9]), .A1(n20), .Z(n19));
Q_OR02 U53 ( .A0(argl[8]), .A1(n22), .Z(n20));
Q_XNR2 U54 ( .A0(argl[8]), .A1(n22), .Z(n21));
Q_OR02 U55 ( .A0(argl[7]), .A1(n24), .Z(n22));
Q_XNR2 U56 ( .A0(argl[7]), .A1(n24), .Z(n23));
Q_OR02 U57 ( .A0(argl[6]), .A1(n26), .Z(n24));
Q_XNR2 U58 ( .A0(argl[6]), .A1(n26), .Z(n25));
Q_OR02 U59 ( .A0(argl[5]), .A1(n28), .Z(n26));
Q_XNR2 U60 ( .A0(argl[5]), .A1(n28), .Z(n27));
Q_OR02 U61 ( .A0(argl[4]), .A1(n30), .Z(n28));
Q_XNR2 U62 ( .A0(argl[4]), .A1(n30), .Z(n29));
Q_OR02 U63 ( .A0(argl[3]), .A1(n32), .Z(n30));
Q_XNR2 U64 ( .A0(argl[3]), .A1(n32), .Z(n31));
Q_OR02 U65 ( .A0(argl[2]), .A1(n34), .Z(n32));
Q_XNR2 U66 ( .A0(argl[2]), .A1(n34), .Z(n33));
Q_OR02 U67 ( .A0(argl[1]), .A1(argl[0]), .Z(n34));
Q_XNR2 U68 ( .A0(argl[1]), .A1(argl[0]), .Z(n35));
Q_INV U69 ( .A(argl[0]), .Z(n36));
Q_OA21 U70 ( .A0(n37), .A1(n38), .B0(n2), .Z(n5));
Q_OR03 U71 ( .A0(n39), .A1(argl[1]), .A2(n40), .Z(n38));
Q_OR02 U72 ( .A0(argl[3]), .A1(argl[2]), .Z(n39));
Q_OR03 U73 ( .A0(argl[7]), .A1(argl[6]), .A2(n41), .Z(n40));
Q_OR02 U74 ( .A0(argl[5]), .A1(argl[4]), .Z(n41));
Q_OR03 U75 ( .A0(n42), .A1(n43), .A2(n44), .Z(n37));
Q_OR02 U76 ( .A0(argl[11]), .A1(argl[10]), .Z(n42));
Q_OR02 U77 ( .A0(argl[9]), .A1(argl[8]), .Z(n43));
Q_OR03 U78 ( .A0(argl[15]), .A1(argl[14]), .A2(n45), .Z(n44));
Q_OR02 U79 ( .A0(argl[13]), .A1(argl[12]), .Z(n45));
Q_OR02 U80 ( .A0(n47), .A1(n46), .Z(n2));
Q_OR03 U81 ( .A0(n50), .A1(n49), .A2(n48), .Z(n46));
Q_OR03 U82 ( .A0(argl[0]), .A1(n52), .A2(n51), .Z(n47));
Q_OR03 U83 ( .A0(argl[3]), .A1(argl[2]), .A2(argl[1]), .Z(n48));
Q_OR03 U84 ( .A0(argl[6]), .A1(argl[5]), .A2(argl[4]), .Z(n49));
Q_OR03 U85 ( .A0(argl[9]), .A1(argl[8]), .A2(argl[7]), .Z(n50));
Q_OR03 U86 ( .A0(argl[12]), .A1(argl[11]), .A2(argl[10]), .Z(n51));
Q_OR03 U87 ( .A0(argl[15]), .A1(argl[14]), .A2(argl[13]), .Z(n52));
Q_INV U88 ( .A(xc_top.GFReset), .Z(n53));
Q_AN03 U89 ( .A0(n55), .A1(n54), .A2(n53), .Z(n3));
Q_AN03 U90 ( .A0(n58), .A1(n57), .A2(n56), .Z(n54));
Q_AN03 U91 ( .A0(n61), .A1(n60), .A2(n59), .Z(n55));
Q_AN03 U92 ( .A0(n85), .A1(n63), .A2(n62), .Z(n56));
Q_AN03 U93 ( .A0(n82), .A1(n83), .A2(n84), .Z(n57));
Q_AN03 U94 ( .A0(n79), .A1(n80), .A2(n81), .Z(n58));
Q_AN03 U95 ( .A0(n76), .A1(n77), .A2(n78), .Z(n59));
Q_AN03 U96 ( .A0(n73), .A1(n74), .A2(n75), .Z(n60));
Q_AN03 U97 ( .A0(n70), .A1(n71), .A2(n72), .Z(n61));
Q_AN03 U98 ( .A0(n67), .A1(n68), .A2(n69), .Z(n62));
Q_AN03 U99 ( .A0(n64), .A1(n65), .A2(n66), .Z(n63));
Q_XNR2 U100 ( .A0(CtId[21]), .A1(tid[21]), .Z(n64));
Q_XNR2 U101 ( .A0(CtId[20]), .A1(tid[20]), .Z(n65));
Q_XNR2 U102 ( .A0(CtId[19]), .A1(tid[19]), .Z(n66));
Q_XNR2 U103 ( .A0(CtId[18]), .A1(tid[18]), .Z(n67));
Q_XNR2 U104 ( .A0(CtId[17]), .A1(tid[17]), .Z(n68));
Q_XNR2 U105 ( .A0(CtId[16]), .A1(tid[16]), .Z(n69));
Q_XNR2 U106 ( .A0(CtId[15]), .A1(tid[15]), .Z(n70));
Q_XNR2 U107 ( .A0(CtId[14]), .A1(tid[14]), .Z(n71));
Q_XNR2 U108 ( .A0(CtId[13]), .A1(tid[13]), .Z(n72));
Q_XNR2 U109 ( .A0(CtId[12]), .A1(tid[12]), .Z(n73));
Q_XNR2 U110 ( .A0(CtId[11]), .A1(tid[11]), .Z(n74));
Q_XNR2 U111 ( .A0(CtId[10]), .A1(tid[10]), .Z(n75));
Q_XNR2 U112 ( .A0(CtId[9]), .A1(tid[9]), .Z(n76));
Q_XNR2 U113 ( .A0(CtId[8]), .A1(tid[8]), .Z(n77));
Q_XNR2 U114 ( .A0(CtId[7]), .A1(tid[7]), .Z(n78));
Q_XNR2 U115 ( .A0(CtId[6]), .A1(tid[6]), .Z(n79));
Q_XNR2 U116 ( .A0(CtId[5]), .A1(tid[5]), .Z(n80));
Q_XNR2 U117 ( .A0(CtId[4]), .A1(tid[4]), .Z(n81));
Q_XNR2 U118 ( .A0(CtId[3]), .A1(tid[3]), .Z(n82));
Q_XNR2 U119 ( .A0(CtId[2]), .A1(tid[2]), .Z(n83));
Q_XNR2 U120 ( .A0(CtId[1]), .A1(tid[1]), .Z(n84));
Q_XNR2 U121 ( .A0(CtId[0]), .A1(tid[0]), .Z(n85));
Q_LDP0 \iarg_REG[0] ( .G(lden[0]), .D(CiData[0]), .Q(iarg[0]), .QN( ));
Q_LDP0 \iarg_REG[1] ( .G(lden[0]), .D(CiData[1]), .Q(iarg[1]), .QN( ));
Q_LDP0 \iarg_REG[2] ( .G(lden[0]), .D(CiData[2]), .Q(iarg[2]), .QN( ));
Q_LDP0 \iarg_REG[3] ( .G(lden[0]), .D(CiData[3]), .Q(iarg[3]), .QN( ));
Q_LDP0 \iarg_REG[4] ( .G(lden[0]), .D(CiData[4]), .Q(iarg[4]), .QN( ));
Q_LDP0 \iarg_REG[5] ( .G(lden[0]), .D(CiData[5]), .Q(iarg[5]), .QN( ));
Q_LDP0 \iarg_REG[6] ( .G(lden[0]), .D(CiData[6]), .Q(iarg[6]), .QN( ));
Q_LDP0 \iarg_REG[7] ( .G(lden[0]), .D(CiData[7]), .Q(iarg[7]), .QN( ));
Q_LDP0 \iarg_REG[8] ( .G(lden[0]), .D(CiData[8]), .Q(iarg[8]), .QN( ));
Q_LDP0 \iarg_REG[9] ( .G(lden[0]), .D(CiData[9]), .Q(iarg[9]), .QN( ));
Q_LDP0 \iarg_REG[10] ( .G(lden[0]), .D(CiData[10]), .Q(iarg[10]), .QN( ));
Q_LDP0 \iarg_REG[11] ( .G(lden[0]), .D(CiData[11]), .Q(iarg[11]), .QN( ));
Q_LDP0 \iarg_REG[12] ( .G(lden[0]), .D(CiData[12]), .Q(iarg[12]), .QN( ));
Q_LDP0 \iarg_REG[13] ( .G(lden[0]), .D(CiData[13]), .Q(iarg[13]), .QN( ));
Q_LDP0 \iarg_REG[14] ( .G(lden[0]), .D(CiData[14]), .Q(iarg[14]), .QN( ));
Q_LDP0 \iarg_REG[15] ( .G(lden[0]), .D(CiData[15]), .Q(iarg[15]), .QN( ));
Q_LDP0 \iarg_REG[16] ( .G(lden[0]), .D(CiData[16]), .Q(iarg[16]), .QN( ));
Q_LDP0 \iarg_REG[17] ( .G(lden[0]), .D(CiData[17]), .Q(iarg[17]), .QN( ));
Q_LDP0 \iarg_REG[18] ( .G(lden[0]), .D(CiData[18]), .Q(iarg[18]), .QN( ));
Q_LDP0 \iarg_REG[19] ( .G(lden[0]), .D(CiData[19]), .Q(iarg[19]), .QN( ));
Q_LDP0 \iarg_REG[20] ( .G(lden[0]), .D(CiData[20]), .Q(iarg[20]), .QN( ));
Q_LDP0 \iarg_REG[21] ( .G(lden[0]), .D(CiData[21]), .Q(iarg[21]), .QN( ));
Q_LDP0 \iarg_REG[22] ( .G(lden[0]), .D(CiData[22]), .Q(iarg[22]), .QN( ));
Q_LDP0 \iarg_REG[23] ( .G(lden[0]), .D(CiData[23]), .Q(iarg[23]), .QN( ));
Q_LDP0 \iarg_REG[24] ( .G(lden[0]), .D(CiData[24]), .Q(iarg[24]), .QN( ));
Q_LDP0 \iarg_REG[25] ( .G(lden[0]), .D(CiData[25]), .Q(iarg[25]), .QN( ));
Q_LDP0 \iarg_REG[26] ( .G(lden[0]), .D(CiData[26]), .Q(iarg[26]), .QN( ));
Q_LDP0 \iarg_REG[27] ( .G(lden[0]), .D(CiData[27]), .Q(iarg[27]), .QN( ));
Q_LDP0 \iarg_REG[28] ( .G(lden[0]), .D(CiData[28]), .Q(iarg[28]), .QN( ));
Q_LDP0 \iarg_REG[29] ( .G(lden[0]), .D(CiData[29]), .Q(iarg[29]), .QN( ));
Q_LDP0 \iarg_REG[30] ( .G(lden[0]), .D(CiData[30]), .Q(iarg[30]), .QN( ));
Q_LDP0 \iarg_REG[31] ( .G(lden[0]), .D(CiData[31]), .Q(iarg[31]), .QN( ));
Q_LDP0 \iarg_REG[32] ( .G(lden[0]), .D(CiData[32]), .Q(iarg[32]), .QN( ));
Q_LDP0 \iarg_REG[33] ( .G(lden[0]), .D(CiData[33]), .Q(iarg[33]), .QN( ));
Q_LDP0 \iarg_REG[34] ( .G(lden[0]), .D(CiData[34]), .Q(iarg[34]), .QN( ));
Q_LDP0 \iarg_REG[35] ( .G(lden[0]), .D(CiData[35]), .Q(iarg[35]), .QN( ));
Q_LDP0 \iarg_REG[36] ( .G(lden[0]), .D(CiData[36]), .Q(iarg[36]), .QN( ));
Q_LDP0 \iarg_REG[37] ( .G(lden[0]), .D(CiData[37]), .Q(iarg[37]), .QN( ));
Q_LDP0 \iarg_REG[38] ( .G(lden[0]), .D(CiData[38]), .Q(iarg[38]), .QN( ));
Q_LDP0 \iarg_REG[39] ( .G(lden[0]), .D(CiData[39]), .Q(iarg[39]), .QN( ));
Q_LDP0 \iarg_REG[40] ( .G(lden[0]), .D(CiData[40]), .Q(iarg[40]), .QN( ));
Q_LDP0 \iarg_REG[41] ( .G(lden[0]), .D(CiData[41]), .Q(iarg[41]), .QN( ));
Q_LDP0 \iarg_REG[42] ( .G(lden[0]), .D(CiData[42]), .Q(iarg[42]), .QN( ));
Q_LDP0 \iarg_REG[43] ( .G(lden[0]), .D(CiData[43]), .Q(iarg[43]), .QN( ));
Q_LDP0 \iarg_REG[44] ( .G(lden[0]), .D(CiData[44]), .Q(iarg[44]), .QN( ));
Q_LDP0 \iarg_REG[45] ( .G(lden[0]), .D(CiData[45]), .Q(iarg[45]), .QN( ));
Q_LDP0 \iarg_REG[46] ( .G(lden[0]), .D(CiData[46]), .Q(iarg[46]), .QN( ));
Q_LDP0 \iarg_REG[47] ( .G(lden[0]), .D(CiData[47]), .Q(iarg[47]), .QN( ));
Q_LDP0 \iarg_REG[48] ( .G(lden[0]), .D(CiData[48]), .Q(iarg[48]), .QN( ));
Q_LDP0 \iarg_REG[49] ( .G(lden[0]), .D(CiData[49]), .Q(iarg[49]), .QN( ));
Q_LDP0 \iarg_REG[50] ( .G(lden[0]), .D(CiData[50]), .Q(iarg[50]), .QN( ));
Q_LDP0 \iarg_REG[51] ( .G(lden[0]), .D(CiData[51]), .Q(iarg[51]), .QN( ));
Q_LDP0 \iarg_REG[52] ( .G(lden[0]), .D(CiData[52]), .Q(iarg[52]), .QN( ));
Q_LDP0 \iarg_REG[53] ( .G(lden[0]), .D(CiData[53]), .Q(iarg[53]), .QN( ));
Q_LDP0 \iarg_REG[54] ( .G(lden[0]), .D(CiData[54]), .Q(iarg[54]), .QN( ));
Q_LDP0 \iarg_REG[55] ( .G(lden[0]), .D(CiData[55]), .Q(iarg[55]), .QN( ));
Q_LDP0 \iarg_REG[56] ( .G(lden[0]), .D(CiData[56]), .Q(iarg[56]), .QN( ));
Q_LDP0 \iarg_REG[57] ( .G(lden[0]), .D(CiData[57]), .Q(iarg[57]), .QN( ));
Q_LDP0 \iarg_REG[58] ( .G(lden[0]), .D(CiData[58]), .Q(iarg[58]), .QN( ));
Q_LDP0 \iarg_REG[59] ( .G(lden[0]), .D(CiData[59]), .Q(iarg[59]), .QN( ));
Q_LDP0 \iarg_REG[60] ( .G(lden[0]), .D(CiData[60]), .Q(iarg[60]), .QN( ));
Q_LDP0 \iarg_REG[61] ( .G(lden[0]), .D(CiData[61]), .Q(iarg[61]), .QN( ));
Q_LDP0 \iarg_REG[62] ( .G(lden[0]), .D(CiData[62]), .Q(iarg[62]), .QN( ));
Q_LDP0 \iarg_REG[63] ( .G(lden[0]), .D(CiData[63]), .Q(iarg[63]), .QN( ));
Q_LDP0 \iarg_REG[64] ( .G(lden[0]), .D(CiData[64]), .Q(iarg[64]), .QN( ));
Q_LDP0 \iarg_REG[65] ( .G(lden[0]), .D(CiData[65]), .Q(iarg[65]), .QN( ));
Q_LDP0 \iarg_REG[66] ( .G(lden[0]), .D(CiData[66]), .Q(iarg[66]), .QN( ));
Q_LDP0 \iarg_REG[67] ( .G(lden[0]), .D(CiData[67]), .Q(iarg[67]), .QN( ));
Q_LDP0 \iarg_REG[68] ( .G(lden[0]), .D(CiData[68]), .Q(iarg[68]), .QN( ));
Q_LDP0 \iarg_REG[69] ( .G(lden[0]), .D(CiData[69]), .Q(iarg[69]), .QN( ));
Q_LDP0 \iarg_REG[70] ( .G(lden[0]), .D(CiData[70]), .Q(iarg[70]), .QN( ));
Q_LDP0 \iarg_REG[71] ( .G(lden[0]), .D(CiData[71]), .Q(iarg[71]), .QN( ));
Q_LDP0 \iarg_REG[72] ( .G(lden[0]), .D(CiData[72]), .Q(iarg[72]), .QN( ));
Q_LDP0 \iarg_REG[73] ( .G(lden[0]), .D(CiData[73]), .Q(iarg[73]), .QN( ));
Q_LDP0 \iarg_REG[74] ( .G(lden[0]), .D(CiData[74]), .Q(iarg[74]), .QN( ));
Q_LDP0 \iarg_REG[75] ( .G(lden[0]), .D(CiData[75]), .Q(iarg[75]), .QN( ));
Q_LDP0 \iarg_REG[76] ( .G(lden[0]), .D(CiData[76]), .Q(iarg[76]), .QN( ));
Q_LDP0 \iarg_REG[77] ( .G(lden[0]), .D(CiData[77]), .Q(iarg[77]), .QN( ));
Q_LDP0 \iarg_REG[78] ( .G(lden[0]), .D(CiData[78]), .Q(iarg[78]), .QN( ));
Q_LDP0 \iarg_REG[79] ( .G(lden[0]), .D(CiData[79]), .Q(iarg[79]), .QN( ));
Q_LDP0 \iarg_REG[80] ( .G(lden[0]), .D(CiData[80]), .Q(iarg[80]), .QN( ));
Q_LDP0 \iarg_REG[81] ( .G(lden[0]), .D(CiData[81]), .Q(iarg[81]), .QN( ));
Q_LDP0 \iarg_REG[82] ( .G(lden[0]), .D(CiData[82]), .Q(iarg[82]), .QN( ));
Q_LDP0 \iarg_REG[83] ( .G(lden[0]), .D(CiData[83]), .Q(iarg[83]), .QN( ));
Q_LDP0 \iarg_REG[84] ( .G(lden[0]), .D(CiData[84]), .Q(iarg[84]), .QN( ));
Q_LDP0 \iarg_REG[85] ( .G(lden[0]), .D(CiData[85]), .Q(iarg[85]), .QN( ));
Q_LDP0 \iarg_REG[86] ( .G(lden[0]), .D(CiData[86]), .Q(iarg[86]), .QN( ));
Q_LDP0 \iarg_REG[87] ( .G(lden[0]), .D(CiData[87]), .Q(iarg[87]), .QN( ));
Q_LDP0 \iarg_REG[88] ( .G(lden[0]), .D(CiData[88]), .Q(iarg[88]), .QN( ));
Q_LDP0 \iarg_REG[89] ( .G(lden[0]), .D(CiData[89]), .Q(iarg[89]), .QN( ));
Q_LDP0 \iarg_REG[90] ( .G(lden[0]), .D(CiData[90]), .Q(iarg[90]), .QN( ));
Q_LDP0 \iarg_REG[91] ( .G(lden[0]), .D(CiData[91]), .Q(iarg[91]), .QN( ));
Q_LDP0 \iarg_REG[92] ( .G(lden[0]), .D(CiData[92]), .Q(iarg[92]), .QN( ));
Q_LDP0 \iarg_REG[93] ( .G(lden[0]), .D(CiData[93]), .Q(iarg[93]), .QN( ));
Q_LDP0 \iarg_REG[94] ( .G(lden[0]), .D(CiData[94]), .Q(iarg[94]), .QN( ));
Q_LDP0 \iarg_REG[95] ( .G(lden[0]), .D(CiData[95]), .Q(iarg[95]), .QN( ));
Q_LDP0 \iarg_REG[96] ( .G(lden[0]), .D(CiData[96]), .Q(iarg[96]), .QN( ));
Q_LDP0 \iarg_REG[97] ( .G(lden[0]), .D(CiData[97]), .Q(iarg[97]), .QN( ));
Q_LDP0 \iarg_REG[98] ( .G(lden[0]), .D(CiData[98]), .Q(iarg[98]), .QN( ));
Q_LDP0 \iarg_REG[99] ( .G(lden[0]), .D(CiData[99]), .Q(iarg[99]), .QN( ));
Q_LDP0 \iarg_REG[100] ( .G(lden[0]), .D(CiData[100]), .Q(iarg[100]), .QN( ));
Q_LDP0 \iarg_REG[101] ( .G(lden[0]), .D(CiData[101]), .Q(iarg[101]), .QN( ));
Q_LDP0 \iarg_REG[102] ( .G(lden[0]), .D(CiData[102]), .Q(iarg[102]), .QN( ));
Q_LDP0 \iarg_REG[103] ( .G(lden[0]), .D(CiData[103]), .Q(iarg[103]), .QN( ));
Q_LDP0 \iarg_REG[104] ( .G(lden[0]), .D(CiData[104]), .Q(iarg[104]), .QN( ));
Q_LDP0 \iarg_REG[105] ( .G(lden[0]), .D(CiData[105]), .Q(iarg[105]), .QN( ));
Q_LDP0 \iarg_REG[106] ( .G(lden[0]), .D(CiData[106]), .Q(iarg[106]), .QN( ));
Q_LDP0 \iarg_REG[107] ( .G(lden[0]), .D(CiData[107]), .Q(iarg[107]), .QN( ));
Q_LDP0 \iarg_REG[108] ( .G(lden[0]), .D(CiData[108]), .Q(iarg[108]), .QN( ));
Q_LDP0 \iarg_REG[109] ( .G(lden[0]), .D(CiData[109]), .Q(iarg[109]), .QN( ));
Q_LDP0 \iarg_REG[110] ( .G(lden[0]), .D(CiData[110]), .Q(iarg[110]), .QN( ));
Q_LDP0 \iarg_REG[111] ( .G(lden[0]), .D(CiData[111]), .Q(iarg[111]), .QN( ));
Q_LDP0 \iarg_REG[112] ( .G(lden[0]), .D(CiData[112]), .Q(iarg[112]), .QN( ));
Q_LDP0 \iarg_REG[113] ( .G(lden[0]), .D(CiData[113]), .Q(iarg[113]), .QN( ));
Q_LDP0 \iarg_REG[114] ( .G(lden[0]), .D(CiData[114]), .Q(iarg[114]), .QN( ));
Q_LDP0 \iarg_REG[115] ( .G(lden[0]), .D(CiData[115]), .Q(iarg[115]), .QN( ));
Q_LDP0 \iarg_REG[116] ( .G(lden[0]), .D(CiData[116]), .Q(iarg[116]), .QN( ));
Q_LDP0 \iarg_REG[117] ( .G(lden[0]), .D(CiData[117]), .Q(iarg[117]), .QN( ));
Q_LDP0 \iarg_REG[118] ( .G(lden[0]), .D(CiData[118]), .Q(iarg[118]), .QN( ));
Q_LDP0 \iarg_REG[119] ( .G(lden[0]), .D(CiData[119]), .Q(iarg[119]), .QN( ));
Q_LDP0 \iarg_REG[120] ( .G(lden[0]), .D(CiData[120]), .Q(iarg[120]), .QN( ));
Q_LDP0 \iarg_REG[121] ( .G(lden[0]), .D(CiData[121]), .Q(iarg[121]), .QN( ));
Q_LDP0 \iarg_REG[122] ( .G(lden[0]), .D(CiData[122]), .Q(iarg[122]), .QN( ));
Q_LDP0 \iarg_REG[123] ( .G(lden[0]), .D(CiData[123]), .Q(iarg[123]), .QN( ));
Q_LDP0 \iarg_REG[124] ( .G(lden[0]), .D(CiData[124]), .Q(iarg[124]), .QN( ));
Q_LDP0 \iarg_REG[125] ( .G(lden[0]), .D(CiData[125]), .Q(iarg[125]), .QN( ));
Q_LDP0 \iarg_REG[126] ( .G(lden[0]), .D(CiData[126]), .Q(iarg[126]), .QN( ));
Q_LDP0 \iarg_REG[127] ( .G(lden[0]), .D(CiData[127]), .Q(iarg[127]), .QN( ));
Q_LDP0 \iarg_REG[128] ( .G(lden[0]), .D(CiData[128]), .Q(iarg[128]), .QN( ));
Q_LDP0 \iarg_REG[129] ( .G(lden[0]), .D(CiData[129]), .Q(iarg[129]), .QN( ));
Q_LDP0 \iarg_REG[130] ( .G(lden[0]), .D(CiData[130]), .Q(iarg[130]), .QN( ));
Q_LDP0 \iarg_REG[131] ( .G(lden[0]), .D(CiData[131]), .Q(iarg[131]), .QN( ));
Q_LDP0 \iarg_REG[132] ( .G(lden[0]), .D(CiData[132]), .Q(iarg[132]), .QN( ));
Q_LDP0 \iarg_REG[133] ( .G(lden[0]), .D(CiData[133]), .Q(iarg[133]), .QN( ));
Q_LDP0 \iarg_REG[134] ( .G(lden[0]), .D(CiData[134]), .Q(iarg[134]), .QN( ));
Q_LDP0 \iarg_REG[135] ( .G(lden[0]), .D(CiData[135]), .Q(iarg[135]), .QN( ));
Q_PULSE U258 ( .A(callr), .Z(call));
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sfifo_port"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
