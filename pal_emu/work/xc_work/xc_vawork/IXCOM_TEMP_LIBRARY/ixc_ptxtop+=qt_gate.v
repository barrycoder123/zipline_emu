
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_PTXTOP ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire xptRtn;
wire callEv;
wire uClk;
wire hasPTX;
`_2_ wire callEvOn;
`_2_ wire [1:0] dly;
Q_RDN U0 ( .Z(xptRtn));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
