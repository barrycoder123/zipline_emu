
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_GFIFO ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire [63:0] rdCnt;
IXC_OSF OSF ();
IXC_ISF ISF ();
IXC_OSF1 OSF1 ();
IXC_PTXTOP PTXTOP ();
ixcEcmHold HOLDTOP ();
ixcEcmHoldOtb DUMMY ();
IXC_SV_GFIFO O ( rdCnt[63:0]);
IXC_SV_SFIFO I ( rdCnt[63:0]);
gfifo_conns _zyGfifo_gfifo_conns ();
sfifo_conns _zyGfifo_sfifo_conns ();
ifsyn_conns _ifsyn_conns ();
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
