
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module IXC_SV_SFIFO ( rdCnt);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [63:0] rdCnt;
wire scgGFreq;
IXC_SV_SFIFO_VXE_256 I ( rdCnt[63:0], scgGFreq);
IXC_SV_SCG_GFIFO_VXE_64 O ( scgGFreq);
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
