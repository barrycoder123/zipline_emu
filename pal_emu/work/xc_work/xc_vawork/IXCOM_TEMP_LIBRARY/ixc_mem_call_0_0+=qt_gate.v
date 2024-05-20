
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mem_call_0_0 ( s2h_notify, s2h_data, from_isf, h2s_notify, h2s_data, 
	to_osf, maid, ltid);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output s2h_notify;
`_2_ output [0:0] s2h_data;
input from_isf;
input h2s_notify;
`_2_ input [0:0] h2s_data;
output to_osf;
`_2_ input [0:0] maid;
`_2_ input [0:0] ltid;
wire callEvent;
`_2_ wire osfBusy;
`_2_ wire isfBusy;
`_2_ wire [31:0] s2hmport;
`_2_ wire [31:0] s2hxtail;
`_2_ wire s2hmark;
`_2_ wire s2hmarkN;
`_2_ wire ns2hd;
`_2_ wire [31:0] h2smport;
`_2_ wire nh2sd;
`_2_ wire h2s_notifyOv;
`_2_ wire [0:0] wptr;
`_2_ wire [0:0] rptr;
`_2_ wire [1:0] h2sstate;
`_2_ wire [1:0] s2hstate;
Q_ASSIGN U0 ( .B(from_isf), .A(s2h_notify));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_CCLKCHK cchk ( .sig(h2s_notify));
ixc_osf_evcap \genblk1.osfevcap ( h2s_notify, to_osf);
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mem_call"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
