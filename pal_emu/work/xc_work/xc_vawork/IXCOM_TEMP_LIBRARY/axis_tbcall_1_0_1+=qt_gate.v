
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module axis_tbcall_1_0_1 ( s, taskcall, so, pui);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input s;
input taskcall;
`_2_ output so;
input pui;
wire callEvent;
wire xen;
supply1 n1;
Q_NOT_TOUCH soC ( .sig());
Q_LDP0 so_REG  ( .G(xen), .D(callEvent), .Q(so), .QN( ));
Q_EV_WOR_START qes ( .A(callEvent));
Q_CCLKCHK \genblk1.cchk ( .sig(s));
Q_PEDECT \genblk1.p ( .Q(callEvent), .A(s), .OE(n1));
Q_OR02 U5 ( .A0(xc_top.callEmuPre), .A1(callEvent), .Z(xen));
Q_BUFZP U6 ( .OE(callEvent), .A(n1), .Z(xc_top.stop2));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "axis_tbcall"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
