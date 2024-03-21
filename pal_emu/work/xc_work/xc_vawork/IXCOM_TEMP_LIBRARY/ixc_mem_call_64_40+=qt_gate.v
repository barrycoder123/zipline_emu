
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mem_call_64_40 ( s2h_notify, s2h_data, from_isf, h2s_notify, 
	h2s_data, to_osf, maid, ltid);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output s2h_notify;
`_2_ output [63:0] s2h_data;
input from_isf;
input h2s_notify;
`_2_ input [39:0] h2s_data;
output to_osf;
`_2_ input [0:0] maid;
`_2_ input [0:0] ltid;
wire fclk;
wire callEvent;
`_2_ wire osfBusy;
`_2_ wire isfBusy;
`_2_ wire [63:0] s2hmport;
`_2_ wire [63:0] s2hxtail;
`_2_ wire s2hmark;
`_2_ wire s2hmarkN;
`_2_ wire ns2hd;
`_2_ wire [63:0] h2smport;
`_2_ wire nh2sd;
`_2_ wire h2s_notifyOv;
`_2_ wire [0:0] wptr;
`_2_ wire [0:0] rptr;
`_2_ wire [1:0] h2sstate;
`_2_ wire [1:0] s2hstate;
supply1 n20;
supply0 n24;
Q_ASSIGN U0 ( .B(from_isf), .A(s2h_notify));
Q_OR02 U1 ( .A0(s2hstate[1]), .A1(n11), .Z(n26));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_CCLKCHK cchk ( .sig(h2s_notify));
ixc_osf_evcap \genblk1.osfevcap ( h2s_notify, to_osf);
Q_BUFZP U5 ( .OE(n22), .A(n20), .Z(xcva_top.xc_top.isfWait));
Q_ND02 U6 ( .A0(n21), .A1(n23), .Z(n22));
Q_INV U7 ( .A(isfBusy), .Z(n23));
Q_MX02 U8 ( .S(ns2hd), .A0(s2hmark), .A1(s2hxtail[63]), .Z(s2hmarkN));
Q_INV U9 ( .A(n21), .Z(ns2hd));
Q_XNR2 U10 ( .A0(s2hxtail[63]), .A1(s2hmark), .Z(n21));
Q_INV U11 ( .A(rptr[0]), .Z(n19));
Q_LDN0 \s2h_data_REG[63] ( .G(rptr[0]), .D(s2hmport[63]), .Q(s2h_data[63]), .QN( ));
Q_LDN0 \s2h_data_REG[62] ( .G(rptr[0]), .D(s2hmport[62]), .Q(s2h_data[62]), .QN( ));
Q_LDN0 \s2h_data_REG[61] ( .G(rptr[0]), .D(s2hmport[61]), .Q(s2h_data[61]), .QN( ));
Q_LDN0 \s2h_data_REG[60] ( .G(rptr[0]), .D(s2hmport[60]), .Q(s2h_data[60]), .QN( ));
Q_LDN0 \s2h_data_REG[59] ( .G(rptr[0]), .D(s2hmport[59]), .Q(s2h_data[59]), .QN( ));
Q_LDN0 \s2h_data_REG[58] ( .G(rptr[0]), .D(s2hmport[58]), .Q(s2h_data[58]), .QN( ));
Q_LDN0 \s2h_data_REG[57] ( .G(rptr[0]), .D(s2hmport[57]), .Q(s2h_data[57]), .QN( ));
Q_LDN0 \s2h_data_REG[56] ( .G(rptr[0]), .D(s2hmport[56]), .Q(s2h_data[56]), .QN( ));
Q_LDN0 \s2h_data_REG[55] ( .G(rptr[0]), .D(s2hmport[55]), .Q(s2h_data[55]), .QN( ));
Q_LDN0 \s2h_data_REG[54] ( .G(rptr[0]), .D(s2hmport[54]), .Q(s2h_data[54]), .QN( ));
Q_LDN0 \s2h_data_REG[53] ( .G(rptr[0]), .D(s2hmport[53]), .Q(s2h_data[53]), .QN( ));
Q_LDN0 \s2h_data_REG[52] ( .G(rptr[0]), .D(s2hmport[52]), .Q(s2h_data[52]), .QN( ));
Q_LDN0 \s2h_data_REG[51] ( .G(rptr[0]), .D(s2hmport[51]), .Q(s2h_data[51]), .QN( ));
Q_LDN0 \s2h_data_REG[50] ( .G(rptr[0]), .D(s2hmport[50]), .Q(s2h_data[50]), .QN( ));
Q_LDN0 \s2h_data_REG[49] ( .G(rptr[0]), .D(s2hmport[49]), .Q(s2h_data[49]), .QN( ));
Q_LDN0 \s2h_data_REG[48] ( .G(rptr[0]), .D(s2hmport[48]), .Q(s2h_data[48]), .QN( ));
Q_LDN0 \s2h_data_REG[47] ( .G(rptr[0]), .D(s2hmport[47]), .Q(s2h_data[47]), .QN( ));
Q_LDN0 \s2h_data_REG[46] ( .G(rptr[0]), .D(s2hmport[46]), .Q(s2h_data[46]), .QN( ));
Q_LDN0 \s2h_data_REG[45] ( .G(rptr[0]), .D(s2hmport[45]), .Q(s2h_data[45]), .QN( ));
Q_LDN0 \s2h_data_REG[44] ( .G(rptr[0]), .D(s2hmport[44]), .Q(s2h_data[44]), .QN( ));
Q_LDN0 \s2h_data_REG[43] ( .G(rptr[0]), .D(s2hmport[43]), .Q(s2h_data[43]), .QN( ));
Q_LDN0 \s2h_data_REG[42] ( .G(rptr[0]), .D(s2hmport[42]), .Q(s2h_data[42]), .QN( ));
Q_LDN0 \s2h_data_REG[41] ( .G(rptr[0]), .D(s2hmport[41]), .Q(s2h_data[41]), .QN( ));
Q_LDN0 \s2h_data_REG[40] ( .G(rptr[0]), .D(s2hmport[40]), .Q(s2h_data[40]), .QN( ));
Q_LDN0 \s2h_data_REG[39] ( .G(rptr[0]), .D(s2hmport[39]), .Q(s2h_data[39]), .QN( ));
Q_LDN0 \s2h_data_REG[38] ( .G(rptr[0]), .D(s2hmport[38]), .Q(s2h_data[38]), .QN( ));
Q_LDN0 \s2h_data_REG[37] ( .G(rptr[0]), .D(s2hmport[37]), .Q(s2h_data[37]), .QN( ));
Q_LDN0 \s2h_data_REG[36] ( .G(rptr[0]), .D(s2hmport[36]), .Q(s2h_data[36]), .QN( ));
Q_LDN0 \s2h_data_REG[35] ( .G(rptr[0]), .D(s2hmport[35]), .Q(s2h_data[35]), .QN( ));
Q_LDN0 \s2h_data_REG[34] ( .G(rptr[0]), .D(s2hmport[34]), .Q(s2h_data[34]), .QN( ));
Q_LDN0 \s2h_data_REG[33] ( .G(rptr[0]), .D(s2hmport[33]), .Q(s2h_data[33]), .QN( ));
Q_LDN0 \s2h_data_REG[32] ( .G(rptr[0]), .D(s2hmport[32]), .Q(s2h_data[32]), .QN( ));
Q_LDN0 \s2h_data_REG[31] ( .G(rptr[0]), .D(s2hmport[31]), .Q(s2h_data[31]), .QN( ));
Q_LDN0 \s2h_data_REG[30] ( .G(rptr[0]), .D(s2hmport[30]), .Q(s2h_data[30]), .QN( ));
Q_LDN0 \s2h_data_REG[29] ( .G(rptr[0]), .D(s2hmport[29]), .Q(s2h_data[29]), .QN( ));
Q_LDN0 \s2h_data_REG[28] ( .G(rptr[0]), .D(s2hmport[28]), .Q(s2h_data[28]), .QN( ));
Q_LDN0 \s2h_data_REG[27] ( .G(rptr[0]), .D(s2hmport[27]), .Q(s2h_data[27]), .QN( ));
Q_LDN0 \s2h_data_REG[26] ( .G(rptr[0]), .D(s2hmport[26]), .Q(s2h_data[26]), .QN( ));
Q_LDN0 \s2h_data_REG[25] ( .G(rptr[0]), .D(s2hmport[25]), .Q(s2h_data[25]), .QN( ));
Q_LDN0 \s2h_data_REG[24] ( .G(rptr[0]), .D(s2hmport[24]), .Q(s2h_data[24]), .QN( ));
Q_LDN0 \s2h_data_REG[23] ( .G(rptr[0]), .D(s2hmport[23]), .Q(s2h_data[23]), .QN( ));
Q_LDN0 \s2h_data_REG[22] ( .G(rptr[0]), .D(s2hmport[22]), .Q(s2h_data[22]), .QN( ));
Q_LDN0 \s2h_data_REG[21] ( .G(rptr[0]), .D(s2hmport[21]), .Q(s2h_data[21]), .QN( ));
Q_LDN0 \s2h_data_REG[20] ( .G(rptr[0]), .D(s2hmport[20]), .Q(s2h_data[20]), .QN( ));
Q_LDN0 \s2h_data_REG[19] ( .G(rptr[0]), .D(s2hmport[19]), .Q(s2h_data[19]), .QN( ));
Q_LDN0 \s2h_data_REG[18] ( .G(rptr[0]), .D(s2hmport[18]), .Q(s2h_data[18]), .QN( ));
Q_LDN0 \s2h_data_REG[17] ( .G(rptr[0]), .D(s2hmport[17]), .Q(s2h_data[17]), .QN( ));
Q_LDN0 \s2h_data_REG[16] ( .G(rptr[0]), .D(s2hmport[16]), .Q(s2h_data[16]), .QN( ));
Q_LDN0 \s2h_data_REG[15] ( .G(rptr[0]), .D(s2hmport[15]), .Q(s2h_data[15]), .QN( ));
Q_LDN0 \s2h_data_REG[14] ( .G(rptr[0]), .D(s2hmport[14]), .Q(s2h_data[14]), .QN( ));
Q_LDN0 \s2h_data_REG[13] ( .G(rptr[0]), .D(s2hmport[13]), .Q(s2h_data[13]), .QN( ));
Q_LDN0 \s2h_data_REG[12] ( .G(rptr[0]), .D(s2hmport[12]), .Q(s2h_data[12]), .QN( ));
Q_LDN0 \s2h_data_REG[11] ( .G(rptr[0]), .D(s2hmport[11]), .Q(s2h_data[11]), .QN( ));
Q_LDN0 \s2h_data_REG[10] ( .G(rptr[0]), .D(s2hmport[10]), .Q(s2h_data[10]), .QN( ));
Q_LDN0 \s2h_data_REG[9] ( .G(rptr[0]), .D(s2hmport[9]), .Q(s2h_data[9]), .QN( ));
Q_LDN0 \s2h_data_REG[8] ( .G(rptr[0]), .D(s2hmport[8]), .Q(s2h_data[8]), .QN( ));
Q_LDN0 \s2h_data_REG[7] ( .G(rptr[0]), .D(s2hmport[7]), .Q(s2h_data[7]), .QN( ));
Q_LDN0 \s2h_data_REG[6] ( .G(rptr[0]), .D(s2hmport[6]), .Q(s2h_data[6]), .QN( ));
Q_LDN0 \s2h_data_REG[5] ( .G(rptr[0]), .D(s2hmport[5]), .Q(s2h_data[5]), .QN( ));
Q_LDN0 \s2h_data_REG[4] ( .G(rptr[0]), .D(s2hmport[4]), .Q(s2h_data[4]), .QN( ));
Q_LDN0 \s2h_data_REG[3] ( .G(rptr[0]), .D(s2hmport[3]), .Q(s2h_data[3]), .QN( ));
Q_LDN0 \s2h_data_REG[2] ( .G(rptr[0]), .D(s2hmport[2]), .Q(s2h_data[2]), .QN( ));
Q_LDN0 \s2h_data_REG[1] ( .G(rptr[0]), .D(s2hmport[1]), .Q(s2h_data[1]), .QN( ));
Q_LDN0 \s2h_data_REG[0] ( .G(rptr[0]), .D(s2hmport[0]), .Q(s2h_data[0]), .QN( ));
Q_FDP0UA U76 ( .D(s2hmarkN), .QTFCLK( ), .Q(s2hmark));
Q_FDP0UA U77 ( .D(n16), .QTFCLK( ), .Q(rptr[0]));
Q_MX02 U78 ( .S(n10), .A0(rptr[0]), .A1(n17), .Z(n16));
Q_FDP0UA U79 ( .D(n15), .QTFCLK( ), .Q(isfBusy));
Q_MX02 U80 ( .S(n9), .A0(n6), .A1(isfBusy), .Z(n15));
Q_FDP0UA U81 ( .D(n14), .QTFCLK( ), .Q(s2hstate[1]));
Q_MX02 U82 ( .S(n9), .A0(s2hstate[0]), .A1(s2hstate[1]), .Z(n14));
Q_FDP0UA U83 ( .D(n13), .QTFCLK( ), .Q(s2hstate[0]));
Q_MX02 U84 ( .S(n9), .A0(n12), .A1(s2hstate[0]), .Z(n13));
Q_NR02 U85 ( .A0(s2hstate[1]), .A1(s2hstate[0]), .Z(n12));
Q_AN02 U86 ( .A0(n26), .A1(n19), .Z(n17));
Q_AN02 U87 ( .A0(s2hstate[1]), .A1(rptr[0]), .Z(n11));
Q_ND02 U88 ( .A0(s2hstate[1]), .A1(s2hstate[0]), .Z(n10));
Q_MX02 U89 ( .S(s2hstate[1]), .A0(n8), .A1(n7), .Z(n9));
Q_NR02 U90 ( .A0(s2hstate[0]), .A1(ns2hd), .Z(n8));
Q_OR02 U91 ( .A0(s2hstate[0]), .A1(rptr[0]), .Z(n7));
Q_INV U92 ( .A(s2hstate[1]), .Z(n6));
`ifdef CBV

reg [63:0] _zyh2smem [0:0];
always @(n24 or h2s_data[39] or h2s_data[38] or h2s_data[37] or h2s_data[36]
 or h2s_data[35] or h2s_data[34] or h2s_data[33] or h2s_data[32] or h2s_data[31] or h2s_data[30] or h2s_data[29] or h2s_data[28]
 or h2s_data[27] or h2s_data[26] or h2s_data[25] or h2s_data[24] or h2s_data[23] or h2s_data[22] or h2s_data[21] or h2s_data[20]
 or h2s_data[19] or h2s_data[18] or h2s_data[17] or h2s_data[16] or h2s_data[15] or h2s_data[14] or h2s_data[13] or h2s_data[12]
 or h2s_data[11] or h2s_data[10] or h2s_data[9] or h2s_data[8] or h2s_data[7] or h2s_data[6] or h2s_data[5] or h2s_data[4]
 or h2s_data[3] or h2s_data[2] or h2s_data[1] or h2s_data[0] or n20)
#0 begin
if (n20)
_zyh2smem[{n24}] =
{n24, n24, n24, n24, n24,
 n24, n24, n24, n24, n24, n24, n24, n24,
 n24, n24, n24, n24, n24, n24, n24, n24,
 n24, n24, n24, h2s_data[39], h2s_data[38], h2s_data[37], h2s_data[36], h2s_data[35],
 h2s_data[34], h2s_data[33], h2s_data[32], h2s_data[31], h2s_data[30], h2s_data[29], h2s_data[28], h2s_data[27],
 h2s_data[26], h2s_data[25], h2s_data[24], h2s_data[23], h2s_data[22], h2s_data[21], h2s_data[20], h2s_data[19],
 h2s_data[18], h2s_data[17], h2s_data[16], h2s_data[15], h2s_data[14], h2s_data[13], h2s_data[12], h2s_data[11],
 h2s_data[10], h2s_data[9], h2s_data[8], h2s_data[7], h2s_data[6], h2s_data[5], h2s_data[4], h2s_data[3],
 h2s_data[2], h2s_data[1], h2s_data[0]};
end
`else

MPW2X64 _zyh2smem ( .A0(n24), .DI63(n24), .DI62(n24), .DI61(n24), .DI60(n24), .DI59(n24),
 .DI58(n24), .DI57(n24), .DI56(n24), .DI55(n24), .DI54(n24), .DI53(n24), .DI52(n24), .DI51(n24),
 .DI50(n24), .DI49(n24), .DI48(n24), .DI47(n24), .DI46(n24), .DI45(n24), .DI44(n24), .DI43(n24),
 .DI42(n24), .DI41(n24), .DI40(n24), .DI39(h2s_data[39]), .DI38(h2s_data[38]), .DI37(h2s_data[37]), .DI36(h2s_data[36]), .DI35(h2s_data[35]),
 .DI34(h2s_data[34]), .DI33(h2s_data[33]), .DI32(h2s_data[32]), .DI31(h2s_data[31]), .DI30(h2s_data[30]), .DI29(h2s_data[29]), .DI28(h2s_data[28]), .DI27(h2s_data[27]),
 .DI26(h2s_data[26]), .DI25(h2s_data[25]), .DI24(h2s_data[24]), .DI23(h2s_data[23]), .DI22(h2s_data[22]), .DI21(h2s_data[21]), .DI20(h2s_data[20]), .DI19(h2s_data[19]),
 .DI18(h2s_data[18]), .DI17(h2s_data[17]), .DI16(h2s_data[16]), .DI15(h2s_data[15]), .DI14(h2s_data[14]), .DI13(h2s_data[13]), .DI12(h2s_data[12]), .DI11(h2s_data[11]),
 .DI10(h2s_data[10]), .DI9(h2s_data[9]), .DI8(h2s_data[8]), .DI7(h2s_data[7]), .DI6(h2s_data[6]), .DI5(h2s_data[5]), .DI4(h2s_data[4]), .DI3(h2s_data[3]),
 .DI2(h2s_data[2]), .DI1(h2s_data[1]), .DI0(h2s_data[0]), .WE(n20), .SYNC_IN(n24), .SYNC_OUT( ));
// pragma CVASTRPROP INSTANCE "_zyh2smem" HDL_MEMORY_DECL "1 63 0 0 0"
`endif
`ifdef CBV

reg [63:0] _zys2hmem [0:1];
initial begin: U94
  integer i;
  for (i=0; i<=1; i=i+1) _zys2hmem[i] =
`ifdef CBV_MEM_INIT1
  {64{1'b1}};
`else
  64'b0;
`endif
end
reg [63:0] n28;
buf(s2hxtail[63], n28[63]);
buf(s2hxtail[62], n28[62]);
buf(s2hxtail[61], n28[61]);
buf(s2hxtail[60], n28[60]);
buf(s2hxtail[59], n28[59]);
buf(s2hxtail[58], n28[58]);
buf(s2hxtail[57], n28[57]);
buf(s2hxtail[56], n28[56]);
buf(s2hxtail[55], n28[55]);
buf(s2hxtail[54], n28[54]);
buf(s2hxtail[53], n28[53]);
buf(s2hxtail[52], n28[52]);
buf(s2hxtail[51], n28[51]);
buf(s2hxtail[50], n28[50]);
buf(s2hxtail[49], n28[49]);
buf(s2hxtail[48], n28[48]);
buf(s2hxtail[47], n28[47]);
buf(s2hxtail[46], n28[46]);
buf(s2hxtail[45], n28[45]);
buf(s2hxtail[44], n28[44]);
buf(s2hxtail[43], n28[43]);
buf(s2hxtail[42], n28[42]);
buf(s2hxtail[41], n28[41]);
buf(s2hxtail[40], n28[40]);
buf(s2hxtail[39], n28[39]);
buf(s2hxtail[38], n28[38]);
buf(s2hxtail[37], n28[37]);
buf(s2hxtail[36], n28[36]);
buf(s2hxtail[35], n28[35]);
buf(s2hxtail[34], n28[34]);
buf(s2hxtail[33], n28[33]);
buf(s2hxtail[32], n28[32]);
buf(s2hxtail[31], n28[31]);
buf(s2hxtail[30], n28[30]);
buf(s2hxtail[29], n28[29]);
buf(s2hxtail[28], n28[28]);
buf(s2hxtail[27], n28[27]);
buf(s2hxtail[26], n28[26]);
buf(s2hxtail[25], n28[25]);
buf(s2hxtail[24], n28[24]);
buf(s2hxtail[23], n28[23]);
buf(s2hxtail[22], n28[22]);
buf(s2hxtail[21], n28[21]);
buf(s2hxtail[20], n28[20]);
buf(s2hxtail[19], n28[19]);
buf(s2hxtail[18], n28[18]);
buf(s2hxtail[17], n28[17]);
buf(s2hxtail[16], n28[16]);
buf(s2hxtail[15], n28[15]);
buf(s2hxtail[14], n28[14]);
buf(s2hxtail[13], n28[13]);
buf(s2hxtail[12], n28[12]);
buf(s2hxtail[11], n28[11]);
buf(s2hxtail[10], n28[10]);
buf(s2hxtail[9], n28[9]);
buf(s2hxtail[8], n28[8]);
buf(s2hxtail[7], n28[7]);
buf(s2hxtail[6], n28[6]);
buf(s2hxtail[5], n28[5]);
buf(s2hxtail[4], n28[4]);
buf(s2hxtail[3], n28[3]);
buf(s2hxtail[2], n28[2]);
buf(s2hxtail[1], n28[1]);
buf(s2hxtail[0], n28[0]);
reg [63:0] n27;
assign {s2hmport[63], s2hmport[62], s2hmport[61], s2hmport[60], s2hmport[59], s2hmport[58], s2hmport[57],
s2hmport[56], s2hmport[55], s2hmport[54], s2hmport[53], s2hmport[52], s2hmport[51], s2hmport[50], s2hmport[49],
s2hmport[48], s2hmport[47], s2hmport[46], s2hmport[45], s2hmport[44], s2hmport[43], s2hmport[42], s2hmport[41],
s2hmport[40], s2hmport[39], s2hmport[38], s2hmport[37], s2hmport[36], s2hmport[35], s2hmport[34], s2hmport[33],
s2hmport[32], s2hmport[31], s2hmport[30], s2hmport[29], s2hmport[28], s2hmport[27], s2hmport[26], s2hmport[25],
s2hmport[24], s2hmport[23], s2hmport[22], s2hmport[21], s2hmport[20], s2hmport[19], s2hmport[18], s2hmport[17],
s2hmport[16], s2hmport[15], s2hmport[14], s2hmport[13], s2hmport[12], s2hmport[11], s2hmport[10], s2hmport[9],
s2hmport[8], s2hmport[7], s2hmport[6], s2hmport[5], s2hmport[4], s2hmport[3], s2hmport[2], s2hmport[1],
s2hmport[0]} = n27; 
always @(n20 or rptr[0])
#0 begin
n28 = _zys2hmem[{n20}];
n27 = _zys2hmem[{rptr[0]}];
end
`else

MPR2X64 _zys2hmem ( .A0(n20), .SYNC_IN(n24), .DO63(s2hxtail[63]), .DO62(s2hxtail[62]), .DO61(s2hxtail[61]), .DO60(s2hxtail[60]),
 .DO59(s2hxtail[59]), .DO58(s2hxtail[58]), .DO57(s2hxtail[57]), .DO56(s2hxtail[56]), .DO55(s2hxtail[55]), .DO54(s2hxtail[54]), .DO53(s2hxtail[53]), .DO52(s2hxtail[52]),
 .DO51(s2hxtail[51]), .DO50(s2hxtail[50]), .DO49(s2hxtail[49]), .DO48(s2hxtail[48]), .DO47(s2hxtail[47]), .DO46(s2hxtail[46]), .DO45(s2hxtail[45]), .DO44(s2hxtail[44]),
 .DO43(s2hxtail[43]), .DO42(s2hxtail[42]), .DO41(s2hxtail[41]), .DO40(s2hxtail[40]), .DO39(s2hxtail[39]), .DO38(s2hxtail[38]), .DO37(s2hxtail[37]), .DO36(s2hxtail[36]),
 .DO35(s2hxtail[35]), .DO34(s2hxtail[34]), .DO33(s2hxtail[33]), .DO32(s2hxtail[32]), .DO31(s2hxtail[31]), .DO30(s2hxtail[30]), .DO29(s2hxtail[29]), .DO28(s2hxtail[28]),
 .DO27(s2hxtail[27]), .DO26(s2hxtail[26]), .DO25(s2hxtail[25]), .DO24(s2hxtail[24]), .DO23(s2hxtail[23]), .DO22(s2hxtail[22]), .DO21(s2hxtail[21]), .DO20(s2hxtail[20]),
 .DO19(s2hxtail[19]), .DO18(s2hxtail[18]), .DO17(s2hxtail[17]), .DO16(s2hxtail[16]), .DO15(s2hxtail[15]), .DO14(s2hxtail[14]), .DO13(s2hxtail[13]), .DO12(s2hxtail[12]),
 .DO11(s2hxtail[11]), .DO10(s2hxtail[10]), .DO9(s2hxtail[9]), .DO8(s2hxtail[8]), .DO7(s2hxtail[7]), .DO6(s2hxtail[6]), .DO5(s2hxtail[5]), .DO4(s2hxtail[4]),
 .DO3(s2hxtail[3]), .DO2(s2hxtail[2]), .DO1(s2hxtail[1]), .DO0(s2hxtail[0]), .SYNC_OUT(n27));
// pragma CVASTRPROP INSTANCE "_zys2hmem" HDL_MEMORY_DECL "1 63 0 0 1"
MPR2X64 U95 ( .A0(rptr[0]), .SYNC_IN(n27), .DO63(s2hmport[63]), .DO62(s2hmport[62]), .DO61(s2hmport[61]), .DO60(s2hmport[60]),
 .DO59(s2hmport[59]), .DO58(s2hmport[58]), .DO57(s2hmport[57]), .DO56(s2hmport[56]), .DO55(s2hmport[55]), .DO54(s2hmport[54]), .DO53(s2hmport[53]), .DO52(s2hmport[52]),
 .DO51(s2hmport[51]), .DO50(s2hmport[50]), .DO49(s2hmport[49]), .DO48(s2hmport[48]), .DO47(s2hmport[47]), .DO46(s2hmport[46]), .DO45(s2hmport[45]), .DO44(s2hmport[44]),
 .DO43(s2hmport[43]), .DO42(s2hmport[42]), .DO41(s2hmport[41]), .DO40(s2hmport[40]), .DO39(s2hmport[39]), .DO38(s2hmport[38]), .DO37(s2hmport[37]), .DO36(s2hmport[36]),
 .DO35(s2hmport[35]), .DO34(s2hmport[34]), .DO33(s2hmport[33]), .DO32(s2hmport[32]), .DO31(s2hmport[31]), .DO30(s2hmport[30]), .DO29(s2hmport[29]), .DO28(s2hmport[28]),
 .DO27(s2hmport[27]), .DO26(s2hmport[26]), .DO25(s2hmport[25]), .DO24(s2hmport[24]), .DO23(s2hmport[23]), .DO22(s2hmport[22]), .DO21(s2hmport[21]), .DO20(s2hmport[20]),
 .DO19(s2hmport[19]), .DO18(s2hmport[18]), .DO17(s2hmport[17]), .DO16(s2hmport[16]), .DO15(s2hmport[15]), .DO14(s2hmport[14]), .DO13(s2hmport[13]), .DO12(s2hmport[12]),
 .DO11(s2hmport[11]), .DO10(s2hmport[10]), .DO9(s2hmport[9]), .DO8(s2hmport[8]), .DO7(s2hmport[7]), .DO6(s2hmport[6]), .DO5(s2hmport[5]), .DO4(s2hmport[4]),
 .DO3(s2hmport[3]), .DO2(s2hmport[2]), .DO1(s2hmport[1]), .DO0(s2hmport[0]), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zys2hmem 1 63 0 0 1"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "_zyh2smem 1 63 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "2"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mem_call"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW2X64_MPR2X64
`else
module MPW2X64( A0, DI63, DI62, DI61, DI60, DI59, DI58,
 DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50,
 DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42,
 DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34,
 DI33, DI32, DI31, DI30, DI29, DI28, DI27, DI26,
 DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
 DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10,
 DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2,
 DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A0, DI63, DI62, DI61, DI60, DI59, DI58, DI57,
 DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49, DI48, DI47,
 DI46, DI45, DI44, DI43, DI42, DI41, DI40, DI39, DI38, DI37,
 DI36, DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17,
 DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9, DI8, DI7,
 DI6, DI5, DI4, DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2X64_
`else
module MPR2X64( A0, SYNC_IN, DO63, DO62, DO61, DO60, DO59,
 DO58, DO57, DO56, DO55, DO54, DO53, DO52, DO51,
 DO50, DO49, DO48, DO47, DO46, DO45, DO44, DO43,
 DO42, DO41, DO40, DO39, DO38, DO37, DO36, DO35,
 DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27,
 DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19,
 DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11,
 DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3,
 DO2, DO1, DO0, SYNC_OUT);
input  A0, SYNC_IN;
output  DO63, DO62, DO61, DO60, DO59, DO58, DO57, DO56,
 DO55, DO54, DO53, DO52, DO51, DO50, DO49, DO48, DO47, DO46,
 DO45, DO44, DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27, DO26,
 DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16,
 DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6,
 DO5, DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR2X64_
`endif
`define MPW2X64_MPR2X64
`endif
`endif
