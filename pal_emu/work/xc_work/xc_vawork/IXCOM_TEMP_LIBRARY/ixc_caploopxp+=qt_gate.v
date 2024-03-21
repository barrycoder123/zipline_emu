
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_capLoopXp ( bClk, en, bcLatchEn, bpHalt);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output bClk;
input en;
output bcLatchEn;
output bpHalt;
supply1 n1;
Q_ASSIGN U0 ( .B(xc_top.bpHalt), .A(bpHalt));
Q_ASSIGN U1 ( .B(xc_top.ecmOne), .A(bcLatchEn));
Q_ASSIGN U2 ( .B(xc_top.bClk), .A(bClk));
Q_BUFZP U3 ( .OE(en), .A(n1), .Z(xc_top.bpWait));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
