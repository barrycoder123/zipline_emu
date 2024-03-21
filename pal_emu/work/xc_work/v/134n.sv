// xc_work/v/134n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/share/etc/ixcom/IXCclkgen.sv:499
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
 (* upf_always_on = 1, _2_state_ = 1 *) module ixc_1xbufsrc(cout,cin);
input  cin;
output  cout;
buf  b0 (cout,cin);

   buf b1(xc_top.clockMCInit, cin);

endmodule

