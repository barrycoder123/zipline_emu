
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sampleLT ( ov, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] ov;
input [0:0] v;
wire fclk;
Q_FDP0UA U0 ( .D(v[0]), .QTFCLK( ), .Q(ov[0]));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
