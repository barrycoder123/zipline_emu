
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_expEv ( so, s);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
`_2_ output so;
input [0:0] s;
wire callEvent;
supply1 n1;
Q_EV_WOR_START qes ( .A(callEvent));
Q_CCLKCHK \genblk1[0].cchk ( .sig(s[0]));
Q_EVDECT \genblk1[0].p ( .Q(callEvent), .A(s[0]), .OE(n1));
Q_BUFZP U3 ( .OE(callEvent), .A(n1), .Z(xc_top.stop1));
Q_LSN01 U4 ( .S(n3), .R(n2), .Q(so), .QN( ));
Q_INV U5 ( .A(callEvent), .Z(n3));
Q_INV U6 ( .A(xc_top.callEmuPre), .Z(n2));
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
