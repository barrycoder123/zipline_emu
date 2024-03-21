
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_osf_evcap ( pvec, pvecEvO);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input pvec;
output pvecEvO;
wire callEvent;
`_2_ wire pvecEv;
supply1 n1;
ixc_uclk_sample si ( pvecEvO, pvecEv);
Q_EV_WOR_START qi ( .A(callEvent));
Q_EVDECT p ( .Q(callEvent), .A(pvec), .OE(n1));
Q_BUFZP U3 ( .OE(callEvent), .A(n1), .Z(xcva_top.IXC_GFIFO.OSF.osfTbc));
Q_LDP0 pvecEv_REG  ( .G(n2), .D(callEvent), .Q(pvecEv), .QN( ));
Q_OR02 U5 ( .A0(xcva_top.xc_top.callEmuPre), .A1(callEvent), .Z(n2));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
