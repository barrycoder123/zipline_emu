// xc_work/v/142n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:773
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module ixcEcmHoldOtb;
wire  fclk;
wire  uclk;
wire  xc_top_ptxStop;
wire  xc_top_evalOnC;
wire  xc_top_ecmOnD;
wire  xc_top_holdEcmTb;
wire  [63:0] xc_top_simTime ;
wire  xc_top_ecmSync;
bit holdEcm;
bit [63:0] ecmTs ;
bit [63:0] ecmTsP ;
bit [255:0] ctrl [0:3];
bit [255:0] ctrlR ;
bit [255:0] ctrlW ;
bit ctrlEv;
bit ctrlEvP;
bit newCtrl;
bit [7:0] cmdC ;
bit [7:0] cmdCnt ;
bit [7:0] cmdCntP ;
bit [63:0] cRet ;
bit newCmd;
bit busyOn;
bit [7:0] busyCnt ;
wire  xc_top_ecmHoldBusy;
reg [0:0]  _zyL831_meState0;
assign  xc_top_holdEcmTb = (holdEcm ? 1'b1 : 1'bz);
assign  xc_top_ecmHoldBusy = (busyOn ? 1'b1 : 1'bz);
initial 
 begin
  _zyL831_meState0 = 1'b0;
 end
always 
 @(posedge uclk)
  ctrlR = ctrl[1];
always 
 @(posedge uclk)
  ctrl[0] = ctrlW;
always 
 @(*)
  begin
   ctrlEv = ctrlR[136];
  end
always 
 @(*)
  begin
   ecmTs = (xc_top_ecmOnD ? (ecmTsP + 64'b01) : ecmTsP);
   ctrlW[0 +: 64] = cRet;
   ctrlW[64 +: 64] = ecmTs;
   ctrlW[128 +: 64] = xc_top_simTime;
   holdEcm = cmdC[0];
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
   newCtrl = (ctrlEv != ctrlEvP);
   busyOn = (newCtrl || busyCnt);
  end
always 
 @(posedge fclk)
  busyCnt[7:0] <= {busyCnt[32'sd6:32'sd0],newCtrl};
always 
 begin
  @(posedge fclk)
   begin
   end
  begin:_zyL831_meSwitch0
   reg _zyL831_meEn0;
   _zyL831_meEn0 = 1'b1;
   case (_zyL831_meState0)
    1'b0:
     begin
      begin
       if (newCmd)
        begin
         begin
          _zyL831_meState0 = 1'b1;
          _zyL831_meEn0 = 1'b0;
         end
        end
      end
      if (_zyL831_meEn0)
       begin
        begin
         _zyL831_meState0 = 1'b0;
        end
       end
     end
    1'b1:
     begin
      if (((cmdC[0] && xc_top_ptxStop) && xc_top_evalOnC))
       begin
        _zyL831_meState0 = 1'b1;
        _zyL831_meEn0 = 1'b0;
       end
      if (_zyL831_meEn0)
       begin
        cmdCntP = cmdCnt;
        cRet[15:8] = cmdCnt;
        begin
         _zyL831_meState0 = 1'b0;
        end
       end
     end
   endcase
  end
 end
always 
 @(posedge fclk)
  begin
   cRet[0] = 1'b1;
   cRet[1] = 1'b1;
   cRet[2] = xc_top_ptxStop;
   {cmdCnt,cmdC} = ctrlR[128 +: 64];
  end
endmodule

