
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_OSF ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire [0:0] _zyevPio;
wire _zyPOEv;
wire osfTbc;
wire dummyin;
wire dummyout;
wire osfTbc_x$tbc;
`_2_ wire [0:0] pvecEv;
supply0 n1;
supply0 n2;
Q_ASSIGN U0 ( .B(_zyevPio[0]), .A(_zyPOEv));
Q_NOT_TOUCH _zzqnthw ( .sig());
ixc_assign _zz_strnp_0 ( _zyevPio[0], pvecEv[0]);
axis_tbcall_BP_1 tbcx ( osfTbc, n2, osfTbc_x$tbc, n1);
Q_RDN U4 ( .Z(osfTbc));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
