// xc_work/v/133.sv
// my_clks.sv:17
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module my_clks;
// external : xcva_top.tb_top.kme_tb_dut.my_clk (resolved )  (var)  :(R)  : (W)  
wire  my_clk_0;
ixc_cakebind ixcb_0 (xcva_top.tb_top.kme_tb_dut.my_clk,my_clk_0);
ixc_master_clock ixcg_0(my_clk_0); 
// pragma CVASTRPROP MODULE my_clks PROP_RANOFF TRUE
endmodule

