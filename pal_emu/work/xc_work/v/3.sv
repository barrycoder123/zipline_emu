// xc_work/v/3.sv
// /home/ibarry/Project-Zipline-master/dv/agents/apb/apb_xactor.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module apb_xactor(psel,penable,paddr,pwdata,pwrite,clk,reset_n,prdata,pready,pslverr);
// exported object:  (scope) read 
// exported object:  (scope) write 
// exported object:  (var) _zyL94_iscX1c0_s (R)  
// exported object:  (var) _zyL94_iscX1c0_f (R)  
// exported object:  (var) _zyL94_iscX1c0_i0 (R)  
// exported object:  (var) _zyL94_iscX1c0_o1 (R)  
// exported object:  (var) _zyL94_iscX1c0_o2 (R)  
// exported object:  (var) _zyL61_iscX2c0_s (R)  
// exported object:  (var) _zyL61_iscX2c0_f (R)  
// exported object:  (var) _zyL61_iscX2c0_i0 (R)  
// exported object:  (var) _zyL61_iscX2c0_i1 (R)  
// exported object:  (var) _zyL61_iscX2c0_o2 (R)  
   Q_NOT_TOUCH _zzqnt();
// pragma multiple_driver_resolution
parameter ADDR_WIDTH = 20;
parameter DATA_WIDTH = 32;
input  clk;
input  reset_n;
output reg psel;
// quickturn keep_net psel
output reg penable;
// quickturn keep_net penable
output reg [19:0] paddr ;
// quickturn keep_net paddr
output reg [31:0] pwdata ;
// quickturn keep_net pwdata
output reg pwrite;
// quickturn keep_net pwrite
input  [31:0] prdata ;
input  pready;
input  pslverr;
reg [7:0] bus_timer ;
// quickturn keep_net bus_timer
localparam BUS_TIMER_EXPIRATION = 100;
wire  _zy_simnet_psel_0_w$;
wire  _zy_simnet_penable_1_w$;
wire  [0:19] _zy_simnet_paddr_2_w$ ;
wire  [0:31] _zy_simnet_pwdata_3_w$ ;
wire  _zy_simnet_pwrite_4_w$;
wire  _zyL94_iscX1c0_s;
reg _zyL94_iscX1c0_f;
reg _zyL94_iscX1c0_n;
// quickturn keep_net _zyL94_iscX1c0_n
wire [63:0]  _zyL94_iscX1c0_i0;
reg [31:0]  _zyL94_iscX1c0_o1;
reg _zyL94_iscX1c0_o2;
wire  _zyL61_iscX2c0_s;
reg _zyL61_iscX2c0_f;
reg _zyL61_iscX2c0_n;
// quickturn keep_net _zyL61_iscX2c0_n
wire [63:0]  _zyL61_iscX2c0_i0;
wire [31:0]  _zyL61_iscX2c0_i1;
reg _zyL61_iscX2c0_o2;
reg [63:0] _zyaddr_L95_tfiV0_M3_pbcG0 ;
reg [31:0] _zydata_L96_tfiV1_M3_pbcG1 ;
// quickturn keep_net _zydata_L96_tfiV1_M3_pbcG1
reg _zyresponse_L97_tfiV2_M3_pbcG2;
// quickturn keep_net _zyresponse_L97_tfiV2_M3_pbcG2
reg [63:0] _zyaddr_L62_tfiV3_M3_pbcG3 ;
reg [31:0] _zydata_L63_tfiV4_M3_pbcG4 ;
reg _zyresponse_L64_tfiV5_M3_pbcG5;
// quickturn keep_net _zyresponse_L64_tfiV5_M3_pbcG5
reg _zyM3L94_pbcCapEn0;
// quickturn keep_net _zyM3L94_pbcCapEn0
reg _zyM3L104_pbcCapEn1;
// quickturn keep_net _zyM3L104_pbcCapEn1
reg _zyM3L110_pbcCapEn2;
// quickturn keep_net _zyM3L110_pbcCapEn2
reg _zyM3L121_pbcCapEn3;
// quickturn keep_net _zyM3L121_pbcCapEn3
wire  _zyM3L94_pbcMevClk4;
wire  _zyM3L94_pbcReq4;
wire  _zyM3L94_pbcBusy4;
wire  _zyM3L94_pbcWait4;
reg _zyM3L61_pbcCapEn5;
// quickturn keep_net _zyM3L61_pbcCapEn5
reg _zyM3L73_pbcCapEn6;
// quickturn keep_net _zyM3L73_pbcCapEn6
reg _zyM3L79_pbcCapEn7;
// quickturn keep_net _zyM3L79_pbcCapEn7
reg _zyM3L90_pbcCapEn8;
// quickturn keep_net _zyM3L90_pbcCapEn8
wire  _zyM3L61_pbcMevClk9;
wire  _zyM3L61_pbcReq9;
wire  _zyM3L61_pbcBusy9;
wire  _zyM3L61_pbcWait9;
reg [2:0]  _zyM3L94_pbcFsm0_s;
// quickturn keep_net _zyM3L94_pbcFsm0_s
reg _zyM3L94_pbcEn10;
reg [2:0]  _zyM3L61_pbcFsm2_s;
// quickturn keep_net _zyM3L61_pbcFsm2_s
reg _zyM3L61_pbcEn11;
wire  _zzpready_M3L25_bcSv0;
wire  [31:0] _zzprdata_M3L24_bcSv1 ;
wire  _zzpslverr_M3L26_bcSv2;
reg _zzM3L46_bcP0_EnD;
wire  _zzM3L46_bcP0_EnDNxt;
wire  _zzM3L46_bcP0_DOn;
reg [7:0] _zzM3L46_bcP0_bus_timer_wr0 ;
reg _zzM3L46_bcP0_bus_timer_Dwen0;
reg _zzM3L46_bcP0_bus_timer_DwenOn0;
reg [7:0] _zzM3L29_bus_timer_nbaTmp3 ;
reg _zzM3L94_bcP1_EnD;
wire  _zzM3L94_bcP1_EnDNxt;
wire  _zzM3L94_bcP1_DOn;
reg [7:0] _zzM3L94_bcP1_bus_timer_wr0 ;
reg _zzM3L94_bcP1_bus_timer_Dwen0;
reg _zzM3L94_bcP1_bus_timer_DwenOn0;
reg [31:0] _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 ;
reg _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1;
reg _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1;
reg [31:0] _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4 ;
reg _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2;
reg _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2;
reg _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2;
reg _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5;
reg _zzM3L61_bcP2_EnD;
wire  _zzM3L61_bcP2_EnDNxt;
wire  _zzM3L61_bcP2_DOn;
reg [7:0] _zzM3L61_bcP2_bus_timer_wr0 ;
reg _zzM3L61_bcP2_bus_timer_Dwen0;
reg _zzM3L61_bcP2_bus_timer_DwenOn0;
reg _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1;
reg _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1;
reg _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1;
reg _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6;
wire  _zzbcOne;
reg [7:0] _zzbus_timer_M3L29_bcSvLt7 ;
reg [31:0] _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8 ;
reg _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9;
reg _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10;
wire  _zzM3_bcBehEvalClk;
wire  _zzM3_bcBehHalt;
reg [31:0]  _zzM3_bcBehEval;
// quickturn keep_net _zzM3_bcBehEval
wire  _zzmdxOne;
reg _zzM3L19_psel_mdxTmp0;
reg _zzM3L20_penable_mdxTmp1;
reg _zzM3L23_pwrite_mdxTmp2;
reg [19:0] _zzM3L21_paddr_mdxTmp3 ;
reg [31:0] _zzM3L22_pwdata_mdxTmp4 ;
reg _zzM3L46_mdxP0_En;
wire  _zzM3L46_mdxP0_EnNxt;
wire  _zzM3L46_mdxP0_On;
reg _zzM3L46_mdxP0_psel_wr0;
reg _zzM3L46_mdxP0_psel_Dwen0;
reg _zzM3L46_mdxP0_psel_DwenOn0;
reg _zzM3L46_mdxP0_penable_wr1;
reg _zzM3L46_mdxP0_penable_Dwen1;
reg _zzM3L46_mdxP0_penable_DwenOn1;
reg _zzM3L46_mdxP0_pwrite_wr2;
reg _zzM3L46_mdxP0_pwrite_Dwen2;
reg _zzM3L46_mdxP0_pwrite_DwenOn2;
reg [19:0] _zzM3L46_mdxP0_paddr_wr3 ;
reg _zzM3L46_mdxP0_paddr_Dwen3;
reg _zzM3L46_mdxP0_paddr_DwenOn3;
reg [31:0] _zzM3L46_mdxP0_pwdata_wr4 ;
reg _zzM3L46_mdxP0_pwdata_Dwen4;
reg _zzM3L46_mdxP0_pwdata_DwenOn4;
reg _zzM3L94_mdxP1_En;
wire  _zzM3L94_mdxP1_EnNxt;
wire  _zzM3L94_mdxP1_On;
reg _zzM3L94_mdxP1_psel_wr0;
reg _zzM3L94_mdxP1_psel_Dwen0;
reg _zzM3L94_mdxP1_psel_DwenOn0;
reg _zzM3L94_mdxP1_penable_wr1;
reg _zzM3L94_mdxP1_penable_Dwen1;
reg _zzM3L94_mdxP1_penable_DwenOn1;
reg _zzM3L94_mdxP1_pwrite_wr2;
reg _zzM3L94_mdxP1_pwrite_Dwen2;
reg _zzM3L94_mdxP1_pwrite_DwenOn2;
reg [19:0] _zzM3L94_mdxP1_paddr_wr3 ;
reg _zzM3L94_mdxP1_paddr_Dwen3;
reg _zzM3L94_mdxP1_paddr_DwenOn3;
reg _zzM3L61_mdxP2_En;
wire  _zzM3L61_mdxP2_EnNxt;
wire  _zzM3L61_mdxP2_On;
reg _zzM3L61_mdxP2_psel_wr0;
reg _zzM3L61_mdxP2_psel_Dwen0;
reg _zzM3L61_mdxP2_psel_DwenOn0;
reg _zzM3L61_mdxP2_penable_wr1;
reg _zzM3L61_mdxP2_penable_Dwen1;
reg _zzM3L61_mdxP2_penable_DwenOn1;
reg _zzM3L61_mdxP2_pwrite_wr2;
reg _zzM3L61_mdxP2_pwrite_Dwen2;
reg _zzM3L61_mdxP2_pwrite_DwenOn2;
reg [19:0] _zzM3L61_mdxP2_paddr_wr3 ;
reg _zzM3L61_mdxP2_paddr_Dwen3;
reg _zzM3L61_mdxP2_paddr_DwenOn3;
reg [31:0] _zzM3L61_mdxP2_pwdata_wr4 ;
reg _zzM3L61_mdxP2_pwdata_Dwen4;
reg _zzM3L61_mdxP2_pwdata_DwenOn4;
reg _zzpsel_M3L19_mdxSvLt5;
reg _zzpenable_M3L20_mdxSvLt6;
reg _zzpwrite_M3L23_mdxSvLt7;
reg [19:0] _zzpaddr_M3L21_mdxSvLt8 ;
reg [31:0] _zzpwdata_M3L22_mdxSvLt9 ;
// F2, L12
ixc_assign  #(1) _zz_strnp_0 (_zy_simnet_psel_0_w$,psel);
// F2, L12
ixc_assign  #(1) _zz_strnp_1 (_zy_simnet_penable_1_w$,penable);
// F2, L12
ixc_assign  #(20) _zz_strnp_2 (_zy_simnet_paddr_2_w$,paddr);
// F2, L12
ixc_assign  #(32) _zz_strnp_3 (_zy_simnet_pwdata_3_w$,pwdata);
// F2, L12
ixc_assign  #(1) _zz_strnp_4 (_zy_simnet_pwrite_4_w$,pwrite);
// F2, L94
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b10,2'b0,2'b0,2'b0) _zzM3L94_pbcMevClk4 (_zyM3L94_pbcMevClk4,{_zyL94_iscX1c0_s,clk},{_zyM3L94_pbcCapEn0,((_zyM3L104_pbcCapEn1 | _zyM3L110_pbcCapEn2) | _zyM3L121_pbcCapEn3)},1'b0,1'b0,_zyM3L94_pbcReq4,_zyM3L94_pbcBusy4,_zyM3L94_pbcWait4);
// F2, L61
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b10,2'b0,2'b0,2'b0) _zzM3L61_pbcMevClk9 (_zyM3L61_pbcMevClk9,{_zyL61_iscX2c0_s,clk},{_zyM3L61_pbcCapEn5,((_zyM3L73_pbcCapEn6 | _zyM3L79_pbcCapEn7) | _zyM3L90_pbcCapEn8)},1'b0,1'b0,_zyM3L61_pbcReq9,_zyM3L61_pbcBusy9,_zyM3L61_pbcWait9);
// F2, L25
ixc_sample_logic #(1,0)_zzpready_M3L25_bcSp0 (_zzpready_M3L25_bcSv0,pready);
// F2, L24
ixc_sample_logic #(32,0)_zzprdata_M3L24_bcSp1 (_zzprdata_M3L24_bcSv1,prdata);
// F2, L26
ixc_sample_logic #(1,0)_zzpslverr_M3L26_bcSp2 (_zzpslverr_M3L26_bcSv2,pslverr);
// F2, L46
ixc_nba2BpD _zzM3L46_bcP0_DOnP (_zzM3L46_bcP0_DOn,_zzM3L46_bcP0_EnDNxt,_zzM3L46_bcP0_EnD);
// F2, L94
ixc_nba2BpD _zzM3L94_bcP1_DOnP (_zzM3L94_bcP1_DOn,_zzM3L94_bcP1_EnDNxt,_zzM3L94_bcP1_EnD);
// F2, L61
ixc_nba2BpD _zzM3L61_bcP2_DOnP (_zzM3L61_bcP2_DOn,_zzM3L61_bcP2_EnDNxt,_zzM3L61_bcP2_EnD);
// F2, L29
ixc_sampleLT #(8) _zzbus_timer_M3L29_bcSpLt7 (_zzbus_timer_M3L29_bcSvLt7,bus_timer);
// F2, L96
ixc_sampleLT #(32) _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSpLt8 (_zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8,_zydata_L96_tfiV1_M3_pbcG1);
// F2, L97
ixc_sampleLT #(1) _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSpLt9 (_zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9,_zyresponse_L97_tfiV2_M3_pbcG2);
// F2, L64
ixc_sampleLT #(1) _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSpLt10 (_zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10,_zyresponse_L64_tfiV5_M3_pbcG5);
// F2, L10
ixc_capLoopXp _zzM3L10_bcBehEvalP0 (_zzM3_bcBehEvalClk,1'b0,,_zzM3_bcBehHalt);
// F2, L46
ixc_mdrOn _zzM3L46_mdxP0_OnP (_zzM3L46_mdxP0_On,_zzM3L46_mdxP0_EnNxt,_zzM3L46_mdxP0_En);
// F2, L94
ixc_mdrOn _zzM3L94_mdxP1_OnP (_zzM3L94_mdxP1_On,_zzM3L94_mdxP1_EnNxt,_zzM3L94_mdxP1_En);
// F2, L61
ixc_mdrOn _zzM3L61_mdxP2_OnP (_zzM3L61_mdxP2_On,_zzM3L61_mdxP2_EnNxt,_zzM3L61_mdxP2_En);
// F2, L19
ixc_sampleLT #(1) _zzpsel_M3L19_mdxSpLt5 (_zzpsel_M3L19_mdxSvLt5,psel);
// F2, L20
ixc_sampleLT #(1) _zzpenable_M3L20_mdxSpLt6 (_zzpenable_M3L20_mdxSvLt6,penable);
// F2, L23
ixc_sampleLT #(1) _zzpwrite_M3L23_mdxSpLt7 (_zzpwrite_M3L23_mdxSvLt7,pwrite);
// F2, L21
ixc_sampleLT #(20) _zzpaddr_M3L21_mdxSpLt8 (_zzpaddr_M3L21_mdxSvLt8,paddr);
// F2, L22
ixc_sampleLT #(32) _zzpwdata_M3L22_mdxSpLt9 (_zzpwdata_M3L22_mdxSvLt9,pwdata);
  ixc_assign _zzmdx1 (_zzmdxOne, 1'b1);

  ixc_assign _zzbc1 (_zzbcOne, 1'b1);

// F2, L46
always 
 @(posedge clk)
  // F2, L46
  begin
   // F2, L46
   _zzM3L46_mdxP0_psel_Dwen0 = 1'b0;
   _zzM3L46_mdxP0_penable_Dwen1 = 1'b0;
   _zzM3L46_mdxP0_pwrite_Dwen2 = 1'b0;
   _zzM3L46_mdxP0_paddr_Dwen3 = 1'b0;
   _zzM3L46_mdxP0_pwdata_Dwen4 = 1'b0;
   // F2, L47
   begin
    // F2, L46
    if ((_zzM3L46_bcP0_EnD != _zzM3L46_bcP0_EnDNxt))
     // F2, L46
     begin
      // F2, L46
      _zzM3L46_bcP0_bus_timer_Dwen0 = 1'b0;
     end
    if (( !reset_n ))
     // F2, L49
     begin
      // F2, L50
      // F2, L50
      begin
       // F2, L50
       _zzM3L46_bcP0_bus_timer_wr0 = 8'b0;
       _zzM3L46_bcP0_bus_timer_Dwen0 = 1'b1;
       _zzM3L46_bcP0_EnD = _zzM3L46_bcP0_EnDNxt;
      end
      // F2, L51
      begin
       // F2, L51
       _zzM3L46_mdxP0_psel_wr0 = 1'b0;
       _zzM3L46_mdxP0_psel_Dwen0 = 1'b1;
       _zzM3L46_mdxP0_En = _zzM3L46_mdxP0_EnNxt;
      end
      // F2, L52
      begin
       // F2, L52
       _zzM3L46_mdxP0_penable_wr1 = 1'b0;
       _zzM3L46_mdxP0_penable_Dwen1 = 1'b1;
       _zzM3L46_mdxP0_En = _zzM3L46_mdxP0_EnNxt;
      end
      // F2, L53
      begin
       // F2, L53
       _zzM3L46_mdxP0_paddr_wr3 = 20'b0;
       _zzM3L46_mdxP0_paddr_Dwen3 = 1'b1;
       _zzM3L46_mdxP0_En = _zzM3L46_mdxP0_EnNxt;
      end
      // F2, L54
      begin
       // F2, L54
       _zzM3L46_mdxP0_pwdata_wr4 = 32'b0;
       _zzM3L46_mdxP0_pwdata_Dwen4 = 1'b1;
       _zzM3L46_mdxP0_En = _zzM3L46_mdxP0_EnNxt;
      end
      // F2, L55
      begin
       // F2, L55
       _zzM3L46_mdxP0_pwrite_wr2 = 1'b0;
       _zzM3L46_mdxP0_pwrite_Dwen2 = 1'b1;
       _zzM3L46_mdxP0_En = _zzM3L46_mdxP0_EnNxt;
      end
     end
   end
  end
// F2, L94
always 
 @(posedge _zyM3L94_pbcMevClk4)
  // F2, L94
  begin
   // F2, L94
   _zzM3L94_mdxP1_psel_Dwen0 = 1'b0;
   _zzM3L94_mdxP1_penable_Dwen1 = 1'b0;
   _zzM3L94_mdxP1_pwrite_Dwen2 = 1'b0;
   _zzM3L94_mdxP1_paddr_Dwen3 = 1'b0;
   // F2, L94
   begin
    // F2, L94
    if ((_zzM3L94_bcP1_EnD != _zzM3L94_bcP1_EnDNxt))
     // F2, L94
     begin
      // F2, L94
      _zzM3L94_bcP1_bus_timer_Dwen0 = 1'b0;
      _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 = 1'b0;
      _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 = 1'b0;
     end
    // F2, L94
    begin:_zyM3L94_pbcFsm0
     // F2, L94
     case (_zyM3L94_pbcFsm0_s)
      3'b0:
       // F2, L94
       begin
        // F2, L94
        _zyM3L94_pbcCapEn0 = 1'b0;
        // F2, L94
        begin:_zypbctfiCscp0_L94_read_M3_pbcScp1
         // F2, L94
         _zyaddr_L95_tfiV0_M3_pbcG0 = _zyL94_iscX1c0_i0;
         // F2, L99
         begin
          // F2, L99
          _zzM3L94_mdxP1_psel_wr0 = 1'b1;
          _zzM3L94_mdxP1_psel_Dwen0 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
         end
         // F2, L100
         begin
          // F2, L100
          _zzM3L94_mdxP1_penable_wr1 = 1'b0;
          _zzM3L94_mdxP1_penable_Dwen1 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
         end
         // F2, L101
         begin
          // F2, L101
          _zzM3L94_mdxP1_pwrite_wr2 = 1'b0;
          _zzM3L94_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
         end
         // F2, L102
         begin
          // F2, L102
          _zzM3L94_mdxP1_paddr_wr3 = _zyaddr_L95_tfiV0_M3_pbcG0[31:0];
          _zzM3L94_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
         end
         _zyM3L104_pbcCapEn1 = 1'b1;
         _zyM3L94_pbcFsm0_s = 3'b01;
        end
       end
      3'b01:
       // F2, L104
       begin
        // F2, L94
        _zyM3L94_pbcEn10 = 1'b1;
        _zyM3L104_pbcCapEn1 = 1'b0;
        // F2, L105
        begin
         // F2, L105
         _zzM3L94_mdxP1_penable_wr1 = 1'b1;
         _zzM3L94_mdxP1_penable_Dwen1 = 1'b1;
         _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
        end
        if ((( !_zzpready_M3L25_bcSv0 ) && (bus_timer < 32'b01100100)))
         // F2, L108
         begin
          // F2, L109
          // F2, L109
          begin
          // F2, L109
          _zzM3L94_bcP1_bus_timer_wr0 = (bus_timer + 32'b01);
          _zzM3L94_bcP1_bus_timer_Dwen0 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          _zyM3L110_pbcCapEn2 = 1'b1;
          _zyM3L94_pbcFsm0_s = 3'b010;
          _zyM3L94_pbcEn10 = 1'b0;
         end
        if (_zyM3L94_pbcEn10)
         // F2, L113
         begin
          // F2, L113
          // F2, L113
          begin
          // F2, L113
          _zzM3L94_bcP1_bus_timer_wr0 = 8'b0;
          _zzM3L94_bcP1_bus_timer_Dwen0 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          // F2, L114
          begin
          // F2, L114
          _zzM3L94_mdxP1_psel_wr0 = 1'b0;
          _zzM3L94_mdxP1_psel_Dwen0 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L115
          begin
          // F2, L115
          _zzM3L94_mdxP1_penable_wr1 = 1'b0;
          _zzM3L94_mdxP1_penable_Dwen1 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L116
          begin
          // F2, L116
          _zzM3L94_mdxP1_pwrite_wr2 = 1'b0;
          _zzM3L94_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L117
          begin
          // F2, L117
          _zzM3L94_mdxP1_paddr_wr3 = 20'b0;
          _zzM3L94_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L118
          begin
          // F2, L118
          _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 = _zzprdata_M3L24_bcSv1;
          _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          // F2, L119
          begin
          // F2, L119
          _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 = (_zzpslverr_M3L26_bcSv2 | (bus_timer == 32'b01100100));
          _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          _zyM3L121_pbcCapEn3 = 1'b1;
          _zyM3L94_pbcFsm0_s = 3'b011;
         end
       end
      3'b010:
       // F2, L110
       begin
        // F2, L94
        _zyM3L94_pbcEn10 = 1'b1;
        _zyM3L110_pbcCapEn2 = 1'b0;
        if ((( !_zzpready_M3L25_bcSv0 ) && (bus_timer < 32'b01100100)))
         // F2, L108
         begin
          // F2, L109
          // F2, L109
          begin
          // F2, L109
          _zzM3L94_bcP1_bus_timer_wr0 = (bus_timer + 32'b01);
          _zzM3L94_bcP1_bus_timer_Dwen0 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          _zyM3L110_pbcCapEn2 = 1'b1;
          _zyM3L94_pbcFsm0_s = 3'b010;
          _zyM3L94_pbcEn10 = 1'b0;
         end
        if (_zyM3L94_pbcEn10)
         // F2, L113
         begin
          // F2, L113
          // F2, L113
          begin
          // F2, L113
          _zzM3L94_bcP1_bus_timer_wr0 = 8'b0;
          _zzM3L94_bcP1_bus_timer_Dwen0 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          // F2, L114
          begin
          // F2, L114
          _zzM3L94_mdxP1_psel_wr0 = 1'b0;
          _zzM3L94_mdxP1_psel_Dwen0 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L115
          begin
          // F2, L115
          _zzM3L94_mdxP1_penable_wr1 = 1'b0;
          _zzM3L94_mdxP1_penable_Dwen1 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L116
          begin
          // F2, L116
          _zzM3L94_mdxP1_pwrite_wr2 = 1'b0;
          _zzM3L94_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L117
          begin
          // F2, L117
          _zzM3L94_mdxP1_paddr_wr3 = 20'b0;
          _zzM3L94_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM3L94_mdxP1_En = _zzM3L94_mdxP1_EnNxt;
          end
          // F2, L118
          begin
          // F2, L118
          _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 = _zzprdata_M3L24_bcSv1;
          _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          // F2, L119
          begin
          // F2, L119
          _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 = (_zzpslverr_M3L26_bcSv2 | (bus_timer == 32'b01100100));
          _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 = 1'b1;
          _zzM3L94_bcP1_EnD = _zzM3L94_bcP1_EnDNxt;
          end
          _zyM3L121_pbcCapEn3 = 1'b1;
          _zyM3L94_pbcFsm0_s = 3'b011;
         end
       end
      3'b011:
       // F2, L121
       begin
        // F2, L121
        _zyM3L121_pbcCapEn3 = 1'b0;
        _zyL94_iscX1c0_o1 = _zydata_L96_tfiV1_M3_pbcG1;
        _zyL94_iscX1c0_o2 = _zyresponse_L97_tfiV2_M3_pbcG2;
        _zyL94_iscX1c0_f = _zyL94_iscX1c0_n;
        _zyL94_iscX1c0_n = ( ~_zyL94_iscX1c0_n );
        _zyM3L94_pbcCapEn0 = 1'b1;
        _zyM3L94_pbcFsm0_s = 3'b0;
       end
     endcase
    end
   end
  end
// F2, L61
always 
 @(posedge _zyM3L61_pbcMevClk9)
  // F2, L61
  begin
   // F2, L61
   _zzM3L61_mdxP2_psel_Dwen0 = 1'b0;
   _zzM3L61_mdxP2_penable_Dwen1 = 1'b0;
   _zzM3L61_mdxP2_pwrite_Dwen2 = 1'b0;
   _zzM3L61_mdxP2_paddr_Dwen3 = 1'b0;
   _zzM3L61_mdxP2_pwdata_Dwen4 = 1'b0;
   // F2, L61
   begin
    // F2, L61
    if ((_zzM3L61_bcP2_EnD != _zzM3L61_bcP2_EnDNxt))
     // F2, L61
     begin
      // F2, L61
      _zzM3L61_bcP2_bus_timer_Dwen0 = 1'b0;
      _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 = 1'b0;
     end
    // F2, L61
    begin:_zyM3L61_pbcFsm2
     // F2, L61
     case (_zyM3L61_pbcFsm2_s)
      3'b0:
       // F2, L61
       begin
        // F2, L61
        _zyM3L61_pbcCapEn5 = 1'b0;
        // F2, L61
        begin:_zypbctfiCscp1_L61_write_M3_pbcScp3
         // F2, L61
         _zyaddr_L62_tfiV3_M3_pbcG3 = _zyL61_iscX2c0_i0;
         _zydata_L63_tfiV4_M3_pbcG4 = _zyL61_iscX2c0_i1;
         // F2, L67
         begin
          // F2, L67
          _zzM3L61_mdxP2_psel_wr0 = 1'b1;
          _zzM3L61_mdxP2_psel_Dwen0 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
         end
         // F2, L68
         begin
          // F2, L68
          _zzM3L61_mdxP2_penable_wr1 = 1'b0;
          _zzM3L61_mdxP2_penable_Dwen1 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
         end
         // F2, L69
         begin
          // F2, L69
          _zzM3L61_mdxP2_pwrite_wr2 = 1'b1;
          _zzM3L61_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
         end
         // F2, L70
         begin
          // F2, L70
          _zzM3L61_mdxP2_paddr_wr3 = _zyaddr_L62_tfiV3_M3_pbcG3[31:0];
          _zzM3L61_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
         end
         // F2, L71
         begin
          // F2, L71
          _zzM3L61_mdxP2_pwdata_wr4 = _zydata_L63_tfiV4_M3_pbcG4[31:0];
          _zzM3L61_mdxP2_pwdata_Dwen4 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
         end
         _zyM3L73_pbcCapEn6 = 1'b1;
         _zyM3L61_pbcFsm2_s = 3'b01;
        end
       end
      3'b01:
       // F2, L73
       begin
        // F2, L61
        _zyM3L61_pbcEn11 = 1'b1;
        _zyM3L73_pbcCapEn6 = 1'b0;
        // F2, L74
        begin
         // F2, L74
         _zzM3L61_mdxP2_penable_wr1 = 1'b1;
         _zzM3L61_mdxP2_penable_Dwen1 = 1'b1;
         _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
        end
        if ((( !_zzpready_M3L25_bcSv0 ) && (bus_timer < 32'b01100100)))
         // F2, L77
         begin
          // F2, L78
          // F2, L78
          begin
          // F2, L78
          _zzM3L61_bcP2_bus_timer_wr0 = (bus_timer + 32'b01);
          _zzM3L61_bcP2_bus_timer_Dwen0 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          _zyM3L79_pbcCapEn7 = 1'b1;
          _zyM3L61_pbcFsm2_s = 3'b010;
          _zyM3L61_pbcEn11 = 1'b0;
         end
        if (_zyM3L61_pbcEn11)
         // F2, L82
         begin
          // F2, L82
          // F2, L82
          begin
          // F2, L82
          _zzM3L61_bcP2_bus_timer_wr0 = 8'b0;
          _zzM3L61_bcP2_bus_timer_Dwen0 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          // F2, L83
          begin
          // F2, L83
          _zzM3L61_mdxP2_psel_wr0 = 1'b0;
          _zzM3L61_mdxP2_psel_Dwen0 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L84
          begin
          // F2, L84
          _zzM3L61_mdxP2_penable_wr1 = 1'b0;
          _zzM3L61_mdxP2_penable_Dwen1 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L85
          begin
          // F2, L85
          _zzM3L61_mdxP2_pwrite_wr2 = 1'b0;
          _zzM3L61_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L86
          begin
          // F2, L86
          _zzM3L61_mdxP2_paddr_wr3 = 20'b0;
          _zzM3L61_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L87
          begin
          // F2, L87
          _zzM3L61_mdxP2_pwdata_wr4 = 32'b0;
          _zzM3L61_mdxP2_pwdata_Dwen4 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L88
          begin
          // F2, L88
          _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 = (_zzpslverr_M3L26_bcSv2 | (bus_timer == 32'b01100100));
          _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          _zyM3L90_pbcCapEn8 = 1'b1;
          _zyM3L61_pbcFsm2_s = 3'b011;
         end
       end
      3'b010:
       // F2, L79
       begin
        // F2, L61
        _zyM3L61_pbcEn11 = 1'b1;
        _zyM3L79_pbcCapEn7 = 1'b0;
        if ((( !_zzpready_M3L25_bcSv0 ) && (bus_timer < 32'b01100100)))
         // F2, L77
         begin
          // F2, L78
          // F2, L78
          begin
          // F2, L78
          _zzM3L61_bcP2_bus_timer_wr0 = (bus_timer + 32'b01);
          _zzM3L61_bcP2_bus_timer_Dwen0 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          _zyM3L79_pbcCapEn7 = 1'b1;
          _zyM3L61_pbcFsm2_s = 3'b010;
          _zyM3L61_pbcEn11 = 1'b0;
         end
        if (_zyM3L61_pbcEn11)
         // F2, L82
         begin
          // F2, L82
          // F2, L82
          begin
          // F2, L82
          _zzM3L61_bcP2_bus_timer_wr0 = 8'b0;
          _zzM3L61_bcP2_bus_timer_Dwen0 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          // F2, L83
          begin
          // F2, L83
          _zzM3L61_mdxP2_psel_wr0 = 1'b0;
          _zzM3L61_mdxP2_psel_Dwen0 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L84
          begin
          // F2, L84
          _zzM3L61_mdxP2_penable_wr1 = 1'b0;
          _zzM3L61_mdxP2_penable_Dwen1 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L85
          begin
          // F2, L85
          _zzM3L61_mdxP2_pwrite_wr2 = 1'b0;
          _zzM3L61_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L86
          begin
          // F2, L86
          _zzM3L61_mdxP2_paddr_wr3 = 20'b0;
          _zzM3L61_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L87
          begin
          // F2, L87
          _zzM3L61_mdxP2_pwdata_wr4 = 32'b0;
          _zzM3L61_mdxP2_pwdata_Dwen4 = 1'b1;
          _zzM3L61_mdxP2_En = _zzM3L61_mdxP2_EnNxt;
          end
          // F2, L88
          begin
          // F2, L88
          _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 = (_zzpslverr_M3L26_bcSv2 | (bus_timer == 32'b01100100));
          _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 = 1'b1;
          _zzM3L61_bcP2_EnD = _zzM3L61_bcP2_EnDNxt;
          end
          _zyM3L90_pbcCapEn8 = 1'b1;
          _zyM3L61_pbcFsm2_s = 3'b011;
         end
       end
      3'b011:
       // F2, L90
       begin
        // F2, L90
        _zyM3L90_pbcCapEn8 = 1'b0;
        _zyL61_iscX2c0_o2 = _zyresponse_L64_tfiV5_M3_pbcG5;
        _zyL61_iscX2c0_f = _zyL61_iscX2c0_n;
        _zyL61_iscX2c0_n = ( ~_zyL61_iscX2c0_n );
        _zyM3L61_pbcCapEn5 = 1'b1;
        _zyM3L61_pbcFsm2_s = 3'b0;
       end
     endcase
    end
   end
  end
// F2, L29
always 
 @(*)
  // F2, L29
  begin
   // F2, L29
   _zzM3L29_bus_timer_nbaTmp3 = _zzbus_timer_M3L29_bcSvLt7;
   _zzM3L46_bcP0_bus_timer_DwenOn0 = (_zzM3L46_bcP0_DOn ? _zzM3L46_bcP0_bus_timer_Dwen0 : 1'b0);
   _zzM3L29_bus_timer_nbaTmp3 = (_zzM3L46_bcP0_bus_timer_DwenOn0 ? _zzM3L46_bcP0_bus_timer_wr0 : _zzM3L29_bus_timer_nbaTmp3);
   _zzM3L94_bcP1_bus_timer_DwenOn0 = (_zzM3L94_bcP1_DOn ? _zzM3L94_bcP1_bus_timer_Dwen0 : 1'b0);
   _zzM3L29_bus_timer_nbaTmp3 = (_zzM3L94_bcP1_bus_timer_DwenOn0 ? _zzM3L94_bcP1_bus_timer_wr0 : _zzM3L29_bus_timer_nbaTmp3);
   _zzM3L61_bcP2_bus_timer_DwenOn0 = (_zzM3L61_bcP2_DOn ? _zzM3L61_bcP2_bus_timer_Dwen0 : 1'b0);
   _zzM3L29_bus_timer_nbaTmp3 = (_zzM3L61_bcP2_bus_timer_DwenOn0 ? _zzM3L61_bcP2_bus_timer_wr0 : _zzM3L29_bus_timer_nbaTmp3);
   if (_zzbcOne)
    // F2, L29
    begin
     // F2, L29
     bus_timer = _zzM3L29_bus_timer_nbaTmp3;
    end
  end
// F2, L96
always 
 @(*)
  // F2, L96
  begin
   // F2, L96
   _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4 = _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8;
   _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1 = (_zzM3L94_bcP1_DOn ? _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 : 1'b0);
   _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4 = (_zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1 ? _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 : _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4);
   if (_zzbcOne)
    // F2, L96
    begin
     // F2, L96
     _zydata_L96_tfiV1_M3_pbcG1 = _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4;
    end
  end
// F2, L97
always 
 @(*)
  // F2, L97
  begin
   // F2, L97
   _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5 = _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9;
   _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2 = (_zzM3L94_bcP1_DOn ? _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 : 1'b0);
   _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5 = (_zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2 ? _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 : _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5);
   if (_zzbcOne)
    // F2, L97
    begin
     // F2, L97
     _zyresponse_L97_tfiV2_M3_pbcG2 = _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5;
    end
  end
// F2, L64
always 
 @(*)
  // F2, L64
  begin
   // F2, L64
   _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6 = _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10;
   _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1 = (_zzM3L61_bcP2_DOn ? _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 : 1'b0);
   _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6 = (_zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1 ? _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 : _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6);
   if (_zzbcOne)
    // F2, L64
    begin
     // F2, L64
     _zyresponse_L64_tfiV5_M3_pbcG5 = _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6;
    end
  end
// F2, L10
always 
 @(posedge _zzM3_bcBehEvalClk)
  if ((_zyM3L94_pbcWait4 | _zyM3L61_pbcWait9))
   // F2, L10
   begin
    // F2, L10
    if (( ~& _zzM3_bcBehEval[30:0] ))
     _zzM3_bcBehEval[30:0] <= (_zzM3_bcBehEval[30:0] + 1'b1);
    _zzM3_bcBehEval[31] <= _zzM3_bcBehHalt;
   end
// F2, L19
always 
 @(*)
  // F2, L19
  begin
   // F2, L19
   _zzM3L19_psel_mdxTmp0 = _zzpsel_M3L19_mdxSvLt5;
   _zzM3L46_mdxP0_psel_DwenOn0 = (_zzM3L46_mdxP0_On ? _zzM3L46_mdxP0_psel_Dwen0 : 1'b0);
   _zzM3L19_psel_mdxTmp0 = (_zzM3L46_mdxP0_psel_DwenOn0 ? _zzM3L46_mdxP0_psel_wr0 : _zzM3L19_psel_mdxTmp0);
   _zzM3L94_mdxP1_psel_DwenOn0 = (_zzM3L94_mdxP1_On ? _zzM3L94_mdxP1_psel_Dwen0 : 1'b0);
   _zzM3L19_psel_mdxTmp0 = (_zzM3L94_mdxP1_psel_DwenOn0 ? _zzM3L94_mdxP1_psel_wr0 : _zzM3L19_psel_mdxTmp0);
   _zzM3L61_mdxP2_psel_DwenOn0 = (_zzM3L61_mdxP2_On ? _zzM3L61_mdxP2_psel_Dwen0 : 1'b0);
   _zzM3L19_psel_mdxTmp0 = (_zzM3L61_mdxP2_psel_DwenOn0 ? _zzM3L61_mdxP2_psel_wr0 : _zzM3L19_psel_mdxTmp0);
   if (_zzmdxOne)
    // F2, L19
    begin
     // F2, L19
     psel = _zzM3L19_psel_mdxTmp0;
    end
  end
// F2, L20
always 
 @(*)
  // F2, L20
  begin
   // F2, L20
   _zzM3L20_penable_mdxTmp1 = _zzpenable_M3L20_mdxSvLt6;
   _zzM3L46_mdxP0_penable_DwenOn1 = (_zzM3L46_mdxP0_On ? _zzM3L46_mdxP0_penable_Dwen1 : 1'b0);
   _zzM3L20_penable_mdxTmp1 = (_zzM3L46_mdxP0_penable_DwenOn1 ? _zzM3L46_mdxP0_penable_wr1 : _zzM3L20_penable_mdxTmp1);
   _zzM3L94_mdxP1_penable_DwenOn1 = (_zzM3L94_mdxP1_On ? _zzM3L94_mdxP1_penable_Dwen1 : 1'b0);
   _zzM3L20_penable_mdxTmp1 = (_zzM3L94_mdxP1_penable_DwenOn1 ? _zzM3L94_mdxP1_penable_wr1 : _zzM3L20_penable_mdxTmp1);
   _zzM3L61_mdxP2_penable_DwenOn1 = (_zzM3L61_mdxP2_On ? _zzM3L61_mdxP2_penable_Dwen1 : 1'b0);
   _zzM3L20_penable_mdxTmp1 = (_zzM3L61_mdxP2_penable_DwenOn1 ? _zzM3L61_mdxP2_penable_wr1 : _zzM3L20_penable_mdxTmp1);
   if (_zzmdxOne)
    // F2, L20
    begin
     // F2, L20
     penable = _zzM3L20_penable_mdxTmp1;
    end
  end
// F2, L23
always 
 @(*)
  // F2, L23
  begin
   // F2, L23
   _zzM3L23_pwrite_mdxTmp2 = _zzpwrite_M3L23_mdxSvLt7;
   _zzM3L46_mdxP0_pwrite_DwenOn2 = (_zzM3L46_mdxP0_On ? _zzM3L46_mdxP0_pwrite_Dwen2 : 1'b0);
   _zzM3L23_pwrite_mdxTmp2 = (_zzM3L46_mdxP0_pwrite_DwenOn2 ? _zzM3L46_mdxP0_pwrite_wr2 : _zzM3L23_pwrite_mdxTmp2);
   _zzM3L94_mdxP1_pwrite_DwenOn2 = (_zzM3L94_mdxP1_On ? _zzM3L94_mdxP1_pwrite_Dwen2 : 1'b0);
   _zzM3L23_pwrite_mdxTmp2 = (_zzM3L94_mdxP1_pwrite_DwenOn2 ? _zzM3L94_mdxP1_pwrite_wr2 : _zzM3L23_pwrite_mdxTmp2);
   _zzM3L61_mdxP2_pwrite_DwenOn2 = (_zzM3L61_mdxP2_On ? _zzM3L61_mdxP2_pwrite_Dwen2 : 1'b0);
   _zzM3L23_pwrite_mdxTmp2 = (_zzM3L61_mdxP2_pwrite_DwenOn2 ? _zzM3L61_mdxP2_pwrite_wr2 : _zzM3L23_pwrite_mdxTmp2);
   if (_zzmdxOne)
    // F2, L23
    begin
     // F2, L23
     pwrite = _zzM3L23_pwrite_mdxTmp2;
    end
  end
// F2, L21
always 
 @(*)
  // F2, L21
  begin
   // F2, L21
   _zzM3L21_paddr_mdxTmp3 = _zzpaddr_M3L21_mdxSvLt8;
   _zzM3L46_mdxP0_paddr_DwenOn3 = (_zzM3L46_mdxP0_On ? _zzM3L46_mdxP0_paddr_Dwen3 : 1'b0);
   _zzM3L21_paddr_mdxTmp3 = (_zzM3L46_mdxP0_paddr_DwenOn3 ? _zzM3L46_mdxP0_paddr_wr3 : _zzM3L21_paddr_mdxTmp3);
   _zzM3L94_mdxP1_paddr_DwenOn3 = (_zzM3L94_mdxP1_On ? _zzM3L94_mdxP1_paddr_Dwen3 : 1'b0);
   _zzM3L21_paddr_mdxTmp3 = (_zzM3L94_mdxP1_paddr_DwenOn3 ? _zzM3L94_mdxP1_paddr_wr3 : _zzM3L21_paddr_mdxTmp3);
   _zzM3L61_mdxP2_paddr_DwenOn3 = (_zzM3L61_mdxP2_On ? _zzM3L61_mdxP2_paddr_Dwen3 : 1'b0);
   _zzM3L21_paddr_mdxTmp3 = (_zzM3L61_mdxP2_paddr_DwenOn3 ? _zzM3L61_mdxP2_paddr_wr3 : _zzM3L21_paddr_mdxTmp3);
   if (_zzmdxOne)
    // F2, L21
    begin
     // F2, L21
     paddr = _zzM3L21_paddr_mdxTmp3;
    end
  end
// F2, L22
always 
 @(*)
  // F2, L22
  begin
   // F2, L22
   _zzM3L22_pwdata_mdxTmp4 = _zzpwdata_M3L22_mdxSvLt9;
   _zzM3L46_mdxP0_pwdata_DwenOn4 = (_zzM3L46_mdxP0_On ? _zzM3L46_mdxP0_pwdata_Dwen4 : 1'b0);
   _zzM3L22_pwdata_mdxTmp4 = (_zzM3L46_mdxP0_pwdata_DwenOn4 ? _zzM3L46_mdxP0_pwdata_wr4 : _zzM3L22_pwdata_mdxTmp4);
   _zzM3L61_mdxP2_pwdata_DwenOn4 = (_zzM3L61_mdxP2_On ? _zzM3L61_mdxP2_pwdata_Dwen4 : 1'b0);
   _zzM3L22_pwdata_mdxTmp4 = (_zzM3L61_mdxP2_pwdata_DwenOn4 ? _zzM3L61_mdxP2_pwdata_wr4 : _zzM3L22_pwdata_mdxTmp4);
   if (_zzmdxOne)
    // F2, L22
    begin
     // F2, L22
     pwdata = _zzM3L22_pwdata_mdxTmp4;
    end
  end
// pragma CVASTRPROP MODULE apb_xactor PROP_RANOFF TRUE
endmodule

