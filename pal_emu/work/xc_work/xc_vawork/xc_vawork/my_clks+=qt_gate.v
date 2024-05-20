
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module my_clks ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire my_clk_0;
ixc_cakebind ixcb_0 ( xcva_top.tb_top.kme_tb_dut.my_clk, my_clk_0);
ixc_master_clock ixcg_0 ( my_clk_0);
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
endmodule
