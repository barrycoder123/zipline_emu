// xc_work/v/145.sv
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
// quickturn preserve flushTbc
// quickturn external_ref flushTbc
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
wire  flushTbc_x$tbc;
// quickturn preserve flushTbc_x$tbc
// quickturn external_ref flushTbc_x$tbc
assign  hasGFIFO1 = 1'b1;
pulldown (LBreq);
pulldown (GFtsReq);
assign  GFAck = ((ackIdNew != ackId) ? 1'b1 : 1'bz);
assign  GFfull = (wLen > 32'b0111111000000000000);
axis_tbcall  #(0,0,1) tbcx (flushTbc,136'b0110010001110101011011010110110101111001010111110110011101100110011010010110011001101111010111110110011001101100011101010111001101101000,flushTbc_x$tbc,0);
assign  timeStampPkt = {gfTsValO[32'sd55:32'sd24],1'b1,( ^gfTsValO[32'sd55:32'sd48] ),( ^gfTsValO[32'sd47:32'sd40] ),( ^gfTsValO[32'sd39:32'sd32] ),( ^gfTsValO[32'sd31:32'sd24] ),( ^gfTsValO[32'sd23:32'sd16] ),( ^gfTsValO[32'sd15:32'sd8] ),( ^gfTsValO[32'sd7:32'sd0] ),gfTsValO[32'sd23:32'sd0]};
assign  GFidata[31:0] = (GFtsAdd ? 32'b0 : 32'bz);
assign  GFcbid = (GFtsAdd ? 20'b11111111111111111110 : 20'bz);
assign  GFlen = (GFtsAdd ? 12'b01 : 12'bz);
assign  LBempty = (LBfill == 32'b0);
assign  LBfull = (LBfill == 32'b0100);
assign  GFGBfull = (GFfull ? 1'b1 : 1'bz);
assign  svGFbusy = ((svGFbusy1 || svGFbusy2) ? 1'b1 : 1'bz);
always 
 @(posedge fclk)
  wrtCntD <= wrtCnt;
always 
 @(*)
  begin
   {ackLen,ackIdNew} = ixc_gfm_ack[0];
  end
always 
 @(posedge fclk)
  begin
   if ((ackIdNew != ackId))
    begin
     ackClk = 1'b1;
     ackId = ackIdNew;
    end
   else
    begin
     ackClk = 1'b0;
    end
  end
always 
 @(*)
  begin
   ixc_gfm_ctl[0] = {wrtCntD[32'sd62:32'sd0],svGFbusy};
   ixc_gfm_ctl[1] = rdCnt;
   ixc_gfm_ctl[2] = {ixcSimTime,tbcPO};
   ixc_gfm_ctl[3] = ackId;
  end
always 
 @(posedge ackClk)
  begin
   rLen <= ackLen;
   wSync <= ( ~wSync );
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     reqD <= 1'b0;
     GFfullD <= 1'b0;
    end
   else
    begin
     if (hasMultiLevelGFIFO)
      begin
       reqD <= (GFreq & ( ~GFfullD ));
      end
     else
      begin
       reqD <= (GFreq & ( ~GFfull ));
      end
     GFfullD <= GFfull;
    end
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     wrtCnt <= 64'b0;
     xdata <= {544{1'b0}};
     writeLen <= 6'b0;
     wLen = 19'b0;
     rSync = 1'b0;
    end
   else
    begin
     if (((anyStop && LBempty) && ( ~LBreq )))
      begin
       wLen = 19'b0;
       rSync = wSync;
      end
     else
      if ((rSync != wSync))
       begin
        if ((wLen >= rLen))
         begin
          wLen = (wLen - rLen);
         end
        else
         begin
         end
        rSync = wSync;
       end
     if ((((reqD | GFtsAdd) & ( !GFLock )) & (GFcbid != 20'b11111111111111111101)))
      begin
       if ((GFcbid != 20'b11111111111111111111))
        begin
         xdata <= ((GFcbid == 20'b11111111111111111110) ? timeStampPkt : {GFidata,GFlen,GFcbid});
         argLen = GFlen;
         wLen = ((wLen + argLen) + 32'b01);
         writeLen <= (((GFlen > 32'b010000) ? 32'b010000 : GFlen) + 32'b01);
        end
       else
        begin
         xdata <= {32'b0,GFidata};
         writeLen <= ((GFlen > 32'b010000) ? 32'b010000 : GFlen);
        end
       if ((GFlen <= 32'b010000))
        begin
         wrtCnt <= ((wrtCnt + argLen) + 64'b01);
        end
      end
     else
      begin
       xdata <= {544{1'b0}};
       writeLen <= 6'b0;
      end
    end
  end
always 
 @(*)
  begin
   ofifoAddr0N = ofifoWptr;
   ofifoAddr1N = (ofifoWptr + 32'b01);
   ofifoAddr2N = (ofifoWptr + 32'b010);
   shiftCount = {oFill[32'sd2:32'sd0],5'b0};
   shiftedXdata = (xdata << shiftCount);
   if (GFReset)
    begin
     ofifoDataN = {768{1'b0}};
    end
   else
    if ((oFill[4:3] == 2'b11))
     begin
      ofifoDataN = shiftedXdata;
     end
    else
     if ((oFill[4:3] == 2'b10))
      begin
       ofifoDataN = (shiftedXdata | {{512{1'b0}},ofifoData[32'sd512 +: 32'sd256]});
      end
     else
      if ((oFill[4:3] == 2'b01))
       begin
        ofifoDataN = (shiftedXdata | {{512{1'b0}},ofifoData[32'sd256 +: 32'sd256]});
       end
      else
       begin
        ofifoDataN = (shiftedXdata | {{512{1'b0}},ofifoData[32'sd0 +: 32'sd256]});
       end
   oFillN = (oFill[2:0] + writeLen);
   ofifoWptrN = (ofifoWptr + oFillN[4:3]);
  end
always 
 @(*)
  begin
   ixc_gfm_ofifo[ofifoAddr0N] = ofifoDataN[0 +: 256];
   ixc_gfm_ofifo[ofifoAddr1N] = ofifoDataN[256 +: 256];
   ixc_gfm_ofifo[ofifoAddr2N] = ofifoDataN[512 +: 256];
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     ofifoWptr <= 15'b0;
     ofifoAddr0 <= 15'b0;
     ofifoAddr1 <= 15'b01;
     ofifoAddr2 <= 15'b010;
     ofifoData <= {768{1'b0}};
     oFill <= 5'b0;
    end
   else
    begin
     ofifoWptr <= ofifoWptrN;
     ofifoAddr0 <= ofifoAddr0N;
     ofifoAddr1 <= ofifoAddr1N;
     ofifoAddr2 <= ofifoAddr2N;
     ofifoData <= ofifoDataN;
     oFill <= oFillN;
    end
  end
always 
 @(*)
  begin
   TsBuf[LBwr] = {GFtsReq,ixcSimTime};
   {gfTsReqO,gfTsValO} = TsBuf[LBrd];
  end
always 
 @(*)
  begin
   if (((LBreq & LBempty) | gfTsEn))
    begin
     GFtsAdd = gfTsReqO;
    end
   else
    begin
     GFtsAdd = 1'b0;
    end
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     LBwrI = 4'b0;
     LBrd = 4'b0;
     LBfill = 4'b0;
     gfTsEn = 1'b0;
    end
   else
    begin
     if ((LBreq & ( ~LBfull )))
      begin
       LBwrI = (((LBwrI + 32'b01) == 32'b0100) ? 32'b0 : (LBwrI + 32'b01));
       LBfill = (LBfill + 32'b01);
      end
     if (((( ~GFreq ) & ( ~LBempty )) && ( ~gfTsEn )))
      begin
       LBrd = (((LBrd + 32'b01) == 32'b0100) ? 32'b0 : (LBrd + 32'b01));
       LBfill = (LBfill - 32'b01);
       gfTsEn = 1'b1;
      end
     else
      begin
       gfTsEn = 1'b0;
      end
    end
  end
always 
 @(*)
  LBwr = (LBfull ? 32'b0100 : LBwrI);
always 
 @(*)
  svGFbusy1 = ( ~LBempty );
always 
 @(posedge fclk)
  svGFbusy2 <= svGFbusy1;


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


// pragma CVASTRPROP MODULE IXC_SV_GFIFO_VXE_256 PROP_IXCOM_MOD TRUE
endmodule

