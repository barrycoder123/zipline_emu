
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sample_logic_3_3 ( sv, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [2:0] sv;
input [2:0] v;
wire doSample;
wire [2:0] _zzsv;
Q_ASSIGN U0 ( .B(v[2]), .A(sv[2]));
Q_ASSIGN U1 ( .B(v[1]), .A(sv[1]));
Q_ASSIGN U2 ( .B(v[0]), .A(sv[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sample_logic"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
