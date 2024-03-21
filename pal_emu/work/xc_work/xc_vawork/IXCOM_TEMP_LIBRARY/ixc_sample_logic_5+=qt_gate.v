
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sample_logic_5 ( sv, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [4:0] sv;
input [4:0] v;
wire doSample;
wire [4:0] _zzsv;
Q_BUF U0 ( .A(_zzsv[0]), .Z(sv[0]));
Q_BUF U1 ( .A(_zzsv[1]), .Z(sv[1]));
Q_BUF U2 ( .A(_zzsv[2]), .Z(sv[2]));
Q_BUF U3 ( .A(_zzsv[3]), .Z(sv[3]));
Q_BUF U4 ( .A(_zzsv[4]), .Z(sv[4]));
Q_OR02 U5 ( .A0(xc_top.mpSampleOv), .A1(xcva_top.xc_top.callEmuPre), .Z(doSample));
Q_LDP0 \_zzsv_REG[4] ( .G(doSample), .D(v[4]), .Q(_zzsv[4]), .QN( ));
Q_LDP0 \_zzsv_REG[3] ( .G(doSample), .D(v[3]), .Q(_zzsv[3]), .QN( ));
Q_LDP0 \_zzsv_REG[2] ( .G(doSample), .D(v[2]), .Q(_zzsv[2]), .QN( ));
Q_LDP0 \_zzsv_REG[1] ( .G(doSample), .D(v[1]), .Q(_zzsv[1]), .QN( ));
Q_LDP0 \_zzsv_REG[0] ( .G(doSample), .D(v[0]), .Q(_zzsv[0]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sample_logic"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
