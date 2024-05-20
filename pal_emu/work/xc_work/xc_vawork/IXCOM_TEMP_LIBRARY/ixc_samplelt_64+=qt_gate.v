
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sampleLT_64 ( ov, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [63:0] ov;
input [63:0] v;
wire fclk;
Q_FDP0UA U0 ( .D(v[0]), .QTFCLK( ), .Q(ov[0]));
Q_FDP0UA U1 ( .D(v[1]), .QTFCLK( ), .Q(ov[1]));
Q_FDP0UA U2 ( .D(v[2]), .QTFCLK( ), .Q(ov[2]));
Q_FDP0UA U3 ( .D(v[3]), .QTFCLK( ), .Q(ov[3]));
Q_FDP0UA U4 ( .D(v[4]), .QTFCLK( ), .Q(ov[4]));
Q_FDP0UA U5 ( .D(v[5]), .QTFCLK( ), .Q(ov[5]));
Q_FDP0UA U6 ( .D(v[6]), .QTFCLK( ), .Q(ov[6]));
Q_FDP0UA U7 ( .D(v[7]), .QTFCLK( ), .Q(ov[7]));
Q_FDP0UA U8 ( .D(v[8]), .QTFCLK( ), .Q(ov[8]));
Q_FDP0UA U9 ( .D(v[9]), .QTFCLK( ), .Q(ov[9]));
Q_FDP0UA U10 ( .D(v[10]), .QTFCLK( ), .Q(ov[10]));
Q_FDP0UA U11 ( .D(v[11]), .QTFCLK( ), .Q(ov[11]));
Q_FDP0UA U12 ( .D(v[12]), .QTFCLK( ), .Q(ov[12]));
Q_FDP0UA U13 ( .D(v[13]), .QTFCLK( ), .Q(ov[13]));
Q_FDP0UA U14 ( .D(v[14]), .QTFCLK( ), .Q(ov[14]));
Q_FDP0UA U15 ( .D(v[15]), .QTFCLK( ), .Q(ov[15]));
Q_FDP0UA U16 ( .D(v[16]), .QTFCLK( ), .Q(ov[16]));
Q_FDP0UA U17 ( .D(v[17]), .QTFCLK( ), .Q(ov[17]));
Q_FDP0UA U18 ( .D(v[18]), .QTFCLK( ), .Q(ov[18]));
Q_FDP0UA U19 ( .D(v[19]), .QTFCLK( ), .Q(ov[19]));
Q_FDP0UA U20 ( .D(v[20]), .QTFCLK( ), .Q(ov[20]));
Q_FDP0UA U21 ( .D(v[21]), .QTFCLK( ), .Q(ov[21]));
Q_FDP0UA U22 ( .D(v[22]), .QTFCLK( ), .Q(ov[22]));
Q_FDP0UA U23 ( .D(v[23]), .QTFCLK( ), .Q(ov[23]));
Q_FDP0UA U24 ( .D(v[24]), .QTFCLK( ), .Q(ov[24]));
Q_FDP0UA U25 ( .D(v[25]), .QTFCLK( ), .Q(ov[25]));
Q_FDP0UA U26 ( .D(v[26]), .QTFCLK( ), .Q(ov[26]));
Q_FDP0UA U27 ( .D(v[27]), .QTFCLK( ), .Q(ov[27]));
Q_FDP0UA U28 ( .D(v[28]), .QTFCLK( ), .Q(ov[28]));
Q_FDP0UA U29 ( .D(v[29]), .QTFCLK( ), .Q(ov[29]));
Q_FDP0UA U30 ( .D(v[30]), .QTFCLK( ), .Q(ov[30]));
Q_FDP0UA U31 ( .D(v[31]), .QTFCLK( ), .Q(ov[31]));
Q_FDP0UA U32 ( .D(v[32]), .QTFCLK( ), .Q(ov[32]));
Q_FDP0UA U33 ( .D(v[33]), .QTFCLK( ), .Q(ov[33]));
Q_FDP0UA U34 ( .D(v[34]), .QTFCLK( ), .Q(ov[34]));
Q_FDP0UA U35 ( .D(v[35]), .QTFCLK( ), .Q(ov[35]));
Q_FDP0UA U36 ( .D(v[36]), .QTFCLK( ), .Q(ov[36]));
Q_FDP0UA U37 ( .D(v[37]), .QTFCLK( ), .Q(ov[37]));
Q_FDP0UA U38 ( .D(v[38]), .QTFCLK( ), .Q(ov[38]));
Q_FDP0UA U39 ( .D(v[39]), .QTFCLK( ), .Q(ov[39]));
Q_FDP0UA U40 ( .D(v[40]), .QTFCLK( ), .Q(ov[40]));
Q_FDP0UA U41 ( .D(v[41]), .QTFCLK( ), .Q(ov[41]));
Q_FDP0UA U42 ( .D(v[42]), .QTFCLK( ), .Q(ov[42]));
Q_FDP0UA U43 ( .D(v[43]), .QTFCLK( ), .Q(ov[43]));
Q_FDP0UA U44 ( .D(v[44]), .QTFCLK( ), .Q(ov[44]));
Q_FDP0UA U45 ( .D(v[45]), .QTFCLK( ), .Q(ov[45]));
Q_FDP0UA U46 ( .D(v[46]), .QTFCLK( ), .Q(ov[46]));
Q_FDP0UA U47 ( .D(v[47]), .QTFCLK( ), .Q(ov[47]));
Q_FDP0UA U48 ( .D(v[48]), .QTFCLK( ), .Q(ov[48]));
Q_FDP0UA U49 ( .D(v[49]), .QTFCLK( ), .Q(ov[49]));
Q_FDP0UA U50 ( .D(v[50]), .QTFCLK( ), .Q(ov[50]));
Q_FDP0UA U51 ( .D(v[51]), .QTFCLK( ), .Q(ov[51]));
Q_FDP0UA U52 ( .D(v[52]), .QTFCLK( ), .Q(ov[52]));
Q_FDP0UA U53 ( .D(v[53]), .QTFCLK( ), .Q(ov[53]));
Q_FDP0UA U54 ( .D(v[54]), .QTFCLK( ), .Q(ov[54]));
Q_FDP0UA U55 ( .D(v[55]), .QTFCLK( ), .Q(ov[55]));
Q_FDP0UA U56 ( .D(v[56]), .QTFCLK( ), .Q(ov[56]));
Q_FDP0UA U57 ( .D(v[57]), .QTFCLK( ), .Q(ov[57]));
Q_FDP0UA U58 ( .D(v[58]), .QTFCLK( ), .Q(ov[58]));
Q_FDP0UA U59 ( .D(v[59]), .QTFCLK( ), .Q(ov[59]));
Q_FDP0UA U60 ( .D(v[60]), .QTFCLK( ), .Q(ov[60]));
Q_FDP0UA U61 ( .D(v[61]), .QTFCLK( ), .Q(ov[61]));
Q_FDP0UA U62 ( .D(v[62]), .QTFCLK( ), .Q(ov[62]));
Q_FDP0UA U63 ( .D(v[63]), .QTFCLK( ), .Q(ov[63]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sampleLT"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
