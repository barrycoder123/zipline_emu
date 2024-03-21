// xc_work/v/144.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/GFIFO.sv:569
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_SV_GFIFO_VXE_256(input  [63:0] rdCnt );
localparam LBSIZE = 4;
localparam LOG2_GFIFO_WORD_SIZE = 3;
localparam LOG2_GFIFO_NUM_WORDS = 15;
localparam LOG2_GFIFO_SIZE = 18;
localparam ASYNC_OFF_THRESHOLD = 65536;
wire  hasGFIFO1;
wire  hasMultiLevelGFIFO;
wire  fclk;
wire  GFReset;
wire  anyStop;
wire  [63:0] ixcSimTime ;
wire  GFLBfull;
wire  GFGBfull;
wire  svGFbusy;
reg svGFbusy1;
reg svGFbusy2;
wire  GFreq;
tri0  [19:0] GFcbid ;
tri0  [11:0] GFlen ;
tri0  [511:0] GFidata ;
wire  GFtsReq;
// quickturn keep_net GFtsReq
// quickturn external_ref GFtsReq
bit GFtsAdd;
wire  GFfull;
wire  LBreq;
reg [3:0] LBrd ;
reg [3:0] LBwr ;
reg [3:0] LBwrI ;
reg [3:0] LBfill ;
wire  LBempty;
wire  LBfull;
wire  GFLock;
bit [11:0] argLen ;
bit [18:0] wLen ;
bit [17:0] rLen ;
bit wSync;
bit rSync;
bit [255:0] ixc_gfm_ofifo [0:32767];
bit [543:0] xdata ;
bit [63:0] wrtCnt ;
bit [63:0] wrtCntD ;
bit [63:0] ixc_gfm_ctl [0:3];
bit [63:0] ixc_gfm_ack [0:0];
reg tbcPO;
reg [7:0] ackId ;
reg [7:0] ackIdNew ;
reg ackClk;
reg [17:0] ackLen ;
wire  GFAck;
bit [14:0] ofifoAddr0 ;
bit [14:0] ofifoAddr0N ;
bit [14:0] ofifoAddr1 ;
bit [14:0] ofifoAddr1N ;
bit [14:0] ofifoAddr2 ;
bit [14:0] ofifoAddr2N ;
bit [767:0] ofifoData ;
bit [767:0] ofifoDataN ;
bit [5:0] writeLen ;
wire  flushTbc;
bit reqD;
bit GFfullD;
wire  [63:0] timeStampPkt ;
bit [4:0] oFill ;
bit [4:0] oFillN ;
bit [14:0] ofifoWptr ;
bit [14:0] ofifoWptrN ;
bit [7:0] shiftCount ;
bit [767:0] shiftedXdata ;
reg [64:0] TsBuf [0:7];
reg gfTsReqO;
reg [63:0] gfTsValO ;
reg gfTsEn;


   // Tell preCompiler not to touch this module.
   Q_NOT_TOUCH _zzqnthw();
   
   // quickturn fast_clock fclk

   // quickturn use_hardmacro_pack ixc_gfm_ofifo
   // quickturn use_hardmacro_pack ixc_gfm_ctl
   // quickturn use_hardmacro_pack ixc_gfm_ack
   // quickturn no_hardmacro       TsBuf

   // quickturn name_map hasGFIFO1        xc_top.hasGFIFO1
   
   // quickturn name_map GFReset          xc_top.GFReset
   // quickturn name_map anyStop          xc_top.anyStop
   // quickturn name_map ixcSimTime       xc_top.ixcSimTime
   // quickturn name_map svGFbusy         xc_top.svGFbusy
   // quickturn name_map GFLBfull         xc_top.GFLBfull
   // quickturn name_map GFGBfull         xc_top.GFGBfull
   // quickturn name_map GFLock           xc_top.GFLock2
   // quickturn name_map tbcPO            xc_top.tbcPO
   // quickturn name_map GFAck            xc_top.GFAck

   // quickturn external_ref GFreq
   // quickturn external_ref GFidata
   // quickturn external_ref GFcbid
   // quickturn external_ref GFlen
   // quickturn external_ref GFtsReq
   // quickturn external_ref GFfull

   // quickturn external_ref LBreq
   // quickturn external_ref LBwr
   // quickturn external_ref LBrd
   // quickturn external_ref LBfull


pulldown(GFtsReq);

// pragma CVASTRPROP MODULE IXC_SV_GFIFO_VXE_256 PROP_IXCOM_MOD TRUE
endmodule

