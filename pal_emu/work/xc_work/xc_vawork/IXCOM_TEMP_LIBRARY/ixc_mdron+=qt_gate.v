
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mdrOn ( drOn, enNxt, en);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [0:0] drOn;
output [0:0] enNxt;
input [0:0] en;
wire fclk;
`_2_ wire [0:0] enD;
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_XOR2 U1 ( .A0(enD[0]), .A1(en[0]), .Z(drOn[0]));
Q_INV U2 ( .A(en[0]), .Z(enNxt[0]));
Q_FDP0UA U3 ( .D(en[0]), .QTFCLK( ), .Q(enD[0]));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
