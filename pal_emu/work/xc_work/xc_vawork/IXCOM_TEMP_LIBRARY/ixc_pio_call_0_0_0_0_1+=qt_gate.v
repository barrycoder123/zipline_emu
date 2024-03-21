
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_pio_call_0_0_0_0_1 ( s2h_notify, s2h_data, from_isf, h2s_notify, 
	h2s_data, to_osf, maid, ltid);
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
Q_ASSIGN U0 ( .B(from_isf), .A(s2h_notify));
Q_CCLKCHK cchk ( .sig(h2s_notify));
ixc_osf1_evcap \genblk1.osfevcap ( h2s_notify, to_osf);
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_pio_call"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
