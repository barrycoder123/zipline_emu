// xc_work/v/149.v
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/ixc_time1x.v:2
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module ixc_time;
// external : xcva_top.my_clks.ixcg_0._zyiscTdM1 (resolved )  (var)  
wire [10:0]  _zz_dummy_0;
// quickturn name_map   _zz_dummy_0   xcva_top.my_clks.ixcg_0._zyiscTdM1
// exported object:  (var) nextTime (R)  
// exported object:  (var) delta (R)  
parameter DBW = 5;
parameter TUSF = 1;
parameter TUSFW = 0;
parameter CYC1X = 1;
wire  eClk;
reg [63:0] simTime ;
// quickturn keep_net simTime
// quickturn external_ref simTime
wire  [63:0] nextTbTime ;
// quickturn external_ref nextTbTime
reg [63:0] lastClkTime ;
// quickturn keep_net lastClkTime
reg [63:0] nextClkTime ;
// quickturn keep_net nextClkTime
wire  [63:0] nextClkTimePO ;
// quickturn preserve nextClkTimePO
// quickturn no_hardmacro nextClkTimePO
// quickturn external_ref nextClkTimePO
wire  [63:0] nextDutTime ;
// quickturn external_ref nextDutTime
wire  [31:0] delta32 ;
// quickturn external_ref delta32
wire  [63:0] nextTime ;
wire [10:0]  ScMinT;
wire [10:0]  delta;
// quickturn external_ref delta
wire [10:0]  minT;
wire [10:0]  deltaTb;
reg stopEcm;
// quickturn external_ref stopEcm
reg zminT;
// quickturn keep_net zminT
wire  VCC;
wire  runClk;
// quickturn external_ref runClk
reg [63:0] lastClkTimeN ;
reg [63:0] nextClkTimeN ;
reg [63:0] mt64 ;
reg [71:0] ps1 ;
reg [71:0] ps0 ;
reg c;
reg stopEcmN;
integer i;
wire [10:0]  td1;
ixc_assign  #(64) _zz_strnp_0 (nextTime,nextDutTime);
assign  VCC = 1'b1;
axis_eclk  #(1) ap (eClk,VCC);
assign  ScMinT = (minT * 32'b01);
assign  runClk = (nextTbTime >= nextClkTime);
assign  delta = (runClk ? minT : 32'b0);
assign  delta32 = (runClk ? ScMinT : 32'b0);
assign  nextDutTime = (runClk ? nextClkTime : nextTbTime);
ixc_assign  #(64) _zz_strnp_1 (nextClkTimePO,{zminT,nextClkTime[32'sd62:32'sd0]});
ixc_assign  #(11) _zz_strnp_2 (td1,_zz_dummy_0[10:0]);
ixc_assign  #(11) _zz_strnp_3 (minT,td1);
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

   reg  [63:0] _zzcmds[0:3]; // quickturn use_hardmacro_pack _zzcmds
   wire [63:0] topSimTime; // quickturn name_map topSimTime xc_top.simTime
   wire [63:0] _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_;
   // quickturn name_map _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_ xc_top._ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_

   reg  [63:0] _zzmiopis[0:3]; // quickturn use_hardmacro_pack _zzmiopis
   reg  [63:0] _zzmiopos[0:3]; // quickturn use_hardmacro_pack _zzmiopos
   wire [63:0] top_mioPOW_0; // quickturn name_map top_mioPOW_0 xc_top.mioPOW_0
   wire [63:0] top_mioPOW_2; // quickturn name_map top_mioPOW_2 xc_top.mioPOW_2
   reg [63:0] top_mioPIW_0; // quickturn name_map top_mioPIW_0 xc_top.mioPIW_0
   reg [63:0] top_mioPIW_1; // quickturn name_map top_mioPIW_1 xc_top.mioPIW_1
   wire top_uClk; // quickturn name_map top_uClk xc_top.uClk

   always@(*) begin
     _zzmiopos[0] = top_mioPOW_0;
     _zzmiopos[1] = nextClkTimePO;
     _zzmiopos[2] = top_mioPOW_2;
   end
   always@(posedge top_uClk) begin
     top_mioPIW_0 = _zzmiopis[0];
     top_mioPIW_1 = _zzmiopis[1];
   end

   always@(*) begin
     _zzcmds[0] = _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_;
     _zzcmds[1] = topSimTime;
   end


// pragma CVASTRPROP MODULE ixc_time PROP_IXCOM_MOD TRUE
endmodule

