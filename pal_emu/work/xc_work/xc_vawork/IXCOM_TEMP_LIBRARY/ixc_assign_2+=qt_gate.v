
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_assign_2 ( L, R);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [1:0] L;
input [1:0] R;
Q_ASSIGN U0 ( .B(R[0]), .A(L[0]));
Q_ASSIGN U1 ( .B(R[1]), .A(L[1]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_assign"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
endmodule
