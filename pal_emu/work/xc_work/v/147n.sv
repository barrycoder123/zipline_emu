// xc_work/v/147n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/GFIFO.sv:2287
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_SV_SFIFO_VXE_256(output bit [63:0] rdCnt ,input  scgGFreq);
localparam VLEN = 0;
localparam TID = 10;
localparam ARGL = 32;
localparam ODLY = 48;
localparam MARK = 63;
localparam MARKN = 62;
localparam RST = 61;
localparam LOG2_SFIFO_WORD_SIZE = 2;
localparam LOG2_SFIFO_NUM_WORDS = 15;
localparam LOG2_SFIFO_SIZE = 17;
wire  hasSFIFO;
bit [21:0] tId ;
bit [511:0] iData ;
bit [255:0] ixc_gfm_ififo [0:32767];
bit [255:0] ixc_gfm_ofifo [0:32767];
wire  fclk;
wire  GFReset;
wire  svAsyncCall;
wire  GFLock;
bit [16:0] wptr ;
bit [16:0] wptrN ;
bit [16:0] xptr ;
bit [16:0] xptrN ;
bit [255:0] ififoXdata ;
bit [255:0] ififoXdataFinal ;
bit [16:0] rptr ;
bit [16:0] rptrN ;
bit [14:0] ififoRaddr0 ;
bit [14:0] ififoRaddr1 ;
bit [14:0] ififoRaddr2 ;
bit [767:0] ififoRdata ;
bit [17:0] rdDelta ;
bit [3:0] markBits ;
bit [3:0] markBitsN ;
bit [3:0] newMarkBits ;
bit [3:0] newMarkBitsD ;
bit [3:0] dataBits ;
bit [23:0] offset ;
bit [23:0] offsetN ;
bit moveForward;
bit moveForwardN;
bit active;
bit activeD;
bit [63:0] xval ;
bit nps;
bit eob;
reg SFIFOLock;
int i;
bit [63:0] head ;
bit [63:0] xhead ;
bit [63:0] vhead ;
bit [15:0] pktl ;
bit [15:0] pktlN ;
bit [9:0] vlen ;
bit [9:0] vlenN ;
bit rstDone;
bit rstDoneD;
bit rstDoneD2;
bit [11:0] odly ;
bit [11:0] odlyN ;
bit vmode;
bit [575:0] tmpData ;
reg oSt;
bit [255:0] oMark ;
bit oDataEn;
bit [3:0] oDataLen ;
bit [511:0] oData ;
bit [31:0] numRsts ;
bit [767:0] ofifoData ;
bit [3:0] oFill ;
bit [14:0] ofifoAddr0 ;
bit [15:0] ofifoAddr1 ;
bit [15:0] ofifoAddr2 ;
bit [14:0] ofifoWptr ;
bit [7:0] shiftCount ;
bit [767:0] shiftedOData ;
wire  [0:63] _zy_simnet_rdCnt_0_w$ ;
assign  hasSFIFO = 1'b1;
assign  svAsyncCall = (((((newMarkBitsD != newMarkBits) | moveForward) | active) | activeD) ? 1'b1 : 1'bz);
assign  _zy_simnet_rdCnt_0_w$ = rdCnt;
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     xptr <= 17'b0;
     wptr <= 17'b0;
     markBits <= 4'b0;
     newMarkBitsD <= 4'b0;
     moveForward <= 1'b0;
     activeD <= 1'b0;
    end
   else
    begin
     xptr <= xptrN;
     wptr <= wptrN;
     markBits <= markBitsN;
     newMarkBitsD <= newMarkBits;
     moveForward <= moveForwardN;
     activeD <= active;
     if (moveForwardN)
      begin
       ixc_gfm_ififo[xptrN[16:2]] = ififoXdataFinal;
      end
    end
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     rdCnt <= 64'b0;
    end
   else
    begin
     rdCnt <= (rdCnt + rdDelta);
    end
  end
always 
 @(*)
  begin
   ififoXdata = ixc_gfm_ififo[xptr[16:2]];
   xval = (ififoXdata >> {xptr[32'sd1:32'sd0],6'b0});
   for (i = 0;(i < 4); i = (i + 1))
    begin
     newMarkBits[i] = ififoXdata[((i << 6) | 32'b0111111)];
    end
   dataBits = xval[35:32];
   if ((((((newMarkBits ^ markBits) == 4'b1111) && ( !moveForward )) && ( !GFReset )) && ( !SFIFOLock )))
    begin
     moveForwardN = 1'b1;
     ififoXdataFinal = ififoXdata;
     for (i = 0;(i < 4); i = (i + 1))
      begin
       ififoXdataFinal[((i << 6) | 32'b0111111)] = dataBits[i];
      end
    end
   else
    begin
     moveForwardN = 1'b0;
    end
   if (moveForward)
    begin
     markBitsN = xval[3:0];
     xptrN = xval[63:40];
     wptrN = xptr;
    end
   else
    begin
     markBitsN = markBits;
     xptrN = xptr;
     wptrN = wptr;
    end
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     rptr <= 17'b0;
     ififoRaddr0 <= 15'b0;
     ififoRaddr1 <= 15'b01;
     ififoRaddr2 <= 15'b010;
     pktl <= 16'b0;
     odly <= 12'b0;
     vlen <= 10'b0;
     vhead <= 64'b0;
    end
   else
    begin
     rptr <= rptrN;
     ififoRaddr0 <= rptrN[16:2];
     ififoRaddr1 <= (rptrN[16:2] + 32'b01);
     ififoRaddr2 <= (rptrN[16:2] + 32'b010);
     pktl <= pktlN;
     odly <= odlyN;
     vlen <= vlenN;
     vhead <= head;
    end
  end
always 
 @(*)
  begin
   ififoRdata[0 +: 256] = ixc_gfm_ififo[ififoRaddr0];
   ififoRdata[256 +: 256] = ixc_gfm_ififo[ififoRaddr1];
   ififoRdata[512 +: 256] = ixc_gfm_ififo[ififoRaddr2];
   tmpData = (ififoRdata >> {rptr[32'sd1:32'sd0],6'b0});
   xhead = tmpData[63:0];
   iData = tmpData[575:64];
  end
always 
 @(*)
  begin
   odlyN = odly;
   rstDone = 1'b0;
   vmode = (vlen != 32'b0);
   head = (vmode ? vhead : xhead);
   eob = 1'b0;
   nps = 1'b0;
   active = 1'b0;
   if ((wptr != rptr))
    begin
     if (( !GFLock ))
      active = 1'b1;
     if ((((pktl == 32'b0) && (odly == 32'b0)) && ( !scgGFreq )))
      begin
       tId = head[10 +: 22];
       if ((tId == 22'b1111111111111111111110))
        begin
         nps = 1'b1;
         rptrN = (rptr + 32'b01);
        end
       else
        if ((tId == 22'b1111111111111111111111))
         begin
          nps = 1'b1;
          eob = 1'b1;
          pktlN = 16'b0;
          vlenN = 10'b0;
          rptrN = ((rptr + head[0 +: 10]) + 32'b01);
          odlyN = 12'b0;
          rstDone = head[61];
         end
        else
         if ((head[32 +: 10] > 32'b01000))
          begin
          nps = 1'b1;
          pktlN = (head[32 +: 10] - 32'b01000);
          vlenN = ((vmode ? vlen : head[0 +: 10]) - 32'b01000);
          rptrN = (rptr + 32'b01000);
          odlyN = head[48 +: 12];
          end
         else
          begin
          nps = 1'b1;
          pktlN = 16'b0;
          vlenN = ((vmode ? vlen : head[0 +: 10]) - head[32 +: 10]);
          rptrN = ((rptr + head[32 +: 10]) + (vlenN == 32'b0));
          odlyN = head[48 +: 12];
          end
      end
     else
      if ((pktl != 32'b0))
       begin
        tId = 22'b1111111111111111111111;
        if ((pktl > 32'b01000))
         begin
          pktlN = (pktl - 32'b01000);
          vlenN = (vlen - 32'b01000);
          rptrN = (rptr + 32'b01000);
         end
        else
         begin
          pktlN = 16'b0;
          vlenN = (vlen - pktl);
          rptrN = ((rptr + pktl) + (vlenN == 32'b0));
         end
       end
      else
       if ((odly != 32'b0))
        begin
         tId = 22'b1111111111111111111111;
         pktlN = 16'b0;
         vlenN = vlen;
         rptrN = rptr;
         odlyN = (odly - 32'b01);
        end
       else
        begin
         tId = 22'b1111111111111111111111;
         pktlN = 16'b0;
         vlenN = vlen;
         rptrN = rptr;
         odlyN = 12'b0;
        end
    end
   else
    begin
     tId = 22'b1111111111111111111111;
     pktlN = 16'b0;
     vlenN = 10'b0;
     rptrN = rptr;
     if ((odly != 32'b0))
      begin
       odlyN = (odly - 32'b01);
      end
     if (((odly != 32'b0) || scgGFreq))
      begin
       if (( !GFLock ))
        active = 1'b1;
      end
    end
   rdDelta = ((rptrN >= rptr) ? (rptrN - rptr) : (rptrN + (32'b0100000000000000000 - rptr)));
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     rstDoneD <= 1'b0;
     rstDoneD2 <= 1'b0;
    end
   else
    begin
     rstDoneD <= rstDone;
     rstDoneD2 <= rstDoneD;
    end
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     oSt <= 1'b0;
     oMark <= 256'b0;
     ofifoWptr <= 15'b01;
     ofifoAddr0 <= 15'b01;
     ofifoAddr1 <= 16'b010;
     ofifoAddr2 <= 16'b011;
     oFill = 4'b0;
     ofifoData <= {768{1'b0}};
     numRsts <= 32'b0;
    end
   else
    begin
     oMark[62:0] <= rdCnt[62:0];
     if ((oSt == 32'b0))
      begin
       if (nps)
        begin
         oSt <= 1'b1;
         ofifoWptr <= 15'b01;
         oFill = 4'b0;
         ofifoData <= {768{1'b0}};
        end
      end
     else
      begin
       if (rstDoneD2)
        begin
         oSt <= 1'b0;
         oMark[63] <= ( ~oMark[63] );
         oMark[127] <= ( ~oMark[127] );
         oMark[191] <= ( ~oMark[191] );
         oMark[255] <= ( ~oMark[255] );
         numRsts <= (numRsts + 32'b01);
        end
       ofifoAddr0 <= ofifoWptr;
       ofifoAddr1 <= (ofifoWptr + 32'b01);
       ofifoAddr2 <= (ofifoWptr + 32'b010);
       shiftCount = {oFill[32'sd1:32'sd0],6'b0};
       shiftedOData = (oData << shiftCount);
       if ((oFill[3:2] == 2'b11))
        begin
         ofifoData <= shiftedOData;
        end
       else
        if ((oFill[3:2] == 2'b10))
         begin
          ofifoData <= (shiftedOData | {{512{1'b0}},ofifoData[32'sd512 +: 32'sd256]});
         end
        else
         if ((oFill[3:2] == 2'b01))
          begin
          ofifoData <= (shiftedOData | {{512{1'b0}},ofifoData[32'sd256 +: 32'sd256]});
          end
         else
          begin
          ofifoData <= (shiftedOData | {{512{1'b0}},ofifoData[32'sd0 +: 32'sd256]});
          end
       oFill = (oFill[1:0] + (oDataEn ? oDataLen : 32'b0));
       ofifoWptr <= (ofifoWptr + oFill[3:2]);
      end
    end
  end
always 
 @(*)
  begin
   ixc_gfm_ofifo[0] = oMark;
   ixc_gfm_ofifo[ofifoAddr0] = ofifoData[0 +: 256];
   ixc_gfm_ofifo[ofifoAddr1] = ofifoData[256 +: 256];
   ixc_gfm_ofifo[ofifoAddr2] = ofifoData[512 +: 256];
  end
endmodule

