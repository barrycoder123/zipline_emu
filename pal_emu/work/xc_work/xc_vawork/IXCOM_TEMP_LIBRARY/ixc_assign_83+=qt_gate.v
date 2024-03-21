
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_assign_83 ( L, R);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [82:0] L;
input [82:0] R;
Q_ASSIGN U0 ( .B(R[0]), .A(L[0]));
Q_ASSIGN U1 ( .B(R[1]), .A(L[1]));
Q_ASSIGN U2 ( .B(R[2]), .A(L[2]));
Q_ASSIGN U3 ( .B(R[3]), .A(L[3]));
Q_ASSIGN U4 ( .B(R[4]), .A(L[4]));
Q_ASSIGN U5 ( .B(R[5]), .A(L[5]));
Q_ASSIGN U6 ( .B(R[6]), .A(L[6]));
Q_ASSIGN U7 ( .B(R[7]), .A(L[7]));
Q_ASSIGN U8 ( .B(R[8]), .A(L[8]));
Q_ASSIGN U9 ( .B(R[9]), .A(L[9]));
Q_ASSIGN U10 ( .B(R[10]), .A(L[10]));
Q_ASSIGN U11 ( .B(R[11]), .A(L[11]));
Q_ASSIGN U12 ( .B(R[12]), .A(L[12]));
Q_ASSIGN U13 ( .B(R[13]), .A(L[13]));
Q_ASSIGN U14 ( .B(R[14]), .A(L[14]));
Q_ASSIGN U15 ( .B(R[15]), .A(L[15]));
Q_ASSIGN U16 ( .B(R[16]), .A(L[16]));
Q_ASSIGN U17 ( .B(R[17]), .A(L[17]));
Q_ASSIGN U18 ( .B(R[18]), .A(L[18]));
Q_ASSIGN U19 ( .B(R[19]), .A(L[19]));
Q_ASSIGN U20 ( .B(R[20]), .A(L[20]));
Q_ASSIGN U21 ( .B(R[21]), .A(L[21]));
Q_ASSIGN U22 ( .B(R[22]), .A(L[22]));
Q_ASSIGN U23 ( .B(R[23]), .A(L[23]));
Q_ASSIGN U24 ( .B(R[24]), .A(L[24]));
Q_ASSIGN U25 ( .B(R[25]), .A(L[25]));
Q_ASSIGN U26 ( .B(R[26]), .A(L[26]));
Q_ASSIGN U27 ( .B(R[27]), .A(L[27]));
Q_ASSIGN U28 ( .B(R[28]), .A(L[28]));
Q_ASSIGN U29 ( .B(R[29]), .A(L[29]));
Q_ASSIGN U30 ( .B(R[30]), .A(L[30]));
Q_ASSIGN U31 ( .B(R[31]), .A(L[31]));
Q_ASSIGN U32 ( .B(R[32]), .A(L[32]));
Q_ASSIGN U33 ( .B(R[33]), .A(L[33]));
Q_ASSIGN U34 ( .B(R[34]), .A(L[34]));
Q_ASSIGN U35 ( .B(R[35]), .A(L[35]));
Q_ASSIGN U36 ( .B(R[36]), .A(L[36]));
Q_ASSIGN U37 ( .B(R[37]), .A(L[37]));
Q_ASSIGN U38 ( .B(R[38]), .A(L[38]));
Q_ASSIGN U39 ( .B(R[39]), .A(L[39]));
Q_ASSIGN U40 ( .B(R[40]), .A(L[40]));
Q_ASSIGN U41 ( .B(R[41]), .A(L[41]));
Q_ASSIGN U42 ( .B(R[42]), .A(L[42]));
Q_ASSIGN U43 ( .B(R[43]), .A(L[43]));
Q_ASSIGN U44 ( .B(R[44]), .A(L[44]));
Q_ASSIGN U45 ( .B(R[45]), .A(L[45]));
Q_ASSIGN U46 ( .B(R[46]), .A(L[46]));
Q_ASSIGN U47 ( .B(R[47]), .A(L[47]));
Q_ASSIGN U48 ( .B(R[48]), .A(L[48]));
Q_ASSIGN U49 ( .B(R[49]), .A(L[49]));
Q_ASSIGN U50 ( .B(R[50]), .A(L[50]));
Q_ASSIGN U51 ( .B(R[51]), .A(L[51]));
Q_ASSIGN U52 ( .B(R[52]), .A(L[52]));
Q_ASSIGN U53 ( .B(R[53]), .A(L[53]));
Q_ASSIGN U54 ( .B(R[54]), .A(L[54]));
Q_ASSIGN U55 ( .B(R[55]), .A(L[55]));
Q_ASSIGN U56 ( .B(R[56]), .A(L[56]));
Q_ASSIGN U57 ( .B(R[57]), .A(L[57]));
Q_ASSIGN U58 ( .B(R[58]), .A(L[58]));
Q_ASSIGN U59 ( .B(R[59]), .A(L[59]));
Q_ASSIGN U60 ( .B(R[60]), .A(L[60]));
Q_ASSIGN U61 ( .B(R[61]), .A(L[61]));
Q_ASSIGN U62 ( .B(R[62]), .A(L[62]));
Q_ASSIGN U63 ( .B(R[63]), .A(L[63]));
Q_ASSIGN U64 ( .B(R[64]), .A(L[64]));
Q_ASSIGN U65 ( .B(R[65]), .A(L[65]));
Q_ASSIGN U66 ( .B(R[66]), .A(L[66]));
Q_ASSIGN U67 ( .B(R[67]), .A(L[67]));
Q_ASSIGN U68 ( .B(R[68]), .A(L[68]));
Q_ASSIGN U69 ( .B(R[69]), .A(L[69]));
Q_ASSIGN U70 ( .B(R[70]), .A(L[70]));
Q_ASSIGN U71 ( .B(R[71]), .A(L[71]));
Q_ASSIGN U72 ( .B(R[72]), .A(L[72]));
Q_ASSIGN U73 ( .B(R[73]), .A(L[73]));
Q_ASSIGN U74 ( .B(R[74]), .A(L[74]));
Q_ASSIGN U75 ( .B(R[75]), .A(L[75]));
Q_ASSIGN U76 ( .B(R[76]), .A(L[76]));
Q_ASSIGN U77 ( .B(R[77]), .A(L[77]));
Q_ASSIGN U78 ( .B(R[78]), .A(L[78]));
Q_ASSIGN U79 ( .B(R[79]), .A(L[79]));
Q_ASSIGN U80 ( .B(R[80]), .A(L[80]));
Q_ASSIGN U81 ( .B(R[81]), .A(L[81]));
Q_ASSIGN U82 ( .B(R[82]), .A(L[82]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_assign"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
endmodule
