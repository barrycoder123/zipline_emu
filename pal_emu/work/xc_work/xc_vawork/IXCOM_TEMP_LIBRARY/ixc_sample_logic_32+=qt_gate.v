
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sample_logic_32 ( sv, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [31:0] sv;
input [31:0] v;
wire doSample;
wire [31:0] _zzsv;
Q_BUF U0 ( .A(_zzsv[0]), .Z(sv[0]));
Q_BUF U1 ( .A(_zzsv[1]), .Z(sv[1]));
Q_BUF U2 ( .A(_zzsv[2]), .Z(sv[2]));
Q_BUF U3 ( .A(_zzsv[3]), .Z(sv[3]));
Q_BUF U4 ( .A(_zzsv[4]), .Z(sv[4]));
Q_BUF U5 ( .A(_zzsv[5]), .Z(sv[5]));
Q_BUF U6 ( .A(_zzsv[6]), .Z(sv[6]));
Q_BUF U7 ( .A(_zzsv[7]), .Z(sv[7]));
Q_BUF U8 ( .A(_zzsv[8]), .Z(sv[8]));
Q_BUF U9 ( .A(_zzsv[9]), .Z(sv[9]));
Q_BUF U10 ( .A(_zzsv[10]), .Z(sv[10]));
Q_BUF U11 ( .A(_zzsv[11]), .Z(sv[11]));
Q_BUF U12 ( .A(_zzsv[12]), .Z(sv[12]));
Q_BUF U13 ( .A(_zzsv[13]), .Z(sv[13]));
Q_BUF U14 ( .A(_zzsv[14]), .Z(sv[14]));
Q_BUF U15 ( .A(_zzsv[15]), .Z(sv[15]));
Q_BUF U16 ( .A(_zzsv[16]), .Z(sv[16]));
Q_BUF U17 ( .A(_zzsv[17]), .Z(sv[17]));
Q_BUF U18 ( .A(_zzsv[18]), .Z(sv[18]));
Q_BUF U19 ( .A(_zzsv[19]), .Z(sv[19]));
Q_BUF U20 ( .A(_zzsv[20]), .Z(sv[20]));
Q_BUF U21 ( .A(_zzsv[21]), .Z(sv[21]));
Q_BUF U22 ( .A(_zzsv[22]), .Z(sv[22]));
Q_BUF U23 ( .A(_zzsv[23]), .Z(sv[23]));
Q_BUF U24 ( .A(_zzsv[24]), .Z(sv[24]));
Q_BUF U25 ( .A(_zzsv[25]), .Z(sv[25]));
Q_BUF U26 ( .A(_zzsv[26]), .Z(sv[26]));
Q_BUF U27 ( .A(_zzsv[27]), .Z(sv[27]));
Q_BUF U28 ( .A(_zzsv[28]), .Z(sv[28]));
Q_BUF U29 ( .A(_zzsv[29]), .Z(sv[29]));
Q_BUF U30 ( .A(_zzsv[30]), .Z(sv[30]));
Q_BUF U31 ( .A(_zzsv[31]), .Z(sv[31]));
Q_OR02 U32 ( .A0(xc_top.mpSampleOv), .A1(xcva_top.xc_top.callEmuPre), .Z(doSample));
Q_LDP0 \_zzsv_REG[31] ( .G(doSample), .D(v[31]), .Q(_zzsv[31]), .QN( ));
Q_LDP0 \_zzsv_REG[30] ( .G(doSample), .D(v[30]), .Q(_zzsv[30]), .QN( ));
Q_LDP0 \_zzsv_REG[29] ( .G(doSample), .D(v[29]), .Q(_zzsv[29]), .QN( ));
Q_LDP0 \_zzsv_REG[28] ( .G(doSample), .D(v[28]), .Q(_zzsv[28]), .QN( ));
Q_LDP0 \_zzsv_REG[27] ( .G(doSample), .D(v[27]), .Q(_zzsv[27]), .QN( ));
Q_LDP0 \_zzsv_REG[26] ( .G(doSample), .D(v[26]), .Q(_zzsv[26]), .QN( ));
Q_LDP0 \_zzsv_REG[25] ( .G(doSample), .D(v[25]), .Q(_zzsv[25]), .QN( ));
Q_LDP0 \_zzsv_REG[24] ( .G(doSample), .D(v[24]), .Q(_zzsv[24]), .QN( ));
Q_LDP0 \_zzsv_REG[23] ( .G(doSample), .D(v[23]), .Q(_zzsv[23]), .QN( ));
Q_LDP0 \_zzsv_REG[22] ( .G(doSample), .D(v[22]), .Q(_zzsv[22]), .QN( ));
Q_LDP0 \_zzsv_REG[21] ( .G(doSample), .D(v[21]), .Q(_zzsv[21]), .QN( ));
Q_LDP0 \_zzsv_REG[20] ( .G(doSample), .D(v[20]), .Q(_zzsv[20]), .QN( ));
Q_LDP0 \_zzsv_REG[19] ( .G(doSample), .D(v[19]), .Q(_zzsv[19]), .QN( ));
Q_LDP0 \_zzsv_REG[18] ( .G(doSample), .D(v[18]), .Q(_zzsv[18]), .QN( ));
Q_LDP0 \_zzsv_REG[17] ( .G(doSample), .D(v[17]), .Q(_zzsv[17]), .QN( ));
Q_LDP0 \_zzsv_REG[16] ( .G(doSample), .D(v[16]), .Q(_zzsv[16]), .QN( ));
Q_LDP0 \_zzsv_REG[15] ( .G(doSample), .D(v[15]), .Q(_zzsv[15]), .QN( ));
Q_LDP0 \_zzsv_REG[14] ( .G(doSample), .D(v[14]), .Q(_zzsv[14]), .QN( ));
Q_LDP0 \_zzsv_REG[13] ( .G(doSample), .D(v[13]), .Q(_zzsv[13]), .QN( ));
Q_LDP0 \_zzsv_REG[12] ( .G(doSample), .D(v[12]), .Q(_zzsv[12]), .QN( ));
Q_LDP0 \_zzsv_REG[11] ( .G(doSample), .D(v[11]), .Q(_zzsv[11]), .QN( ));
Q_LDP0 \_zzsv_REG[10] ( .G(doSample), .D(v[10]), .Q(_zzsv[10]), .QN( ));
Q_LDP0 \_zzsv_REG[9] ( .G(doSample), .D(v[9]), .Q(_zzsv[9]), .QN( ));
Q_LDP0 \_zzsv_REG[8] ( .G(doSample), .D(v[8]), .Q(_zzsv[8]), .QN( ));
Q_LDP0 \_zzsv_REG[7] ( .G(doSample), .D(v[7]), .Q(_zzsv[7]), .QN( ));
Q_LDP0 \_zzsv_REG[6] ( .G(doSample), .D(v[6]), .Q(_zzsv[6]), .QN( ));
Q_LDP0 \_zzsv_REG[5] ( .G(doSample), .D(v[5]), .Q(_zzsv[5]), .QN( ));
Q_LDP0 \_zzsv_REG[4] ( .G(doSample), .D(v[4]), .Q(_zzsv[4]), .QN( ));
Q_LDP0 \_zzsv_REG[3] ( .G(doSample), .D(v[3]), .Q(_zzsv[3]), .QN( ));
Q_LDP0 \_zzsv_REG[2] ( .G(doSample), .D(v[2]), .Q(_zzsv[2]), .QN( ));
Q_LDP0 \_zzsv_REG[1] ( .G(doSample), .D(v[1]), .Q(_zzsv[1]), .QN( ));
Q_LDP0 \_zzsv_REG[0] ( .G(doSample), .D(v[0]), .Q(_zzsv[0]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sample_logic"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
