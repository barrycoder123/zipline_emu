// xc_work/v/148n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/GFIFO.sv:1660
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_SV_SCG_GFIFO_VXE_64(output  scgGFreq);
localparam LBSIZE = 4;
localparam LOG2_GFIFO_WORD_SIZE = 1;
localparam LOG2_GFIFO_NUM_WORDS = 17;
localparam LOG2_GFIFO_SIZE = 18;
wire  fclk;
wire  GFReset;
wire  [63:0] ixcSimTime ;
wire  GFreq;
tri0  [19:0] GFcbid ;
tri0  [11:0] GFlen ;
tri0  [511:0] GFidata ;
wire  GFtsReq;
bit GFtsAdd;
wire  GFLock;
bit [11:0] argLen ;
bit [63:0] ixc_gfm_ofifo [0:131071];
bit [543:0] xdata ;
bit [63:0] wrtCnt ;
bit [63:0] wrtCntD ;
bit [63:0] ixc_gfm_ctl [0:0];
bit [16:0] ofifoAddr0 ;
bit [16:0] ofifoAddr0N ;
bit [16:0] ofifoAddr1 ;
bit [16:0] ofifoAddr2 ;
bit [16:0] ofifoAddr3 ;
bit [16:0] ofifoAddr4 ;
bit [16:0] ofifoAddr5 ;
bit [16:0] ofifoAddr6 ;
bit [16:0] ofifoAddr7 ;
bit [16:0] ofifoAddr8 ;
bit [16:0] ofifoAddr1N ;
bit [16:0] ofifoAddr2N ;
bit [16:0] ofifoAddr3N ;
bit [16:0] ofifoAddr4N ;
bit [16:0] ofifoAddr5N ;
bit [16:0] ofifoAddr6N ;
bit [16:0] ofifoAddr7N ;
bit [16:0] ofifoAddr8N ;
bit [575:0] ofifoData ;
bit [575:0] ofifoDataN ;
bit [5:0] writeLen ;
bit reqD;
wire  [63:0] timeStampPkt ;
bit [4:0] oFill ;
bit [4:0] oFillN ;
bit [16:0] ofifoWptr ;
bit [16:0] ofifoWptrN ;
bit [9:0] index ;
pulldown (GFtsReq);
assign  scgGFreq = GFreq;
assign  timeStampPkt = {ixcSimTime[32'sd55:32'sd24],1'b1,( ^ixcSimTime[32'sd55:32'sd48] ),( ^ixcSimTime[32'sd47:32'sd40] ),( ^ixcSimTime[32'sd39:32'sd32] ),( ^ixcSimTime[32'sd31:32'sd24] ),( ^ixcSimTime[32'sd23:32'sd16] ),( ^ixcSimTime[32'sd15:32'sd8] ),( ^ixcSimTime[32'sd7:32'sd0] ),ixcSimTime[32'sd23:32'sd0]};
assign  GFidata[31:0] = (GFtsAdd ? 32'b0 : 32'bz);
assign  GFcbid = (GFtsAdd ? 20'b11111111111111111110 : 20'bz);
assign  GFlen = (GFtsAdd ? 12'b01 : 12'bz);
always 
 @(posedge fclk)
  wrtCntD <= wrtCnt;
always 
 @(*)
  ixc_gfm_ctl[0] = wrtCntD[63:0];
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     reqD <= 1'b0;
    end
   else
    begin
     reqD <= GFreq;
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
    end
   else
    begin
     if ((((reqD | GFtsAdd) & ( !GFLock )) & (GFcbid != 20'b11111111111111111101)))
      begin
       if ((GFcbid != 20'b11111111111111111111))
        begin
         xdata <= ((GFcbid == 20'b11111111111111111110) ? timeStampPkt : {GFidata,GFlen,GFcbid});
         argLen = GFlen;
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
   ofifoAddr3N = (ofifoWptr + 32'b011);
   ofifoAddr4N = (ofifoWptr + 32'b0100);
   ofifoAddr5N = (ofifoWptr + 32'b0101);
   ofifoAddr6N = (ofifoWptr + 32'b0110);
   ofifoAddr7N = (ofifoWptr + 32'b0111);
   ofifoAddr8N = (ofifoWptr + 32'b01000);
   if (GFReset)
    begin
     index = 10'b0;
     ofifoDataN = {576{1'b0}};
    end
   else
    if (oFill[0])
     begin
      index = ({oFill[32'sd4:32'sd1],1'b0} << 5);
      ofifoDataN = ((xdata << 32) | ofifoData[index +: 32]);
     end
    else
     begin
      index = 10'b0;
      ofifoDataN = {32'b0,xdata};
     end
   oFillN = (oFill[0] + writeLen);
   ofifoWptrN = (ofifoWptr + oFillN[4:1]);
  end
always 
 @(*)
  begin
   ixc_gfm_ofifo[ofifoAddr0N] = ofifoDataN[0 +: 64];
   ixc_gfm_ofifo[ofifoAddr1N] = ofifoDataN[64 +: 64];
   ixc_gfm_ofifo[ofifoAddr2N] = ofifoDataN[128 +: 64];
   ixc_gfm_ofifo[ofifoAddr3N] = ofifoDataN[192 +: 64];
   ixc_gfm_ofifo[ofifoAddr4N] = ofifoDataN[256 +: 64];
   ixc_gfm_ofifo[ofifoAddr5N] = ofifoDataN[320 +: 64];
   ixc_gfm_ofifo[ofifoAddr6N] = ofifoDataN[384 +: 64];
   ixc_gfm_ofifo[ofifoAddr7N] = ofifoDataN[448 +: 64];
   ixc_gfm_ofifo[ofifoAddr8N] = ofifoDataN[512 +: 64];
  end
always 
 @(posedge fclk)
  begin
   if (GFReset)
    begin
     ofifoWptr <= 17'b0;
     ofifoAddr0 <= 17'b0;
     ofifoAddr1 <= 17'b01;
     ofifoAddr2 <= 17'b010;
     ofifoAddr3 <= 17'b011;
     ofifoAddr4 <= 17'b0100;
     ofifoAddr5 <= 17'b0101;
     ofifoAddr6 <= 17'b0110;
     ofifoAddr7 <= 17'b0111;
     ofifoAddr8 <= 17'b01000;
     ofifoData <= {576{1'b0}};
     oFill <= 5'b0;
    end
   else
    begin
     ofifoWptr <= ofifoWptrN;
     ofifoAddr0 <= ofifoAddr0N;
     ofifoAddr1 <= ofifoAddr1N;
     ofifoAddr2 <= ofifoAddr2N;
     ofifoAddr3 <= ofifoAddr2N;
     ofifoAddr4 <= ofifoAddr4N;
     ofifoAddr5 <= ofifoAddr5N;
     ofifoAddr6 <= ofifoAddr6N;
     ofifoAddr7 <= ofifoAddr7N;
     ofifoAddr8 <= ofifoAddr8N;
     ofifoData <= ofifoDataN;
     oFill <= oFillN;
    end
  end
always 
 @(*)
  begin
   if ((GFreq & ( ~reqD )))
    begin
     GFtsAdd = GFtsReq;
    end
   else
    begin
     GFtsAdd = 1'b0;
    end
  end
endmodule

