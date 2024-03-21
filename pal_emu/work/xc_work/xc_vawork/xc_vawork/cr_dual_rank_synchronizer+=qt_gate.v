
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module cr_dual_rank_synchronizer ( clk, rst_n, din, dout);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input clk;
input rst_n;
input din;
output dout;
ixc_assign _zz_strnp_0 ( dout, rst_n);
endmodule
