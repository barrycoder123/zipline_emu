
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_assign_11 ( L, R);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [10:0] L;
input [10:0] R;
Q_ASSIGN U0 ( .B(R[0]), .A(L[0]));
Q_ASSIGN U1 ( .B(R[1]), .A(L[1]));
Q_ASSIGN U2 ( .B(R[2]), .A(L[2]));
Q_ASSIGN U3 ( .B(R[3]), .A(L[3]));
Q_ASSIGN U4 ( .B(R[4]), .A(L[4]));
Q_ASSIGN U5 ( .B(R[5]), .A(L[5]));
Q_ASSIGN U6 ( .B(R[6]), .A(L[6]));
Q_ASSIGN U7 ( .B(R[7]), .A(L[7]));
Q_ASSIGN U8 ( .B(R[8]), .A(L[8]));
Q_ASSIGN U9 ( .B(R[9]), .A(L[9]));
Q_ASSIGN U10 ( .B(R[10]), .A(L[10]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_assign"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
endmodule
