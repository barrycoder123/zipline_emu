
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module kme_tb ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
apb_xactor apb_xactor (,,,,,,,,,);
cr_kme kme_dut (,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,);
endmodule
