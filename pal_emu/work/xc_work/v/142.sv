// xc_work/v/142.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:603
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module ixcEcmHold;
wire  fclk;
wire  uclk;
wire  xc_top_ptxStop;
wire  xc_top_evalOnC;
wire  xc_top_ecmOnD;
wire  xc_top_ecmSync;
wire  xc_top_holdEcmTb;
wire  [63:0] xc_top_simTime ;
wire  xc_top_ecmHoldBusy;
wire  xc_top_sdlStopRply;
bit holdEcm;
bit hc;
bit hs;
bit [63:0] ecmTs ;
bit [63:0] ecmTsP ;
bit [255:0] ctrl [0:3];
bit [255:0] ctrlR ;
bit [255:0] ctrlW ;
bit [1:0] ctrlEv ;
bit [1:0] ctrlEvP ;
bit newCtrl;
bit [7:0] cmdC ;
bit [7:0] cmdR ;
bit [7:0] cmdCnt ;
bit [7:0] cmdCntP ;
bit [63:0] argTc ;
bit [63:0] argTs ;
bit [63:0] cRet ;
bit newCmd;
bit busyOn;
bit [7:0] busyCnt ;
bit [7:0] syncId ;
bit [7:0] syncIdP ;
bit newSync;
bit [3:0] holdEcmD ;
bit holdEcmBusy;
bit sdlStopRply;
bit [63:0] simTime ;
reg [0:0]  _zyL692_meState0;
// quickturn keep_net _zyL692_meState0
reg [0:0]  _zyL739_meState1;
// quickturn keep_net _zyL739_meState1
assign  xc_top_holdEcmTb = (holdEcm ? 1'b1 : 1'bz);
assign  xc_top_ecmHoldBusy = (busyOn ? 1'b1 : 1'bz);
always 
 @(posedge uclk)
  ctrlR = ctrl[1];
always 
 @(posedge uclk)
  ctrl[0] = ctrlW;
always 
 @(*)
  begin
   ctrlEv = {ctrlR[32'sd192],ctrlR[32'sd136]};
  end
always 
 @(posedge fclk)
  sdlStopRply = xc_top_sdlStopRply;
always 
 @(*)
  simTime = xc_top_simTime;
always 
 @(*)
  begin
   ecmTs = (xc_top_ecmOnD ? (ecmTsP + 64'b01) : ecmTsP);
   ctrlW[0 +: 64] = cRet;
   ctrlW[64 +: 64] = ecmTs;
   ctrlW[128 +: 64] = simTime;
   hc = (cmdR[1] && (ecmTs >= argTc));
   hs = (cmdR[2] && (simTime >= argTs));
   holdEcm = (((cmdC[0] | hc) | hs) | sdlStopRply);
  end
always 
 @(posedge fclk)
  begin
   ecmTsP = ecmTs;
   ctrlEvP = ctrlEv;
  end
always 
 @(*)
  begin
   newCmd = (cmdCnt != cmdCntP);
   newSync = (syncId != syncIdP);
   newCtrl = (ctrlEv != ctrlEvP);
   busyOn = ((newCtrl || busyCnt) || (holdEcmBusy && ( !xc_top_ptxStop )));
  end
always 
 @(posedge fclk)
  busyCnt[7:0] <= {busyCnt[32'sd6:32'sd0],newCtrl};
always 
 begin
  @(posedge fclk)
   begin
   end
  begin:_zyL692_meSwitch0
   reg _zyL692_meEn0;
   _zyL692_meEn0 = 1'b1;
   case (_zyL692_meState0)
    1'b0:
     begin
      begin
       if (newCmd)
        begin
         begin
          _zyL692_meState0 = 1'b1;
          _zyL692_meEn0 = 1'b0;
         end
        end
      end
      if (_zyL692_meEn0)
       begin
        begin
         _zyL692_meState0 = 1'b0;
        end
       end
     end
    1'b1:
     begin
      if (((cmdC[0] && xc_top_ptxStop) && xc_top_evalOnC))
       begin
        _zyL692_meState0 = 1'b1;
        _zyL692_meEn0 = 1'b0;
       end
      if (_zyL692_meEn0)
       begin
        cmdCntP = cmdCnt;
        cRet[15:8] = cmdCnt;
        cmdR = cmdC;
        argTc = ctrlR[0 +: 64];
        argTs = ctrlR[64 +: 64];
        begin
         _zyL692_meState0 = 1'b0;
        end
       end
     end
   endcase
  end
 end
always 
 @(posedge fclk)
  begin
   cRet[0] = (xc_top_ptxStop ? ( ~xc_top_evalOnC ) : holdEcmD[3]);
   cRet[1] = xc_top_ecmSync;
   cRet[2] = ( ~xc_top_evalOnC );
   cRet[3] = sdlStopRply;
   {cmdCnt,cmdC} = ctrlR[128 +: 64];
  end
always 
 @(posedge fclk)
  begin
   if ((xc_top_ptxStop || ( !holdEcm )))
    begin
     holdEcmD = 4'b0;
     holdEcmBusy = 1'b0;
    end
   else
    begin
     if (( !holdEcmD[3] ))
      begin
       holdEcmD = (holdEcmD + 32'b01);
       holdEcmBusy = 1'b1;
      end
     else
      begin
       holdEcmBusy = 1'b0;
      end
    end
  end
always 
 begin
  @(posedge fclk)
   begin
   end
  begin:_zyL739_meSwitch1
   reg _zyL739_meEn1;
   _zyL739_meEn1 = 1'b1;
   case (_zyL739_meState1)
    1'b0:
     begin
      begin
       if (newSync)
        begin
         begin
          _zyL739_meState1 = 1'b1;
          _zyL739_meEn1 = 1'b0;
         end
        end
       if (_zyL739_meEn1)
        begin
         syncId = ctrlR[192 +: 64];
        end
      end
      if (_zyL739_meEn1)
       begin
        begin
         _zyL739_meState1 = 1'b0;
        end
       end
     end
    1'b1:
     begin
      syncIdP = syncId;
      if (( !xc_top_ecmSync ))
       begin
        _zyL739_meState1 = 1'b1;
        _zyL739_meEn1 = 1'b0;
       end
      if (_zyL739_meEn1)
       begin
        ctrlW[192 +: 64] = syncId;
        syncId = ctrlR[192 +: 64];
        begin
         _zyL739_meState1 = 1'b0;
        end
       end
     end
   endcase
  end
 end

   // quickturn fast_clock         fclk
   // quickturn use_hardmacro_pack ctrl

   // quickturn name_map xc_top_ptxStop  xcva_top.xc_top.ptxStop
   // quickturn name_map xc_top_evalOnC  xcva_top.xc_top.evalOnC
   // quickturn name_map xc_top_ecmOnD     xcva_top.xc_top.ecmOnD
   // quickturn name_map xc_top_ecmSync   xcva_top.xc_top.ecmSync
   // quickturn name_map xc_top_holdEcmTb   xcva_top.xc_top.holdEcmTb
   // quickturn name_map xc_top_simTime   xcva_top.xc_top.simTime
   // quickturn name_map xc_top_ecmHoldBusy    xcva_top.xc_top.ecmHoldBusy
   // quickturn name_map xc_top_sdlStopRply    xcva_top.xc_top.sdlStopRply
   // quickturn external_ref ecmTs

   Q_NOT_TOUCH _zzqnthw();

   ixc_uClkGen ukg(uclk);



// pragma CVASTRPROP MODULE ixcEcmHold PROP_IXCOM_MOD TRUE
endmodule

