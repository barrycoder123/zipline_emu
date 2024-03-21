// xc_work/v/132n.sv
// my_clks.sv:17
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module my_clks;
// external : kme_tb.kme_dut.clock (resolved )  (var)  :(R)  : (W)  
wire  clock_0;
/* ixc_cakebind #(1) ixcb_0 (kme_tb.kme_dut.clock, clock_0); */
initial 
 #0 force kme_tb.kme_dut.clock = clock_0;
// -- ixc_cakebind 

ixc_master_clock ixcg_0(clock_0); 
initial 
 begin
  begin
  end
  $ua_cmd("cakeClk","kme_tb.kme_dut.clock","ixcg_0","800000kHz","B2","0");
 end
endmodule

