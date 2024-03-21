// xc_work/v/146.sv
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
// quickturn keep_net numRsts
// quickturn no_hardmacro numRsts
// quickturn external_ref numRsts
bit [767:0] ofifoData ;
bit [3:0] oFill ;
bit [14:0] ofifoAddr0 ;
bit [15:0] ofifoAddr1 ;
bit [15:0] ofifoAddr2 ;
bit [14:0] ofifoWptr ;
bit [7:0] shiftCount ;
bit [767:0] shiftedOData ;
wire  [0:63] _zy_simnet_rdCnt_0_w$ ;


   // Tell preCompiler not to touch this module.
   Q_NOT_TOUCH _zzqnthw();

   // quickturn fast_clock fclk

   // quickturn use_hardmacro_pack ixc_gfm_ififo
   // quickturn use_hardmacro_pack ixc_gfm_ofifo

   // quickturn name_map hasSFIFO     xc_top.hasSFIFO
   // quickturn name_map GFReset      xc_top.GFReset
   // quickturn name_map svAsyncCall  xc_top.svAsyncCall
   // quickturn name_map GFLock       xc_top.GFLock1
   // quickturn name_map SFIFOLock    xc_top.SFIFOLock2

   // quickturn external_ref iData
   // quickturn external_ref tId
   // quickturn external_ref oDataEn
   // quickturn external_ref oDataLen
   // quickturn external_ref oData
   // quickturn external_ref nps


// pragma CVASTRPROP MODULE IXC_SV_SFIFO_VXE_256 PROP_IXCOM_MOD TRUE
endmodule

