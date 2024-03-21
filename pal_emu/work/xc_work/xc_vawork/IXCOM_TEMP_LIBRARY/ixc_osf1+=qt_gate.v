
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_OSF1 ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire osfTbc;
wire dummyin;
wire dummyout;
wire osfTbcB;
wire osfTbcB_x$tbc;
`_2_ wire [19:0] pvecEv;
`_2_ wire [0:0] _zyMBEv;
supply0 n2;
supply0 n3;
Q_RDN U0 ( .Z(osfTbc));
axis_tbcall_1_0_1 tbcx ( osfTbcB, n2, osfTbcB_x$tbc, n3);
ixc_osfTbc_buf us ( osfTbcB, osfTbc);
Q_NOT_TOUCH _zzqnthw ( .sig());
IXC_OSF_MB_20 OMB_0 ( pvecEv[19:0], _zyMBEv[0]);
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
