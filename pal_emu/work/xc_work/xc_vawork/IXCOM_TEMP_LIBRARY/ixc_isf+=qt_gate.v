
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_ISF ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire fclk;
wire [1:0] pvec;
`_2_ wire [1:0] pvecEv;
`_2_ wire [63:0] pvecEvD;
`_2_ wire [1:0] _zyevPio;
`_2_ wire isfBusy;
`_2_ wire isfBusyD;
`_2_ wire [8:0] rptr;
`_2_ wire mark;
`_2_ wire markN;
`_2_ wire nd;
`_2_ wire [1:0] state;
supply0 n50;
supply1 n54;
Q_INV U0 ( .A(state[1]), .Z(n1));
Q_OR02 U1 ( .A0(state[0]), .A1(n45), .Z(n3));
Q_NR02 U2 ( .A0(state[0]), .A1(nd), .Z(n4));
Q_MX02 U3 ( .S(state[1]), .A0(n4), .A1(n3), .Z(n5));
Q_AN02 U4 ( .A0(state[1]), .A1(state[0]), .Z(n6));
Q_ND02 U5 ( .A0(state[1]), .A1(n45), .Z(n7));
Q_INV U6 ( .A(n7), .Z(n2));
Q_NR02 U7 ( .A0(state[1]), .A1(state[0]), .Z(n8));
Q_MX02 U8 ( .S(n5), .A0(n8), .A1(state[0]), .Z(n9));
Q_FDP0UA U9 ( .D(n9), .QTFCLK( ), .Q(state[0]));
Q_MX02 U10 ( .S(n5), .A0(state[0]), .A1(state[1]), .Z(n10));
Q_FDP0UA U11 ( .D(n10), .QTFCLK( ), .Q(state[1]));
Q_MX02 U12 ( .S(n5), .A0(n1), .A1(isfBusy), .Z(n11));
Q_FDP0UA U13 ( .D(n11), .QTFCLK( ), .Q(isfBusy));
Q_MX02 U14 ( .S(n6), .A0(n29), .A1(rptr[0]), .Z(n12));
Q_FDP0UA U15 ( .D(n12), .QTFCLK( ), .Q(rptr[0]));
Q_MX02 U16 ( .S(n6), .A0(n28), .A1(rptr[1]), .Z(n13));
Q_FDP0UA U17 ( .D(n13), .QTFCLK( ), .Q(rptr[1]));
Q_MX02 U18 ( .S(n6), .A0(n27), .A1(rptr[2]), .Z(n14));
Q_FDP0UA U19 ( .D(n14), .QTFCLK( ), .Q(rptr[2]));
Q_MX02 U20 ( .S(n6), .A0(n26), .A1(rptr[3]), .Z(n15));
Q_FDP0UA U21 ( .D(n15), .QTFCLK( ), .Q(rptr[3]));
Q_MX02 U22 ( .S(n6), .A0(n25), .A1(rptr[4]), .Z(n16));
Q_FDP0UA U23 ( .D(n16), .QTFCLK( ), .Q(rptr[4]));
Q_MX02 U24 ( .S(n6), .A0(n24), .A1(rptr[5]), .Z(n17));
Q_FDP0UA U25 ( .D(n17), .QTFCLK( ), .Q(rptr[5]));
Q_MX02 U26 ( .S(n6), .A0(n23), .A1(rptr[6]), .Z(n18));
Q_FDP0UA U27 ( .D(n18), .QTFCLK( ), .Q(rptr[6]));
Q_MX02 U28 ( .S(n6), .A0(n22), .A1(rptr[7]), .Z(n19));
Q_FDP0UA U29 ( .D(n19), .QTFCLK( ), .Q(rptr[7]));
Q_MX02 U30 ( .S(n6), .A0(n21), .A1(rptr[8]), .Z(n20));
Q_FDP0UA U31 ( .D(n20), .QTFCLK( ), .Q(rptr[8]));
Q_FDP0UA U32 ( .D(pvecEv[0]), .QTFCLK( ), .Q(pvecEvD[0]));
Q_FDP0UA U33 ( .D(pvecEv[1]), .QTFCLK( ), .Q(pvecEvD[1]));
Q_FDP0UA U34 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[2]));
Q_FDP0UA U35 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[3]));
Q_FDP0UA U36 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[4]));
Q_FDP0UA U37 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[5]));
Q_FDP0UA U38 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[6]));
Q_FDP0UA U39 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[7]));
Q_FDP0UA U40 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[8]));
Q_FDP0UA U41 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[9]));
Q_FDP0UA U42 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[10]));
Q_FDP0UA U43 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[11]));
Q_FDP0UA U44 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[12]));
Q_FDP0UA U45 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[13]));
Q_FDP0UA U46 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[14]));
Q_FDP0UA U47 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[15]));
Q_FDP0UA U48 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[16]));
Q_FDP0UA U49 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[17]));
Q_FDP0UA U50 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[18]));
Q_FDP0UA U51 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[19]));
Q_FDP0UA U52 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[20]));
Q_FDP0UA U53 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[21]));
Q_FDP0UA U54 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[22]));
Q_FDP0UA U55 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[23]));
Q_FDP0UA U56 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[24]));
Q_FDP0UA U57 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[25]));
Q_FDP0UA U58 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[26]));
Q_FDP0UA U59 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[27]));
Q_FDP0UA U60 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[28]));
Q_FDP0UA U61 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[29]));
Q_FDP0UA U62 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[30]));
Q_FDP0UA U63 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[31]));
Q_FDP0UA U64 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[32]));
Q_FDP0UA U65 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[33]));
Q_FDP0UA U66 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[34]));
Q_FDP0UA U67 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[35]));
Q_FDP0UA U68 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[36]));
Q_FDP0UA U69 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[37]));
Q_FDP0UA U70 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[38]));
Q_FDP0UA U71 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[39]));
Q_FDP0UA U72 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[40]));
Q_FDP0UA U73 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[41]));
Q_FDP0UA U74 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[42]));
Q_FDP0UA U75 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[43]));
Q_FDP0UA U76 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[44]));
Q_FDP0UA U77 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[45]));
Q_FDP0UA U78 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[46]));
Q_FDP0UA U79 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[47]));
Q_FDP0UA U80 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[48]));
Q_FDP0UA U81 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[49]));
Q_FDP0UA U82 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[50]));
Q_FDP0UA U83 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[51]));
Q_FDP0UA U84 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[52]));
Q_FDP0UA U85 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[53]));
Q_FDP0UA U86 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[54]));
Q_FDP0UA U87 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[55]));
Q_FDP0UA U88 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[56]));
Q_FDP0UA U89 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[57]));
Q_FDP0UA U90 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[58]));
Q_FDP0UA U91 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[59]));
Q_FDP0UA U92 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[60]));
Q_FDP0UA U93 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[61]));
Q_FDP0UA U94 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[62]));
Q_FDP0UA U95 ( .D(n50), .QTFCLK( ), .Q(pvecEvD[63]));
Q_AN02 U96 ( .A0(n2), .A1(n30), .Z(n21));
Q_AN02 U97 ( .A0(n2), .A1(n32), .Z(n22));
Q_AN02 U98 ( .A0(n2), .A1(n34), .Z(n23));
Q_AN02 U99 ( .A0(n2), .A1(n36), .Z(n24));
Q_AN02 U100 ( .A0(n2), .A1(n38), .Z(n25));
Q_AN02 U101 ( .A0(n2), .A1(n40), .Z(n26));
Q_AN02 U102 ( .A0(n2), .A1(n42), .Z(n27));
Q_AN02 U103 ( .A0(n2), .A1(n44), .Z(n28));
Q_NR02 U104 ( .A0(n7), .A1(rptr[0]), .Z(n29));
Q_XOR2 U105 ( .A0(rptr[8]), .A1(n31), .Z(n30));
Q_AD01HF U106 ( .A0(rptr[7]), .B0(n33), .S(n32), .CO(n31));
Q_AD01HF U107 ( .A0(rptr[6]), .B0(n35), .S(n34), .CO(n33));
Q_AD01HF U108 ( .A0(rptr[5]), .B0(n37), .S(n36), .CO(n35));
Q_AD01HF U109 ( .A0(rptr[4]), .B0(n39), .S(n38), .CO(n37));
Q_AD01HF U110 ( .A0(rptr[3]), .B0(n41), .S(n40), .CO(n39));
Q_AD01HF U111 ( .A0(rptr[2]), .B0(n43), .S(n42), .CO(n41));
Q_AD01HF U112 ( .A0(rptr[1]), .B0(rptr[0]), .S(n44), .CO(n43));
Q_OR03 U113 ( .A0(n48), .A1(n47), .A2(n46), .Z(n45));
Q_OR03 U114 ( .A0(rptr[2]), .A1(rptr[1]), .A2(rptr[0]), .Z(n46));
Q_OR03 U115 ( .A0(rptr[5]), .A1(rptr[4]), .A2(rptr[3]), .Z(n47));
Q_OR03 U116 ( .A0(rptr[8]), .A1(rptr[7]), .A2(rptr[6]), .Z(n48));
Q_FDP0UA U117 ( .D(markN), .QTFCLK( ), .Q(mark));
Q_FDP0UA U118 ( .D(isfBusy), .QTFCLK( ), .Q(isfBusyD));
Q_NR02 U119 ( .A0(nd), .A1(isfBusy), .Z(n53));
Q_INV U120 ( .A(isfBusyD), .Z(n52));
Q_ND02 U121 ( .A0(n53), .A1(n52), .Z(n51));
Q_BUFZP U122 ( .OE(n51), .A(n54), .Z(xcva_top.xc_top.isfWait));
ixc_assign_2 _zz_strnp_0 ( pvec[1:0], _zyevPio[1:0]);
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
