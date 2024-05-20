// xc_work/v/149n.v
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/ixc_time1x.v:2
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
reg [63:0] nextClkTime ;
wire  [63:0] nextClkTimePO ;
wire  [63:0] nextDutTime ;
wire  [31:0] delta32 ;
reg [63:0] nextTime ;
wire [10:0]  ScMinT;
wire [10:0]  delta;
wire [10:0]  minT;
wire [10:0]  deltaTb;
reg stopEcm;
reg zminT;
wire  VCC;
wire  runClk;
reg [63:0] lastClkTimeN ;
reg [63:0] nextClkTimeN ;
reg [63:0] mt64 ;
reg [71:0] ps1 ;
reg [71:0] ps0 ;
reg c;
reg stopEcmN;
integer i;
wire [10:0]  td1;
assign  VCC = 1'b1;
/* ++ axis_pulse #(1) ap (eClk , ... ); */
axis_eclk_h ap (eClk); 

assign  ScMinT = (minT * 32'b01);
assign  runClk = (nextTbTime >= nextClkTime);
assign  delta = (runClk ? minT : 32'b0);
assign  delta32 = (runClk ? ScMinT : 32'b0);
assign  nextDutTime = (runClk ? nextClkTime : nextTbTime);
assign  nextClkTimePO = {zminT,nextClkTime[32'sd62:32'sd0]};
assign  td1 = my_clks.ixcg_0._zyiscTdM1[10:0];
assign  minT = td1;
initial 
 begin
  lastClkTime = 64'b0;
  zminT = 1'b0;
  wait ((ScMinT > 32'b0))
   begin
   end
  simTime = 64'b0;
  nextClkTime = ScMinT;
  $xc_init_done;
 end
initial 
 begin
  $import_rtl_signals;
 end
always 
 @(*)
  begin
   if (runClk)
    lastClkTimeN = nextClkTime;
   else
    lastClkTimeN = lastClkTime;
   mt64 = ScMinT;
   for (i = 0;(i < 8); i = (i + 1))
    begin
     ps0[(9 * i) +: 9] = (lastClkTimeN[(8 * i) +: 8] + mt64[(8 * i) +: 8]);
     ps1[(9 * i) +: 9] = ((lastClkTimeN[(8 * i) +: 8] + mt64[(8 * i) +: 8]) + 9'b01);
    end
   nextClkTimeN[7:0] = ps0[7:0];
   c = ps0[8];
   for (i = 1;(i < 8); i = (i + 1))
    begin
     nextClkTimeN[(8 * i) +: 8] = (c ? ps1[(9 * i) +: 8] : ps0[(9 * i) +: 8]);
     c = (c ? ps1[((9 * i) + 8)] : ps0[((9 * i) + 8)]);
    end
   stopEcm = (zminT | (nextTbTime <= nextClkTime));
  end
always 
 @(posedge eClk)
  begin
   zminT = (minT == 32'b0);
   simTime = nextDutTime;
   lastClkTime = lastClkTimeN;
   nextClkTime = nextClkTimeN;
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

