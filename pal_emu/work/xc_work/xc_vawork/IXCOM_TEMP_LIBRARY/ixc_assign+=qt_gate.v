
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_assign ( L, R);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] L;
input [0:0] R;
Q_ASSIGN U0 ( .B(R[0]), .A(L[0]));
endmodule
