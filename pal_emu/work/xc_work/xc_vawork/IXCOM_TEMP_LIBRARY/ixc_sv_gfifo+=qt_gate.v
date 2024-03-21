
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module IXC_SV_GFIFO ( rdCnt);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input [63:0] rdCnt;
wire GFtsReq;
IXC_SV_GFIFO_VXE_256 O ( rdCnt[63:0]);
Q_RDN U1 ( .Z(GFtsReq));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
