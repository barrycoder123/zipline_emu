
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_gfifo_cico_1 ( ci, co, GFLock, anyReq);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] ci;
input [0:0] co;
input GFLock;
output anyReq;
wire [0:0] so;
wire [0:0] si;
supply0 n1;
Q_BUF U0 ( .A(n1), .Z(si[0]));
Q_AN02 U1 ( .A0(so[0]), .A1(n2), .Z(anyReq));
Q_INV U2 ( .A(GFLock), .Z(n2));
ixc_gfifo_pg_1 \genblk3.pgr ( so[0], ci[0], co[0], si[0]);
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk2"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_gfifo_cico"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
