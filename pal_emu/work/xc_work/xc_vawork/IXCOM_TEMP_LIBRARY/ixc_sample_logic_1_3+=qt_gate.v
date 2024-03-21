
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sample_logic_1_3 ( sv, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] sv;
input [0:0] v;
wire doSample;
wire [0:0] _zzsv;
Q_ASSIGN U0 ( .B(v[0]), .A(sv[0]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sample_logic"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
