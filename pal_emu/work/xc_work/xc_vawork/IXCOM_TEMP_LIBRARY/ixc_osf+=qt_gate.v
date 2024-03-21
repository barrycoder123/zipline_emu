
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
wire [1:0] _zyevPio;
wire _zyPOEv;
wire osfTbc;
wire dummyin;
wire dummyout;
wire osfTbc_x$tbc;
`_2_ wire [1:0] pvecEv;
supply0 n2;
supply0 n3;
Q_OR02 U0 ( .A0(_zyevPio[0]), .A1(_zyevPio[1]), .Z(_zyPOEv));
Q_RDN U1 ( .Z(osfTbc));
axis_tbcall_BP_1 tbcx ( osfTbc, n2, osfTbc_x$tbc, n3);
ixc_assign_2 _zz_strnp_0 ( _zyevPio[1:0], pvecEv[1:0]);
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
