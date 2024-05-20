// xc_work/v/5.sv
// /home/ibarry/Project-Zipline-master/rtl/common/cr_rst_sync.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module cr_rst_sync(input  clk,input  async_rst_n,input  bypass_reset,input  test_rst_n,output  rst_n);
wire  sync_rst_n;
wire  dual_rank_rst_n;
wire  _zy_simnet_cio_0;
assign  dual_rank_rst_n = ((bypass_reset && test_rst_n) || async_rst_n);
assign  rst_n = ((bypass_reset && test_rst_n) || sync_rst_n);
assign  _zy_simnet_cio_0 = 1'b1;
cr_dual_rank_synchronizer reset_synchronizer(
  .clk(clk) ,
  .rst_n(dual_rank_rst_n) ,
  .din(_zy_simnet_cio_0) ,
  .dout(sync_rst_n) ); 
endmodule

