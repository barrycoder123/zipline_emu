// xc_work/v/135.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/share/etc/ixcom/IXCclkgen.sv:499
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
 (* upf_always_on = 1, _2_state_ = 1 *) module ixc_1xbufsrc(cout,cin);
input  cin;
output  cout;
buf  b0 (cout,cin);

   wire  clockMCInit; // quickturn name_map clockMCInit xc_top.clockMCInit

   buf b1(clockMCInit, cin);

   Q_MPCLK1P m(cout);
   Q_CLKDRV  c(cout);
   Q_MPCLKFAST f(cout);
   Q_CLKSRC   s(cout);

   Q_MPCLK1P n(cin);

// pragma CVASTRPROP MODULE ixc_1xbufsrc PROP_IXCOM_MOD TRUE
endmodule

