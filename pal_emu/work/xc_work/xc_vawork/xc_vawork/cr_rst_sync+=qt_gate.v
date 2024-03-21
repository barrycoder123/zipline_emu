
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module cr_rst_sync ( clk, async_rst_n, bypass_reset, test_rst_n, rst_n);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input clk;
input async_rst_n;
input bypass_reset;
input test_rst_n;
output rst_n;
wire sync_rst_n;
wire dual_rank_rst_n;
wire _zy_simnet_cio_0;
supply1 n1;
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_0));
Q_AN02 U1 ( .A0(bypass_reset), .A1(test_rst_n), .Z(n2));
Q_OR02 U2 ( .A0(n2), .A1(async_rst_n), .Z(dual_rank_rst_n));
Q_OR02 U3 ( .A0(n2), .A1(sync_rst_n), .Z(rst_n));
cr_dual_rank_synchronizer reset_synchronizer ( .clk( clk), .rst_n( 
	dual_rank_rst_n), .din( _zy_simnet_cio_0), .dout( sync_rst_n));
endmodule
