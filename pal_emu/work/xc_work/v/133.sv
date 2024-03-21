// xc_work/v/133.sv
// my_clks.sv:39
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module ixc_master_clock(phi1);
// external : xcva_top.ixc_time.delta (resolved )  (var)  
wire [10:0]  _zz_dummy_0;
// quickturn name_map   _zz_dummy_0   xcva_top.ixc_time.delta
// exported object:  (var) _zyiscTdM1 (R)  
parameter phase_length = 625;
output  phi1;
reg clk = 0;
// quickturn keep_net clk
wire  _zy_simnet_clk_0_w$;
wire [10:0]  _zyiscDelta1;
wire [10:0]  _zyiscTdM1;
// quickturn external_ref _zyiscTdM1
wire  _zyiscVCC1;
wire  _zyiscEClk1;
reg [9:0]  _zyL45_iscTdL2;
// quickturn keep_net _zyL45_iscTdL2
wire [10:0]  _zyL45_iscTdG2;
Q_CLKSRC _zy_inst_0(clk);
// F73, L43
ixc_assign  #(1) _zz_strnp_0 (_zy_simnet_clk_0_w$,clk);
// F73, L39
assign  _zyiscVCC1 = 1'b1;
// F73, L39
axis_eclk  #(1) _zziscEClk1_pu (_zyiscEClk1,_zyiscVCC1);
// F73, L39
ixc_assign  #(11) _zz_strnp_1 (_zyiscDelta1,_zz_dummy_0[10:0]);
// F73, L45
ixc_assign  #(11) _zz_strnp_2 (_zyL45_iscTdG2,{1'b0,_zyL45_iscTdL2});
// F73, L39
ixc_assign  #(11) _zz_strnp_3 (_zyiscTdM1,_zyL45_iscTdG2);
ixc_1xbufsrc m1(phi1,_zy_simnet_clk_0_w$); 
// F73, L45
always 
 @(posedge _zyiscEClk1)
  // F73, L45
  begin
   // F73, L45
   if ((_zyL45_iscTdL2 == _zyiscDelta1))
    // F73, L45
    begin
     // F73, L46
     clk = ( ~clk );
     _zyL45_iscTdL2 = 10'b1001110001;
    end
   else
    _zyL45_iscTdL2 = (_zyL45_iscTdL2 - _zyiscDelta1);
  end
// pragma CVASTRPROP MODULE ixc_master_clock PROP_RANOFF TRUE
endmodule

