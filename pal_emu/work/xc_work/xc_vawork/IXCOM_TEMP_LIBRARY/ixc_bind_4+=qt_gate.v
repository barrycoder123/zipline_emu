
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_bind_4 ( L, L);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
inout [3:0] L;
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_bind"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
