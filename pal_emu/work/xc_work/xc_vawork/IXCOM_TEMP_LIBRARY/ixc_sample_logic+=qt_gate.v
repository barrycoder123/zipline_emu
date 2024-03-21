
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sample_logic ( sv, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] sv;
input [0:0] v;
wire doSample;
wire [0:0] _zzsv;
Q_BUF U0 ( .A(_zzsv[0]), .Z(sv[0]));
Q_OR02 U1 ( .A0(xc_top.mpSampleOv), .A1(xcva_top.xc_top.callEmuPre), .Z(doSample));
Q_LDP0 \_zzsv_REG[0] ( .G(doSample), .D(v[0]), .Q(_zzsv[0]), .QN( ));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
