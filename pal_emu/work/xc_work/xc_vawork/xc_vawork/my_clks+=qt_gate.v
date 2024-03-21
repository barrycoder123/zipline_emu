
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module my_clks ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire clock_0;
ixc_cakebind ixcb_0 ( xcva_top.kme_tb.kme_dut.clock, clock_0);
ixc_master_clock ixcg_0 ( clock_0);
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
endmodule
