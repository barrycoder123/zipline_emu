// xc_work/v/133n.sv
// my_clks.sv:17
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module my_clks;
// external : tb_top.kme_tb_dut.my_clk (resolved )  (var)  :(R)  : (W)  
wire  my_clk_0;
/* ixc_cakebind #(1) ixcb_0 (tb_top.kme_tb_dut.my_clk, my_clk_0); */
initial 
 #0 force tb_top.kme_tb_dut.my_clk = my_clk_0;
// -- ixc_cakebind 

ixc_master_clock ixcg_0(my_clk_0); 
initial 
 begin
  begin
  end
  $ua_cmd("cakeClk","tb_top.kme_tb_dut.my_clk","ixcg_0","800000kHz","B1","0");
 end
endmodule

