// xc_work/v/147n.sv
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
pulldown(GFtsReq);

endmodule

