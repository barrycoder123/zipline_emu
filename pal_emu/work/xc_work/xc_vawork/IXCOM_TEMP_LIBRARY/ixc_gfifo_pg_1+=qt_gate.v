
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_gfifo_pg_1 ( so, ci, co, si);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output so;
output [0:0] ci;
input [0:0] co;
input si;
Q_BUF ix ( .A(si), .Z(ci[0]));
Q_BUF \genblk5.iy ( .A(co[0]), .Z(so));
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk4"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_gfifo_pg"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
