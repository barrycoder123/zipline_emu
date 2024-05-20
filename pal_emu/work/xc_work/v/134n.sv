// xc_work/v/134n.sv
// my_clks.sv:39
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module ixc_master_clock(phi1);
// external : ixc_time.delta (resolved )  (var)  
// exported object:  (var) _zyiscTdM1 (R)  
parameter phase_length = 625;
output  phi1;
reg clk = 0;
wire  _zy_simnet_clk_0_w$;
wire [10:0]  _zyiscDelta1;
wire [10:0]  _zyiscTdM1;
wire  _zyiscVCC1;
wire  _zyiscEClk1;
reg [9:0]  _zyL45_iscTdL2;
wire [10:0]  _zyL45_iscTdG2;
// F74, L43
assign  _zy_simnet_clk_0_w$ = clk;
// F74, L39
assign  _zyiscVCC1 = 1'b1;
// F74, L39
/* ++ axis_pulse #(1) _zziscEClk1_pu (_zyiscEClk1 , ... ); */
axis_eclk_h _zziscEClk1_pu (_zyiscEClk1); 

// F74, L39
assign  _zyiscDelta1 = ixc_time.delta[10:0];
// F74, L45
assign  _zyL45_iscTdG2 = {1'b0,_zyL45_iscTdL2};
// F74, L39
assign  _zyiscTdM1 = _zyL45_iscTdG2;
ixc_1xbufsrc m1(phi1,_zy_simnet_clk_0_w$); 
// F74, L39
initial 
 // F74, L39
 begin
  // F74, L45
  _zyL45_iscTdL2 = 10'b1001110001;
 end
// F74, L45
always 
 @(posedge _zyiscEClk1)
  // F74, L45
  begin
   // F74, L45
   if ((_zyL45_iscTdL2 == _zyiscDelta1))
    // F74, L45
    begin
     // F74, L46
     clk = ( ~clk );
     _zyL45_iscTdL2 = 10'b1001110001;
    end
   else
    _zyL45_iscTdL2 = (_zyL45_iscTdL2 - _zyiscDelta1);
  end
endmodule

