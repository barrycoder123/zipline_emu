
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_uclk_sample ( so, si);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output so;
input si;
wire uClk;
`_2_ wire _zzso;
Q_BUF U0 ( .A(_zzso), .Z(so));
ixc_uClkGen ucg ( uClk);
Q_FDP0 _zzso_REG  ( .CK(uClk), .D(si), .Q(_zzso), .QN( ));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
