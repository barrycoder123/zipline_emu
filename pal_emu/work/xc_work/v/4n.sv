// xc_work/v/4n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/cr_rst_sync.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module cr_rst_sync(input  clk,input  async_rst_n,input  bypass_reset,input  test_rst_n,output  rst_n);
wire  sync_rst_n;
wire  dual_rank_rst_n;
wire  _zy_simnet_cio_0;
wire  _zy_bypass_reset_x$ed_0;
wire  _zy_test_rst_n_x$ed_1;
wire  _zy_async_rst_n_x$ed_2;
assign  dual_rank_rst_n = ((_zy_bypass_reset_x$ed_0 && _zy_test_rst_n_x$ed_1) || _zy_async_rst_n_x$ed_2);
assign  rst_n = ((_zy_bypass_reset_x$ed_0 && _zy_test_rst_n_x$ed_1) || sync_rst_n);
assign  _zy_simnet_cio_0 = 1'b1;
cr_dual_rank_synchronizer reset_synchronizer(
  .clk(clk) ,
  .rst_n(dual_rank_rst_n) ,
  .din(_zy_simnet_cio_0) ,
  .dout(sync_rst_n) ); 
axPIBMod #(1 )_zy_pimod__3(_zy_bypass_reset_x$ed_0,bypass_reset); 
axPIBMod #(1 )_zy_pimod__4(_zy_test_rst_n_x$ed_1,test_rst_n); 
axPIBMod #(1 )_zy_pimod__5(_zy_async_rst_n_x$ed_2,async_rst_n); 
endmodule

