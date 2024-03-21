
// This is an auto-generated file using the ixclkgen utility
//
// Command-line specified:
//   ixclkgen
//     -input scripts/clockOptions.qel 
//     -o my_clks.sv 
//     -module my_clks 
//     -timescale 1ps/1ps 
//
// NOTE: Please refer to product user guide for clock modeling in IXCOM. Try:
//   ixclkgen -help
//   for usage and quick guide to compiling generated clock module.
////////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1 ps
`define IXCclkgenTs 1 ps / 1 ps
module my_clks;
  wire clock_0;

`ifdef IXCOM_COMPILE
  initial $ixc_ctrl("map_delays");
  initial $ixc_ctrl("hotswap_top");
`endif

  // Generate logic for clock sources
  ixc_master_clock #(625) ixcg_0(clock_0  );

  // Bind clock sources to generated clock signal
  ixc_cakebind ixcb_0 (kme_tb.kme_dut.clock, clock_0);

`ifdef IXCOM_COMPILE
  initial begin
    $ixc_ctrl("hotswap_top");
    $ua_cmd("cakeClk", "kme_tb.kme_dut.clock", "ixcg_0", "800000kHz", "B2", "0");
  end
`endif
endmodule // my_clks

module ixc_master_clock(phi1);
   parameter phase_length = 1;
   output phi1;

   reg clk = 0;

   always
     #(phase_length) clk = ~clk;

   ixc_1xbufsrc m1(phi1, clk);

`ifdef IXCOM_COMPILE
  initial $ixc_ctrl("map_delays");
  initial $ixc_ctrl("hotswap_top");
`endif

endmodule // ixc_master_clock
