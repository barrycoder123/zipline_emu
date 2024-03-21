
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module Q_RBUFZP ( Z, A, OE);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output Z;
input A;
input OE;
wire strn_1;
X_STR0WE1 strnp_2 ( Z, strn_1);
X_STR0WE0 strnp_1 ( Z, strn_1);
Q_BUFZP U2 ( .OE(OE), .A(A), .Z(strn_1));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
