
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_osfTbc_buf ( osfTbcO, osfTbcI);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output osfTbcO;
input osfTbcI;
Q_BUF _UnNamed_Inst_27 ( .A(osfTbcI), .Z(osfTbcO));
endmodule
