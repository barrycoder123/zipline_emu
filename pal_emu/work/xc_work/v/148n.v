// xc_work/v/148n.v
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/ixc_time.v:2
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module ixc_time;
// external : my_clks.ixcg_0._zyiscTdM1 (resolved )  (var)  
// exported object:  (var) nextTime (R)  
// exported object:  (var) delta (R)  
parameter DBW = 5;
parameter TUSF = 1;
parameter TUSFW = 0;
parameter CYC1X = 1;
wire  eClk;
reg [63:0] simTime ;
wire  [63:0] nextTbTime ;
reg [63:0] lastClkTime ;
wire  [63:0] nextClkTime ;
wire  [63:0] nextClkTimePO ;
wire  [63:0] nextDutTime ;
wire  [31:0] delta32 ;
reg [63:0] nextTime ;
wire [10:0]  ScMinT;
wire [10:0]  delta;
wire [10:0]  minT;
wire [10:0]  deltaTb;
reg zminT;
wire  noScale;
wire  VCC;
wire  TbEQClk;
wire  TbLTClk;
wire  stopEcm;
wire  runClk;
wire [10:0]  td1;
assign  VCC = 1'b1;
/* ++ axis_pulse #(1) ap (eClk , ... ); */
axis_eclk_h ap (eClk); 

assign  ScMinT = (minT * 32'b01);
assign  noScale = 1'b1;
assign  nextClkTime = (lastClkTime + ScMinT);
assign  TbEQClk = (nextTbTime == nextClkTime);
assign  TbLTClk = (nextTbTime < nextClkTime);
assign  stopEcm = ((zminT | TbEQClk) | TbLTClk);
assign  runClk = (TbEQClk | ( ~TbLTClk ));
assign  deltaTb = (nextTbTime - simTime);
assign  delta = (runClk ? minT : (noScale ? deltaTb : 32'b0));
assign  delta32 = (runClk ? ScMinT : (noScale ? deltaTb : 32'b0));
assign  nextDutTime = (runClk ? nextClkTime : nextTbTime);
assign  nextClkTimePO = {zminT,nextClkTime[32'sd62:32'sd0]};
assign  td1 = my_clks.ixcg_0._zyiscTdM1[10:0];
assign  minT = td1;
initial 
 begin
  lastClkTime = 64'b0;
  zminT = 1'b0;
  #(0)
   begin
   end
  simTime = 64'b0;
  $xc_init_done;
 end
initial 
 begin
  $import_rtl_signals;
 end
always 
 @(posedge eClk)
  begin
   zminT = (minT == 32'b0);
   simTime <= nextDutTime;
   if (runClk)
    begin
     lastClkTime <= nextClkTime;
    end
   else
    if (noScale)
     begin
      lastClkTime <= nextTbTime;
     end
  end
initial 
 xc_top.ixc_time_init(0,1'b1);
always 
 @(nextDutTime)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent)
    nextTime = nextDutTime;
  end
endmodule

