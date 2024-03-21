// xc_work/v/132.sv
// my_clks.sv:17
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module my_clks;
// external : xcva_top.kme_tb.kme_dut.clock (resolved )  (var)  :(R)  : (W)  
wire  clock_0;
ixc_cakebind ixcb_0 (xcva_top.kme_tb.kme_dut.clock,clock_0);
ixc_master_clock ixcg_0(clock_0); 
// pragma CVASTRPROP MODULE my_clks PROP_RANOFF TRUE
endmodule

