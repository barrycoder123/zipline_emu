
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
wire [63:0] nextClkTime;
wire [63:0] nextClkTimePO;
wire [63:0] nextDutTime;
wire [31:0] delta32;
wire [63:0] nextTime;
wire [10:0] ScMinT;
wire [10:0] delta;
wire [10:0] minT;
wire [10:0] deltaTb;
wire noScale;
wire VCC;
wire TbEQClk;
wire TbLTClk;
wire stopEcm;
wire runClk;
wire [10:0] td1;
wire fclk;
wire [63:0] simTime;
wire [63:0] lastClkTime;
wire zminT;
supply1 n129;
supply0 n557;
Q_BUF U0 ( .A(n129), .Z(noScale));
Q_BUF U1 ( .A(n129), .Z(VCC));
Q_BUF U2 ( .A(n557), .Z(delta32[11]));
Q_BUF U3 ( .A(n557), .Z(delta32[12]));
Q_BUF U4 ( .A(n557), .Z(delta32[13]));
Q_BUF U5 ( .A(n557), .Z(delta32[14]));
Q_BUF U6 ( .A(n557), .Z(delta32[15]));
Q_BUF U7 ( .A(n557), .Z(delta32[16]));
Q_BUF U8 ( .A(n557), .Z(delta32[17]));
Q_BUF U9 ( .A(n557), .Z(delta32[18]));
Q_BUF U10 ( .A(n557), .Z(delta32[19]));
Q_BUF U11 ( .A(n557), .Z(delta32[20]));
Q_BUF U12 ( .A(n557), .Z(delta32[21]));
Q_BUF U13 ( .A(n557), .Z(delta32[22]));
Q_BUF U14 ( .A(n557), .Z(delta32[23]));
Q_BUF U15 ( .A(n557), .Z(delta32[24]));
Q_BUF U16 ( .A(n557), .Z(delta32[25]));
Q_BUF U17 ( .A(n557), .Z(delta32[26]));
Q_BUF U18 ( .A(n557), .Z(delta32[27]));
Q_BUF U19 ( .A(n557), .Z(delta32[28]));
Q_BUF U20 ( .A(n557), .Z(delta32[29]));
Q_BUF U21 ( .A(n557), .Z(delta32[30]));
Q_BUF U22 ( .A(n557), .Z(delta32[31]));
Q_ASSIGN U23 ( .B(minT[0]), .A(ScMinT[0]));
Q_ASSIGN U24 ( .B(minT[1]), .A(ScMinT[1]));
Q_ASSIGN U25 ( .B(minT[2]), .A(ScMinT[2]));
Q_ASSIGN U26 ( .B(minT[3]), .A(ScMinT[3]));
Q_ASSIGN U27 ( .B(minT[4]), .A(ScMinT[4]));
Q_ASSIGN U28 ( .B(minT[5]), .A(ScMinT[5]));
Q_ASSIGN U29 ( .B(minT[6]), .A(ScMinT[6]));
Q_ASSIGN U30 ( .B(minT[7]), .A(ScMinT[7]));
Q_ASSIGN U31 ( .B(minT[8]), .A(ScMinT[8]));
Q_ASSIGN U32 ( .B(minT[9]), .A(ScMinT[9]));
Q_ASSIGN U33 ( .B(minT[10]), .A(ScMinT[10]));
Q_BUF U34 ( .A(delta[0]), .Z(delta32[0]));
Q_BUF U35 ( .A(delta[1]), .Z(delta32[1]));
Q_BUF U36 ( .A(delta[2]), .Z(delta32[2]));
Q_BUF U37 ( .A(delta[3]), .Z(delta32[3]));
Q_BUF U38 ( .A(delta[4]), .Z(delta32[4]));
Q_BUF U39 ( .A(delta[5]), .Z(delta32[5]));
Q_BUF U40 ( .A(delta[6]), .Z(delta32[6]));
Q_BUF U41 ( .A(delta[7]), .Z(delta32[7]));
Q_BUF U42 ( .A(delta[8]), .Z(delta32[8]));
Q_BUF U43 ( .A(delta[9]), .Z(delta32[9]));
Q_BUF U44 ( .A(delta[10]), .Z(delta32[10]));
Q_XOR3 U45 ( .A0(n687), .A1(nextTbTime[10]), .A2(n546), .Z(deltaTb[10]));
Q_AD01 U46 ( .CI(n551), .A0(nextTbTime[9]), .B0(n545), .S(deltaTb[9]), .CO(n687));
Q_FDP0UA U47 ( .D(n622), .QTFCLK( ), .Q(xc_top.mioPIW_0[63]));
Q_FDP0UA U48 ( .D(n623), .QTFCLK( ), .Q(xc_top.mioPIW_0[62]));
Q_FDP0UA U49 ( .D(n624), .QTFCLK( ), .Q(xc_top.mioPIW_0[61]));
Q_FDP0UA U50 ( .D(n625), .QTFCLK( ), .Q(xc_top.mioPIW_0[60]));
Q_FDP0UA U51 ( .D(n626), .QTFCLK( ), .Q(xc_top.mioPIW_0[59]));
Q_FDP0UA U52 ( .D(n627), .QTFCLK( ), .Q(xc_top.mioPIW_0[58]));
Q_FDP0UA U53 ( .D(n628), .QTFCLK( ), .Q(xc_top.mioPIW_0[57]));
Q_FDP0UA U54 ( .D(n629), .QTFCLK( ), .Q(xc_top.mioPIW_0[56]));
Q_FDP0UA U55 ( .D(n630), .QTFCLK( ), .Q(xc_top.mioPIW_0[55]));
Q_FDP0UA U56 ( .D(n631), .QTFCLK( ), .Q(xc_top.mioPIW_0[54]));
Q_FDP0UA U57 ( .D(n632), .QTFCLK( ), .Q(xc_top.mioPIW_0[53]));
Q_FDP0UA U58 ( .D(n633), .QTFCLK( ), .Q(xc_top.mioPIW_0[52]));
Q_FDP0UA U59 ( .D(n634), .QTFCLK( ), .Q(xc_top.mioPIW_0[51]));
Q_FDP0UA U60 ( .D(n635), .QTFCLK( ), .Q(xc_top.mioPIW_0[50]));
Q_FDP0UA U61 ( .D(n636), .QTFCLK( ), .Q(xc_top.mioPIW_0[49]));
Q_FDP0UA U62 ( .D(n637), .QTFCLK( ), .Q(xc_top.mioPIW_0[48]));
Q_FDP0UA U63 ( .D(n638), .QTFCLK( ), .Q(xc_top.mioPIW_0[47]));
Q_FDP0UA U64 ( .D(n639), .QTFCLK( ), .Q(xc_top.mioPIW_0[46]));
Q_FDP0UA U65 ( .D(n640), .QTFCLK( ), .Q(xc_top.mioPIW_0[45]));
Q_FDP0UA U66 ( .D(n641), .QTFCLK( ), .Q(xc_top.mioPIW_0[44]));
Q_FDP0UA U67 ( .D(n642), .QTFCLK( ), .Q(xc_top.mioPIW_0[43]));
Q_FDP0UA U68 ( .D(n643), .QTFCLK( ), .Q(xc_top.mioPIW_0[42]));
Q_FDP0UA U69 ( .D(n644), .QTFCLK( ), .Q(xc_top.mioPIW_0[41]));
Q_FDP0UA U70 ( .D(n645), .QTFCLK( ), .Q(xc_top.mioPIW_0[40]));
Q_FDP0UA U71 ( .D(n646), .QTFCLK( ), .Q(xc_top.mioPIW_0[39]));
Q_FDP0UA U72 ( .D(n647), .QTFCLK( ), .Q(xc_top.mioPIW_0[38]));
Q_FDP0UA U73 ( .D(n648), .QTFCLK( ), .Q(xc_top.mioPIW_0[37]));
Q_FDP0UA U74 ( .D(n649), .QTFCLK( ), .Q(xc_top.mioPIW_0[36]));
Q_FDP0UA U75 ( .D(n650), .QTFCLK( ), .Q(xc_top.mioPIW_0[35]));
Q_FDP0UA U76 ( .D(n651), .QTFCLK( ), .Q(xc_top.mioPIW_0[34]));
Q_FDP0UA U77 ( .D(n652), .QTFCLK( ), .Q(xc_top.mioPIW_0[33]));
Q_FDP0UA U78 ( .D(n653), .QTFCLK( ), .Q(xc_top.mioPIW_0[32]));
Q_FDP0UA U79 ( .D(n654), .QTFCLK( ), .Q(xc_top.mioPIW_0[31]));
Q_FDP0UA U80 ( .D(n655), .QTFCLK( ), .Q(xc_top.mioPIW_0[30]));
Q_FDP0UA U81 ( .D(n656), .QTFCLK( ), .Q(xc_top.mioPIW_0[29]));
Q_FDP0UA U82 ( .D(n657), .QTFCLK( ), .Q(xc_top.mioPIW_0[28]));
Q_FDP0UA U83 ( .D(n658), .QTFCLK( ), .Q(xc_top.mioPIW_0[27]));
Q_FDP0UA U84 ( .D(n659), .QTFCLK( ), .Q(xc_top.mioPIW_0[26]));
Q_FDP0UA U85 ( .D(n660), .QTFCLK( ), .Q(xc_top.mioPIW_0[25]));
Q_FDP0UA U86 ( .D(n661), .QTFCLK( ), .Q(xc_top.mioPIW_0[24]));
Q_FDP0UA U87 ( .D(n662), .QTFCLK( ), .Q(xc_top.mioPIW_0[23]));
Q_FDP0UA U88 ( .D(n663), .QTFCLK( ), .Q(xc_top.mioPIW_0[22]));
Q_FDP0UA U89 ( .D(n664), .QTFCLK( ), .Q(xc_top.mioPIW_0[21]));
Q_FDP0UA U90 ( .D(n665), .QTFCLK( ), .Q(xc_top.mioPIW_0[20]));
Q_FDP0UA U91 ( .D(n666), .QTFCLK( ), .Q(xc_top.mioPIW_0[19]));
Q_FDP0UA U92 ( .D(n667), .QTFCLK( ), .Q(xc_top.mioPIW_0[18]));
Q_FDP0UA U93 ( .D(n668), .QTFCLK( ), .Q(xc_top.mioPIW_0[17]));
Q_FDP0UA U94 ( .D(n669), .QTFCLK( ), .Q(xc_top.mioPIW_0[16]));
Q_FDP0UA U95 ( .D(n670), .QTFCLK( ), .Q(xc_top.mioPIW_0[15]));
Q_FDP0UA U96 ( .D(n671), .QTFCLK( ), .Q(xc_top.mioPIW_0[14]));
Q_FDP0UA U97 ( .D(n672), .QTFCLK( ), .Q(xc_top.mioPIW_0[13]));
Q_FDP0UA U98 ( .D(n673), .QTFCLK( ), .Q(xc_top.mioPIW_0[12]));
Q_FDP0UA U99 ( .D(n674), .QTFCLK( ), .Q(xc_top.mioPIW_0[11]));
Q_FDP0UA U100 ( .D(n675), .QTFCLK( ), .Q(xc_top.mioPIW_0[10]));
Q_FDP0UA U101 ( .D(n676), .QTFCLK( ), .Q(xc_top.mioPIW_0[9]));
Q_FDP0UA U102 ( .D(n677), .QTFCLK( ), .Q(xc_top.mioPIW_0[8]));
Q_FDP0UA U103 ( .D(n678), .QTFCLK( ), .Q(xc_top.mioPIW_0[7]));
Q_FDP0UA U104 ( .D(n679), .QTFCLK( ), .Q(xc_top.mioPIW_0[6]));
Q_FDP0UA U105 ( .D(n680), .QTFCLK( ), .Q(xc_top.mioPIW_0[5]));
Q_FDP0UA U106 ( .D(n681), .QTFCLK( ), .Q(xc_top.mioPIW_0[4]));
Q_FDP0UA U107 ( .D(n682), .QTFCLK( ), .Q(xc_top.mioPIW_0[3]));
Q_FDP0UA U108 ( .D(n683), .QTFCLK( ), .Q(xc_top.mioPIW_0[2]));
Q_FDP0UA U109 ( .D(n684), .QTFCLK( ), .Q(xc_top.mioPIW_0[1]));
Q_FDP0UA U110 ( .D(n685), .QTFCLK( ), .Q(xc_top.mioPIW_0[0]));
Q_FDP0UA U111 ( .D(n558), .QTFCLK( ), .Q(xc_top.mioPIW_1[63]));
Q_FDP0UA U112 ( .D(n559), .QTFCLK( ), .Q(xc_top.mioPIW_1[62]));
Q_FDP0UA U113 ( .D(n560), .QTFCLK( ), .Q(xc_top.mioPIW_1[61]));
Q_FDP0UA U114 ( .D(n561), .QTFCLK( ), .Q(xc_top.mioPIW_1[60]));
Q_FDP0UA U115 ( .D(n562), .QTFCLK( ), .Q(xc_top.mioPIW_1[59]));
Q_FDP0UA U116 ( .D(n563), .QTFCLK( ), .Q(xc_top.mioPIW_1[58]));
Q_FDP0UA U117 ( .D(n564), .QTFCLK( ), .Q(xc_top.mioPIW_1[57]));
Q_FDP0UA U118 ( .D(n565), .QTFCLK( ), .Q(xc_top.mioPIW_1[56]));
Q_FDP0UA U119 ( .D(n566), .QTFCLK( ), .Q(xc_top.mioPIW_1[55]));
Q_FDP0UA U120 ( .D(n567), .QTFCLK( ), .Q(xc_top.mioPIW_1[54]));
Q_FDP0UA U121 ( .D(n568), .QTFCLK( ), .Q(xc_top.mioPIW_1[53]));
Q_FDP0UA U122 ( .D(n569), .QTFCLK( ), .Q(xc_top.mioPIW_1[52]));
Q_FDP0UA U123 ( .D(n570), .QTFCLK( ), .Q(xc_top.mioPIW_1[51]));
Q_FDP0UA U124 ( .D(n571), .QTFCLK( ), .Q(xc_top.mioPIW_1[50]));
Q_FDP0UA U125 ( .D(n572), .QTFCLK( ), .Q(xc_top.mioPIW_1[49]));
Q_FDP0UA U126 ( .D(n573), .QTFCLK( ), .Q(xc_top.mioPIW_1[48]));
Q_FDP0UA U127 ( .D(n574), .QTFCLK( ), .Q(xc_top.mioPIW_1[47]));
Q_FDP0UA U128 ( .D(n575), .QTFCLK( ), .Q(xc_top.mioPIW_1[46]));
Q_FDP0UA U129 ( .D(n576), .QTFCLK( ), .Q(xc_top.mioPIW_1[45]));
Q_FDP0UA U130 ( .D(n577), .QTFCLK( ), .Q(xc_top.mioPIW_1[44]));
Q_FDP0UA U131 ( .D(n578), .QTFCLK( ), .Q(xc_top.mioPIW_1[43]));
Q_FDP0UA U132 ( .D(n579), .QTFCLK( ), .Q(xc_top.mioPIW_1[42]));
Q_FDP0UA U133 ( .D(n580), .QTFCLK( ), .Q(xc_top.mioPIW_1[41]));
Q_FDP0UA U134 ( .D(n581), .QTFCLK( ), .Q(xc_top.mioPIW_1[40]));
Q_FDP0UA U135 ( .D(n582), .QTFCLK( ), .Q(xc_top.mioPIW_1[39]));
Q_FDP0UA U136 ( .D(n583), .QTFCLK( ), .Q(xc_top.mioPIW_1[38]));
Q_FDP0UA U137 ( .D(n584), .QTFCLK( ), .Q(xc_top.mioPIW_1[37]));
Q_FDP0UA U138 ( .D(n585), .QTFCLK( ), .Q(xc_top.mioPIW_1[36]));
Q_FDP0UA U139 ( .D(n586), .QTFCLK( ), .Q(xc_top.mioPIW_1[35]));
Q_FDP0UA U140 ( .D(n587), .QTFCLK( ), .Q(xc_top.mioPIW_1[34]));
Q_FDP0UA U141 ( .D(n588), .QTFCLK( ), .Q(xc_top.mioPIW_1[33]));
Q_FDP0UA U142 ( .D(n589), .QTFCLK( ), .Q(xc_top.mioPIW_1[32]));
Q_FDP0UA U143 ( .D(n590), .QTFCLK( ), .Q(xc_top.mioPIW_1[31]));
Q_FDP0UA U144 ( .D(n591), .QTFCLK( ), .Q(xc_top.mioPIW_1[30]));
Q_FDP0UA U145 ( .D(n592), .QTFCLK( ), .Q(xc_top.mioPIW_1[29]));
Q_FDP0UA U146 ( .D(n593), .QTFCLK( ), .Q(xc_top.mioPIW_1[28]));
Q_FDP0UA U147 ( .D(n594), .QTFCLK( ), .Q(xc_top.mioPIW_1[27]));
Q_FDP0UA U148 ( .D(n595), .QTFCLK( ), .Q(xc_top.mioPIW_1[26]));
Q_FDP0UA U149 ( .D(n596), .QTFCLK( ), .Q(xc_top.mioPIW_1[25]));
Q_FDP0UA U150 ( .D(n597), .QTFCLK( ), .Q(xc_top.mioPIW_1[24]));
Q_FDP0UA U151 ( .D(n598), .QTFCLK( ), .Q(xc_top.mioPIW_1[23]));
Q_FDP0UA U152 ( .D(n599), .QTFCLK( ), .Q(xc_top.mioPIW_1[22]));
Q_FDP0UA U153 ( .D(n600), .QTFCLK( ), .Q(xc_top.mioPIW_1[21]));
Q_FDP0UA U154 ( .D(n601), .QTFCLK( ), .Q(xc_top.mioPIW_1[20]));
Q_FDP0UA U155 ( .D(n602), .QTFCLK( ), .Q(xc_top.mioPIW_1[19]));
Q_FDP0UA U156 ( .D(n603), .QTFCLK( ), .Q(xc_top.mioPIW_1[18]));
Q_FDP0UA U157 ( .D(n604), .QTFCLK( ), .Q(xc_top.mioPIW_1[17]));
Q_FDP0UA U158 ( .D(n605), .QTFCLK( ), .Q(xc_top.mioPIW_1[16]));
Q_FDP0UA U159 ( .D(n606), .QTFCLK( ), .Q(xc_top.mioPIW_1[15]));
Q_FDP0UA U160 ( .D(n607), .QTFCLK( ), .Q(xc_top.mioPIW_1[14]));
Q_FDP0UA U161 ( .D(n608), .QTFCLK( ), .Q(xc_top.mioPIW_1[13]));
Q_FDP0UA U162 ( .D(n609), .QTFCLK( ), .Q(xc_top.mioPIW_1[12]));
Q_FDP0UA U163 ( .D(n610), .QTFCLK( ), .Q(xc_top.mioPIW_1[11]));
Q_FDP0UA U164 ( .D(n611), .QTFCLK( ), .Q(xc_top.mioPIW_1[10]));
Q_FDP0UA U165 ( .D(n612), .QTFCLK( ), .Q(xc_top.mioPIW_1[9]));
Q_FDP0UA U166 ( .D(n613), .QTFCLK( ), .Q(xc_top.mioPIW_1[8]));
Q_FDP0UA U167 ( .D(n614), .QTFCLK( ), .Q(xc_top.mioPIW_1[7]));
Q_FDP0UA U168 ( .D(n615), .QTFCLK( ), .Q(xc_top.mioPIW_1[6]));
Q_FDP0UA U169 ( .D(n616), .QTFCLK( ), .Q(xc_top.mioPIW_1[5]));
Q_FDP0UA U170 ( .D(n617), .QTFCLK( ), .Q(xc_top.mioPIW_1[4]));
Q_FDP0UA U171 ( .D(n618), .QTFCLK( ), .Q(xc_top.mioPIW_1[3]));
Q_FDP0UA U172 ( .D(n619), .QTFCLK( ), .Q(xc_top.mioPIW_1[2]));
Q_FDP0UA U173 ( .D(n620), .QTFCLK( ), .Q(xc_top.mioPIW_1[1]));
Q_FDP0UA U174 ( .D(n621), .QTFCLK( ), .Q(xc_top.mioPIW_1[0]));
Q_OR03 U175 ( .A0(minT[10]), .A1(minT[9]), .A2(minT[8]), .Z(n556));
Q_OR03 U176 ( .A0(minT[7]), .A1(minT[6]), .A2(minT[5]), .Z(n555));
Q_OR03 U177 ( .A0(minT[4]), .A1(minT[3]), .A2(minT[2]), .Z(n554));
Q_OR03 U178 ( .A0(minT[1]), .A1(minT[0]), .A2(n556), .Z(n553));
Q_NR03 U179 ( .A0(n555), .A1(n554), .A2(n553), .Z(n552));
Q_FDP0 zminT_REG  ( .CK(eClk), .D(n552), .Q(zminT), .QN( ));
Q_FDP0 \simTime_REG[63] ( .CK(eClk), .D(nextDutTime[63]), .Q(simTime[63]), .QN( ));
Q_FDP0 \simTime_REG[62] ( .CK(eClk), .D(nextDutTime[62]), .Q(simTime[62]), .QN( ));
Q_FDP0 \simTime_REG[61] ( .CK(eClk), .D(nextDutTime[61]), .Q(simTime[61]), .QN( ));
Q_FDP0 \simTime_REG[60] ( .CK(eClk), .D(nextDutTime[60]), .Q(simTime[60]), .QN( ));
Q_FDP0 \simTime_REG[59] ( .CK(eClk), .D(nextDutTime[59]), .Q(simTime[59]), .QN( ));
Q_FDP0 \simTime_REG[58] ( .CK(eClk), .D(nextDutTime[58]), .Q(simTime[58]), .QN( ));
Q_FDP0 \simTime_REG[57] ( .CK(eClk), .D(nextDutTime[57]), .Q(simTime[57]), .QN( ));
Q_FDP0 \simTime_REG[56] ( .CK(eClk), .D(nextDutTime[56]), .Q(simTime[56]), .QN( ));
Q_FDP0 \simTime_REG[55] ( .CK(eClk), .D(nextDutTime[55]), .Q(simTime[55]), .QN( ));
Q_FDP0 \simTime_REG[54] ( .CK(eClk), .D(nextDutTime[54]), .Q(simTime[54]), .QN( ));
Q_FDP0 \simTime_REG[53] ( .CK(eClk), .D(nextDutTime[53]), .Q(simTime[53]), .QN( ));
Q_FDP0 \simTime_REG[52] ( .CK(eClk), .D(nextDutTime[52]), .Q(simTime[52]), .QN( ));
Q_FDP0 \simTime_REG[51] ( .CK(eClk), .D(nextDutTime[51]), .Q(simTime[51]), .QN( ));
Q_FDP0 \simTime_REG[50] ( .CK(eClk), .D(nextDutTime[50]), .Q(simTime[50]), .QN( ));
Q_FDP0 \simTime_REG[49] ( .CK(eClk), .D(nextDutTime[49]), .Q(simTime[49]), .QN( ));
Q_FDP0 \simTime_REG[48] ( .CK(eClk), .D(nextDutTime[48]), .Q(simTime[48]), .QN( ));
Q_FDP0 \simTime_REG[47] ( .CK(eClk), .D(nextDutTime[47]), .Q(simTime[47]), .QN( ));
Q_FDP0 \simTime_REG[46] ( .CK(eClk), .D(nextDutTime[46]), .Q(simTime[46]), .QN( ));
Q_FDP0 \simTime_REG[45] ( .CK(eClk), .D(nextDutTime[45]), .Q(simTime[45]), .QN( ));
Q_FDP0 \simTime_REG[44] ( .CK(eClk), .D(nextDutTime[44]), .Q(simTime[44]), .QN( ));
Q_FDP0 \simTime_REG[43] ( .CK(eClk), .D(nextDutTime[43]), .Q(simTime[43]), .QN( ));
Q_FDP0 \simTime_REG[42] ( .CK(eClk), .D(nextDutTime[42]), .Q(simTime[42]), .QN( ));
Q_FDP0 \simTime_REG[41] ( .CK(eClk), .D(nextDutTime[41]), .Q(simTime[41]), .QN( ));
Q_FDP0 \simTime_REG[40] ( .CK(eClk), .D(nextDutTime[40]), .Q(simTime[40]), .QN( ));
Q_FDP0 \simTime_REG[39] ( .CK(eClk), .D(nextDutTime[39]), .Q(simTime[39]), .QN( ));
Q_FDP0 \simTime_REG[38] ( .CK(eClk), .D(nextDutTime[38]), .Q(simTime[38]), .QN( ));
Q_FDP0 \simTime_REG[37] ( .CK(eClk), .D(nextDutTime[37]), .Q(simTime[37]), .QN( ));
Q_FDP0 \simTime_REG[36] ( .CK(eClk), .D(nextDutTime[36]), .Q(simTime[36]), .QN( ));
Q_FDP0 \simTime_REG[35] ( .CK(eClk), .D(nextDutTime[35]), .Q(simTime[35]), .QN( ));
Q_FDP0 \simTime_REG[34] ( .CK(eClk), .D(nextDutTime[34]), .Q(simTime[34]), .QN( ));
Q_FDP0 \simTime_REG[33] ( .CK(eClk), .D(nextDutTime[33]), .Q(simTime[33]), .QN( ));
Q_FDP0 \simTime_REG[32] ( .CK(eClk), .D(nextDutTime[32]), .Q(simTime[32]), .QN( ));
Q_FDP0 \simTime_REG[31] ( .CK(eClk), .D(nextDutTime[31]), .Q(simTime[31]), .QN( ));
Q_FDP0 \simTime_REG[30] ( .CK(eClk), .D(nextDutTime[30]), .Q(simTime[30]), .QN( ));
Q_FDP0 \simTime_REG[29] ( .CK(eClk), .D(nextDutTime[29]), .Q(simTime[29]), .QN( ));
Q_FDP0 \simTime_REG[28] ( .CK(eClk), .D(nextDutTime[28]), .Q(simTime[28]), .QN( ));
Q_FDP0 \simTime_REG[27] ( .CK(eClk), .D(nextDutTime[27]), .Q(simTime[27]), .QN( ));
Q_FDP0 \simTime_REG[26] ( .CK(eClk), .D(nextDutTime[26]), .Q(simTime[26]), .QN( ));
Q_FDP0 \simTime_REG[25] ( .CK(eClk), .D(nextDutTime[25]), .Q(simTime[25]), .QN( ));
Q_FDP0 \simTime_REG[24] ( .CK(eClk), .D(nextDutTime[24]), .Q(simTime[24]), .QN( ));
Q_FDP0 \simTime_REG[23] ( .CK(eClk), .D(nextDutTime[23]), .Q(simTime[23]), .QN( ));
Q_FDP0 \simTime_REG[22] ( .CK(eClk), .D(nextDutTime[22]), .Q(simTime[22]), .QN( ));
Q_FDP0 \simTime_REG[21] ( .CK(eClk), .D(nextDutTime[21]), .Q(simTime[21]), .QN( ));
Q_FDP0 \simTime_REG[20] ( .CK(eClk), .D(nextDutTime[20]), .Q(simTime[20]), .QN( ));
Q_FDP0 \simTime_REG[19] ( .CK(eClk), .D(nextDutTime[19]), .Q(simTime[19]), .QN( ));
Q_FDP0 \simTime_REG[18] ( .CK(eClk), .D(nextDutTime[18]), .Q(simTime[18]), .QN( ));
Q_FDP0 \simTime_REG[17] ( .CK(eClk), .D(nextDutTime[17]), .Q(simTime[17]), .QN( ));
Q_FDP0 \simTime_REG[16] ( .CK(eClk), .D(nextDutTime[16]), .Q(simTime[16]), .QN( ));
Q_FDP0 \simTime_REG[15] ( .CK(eClk), .D(nextDutTime[15]), .Q(simTime[15]), .QN( ));
Q_FDP0 \simTime_REG[14] ( .CK(eClk), .D(nextDutTime[14]), .Q(simTime[14]), .QN( ));
Q_FDP0 \simTime_REG[13] ( .CK(eClk), .D(nextDutTime[13]), .Q(simTime[13]), .QN( ));
Q_FDP0 \simTime_REG[12] ( .CK(eClk), .D(nextDutTime[12]), .Q(simTime[12]), .QN( ));
Q_FDP0 \simTime_REG[11] ( .CK(eClk), .D(nextDutTime[11]), .Q(simTime[11]), .QN( ));
Q_FDP0 \simTime_REG[10] ( .CK(eClk), .D(nextDutTime[10]), .Q(simTime[10]), .QN(n546));
Q_FDP0 \simTime_REG[9] ( .CK(eClk), .D(nextDutTime[9]), .Q(simTime[9]), .QN(n545));
Q_FDP0 \simTime_REG[8] ( .CK(eClk), .D(nextDutTime[8]), .Q(simTime[8]), .QN(n544));
Q_FDP0 \simTime_REG[7] ( .CK(eClk), .D(nextDutTime[7]), .Q(simTime[7]), .QN(n543));
Q_FDP0 \simTime_REG[6] ( .CK(eClk), .D(nextDutTime[6]), .Q(simTime[6]), .QN(n542));
Q_FDP0 \simTime_REG[5] ( .CK(eClk), .D(nextDutTime[5]), .Q(simTime[5]), .QN(n541));
Q_FDP0 \simTime_REG[4] ( .CK(eClk), .D(nextDutTime[4]), .Q(simTime[4]), .QN(n540));
Q_FDP0 \simTime_REG[3] ( .CK(eClk), .D(nextDutTime[3]), .Q(simTime[3]), .QN(n539));
Q_FDP0 \simTime_REG[2] ( .CK(eClk), .D(nextDutTime[2]), .Q(simTime[2]), .QN(n538));
Q_FDP0 \simTime_REG[1] ( .CK(eClk), .D(nextDutTime[1]), .Q(simTime[1]), .QN(n537));
Q_FDP0 \simTime_REG[0] ( .CK(eClk), .D(nextDutTime[0]), .Q(simTime[0]), .QN(n536));
Q_MX02 U245 ( .S(runClk), .A0(nextTbTime[0]), .A1(nextClkTime[0]), .Z(nextDutTime[0]));
Q_MX02 U246 ( .S(runClk), .A0(nextTbTime[1]), .A1(nextClkTime[1]), .Z(nextDutTime[1]));
Q_MX02 U247 ( .S(runClk), .A0(nextTbTime[2]), .A1(nextClkTime[2]), .Z(nextDutTime[2]));
Q_MX02 U248 ( .S(runClk), .A0(nextTbTime[3]), .A1(nextClkTime[3]), .Z(nextDutTime[3]));
Q_MX02 U249 ( .S(runClk), .A0(nextTbTime[4]), .A1(nextClkTime[4]), .Z(nextDutTime[4]));
Q_MX02 U250 ( .S(runClk), .A0(nextTbTime[5]), .A1(nextClkTime[5]), .Z(nextDutTime[5]));
Q_MX02 U251 ( .S(runClk), .A0(nextTbTime[6]), .A1(nextClkTime[6]), .Z(nextDutTime[6]));
Q_MX02 U252 ( .S(runClk), .A0(nextTbTime[7]), .A1(nextClkTime[7]), .Z(nextDutTime[7]));
Q_MX02 U253 ( .S(runClk), .A0(nextTbTime[8]), .A1(nextClkTime[8]), .Z(nextDutTime[8]));
Q_MX02 U254 ( .S(runClk), .A0(nextTbTime[9]), .A1(nextClkTime[9]), .Z(nextDutTime[9]));
Q_MX02 U255 ( .S(runClk), .A0(nextTbTime[10]), .A1(nextClkTime[10]), .Z(nextDutTime[10]));
Q_MX02 U256 ( .S(runClk), .A0(nextTbTime[11]), .A1(nextClkTime[11]), .Z(nextDutTime[11]));
Q_MX02 U257 ( .S(runClk), .A0(nextTbTime[12]), .A1(nextClkTime[12]), .Z(nextDutTime[12]));
Q_MX02 U258 ( .S(runClk), .A0(nextTbTime[13]), .A1(nextClkTime[13]), .Z(nextDutTime[13]));
Q_MX02 U259 ( .S(runClk), .A0(nextTbTime[14]), .A1(nextClkTime[14]), .Z(nextDutTime[14]));
Q_MX02 U260 ( .S(runClk), .A0(nextTbTime[15]), .A1(nextClkTime[15]), .Z(nextDutTime[15]));
Q_MX02 U261 ( .S(runClk), .A0(nextTbTime[16]), .A1(nextClkTime[16]), .Z(nextDutTime[16]));
Q_MX02 U262 ( .S(runClk), .A0(nextTbTime[17]), .A1(nextClkTime[17]), .Z(nextDutTime[17]));
Q_MX02 U263 ( .S(runClk), .A0(nextTbTime[18]), .A1(nextClkTime[18]), .Z(nextDutTime[18]));
Q_MX02 U264 ( .S(runClk), .A0(nextTbTime[19]), .A1(nextClkTime[19]), .Z(nextDutTime[19]));
Q_MX02 U265 ( .S(runClk), .A0(nextTbTime[20]), .A1(nextClkTime[20]), .Z(nextDutTime[20]));
Q_MX02 U266 ( .S(runClk), .A0(nextTbTime[21]), .A1(nextClkTime[21]), .Z(nextDutTime[21]));
Q_MX02 U267 ( .S(runClk), .A0(nextTbTime[22]), .A1(nextClkTime[22]), .Z(nextDutTime[22]));
Q_MX02 U268 ( .S(runClk), .A0(nextTbTime[23]), .A1(nextClkTime[23]), .Z(nextDutTime[23]));
Q_MX02 U269 ( .S(runClk), .A0(nextTbTime[24]), .A1(nextClkTime[24]), .Z(nextDutTime[24]));
Q_MX02 U270 ( .S(runClk), .A0(nextTbTime[25]), .A1(nextClkTime[25]), .Z(nextDutTime[25]));
Q_MX02 U271 ( .S(runClk), .A0(nextTbTime[26]), .A1(nextClkTime[26]), .Z(nextDutTime[26]));
Q_MX02 U272 ( .S(runClk), .A0(nextTbTime[27]), .A1(nextClkTime[27]), .Z(nextDutTime[27]));
Q_MX02 U273 ( .S(runClk), .A0(nextTbTime[28]), .A1(nextClkTime[28]), .Z(nextDutTime[28]));
Q_MX02 U274 ( .S(runClk), .A0(nextTbTime[29]), .A1(nextClkTime[29]), .Z(nextDutTime[29]));
Q_MX02 U275 ( .S(runClk), .A0(nextTbTime[30]), .A1(nextClkTime[30]), .Z(nextDutTime[30]));
Q_MX02 U276 ( .S(runClk), .A0(nextTbTime[31]), .A1(nextClkTime[31]), .Z(nextDutTime[31]));
Q_MX02 U277 ( .S(runClk), .A0(nextTbTime[32]), .A1(nextClkTime[32]), .Z(nextDutTime[32]));
Q_MX02 U278 ( .S(runClk), .A0(nextTbTime[33]), .A1(nextClkTime[33]), .Z(nextDutTime[33]));
Q_MX02 U279 ( .S(runClk), .A0(nextTbTime[34]), .A1(nextClkTime[34]), .Z(nextDutTime[34]));
Q_MX02 U280 ( .S(runClk), .A0(nextTbTime[35]), .A1(nextClkTime[35]), .Z(nextDutTime[35]));
Q_MX02 U281 ( .S(runClk), .A0(nextTbTime[36]), .A1(nextClkTime[36]), .Z(nextDutTime[36]));
Q_MX02 U282 ( .S(runClk), .A0(nextTbTime[37]), .A1(nextClkTime[37]), .Z(nextDutTime[37]));
Q_MX02 U283 ( .S(runClk), .A0(nextTbTime[38]), .A1(nextClkTime[38]), .Z(nextDutTime[38]));
Q_MX02 U284 ( .S(runClk), .A0(nextTbTime[39]), .A1(nextClkTime[39]), .Z(nextDutTime[39]));
Q_MX02 U285 ( .S(runClk), .A0(nextTbTime[40]), .A1(nextClkTime[40]), .Z(nextDutTime[40]));
Q_MX02 U286 ( .S(runClk), .A0(nextTbTime[41]), .A1(nextClkTime[41]), .Z(nextDutTime[41]));
Q_MX02 U287 ( .S(runClk), .A0(nextTbTime[42]), .A1(nextClkTime[42]), .Z(nextDutTime[42]));
Q_MX02 U288 ( .S(runClk), .A0(nextTbTime[43]), .A1(nextClkTime[43]), .Z(nextDutTime[43]));
Q_MX02 U289 ( .S(runClk), .A0(nextTbTime[44]), .A1(nextClkTime[44]), .Z(nextDutTime[44]));
Q_MX02 U290 ( .S(runClk), .A0(nextTbTime[45]), .A1(nextClkTime[45]), .Z(nextDutTime[45]));
Q_MX02 U291 ( .S(runClk), .A0(nextTbTime[46]), .A1(nextClkTime[46]), .Z(nextDutTime[46]));
Q_MX02 U292 ( .S(runClk), .A0(nextTbTime[47]), .A1(nextClkTime[47]), .Z(nextDutTime[47]));
Q_MX02 U293 ( .S(runClk), .A0(nextTbTime[48]), .A1(nextClkTime[48]), .Z(nextDutTime[48]));
Q_MX02 U294 ( .S(runClk), .A0(nextTbTime[49]), .A1(nextClkTime[49]), .Z(nextDutTime[49]));
Q_MX02 U295 ( .S(runClk), .A0(nextTbTime[50]), .A1(nextClkTime[50]), .Z(nextDutTime[50]));
Q_MX02 U296 ( .S(runClk), .A0(nextTbTime[51]), .A1(nextClkTime[51]), .Z(nextDutTime[51]));
Q_MX02 U297 ( .S(runClk), .A0(nextTbTime[52]), .A1(nextClkTime[52]), .Z(nextDutTime[52]));
Q_MX02 U298 ( .S(runClk), .A0(nextTbTime[53]), .A1(nextClkTime[53]), .Z(nextDutTime[53]));
Q_MX02 U299 ( .S(runClk), .A0(nextTbTime[54]), .A1(nextClkTime[54]), .Z(nextDutTime[54]));
Q_MX02 U300 ( .S(runClk), .A0(nextTbTime[55]), .A1(nextClkTime[55]), .Z(nextDutTime[55]));
Q_MX02 U301 ( .S(runClk), .A0(nextTbTime[56]), .A1(nextClkTime[56]), .Z(nextDutTime[56]));
Q_MX02 U302 ( .S(runClk), .A0(nextTbTime[57]), .A1(nextClkTime[57]), .Z(nextDutTime[57]));
Q_MX02 U303 ( .S(runClk), .A0(nextTbTime[58]), .A1(nextClkTime[58]), .Z(nextDutTime[58]));
Q_MX02 U304 ( .S(runClk), .A0(nextTbTime[59]), .A1(nextClkTime[59]), .Z(nextDutTime[59]));
Q_MX02 U305 ( .S(runClk), .A0(nextTbTime[60]), .A1(nextClkTime[60]), .Z(nextDutTime[60]));
Q_MX02 U306 ( .S(runClk), .A0(nextTbTime[61]), .A1(nextClkTime[61]), .Z(nextDutTime[61]));
Q_MX02 U307 ( .S(runClk), .A0(nextTbTime[62]), .A1(nextClkTime[62]), .Z(nextDutTime[62]));
Q_MX02 U308 ( .S(runClk), .A0(nextTbTime[63]), .A1(nextClkTime[63]), .Z(nextDutTime[63]));
Q_FDP0 \lastClkTime_REG[63] ( .CK(eClk), .D(nextDutTime[63]), .Q(lastClkTime[63]), .QN( ));
Q_FDP0 \lastClkTime_REG[62] ( .CK(eClk), .D(nextDutTime[62]), .Q(lastClkTime[62]), .QN( ));
Q_FDP0 \lastClkTime_REG[61] ( .CK(eClk), .D(nextDutTime[61]), .Q(lastClkTime[61]), .QN( ));
Q_FDP0 \lastClkTime_REG[60] ( .CK(eClk), .D(nextDutTime[60]), .Q(lastClkTime[60]), .QN( ));
Q_FDP0 \lastClkTime_REG[59] ( .CK(eClk), .D(nextDutTime[59]), .Q(lastClkTime[59]), .QN( ));
Q_FDP0 \lastClkTime_REG[58] ( .CK(eClk), .D(nextDutTime[58]), .Q(lastClkTime[58]), .QN( ));
Q_FDP0 \lastClkTime_REG[57] ( .CK(eClk), .D(nextDutTime[57]), .Q(lastClkTime[57]), .QN( ));
Q_FDP0 \lastClkTime_REG[56] ( .CK(eClk), .D(nextDutTime[56]), .Q(lastClkTime[56]), .QN( ));
Q_FDP0 \lastClkTime_REG[55] ( .CK(eClk), .D(nextDutTime[55]), .Q(lastClkTime[55]), .QN( ));
Q_FDP0 \lastClkTime_REG[54] ( .CK(eClk), .D(nextDutTime[54]), .Q(lastClkTime[54]), .QN( ));
Q_FDP0 \lastClkTime_REG[53] ( .CK(eClk), .D(nextDutTime[53]), .Q(lastClkTime[53]), .QN( ));
Q_FDP0 \lastClkTime_REG[52] ( .CK(eClk), .D(nextDutTime[52]), .Q(lastClkTime[52]), .QN( ));
Q_FDP0 \lastClkTime_REG[51] ( .CK(eClk), .D(nextDutTime[51]), .Q(lastClkTime[51]), .QN( ));
Q_FDP0 \lastClkTime_REG[50] ( .CK(eClk), .D(nextDutTime[50]), .Q(lastClkTime[50]), .QN( ));
Q_FDP0 \lastClkTime_REG[49] ( .CK(eClk), .D(nextDutTime[49]), .Q(lastClkTime[49]), .QN( ));
Q_FDP0 \lastClkTime_REG[48] ( .CK(eClk), .D(nextDutTime[48]), .Q(lastClkTime[48]), .QN( ));
Q_FDP0 \lastClkTime_REG[47] ( .CK(eClk), .D(nextDutTime[47]), .Q(lastClkTime[47]), .QN( ));
Q_FDP0 \lastClkTime_REG[46] ( .CK(eClk), .D(nextDutTime[46]), .Q(lastClkTime[46]), .QN( ));
Q_FDP0 \lastClkTime_REG[45] ( .CK(eClk), .D(nextDutTime[45]), .Q(lastClkTime[45]), .QN( ));
Q_FDP0 \lastClkTime_REG[44] ( .CK(eClk), .D(nextDutTime[44]), .Q(lastClkTime[44]), .QN( ));
Q_FDP0 \lastClkTime_REG[43] ( .CK(eClk), .D(nextDutTime[43]), .Q(lastClkTime[43]), .QN( ));
Q_FDP0 \lastClkTime_REG[42] ( .CK(eClk), .D(nextDutTime[42]), .Q(lastClkTime[42]), .QN( ));
Q_FDP0 \lastClkTime_REG[41] ( .CK(eClk), .D(nextDutTime[41]), .Q(lastClkTime[41]), .QN( ));
Q_FDP0 \lastClkTime_REG[40] ( .CK(eClk), .D(nextDutTime[40]), .Q(lastClkTime[40]), .QN( ));
Q_FDP0 \lastClkTime_REG[39] ( .CK(eClk), .D(nextDutTime[39]), .Q(lastClkTime[39]), .QN( ));
Q_FDP0 \lastClkTime_REG[38] ( .CK(eClk), .D(nextDutTime[38]), .Q(lastClkTime[38]), .QN( ));
Q_FDP0 \lastClkTime_REG[37] ( .CK(eClk), .D(nextDutTime[37]), .Q(lastClkTime[37]), .QN( ));
Q_FDP0 \lastClkTime_REG[36] ( .CK(eClk), .D(nextDutTime[36]), .Q(lastClkTime[36]), .QN( ));
Q_FDP0 \lastClkTime_REG[35] ( .CK(eClk), .D(nextDutTime[35]), .Q(lastClkTime[35]), .QN( ));
Q_FDP0 \lastClkTime_REG[34] ( .CK(eClk), .D(nextDutTime[34]), .Q(lastClkTime[34]), .QN( ));
Q_FDP0 \lastClkTime_REG[33] ( .CK(eClk), .D(nextDutTime[33]), .Q(lastClkTime[33]), .QN( ));
Q_FDP0 \lastClkTime_REG[32] ( .CK(eClk), .D(nextDutTime[32]), .Q(lastClkTime[32]), .QN( ));
Q_FDP0 \lastClkTime_REG[31] ( .CK(eClk), .D(nextDutTime[31]), .Q(lastClkTime[31]), .QN( ));
Q_FDP0 \lastClkTime_REG[30] ( .CK(eClk), .D(nextDutTime[30]), .Q(lastClkTime[30]), .QN( ));
Q_FDP0 \lastClkTime_REG[29] ( .CK(eClk), .D(nextDutTime[29]), .Q(lastClkTime[29]), .QN( ));
Q_FDP0 \lastClkTime_REG[28] ( .CK(eClk), .D(nextDutTime[28]), .Q(lastClkTime[28]), .QN( ));
Q_FDP0 \lastClkTime_REG[27] ( .CK(eClk), .D(nextDutTime[27]), .Q(lastClkTime[27]), .QN( ));
Q_FDP0 \lastClkTime_REG[26] ( .CK(eClk), .D(nextDutTime[26]), .Q(lastClkTime[26]), .QN( ));
Q_FDP0 \lastClkTime_REG[25] ( .CK(eClk), .D(nextDutTime[25]), .Q(lastClkTime[25]), .QN( ));
Q_FDP0 \lastClkTime_REG[24] ( .CK(eClk), .D(nextDutTime[24]), .Q(lastClkTime[24]), .QN( ));
Q_FDP0 \lastClkTime_REG[23] ( .CK(eClk), .D(nextDutTime[23]), .Q(lastClkTime[23]), .QN( ));
Q_FDP0 \lastClkTime_REG[22] ( .CK(eClk), .D(nextDutTime[22]), .Q(lastClkTime[22]), .QN( ));
Q_FDP0 \lastClkTime_REG[21] ( .CK(eClk), .D(nextDutTime[21]), .Q(lastClkTime[21]), .QN( ));
Q_FDP0 \lastClkTime_REG[20] ( .CK(eClk), .D(nextDutTime[20]), .Q(lastClkTime[20]), .QN( ));
Q_FDP0 \lastClkTime_REG[19] ( .CK(eClk), .D(nextDutTime[19]), .Q(lastClkTime[19]), .QN( ));
Q_FDP0 \lastClkTime_REG[18] ( .CK(eClk), .D(nextDutTime[18]), .Q(lastClkTime[18]), .QN( ));
Q_FDP0 \lastClkTime_REG[17] ( .CK(eClk), .D(nextDutTime[17]), .Q(lastClkTime[17]), .QN( ));
Q_FDP0 \lastClkTime_REG[16] ( .CK(eClk), .D(nextDutTime[16]), .Q(lastClkTime[16]), .QN( ));
Q_FDP0 \lastClkTime_REG[15] ( .CK(eClk), .D(nextDutTime[15]), .Q(lastClkTime[15]), .QN( ));
Q_FDP0 \lastClkTime_REG[14] ( .CK(eClk), .D(nextDutTime[14]), .Q(lastClkTime[14]), .QN( ));
Q_FDP0 \lastClkTime_REG[13] ( .CK(eClk), .D(nextDutTime[13]), .Q(lastClkTime[13]), .QN( ));
Q_FDP0 \lastClkTime_REG[12] ( .CK(eClk), .D(nextDutTime[12]), .Q(lastClkTime[12]), .QN( ));
Q_FDP0 \lastClkTime_REG[11] ( .CK(eClk), .D(nextDutTime[11]), .Q(lastClkTime[11]), .QN( ));
Q_FDP0 \lastClkTime_REG[10] ( .CK(eClk), .D(nextDutTime[10]), .Q(lastClkTime[10]), .QN( ));
Q_FDP0 \lastClkTime_REG[9] ( .CK(eClk), .D(nextDutTime[9]), .Q(lastClkTime[9]), .QN( ));
Q_FDP0 \lastClkTime_REG[8] ( .CK(eClk), .D(nextDutTime[8]), .Q(lastClkTime[8]), .QN( ));
Q_FDP0 \lastClkTime_REG[7] ( .CK(eClk), .D(nextDutTime[7]), .Q(lastClkTime[7]), .QN( ));
Q_FDP0 \lastClkTime_REG[6] ( .CK(eClk), .D(nextDutTime[6]), .Q(lastClkTime[6]), .QN( ));
Q_FDP0 \lastClkTime_REG[5] ( .CK(eClk), .D(nextDutTime[5]), .Q(lastClkTime[5]), .QN( ));
Q_FDP0 \lastClkTime_REG[4] ( .CK(eClk), .D(nextDutTime[4]), .Q(lastClkTime[4]), .QN( ));
Q_FDP0 \lastClkTime_REG[3] ( .CK(eClk), .D(nextDutTime[3]), .Q(lastClkTime[3]), .QN( ));
Q_FDP0 \lastClkTime_REG[2] ( .CK(eClk), .D(nextDutTime[2]), .Q(lastClkTime[2]), .QN( ));
Q_FDP0 \lastClkTime_REG[1] ( .CK(eClk), .D(nextDutTime[1]), .Q(lastClkTime[1]), .QN( ));
Q_FDP0 \lastClkTime_REG[0] ( .CK(eClk), .D(nextDutTime[0]), .Q(lastClkTime[0]), .QN( ));
Q_MX02 U373 ( .S(runClk), .A0(deltaTb[10]), .A1(minT[10]), .Z(delta[10]));
Q_MX02 U374 ( .S(runClk), .A0(deltaTb[9]), .A1(minT[9]), .Z(delta[9]));
Q_MX02 U375 ( .S(runClk), .A0(deltaTb[8]), .A1(minT[8]), .Z(delta[8]));
Q_MX02 U376 ( .S(runClk), .A0(deltaTb[7]), .A1(minT[7]), .Z(delta[7]));
Q_MX02 U377 ( .S(runClk), .A0(deltaTb[6]), .A1(minT[6]), .Z(delta[6]));
Q_MX02 U378 ( .S(runClk), .A0(deltaTb[5]), .A1(minT[5]), .Z(delta[5]));
Q_MX02 U379 ( .S(runClk), .A0(deltaTb[4]), .A1(minT[4]), .Z(delta[4]));
Q_MX02 U380 ( .S(runClk), .A0(deltaTb[3]), .A1(minT[3]), .Z(delta[3]));
Q_MX02 U381 ( .S(runClk), .A0(deltaTb[2]), .A1(minT[2]), .Z(delta[2]));
Q_MX02 U382 ( .S(runClk), .A0(deltaTb[1]), .A1(minT[1]), .Z(delta[1]));
Q_MX02 U383 ( .S(runClk), .A0(deltaTb[0]), .A1(minT[0]), .Z(delta[0]));
ixc_assign_64 _zz_strnp_0 ( nextTime[63:0], nextDutTime[63:0]);
axis_eclk ap ( eClk, VCC);
Q_AD01HF U386 ( .A0(lastClkTime[0]), .B0(minT[0]), .S(nextClkTime[0]), .CO(n130));
Q_AD02 U387 ( .CI(n130), .A0(lastClkTime[1]), .A1(lastClkTime[2]), .B0(minT[1]), .B1(minT[2]), .S0(nextClkTime[1]), .S1(nextClkTime[2]), .CO(n131));
Q_AD02 U388 ( .CI(n131), .A0(lastClkTime[3]), .A1(lastClkTime[4]), .B0(minT[3]), .B1(minT[4]), .S0(nextClkTime[3]), .S1(nextClkTime[4]), .CO(n132));
Q_AD02 U389 ( .CI(n132), .A0(lastClkTime[5]), .A1(lastClkTime[6]), .B0(minT[5]), .B1(minT[6]), .S0(nextClkTime[5]), .S1(nextClkTime[6]), .CO(n133));
Q_AD02 U390 ( .CI(n133), .A0(lastClkTime[7]), .A1(lastClkTime[8]), .B0(minT[7]), .B1(minT[8]), .S0(nextClkTime[7]), .S1(nextClkTime[8]), .CO(n134));
Q_AD02 U391 ( .CI(n134), .A0(lastClkTime[9]), .A1(lastClkTime[10]), .B0(minT[9]), .B1(minT[10]), .S0(nextClkTime[9]), .S1(nextClkTime[10]), .CO(n135));
Q_AD01HF U392 ( .A0(lastClkTime[11]), .B0(n135), .S(nextClkTime[11]), .CO(n136));
Q_AD01HF U393 ( .A0(lastClkTime[12]), .B0(n136), .S(nextClkTime[12]), .CO(n137));
Q_AD01HF U394 ( .A0(lastClkTime[13]), .B0(n137), .S(nextClkTime[13]), .CO(n138));
Q_AD01HF U395 ( .A0(lastClkTime[14]), .B0(n138), .S(nextClkTime[14]), .CO(n139));
Q_AD01HF U396 ( .A0(lastClkTime[15]), .B0(n139), .S(nextClkTime[15]), .CO(n140));
Q_AD01HF U397 ( .A0(lastClkTime[16]), .B0(n140), .S(nextClkTime[16]), .CO(n141));
Q_AD01HF U398 ( .A0(lastClkTime[17]), .B0(n141), .S(nextClkTime[17]), .CO(n142));
Q_AD01HF U399 ( .A0(lastClkTime[18]), .B0(n142), .S(nextClkTime[18]), .CO(n143));
Q_AD01HF U400 ( .A0(lastClkTime[19]), .B0(n143), .S(nextClkTime[19]), .CO(n144));
Q_AD01HF U401 ( .A0(lastClkTime[20]), .B0(n144), .S(nextClkTime[20]), .CO(n145));
Q_AD01HF U402 ( .A0(lastClkTime[21]), .B0(n145), .S(nextClkTime[21]), .CO(n146));
Q_AD01HF U403 ( .A0(lastClkTime[22]), .B0(n146), .S(nextClkTime[22]), .CO(n147));
Q_AD01HF U404 ( .A0(lastClkTime[23]), .B0(n147), .S(nextClkTime[23]), .CO(n148));
Q_AD01HF U405 ( .A0(lastClkTime[24]), .B0(n148), .S(nextClkTime[24]), .CO(n149));
Q_AD01HF U406 ( .A0(lastClkTime[25]), .B0(n149), .S(nextClkTime[25]), .CO(n150));
Q_AD01HF U407 ( .A0(lastClkTime[26]), .B0(n150), .S(nextClkTime[26]), .CO(n151));
Q_AD01HF U408 ( .A0(lastClkTime[27]), .B0(n151), .S(nextClkTime[27]), .CO(n152));
Q_AD01HF U409 ( .A0(lastClkTime[28]), .B0(n152), .S(nextClkTime[28]), .CO(n153));
Q_AD01HF U410 ( .A0(lastClkTime[29]), .B0(n153), .S(nextClkTime[29]), .CO(n154));
Q_AD01HF U411 ( .A0(lastClkTime[30]), .B0(n154), .S(nextClkTime[30]), .CO(n155));
Q_AD01HF U412 ( .A0(lastClkTime[31]), .B0(n155), .S(nextClkTime[31]), .CO(n156));
Q_AD01HF U413 ( .A0(lastClkTime[32]), .B0(n156), .S(nextClkTime[32]), .CO(n157));
Q_AD01HF U414 ( .A0(lastClkTime[33]), .B0(n157), .S(nextClkTime[33]), .CO(n158));
Q_AD01HF U415 ( .A0(lastClkTime[34]), .B0(n158), .S(nextClkTime[34]), .CO(n159));
Q_AD01HF U416 ( .A0(lastClkTime[35]), .B0(n159), .S(nextClkTime[35]), .CO(n160));
Q_AD01HF U417 ( .A0(lastClkTime[36]), .B0(n160), .S(nextClkTime[36]), .CO(n161));
Q_AD01HF U418 ( .A0(lastClkTime[37]), .B0(n161), .S(nextClkTime[37]), .CO(n162));
Q_AD01HF U419 ( .A0(lastClkTime[38]), .B0(n162), .S(nextClkTime[38]), .CO(n163));
Q_AD01HF U420 ( .A0(lastClkTime[39]), .B0(n163), .S(nextClkTime[39]), .CO(n164));
Q_AD01HF U421 ( .A0(lastClkTime[40]), .B0(n164), .S(nextClkTime[40]), .CO(n165));
Q_AD01HF U422 ( .A0(lastClkTime[41]), .B0(n165), .S(nextClkTime[41]), .CO(n166));
Q_AD01HF U423 ( .A0(lastClkTime[42]), .B0(n166), .S(nextClkTime[42]), .CO(n167));
Q_AD01HF U424 ( .A0(lastClkTime[43]), .B0(n167), .S(nextClkTime[43]), .CO(n168));
Q_AD01HF U425 ( .A0(lastClkTime[44]), .B0(n168), .S(nextClkTime[44]), .CO(n169));
Q_AD01HF U426 ( .A0(lastClkTime[45]), .B0(n169), .S(nextClkTime[45]), .CO(n170));
Q_AD01HF U427 ( .A0(lastClkTime[46]), .B0(n170), .S(nextClkTime[46]), .CO(n171));
Q_AD01HF U428 ( .A0(lastClkTime[47]), .B0(n171), .S(nextClkTime[47]), .CO(n172));
Q_AD01HF U429 ( .A0(lastClkTime[48]), .B0(n172), .S(nextClkTime[48]), .CO(n173));
Q_AD01HF U430 ( .A0(lastClkTime[49]), .B0(n173), .S(nextClkTime[49]), .CO(n174));
Q_AD01HF U431 ( .A0(lastClkTime[50]), .B0(n174), .S(nextClkTime[50]), .CO(n175));
Q_AD01HF U432 ( .A0(lastClkTime[51]), .B0(n175), .S(nextClkTime[51]), .CO(n176));
Q_AD01HF U433 ( .A0(lastClkTime[52]), .B0(n176), .S(nextClkTime[52]), .CO(n177));
Q_AD01HF U434 ( .A0(lastClkTime[53]), .B0(n177), .S(nextClkTime[53]), .CO(n178));
Q_AD01HF U435 ( .A0(lastClkTime[54]), .B0(n178), .S(nextClkTime[54]), .CO(n179));
Q_AD01HF U436 ( .A0(lastClkTime[55]), .B0(n179), .S(nextClkTime[55]), .CO(n180));
Q_AD01HF U437 ( .A0(lastClkTime[56]), .B0(n180), .S(nextClkTime[56]), .CO(n181));
Q_AD01HF U438 ( .A0(lastClkTime[57]), .B0(n181), .S(nextClkTime[57]), .CO(n182));
Q_AD01HF U439 ( .A0(lastClkTime[58]), .B0(n182), .S(nextClkTime[58]), .CO(n183));
Q_AD01HF U440 ( .A0(lastClkTime[59]), .B0(n183), .S(nextClkTime[59]), .CO(n184));
Q_AD01HF U441 ( .A0(lastClkTime[60]), .B0(n184), .S(nextClkTime[60]), .CO(n185));
Q_AD01HF U442 ( .A0(lastClkTime[61]), .B0(n185), .S(nextClkTime[61]), .CO(n186));
Q_AD01HF U443 ( .A0(lastClkTime[62]), .B0(n186), .S(nextClkTime[62]), .CO(n187));
Q_XOR2 U444 ( .A0(lastClkTime[63]), .A1(n187), .Z(nextClkTime[63]));
Q_XNR2 U445 ( .A0(nextTbTime[0]), .A1(nextClkTime[0]), .Z(n188));
Q_XNR2 U446 ( .A0(nextTbTime[1]), .A1(nextClkTime[1]), .Z(n189));
Q_XNR2 U447 ( .A0(nextTbTime[2]), .A1(nextClkTime[2]), .Z(n190));
Q_XNR2 U448 ( .A0(nextTbTime[3]), .A1(nextClkTime[3]), .Z(n191));
Q_XNR2 U449 ( .A0(nextTbTime[4]), .A1(nextClkTime[4]), .Z(n192));
Q_XNR2 U450 ( .A0(nextTbTime[5]), .A1(nextClkTime[5]), .Z(n193));
Q_XNR2 U451 ( .A0(nextTbTime[6]), .A1(nextClkTime[6]), .Z(n194));
Q_XNR2 U452 ( .A0(nextTbTime[7]), .A1(nextClkTime[7]), .Z(n195));
Q_XNR2 U453 ( .A0(nextTbTime[8]), .A1(nextClkTime[8]), .Z(n196));
Q_XNR2 U454 ( .A0(nextTbTime[9]), .A1(nextClkTime[9]), .Z(n197));
Q_XNR2 U455 ( .A0(nextTbTime[10]), .A1(nextClkTime[10]), .Z(n198));
Q_XNR2 U456 ( .A0(nextTbTime[11]), .A1(nextClkTime[11]), .Z(n199));
Q_XNR2 U457 ( .A0(nextTbTime[12]), .A1(nextClkTime[12]), .Z(n200));
Q_XNR2 U458 ( .A0(nextTbTime[13]), .A1(nextClkTime[13]), .Z(n201));
Q_XNR2 U459 ( .A0(nextTbTime[14]), .A1(nextClkTime[14]), .Z(n202));
Q_XNR2 U460 ( .A0(nextTbTime[15]), .A1(nextClkTime[15]), .Z(n203));
Q_XNR2 U461 ( .A0(nextTbTime[16]), .A1(nextClkTime[16]), .Z(n204));
Q_XNR2 U462 ( .A0(nextTbTime[17]), .A1(nextClkTime[17]), .Z(n205));
Q_XNR2 U463 ( .A0(nextTbTime[18]), .A1(nextClkTime[18]), .Z(n206));
Q_XNR2 U464 ( .A0(nextTbTime[19]), .A1(nextClkTime[19]), .Z(n207));
Q_XNR2 U465 ( .A0(nextTbTime[20]), .A1(nextClkTime[20]), .Z(n208));
Q_XNR2 U466 ( .A0(nextTbTime[21]), .A1(nextClkTime[21]), .Z(n209));
Q_XNR2 U467 ( .A0(nextTbTime[22]), .A1(nextClkTime[22]), .Z(n210));
Q_XNR2 U468 ( .A0(nextTbTime[23]), .A1(nextClkTime[23]), .Z(n211));
Q_XNR2 U469 ( .A0(nextTbTime[24]), .A1(nextClkTime[24]), .Z(n212));
Q_XNR2 U470 ( .A0(nextTbTime[25]), .A1(nextClkTime[25]), .Z(n213));
Q_XNR2 U471 ( .A0(nextTbTime[26]), .A1(nextClkTime[26]), .Z(n214));
Q_XNR2 U472 ( .A0(nextTbTime[27]), .A1(nextClkTime[27]), .Z(n215));
Q_XNR2 U473 ( .A0(nextTbTime[28]), .A1(nextClkTime[28]), .Z(n216));
Q_XNR2 U474 ( .A0(nextTbTime[29]), .A1(nextClkTime[29]), .Z(n217));
Q_XNR2 U475 ( .A0(nextTbTime[30]), .A1(nextClkTime[30]), .Z(n218));
Q_XNR2 U476 ( .A0(nextTbTime[31]), .A1(nextClkTime[31]), .Z(n219));
Q_XNR2 U477 ( .A0(nextTbTime[32]), .A1(nextClkTime[32]), .Z(n220));
Q_XNR2 U478 ( .A0(nextTbTime[33]), .A1(nextClkTime[33]), .Z(n221));
Q_XNR2 U479 ( .A0(nextTbTime[34]), .A1(nextClkTime[34]), .Z(n222));
Q_XNR2 U480 ( .A0(nextTbTime[35]), .A1(nextClkTime[35]), .Z(n223));
Q_XNR2 U481 ( .A0(nextTbTime[36]), .A1(nextClkTime[36]), .Z(n224));
Q_XNR2 U482 ( .A0(nextTbTime[37]), .A1(nextClkTime[37]), .Z(n225));
Q_XNR2 U483 ( .A0(nextTbTime[38]), .A1(nextClkTime[38]), .Z(n226));
Q_XNR2 U484 ( .A0(nextTbTime[39]), .A1(nextClkTime[39]), .Z(n227));
Q_XNR2 U485 ( .A0(nextTbTime[40]), .A1(nextClkTime[40]), .Z(n228));
Q_XNR2 U486 ( .A0(nextTbTime[41]), .A1(nextClkTime[41]), .Z(n229));
Q_XNR2 U487 ( .A0(nextTbTime[42]), .A1(nextClkTime[42]), .Z(n230));
Q_XNR2 U488 ( .A0(nextTbTime[43]), .A1(nextClkTime[43]), .Z(n231));
Q_XNR2 U489 ( .A0(nextTbTime[44]), .A1(nextClkTime[44]), .Z(n232));
Q_XNR2 U490 ( .A0(nextTbTime[45]), .A1(nextClkTime[45]), .Z(n233));
Q_XNR2 U491 ( .A0(nextTbTime[46]), .A1(nextClkTime[46]), .Z(n234));
Q_XNR2 U492 ( .A0(nextTbTime[47]), .A1(nextClkTime[47]), .Z(n235));
Q_XNR2 U493 ( .A0(nextTbTime[48]), .A1(nextClkTime[48]), .Z(n236));
Q_XNR2 U494 ( .A0(nextTbTime[49]), .A1(nextClkTime[49]), .Z(n237));
Q_XNR2 U495 ( .A0(nextTbTime[50]), .A1(nextClkTime[50]), .Z(n238));
Q_XNR2 U496 ( .A0(nextTbTime[51]), .A1(nextClkTime[51]), .Z(n239));
Q_XNR2 U497 ( .A0(nextTbTime[52]), .A1(nextClkTime[52]), .Z(n240));
Q_XNR2 U498 ( .A0(nextTbTime[53]), .A1(nextClkTime[53]), .Z(n241));
Q_XNR2 U499 ( .A0(nextTbTime[54]), .A1(nextClkTime[54]), .Z(n242));
Q_XNR2 U500 ( .A0(nextTbTime[55]), .A1(nextClkTime[55]), .Z(n243));
Q_XNR2 U501 ( .A0(nextTbTime[56]), .A1(nextClkTime[56]), .Z(n244));
Q_XNR2 U502 ( .A0(nextTbTime[57]), .A1(nextClkTime[57]), .Z(n245));
Q_XNR2 U503 ( .A0(nextTbTime[58]), .A1(nextClkTime[58]), .Z(n246));
Q_XNR2 U504 ( .A0(nextTbTime[59]), .A1(nextClkTime[59]), .Z(n247));
Q_XNR2 U505 ( .A0(nextTbTime[60]), .A1(nextClkTime[60]), .Z(n248));
Q_XNR2 U506 ( .A0(nextTbTime[61]), .A1(nextClkTime[61]), .Z(n249));
Q_XNR2 U507 ( .A0(nextTbTime[62]), .A1(nextClkTime[62]), .Z(n250));
Q_XNR2 U508 ( .A0(nextTbTime[63]), .A1(nextClkTime[63]), .Z(n251));
Q_AN03 U509 ( .A0(n251), .A1(n250), .A2(n249), .Z(n252));
Q_AN03 U510 ( .A0(n248), .A1(n247), .A2(n246), .Z(n253));
Q_AN03 U511 ( .A0(n245), .A1(n244), .A2(n243), .Z(n254));
Q_AN03 U512 ( .A0(n242), .A1(n241), .A2(n240), .Z(n255));
Q_AN03 U513 ( .A0(n239), .A1(n238), .A2(n237), .Z(n256));
Q_AN03 U514 ( .A0(n236), .A1(n235), .A2(n234), .Z(n257));
Q_AN03 U515 ( .A0(n233), .A1(n232), .A2(n231), .Z(n258));
Q_AN03 U516 ( .A0(n230), .A1(n229), .A2(n228), .Z(n259));
Q_AN03 U517 ( .A0(n227), .A1(n226), .A2(n225), .Z(n260));
Q_AN03 U518 ( .A0(n224), .A1(n223), .A2(n222), .Z(n261));
Q_AN03 U519 ( .A0(n221), .A1(n220), .A2(n219), .Z(n262));
Q_AN03 U520 ( .A0(n218), .A1(n217), .A2(n216), .Z(n263));
Q_AN03 U521 ( .A0(n215), .A1(n214), .A2(n213), .Z(n264));
Q_AN03 U522 ( .A0(n212), .A1(n211), .A2(n210), .Z(n265));
Q_AN03 U523 ( .A0(n209), .A1(n208), .A2(n207), .Z(n266));
Q_AN03 U524 ( .A0(n206), .A1(n205), .A2(n204), .Z(n267));
Q_AN03 U525 ( .A0(n203), .A1(n202), .A2(n201), .Z(n268));
Q_AN03 U526 ( .A0(n200), .A1(n188), .A2(n189), .Z(n269));
Q_AN03 U527 ( .A0(n252), .A1(n253), .A2(n254), .Z(n270));
Q_AN03 U528 ( .A0(n255), .A1(n256), .A2(n257), .Z(n271));
Q_AN03 U529 ( .A0(n258), .A1(n259), .A2(n260), .Z(n272));
Q_AN03 U530 ( .A0(n261), .A1(n262), .A2(n263), .Z(n273));
Q_AN03 U531 ( .A0(n264), .A1(n265), .A2(n266), .Z(n274));
Q_AN03 U532 ( .A0(n267), .A1(n268), .A2(n190), .Z(n275));
Q_AN03 U533 ( .A0(n269), .A1(n270), .A2(n271), .Z(n276));
Q_AN03 U534 ( .A0(n272), .A1(n273), .A2(n274), .Z(n277));
Q_AN03 U535 ( .A0(n191), .A1(n275), .A2(n276), .Z(n278));
Q_AN03 U536 ( .A0(n277), .A1(n192), .A2(n278), .Z(n279));
Q_AN03 U537 ( .A0(n193), .A1(n279), .A2(n194), .Z(n280));
Q_AN03 U538 ( .A0(n195), .A1(n280), .A2(n196), .Z(n281));
Q_AN03 U539 ( .A0(n197), .A1(n281), .A2(n198), .Z(n282));
Q_AN02 U540 ( .A0(n199), .A1(n282), .Z(TbEQClk));
Q_INV U541 ( .A(nextTbTime[63]), .Z(n283));
Q_AN02 U542 ( .A0(nextClkTime[63]), .A1(n283), .Z(n284));
Q_OR02 U543 ( .A0(nextClkTime[63]), .A1(n283), .Z(n285));
Q_INV U544 ( .A(nextTbTime[62]), .Z(n286));
Q_AN03 U545 ( .A0(nextClkTime[62]), .A1(n286), .A2(n285), .Z(n294));
Q_OA21 U546 ( .A0(nextClkTime[62]), .A1(n286), .B0(n285), .Z(n290));
Q_INV U547 ( .A(nextTbTime[61]), .Z(n287));
Q_AN02 U548 ( .A0(nextClkTime[61]), .A1(n287), .Z(n288));
Q_OA21 U549 ( .A0(nextClkTime[61]), .A1(n287), .B0(n290), .Z(n291));
Q_INV U550 ( .A(nextTbTime[60]), .Z(n289));
Q_AN03 U551 ( .A0(nextClkTime[60]), .A1(n289), .A2(n291), .Z(n292));
Q_OA21 U552 ( .A0(nextClkTime[60]), .A1(n289), .B0(n291), .Z(n296));
Q_AO21 U553 ( .A0(n290), .A1(n288), .B0(n292), .Z(n293));
Q_OR03 U554 ( .A0(n284), .A1(n294), .A2(n293), .Z(n295));
Q_INV U555 ( .A(nextTbTime[59]), .Z(n297));
Q_AN02 U556 ( .A0(nextClkTime[59]), .A1(n297), .Z(n298));
Q_OR02 U557 ( .A0(nextClkTime[59]), .A1(n297), .Z(n299));
Q_INV U558 ( .A(nextTbTime[58]), .Z(n300));
Q_AN02 U559 ( .A0(nextClkTime[58]), .A1(n300), .Z(n301));
Q_OA21 U560 ( .A0(nextClkTime[58]), .A1(n300), .B0(n299), .Z(n306));
Q_INV U561 ( .A(nextTbTime[57]), .Z(n302));
Q_AN02 U562 ( .A0(nextClkTime[57]), .A1(n302), .Z(n303));
Q_OA21 U563 ( .A0(nextClkTime[57]), .A1(n302), .B0(n306), .Z(n307));
Q_INV U564 ( .A(nextTbTime[56]), .Z(n304));
Q_AN03 U565 ( .A0(nextClkTime[56]), .A1(n304), .A2(n307), .Z(n308));
Q_OR02 U566 ( .A0(nextClkTime[56]), .A1(n304), .Z(n305));
Q_AO21 U567 ( .A0(n306), .A1(n303), .B0(n308), .Z(n309));
Q_AO21 U568 ( .A0(n299), .A1(n301), .B0(n298), .Z(n310));
Q_OA21 U569 ( .A0(n310), .A1(n309), .B0(n296), .Z(n511));
Q_AN03 U570 ( .A0(n307), .A1(n305), .A2(n296), .Z(n507));
Q_INV U571 ( .A(nextTbTime[55]), .Z(n311));
Q_AN02 U572 ( .A0(nextClkTime[55]), .A1(n311), .Z(n312));
Q_OR02 U573 ( .A0(nextClkTime[55]), .A1(n311), .Z(n313));
Q_INV U574 ( .A(nextTbTime[54]), .Z(n314));
Q_AN03 U575 ( .A0(nextClkTime[54]), .A1(n314), .A2(n313), .Z(n323));
Q_OA21 U576 ( .A0(nextClkTime[54]), .A1(n314), .B0(n313), .Z(n319));
Q_INV U577 ( .A(nextTbTime[53]), .Z(n315));
Q_AN02 U578 ( .A0(nextClkTime[53]), .A1(n315), .Z(n316));
Q_OA21 U579 ( .A0(nextClkTime[53]), .A1(n315), .B0(n319), .Z(n320));
Q_INV U580 ( .A(nextTbTime[52]), .Z(n317));
Q_AN03 U581 ( .A0(nextClkTime[52]), .A1(n317), .A2(n320), .Z(n321));
Q_OR02 U582 ( .A0(nextClkTime[52]), .A1(n317), .Z(n318));
Q_AO21 U583 ( .A0(n319), .A1(n316), .B0(n321), .Z(n322));
Q_OR03 U584 ( .A0(n312), .A1(n323), .A2(n322), .Z(n324));
Q_AN03 U585 ( .A0(n320), .A1(n318), .A2(n507), .Z(n508));
Q_INV U586 ( .A(nextTbTime[51]), .Z(n325));
Q_AN02 U587 ( .A0(nextClkTime[51]), .A1(n325), .Z(n326));
Q_OR02 U588 ( .A0(nextClkTime[51]), .A1(n325), .Z(n327));
Q_INV U589 ( .A(nextTbTime[50]), .Z(n328));
Q_AN02 U590 ( .A0(nextClkTime[50]), .A1(n328), .Z(n329));
Q_OA21 U591 ( .A0(nextClkTime[50]), .A1(n328), .B0(n327), .Z(n334));
Q_INV U592 ( .A(nextTbTime[49]), .Z(n330));
Q_AN02 U593 ( .A0(nextClkTime[49]), .A1(n330), .Z(n331));
Q_OA21 U594 ( .A0(nextClkTime[49]), .A1(n330), .B0(n334), .Z(n335));
Q_INV U595 ( .A(nextTbTime[48]), .Z(n332));
Q_AN03 U596 ( .A0(nextClkTime[48]), .A1(n332), .A2(n335), .Z(n336));
Q_OR02 U597 ( .A0(nextClkTime[48]), .A1(n332), .Z(n333));
Q_AO21 U598 ( .A0(n334), .A1(n331), .B0(n336), .Z(n337));
Q_AO21 U599 ( .A0(n327), .A1(n329), .B0(n326), .Z(n338));
Q_OA21 U600 ( .A0(n338), .A1(n337), .B0(n508), .Z(n509));
Q_AN03 U601 ( .A0(n335), .A1(n333), .A2(n508), .Z(n513));
Q_INV U602 ( .A(nextTbTime[47]), .Z(n339));
Q_AN02 U603 ( .A0(nextClkTime[47]), .A1(n339), .Z(n340));
Q_OR02 U604 ( .A0(nextClkTime[47]), .A1(n339), .Z(n341));
Q_INV U605 ( .A(nextTbTime[46]), .Z(n342));
Q_AN03 U606 ( .A0(nextClkTime[46]), .A1(n342), .A2(n341), .Z(n350));
Q_OA21 U607 ( .A0(nextClkTime[46]), .A1(n342), .B0(n341), .Z(n346));
Q_INV U608 ( .A(nextTbTime[45]), .Z(n343));
Q_AN02 U609 ( .A0(nextClkTime[45]), .A1(n343), .Z(n344));
Q_OA21 U610 ( .A0(nextClkTime[45]), .A1(n343), .B0(n346), .Z(n347));
Q_INV U611 ( .A(nextTbTime[44]), .Z(n345));
Q_AN03 U612 ( .A0(nextClkTime[44]), .A1(n345), .A2(n347), .Z(n348));
Q_OA21 U613 ( .A0(nextClkTime[44]), .A1(n345), .B0(n347), .Z(n352));
Q_AO21 U614 ( .A0(n346), .A1(n344), .B0(n348), .Z(n349));
Q_OR03 U615 ( .A0(n340), .A1(n350), .A2(n349), .Z(n351));
Q_INV U616 ( .A(nextTbTime[43]), .Z(n353));
Q_AN02 U617 ( .A0(nextClkTime[43]), .A1(n353), .Z(n354));
Q_OR02 U618 ( .A0(nextClkTime[43]), .A1(n353), .Z(n355));
Q_INV U619 ( .A(nextTbTime[42]), .Z(n356));
Q_AN03 U620 ( .A0(nextClkTime[42]), .A1(n356), .A2(n355), .Z(n365));
Q_OA21 U621 ( .A0(nextClkTime[42]), .A1(n356), .B0(n355), .Z(n361));
Q_INV U622 ( .A(nextTbTime[41]), .Z(n357));
Q_AN02 U623 ( .A0(nextClkTime[41]), .A1(n357), .Z(n358));
Q_OA21 U624 ( .A0(nextClkTime[41]), .A1(n357), .B0(n361), .Z(n362));
Q_INV U625 ( .A(nextTbTime[40]), .Z(n359));
Q_AN03 U626 ( .A0(nextClkTime[40]), .A1(n359), .A2(n362), .Z(n363));
Q_OR02 U627 ( .A0(nextClkTime[40]), .A1(n359), .Z(n360));
Q_AO21 U628 ( .A0(n361), .A1(n358), .B0(n363), .Z(n364));
Q_OR03 U629 ( .A0(n354), .A1(n365), .A2(n364), .Z(n366));
Q_AN03 U630 ( .A0(n362), .A1(n360), .A2(n352), .Z(n514));
Q_INV U631 ( .A(nextTbTime[39]), .Z(n367));
Q_AN02 U632 ( .A0(nextClkTime[39]), .A1(n367), .Z(n368));
Q_OR02 U633 ( .A0(nextClkTime[39]), .A1(n367), .Z(n369));
Q_INV U634 ( .A(nextTbTime[38]), .Z(n370));
Q_AN03 U635 ( .A0(nextClkTime[38]), .A1(n370), .A2(n369), .Z(n379));
Q_OA21 U636 ( .A0(nextClkTime[38]), .A1(n370), .B0(n369), .Z(n375));
Q_INV U637 ( .A(nextTbTime[37]), .Z(n371));
Q_AN02 U638 ( .A0(nextClkTime[37]), .A1(n371), .Z(n372));
Q_OA21 U639 ( .A0(nextClkTime[37]), .A1(n371), .B0(n375), .Z(n376));
Q_INV U640 ( .A(nextTbTime[36]), .Z(n373));
Q_AN03 U641 ( .A0(nextClkTime[36]), .A1(n373), .A2(n376), .Z(n377));
Q_OR02 U642 ( .A0(nextClkTime[36]), .A1(n373), .Z(n374));
Q_AO21 U643 ( .A0(n375), .A1(n372), .B0(n377), .Z(n378));
Q_OR03 U644 ( .A0(n368), .A1(n379), .A2(n378), .Z(n380));
Q_AN03 U645 ( .A0(n376), .A1(n374), .A2(n514), .Z(n515));
Q_INV U646 ( .A(nextTbTime[35]), .Z(n381));
Q_AN02 U647 ( .A0(nextClkTime[35]), .A1(n381), .Z(n382));
Q_OR02 U648 ( .A0(nextClkTime[35]), .A1(n381), .Z(n383));
Q_INV U649 ( .A(nextTbTime[34]), .Z(n384));
Q_AN02 U650 ( .A0(nextClkTime[34]), .A1(n384), .Z(n385));
Q_OA21 U651 ( .A0(nextClkTime[34]), .A1(n384), .B0(n383), .Z(n389));
Q_INV U652 ( .A(nextTbTime[33]), .Z(n386));
Q_AN02 U653 ( .A0(nextClkTime[33]), .A1(n386), .Z(n387));
Q_OA21 U654 ( .A0(nextClkTime[33]), .A1(n386), .B0(n389), .Z(n390));
Q_INV U655 ( .A(nextTbTime[32]), .Z(n388));
Q_AN03 U656 ( .A0(nextClkTime[32]), .A1(n388), .A2(n390), .Z(n391));
Q_OA21 U657 ( .A0(nextClkTime[32]), .A1(n388), .B0(n390), .Z(n394));
Q_AO21 U658 ( .A0(n389), .A1(n387), .B0(n391), .Z(n392));
Q_AO21 U659 ( .A0(n383), .A1(n385), .B0(n382), .Z(n393));
Q_OA21 U660 ( .A0(n393), .A1(n392), .B0(n515), .Z(n516));
Q_INV U661 ( .A(nextTbTime[31]), .Z(n395));
Q_AN02 U662 ( .A0(nextClkTime[31]), .A1(n395), .Z(n396));
Q_OR02 U663 ( .A0(nextClkTime[31]), .A1(n395), .Z(n397));
Q_INV U664 ( .A(nextTbTime[30]), .Z(n398));
Q_AN03 U665 ( .A0(nextClkTime[30]), .A1(n398), .A2(n397), .Z(n406));
Q_OA21 U666 ( .A0(nextClkTime[30]), .A1(n398), .B0(n397), .Z(n402));
Q_INV U667 ( .A(nextTbTime[29]), .Z(n399));
Q_AN02 U668 ( .A0(nextClkTime[29]), .A1(n399), .Z(n400));
Q_OA21 U669 ( .A0(nextClkTime[29]), .A1(n399), .B0(n402), .Z(n403));
Q_INV U670 ( .A(nextTbTime[28]), .Z(n401));
Q_AN03 U671 ( .A0(nextClkTime[28]), .A1(n401), .A2(n403), .Z(n404));
Q_OA21 U672 ( .A0(nextClkTime[28]), .A1(n401), .B0(n403), .Z(n408));
Q_AO21 U673 ( .A0(n402), .A1(n400), .B0(n404), .Z(n405));
Q_OR03 U674 ( .A0(n396), .A1(n406), .A2(n405), .Z(n407));
Q_INV U675 ( .A(nextTbTime[27]), .Z(n409));
Q_AN02 U676 ( .A0(nextClkTime[27]), .A1(n409), .Z(n410));
Q_OR02 U677 ( .A0(nextClkTime[27]), .A1(n409), .Z(n411));
Q_INV U678 ( .A(nextTbTime[26]), .Z(n412));
Q_AN02 U679 ( .A0(nextClkTime[26]), .A1(n412), .Z(n413));
Q_OA21 U680 ( .A0(nextClkTime[26]), .A1(n412), .B0(n411), .Z(n418));
Q_INV U681 ( .A(nextTbTime[25]), .Z(n414));
Q_AN02 U682 ( .A0(nextClkTime[25]), .A1(n414), .Z(n415));
Q_OA21 U683 ( .A0(nextClkTime[25]), .A1(n414), .B0(n418), .Z(n419));
Q_INV U684 ( .A(nextTbTime[24]), .Z(n416));
Q_AN03 U685 ( .A0(nextClkTime[24]), .A1(n416), .A2(n419), .Z(n420));
Q_OR02 U686 ( .A0(nextClkTime[24]), .A1(n416), .Z(n417));
Q_AO21 U687 ( .A0(n418), .A1(n415), .B0(n420), .Z(n421));
Q_AO21 U688 ( .A0(n411), .A1(n413), .B0(n410), .Z(n422));
Q_OA21 U689 ( .A0(n422), .A1(n421), .B0(n408), .Z(n523));
Q_AN03 U690 ( .A0(n419), .A1(n417), .A2(n408), .Z(n519));
Q_INV U691 ( .A(nextTbTime[23]), .Z(n423));
Q_AN02 U692 ( .A0(nextClkTime[23]), .A1(n423), .Z(n424));
Q_OR02 U693 ( .A0(nextClkTime[23]), .A1(n423), .Z(n425));
Q_INV U694 ( .A(nextTbTime[22]), .Z(n426));
Q_AN03 U695 ( .A0(nextClkTime[22]), .A1(n426), .A2(n425), .Z(n435));
Q_OA21 U696 ( .A0(nextClkTime[22]), .A1(n426), .B0(n425), .Z(n431));
Q_INV U697 ( .A(nextTbTime[21]), .Z(n427));
Q_AN02 U698 ( .A0(nextClkTime[21]), .A1(n427), .Z(n428));
Q_OA21 U699 ( .A0(nextClkTime[21]), .A1(n427), .B0(n431), .Z(n432));
Q_INV U700 ( .A(nextTbTime[20]), .Z(n429));
Q_AN03 U701 ( .A0(nextClkTime[20]), .A1(n429), .A2(n432), .Z(n433));
Q_OR02 U702 ( .A0(nextClkTime[20]), .A1(n429), .Z(n430));
Q_AO21 U703 ( .A0(n431), .A1(n428), .B0(n433), .Z(n434));
Q_OR03 U704 ( .A0(n424), .A1(n435), .A2(n434), .Z(n436));
Q_AN03 U705 ( .A0(n432), .A1(n430), .A2(n519), .Z(n520));
Q_INV U706 ( .A(nextTbTime[19]), .Z(n437));
Q_AN02 U707 ( .A0(nextClkTime[19]), .A1(n437), .Z(n438));
Q_OR02 U708 ( .A0(nextClkTime[19]), .A1(n437), .Z(n439));
Q_INV U709 ( .A(nextTbTime[18]), .Z(n440));
Q_AN02 U710 ( .A0(nextClkTime[18]), .A1(n440), .Z(n441));
Q_OA21 U711 ( .A0(nextClkTime[18]), .A1(n440), .B0(n439), .Z(n446));
Q_INV U712 ( .A(nextTbTime[17]), .Z(n442));
Q_AN02 U713 ( .A0(nextClkTime[17]), .A1(n442), .Z(n443));
Q_OA21 U714 ( .A0(nextClkTime[17]), .A1(n442), .B0(n446), .Z(n447));
Q_INV U715 ( .A(nextTbTime[16]), .Z(n444));
Q_AN03 U716 ( .A0(nextClkTime[16]), .A1(n444), .A2(n447), .Z(n448));
Q_OR02 U717 ( .A0(nextClkTime[16]), .A1(n444), .Z(n445));
Q_AO21 U718 ( .A0(n446), .A1(n443), .B0(n448), .Z(n449));
Q_AO21 U719 ( .A0(n439), .A1(n441), .B0(n438), .Z(n450));
Q_OA21 U720 ( .A0(n450), .A1(n449), .B0(n520), .Z(n521));
Q_AN03 U721 ( .A0(n447), .A1(n445), .A2(n520), .Z(n525));
Q_INV U722 ( .A(nextTbTime[15]), .Z(n451));
Q_AN02 U723 ( .A0(nextClkTime[15]), .A1(n451), .Z(n452));
Q_OR02 U724 ( .A0(nextClkTime[15]), .A1(n451), .Z(n453));
Q_INV U725 ( .A(nextTbTime[14]), .Z(n454));
Q_AN03 U726 ( .A0(nextClkTime[14]), .A1(n454), .A2(n453), .Z(n462));
Q_OA21 U727 ( .A0(nextClkTime[14]), .A1(n454), .B0(n453), .Z(n458));
Q_INV U728 ( .A(nextTbTime[13]), .Z(n455));
Q_AN02 U729 ( .A0(nextClkTime[13]), .A1(n455), .Z(n456));
Q_OA21 U730 ( .A0(nextClkTime[13]), .A1(n455), .B0(n458), .Z(n459));
Q_INV U731 ( .A(nextTbTime[12]), .Z(n457));
Q_AN03 U732 ( .A0(nextClkTime[12]), .A1(n457), .A2(n459), .Z(n460));
Q_OA21 U733 ( .A0(nextClkTime[12]), .A1(n457), .B0(n459), .Z(n464));
Q_AO21 U734 ( .A0(n458), .A1(n456), .B0(n460), .Z(n461));
Q_OR03 U735 ( .A0(n452), .A1(n462), .A2(n461), .Z(n463));
Q_INV U736 ( .A(nextTbTime[11]), .Z(n465));
Q_AN02 U737 ( .A0(nextClkTime[11]), .A1(n465), .Z(n466));
Q_OR02 U738 ( .A0(nextClkTime[11]), .A1(n465), .Z(n467));
Q_INV U739 ( .A(nextTbTime[10]), .Z(n468));
Q_AN02 U740 ( .A0(nextClkTime[10]), .A1(n468), .Z(n469));
Q_OA21 U741 ( .A0(nextClkTime[10]), .A1(n468), .B0(n467), .Z(n474));
Q_INV U742 ( .A(nextTbTime[9]), .Z(n470));
Q_AN02 U743 ( .A0(nextClkTime[9]), .A1(n470), .Z(n471));
Q_OA21 U744 ( .A0(nextClkTime[9]), .A1(n470), .B0(n474), .Z(n475));
Q_INV U745 ( .A(nextTbTime[8]), .Z(n472));
Q_AN03 U746 ( .A0(nextClkTime[8]), .A1(n472), .A2(n475), .Z(n476));
Q_OR02 U747 ( .A0(nextClkTime[8]), .A1(n472), .Z(n473));
Q_AO21 U748 ( .A0(n474), .A1(n471), .B0(n476), .Z(n477));
Q_AO21 U749 ( .A0(n467), .A1(n469), .B0(n466), .Z(n478));
Q_OA21 U750 ( .A0(n478), .A1(n477), .B0(n464), .Z(n529));
Q_AN03 U751 ( .A0(n475), .A1(n473), .A2(n464), .Z(n526));
Q_INV U752 ( .A(nextTbTime[7]), .Z(n479));
Q_AN02 U753 ( .A0(nextClkTime[7]), .A1(n479), .Z(n480));
Q_OR02 U754 ( .A0(nextClkTime[7]), .A1(n479), .Z(n481));
Q_INV U755 ( .A(nextTbTime[6]), .Z(n482));
Q_AN03 U756 ( .A0(nextClkTime[6]), .A1(n482), .A2(n481), .Z(n490));
Q_OA21 U757 ( .A0(nextClkTime[6]), .A1(n482), .B0(n481), .Z(n486));
Q_INV U758 ( .A(nextTbTime[5]), .Z(n483));
Q_AN02 U759 ( .A0(nextClkTime[5]), .A1(n483), .Z(n484));
Q_OA21 U760 ( .A0(nextClkTime[5]), .A1(n483), .B0(n486), .Z(n487));
Q_INV U761 ( .A(nextTbTime[4]), .Z(n485));
Q_AN03 U762 ( .A0(nextClkTime[4]), .A1(n485), .A2(n487), .Z(n488));
Q_OA21 U763 ( .A0(nextClkTime[4]), .A1(n485), .B0(n487), .Z(n492));
Q_AO21 U764 ( .A0(n486), .A1(n484), .B0(n488), .Z(n489));
Q_OR03 U765 ( .A0(n480), .A1(n490), .A2(n489), .Z(n491));
Q_INV U766 ( .A(nextTbTime[3]), .Z(n493));
Q_AN02 U767 ( .A0(nextClkTime[3]), .A1(n493), .Z(n494));
Q_OR02 U768 ( .A0(nextClkTime[3]), .A1(n493), .Z(n495));
Q_INV U769 ( .A(nextTbTime[2]), .Z(n496));
Q_AN03 U770 ( .A0(nextClkTime[2]), .A1(n496), .A2(n495), .Z(n505));
Q_OA21 U771 ( .A0(nextClkTime[2]), .A1(n496), .B0(n495), .Z(n502));
Q_INV U772 ( .A(nextTbTime[1]), .Z(n497));
Q_AN02 U773 ( .A0(nextClkTime[1]), .A1(n497), .Z(n498));
Q_OR02 U774 ( .A0(nextClkTime[1]), .A1(n497), .Z(n499));
Q_INV U775 ( .A(nextTbTime[0]), .Z(n500));
Q_AN02 U776 ( .A0(nextClkTime[0]), .A1(n500), .Z(n501));
Q_AN03 U777 ( .A0(n502), .A1(n499), .A2(n501), .Z(n503));
Q_AO21 U778 ( .A0(n502), .A1(n498), .B0(n503), .Z(n504));
Q_OR03 U779 ( .A0(n494), .A1(n505), .A2(n504), .Z(n506));
Q_AO21 U780 ( .A0(n507), .A1(n324), .B0(n509), .Z(n510));
Q_OR03 U781 ( .A0(n295), .A1(n511), .A2(n510), .Z(n512));
Q_AO21 U782 ( .A0(n514), .A1(n380), .B0(n516), .Z(n517));
Q_AO21 U783 ( .A0(n352), .A1(n366), .B0(n351), .Z(n518));
Q_OA21 U784 ( .A0(n518), .A1(n517), .B0(n513), .Z(n534));
Q_AN03 U785 ( .A0(n515), .A1(n394), .A2(n513), .Z(n531));
Q_AO21 U786 ( .A0(n519), .A1(n436), .B0(n521), .Z(n522));
Q_OR03 U787 ( .A0(n407), .A1(n523), .A2(n522), .Z(n524));
Q_AN03 U788 ( .A0(n526), .A1(n492), .A2(n506), .Z(n527));
Q_AO21 U789 ( .A0(n526), .A1(n491), .B0(n527), .Z(n528));
Q_OR03 U790 ( .A0(n463), .A1(n529), .A2(n528), .Z(n530));
Q_AN03 U791 ( .A0(n531), .A1(n525), .A2(n530), .Z(n532));
Q_AO21 U792 ( .A0(n531), .A1(n524), .B0(n532), .Z(n533));
Q_OR03 U793 ( .A0(n512), .A1(n534), .A2(n533), .Z(TbLTClk));
Q_OR03 U794 ( .A0(zminT), .A1(TbEQClk), .A2(TbLTClk), .Z(stopEcm));
Q_INV U795 ( .A(TbLTClk), .Z(n535));
Q_OR02 U796 ( .A0(TbEQClk), .A1(n535), .Z(runClk));
Q_XNR2 U797 ( .A0(nextTbTime[0]), .A1(n536), .Z(deltaTb[0]));
Q_OR02 U798 ( .A0(nextTbTime[0]), .A1(n536), .Z(n547));
Q_AD02 U799 ( .CI(n547), .A0(nextTbTime[1]), .A1(nextTbTime[2]), .B0(n537), .B1(n538), .S0(deltaTb[1]), .S1(deltaTb[2]), .CO(n548));
Q_AD02 U800 ( .CI(n548), .A0(nextTbTime[3]), .A1(nextTbTime[4]), .B0(n539), .B1(n540), .S0(deltaTb[3]), .S1(deltaTb[4]), .CO(n549));
Q_AD02 U801 ( .CI(n549), .A0(nextTbTime[5]), .A1(nextTbTime[6]), .B0(n541), .B1(n542), .S0(deltaTb[5]), .S1(deltaTb[6]), .CO(n550));
Q_AD02 U802 ( .CI(n550), .A0(nextTbTime[7]), .A1(nextTbTime[8]), .B0(n543), .B1(n544), .S0(deltaTb[7]), .S1(deltaTb[8]), .CO(n551));
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
ixc_assign_11 _zz_strnp_2 ( td1[10:0], 
	xcva_top.my_clks.ixcg_0._zyiscTdM1[10:0]);
ixc_assign_11 _zz_strnp_3 ( minT[10:0], td1[10:0]);
`ifdef CBV

reg [63:0] _zzcmds [0:3];
always @(n557 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4]
 or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1] or xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0] or n129 or xc_top.simTime[63] or xc_top.simTime[62] or xc_top.simTime[61]
 or xc_top.simTime[60] or xc_top.simTime[59] or xc_top.simTime[58] or xc_top.simTime[57] or xc_top.simTime[56] or xc_top.simTime[55] or xc_top.simTime[54] or xc_top.simTime[53]
 or xc_top.simTime[52] or xc_top.simTime[51] or xc_top.simTime[50] or xc_top.simTime[49] or xc_top.simTime[48] or xc_top.simTime[47] or xc_top.simTime[46] or xc_top.simTime[45]
 or xc_top.simTime[44] or xc_top.simTime[43] or xc_top.simTime[42] or xc_top.simTime[41] or xc_top.simTime[40] or xc_top.simTime[39] or xc_top.simTime[38] or xc_top.simTime[37]
 or xc_top.simTime[36] or xc_top.simTime[35] or xc_top.simTime[34] or xc_top.simTime[33] or xc_top.simTime[32] or xc_top.simTime[31] or xc_top.simTime[30] or xc_top.simTime[29]
 or xc_top.simTime[28] or xc_top.simTime[27] or xc_top.simTime[26] or xc_top.simTime[25] or xc_top.simTime[24] or xc_top.simTime[23] or xc_top.simTime[22] or xc_top.simTime[21]
 or xc_top.simTime[20] or xc_top.simTime[19] or xc_top.simTime[18] or xc_top.simTime[17] or xc_top.simTime[16] or xc_top.simTime[15] or xc_top.simTime[14] or xc_top.simTime[13]
 or xc_top.simTime[12] or xc_top.simTime[11] or xc_top.simTime[10] or xc_top.simTime[9] or xc_top.simTime[8] or xc_top.simTime[7] or xc_top.simTime[6] or xc_top.simTime[5]
 or xc_top.simTime[4] or xc_top.simTime[3] or xc_top.simTime[2] or xc_top.simTime[1] or xc_top.simTime[0])
#0 begin
if (n129)
_zzcmds[{n557, n557}] =
{xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3],
 xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1], xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0]};
if (n129)
_zzcmds[{n557, n129}] =
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

MPW4X64 _zzcmds ( .A1(n557), .A0(n557), .DI63(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[63]), .DI62(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[62]), .DI61(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[61]), .DI60(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[60]),
 .DI59(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[59]), .DI58(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[58]), .DI57(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[57]), .DI56(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[56]), .DI55(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[55]), .DI54(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[54]), .DI53(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[53]), .DI52(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[52]),
 .DI51(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[51]), .DI50(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[50]), .DI49(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[49]), .DI48(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[48]), .DI47(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[47]), .DI46(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[46]), .DI45(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[45]), .DI44(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[44]),
 .DI43(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[43]), .DI42(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[42]), .DI41(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[41]), .DI40(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[40]), .DI39(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[39]), .DI38(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[38]), .DI37(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[37]), .DI36(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[36]),
 .DI35(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[35]), .DI34(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[34]), .DI33(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[33]), .DI32(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[32]), .DI31(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[31]), .DI30(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[30]), .DI29(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[29]), .DI28(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[28]),
 .DI27(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[27]), .DI26(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[26]), .DI25(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[25]), .DI24(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[24]), .DI23(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[23]), .DI22(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[22]), .DI21(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[21]), .DI20(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[20]),
 .DI19(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[19]), .DI18(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[18]), .DI17(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[17]), .DI16(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[16]), .DI15(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[15]), .DI14(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[14]), .DI13(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[13]), .DI12(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[12]),
 .DI11(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[11]), .DI10(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[10]), .DI9(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[9]), .DI8(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[8]), .DI7(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[7]), .DI6(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[6]), .DI5(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[5]), .DI4(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[4]),
 .DI3(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[3]), .DI2(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[2]), .DI1(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[1]), .DI0(xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_[0]), .WE(n129), .SYNC_IN(n557), .SYNC_OUT(n688));
// pragma CVASTRPROP INSTANCE "_zzcmds" HDL_MEMORY_DECL "1 63 0 0 3"
MPW4X64 U807 ( .A1(n557), .A0(n129), .DI63(xc_top.simTime[63]), .DI62(xc_top.simTime[62]), .DI61(xc_top.simTime[61]), .DI60(xc_top.simTime[60]),
 .DI59(xc_top.simTime[59]), .DI58(xc_top.simTime[58]), .DI57(xc_top.simTime[57]), .DI56(xc_top.simTime[56]), .DI55(xc_top.simTime[55]), .DI54(xc_top.simTime[54]), .DI53(xc_top.simTime[53]), .DI52(xc_top.simTime[52]),
 .DI51(xc_top.simTime[51]), .DI50(xc_top.simTime[50]), .DI49(xc_top.simTime[49]), .DI48(xc_top.simTime[48]), .DI47(xc_top.simTime[47]), .DI46(xc_top.simTime[46]), .DI45(xc_top.simTime[45]), .DI44(xc_top.simTime[44]),
 .DI43(xc_top.simTime[43]), .DI42(xc_top.simTime[42]), .DI41(xc_top.simTime[41]), .DI40(xc_top.simTime[40]), .DI39(xc_top.simTime[39]), .DI38(xc_top.simTime[38]), .DI37(xc_top.simTime[37]), .DI36(xc_top.simTime[36]),
 .DI35(xc_top.simTime[35]), .DI34(xc_top.simTime[34]), .DI33(xc_top.simTime[33]), .DI32(xc_top.simTime[32]), .DI31(xc_top.simTime[31]), .DI30(xc_top.simTime[30]), .DI29(xc_top.simTime[29]), .DI28(xc_top.simTime[28]),
 .DI27(xc_top.simTime[27]), .DI26(xc_top.simTime[26]), .DI25(xc_top.simTime[25]), .DI24(xc_top.simTime[24]), .DI23(xc_top.simTime[23]), .DI22(xc_top.simTime[22]), .DI21(xc_top.simTime[21]), .DI20(xc_top.simTime[20]),
 .DI19(xc_top.simTime[19]), .DI18(xc_top.simTime[18]), .DI17(xc_top.simTime[17]), .DI16(xc_top.simTime[16]), .DI15(xc_top.simTime[15]), .DI14(xc_top.simTime[14]), .DI13(xc_top.simTime[13]), .DI12(xc_top.simTime[12]),
 .DI11(xc_top.simTime[11]), .DI10(xc_top.simTime[10]), .DI9(xc_top.simTime[9]), .DI8(xc_top.simTime[8]), .DI7(xc_top.simTime[7]), .DI6(xc_top.simTime[6]), .DI5(xc_top.simTime[5]), .DI4(xc_top.simTime[4]),
 .DI3(xc_top.simTime[3]), .DI2(xc_top.simTime[2]), .DI1(xc_top.simTime[1]), .DI0(xc_top.simTime[0]), .WE(n129), .SYNC_IN(n688), .SYNC_OUT( ));
`endif
`ifdef CBV

reg [63:0] _zzmiopis [0:3];
initial begin: U808
  integer i;
  for (i=0; i<=3; i=i+1) _zzmiopis[i] =
`ifdef CBV_MEM_INIT1
  {64{1'b1}};
`else
  64'b0;
`endif
end
reg [63:0] n692;
assign {n622, n623, n624, n625, n626, n627, n628,
n629, n630, n631, n632, n633, n634, n635, n636,
n637, n638, n639, n640, n641, n642, n643, n644,
n645, n646, n647, n648, n649, n650, n651, n652,
n653, n654, n655, n656, n657, n658, n659, n660,
n661, n662, n663, n664, n665, n666, n667, n668,
n669, n670, n671, n672, n673, n674, n675, n676,
n677, n678, n679, n680, n681, n682, n683, n684,
n685} = n692; 
reg [63:0] n689;
assign {n558, n559, n560, n561, n562, n563, n564,
n565, n566, n567, n568, n569, n570, n571, n572,
n573, n574, n575, n576, n577, n578, n579, n580,
n581, n582, n583, n584, n585, n586, n587, n588,
n589, n590, n591, n592, n593, n594, n595, n596,
n597, n598, n599, n600, n601, n602, n603, n604,
n605, n606, n607, n608, n609, n610, n611, n612,
n613, n614, n615, n616, n617, n618, n619, n620,
n621} = n689; 
always @(n557 or n129)
#0 begin
n692 = _zzmiopis[{n557, n557}];
n689 = _zzmiopis[{n557, n129}];
end
`else

MPR4X64 _zzmiopis ( .A1(n557), .A0(n557), .SYNC_IN(n557), .DO63(n622), .DO62(n623), .DO61(n624),
 .DO60(n625), .DO59(n626), .DO58(n627), .DO57(n628), .DO56(n629), .DO55(n630), .DO54(n631), .DO53(n632),
 .DO52(n633), .DO51(n634), .DO50(n635), .DO49(n636), .DO48(n637), .DO47(n638), .DO46(n639), .DO45(n640),
 .DO44(n641), .DO43(n642), .DO42(n643), .DO41(n644), .DO40(n645), .DO39(n646), .DO38(n647), .DO37(n648),
 .DO36(n649), .DO35(n650), .DO34(n651), .DO33(n652), .DO32(n653), .DO31(n654), .DO30(n655), .DO29(n656),
 .DO28(n657), .DO27(n658), .DO26(n659), .DO25(n660), .DO24(n661), .DO23(n662), .DO22(n663), .DO21(n664),
 .DO20(n665), .DO19(n666), .DO18(n667), .DO17(n668), .DO16(n669), .DO15(n670), .DO14(n671), .DO13(n672),
 .DO12(n673), .DO11(n674), .DO10(n675), .DO9(n676), .DO8(n677), .DO7(n678), .DO6(n679), .DO5(n680),
 .DO4(n681), .DO3(n682), .DO2(n683), .DO1(n684), .DO0(n685), .SYNC_OUT(n689));
// pragma CVASTRPROP INSTANCE "_zzmiopis" HDL_MEMORY_DECL "1 63 0 0 3"
MPR4X64 U809 ( .A1(n557), .A0(n129), .SYNC_IN(n689), .DO63(n558), .DO62(n559), .DO61(n560),
 .DO60(n561), .DO59(n562), .DO58(n563), .DO57(n564), .DO56(n565), .DO55(n566), .DO54(n567), .DO53(n568),
 .DO52(n569), .DO51(n570), .DO50(n571), .DO49(n572), .DO48(n573), .DO47(n574), .DO46(n575), .DO45(n576),
 .DO44(n577), .DO43(n578), .DO42(n579), .DO41(n580), .DO40(n581), .DO39(n582), .DO38(n583), .DO37(n584),
 .DO36(n585), .DO35(n586), .DO34(n587), .DO33(n588), .DO32(n589), .DO31(n590), .DO30(n591), .DO29(n592),
 .DO28(n593), .DO27(n594), .DO26(n595), .DO25(n596), .DO24(n597), .DO23(n598), .DO22(n599), .DO21(n600),
 .DO20(n601), .DO19(n602), .DO18(n603), .DO17(n604), .DO16(n605), .DO15(n606), .DO14(n607), .DO13(n608),
 .DO12(n609), .DO11(n610), .DO10(n611), .DO9(n612), .DO8(n613), .DO7(n614), .DO6(n615), .DO5(n616),
 .DO4(n617), .DO3(n618), .DO2(n619), .DO1(n620), .DO0(n621), .SYNC_OUT( ));
`endif
`ifdef CBV

reg [63:0] _zzmiopos [0:3];
always @(n557 or xc_top.mioPOW_0[63] or xc_top.mioPOW_0[62] or xc_top.mioPOW_0[61] or xc_top.mioPOW_0[60]
 or xc_top.mioPOW_0[59] or xc_top.mioPOW_0[58] or xc_top.mioPOW_0[57] or xc_top.mioPOW_0[56] or xc_top.mioPOW_0[55] or xc_top.mioPOW_0[54] or xc_top.mioPOW_0[53] or xc_top.mioPOW_0[52]
 or xc_top.mioPOW_0[51] or xc_top.mioPOW_0[50] or xc_top.mioPOW_0[49] or xc_top.mioPOW_0[48] or xc_top.mioPOW_0[47] or xc_top.mioPOW_0[46] or xc_top.mioPOW_0[45] or xc_top.mioPOW_0[44]
 or xc_top.mioPOW_0[43] or xc_top.mioPOW_0[42] or xc_top.mioPOW_0[41] or xc_top.mioPOW_0[40] or xc_top.mioPOW_0[39] or xc_top.mioPOW_0[38] or xc_top.mioPOW_0[37] or xc_top.mioPOW_0[36]
 or xc_top.mioPOW_0[35] or xc_top.mioPOW_0[34] or xc_top.mioPOW_0[33] or xc_top.mioPOW_0[32] or xc_top.mioPOW_0[31] or xc_top.mioPOW_0[30] or xc_top.mioPOW_0[29] or xc_top.mioPOW_0[28]
 or xc_top.mioPOW_0[27] or xc_top.mioPOW_0[26] or xc_top.mioPOW_0[25] or xc_top.mioPOW_0[24] or xc_top.mioPOW_0[23] or xc_top.mioPOW_0[22] or xc_top.mioPOW_0[21] or xc_top.mioPOW_0[20]
 or xc_top.mioPOW_0[19] or xc_top.mioPOW_0[18] or xc_top.mioPOW_0[17] or xc_top.mioPOW_0[16] or xc_top.mioPOW_0[15] or xc_top.mioPOW_0[14] or xc_top.mioPOW_0[13] or xc_top.mioPOW_0[12]
 or xc_top.mioPOW_0[11] or xc_top.mioPOW_0[10] or xc_top.mioPOW_0[9] or xc_top.mioPOW_0[8] or xc_top.mioPOW_0[7] or xc_top.mioPOW_0[6] or xc_top.mioPOW_0[5] or xc_top.mioPOW_0[4]
 or xc_top.mioPOW_0[3] or xc_top.mioPOW_0[2] or xc_top.mioPOW_0[1] or xc_top.mioPOW_0[0] or n129 or nextClkTimePO[63] or nextClkTimePO[62] or nextClkTimePO[61]
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
if (n129)
_zzmiopos[{n557, n557}] =
{xc_top.mioPOW_0[63], xc_top.mioPOW_0[62], xc_top.mioPOW_0[61], xc_top.mioPOW_0[60], xc_top.mioPOW_0[59],
 xc_top.mioPOW_0[58], xc_top.mioPOW_0[57], xc_top.mioPOW_0[56], xc_top.mioPOW_0[55], xc_top.mioPOW_0[54], xc_top.mioPOW_0[53], xc_top.mioPOW_0[52], xc_top.mioPOW_0[51],
 xc_top.mioPOW_0[50], xc_top.mioPOW_0[49], xc_top.mioPOW_0[48], xc_top.mioPOW_0[47], xc_top.mioPOW_0[46], xc_top.mioPOW_0[45], xc_top.mioPOW_0[44], xc_top.mioPOW_0[43],
 xc_top.mioPOW_0[42], xc_top.mioPOW_0[41], xc_top.mioPOW_0[40], xc_top.mioPOW_0[39], xc_top.mioPOW_0[38], xc_top.mioPOW_0[37], xc_top.mioPOW_0[36], xc_top.mioPOW_0[35],
 xc_top.mioPOW_0[34], xc_top.mioPOW_0[33], xc_top.mioPOW_0[32], xc_top.mioPOW_0[31], xc_top.mioPOW_0[30], xc_top.mioPOW_0[29], xc_top.mioPOW_0[28], xc_top.mioPOW_0[27],
 xc_top.mioPOW_0[26], xc_top.mioPOW_0[25], xc_top.mioPOW_0[24], xc_top.mioPOW_0[23], xc_top.mioPOW_0[22], xc_top.mioPOW_0[21], xc_top.mioPOW_0[20], xc_top.mioPOW_0[19],
 xc_top.mioPOW_0[18], xc_top.mioPOW_0[17], xc_top.mioPOW_0[16], xc_top.mioPOW_0[15], xc_top.mioPOW_0[14], xc_top.mioPOW_0[13], xc_top.mioPOW_0[12], xc_top.mioPOW_0[11],
 xc_top.mioPOW_0[10], xc_top.mioPOW_0[9], xc_top.mioPOW_0[8], xc_top.mioPOW_0[7], xc_top.mioPOW_0[6], xc_top.mioPOW_0[5], xc_top.mioPOW_0[4], xc_top.mioPOW_0[3],
 xc_top.mioPOW_0[2], xc_top.mioPOW_0[1], xc_top.mioPOW_0[0]};
if (n129)
_zzmiopos[{n557, n129}] =
{nextClkTimePO[63], nextClkTimePO[62], nextClkTimePO[61], nextClkTimePO[60], nextClkTimePO[59],
 nextClkTimePO[58], nextClkTimePO[57], nextClkTimePO[56], nextClkTimePO[55], nextClkTimePO[54], nextClkTimePO[53], nextClkTimePO[52], nextClkTimePO[51],
 nextClkTimePO[50], nextClkTimePO[49], nextClkTimePO[48], nextClkTimePO[47], nextClkTimePO[46], nextClkTimePO[45], nextClkTimePO[44], nextClkTimePO[43],
 nextClkTimePO[42], nextClkTimePO[41], nextClkTimePO[40], nextClkTimePO[39], nextClkTimePO[38], nextClkTimePO[37], nextClkTimePO[36], nextClkTimePO[35],
 nextClkTimePO[34], nextClkTimePO[33], nextClkTimePO[32], nextClkTimePO[31], nextClkTimePO[30], nextClkTimePO[29], nextClkTimePO[28], nextClkTimePO[27],
 nextClkTimePO[26], nextClkTimePO[25], nextClkTimePO[24], nextClkTimePO[23], nextClkTimePO[22], nextClkTimePO[21], nextClkTimePO[20], nextClkTimePO[19],
 nextClkTimePO[18], nextClkTimePO[17], nextClkTimePO[16], nextClkTimePO[15], nextClkTimePO[14], nextClkTimePO[13], nextClkTimePO[12], nextClkTimePO[11],
 nextClkTimePO[10], nextClkTimePO[9], nextClkTimePO[8], nextClkTimePO[7], nextClkTimePO[6], nextClkTimePO[5], nextClkTimePO[4], nextClkTimePO[3],
 nextClkTimePO[2], nextClkTimePO[1], nextClkTimePO[0]};
if (n129)
_zzmiopos[{n129, n557}] =
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

MPW4X64 _zzmiopos ( .A1(n557), .A0(n557), .DI63(xc_top.mioPOW_0[63]), .DI62(xc_top.mioPOW_0[62]), .DI61(xc_top.mioPOW_0[61]), .DI60(xc_top.mioPOW_0[60]),
 .DI59(xc_top.mioPOW_0[59]), .DI58(xc_top.mioPOW_0[58]), .DI57(xc_top.mioPOW_0[57]), .DI56(xc_top.mioPOW_0[56]), .DI55(xc_top.mioPOW_0[55]), .DI54(xc_top.mioPOW_0[54]), .DI53(xc_top.mioPOW_0[53]), .DI52(xc_top.mioPOW_0[52]),
 .DI51(xc_top.mioPOW_0[51]), .DI50(xc_top.mioPOW_0[50]), .DI49(xc_top.mioPOW_0[49]), .DI48(xc_top.mioPOW_0[48]), .DI47(xc_top.mioPOW_0[47]), .DI46(xc_top.mioPOW_0[46]), .DI45(xc_top.mioPOW_0[45]), .DI44(xc_top.mioPOW_0[44]),
 .DI43(xc_top.mioPOW_0[43]), .DI42(xc_top.mioPOW_0[42]), .DI41(xc_top.mioPOW_0[41]), .DI40(xc_top.mioPOW_0[40]), .DI39(xc_top.mioPOW_0[39]), .DI38(xc_top.mioPOW_0[38]), .DI37(xc_top.mioPOW_0[37]), .DI36(xc_top.mioPOW_0[36]),
 .DI35(xc_top.mioPOW_0[35]), .DI34(xc_top.mioPOW_0[34]), .DI33(xc_top.mioPOW_0[33]), .DI32(xc_top.mioPOW_0[32]), .DI31(xc_top.mioPOW_0[31]), .DI30(xc_top.mioPOW_0[30]), .DI29(xc_top.mioPOW_0[29]), .DI28(xc_top.mioPOW_0[28]),
 .DI27(xc_top.mioPOW_0[27]), .DI26(xc_top.mioPOW_0[26]), .DI25(xc_top.mioPOW_0[25]), .DI24(xc_top.mioPOW_0[24]), .DI23(xc_top.mioPOW_0[23]), .DI22(xc_top.mioPOW_0[22]), .DI21(xc_top.mioPOW_0[21]), .DI20(xc_top.mioPOW_0[20]),
 .DI19(xc_top.mioPOW_0[19]), .DI18(xc_top.mioPOW_0[18]), .DI17(xc_top.mioPOW_0[17]), .DI16(xc_top.mioPOW_0[16]), .DI15(xc_top.mioPOW_0[15]), .DI14(xc_top.mioPOW_0[14]), .DI13(xc_top.mioPOW_0[13]), .DI12(xc_top.mioPOW_0[12]),
 .DI11(xc_top.mioPOW_0[11]), .DI10(xc_top.mioPOW_0[10]), .DI9(xc_top.mioPOW_0[9]), .DI8(xc_top.mioPOW_0[8]), .DI7(xc_top.mioPOW_0[7]), .DI6(xc_top.mioPOW_0[6]), .DI5(xc_top.mioPOW_0[5]), .DI4(xc_top.mioPOW_0[4]),
 .DI3(xc_top.mioPOW_0[3]), .DI2(xc_top.mioPOW_0[2]), .DI1(xc_top.mioPOW_0[1]), .DI0(xc_top.mioPOW_0[0]), .WE(n129), .SYNC_IN(n557), .SYNC_OUT(n690));
// pragma CVASTRPROP INSTANCE "_zzmiopos" HDL_MEMORY_DECL "1 63 0 0 3"
MPW4X64 U811 ( .A1(n557), .A0(n129), .DI63(nextClkTimePO[63]), .DI62(nextClkTimePO[62]), .DI61(nextClkTimePO[61]), .DI60(nextClkTimePO[60]),
 .DI59(nextClkTimePO[59]), .DI58(nextClkTimePO[58]), .DI57(nextClkTimePO[57]), .DI56(nextClkTimePO[56]), .DI55(nextClkTimePO[55]), .DI54(nextClkTimePO[54]), .DI53(nextClkTimePO[53]), .DI52(nextClkTimePO[52]),
 .DI51(nextClkTimePO[51]), .DI50(nextClkTimePO[50]), .DI49(nextClkTimePO[49]), .DI48(nextClkTimePO[48]), .DI47(nextClkTimePO[47]), .DI46(nextClkTimePO[46]), .DI45(nextClkTimePO[45]), .DI44(nextClkTimePO[44]),
 .DI43(nextClkTimePO[43]), .DI42(nextClkTimePO[42]), .DI41(nextClkTimePO[41]), .DI40(nextClkTimePO[40]), .DI39(nextClkTimePO[39]), .DI38(nextClkTimePO[38]), .DI37(nextClkTimePO[37]), .DI36(nextClkTimePO[36]),
 .DI35(nextClkTimePO[35]), .DI34(nextClkTimePO[34]), .DI33(nextClkTimePO[33]), .DI32(nextClkTimePO[32]), .DI31(nextClkTimePO[31]), .DI30(nextClkTimePO[30]), .DI29(nextClkTimePO[29]), .DI28(nextClkTimePO[28]),
 .DI27(nextClkTimePO[27]), .DI26(nextClkTimePO[26]), .DI25(nextClkTimePO[25]), .DI24(nextClkTimePO[24]), .DI23(nextClkTimePO[23]), .DI22(nextClkTimePO[22]), .DI21(nextClkTimePO[21]), .DI20(nextClkTimePO[20]),
 .DI19(nextClkTimePO[19]), .DI18(nextClkTimePO[18]), .DI17(nextClkTimePO[17]), .DI16(nextClkTimePO[16]), .DI15(nextClkTimePO[15]), .DI14(nextClkTimePO[14]), .DI13(nextClkTimePO[13]), .DI12(nextClkTimePO[12]),
 .DI11(nextClkTimePO[11]), .DI10(nextClkTimePO[10]), .DI9(nextClkTimePO[9]), .DI8(nextClkTimePO[8]), .DI7(nextClkTimePO[7]), .DI6(nextClkTimePO[6]), .DI5(nextClkTimePO[5]), .DI4(nextClkTimePO[4]),
 .DI3(nextClkTimePO[3]), .DI2(nextClkTimePO[2]), .DI1(nextClkTimePO[1]), .DI0(nextClkTimePO[0]), .WE(n129), .SYNC_IN(n690), .SYNC_OUT(n691));
MPW4X64 U812 ( .A1(n129), .A0(n557), .DI63(xc_top.mioPOW_2[63]), .DI62(xc_top.mioPOW_2[62]), .DI61(xc_top.mioPOW_2[61]), .DI60(xc_top.mioPOW_2[60]),
 .DI59(xc_top.mioPOW_2[59]), .DI58(xc_top.mioPOW_2[58]), .DI57(xc_top.mioPOW_2[57]), .DI56(xc_top.mioPOW_2[56]), .DI55(xc_top.mioPOW_2[55]), .DI54(xc_top.mioPOW_2[54]), .DI53(xc_top.mioPOW_2[53]), .DI52(xc_top.mioPOW_2[52]),
 .DI51(xc_top.mioPOW_2[51]), .DI50(xc_top.mioPOW_2[50]), .DI49(xc_top.mioPOW_2[49]), .DI48(xc_top.mioPOW_2[48]), .DI47(xc_top.mioPOW_2[47]), .DI46(xc_top.mioPOW_2[46]), .DI45(xc_top.mioPOW_2[45]), .DI44(xc_top.mioPOW_2[44]),
 .DI43(xc_top.mioPOW_2[43]), .DI42(xc_top.mioPOW_2[42]), .DI41(xc_top.mioPOW_2[41]), .DI40(xc_top.mioPOW_2[40]), .DI39(xc_top.mioPOW_2[39]), .DI38(xc_top.mioPOW_2[38]), .DI37(xc_top.mioPOW_2[37]), .DI36(xc_top.mioPOW_2[36]),
 .DI35(xc_top.mioPOW_2[35]), .DI34(xc_top.mioPOW_2[34]), .DI33(xc_top.mioPOW_2[33]), .DI32(xc_top.mioPOW_2[32]), .DI31(xc_top.mioPOW_2[31]), .DI30(xc_top.mioPOW_2[30]), .DI29(xc_top.mioPOW_2[29]), .DI28(xc_top.mioPOW_2[28]),
 .DI27(xc_top.mioPOW_2[27]), .DI26(xc_top.mioPOW_2[26]), .DI25(xc_top.mioPOW_2[25]), .DI24(xc_top.mioPOW_2[24]), .DI23(xc_top.mioPOW_2[23]), .DI22(xc_top.mioPOW_2[22]), .DI21(xc_top.mioPOW_2[21]), .DI20(xc_top.mioPOW_2[20]),
 .DI19(xc_top.mioPOW_2[19]), .DI18(xc_top.mioPOW_2[18]), .DI17(xc_top.mioPOW_2[17]), .DI16(xc_top.mioPOW_2[16]), .DI15(xc_top.mioPOW_2[15]), .DI14(xc_top.mioPOW_2[14]), .DI13(xc_top.mioPOW_2[13]), .DI12(xc_top.mioPOW_2[12]),
 .DI11(xc_top.mioPOW_2[11]), .DI10(xc_top.mioPOW_2[10]), .DI9(xc_top.mioPOW_2[9]), .DI8(xc_top.mioPOW_2[8]), .DI7(xc_top.mioPOW_2[7]), .DI6(xc_top.mioPOW_2[6]), .DI5(xc_top.mioPOW_2[5]), .DI4(xc_top.mioPOW_2[4]),
 .DI3(xc_top.mioPOW_2[3]), .DI2(xc_top.mioPOW_2[2]), .DI1(xc_top.mioPOW_2[1]), .DI0(xc_top.mioPOW_2[0]), .WE(n129), .SYNC_IN(n691), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zzcmds 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "_zzmiopis 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "_zzmiopos 1 63 0 0 3"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "3"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
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
