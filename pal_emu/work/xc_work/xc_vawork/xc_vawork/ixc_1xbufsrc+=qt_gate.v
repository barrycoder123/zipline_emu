
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_1xbufsrc ( cout, cin);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output cout;
input cin;
Q_BUF b0 ( .A(cin), .Z(cout));
Q_BUF b1 ( .A(cin), .Z(xc_top.clockMCInit));
Q_MPCLK1P m ( .clk(cout));
Q_CLKDRV c ( .clk(cout));
Q_MPCLKFAST f ( .clk(cout));
Q_CLKSRC s ( .clk(cout));
Q_MPCLK1P n ( .clk(cin));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
